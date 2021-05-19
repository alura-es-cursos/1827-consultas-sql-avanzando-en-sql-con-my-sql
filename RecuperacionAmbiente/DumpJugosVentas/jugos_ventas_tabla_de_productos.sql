-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: jugos_ventas
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tabla_de_productos`
--

DROP TABLE IF EXISTS `tabla_de_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tabla_de_productos` (
  `CODIGO_DEL_PRODUCTO` varchar(10) NOT NULL,
  `NOMBRE_DEL_PRODUCTO` varchar(50) DEFAULT NULL,  
  `TAMANO` varchar(10) DEFAULT NULL,
  `SABOR` varchar(20) DEFAULT NULL,
  `ENVASE` varchar(20) DEFAULT NULL,
  `PRECIO_DE_LISTA` float NOT NULL,
  PRIMARY KEY (`CODIGO_DEL_PRODUCTO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabla_de_productos`
--

LOCK TABLES `tabla_de_productos` WRITE;
/*!40000 ALTER TABLE `tabla_de_productos` DISABLE KEYS */;
INSERT INTO `tabla_de_productos` VALUES 
('773912', 'Clean', '1 Litro', 'Naranja', 'Botella PET', 8.01),
('838819', 'Clean', '1,5 Litros', 'Naranja', 'Botella PET', 12.01),
('1037797', 'Clean', '2 Litros', 'Naranja', 'Botella PET', 16.01),
('812829', 'Clean', '350 ml', 'Naranja', 'Lata', 2.81),
('479745', 'Clean', '470 ml', 'Naranja', 'Botella de Vidrio', 3.77),
('695594', 'Festival de Sabores', '1,5 Litros', 'Asaí', 'Botella PET', 28.51),
('243083', 'Festival de Sabores', '1,5 Litros', 'Maracuyá', 'Botella PET', 10.51),
('1022450', 'Festival de Sabores', '2 Litros', 'Asái', 'Botella PET', 38.01),
('231776', 'Festival de Sabores', '700 ml', 'Asaí', 'Botella de Vidrio', 13.31),
('723457', 'Festival de Sabores', '700 ml', 'Maracuyá', 'Botella de Vidrio', 4.91),
('746596', 'Light', '1,5 Litros', 'Sandía', 'Botella PET', 19.51),
('1040107', 'Light', '350 ml', 'Sandía', 'Lata', 4.56),
('1002334', 'Línea Citrus', '1 Litro', 'Lima/Limón', 'Botella PET', 7),
('1088126', 'Línea Citrus', '1 Litro', 'Limón', 'Botella PET', 7),
('1041119', 'Línea Citrus', '700 ml', 'Lima/Limón', 'Botella de Vidrio', 4.9),
('1042712', 'Línea Citrus', '700 ml', 'Limón', 'Botella de Vidrio', 4.9),
('520380', 'Pedazos de Frutas', '1 Litro', 'Manzana', 'Botella PET', 12.01),
('788975', 'Pedazos de Frutas', '1,5 Litros', 'Manzana', 'Botella PET', 18.01),
('229900', 'Pedazos de Frutas', '350 ml', 'Manzana', 'Lata', 4.21),
('1101035', 'Refrescante', '1 Litro', 'Frutilla/Limón', 'Botella PET', 9.01),
('1086543', 'Refrescante', '1 Litro', 'Mango', 'Botella PET', 11.01),
('326779', 'Refrescante', '1,5 Litros', 'Mango', 'Botella PET', 16.51),
('826490', 'Refrescante', '700 ml', 'Frutilla/Limón', 'Botella de Vidrio', 6.31),
('1096818', 'Refrescante', '700 ml', 'Mango', 'Botella de Vidrio', 7.71),
('394479', 'Sabor da Montaña', '700 ml', 'Cereza', 'Botella de Vidrio', 8.41),
('783663', 'Sabor da Montaña', '700 ml', 'Frutilla', 'Botella de Vidrio', 7.71),
('1000889', 'Sabor da Montaña', '700 ml', 'Uva', 'Botella de Vidrio', 6.31),
('544931', 'Verano', '350 ml', 'Limón', 'Lata', 2.46),
('235653', 'Verano', '350 ml', 'Mango', 'Lata', 3.86),
('1051518', 'Verano', '470 ml', 'Limón', 'Botella de Vidrio', 3.3),
('1004327', 'Vida del Campo', '1,5 Litros', 'Sandía', 'Botella PET', 19.51),
('1013793', 'Vida del Campo', '2 Litros', 'Cereza/Manzana', 'Botella PET', 24.01),
('290478', 'Vida del Campo', '350 ml', 'Sandía', 'Lata', 4.56),
('1002767', 'Vida del Campo', '700 ml', 'Cereza/Manzana', 'Botella de Vidrio', 8.41),
('1078680', 'Verano', '470 ml', 'Mango', 'Botella de Vidrio', 5.18);
/*!40000 ALTER TABLE `tabla_de_productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-16 15:44:53
