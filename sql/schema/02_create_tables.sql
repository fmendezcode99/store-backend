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
Actualmente no posee relaciones directas.

Restricciones:
- El SKU debe ser único.
- El costo y el precio de venta no pueden ser negativos.
- El stock no puede ser negativo.
------------------------------------------------------------
*/

CREATE TABLE productos (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    sku VARCHAR(50) NOT NULL UNIQUE,
    marca VARCHAR(50) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    costo DECIMAL(10, 2) NOT NULL,
    precio_venta DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL DEFAULT 0,
    estado_activo BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CHECK (costo >= 0),
    CHECK (precio_venta >= 0),
    CHECK (stock >= 0)
);

/*
------------------------------------------------------------
Tabla: clientes

Propósito:
Almacenar la información de los clientes registrados
en el sistema.

Relaciones:
- Un cliente puede realizar múltiples pedidos.

Restricciones:
- La identificación debe ser única.
- El correo electrónico debe ser único.
- Los puntos no pueden ser negativos.
------------------------------------------------------------
*/

CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    identificacion VARCHAR(20) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    fecha_nacimiento DATE NOT NULL,
    fecha_registro DATE NOT NULL,
    puntos INT NOT NULL DEFAULT 0,
    estado_activo BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CHECK (puntos >= 0)
);

/*
------------------------------------------------------------
Tabla: empleados

Propósito:
Almacenar la información de los empleados de la tienda.

Relaciones:
- Un empleado puede registrar múltiples pedidos.

Restricciones:
- La identificación debe ser única.
- El correo electrónico debe ser único.
- El salario no puede ser negativo.
------------------------------------------------------------
*/

CREATE TABLE empleados (
    id_empleado INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    identificacion VARCHAR(20) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    fecha_nacimiento DATE NOT NULL,
    rol VARCHAR(50) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
    fecha_inicio DATE NOT NULL,
    estado_activo BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CHECK (salario >= 0)
);

/*
------------------------------------------------------------
Tabla: pedidos

Propósito:
Registrar las compras realizadas por los clientes.

Relaciones:
- Pertenece a un cliente.
- Es registrado por un empleado.
- Contiene uno o varios detalles de pedido.

Restricciones:
- Debe existir un cliente válido.
- Debe existir un empleado válido.
- Los porcentajes no pueden ser negativos.
------------------------------------------------------------
*/

CREATE TABLE pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    numero_pedido VARCHAR(30) NOT NULL UNIQUE,
    id_cliente INT NOT NULL,
    id_empleado INT NOT NULL,
    fecha_compra DATE NOT NULL,
    metodo_pago VARCHAR(30) NOT NULL,
    direccion VARCHAR(150) NOT NULL,
    estado VARCHAR(30) NOT NULL,
    porcentaje_descuento DECIMAL(5, 2) NOT NULL DEFAULT 0,
    porcentaje_iva DECIMAL(5, 2) NOT NULL DEFAULT 0.19,
    total DECIMAL(12, 2) NOT NULL DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CHECK (porcentaje_descuento >= 0),
    CHECK (porcentaje_iva >= 0),
    CHECK (total >= 0),
    CONSTRAINT fk_pedido_cliente FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente),
    CONSTRAINT fk_pedido_empleado FOREIGN KEY (id_empleado) REFERENCES empleados (id_empleado)
);

/*
------------------------------------------------------------
Tabla: detalle_pedido

Propósito:
Almacenar los productos que componen cada pedido.

Relaciones:
- Pertenece a un pedido.
- Hace referencia a un producto.

Restricciones:
- La cantidad debe ser mayor que cero.
- El precio unitario y el subtotal no pueden ser negativos.
------------------------------------------------------------
*/

CREATE TABLE detalle_pedido (
    id_detalle INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10, 2) NOT NULL,
    subtotal DECIMAL(10, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CHECK (cantidad > 0),
    CHECK (precio_unitario >= 0),
    CHECK (subtotal >= 0),
    CONSTRAINT fk_detalle_pedido FOREIGN KEY (id_pedido) REFERENCES pedidos (id_pedido) ON DELETE CASCADE,
    CONSTRAINT fk_detalle_producto FOREIGN KEY (id_producto) REFERENCES productos (id_producto)
);

/*
============================================================
Fin del archivo: 02_create_tables.sql
============================================================
*/
