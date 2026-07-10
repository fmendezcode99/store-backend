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
**Estado:** En progreso

#### Implementado
* Composición entre `Pedido` y `DetallePedido`.
* Administración privada de los detalles del pedido.
* Método `agregar_detalle()`.
* Prevención de productos duplicados dentro de un pedido.
* Incremento automático de cantidades cuando el producto ya existe.
* Cálculo dinámico del subtotal mediante `@property`.
* Obtención automática del precio de venta desde `Producto`.
* Documentación de decisiones de arquitectura mediante ADR.

#### Pendiente
* [ ] Cálculo del subtotal del pedido.
* [ ] Aplicación de descuentos.
* [ ] Cálculo de IVA.
* [ ] Cálculo del total del pedido.
* [ ] Cambios de estado del pedido.
* [ ] Validaciones de stock.

---

### Sprint 3 - Servicios
**Estado:** Pendiente

#### Objetivos
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

Actualmente el sistema cuenta con las siguientes entidades:

```text
Persona
└── Cliente
└── Empleado

Producto

Pedido
└── DetallePedido
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
| **Sprint 2** | En progreso |
| **Sprint 3** | Pendiente |
| **Sprint 4** | Pendiente |
| **Sprint 5** | Pendiente |
