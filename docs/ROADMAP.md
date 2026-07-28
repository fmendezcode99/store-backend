# Roadmap

## Descripción

Este documento presenta la planificación general del proyecto **Store Backend**, un sistema de gestión de inventario y ventas desarrollado como proyecto de aprendizaje con enfoque en buenas prácticas de desarrollo backend utilizando Python.

El proyecto está dividido en cinco sprints incrementales. Cada sprint incorpora nuevas funcionalidades manteniendo una arquitectura organizada, código mantenible y documentación actualizada.

---

## Historial de desarrollo por sprint

| Campo          | Valor         |
| -------------- | ------------- |
| Proyecto       | Store Backend |
| Versión actual | 0.3.0         |
| Sprint actual  | Sprint 3      |
| Estado         | Completado    |

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

## Sprint 4 — Repository Pattern y Lógica de Negocio

## Objetivos

- Implementar el patrón Repository.
- Desarrollar los CRUD de las entidades principales.
- Implementar la capa de servicios.
- Aplicar validaciones y reglas de negocio.
- Incorporar pruebas unitarias.

## Estado

Pendiente.

---

## Sprint 5 — API REST y Finalización

## Objetivos

- Implementar FastAPI.
- Crear los endpoints REST.
- Integrar la capa de servicios.
- Documentar la API con Swagger/OpenAPI.
- Realizar pruebas finales.
- Preparar el proyecto para su despliegue.

## Estado

Pendiente.

---

## Objetivo Final

Desarrollar un backend profesional utilizando Python aplicando principios de Clean Code, separación de responsabilidades, arquitectura por capas y buenas prácticas de ingeniería de software.
