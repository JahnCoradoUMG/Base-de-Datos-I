
---

# 📜 script.sql (creación de tablas en PostgreSQL)

```sql
-- Crear la base de datos (ejecutar solo una vez)
CREATE DATABASE importacion_vehiculos;

-- Usar la base de datos
\c importacion_vehiculos;

-- ======================
-- TABLA: Lotes de Importación
-- ======================
CREATE TABLE lote_importacion (
    codigo_lote SERIAL PRIMARY KEY,
    fecha_llegada DATE NOT NULL,
    pais_origen VARCHAR(50) NOT NULL
);

-- ======================
-- TABLA: Concesionarios
-- ======================
CREATE TABLE concesionario (
    codigo_concesionario SERIAL PRIMARY KEY,
    nombre_comercial VARCHAR(100) NOT NULL,
    direccion VARCHAR(150),
    persona_contacto VARCHAR(100)
);

-- ======================
-- TABLA: Vehículos
-- ======================
CREATE TABLE vehiculo (
    numero_serie VARCHAR(30) PRIMARY KEY,
    modelo VARCHAR(50) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    anio_fabricacion INT CHECK (anio_fabricacion >= 1950),
    velocidad_maxima INT CHECK (velocidad_maxima > 0),
    precio_declarado NUMERIC(12,2) CHECK (precio_declarado >= 0),
    codigo_lote INT REFERENCES lote_importacion(codigo_lote) ON DELETE SET NULL,
    codigo_concesionario INT REFERENCES concesionario(codigo_concesionario) ON DELETE SET NULL
);
