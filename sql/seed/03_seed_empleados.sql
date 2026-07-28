-- ==========================================================
-- Store Management System
-- Archivo      : 05_seed_empleados.sql
-- Descripción  : Inserta empleados de prueba para el sistema.
-- Base de datos: store_management_db
-- ==========================================================

USE store_management_db;

START TRANSACTION;

INSERT INTO
    empleados (
        nombre,
        apellido,
        identificacion,
        email,
        fecha_nacimiento,
        rol,
        salario,
        fecha_inicio,
        estado_activo
    )
VALUES (
        'Carlos Andrés',
        'Gómez Rodríguez',
        '200000001',
        'carlos.gomez@storemanagement.com',
        '1985-04-12',
        'Administrador',
        6800000.00,
        '2022-01-10',
        TRUE
    ),
    (
        'Diana Marcela',
        'Ruiz López',
        '200000002',
        'diana.ruiz@storemanagement.com',
        '1989-08-03',
        'Supervisor',
        5200000.00,
        '2022-05-16',
        TRUE
    ),
    (
        'Jorge Luis',
        'Martínez Castro',
        '200000003',
        'jorge.martinez@storemanagement.com',
        '1990-11-19',
        'Supervisor',
        5200000.00,
        '2023-02-06',
        TRUE
    ),
    (
        'Juan David',
        'Ramírez Torres',
        '200000004',
        'juan.ramirez@storemanagement.com',
        '1998-03-15',
        'Vendedor',
        2800000.00,
        '2023-06-12',
        TRUE
    ),
    (
        'Laura Sofía',
        'Moreno Díaz',
        '200000005',
        'laura.moreno@storemanagement.com',
        '1999-07-28',
        'Vendedor',
        2900000.00,
        '2023-08-07',
        TRUE
    ),
    (
        'Felipe Andrés',
        'Hernández Gómez',
        '200000006',
        'felipe.hernandez@storemanagement.com',
        '1995-05-09',
        'Vendedor',
        3000000.00,
        '2023-11-20',
        TRUE
    ),
    (
        'Natalia',
        'Pérez Vargas',
        '200000007',
        'natalia.perez@storemanagement.com',
        '1996-01-17',
        'Vendedor',
        2750000.00,
        '2024-01-15',
        TRUE
    ),
    (
        'Miguel Ángel',
        'Castro León',
        '200000008',
        'miguel.castro@storemanagement.com',
        '1993-09-04',
        'Vendedor',
        3100000.00,
        '2024-03-18',
        TRUE
    ),
    (
        'Valentina',
        'Rojas Mendoza',
        '200000009',
        'valentina.rojas@storemanagement.com',
        '2000-02-26',
        'Vendedor',
        2600000.00,
        '2024-06-10',
        TRUE
    ),
    (
        'Sebastián',
        'Ortega Silva',
        '200000010',
        'sebastian.ortega@storemanagement.com',
        '1997-10-08',
        'Vendedor',
        3200000.00,
        '2025-01-20',
        TRUE
    ),
    (
        'Andrés Felipe',
        'Salazar Gómez',
        '200000011',
        'andres.salazar@storemanagement.com',
        '1994-06-30',
        'Auxiliar de Bodega',
        2500000.00,
        '2023-04-17',
        TRUE
    ),
    (
        'Camila',
        'Muñoz Herrera',
        '200000012',
        'camila.munoz@storemanagement.com',
        '1998-12-13',
        'Auxiliar de Bodega',
        2400000.00,
        '2024-02-26',
        TRUE
    ),
    (
        'Kevin Alejandro',
        'Castaño Ruiz',
        '200000013',
        'kevin.castano@storemanagement.com',
        '1999-05-21',
        'Auxiliar de Bodega',
        2600000.00,
        '2025-05-05',
        FALSE
    ),
    (
        'Daniel',
        'Quintero Pineda',
        '200000014',
        'daniel.quintero@storemanagement.com',
        '1992-04-14',
        'Soporte Técnico',
        3900000.00,
        '2023-07-03',
        TRUE
    ),
    (
        'Paula Andrea',
        'Vargas Restrepo',
        '200000015',
        'paula.vargas@storemanagement.com',
        '1995-11-27',
        'Soporte Técnico',
        4100000.00,
        '2024-08-12',
        TRUE
    );

COMMIT;
