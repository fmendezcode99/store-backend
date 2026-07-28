# Changelog

Todos los cambios importantes de este proyecto serán documentados en este archivo.

El formato está basado en Keep a Changelog y el proyecto utiliza Versionado Semántico (Semantic Versioning).

---

## [0.3.0]

### Added

- Configuración del proyecto mediante variables de entorno (`.env`).
- Clase `DatabaseConfig` para centralizar la configuración de la base de datos.
- Conexión a MySQL utilizando PyMySQL.
- Contenedor MySQL mediante Podman.
- Volumen persistente para la base de datos.
- Esquema relacional completo de la base de datos.
- Scripts SQL organizados por esquema, datos iniciales y consultas.
- Datos iniciales para productos, clientes, empleados, pedidos y detalles de pedidos.
- Modelos del dominio.
- Enumeraciones para representar reglas del negocio.
- Documentación ADR-009 y ADR-010.
- Pruebas de conexión con la base de datos.

### Changed

- Actualización completa del README.
- Organización de la estructura del proyecto.
- Mejora en la configuración centralizada del proyecto.

---

## [0.2.0]

### Added

- Implementación de las entidades del dominio.
- Creación de la jerarquía de modelos.
- Enumeraciones utilizadas por el dominio.

---

## [0.1.0]

### Added

- Inicialización del proyecto.
- Creación del repositorio Git.
- Organización inicial de carpetas.
- Configuración del entorno de desarrollo.
