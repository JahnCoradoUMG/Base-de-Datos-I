import psycopg2

conn = psycopg2.connect(
    host="localhost",
    database="my_first_database",
    user="postgres",
    password="patito123"
)

cur = conn.cursor()

cur.execute('''
    CREATE TABLE IF NOT EXISTS empleados (
        id SERIAL PRIMARY KEY,
        nombre VARCHAR(100) NOT NULL
    );
''')

cur.execute('''
    CREATE TABLE IF NOT EXISTS temporal (
        id SERIAL PRIMARY KEY,
        descripcion VARCHAR(100)
    );
''')

cur.execute("""
    ALTER TABLE empleados ADD COLUMN edad INT;
    ALTER TABLE empleados ADD COLUMN direccion VARCHAR(100);
    ALTER TABLE empleados ADD COLUMN dpi VARCHAR(100);
""")

cur.execute("""
    ALTER TABLE empleados RENAME COLUMN direccion TO domicilio;
""")

cur.execute("""
    ALTER TABLE empleados DROP COLUMN dpi;
""")

cur.execute("""
    ALTER TABLE empleados ADD CONSTRAINT chk_edad CHECK (edad >= 18);
""")

cur.execute("""
    DROP TABLE IF EXISTS temporal;
""")

conn.commit()
cur.close()
conn.close()
print("Operaciones DDL completadas.")