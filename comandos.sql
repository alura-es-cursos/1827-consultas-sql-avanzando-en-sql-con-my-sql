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

/* PROYECTO DEL AULA ANTERIOR 3 
Los comandos vistos en el aula anterior fueron los siguientes:*/

/* CONSULTAS DISTINCT */

SELECT ENVASE, TAMANO FROM tabla_de_productos;

SELECT DISTINCT ENVASE, TAMANO FROM tabla_de_productos;

SELECT DISTINCT ENVASE, TAMANO, SABOR FROM tabla_de_productos
WHERE SABOR = 'Naranja';

/* CONSULTAS LIMIT */

SELECT * FROM tabla_de_productos;

SELECT * FROM tabla_de_productos LIMIT 5;

SELECT * FROM tabla_de_productos LIMIT 5,4;

/* CONSULTAS ORDER BY */

SELECT * FROM tabla_de_productos;

SELECT * FROM tabla_de_productos ORDER BY PRECIO_DE_LISTA;

SELECT * FROM tabla_de_productos ORDER BY PRECIO_DE_LISTA DESC;

SELECT * FROM tabla_de_productos ORDER BY NOMBRE_DEL_PRODUCTO;

SELECT * FROM tabla_de_productos ORDER BY NOMBRE_DEL_PRODUCTO DESC;

SELECT * FROM tabla_de_productos ORDER BY ENVASE DESC, NOMBRE_DEL_PRODUCTO ASC;

/* CONSULTAS GROUP BY */

SELECT ESTADO, LIMITE_DE_CREDITO FROM tabla_de_clientes;

SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS LIMITE_TOTAL
FROM tabla_de_clientes GROUP BY ESTADO;

SELECT ENVASE, PRECIO_DE_LISTA FROM tabla_de_productos;

SELECT ENVASE, MAX(PRECIO_DE_LISTA) AS MAYOR_PRECIO 
FROM tabla_de_productos GROUP BY ENVASE;

SELECT ENVASE, COUNT(*) FROM tabla_de_productos 
GROUP BY ENVASE;

SELECT BARRIO, SUM(LIMITE_DE_CREDITO) AS LIMITE 
FROM tabla_de_clientes GROUP BY BARRIO;

SELECT CIUDAD, BARRIO, SUM(LIMITE_DE_CREDITO) AS LIMITE 
FROM tabla_de_clientes WHERE CIUDAD = 'CIUDAD DE MÉXICO'
GROUP BY BARRIO;

SELECT CIUDAD, BARRIO, SUM(LIMITE_DE_CREDITO) AS LIMITE 
FROM tabla_de_clientes WHERE CIUDAD = 'GUADALAJARA'
GROUP BY BARRIO;

SELECT ESTADO, BARRIO, MAX(LIMITE_DE_CREDITO) AS LIMITE 
FROM tabla_de_clientes GROUP BY ESTADO, BARRIO;

SELECT ESTADO, BARRIO, MAX(LIMITE_DE_CREDITO) AS LIMITE,
EDAD FROM tabla_de_clientes 
WHERE EDAD >=20
GROUP BY ESTADO, BARRIO
ORDER BY EDAD;

/* CONSULTAS HAVING */

SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS LIMITE_TOTAL
FROM tabla_de_clientes GROUP BY ESTADO;

SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS LIMITE_TOTAL
FROM tabla_de_clientes WHERE LIMITE_TOTAL > 300000
GROUP BY ESTADO;

SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS LIMITE_TOTAL
FROM tabla_de_clientes 
GROUP BY ESTADO
HAVING LIMITE_TOTAL > 300000;

SELECT ENVASE, MAX(PRECIO_DE_LISTA) AS PRECIO_MAXIMO,
MIN(PRECIO_DE_LISTA) AS PRECIO_MINIMO 
FROM tabla_de_productos GROUP BY ENVASE;

SELECT ENVASE, MAX(PRECIO_DE_LISTA) AS PRECIO_MAXIMO,
MIN(PRECIO_DE_LISTA) AS PRECIO_MINIMO 
FROM tabla_de_productos GROUP BY ENVASE
HAVING SUM(PRECIO_DE_LISTA) > 80;

