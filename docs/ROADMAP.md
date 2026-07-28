# Roadmap

## Descripción

Este documento presenta la planificación general del proyecto **Store Backend**, un sistema de gestión de inventario y ventas desarrollado como proyecto de aprendizaje con enfoque en buenas prácticas de desarrollo backend utilizando Python.

El proyecto está dividido en cinco sprints incrementales. Cada sprint incorpora nuevas funcionalidades manteniendo una arquitectura organizada, código mantenible y documentación actualizada.

---

## Historial de desarrollo por sprint

| Campo          | Valor         |
| -------------- | ------------- |
| Proyecto       | Store Backend |
| Versión actual | 0.4.0         |
| Sprint actual  | Sprint 4      |
| Estado         | En progreso   |

---

## Sprint 1 — Configuración Inicial

## Objetivos

- Crear la estructura base del proyecto.
- Configurar el repositorio Git.
- Definir la organización de carpetas.
- Preparar el entorno de desarrollo.

## Estado

Completado.

---

## Sprint 2 — Modelo de Dominio

## Objetivos

- Diseñar las entidades del negocio.
- Implementar los modelos principales.
- Crear enumeraciones para representar reglas del negocio.

## Estado

Completado.

---

## Sprint 3 — Infraestructura de Persistencia

## Objetivos

- Configurar MySQL.
- Implementar la conexión mediante PyMySQL.
- Configurar variables de entorno.
- Diseñar el esquema relacional.
- Crear scripts SQL.
- Agregar datos iniciales.
- Documentar las decisiones técnicas.

## Funcionalidades implementadas

- Configuración mediante `.env`.
- Clase `DatabaseConfig`.
- Conexión centralizada a MySQL.
- Contenedor MySQL utilizando Podman.
- Volúmenes persistentes.
- Esquema relacional completo.
- Restricciones de integridad.
- Scripts SQL organizados.
- Datos iniciales (Seed).
- Modelos del dominio.
- Enumeraciones.
- Documentación ADR.
- Actualización del README.
- Pruebas de conexión.

## Estado

Completado.

---

## Sprint 4 — Repository Pattern

## Objetivos

- Implementar el patrón Repository.
- Desarrollar la capa de acceso a datos.
- Implementar los CRUD de las entidades principales.
- Integrar la persistencia con MySQL mediante PyMySQL.
- Validar las operaciones CRUD mediante pruebas de integración.

## Funcionalidades implementadas

- Implementación del patrón Repository.
- Creación de la clase `BaseRepository`.
- Implementación de `ProductoRepository`.
- Desarrollo de operaciones CRUD para la entidad `Producto`.
- Integración con MySQL utilizando PyMySQL.
- Validación de las operaciones CRUD mediante pruebas de integración.

## Pendiente

- Implementación de `ClienteRepository`.
- Implementación de `EmpleadoRepository`.
- Implementación de `PedidoRepository`.
- Implementación de los repositorios restantes del dominio.

## Estado

En progreso.

---

## Sprint 5 — Servicios y API REST

## Objetivos

- Implementar la capa de servicios.
- Incorporar la lógica de negocio de la aplicación.
- Implementar FastAPI.
- Crear los endpoints REST.
- Documentar la API mediante OpenAPI/Swagger.
- Realizar pruebas de integración.
- Preparar el proyecto para su despliegue.

## Estado

Pendiente.

---

## Objetivo Final

Desarrollar un backend profesional utilizando Python aplicando principios de Clean Code, separación de responsabilidades, arquitectura por capas y buenas prácticas de ingeniería de software.
