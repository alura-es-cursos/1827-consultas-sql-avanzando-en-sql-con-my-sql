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
-- Table structure for table `tabla_de_clientes`
--

DROP TABLE IF EXISTS `tabla_de_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tabla_de_clientes` (
  `DNI` varchar(11) NOT NULL,
  `NOMBRE` varchar(100) DEFAULT NULL,
  `DIRECCION_1` varchar(150) DEFAULT NULL,
  `DIRECCION_2` varchar(150) DEFAULT NULL,
  `BARRIO` varchar(50) DEFAULT NULL,
  `CIUDAD` varchar(50) DEFAULT NULL,
  `ESTADO` varchar(2) DEFAULT NULL,
  `CP` varchar(8) DEFAULT NULL,
  `FECHA_DE_NACIMIENTO` date DEFAULT NULL,
  `EDAD` smallint(6) DEFAULT NULL,
  `SEXO` varchar(1) DEFAULT NULL,
  `LIMITE_DE_CREDITO` float DEFAULT NULL,
  `VOLUMEN_DE_COMPRA` float DEFAULT NULL,
  `PRIMERA_COMPRA` bit(1) DEFAULT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabla_de_clientes`
--

LOCK TABLES `tabla_de_clientes` WRITE;
/*!40000 ALTER TABLE `tabla_de_clientes` DISABLE KEYS */;
INSERT INTO `tabla_de_clientes` VALUES 
('9283760794', 'Edson Calisaya', 'Sta Úrsula Xitla', '', 'Barrio del Niño Jesús', 'Ciudad de México', 'EM', '22002002', '1995-01-07', 25, 'M', 150000, 250000,_binary '\0'),
('7771579779', 'Marcelo Perez', 'F.C. de Cuernavaca 13', '', 'Carola', 'Ciudad de México', 'EM', '88202912', '1992-02-25', 29, 'M', 120000, 200000,_binary ''),
('5576228758', 'Joana Olivera', 'Pachuca 75', '', 'Condesa', 'Ciudad de México', 'EM', '88192029', '1995-02-14', 25, 'F', 70000, 160000,_binary '\0'),
('1471156710', 'Erica Carvajo', 'Heriberto Frías 1107', '', 'Del Valle', 'Ciudad de México', 'EM', '80012212', '1990-03-01', 30, 'F', 170000, 245000,_binary ''),
('8502682733', 'Luis Silva', 'Prol. 16 de Septiembre 1156', '', 'Contadero', 'Ciudad de México', 'EM', '82122020', '1995-04-07', 25, 'M', 110000, 190000,_binary ''),
('3623344710', 'Marcos Rosas', 'Av. Universidad', '', 'Del Valle', 'Ciudad de México', 'EM', '22002012', '1995-05-13', 26, 'M', 110000, 220000,_binary '\0'),
('50534475787', 'Abel Pintos', 'Carr. México-Toluca 1499', '', 'Cuajimalpa', 'Ciudad de México', 'EM', '22000212', '1995-06-11', 25, 'M', 170000, 260000,_binary ''),
('5840119709', 'Gabriel Roca', 'Eje Central Lázaro Cárdenas 911', '', 'Del Valle', 'Ciudad de México', 'EM', '80010221', '1985-06-16', 36, 'M', 140000, 210000,_binary '\0'),
('94387591700', 'Walter Soruco', 'Calz. de Tlalpan 2980', '', 'Ex Hacienda Coapa', 'Ciudad de México', 'EM', '22000201', '1989-07-20', 31, 'M', 60000, 120000,_binary ''),
('8719655770', 'Carlos Santivañez', 'Calz. del Hueso 363', '', 'Floresta Coyoacán', 'Ciudad de México', 'EM', '81192002', '1983-01-20', 37, 'M', 200000, 240000,_binary ''),
('5648641702', 'Paolo Mendez', 'Martires de Tacubaya 65', '', 'Héroes de Padierna', 'Ciudad de México', 'EM', '21002020', '1991-10-30', 29, 'M', 120000, 220000,_binary '\0'),
('492472718', 'Jorge Castro', 'Federal México-Toluca 5690', '', 'Locaxco', 'Ciudad de México', 'EM', '22012002', '1994-12-19', 26, 'M', 75000, 95000,_binary '\0'),
('9275760794', 'Alberto Rodriguez', 'Circunvalación Oblatos 690', '', 'Oblatos', 'Guadalajara', 'JC', '44700000', '1991-12-28', 26, 'M', 75000, 95000,_binary ''),
('94387575700', 'María Jimenez', 'Av. Libertadores 457', '', 'Barragán Hernández', 'Guadalajara', 'JC', '44469000', '1995-05-13', 26, 'F', 120000, 300000,_binary ''),
('95939180787', 'Ximena Gómez','Jaguares 822','','Alcalde Barranquitas','Guadalajara','JC','44270000','1992-01-05',16,'F',90000,18000,_binary '\0');
/*!40000 ALTER TABLE `tabla_de_clientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-16 15:44:54
