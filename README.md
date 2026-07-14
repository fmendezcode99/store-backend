# Store Management System

Proyecto académico desarrollado para aplicar conceptos de Programación Orientada a Objetos (POO), modelado de dominio y buenas prácticas de desarrollo de software utilizando Python.

El objetivo del proyecto es construir progresivamente un sistema de gestión para una tienda, implementando una arquitectura limpia, reglas de negocio y un historial de desarrollo organizado mediante Git.

---

## Estado del proyecto

### Sprint 1 - Modelado del dominio
**Estado:** Completado

#### Implementado
* Estructura inicial del proyecto.
* Organización por paquetes.
* Modelado de entidades del dominio.
* Clases base del sistema.
* Enumeraciones para representar estados y tipos del negocio.
* Configuración inicial del repositorio Git.

---

### Sprint 2 - Reglas de negocio del dominio
**Estado:** Completado

#### Implementado
* Composición entre `Pedido` y `DetallePedido`.
* Administración privada de los detalles del pedido.
* Método `agregar_detalle()`.
* Prevención de productos duplicados dentro de un pedido.
* Incremento automático de cantidades cuando el producto ya existe.
* Obtención automática del precio de venta desde `Producto`.
* Cálculo dinámico del subtotal del detalle del pedido.
* Cálculo dinámico del subtotal del pedido.
* Cálculo del valor del descuento.
* Cálculo del subtotal con descuento.
* Cálculo del valor del IVA.
* Cálculo dinámico del total del pedido.
* Refactorización del modelo para eliminar información derivada.
* Documentación de decisiones de arquitectura mediante ADR.

---

### Sprint 3 - Servicios
**Estado:** Pendiente

#### Objetivos
* [ ] Persistencia del dominio mediante base de datos.
* [ ] Implementación de la capa de servicios.
* [ ] Gestión de cambios de estado del pedido.
* [ ] Validación y actualización de stock.
* [ ] Implementar la capa de servicios.
* [ ] Separar lógica de negocio del modelo.
* [ ] Procesamiento de pedidos.
* [ ] Gestión de inventario.
* [ ] Gestión de clientes.

---

### Sprint 4 - Persistencia
**Estado:** Pendiente

#### Objetivos
* [ ] Integración con base de datos.
* [ ] Repositorios.
* [ ] CRUD.
* [ ] Consultas.
* [ ] Persistencia de entidades.

---

### Sprint 5 - API
**Estado:** Pendiente

#### Objetivos
* [ ] Implementación con FastAPI.
* [ ] Endpoints REST.
* [ ] Validaciones.
* [ ] Serialización.
* [ ] Documentación OpenAPI.

---

## Arquitectura

Estructura de directorios planificada para la aplicación:

```text
app/
├── enums/
├── models/
├── services/
├── database/
├── routes/
└── utils/
```

---

## Modelo del dominio

Actualmente el sistema cuenta con las siguientes entidades y componentes del negocio:

```text
Persona
└── Cliente
└── Empleado

Producto
```

### Comportamiento de Pedidos
El sistema gestiona la lógica de compras mediante una relación de composición entre las entidades `Pedido` y `DetallePedido`, distribuyendo sus métodos y propiedades calculadas de la siguiente manera:

```text
Pedido
│
├── Métodos:
│   └── agregar_detalle()
│
└── Propiedades dinámicas (@property):
    ├── subtotal
    ├── valor_descuento
    ├── subtotal_con_descuento
    ├── valor_iva
    └── total
        │
        ▼
DetallePedido
│
├── Métodos:
│   └── aumentar_cantidad()
│
└── Propiedades dinámicas (@property):
    └── subtotal
```

### Enumeraciones
* `EstadoPedido`
* `MetodoPago`
* `RolEmpleado`

---


## Principales decisiones de arquitectura

Las decisiones importantes del proyecto se documentan formalmente mediante *Architecture Decision Records* (ADR).

Registros actuales:
* `ADR-001` - Estado inicial del pedido
* `ADR-002` - Uso de Enum para representar valores del dominio
* `ADR-003` - Conservación del precio histórico
* `ADR-004` - Almacenamiento del total del pedido
* `ADR-005` - Gestión de los detalles de un pedido mediante composición
* `ADR-006` - Cálculo dinámico de valores derivados del pedido

La documentación detallada se encuentra en la ruta:
```text
docs/ADR.md
```

---

## Tecnologías

### Stack actual
* **Lenguaje:** Python 3
* **Paradigma:** Programación Orientada a Objetos
* **Control de versiones:** Git & GitHub

### Próximamente
* **Base de datos:** MySQL
* **Framework Web:** FastAPI
* **ORM:** SQLAlchemy

---

## Historial del desarrollo

El proyecto mantiene un historial de commits pequeños y descriptivos siguiendo buenas prácticas para facilitar el seguimiento paso a paso de cada decisión de desarrollo.

---

## Objetivos del proyecto

* Aplicar principios SOLID.
* Diseñar un modelo de dominio consistente.
* Implementar reglas de negocio encapsuladas en el dominio.
* Mantener un historial limpio mediante Git.
* Documentar decisiones de arquitectura mediante registros formales.
* Construir una API REST profesional.

---

## Estado general

| Sprint | Estado |
| :--- | :--- |
| **Sprint 1** | Completado |
| **Sprint 2** | Completado |
| **Sprint 3** | En Progreso |
| **Sprint 4** | Pendiente |
| **Sprint 5** | Pendiente |
