/*
============================================================
Archivo      : 02_create_tables.sql
Proyecto     : Store Management System
Sprint       : Sprint 3 - Persistencia
Autor        : Juan

Responsabilidad:
    Crear la estructura inicial de las tablas del sistema.

Dependencias:
    - 01_create_database.sql

Notas:
    - Las restricciones se definen junto con cada tabla.
    - El script evolucionará a medida que avance el Sprint 3.
============================================================
*/

USE store_management_db;

/*
------------------------------------------------------------
Tabla: productos

Propósito:
    Almacenar la información de los productos comercializados
    por la empresa.

Relaciones:
    Actualmente no posee relaciones con otras tablas.

Restricciones:
    - El SKU debe ser único.
    - El costo y el precio de venta son obligatorios.
    - El stock debe existir para cada producto.
------------------------------------------------------------
*/

CREATE TABLE productos (

    id_producto INT AUTO_INCREMENT PRIMARY KEY,

    nombre VARCHAR(100) NOT NULL,

    sku VARCHAR(50) NOT NULL UNIQUE,

    marca VARCHAR(50) NOT NULL,

    categoria VARCHAR(50) NOT NULL,

    costo DECIMAL(10,2) NOT NULL,

    precio_venta DECIMAL(10,2) NOT NULL,

    stock INT NOT NULL,

    estado_activo BOOLEAN NOT NULL DEFAULT TRUE

);

/*
============================================================
Fin del archivo: 02_create_tables.sql
============================================================
*/