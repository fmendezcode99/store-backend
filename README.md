# Store Management System

Proyecto académico desarrollado para aplicar conceptos de Programación Orientada a Objetos (POO), modelado de dominio y buenas prácticas de desarrollo de software utilizando Python.

El objetivo del proyecto es construir progresivamente un sistema de gestión para una tienda, implementando una arquitectura limpia, reglas de negocio y un historial de desarrollo organizado mediante Git.

---

## Estado del proyecto

### Sprint 1 - Modelado del dominio

**Estado:** Completado

#### Implementado

- Estructura inicial del proyecto.
- Organización por paquetes.
- Modelado de entidades del dominio.
- Clases base del sistema.
- Enumeraciones para representar estados y tipos del negocio.
- Configuración inicial del repositorio Git.

---

### Sprint 2 - Reglas de negocio del dominio

**Estado:** Completado

#### Implementado

- Composición entre `Pedido` y `DetallePedido`.
- Administración privada de los detalles del pedido.
- Método `agregar_detalle()`.
- Prevención de productos duplicados dentro de un pedido.
- Incremento automático de cantidades cuando el producto ya existe.
- Obtención automática del precio de venta desde `Producto`.
- Cálculo dinámico del subtotal del detalle del pedido.
- Cálculo dinámico del subtotal del pedido.
- Cálculo del valor del descuento.
- Cálculo del subtotal con descuento.
- Cálculo del valor del IVA.
- Cálculo dinámico del total del pedido.
- Refactorización del modelo para eliminar información derivada.
- Documentación de decisiones de arquitectura mediante ADR.

---

### Sprint 3 - Servicios y Persistencia

**Estado:** En Progreso

> [!NOTE]
> Durante este sprint se implementó la infraestructura de persistencia del proyecto utilizando MySQL Server 8 ejecutándose en un contenedor Podman con almacenamiento persistente mediante volúmenes.

> Se diseñó el esquema relacional completo, se implementaron las restricciones de integridad, se desarrollaron scripts SQL versionados para la creación del esquema y la carga de datos iniciales, dejando el entorno preparado para comenzar el desarrollo de la capa Repository utilizando PyMySQL.

#### Funcionalidades implementadas

- Diseño del modelo de dominio completado.
- Implementación de las entidades principales en Python.
- Aplicación de principios de Programación Orientada a Objetos (POO).
- Documentación de decisiones de arquitectura mediante ADR.
- Configuración de MySQL Server 8.4 utilizando Podman.
- Configuración de almacenamiento persistente mediante volúmenes para el contenedor de MySQL.
- Creación de la base de datos `store_management_db`.
- Diseño e implementación del esquema relacional completo.
- Organización de scripts SQL por responsabilidad (`schema`, `seed` y `queries`).
- Implementación de todas las tablas del sistema con sus respectivas restricciones de integridad (`PRIMARY KEY`, `FOREIGN KEY`, `CHECK`, `UNIQUE`, `NOT NULL` y `DEFAULT`).
- Inserción de datos iniciales mediante scripts de carga (`seed`) para todas las entidades del sistema.
- Implementación y práctica de operaciones CRUD utilizando SQL.
- Validación de la estructura de las tablas mediante comandos de inspección (`DESCRIBE`).
- Validación de la integridad referencial y de las relaciones entre entidades mediante consultas `JOIN`.
- Verificación del correcto funcionamiento del modelo de datos utilizando consultas de prueba.
- Preparación del proyecto para iniciar la implementación de la capa de persistencia con PyMySQL.
- Implementación de la configuración centralizada mediante variables de entorno (`.env`).
- Implementación del módulo de conexión a MySQL utilizando PyMySQL.
- Separación inicial de la configuración y la capa de acceso a datos.

#### Objetivos y Próximos pasos

- [x] Aprender SQL (DDL y DML).
- [x] Diseñar el esquema relacional de la base de datos.
- [x] Implementar todas las tablas del sistema mediante scripts SQL.
- [x] Organizar los scripts SQL por responsabilidad (`schema`, `seed` y `queries`).
- [x] Configurar MySQL Server 8.4 utilizando Podman.
- [x] Poblar la base de datos con datos iniciales para todas las entidades.
- [x] Validar la integridad referencial y las relaciones mediante consultas SQL.
- [x] Implementar la configuración centralizada mediante variables de entorno.
- [x] Preparar la estructura inicial de la capa de persistencia.
- [ ] Integrar la conexión a MySQL con la capa Repository.
- [ ] Desarrollar el Repository Pattern para la entidad `Producto`.
- [ ] Implementar operaciones CRUD desde Python.
- [ ] Diseñar la capa de servicios para separar la lógica de negocio del acceso a datos.
- [ ] Integrar SQLAlchemy de forma progresiva.
- [ ] Gestionar cambios de estado de los pedidos y actualización de inventario.
- [ ] Implementar el procesamiento completo de pedidos y la gestión de clientes.

---

### Sprint 4 - Persistencia

**Estado:** Pendiente

#### Objetivos

- [ ] Integración con base de datos.
- [ ] Repositorios.
- [ ] CRUD.
- [ ] Consultas.
- [ ] Persistencia de entidades.

---

### Sprint 5 - API

**Estado:** Pendiente

#### Objetivos

- [ ] Implementación con FastAPI.
- [ ] Endpoints REST.
- [ ] Validaciones.
- [ ] Serialización.
- [ ] Documentación OpenAPI.

---

## Arquitectura

