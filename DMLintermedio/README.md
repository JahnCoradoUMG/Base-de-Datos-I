# Consultas SQL - Base de Datos Chinook

Este archivo contiene una explicación de cada consulta SQL realizada sobre la base de datos **Chinook**.

---

## Conexión a la base de datos

```sql
\c chinook
```
Se conecta a la base de datos Chinook.

## Consultas:
```
-- Clientes de Brazil
SELECT first_name, last_name, email 
FROM customer 
WHERE country = 'Brazil' 
ORDER BY last_name ASC;


Devuelve los nombres, apellidos y correos electrónicos de los clientes que viven en Brasil, ordenados alfabéticamente por apellido.

Álbumes de un artista específico
SELECT title 
FROM album 
WHERE artist_id = (SELECT artist_id FROM artist WHERE name = 'AC/DC');


Devuelve los títulos de los álbumes del artista AC/DC.

Canciones que contengan “love” (ignorando mayúsculas)
SELECT track_id, name, album_id 
FROM track 
WHERE name ILIKE '%lovE%';


Devuelve las canciones cuyo nombre contiene la palabra “love”, sin distinguir mayúsculas de minúsculas.

Facturas mayores a 10 dólares
SELECT invoice_id, invoice_date, billing_country, total
FROM invoice 
WHERE total > 10.00 
ORDER BY total ASC;


Devuelve las facturas cuyo total es mayor a 10 dólares, ordenadas de menor a mayor.

Los 5 clientes más recientes
SELECT customer_id, first_name, last_name, country
FROM customer 
ORDER BY customer_id DESC 
LIMIT 5;


Devuelve los últimos 5 clientes registrados en la base de datos.

Canciones de más de 5 minutos
SELECT
    track_id,
    name,
    (milliseconds / 60000.0) AS duracion
FROM
    track
WHERE
    milliseconds > 300000.0;


Devuelve las canciones que tienen una duración mayor a 5 minutos, expresadas en minutos.

Cantidad de clientes por país
SELECT country, COUNT(customer_id) AS cantidad_clientes
FROM customer 
GROUP BY country 
ORDER BY cantidad_clientes DESC;


Muestra cuántos clientes hay por país, ordenado de mayor a menor cantidad.

Empleados con título específico
SELECT employee_id, first_name, last_name, title, hire_date
FROM employee 
WHERE title = 'Sales Support Agent';


Devuelve los empleados cuyo título es Sales Support Agent, mostrando su información básica.

Top 10 canciones más largas
SELECT track_id, name, (milliseconds/60000.0) as duracion_minutos
FROM track 
ORDER BY duracion_minutos DESC 
LIMIT 10;


Devuelve las 10 canciones más largas, ordenadas por duración en minutos de mayor a menor.

Clientes cuyo apellido empiece con “S”
SELECT customer_id, first_name, last_name, country
FROM customer 
WHERE last_name LIKE 'S%';


Devuelve los clientes cuyo apellido comienza con la letra S.
```