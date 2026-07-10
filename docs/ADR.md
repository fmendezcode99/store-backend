# Architecture Decision Records (ADR)

Este documento registra las principales decisiones de arquitectura tomadas durante el desarrollo del proyecto.

El objetivo es conservar el contexto de cada decisión, facilitar el mantenimiento del código y entender el razonamiento detrás de la implementación.

---

## ADR-001 - Estado inicial del pedido

### Contexto
Durante el diseño de la clase `Pedido` surgió la necesidad de definir el estado inicial de un pedido recién creado. Inicialmente se evaluó recibir el estado como parámetro del constructor:

```python
Pedido(
    estado=EstadoPedido.PAGADO
)
```

Sin embargo, esta opción permitía crear pedidos en estados inválidos.

### Decisión
Todo pedido inicia automáticamente en el estado `PENDIENTE`. El estado inicial se asigna internamente dentro del constructor de la clase.

### Justificación
Esta decisión protege una regla del negocio. Un pedido recién creado no puede iniciar en estados como:
* `PAGADO`
* `EN_PREPARACION`
* `ENVIADO`
* `ENTREGADO`

El propio objeto es responsable de garantizar un estado inicial válido.

### Beneficios
* Evita estados inválidos.
* Centraliza la regla del negocio.
* Reduce errores de implementación.
* Facilita el mantenimiento futuro.

**Estado:** `Implementado`

---

## ADR-002 - Uso de Enum para representar valores del dominio

### Contexto
Durante el diseño del modelo de dominio se identificó que algunos atributos solo pueden tomar un conjunto limitado de valores válidos.

Inicialmente se consideró representarlos mediante cadenas de texto (`str`) o valores numéricos. Sin embargo, estas alternativas permiten errores de escritura, dificultan el mantenimiento del código y no garantizan la integridad del modelo.

### Decisión
Representar los valores del dominio mediante enumeraciones (`Enum`) de Python. Se implementaron las siguientes enumeraciones:
* `EstadoPedido`
* `MetodoPago`
* `RolEmpleado`

### Justificación
Las enumeraciones permiten definir un conjunto de valores válidos para cada concepto del negocio, evitando que el sistema reciba información incorrecta. Además, mejoran la legibilidad del código, facilitan el mantenimiento del proyecto y permiten que el propio dominio exprese sus reglas de manera clara.

### Beneficios
* Evita errores de escritura en cadenas de texto.
* Centraliza los valores permitidos del dominio.
* Mejora la legibilidad del código.
* Facilita el mantenimiento y la evolución del sistema.
* Incrementa la seguridad del modelo al restringir valores inválidos.

### Implementación
La decisión fue aplicada en los siguientes componentes:

* **Enumeraciones:**
  * `EstadoPedido`
  * `MetodoPago`
  * `RolEmpleado`
* **Modelos afectados:**
  * `Pedido`
  * `Empleado`

**Estado:** `Implementado`

---

## ADR-003 - Conservación del precio histórico

### Contexto
Durante el diseño de `DetallePedido` surgió la duda de si el sistema debía consultar el precio actual del producto cada vez que se visualizara un pedido. Sin embargo, el precio de un producto puede cambiar con el tiempo debido a promociones, inflación o cambios comerciales.

### Decisión
Cada `DetallePedido` almacenará el precio unitario del producto en el momento exacto de la compra.

### Justificación
Un pedido representa una fotografía de la compra realizada. Si el precio del producto cambia en el futuro, el historial de compras debe conservar los valores originales para garantizar la integridad de la información.

### Beneficios
* Conserva el historial de ventas.
* Permite generar facturas correctas.
* Evita inconsistencias al consultar pedidos antiguos.
* Facilita auditorías y reportes.

**Estado:** `Implementado`

---

## ADR-004 - Almacenamiento del total del pedido

### Contexto
Se evaluó calcular el total del pedido de forma dinámica a partir de los productos almacenados en `DetallePedido`. También se consideró guardar el valor total de forma estática directamente en la entidad `Pedido`.

### Decisión
El objeto `Pedido` almacenará de forma persistente el valor total de la compra.

### Justificación
Aunque el total puede calcularse nuevamente, almacenarlo permite conservar el valor exacto pagado por el cliente en el momento de la compra. Esto evita diferencias ocasionadas por cambios posteriores en precios, impuestos o descuentos.

### Beneficios
* Conserva información histórica.
* Facilita consultas y reportes.
* Reduce cálculos repetitivos.
* Mejora el rendimiento en consultas futuras.

**Estado:** `Implementado`

---

## ADR-005 - Gestión de los detalles de un pedido mediante composición

### Contexto
Durante el diseño del modelo de dominio se identificó que un pedido puede contener múltiples productos. Inicialmente se consideró permitir el acceso directo a la colección de detalles y agregar nuevos elementos mediante operaciones directas sobre la lista. Sin embargo, este enfoque permite modificar el pedido sin respetar las reglas del negocio.

### Decisión
El objeto `Pedido` será el único responsable de administrar la colección de `DetallePedido`. La colección de detalles será privada y únicamente podrá modificarse mediante el método público `agregar_detalle()`.

### Justificación
Centralizar la modificación de la colección permite proteger las reglas del negocio y mantener la consistencia del pedido. El método `agregar_detalle()` valida internamente que:
* El pedido se encuentre en estado `PENDIENTE`.
* Un mismo producto no se agregue dos veces al pedido.
* Si el producto ya existe, únicamente se incremente su cantidad.

### Beneficios
* Evita productos duplicados dentro del pedido.
* Centraliza las reglas del negocio.
* Reduce el riesgo de modificaciones incorrectas.
* Mantiene encapsulada la colección de detalles.
* Facilita la evolución futura del sistema.

### Componentes afectados
* **Modelos:**
  * `Pedido`
  * `DetallePedido`

**Estado:** `Implementado`

---

## ADR-006 - Cálculo dinámico de valores derivados del pedido

### Contexto
Durante el desarrollo del modelo de dominio se identificó que el pedido almacenaba valores calculables como el total, el descuento y el IVA. Esto generaba redundancia de información y aumentaba el riesgo de inconsistencias cuando alguno de los datos base cambiaba.

### Decisión
Se decidió almacenar únicamente los datos indispensables para representar la compra de forma estática:
* `porcentaje_descuento`
* `porcentaje_iva`

Los valores monetarios derivados serán calculados dinámicamente mediante propiedades (`@property`) en Python. Las propiedades implementadas son:
* `subtotal`
* `valor_descuento`
* `subtotal_con_descuento`
* `valor_iva`
* `total`

### Justificación
Esta decisión reduce la duplicidad de información y garantiza la consistencia matemática del modelo. Los valores derivados siempre reflejarán el estado actual del pedido en tiempo real, sin necesidad de sincronizar múltiples atributos de manera manual.

### Beneficios
* Evita datos redundantes en el almacenamiento.
* Reduce drásticamente el riesgo de inconsistencias.
* Facilita el mantenimiento del código.
* Mejora la legibilidad del dominio.
* Favorece el principio de responsabilidad única.

### Componentes afectados
* **Modelos:**
  * `Pedido`
  * `DetallePedido`

**Estado:** `Implementado`