Estructura de directorios planificada para la aplicación:

```text
Store-Backend/
│
├── .ai/                          # Base de Conocimiento para desarrollo asistido por IA
│   ├── core/                     # Contexto y documentación principal del proyecto
│   ├── decisions/                # Decisiones para la IA
│   ├── patterns/                 # Patrones y buenas prácticas reutilizables
│   ├── prompts/                  # Prompts especializados
│   └── templates/                # Plantillas para mantener la consistencia documental
│
├── app/                          # Código fuente del backend
│   ├── database/
│   ├── enums/
│   ├── models/
│   ├── repositories/
│   ├── routes/
│   ├── services/
│   └── utils/
│
├── docs/                         # Documentación para desarrolladores y reclutadores
│   ├── adr/                      # Architecture Decision Records (ADR)
│   └── development_environment.md
│
├── sql/                          # Scripts SQL del proyecto
│   ├── schema/                   # Creación de base de datos y tablas
│   ├── seed/                     # Datos iniciales
│   └── queries/                  # Consultas de ejemplo
│
├── tests/                        # Pruebas del proyecto
│
├── .gitignore                    # Archivos ignorados por Git
├── LICENSE                       # Licencia MIT del proyecto
├── README.md                     # Documentación principal del proyecto
└── requirements.txt              # Dependencias de Python

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

- `EstadoPedido`
- `MetodoPago`
- `RolEmpleado`

---

## Base de datos

La capa de persistencia del proyecto utiliza **MySQL Server 8.4**, ejecutándose en un contenedor **Podman** con almacenamiento persistente mediante volúmenes.

La base de datos fue diseñada siguiendo un enfoque relacional, implementando restricciones de integridad y scripts SQL versionados para facilitar su reconstrucción y mantenimiento.

### Decisiones de Diseño de Datos

- Se adopta MySQL como motor de base de datos relacional para el sistema.
- Todos los cambios estructurales serán versionados mediante scripts SQL almacenados en la carpeta `sql/`.
- La base de datos podrá reconstruirse completamente ejecutando los scripts en el orden correcto (`schema/` -> `seed/` -> `queries/`).

---

## Principales decisiones de arquitectura

Las decisiones importantes del proyecto se documentan formalmente mediante _Architecture Decision Records_ (ADR).

Registros actuales:

- `ADR-001` - Estado inicial del pedido
- `ADR-002` - Uso de Enum para representar valores del dominio
- `ADR-003` - Conservación del precio histórico
- `ADR-004` - Almacenamiento del total del pedido
- `ADR-005` - Gestión de los detalles de un pedido mediante composición
- `ADR-006` - Cálculo dinámico de valores derivados del pedido
- `ADR-007` - Implementación de la capa de persistencia con MySQL
- `ADR-008` - Organización de la capa de persistencia mediante scripts SQL
- `ADR-009` - Adopción de una Base de Conocimiento para Desarrollo Asistido por IA
- `ADR-010` - Configuración centralizada mediante variables de entorno

La documentación detallada se encuentra en la ruta:

```text
docs/ADR.md
```

---

## Tecnologías

### Stack actual

- **Lenguaje:** Python 3
- **Paradigma:** Programación Orientada a Objetos
- **Base de datos:** MySQL Server 8
- **Driver:** PyMySQL
- **Contenedores:** Podman
- **Cliente SQL:** MariaDB Client
- **Control de versiones:** Git & GitHub

### Próximamente

- **ORM:** SQLAlchemy
- **Framework Web:** FastAPI
- **Orquestación de contenedores:** Podman Compose

---

## Desarrollo asistido por IA

Este proyecto incorpora una **Base de Conocimiento para IA** ubicada en la carpeta `.ai/`, diseñada para proporcionar contexto estructurado a asistentes de inteligencia artificial durante el desarrollo.

La Base de Conocimiento centraliza información relevante del proyecto, incluyendo:

- Arquitectura del sistema.
- Estándares de desarrollo.
- Flujo de trabajo.
- Tecnologías utilizadas.
- Patrones de diseño reutilizables.
- Decisiones técnicas.
- Prompts especializados.

Su objetivo es mejorar la consistencia de las respuestas generadas por herramientas de IA, reducir la necesidad de repetir contexto entre sesiones y mantener una documentación técnica organizada y reutilizable.

> [!NOTE]
> La documentación de la carpeta `.ai/` se mantiene en **inglés** para facilitar su uso con diferentes asistentes de IA, mientras que la documentación orientada a desarrolladores y reclutadores se mantiene en **español**.

---

## Historial del desarrollo

El proyecto mantiene un historial de commits pequeños y descriptivos siguiendo buenas prácticas para facilitar el seguimiento paso a paso de cada decisión de desarrollo.

---

## Objetivos del proyecto

- Aplicar principios SOLID.
- Diseñar un modelo de dominio consistente.
- Implementar reglas de negocio encapsuladas en el dominio.
- Mantener un historial limpio mediante Git.
- Documentar decisiones de arquitectura mediante registros formales.
- Construir una API REST profesional.

---

## Estado general

| Sprint       | Estado      |
| :----------- | :---------- |
| **Sprint 1** | Completado  |
| **Sprint 2** | Completado  |
| **Sprint 3** | En Progreso |
| **Sprint 4** | Pendiente   |
| **Sprint 5** | Pendiente   |

---

## Licencia

Este proyecto está distribuido bajo la licencia **MIT**. Consulta el archivo `LICENSE` para más información.
