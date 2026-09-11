-- ═══════════════════════════════════════════════════════════
-- IMPORTACION DESDE EXCEL: Copia de Caso 1 Gastorrepuestos
-- ═══════════════════════════════════════════════════════════

-- Nuevas categorías del Excel
INSERT INTO categorias (nombre, descripcion) VALUES
('Gas', 'Componentes y repuestos a gas'),
('Eléctrico', 'Componentes y repuestos eléctricos'),
('Accesorios', 'Accesorios para equipos gastronómicos'),
('Bazar', 'Artículos de bazar y cocina'),
('Ventilación', 'Sistemas de ventilación y extracción')
ON CONFLICT (nombre) DO NOTHING;

-- Productos del Excel
-- ART-001: Quemador 4 bocas (ARS, stock combinado 8+4=12)
INSERT INTO productos (codigo_barras, nombre, descripcion, precio, precio_usd, stock_actual, stock_minimo, categoria_id, activo)
VALUES ('ART-001', 'Quemador 4 bocas', NULL, 45000.00, NULL, 12, 5,
        (SELECT id FROM categorias WHERE nombre = 'Gas'), true)
ON CONFLICT (codigo_barras) DO UPDATE SET
    stock_actual = EXCLUDED.stock_actual,
    precio = EXCLUDED.precio;

-- ART-001-B: Quemador 4 bocas c/Robinete (USD)
INSERT INTO productos (codigo_barras, nombre, descripcion, precio, precio_usd, stock_actual, stock_minimo, categoria_id, activo)
VALUES ('ART-001-B', 'Quemador 4 bocas c/Robinete', 'Viene con rosca hembra', 0, 38.00, 2, 5,
        (SELECT id FROM categorias WHERE nombre = 'Gas'), true)
ON CONFLICT (codigo_barras) DO UPDATE SET
    stock_actual = EXCLUDED.stock_actual,
    precio_usd = EXCLUDED.precio_usd;

-- ART-002-A: Termostato Robertshaw 50-300° (ARS)
INSERT INTO productos (codigo_barras, nombre, descripcion, precio, precio_usd, stock_actual, stock_minimo, categoria_id, activo)
VALUES ('ART-002-A', 'Termostato Robertshaw 50-300°', NULL, 32500.00, NULL, 0, 5,
        (SELECT id FROM categorias WHERE nombre = 'Eléctrico'), true)
ON CONFLICT (codigo_barras) DO UPDATE SET
    stock_actual = EXCLUDED.stock_actual,
    precio = EXCLUDED.precio;

-- ART-002-B: Termostato Robertshaw 50-300° (USD, reemplazo viejo modelo)
INSERT INTO productos (codigo_barras, nombre, descripcion, precio, precio_usd, stock_actual, stock_minimo, categoria_id, activo)
VALUES ('ART-002-B', 'Termostato Robertshaw 50-300° (Reemplazo)', 'Reemplazo del viejo modelo', 0, 28.50, 0, 5,
        (SELECT id FROM categorias WHERE nombre = 'Eléctrico'), true)
ON CONFLICT (codigo_barras) DO UPDATE SET
    stock_actual = EXCLUDED.stock_actual,
    precio_usd = EXCLUDED.precio_usd;

-- ART-103: Válvula de seguridad Eitar 1/2
INSERT INTO productos (codigo_barras, nombre, descripcion, precio, precio_usd, stock_actual, stock_minimo, categoria_id, activo)
VALUES ('ART-103', 'Válvula de seguridad Eitar 1/2', NULL, 1890.00, NULL, 15, 5,
        (SELECT id FROM categorias WHERE nombre = 'Gas'), true)
ON CONFLICT (codigo_barras) DO UPDATE SET
    stock_actual = EXCLUDED.stock_actual,
    precio = EXCLUDED.precio;

-- ART-104: Canasto Freidora 30L Acero (sin precio definido)
INSERT INTO productos (codigo_barras, nombre, descripcion, precio, precio_usd, stock_actual, stock_minimo, categoria_id, activo)
VALUES ('ART-104', 'Canasto Freidora 30L Acero', NULL, 0, NULL, 5, 5,
        (SELECT id FROM categorias WHERE nombre = 'Accesorios'), true)
ON CONFLICT (codigo_barras) DO UPDATE SET
    stock_actual = EXCLUDED.stock_actual;

-- ART-105: Resistencia cafetera 2000W (ARS)
INSERT INTO productos (codigo_barras, nombre, descripcion, precio, precio_usd, stock_actual, stock_minimo, categoria_id, activo)
VALUES ('ART-105', 'Resistencia cafetera 2000W', NULL, 54000.00, NULL, 12, 5,
        (SELECT id FROM categorias WHERE nombre = 'Eléctrico'), true)
ON CONFLICT (codigo_barras) DO UPDATE SET
    stock_actual = EXCLUDED.stock_actual,
    precio = EXCLUDED.precio;

-- ART-105-B: Resistencia Cafetera 2000 W (220V) (USD, traídas de Brasil)
INSERT INTO productos (codigo_barras, nombre, descripcion, precio, precio_usd, stock_actual, stock_minimo, categoria_id, activo)
VALUES ('ART-105-B', 'Resistencia Cafetera 2000W (220V)', 'Traídas de Brasil', 0, 42.00, 3, 5,
        (SELECT id FROM categorias WHERE nombre = 'Eléctrico'), true)
ON CONFLICT (codigo_barras) DO UPDATE SET
    stock_actual = EXCLUDED.stock_actual,
    precio_usd = EXCLUDED.precio_usd;

-- ART-106: Perilla anafe estándar negra
INSERT INTO productos (codigo_barras, nombre, descripcion, precio, precio_usd, stock_actual, stock_minimo, categoria_id, activo)
VALUES ('ART-106', 'Perilla anafe estándar negra', NULL, 2500.00, NULL, 50, 5,
        (SELECT id FROM categorias WHERE nombre = 'Bazar'), true)
ON CONFLICT (codigo_barras) DO UPDATE SET
    stock_actual = EXCLUDED.stock_actual,
    precio = EXCLUDED.precio;

-- ART-107: Motor extractor 1/2 HP (USD)
INSERT INTO productos (codigo_barras, nombre, descripcion, precio, precio_usd, stock_actual, stock_minimo, categoria_id, activo)
VALUES ('ART-107', 'Motor extractor 1/2 HP', NULL, 0, 110.00, 1, 5,
        (SELECT id FROM categorias WHERE nombre = 'Ventilación'), true)
ON CONFLICT (codigo_barras) DO UPDATE SET
    stock_actual = EXCLUDED.stock_actual,
    precio_usd = EXCLUDED.precio_usd;

-- ART-108: Termocupla universal 90cm
INSERT INTO productos (codigo_barras, nombre, descripcion, precio, precio_usd, stock_actual, stock_minimo, categoria_id, activo)
VALUES ('ART-108', 'Termocupla universal 90cm', NULL, 8500.00, NULL, 20, 5,
        (SELECT id FROM categorias WHERE nombre = 'Gas'), true)
ON CONFLICT (codigo_barras) DO UPDATE SET
    stock_actual = EXCLUDED.stock_actual,
    precio = EXCLUDED.precio;
