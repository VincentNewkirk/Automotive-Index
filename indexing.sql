\timing
--1
--CREATE USER indexed_cars_user;

--2
DROP DATABASE IF EXISTS indexed_cars;

CREATE DATABASE indexed_cars OWNER indexed_cars_user;

\c indexed_cars;
--3
\i scripts/car_models.sql;

\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
--SQL is weak


SELECT DISTINCT make_title
FROM car_models
WHERE make_code = 'LAM';
--135.306ms

SELECT DISTINCT model_title
FROM car_models
WHERE model_code = 'GT-R'
AND make_code = 'NISSAN';
--252.217ms

SELECT make_code, model_code, model_title, year
FROM car_models
WHERE make_code = 'LAM';


SELECT *
FROM car_models
WHERE year BETWEEN 2010 AND 2015;
--78.960ms

SELECT *
FROM car_models
WHERE year = 2010;
--33.921ms

SELECT DISTINCT make_title
FROM car_models
WHERE make_code = 'LAM';
--24.455 ms

SELECT DISTINCT model_title
FROM car_models
WHERE model_code = 'GT-R'
AND make_code = 'NISSAN';
--0.367ms

SELECT make_code, model_code, model_title, year
FROM car_models
WHERE make_code = 'LAM';
--24.516ms

SELECT *
FROM car_models
WHERE year = 2010;
--14.457ms

DROP TABLE car_models;
\i scripts/car_models.sql;

\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;

\timing;