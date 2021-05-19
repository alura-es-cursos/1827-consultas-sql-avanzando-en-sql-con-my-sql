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
-- Table structure for table `tabla_de_vendedores`
--

DROP TABLE IF EXISTS `tabla_de_vendedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tabla_de_vendedores` (
  `MATRICULA` varchar(5) NOT NULL,
  `NOMBRE` varchar(100) DEFAULT NULL,
  `PORCENTAJE_COMISION` float DEFAULT NULL,
  `FECHA_ADMISION` date DEFAULT NULL,
  `VACACIONES` bit(1) DEFAULT NULL,
  `BARRIO` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MATRICULA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabla_de_vendedores`
--

LOCK TABLES `tabla_de_vendedores` WRITE;
/*!40000 ALTER TABLE `tabla_de_vendedores` DISABLE KEYS */;
INSERT INTO `tabla_de_vendedores` VALUES 
('00235','Miguel Pavón Silva',0.08,'2014-08-15',_binary '\0','Condesa'),
('00236','Claudia Morales',0.08,'2013-09-17',_binary '','Del Valle'),
('00237','Concepción Martinez',0.11,'2017-03-18',_binary '','Contadero'),
('00238','Patricia Sánchez',0.11,'2016-08-21',_binary '\0','Oblatos');
/*!40000 ALTER TABLE `tabla_de_vendedores` ENABLE KEYS */;
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
