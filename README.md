# Análisis de ventas de una verdulería con SQL

## Descripción

Proyecto de práctica desarrollado con PostgreSQL para analizar productos, clientes y ventas de una verdulería ficticia.

El objetivo es aplicar consultas SQL para obtener información y practicar herramientas básicas de análisis de datos.

## Herramientas

* PostgreSQL
* SQL

## Estructura de las tablas

* **clientes:** información de los clientes y sus localidades.
* **productos:** nombres, precios y categorías de los productos.
* **ventas:** fechas de venta y relaciones entre clientes y productos.

## Consultas realizadas

* Selección y filtrado de datos con `SELECT` y `WHERE`.
* Ordenamiento de resultados con `ORDER BY`.
* Funciones de agregación: `COUNT`, `SUM`, `AVG`, `MIN` y `MAX`.
* Agrupación de datos con `GROUP BY` y `HAVING`.
* Combinación de tablas mediante `JOIN`.

## Resultados de ejemplo

* 4 ventas registradas.
* Suma de los precios de los productos vendidos: 8.100.
* Suma de precios por categoría: Fruta, 5.600; Verdura, 2.500.

## Nota

Los datos son ficticios y se utilizaron con fines educativos. Cada registro de venta corresponde a un producto y no incluye cantidades, por lo que los resultados son ejemplos de práctica y no representan una facturación real completa.
