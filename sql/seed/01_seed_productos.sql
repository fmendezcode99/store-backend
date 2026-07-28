-- ==========================================================
-- Store Management System
-- Archivo      : 03_seed_productos.sql
-- Descripción  : Inserta productos de prueba para el sistema.
-- Base de datos: store_management_db
-- ==========================================================

USE store_management_db;

START TRANSACTION;

INSERT INTO
    productos (
        nombre,
        sku,
        marca,
        categoria,
        costo,
        precio_venta,
        stock,
        estado_activo
    )
VALUES

-- ==========================================================
-- MOUSE
-- ==========================================================

(
    'Logitech G203',
    'LOG-G203',
    'Logitech',
    'Mouse',
    72000.00,
    95000.00,
    25,
    TRUE
),
(
    'Logitech G502 HERO',
    'LOG-G502',
    'Logitech',
    'Mouse',
    180000.00,
    229900.00,
    18,
    TRUE
),
(
    'Logitech MX Master 3S',
    'LOG-MX3S',
    'Logitech',
    'Mouse',
    360000.00,
    449900.00,
    10,
    TRUE
),
(
    'Razer DeathAdder V3',
    'RAZ-DAV3',
    'Razer',
    'Mouse',
    250000.00,
    319900.00,
    15,
    TRUE
),
(
    'Redragon Cobra',
    'RED-M711',
    'Redragon',
    'Mouse',
    85000.00,
    119900.00,
    20,
    TRUE
),
(
    'HP X500',
    'HP-X500',
    'HP',
    'Mouse',
    28000.00,
    39900.00,
    25,
    TRUE
),
(
    'Microsoft Bluetooth Mouse',
    'MS-BTM',
    'Microsoft',
    'Mouse',
    75000.00,
    99900.00,
    15,
    TRUE
),
(
    'Genius DX-110',
    'GEN-DX110',
    'Genius',
    'Mouse',
    18000.00,
    25900.00,
    40,
    TRUE
),
(
    'Logitech M170',
    'LOG-M170',
    'Logitech',
    'Mouse',
    35000.00,
    49900.00,
    20,
    TRUE
),
(
    'Corsair Katar Pro',
    'COR-KATAR',
    'Corsair',
    'Mouse',
    120000.00,
    159900.00,
    12,
    TRUE
),

-- ==========================================================
-- TECLADOS
-- ==========================================================

(
    'Redragon K552',
    'RED-K552',
    'Redragon',
    'Teclado',
    120000.00,
    169900.00,
    15,
    TRUE
),
(
    'HyperX Alloy Origins',
    'HPX-ALLOY',
    'HyperX',
    'Teclado',
    320000.00,
    399900.00,
    22,
    TRUE
),
(
    'Corsair K70 RGB',
    'COR-K70',
    'Corsair',
    'Teclado',
    520000.00,
    619900.00,
    0,
    TRUE
),
(
    'Logitech G Pro',
    'LOG-GPROK',
    'Logitech',
    'Teclado',
    430000.00,
    519900.00,
    18,
    TRUE
),
(
    'SteelSeries Apex 3',
    'SS-APEX3',
    'SteelSeries',
    'Teclado',
    240000.00,
    299900.00,
    20,
    TRUE
),
(
    'ASUS TUF K3',
    'ASU-TUFK3',
    'ASUS',
    'Teclado',
    290000.00,
    349900.00,
    18,
    TRUE
),
(
    'Razer BlackWidow V4',
    'RAZ-BWV4',
    'Razer',
    'Teclado',
    610000.00,
    719900.00,
    0,
    TRUE
),
(
    'Genius SlimStar',
    'GEN-SLIM',
    'Genius',
    'Teclado',
    45000.00,
    69900.00,
    0,
    FALSE
),

-- ==========================================================
-- AUDIO
-- ==========================================================

