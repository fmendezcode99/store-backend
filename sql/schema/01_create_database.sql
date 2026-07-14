/*
============================================================
Archivo      : 01_create_database.sql
Proyecto     : Store Management System
Sprint       : Sprint 3 - Persistencia
Autor        : Juan
Fecha        : 2026-06-22
Responsabilidad:
    Crear la base de datos principal del proyecto y establecer
    el contexto de trabajo para la ejecución de los siguientes
    scripts.

Dependencias:
    - MySQL Server 8.0+

Ejecución:
    Este script debe ejecutarse únicamente una vez durante la
    configuración inicial del proyecto.

Notas:
    - IF NOT EXISTS evita errores si la base de datos ya existe.
    - USE establece la base de datos activa para la sesión actual.
============================================================
*/

CREATE DATABASE IF NOT EXISTS store_management_db;

USE store_management_db;