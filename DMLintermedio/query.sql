\c chinook

-- Clientes de Brazil --
SELECT first_name, last_name, email FROM customer WHERE country = 'Brazil' ORDER BY last_name ASC;

-- Álbumes de un artista específico
SELECT * FROM album;
SELECT * FROM artist;
SELECT title FROM album WHERE artist_id = (SELECT artist_id FROM artist WHERE name = 'AC/DC');

-- Canciones que contengan “love” (ignorando mayúsculas)
SELECT * FROM track;
SELECT track_id, name, album_id FROM track WHERE name ILIKE '%lovE%';

-- Facturas mayores a 10 dólares
SELECT * FROM invoice;
SELECT invoice_id, invoice_date, billing_country, total
FROM invoice WHERE total > 10.00 ORDER BY total ASC;

-- Los 5 clientes más recientes
SELECT * FROM customer;
SELECT customer_id, first_name, last_name, country
FROM customer ORDER BY customer_id DESC LIMIT 5;

-- Canciones de más de 5 minutos
SELECT * FROM track;
SELECT
    track_id,
    name,
    (milliseconds / 60000.0) AS duracion
FROM
    track
WHERE
    milliseconds > 300000.0;

-- Cantidad de clientes por país
SELECT * FROM customer;
SELECT country, COUNT(customer_id) AS cantidad_clientes
FROM customer GROUP BY country ORDER BY cantidad_clientes DESC;

-- Empleados con título específico
SELECT employee_id, first_name, last_name, title, hire_date
FROM employee WHERE title = 'Sales Support Agent';

-- Top 10 canciones más largas
SELECT track_id, name, (milliseconds/60000.0) as duracion_minutos
FROM track ORDER BY duracion_minutos DESC LIMIT 10;

-- Clientes cuyo apellido empiece con “S”
SELECT customer_id, first_name, last_name, country
FROM customer WHERE last_name LIKE 'S%';