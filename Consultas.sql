use Sakila;

-- Mostrar todas las tablas disponibles en la base de datos Sakila.
show tables;

-- Recuperar todos los datos de las tablas actor, film y customer.
select * from actor;
select * from film;
select * from customer;

-- 3.1 Títulos de todas las películas de la tabla film
select title from film;

-- 3.2 Lista de idiomas usados en las películas, con la columna renombrada como language desde la tabla language
select distinct language.name as language from film inner join language on film.language_id=language.language_id;

-- 3.3 Lista de nombres de pila de todos los empleados de la tabla staff
select first_name from staff;

-- 4. Recuperar los años de estreno únicos
select distinct release_year from film;

-- 5.1. Determinar el número de tiendas que tiene la compañía
select count(distinct store_id) from store;

-- 5.2 Determinar el número de empleados que tiene la compañía.
select count(distinct staff_id) from staff;

-- 5.3 Determinar cuántas películas están disponibles para alquilar y cuántas han sido alquiladas.
select count(*) from rental where return_date is null;
select count(*) from rental where return_date is not null;

-- 5.4 Determinar el número de apellidos distintos de los actores en la base de datos.
select count(distinct LAST_NAME) from ACTOR;

-- 6.Recuperar las 10 películas más largas.
select TITLE, LENGTH FROM FILM ORDER BY LENGTH DESC LIMIT 10;

-- 7.1 Recuperar todos los actores con el nombre "SCARLETT".
select count(distinct FIRST_NAME) from ACTOR WHERE FIRST_NAME="SCARLETT";

-- 7.2 Recuperar todas las películas que tengan ARMAGEDDON en su título y tengan una duración mayor a 100 minutos.
select TITLE, LENGTH from FILM WHERE TITLE like "%ARMAGEDDON%" and LENGTH>100;

-- 7.3 Determinar el número de películas que incluyen contenido "Behind the Scenes"
select count(*) from FILM WHERE special_features like "%Behind the Scenes%";

