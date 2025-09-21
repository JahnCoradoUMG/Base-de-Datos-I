# Práctica DDL con Python y PostgreSQL

Este proyecto realiza operaciones DDL (Data Definition Language) en una base de datos PostgreSQL usando Python.

## Operaciones realizadas

- **Agregar columnas nuevas**: Se agregan las columnas `edad` y `direccion` a la tabla `empleados`.
- **Renombrar columnas**: Se renombra la columna `direccion` a `domicilio`.
- **Eliminar columnas**: Se elimina la columna `edad`.
- **Agregar un CHECK**: Se agrega una restricción CHECK para que la edad sea mayor o igual a 18.
- **Eliminar una tabla**: Se elimina la tabla `temporal` si existe.

## Uso

1. Instala las dependencias:
   ```
   pip install psycopg2-binary
   ```
2. Configura tus datos de conexión en `main.py`.
3. Ejecuta el script:
   ```
   python main.py
   ```

## Notas

- Asegúrate de que la tabla `empleados` y la tabla `temporal` existan antes de ejecutar el script.
- Modifica los nombres de las tablas y