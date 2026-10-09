-- PROYECTO SQL: ANALISIS DE VENTAS DE UNA VERDULERIA
-- Creacion de tablas
CREATE  TABLE clientes (
id_cliente SERIAL PRIMARY KEY,
nombre VARCHAR(100),
localidad VARCHAR(100)
);
CREATE TABLE productos (
id_producto SERIAL PRIMARY KEY,
nombre VARCHAR (100),
precio NUMERIC (10,2) , 
categoria VARCHAR (100)
);
CREATE TABLE ventas (
id_venta SERIAL PRIMARY KEY,
fecha DATE,
id_cliente INT,
id_producto INT,
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);
-- CARGA DE DATOS
INSERT INTO productos (nombre,precio,categoria)
VALUES ('Banana',1800,'Fruta'),
('Manzana',2200,'Fruta'),
('Naranja',1600,'Fruta'),
('Tomate',2500,'Verdura'),
('Zanahoria',1200,'Verdura'),
('Papa',1000,'Verdura');
- CONSULTAS DE ANALISIS DE PRODUCTOS
SELECT *
FROM productos;
SELECT nombre, precio
FROM productos;
SELECT precio
FROM productos
WHERE precio>1500;
SELECT nombre, precio
FROM productos
WHERE precio>1500;
SELECT  nombre,precio
FROM productos 
ORDER BY precio DESC;
SELECT COUNT(*)
FROM productos;
SELECT AVG(precio)
FROM productos;
SELECT MAX(precio)
FROM productos;
SELECT MIN(precio)
FROM productos;
SELECT COUNT(*),categoria
FROM productos
GROUP BY categoria;
SELECT SUM(precio), categoria
FROM productos
GROUP BY categoria;
SELECT AVG(precio),categoria
FROM productos
GROUP BY categoria;
SELECT MAX(precio), categoria
FROM productos
GROUP BY categoria;
SELECT categoria, COUNT(*)
FROM productos
GROUP BY categoria
HAVING COUNT(*) > 2;
SELECT COUNT(*), categoria
FROM productos
WHERE precio>1500
GROUP BY categoria;
INSERT INTO clientes (nombre,localidad)
VALUES ('Valentin', 'La Plata'),
('Mario Oscar Jaime', 'San Pedro'),
('Agustina Pilar Jaime','Bahia Blanca'),
('Maria Graciela Rau', 'Bahia Blanca');
-- CONSULTAS DE CLIENTES
SELECT COUNT(*)
FROM clientes;
SELECT *
FROM clientes;
-- CARGA DE VENTAS
INSERT INTO ventas (fecha,id_cliente,id_producto)
VALUES ('2026-10-09', 1,1),
('2026-10-09',2,2),
('2026-10-09',3,3),
('2026-10-09',4,4);
-- ANALISIS DE VENTAS
SELECT ventas.fecha, clientes.nombre,productos.nombre
FROM ventas
JOIN clientes ON ventas.id_cliente = clientes.id_cliente
JOIN productos ON ventas.id_producto=productos.id_producto;
SELECT COUNT(*)
FROM ventas;
SELECT SUM(precio)
FROM productos
JOIN ventas ON productos.id_producto=ventas.id_producto;
SELECT COUNT(*), clientes.nombre
FROM clientes
JOIN ventas ON clientes.id_cliente=ventas.id_cliente
GROUP BY ventas.id_cliente, clientes.nombre
ORDER BY COUNT(*) DESC;
SELECT SUM(precio), categoria
FROM productos
JOIN ventas ON productos.id_producto=ventas.id_producto
GROUP BY categoria;