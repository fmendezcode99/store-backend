/*
============================================================
Archivo      : 01_select_productos.sql
Proyecto     : Store Management System
Sprint       : Sprint 3 - Persistencia
Autor        : Juan

Responsabilidad:
    Realizar consultas básicas sobre la tabla productos.

Dependencias:
    - 01_create_database.sql
    - 02_create_tables.sql
    - 01_seed_data.sql
============================================================
*/

USE store_management_db;

SELECT
    nombre,
    precio_venta
FROM productos;

SELECT
    nombre,
    precio_venta,
    stock
FROM productos
WHERE estado_activo = TRUE;
