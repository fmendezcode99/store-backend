/*
============================================================
Archivo      : 01_seed_data.sql
Proyecto     : Store Management System
Sprint       : Sprint 3 - Persistencia
Autor        : Juan

Responsabilidad:
    Insertar los datos iniciales necesarios para realizar
    pruebas durante el desarrollo del sistema.

Dependencias:
    - 01_create_database.sql
    - 02_create_tables.sql

Notas:
    - Este script no debe contener datos de producción.
    - Su propósito es facilitar el desarrollo y las pruebas.
============================================================
*/

USE store_management_db;

INSERT INTO productos (
    nombre,
    sku,
    marca,
    categoria,
    costo,
    precio_venta
)
VALUES (
    'Mouse Logitech G203',
    'LOG-G203',
    'Logitech',
    'Periféricos',
    70000,
    95000
);

/*
============================================================
Fin del archivo: 01_seed_data.sql
============================================================
*/