(
    'HyperX Cloud II',
    'HPX-C2',
    'HyperX',
    'Audio',
    260000.00,
    319900.00,
    25,
    TRUE
),
(
    'JBL Tune 720BT',
    'JBL-720',
    'JBL',
    'Audio',
    220000.00,
    279900.00,
    25,
    TRUE
),
(
    'Sony WH-CH520',
    'SNY-520',
    'Sony',
    'Audio',
    180000.00,
    239900.00,
    22,
    TRUE
),
(
    'Logitech G435',
    'LOG-G435',
    'Logitech',
    'Audio',
    210000.00,
    269900.00,
    20,
    TRUE
),
(
    'Redragon Zeus X',
    'RED-ZEUS',
    'Redragon',
    'Audio',
    180000.00,
    239900.00,
    20,
    TRUE
),
(
    'Fifine K669B',
    'FIF-K669',
    'Fifine',
    'Audio',
    135000.00,
    179900.00,
    14,
    TRUE
),
(
    'Blue Snowball Ice',
    'BLU-SNOW',
    'Blue',
    'Audio',
    210000.00,
    269900.00,
    18,
    TRUE
),
(
    'JBL Quantum 100',
    'JBL-Q100',
    'JBL',
    'Audio',
    110000.00,
    149900.00,
    0,
    FALSE
),

-- ==========================================================
-- MONITORES
-- ==========================================================

(
    'LG UltraGear 24',
    'LG-24UG',
    'LG',
    'Monitor',
    620000.00,
    759900.00,
    20,
    TRUE
),
(
    'ASUS TUF VG27',
    'ASU-VG27',
    'ASUS',
    'Monitor',
    980000.00,
    1199900.00,
    14,
    TRUE
),
(
    'Samsung Odyssey G5',
    'SAM-G5',
    'Samsung',
    'Monitor',
    1250000.00,
    1459900.00,
    0,
    TRUE
),
(
    'AOC 24G2',
    'AOC-24G2',
    'AOC',
    'Monitor',
    760000.00,
    899900.00,
    17,
    TRUE
),
(
    'MSI G274QPF',
    'MSI-G274',
    'MSI',
    'Monitor',
    1450000.00,
    1659900.00,
    13,
    TRUE
),
(
    'Dell P2422H',
    'DEL-P2422',
    'Dell',
    'Monitor',
    820000.00,
    959900.00,
    15,
    TRUE
),
(
    'ViewSonic VX2418',
    'VIE-VX24',
    'ViewSonic',
    'Monitor',
    690000.00,
    829900.00,
    8,
    TRUE
),
(
    'BenQ GW2480',
    'BEN-GW24',
    'BenQ',
    'Monitor',
    640000.00,
    779900.00,
    22,
    TRUE
),

-- ==========================================================
-- ALMACENAMIENTO
-- ==========================================================

(
    'Samsung 990 EVO 1TB',
    'SAM-990E',
    'Samsung',
    'Almacenamiento',
    340000.00,
    419900.00,
    25,
    TRUE
),
(
    'Kingston NV3 1TB',
    'KIN-NV3',
    'Kingston',
    'Almacenamiento',
    210000.00,
    269900.00,
    30,
    TRUE
),
(
    'Crucial P3 Plus 2TB',
    'CRU-P3P2',
    'Crucial',
    'Almacenamiento',
    420000.00,
    499900.00,
    20,
    TRUE
),
(
    'WD Blue SN580',
    'WD-SN580',
    'Western Digital',
    'Almacenamiento',
    230000.00,
    289900.00,
    25,
    TRUE
),
(
    'Seagate Barracuda 2TB',
    'SEA-2TB',
    'Seagate',
    'Almacenamiento',
    190000.00,
    249900.00,
    17,
    TRUE
),
(
    'Kingston A400 480GB',
    'KIN-A400',
    'Kingston',
    'Almacenamiento',
    95000.00,
    129900.00,
    20,
    TRUE
),
(
    'Samsung T7 1TB',
    'SAM-T7',
    'Samsung',
    'Almacenamiento',
    390000.00,
    469900.00,
    14,
    TRUE
),
(
    'WD Elements 2TB',
    'WD-ELEM',
    'Western Digital',
    'Almacenamiento',
    240000.00,
    299900.00,
    20,
    TRUE
),

