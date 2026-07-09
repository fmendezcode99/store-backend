Architecture Decision Records (ADR)

Este documento registra las principales decisiones de arquitectura tomadas durante el desarrollo del proyecto.

El objetivo es conservar el contexto de cada decisión, facilitar el mantenimiento del código y entender el razonamiento detrás de la implementación.

---


ADR-001 - Estado inicial del pedido

Contexto

Durante el diseño de la clase `Pedido` surgió la necesidad de definir el estado inicial de un pedido recién creado.

Inicialmente se evaluó recibir el estado como parámetro del constructor.

```python
Pedido(
    estado=EstadoPedido.PAGADO
)
```

Sin embargo, esta opción permitía crear pedidos en estados inválidos.

---

Decisión

Todo pedido inicia automáticamente en el estado:

```
PENDIENTE
```

El estado inicial se asigna dentro del constructor de la clase.

---

Justificación

Esta decisión protege una regla del negocio.

Un pedido recién creado no puede iniciar en estados como:

-PAGADO
-EN_PREPARACION
-ENVIADO
-ENTREGADO

El propio objeto es responsable de garantizar un estado inicial válido.

---

Beneficios

-Evita estados inválidos.
-Centraliza la regla del negocio.
-Reduce errores de implementación.
-Facilita el mantenimiento futuro.

Estado: Implementado


ADR-002 - Uso de Enum para estados

Contexto

Inicialmente se consideró representar el estado del pedido mediante un
booleano (`pagado`) o cadenas de texto (`str`).

Estas alternativas permitían errores de escritura y limitaban la evolución
del sistema.

Decisión

Representar los estados mediante un Enum (`EstadoPedido`).

Justificación:

-Evita valores inválidos.
-Centraliza los estados permitidos.
-Facilita la lectura del código.
-Permite agregar nuevos estados sin modificar la lógica existente.

Estado: Implementado


ADR-003 - Conservación del precio histórico

Contexto

Durante el diseño de `DetallePedido` surgió la duda de si el sistema debía consultar el precio actual del producto cada vez que se visualizara un pedido.

Sin embargo, el precio de un producto puede cambiar con el tiempo debido a promociones, inflación o cambios comerciales.

---

Decisión

Cada `DetallePedido` almacenará el precio unitario del producto en el momento de la compra.

---

Justificación

Un pedido representa una fotografía de la compra realizada.

Si el precio del producto cambia en el futuro, el historial de compras debe conservar los valores originales para garantizar la integridad de la información.

---

Beneficios

-Conserva el historial de ventas.
-Permite generar facturas correctas.
-Evita inconsistencias al consultar pedidos antiguos.
-Facilita auditorías y reportes.

Estado: Implementado


ADR-004 - Almacenamiento del total del pedido

Contexto

Se evaluó calcular el total del pedido a partir de los productos almacenados en `DetallePedido`.

También se consideró guardar el valor total directamente en la entidad `Pedido`.

---

Decisión

El pedido almacenará el valor total de la compra.

---

Justificación

Aunque el total puede calcularse nuevamente, almacenarlo permite conservar el valor exacto pagado por el cliente en el momento de la compra.

Esto evita diferencias ocasionadas por cambios posteriores en precios, impuestos o descuentos.

---

Beneficios

-Conserva información histórica.
-Facilita consultas y reportes.
-Reduce cálculos repetitivos.
-Mejora el rendimiento en consultas futuras.

Estado: Implementado
