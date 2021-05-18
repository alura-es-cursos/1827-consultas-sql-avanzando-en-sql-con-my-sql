/* En este archivo encontrarás todos los comandos ejecutados en SQL durante el desarrollo del curso de consultas SQL.

Te invitamos a descargar e instalar MySQL de acuerdo con el video 1.2-Preparando el ambiente. */


/* PROYECTO DEL AULA ANTERIOR 1 

A partir de ahora, estás listo para ejecutar los comandos que instruiremos durante el Aula 2. ¡Te deseamos éxitos en tus estudios!*/


/* PROYECTO DEL AULA ANTERIOR 2 

Los comandos vistos en el aula anterior fueron los siguientes:*/

/* REVISANDO CONSULTAS */

USE jugos_ventas;

SELECT DNI, NOMBRE, DIRECCION_1, DIRECCION_2, BARRIO, CIUDAD, ESTADO, 
CP, FECHA_DE_NACIMIENTO, EDAD, SEXO, LIMITE_DE_CREDITO, VOLUMEN_DE_COMPRA,
PRIMERA_COMPRA FROM tabla_de_clientes;

SELECT * FROM tabla_de_clientes;

SELECT DNI, NOMBRE FROM tabla_de_clientes;

SELECT DNI AS IDENTIFICACION, NOMBRE AS CLIENTE FROM tabla_de_clientes;

SELECT * FROM tabla_de_productos;

SELECT * FROM tabla_de_productos WHERE  SABOR = 'Uva';

SELECT * FROM tabla_de_productos WHERE  SABOR = 'Mango';

SELECT * FROM tabla_de_productos WHERE  ENVASE = 'Botella PET';

SELECT * FROM tabla_de_productos WHERE  ENVASE = 'botella pet';

SELECT * FROM tabla_de_productos WHERE PRECIO_DE_LISTA > 16;

SELECT * FROM tabla_de_productos WHERE PRECIO_DE_LISTA <= 17;

SELECT * FROM tabla_de_productos WHERE PRECIO_DE_LISTA BETWEEN 16 AND 16.02;

/* CONSULTAS CONDICIONALES */

SELECT * FROM tabla_de_productos;

SELECT * FROM tabla_de_productos WHERE SABOR='mango' AND TAMANO='470 ml';

SELECT * FROM tabla_de_productos WHERE SABOR='mango' OR TAMANO='470 ml';

SELECT * FROM tabla_de_productos WHERE NOT (SABOR='mango') OR TAMANO='470 ml';

SELECT * FROM tabla_de_productos WHERE NOT (SABOR='mango' AND TAMANO='470 ml');

SELECT * FROM tabla_de_productos WHERE SABOR='mango' AND NOT(TAMANO='470 ml');

SELECT * FROM tabla_de_productos WHERE SABOR IN ('MANGO', 'UVA');

SELECT * FROM tabla_de_productos WHERE SABOR = 'MANGO' OR  SABOR ='UVA';

SELECT * FROM tabla_de_clientes WHERE CIUDAD IN ('ciudad de México', 'Guadalajara');

SELECT * FROM tabla_de_clientes WHERE CIUDAD IN ('ciudad de México', 'Guadalajara')
AND EDAD > 21;

SELECT * FROM tabla_de_clientes WHERE CIUDAD IN ('ciudad de México', 'Guadalajara')
AND EDAD BETWEEN 20 AND 25;

SELECT * FROM tabla_de_clientes WHERE CIUDAD IN ('ciudad de México', 'Guadalajara')
AND (EDAD BETWEEN 20 AND 25);

/*CONSULTAS LIKE*/

SELECT * FROM tabla_de_productos WHERE SABOR LIKE '%manzana';

SELECT * FROM tabla_de_productos WHERE SABOR LIKE '%manzana'
AND ENVASE = 'Botella PET';
