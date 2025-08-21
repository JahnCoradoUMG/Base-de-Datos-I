# 🚗 Registro de Importación de Vehículos

Este proyecto implementa un sistema de base de datos en **PostgreSQL** para gestionar la importación de vehículos, lotes de importación y concesionarios.

## 📌 Entidades y Atributos

### 1. Vehículo
- **numero_serie** (PK) → VARCHAR(30)
- modelo → VARCHAR(50)
- marca → VARCHAR(50)
- anio_fabricacion → INT
- velocidad_maxima → INT
- precio_declarado → NUMERIC(12,2)
- codigo_lote (FK) → INT
- codigo_concesionario (FK) → INT

### 2. Lote de Importación
- **codigo_lote** (PK) → SERIAL
- fecha_llegada → DATE
- pais_origen → VARCHAR(50)

### 3. Concesionario
- **codigo_concesionario** (PK) → SERIAL
- nombre_comercial → VARCHAR(100)
- direccion → VARCHAR(150)
- persona_contacto → VARCHAR(100)

---

## 📂 Archivos en el Repositorio
- `README.md` → Documentación del proyecto
- `script.sql` → Script para crear la base de datos y tablas en PostgreSQL

---

## ⚙️ Creación de Base de Datos
```sql
CREATE DATABASE importacion_vehiculos;
