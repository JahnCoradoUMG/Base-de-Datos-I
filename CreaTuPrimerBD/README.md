# Crear tu Primera Base de Datos en PostgreSQL usando Docker y DataGrip
## 1. Comando para ejecutar Docker con PostgreSQL:
### - Abre una terminal y ejecuta:
~~~
docker run --name postgres-db -e POSTGRES_PASSWORD=yourpassword -p 5432:5432 -d postgres
~~~
### - Asegúrate que el contenedor esté activo:
~~~
docker ps
~~~
## 2. Pasos para configurar DataGrip:
### - Abre DataGrip y sigue:
- File > Data Sources and Drivers
- Haz clic en + y selecciona PostgreSQL
- Configura los datos:
    * Host: localhost
    * Port: 5432
    * User: postgres
    * Password: yourpassword
    * Database: postgres
- Prueba la conexión.
## 3. Creación de la base de datos PostgreSQL desde DataGrip:
### - Abre una nueva consola SQL en DataGrip.
### - Ejecuta:
~~~
CREATE DATABASE my_first_database;
~~~