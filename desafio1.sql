Crea una base de datos:
CREATE DATABASE desafio_valeria_cortes_008;

Ingresa a la base de datos creada:
\c desafio_valeria_cortes_008;


Crear la tabla:
CREATE TABLE customers(
id SERIAL PRIMARY KEY,
email varchar(50),
name varchar,
phone varchar(16),
company varchar(50),
priority SMALLINT NOT NULL CHECK (priority >= 1 AND priority <= 10));


Ingresa  5  clientes  distintos  con  distintas  prioridades,  el resto de los valores los 
puedes inventar: 
INSERT INTO customers(email, name, phone, company, priority)
VALUES
('valeria@gmail.com', 'Valeria', '954845512' , 'Google',4),
('oscar@gmail.com', 'Oscar', '966548789' , 'CirculoSpa', 5),
('juan@gmail.com', 'Juan', '952551689' , 'Apple', 6),
('sebastian@gmail.com', 'Sebastian', '931198546' , 'Tesla',7 ),
('yarenla@gmail.com', 'Yarenla', '983106025' , 'Netflix',8 );


Selecciona los tres clientes de mayor prioridad:
SELECT * FROM customers ORDER BY priority DESC, id ASC LIMIT 3;


Selecciona,  de  la  tabla  clientes,  una  prioridad  o  una  empresa,  de  forma  que  el 
resultado devuelva 2 registros:
SELECT * FROM customers WHERE priority =4 OR company='CirculoSpa';


Salir de la consola:
\q 