-- ==========================================================
-- MEMORIA RAM
-- ==========================================================

(
    'Corsair Vengeance LPX 16GB',
    'COR-V16',
    'Corsair',
    'Memoria RAM',
    150000.00,
    189900.00,
    27,
    TRUE
),
(
    'Kingston Fury Beast 32GB',
    'KIN-F32',
    'Kingston',
    'Memoria RAM',
    340000.00,
    419900.00,
    19,
    TRUE
),
(
    'Crucial Pro DDR4 16GB',
    'CRU-16',
    'Crucial',
    'Memoria RAM',
    135000.00,
    169900.00,
    23,
    TRUE
),
(
    'TeamGroup T-Force Delta RGB 32GB',
    'TGR-32',
    'TeamGroup',
    'Memoria RAM',
    360000.00,
    439900.00,
    18,
    TRUE
),
(
    'ADATA XPG GAMMIX D35 16GB',
    'ADA-16',
    'ADATA',
    'Memoria RAM',
    145000.00,
    179900.00,
    15,
    TRUE
),
(
    'G.Skill Ripjaws V 32GB',
    'GSK-32',
    'G.Skill',
    'Memoria RAM',
    355000.00,
    429900.00,
    0,
    FALSE
),

-- ==========================================================
-- COMPONENTES
-- ==========================================================

-- Procesadores
(
    'AMD Ryzen 5 5600',
    'AMD-5600',
    'AMD',
    'Procesador',
    480000.00,
    599900.00,
    20,
    TRUE
),
(
    'AMD Ryzen 7 5700X',
    'AMD-5700X',
    'AMD',
    'Procesador',
    690000.00,
    829900.00,
    10,
    TRUE
),

-- Tarjetas Gráficas
(
    'NVIDIA GeForce RTX 4060 8GB',
    'NVD-4060',
    'NVIDIA',
    'Tarjeta Gráfica',
    1450000.00,
    1699900.00,
    10,
    TRUE
),
(
    'NVIDIA GeForce RTX 5070 12GB',
    'NVD-5070',
    'NVIDIA',
    'Tarjeta Gráfica',
    2650000.00,
    2999900.00,
    0,
    TRUE
),

-- Placas Base
(
    'MSI B550M PRO-VDH WiFi',
    'MSI-B550',
    'MSI',
    'Placa Base',
    420000.00,
    519900.00,
    12,
    TRUE
),
(
    'ASUS TUF Gaming B650-PLUS WiFi',
    'ASU-B650',
    'ASUS',
    'Placa Base',
    760000.00,
    899900.00,
    10,
    TRUE
),

-- Fuente de Poder
(
    'Cooler Master MWE Gold 650 V2',
    'CM-650',
    'Cooler Master',
    'Fuente de Poder',
    310000.00,
    389900.00,
    15,
    TRUE
),

-- Refrigeración
(
    'DeepCool AK400',
    'DPC-AK400',
    'DeepCool',
    'Refrigeración',
    145000.00,
    189900.00,
    18,
    TRUE
),

-- ==========================================================
-- ACCESORIOS
-- ==========================================================

(
    'Logitech C920 HD Pro Webcam',
    'LOG-C920',
    'Logitech',
    'Accesorio',
    220000.00,
    279900.00,
    18,
    TRUE
),
(
    'Mouse Pad Redragon Flick XL',
    'RED-XL',
    'Redragon',
    'Accesorio',
    45000.00,
    69900.00,
    50,
    TRUE
),
(
    'Soporte para Monitor North Bayou F80',
    'NB-F80',
    'North Bayou',
    'Accesorio',
    135000.00,
    179900.00,
    18,
    TRUE
),
(
    'Ugreen Hub USB-C 6 en 1',
    'UGR-HUB',
    'Ugreen',
    'Accesorio',
    95000.00,
    129900.00,
    25,
    TRUE
);
-- Confirmar la inserción de todos los registros
COMMIT;