SELECT ENVASE, MAX(PRECIO_DE_LISTA) AS PRECIO_MAXIMO,
MIN(PRECIO_DE_LISTA) AS PRECIO_MINIMO,
SUM(PRECIO_DE_LISTA) AS SUMA_PRECIO
FROM tabla_de_productos GROUP BY ENVASE
HAVING SUM(PRECIO_DE_LISTA) > 80;

SELECT ENVASE, MAX(PRECIO_DE_LISTA) AS PRECIO_MAXIMO,
MIN(PRECIO_DE_LISTA) AS PRECIO_MINIMO,
SUM(PRECIO_DE_LISTA) AS SUMA_PRECIO
FROM tabla_de_productos GROUP BY ENVASE
HAVING SUM(PRECIO_DE_LISTA) >= 80 
AND MAX(PRECIO_DE_LISTA) >= 5;

/* CONSULTAS CASE */

SELECT * FROM tabla_de_productos;

SELECT NOMBRE_DEL_PRODUCTO, PRECIO_DE_LISTA,
CASE
   WHEN PRECIO_DE_LISTA >= 12 THEN 'Costoso'
   WHEN PRECIO_DE_LISTA >= 5 AND PRECIO_DE_LISTA < 12 THEN 'Asequible'
   ELSE 'Barato'
END AS PRECIO
FROM tabla_de_productos;

SELECT ENVASE, SABOR,
CASE
   WHEN PRECIO_DE_LISTA >= 12 THEN 'Costoso'
   WHEN PRECIO_DE_LISTA >= 5 AND PRECIO_DE_LISTA < 12 THEN 'Asequible'
   ELSE 'Barato'
END AS PRECIO, MIN(PRECIO_DE_LISTA) AS PRECIO_MINIMO
FROM tabla_de_productos
WHERE TAMANO = '700 ml'
GROUP BY ENVASE,
CASE
   WHEN PRECIO_DE_LISTA >= 12 THEN 'Costoso'
   WHEN PRECIO_DE_LISTA >= 5 AND PRECIO_DE_LISTA < 12 THEN 'Asequible'
   ELSE 'Barato'
END
ORDER BY ENVASE;

/* PROYECTO DEL AULA ANTERIOR 4 
Los comandos vistos en el aula anterior fueron los siguientes:*/

/* CONSULTAS INNER JOIN */

SELECT * FROM tabla_de_vendedores;

SELECT * FROM facturas;

SELECT * FROM tabla_de_vendedores A
INNER JOIN
facturas B
ON A.MATRICULA = B.MATRICULA;

SELECT A.NOMBRE, B.MATRICULA, COUNT(*) FROM tabla_de_vendedores A
INNER JOIN
facturas B
ON A.MATRICULA = B.MATRICULA
GROUP BY A.NOMBRE, B.MATRICULA;

SELECT A.NOMBRE, B.MATRICULA, COUNT(*) 
FROM tabla_de_vendedores A, facturas B
WHERE A.MATRICULA = B.MATRICULA
GROUP BY A.NOMBRE, B.MATRICULA;

/* CONSULTAS LEFT Y RIGHT JOIN */

SELECT count(*) FROM tabla_de_clientes;

SELECT DISTINCT A.DNI, A.NOMBRE, B.DNI FROM tabla_de_clientes A
INNER JOIN
facturas B
ON A.DNI = B.DNI;

SELECT DISTINCT A.DNI, A.NOMBRE, A.CIUDAD, B.DNI FROM tabla_de_clientes A
LEFT JOIN
facturas B
ON A.DNI = B.DNI
WHERE B.DNI IS NULL;

SELECT DISTINCT B.DNI, B.NOMBRE, B.CIUDAD, A.DNI FROM facturas A
RIGHT JOIN
tabla_de_clientes B
ON A.DNI = B.DNI
WHERE A.DNI IS NULL;

/* CONSULTAS CROSS JOIN */

SELECT count(*) FROM tabla_de_clientes;

SELECT * FROM tabla_de_vendedores;

SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.BARRIO,
tabla_de_vendedores.NOMBRE
FROM tabla_de_clientes
INNER JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;

SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, tabla_de_clientes.BARRIO,
tabla_de_vendedores.NOMBRE
FROM tabla_de_clientes
LEFT JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;

SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, tabla_de_clientes.BARRIO,
tabla_de_vendedores.NOMBRE, tabla_de_vendedores.VACACIONES
FROM tabla_de_clientes
RIGHT JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;

SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, tabla_de_clientes.BARRIO,
tabla_de_vendedores.NOMBRE, VACACIONES
FROM tabla_de_clientes
RIGHT JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;

SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, tabla_de_clientes.BARRIO,
tabla_de_vendedores.NOMBRE, VACACIONES
FROM tabla_de_clientes
FULL JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;

SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, tabla_de_clientes.BARRIO,
tabla_de_vendedores.NOMBRE, VACACIONES
FROM tabla_de_clientes, tabla_de_vendedores;

/* CONSULTAS UNION Y FULL JOIN */

SELECT DISTINCT BARRIO FROM tabla_de_clientes;

SELECT DISTINCT BARRIO FROM tabla_de_vendedores;

SELECT DISTINCT BARRIO FROM tabla_de_clientes
UNION
SELECT DISTINCT BARRIO FROM tabla_de_vendedores;

SELECT DISTINCT BARRIO FROM tabla_de_clientes
UNION ALL
SELECT DISTINCT BARRIO FROM tabla_de_vendedores;

SELECT DISTINCT BARRIO, NOMBRE, 'Cliente' AS TIPO FROM tabla_de_clientes
UNION
SELECT DISTINCT BARRIO, NOMBRE, 'Vendedor' AS TIPO  FROM tabla_de_vendedores;

SELECT DISTINCT BARRIO, NOMBRE, 'Cliente' AS TIPO_CLIENTE FROM tabla_de_clientes
UNION
SELECT DISTINCT BARRIO, NOMBRE, 'Vendedor' AS TIPO_VENDEDOR  FROM tabla_de_vendedores;

SELECT DISTINCT BARRIO, NOMBRE, 'Cliente' AS TIPO_CLIENTE, DNI FROM tabla_de_clientes
UNION
SELECT DISTINCT BARRIO, NOMBRE, 'Vendedor' AS TIPO_VENDEDOR, MATRICULA  FROM tabla_de_vendedores;

SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, tabla_de_clientes.BARRIO,
tabla_de_vendedores.NOMBRE, VACACIONES
FROM tabla_de_clientes
LEFT JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO
UNION
SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, tabla_de_clientes.BARRIO,
tabla_de_vendedores.NOMBRE, VACACIONES
FROM tabla_de_clientes
RIGHT JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;

/* SUBCONSULTAS */

SELECT DISTINCT BARRIO FROM tabla_de_vendedores;

SELECT * FROM tabla_de_clientes
WHERE BARRIO IN ('Condesa','Del Valle','Contadero','Oblatos');

SELECT * FROM tabla_de_clientes
WHERE BARRIO IN (SELECT DISTINCT BARRIO FROM tabla_de_vendedores);

SELECT ENVASE, MAX(PRECIO_DE_LISTA) 
AS PRECIO_MAXIMO FROM tabla_de_productos GROUP BY ENVASE;

SELECT X.ENVASE, X.PRECIO_MAXIMO FROM
(SELECT ENVASE, MAX(PRECIO_DE_LISTA) 
AS PRECIO_MAXIMO FROM tabla_de_productos GROUP BY ENVASE) X
WHERE X.PRECIO_MAXIMO >=10;

/* VIEWS */

SELECT ENVASE, MAX(PRECIO_DE_LISTA) 
AS PRECIO_MAXIMO FROM tabla_de_productos GROUP BY ENVASE;

SELECT X.ENVASE, X. PRECIO_MAXIMO FROM
vw_envases_grandes X 
WHERE PRECIO_MAXIMO >=10;

SELECT A.NOMBRE_DEL_PRODUCTO, A.ENVASE, A.PRECIO_DE_LISTA, 
B.PRECIO_MAXIMO FROM tabla_de_productos A
INNER JOIN
vw_envases_grandes B
ON A.ENVASE = B.ENVASE;

SELECT A.NOMBRE_DEL_PRODUCTO, A.ENVASE, A.PRECIO_DE_LISTA, 
((A.PRECIO_DE_LISTA/B.PRECIO_MAXIMO)-1)*100 AS PORCENTAJE_DE_VARIACION FROM tabla_de_productos A
INNER JOIN
vw_envases_grandes B
ON A.ENVASE = B.ENVASE;
