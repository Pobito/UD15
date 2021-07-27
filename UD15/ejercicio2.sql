CREATE DATABASE  IF NOT EXISTS `piezas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `piezas`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 192.168.1.175    Database: piezas
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Piezas`
--

DROP TABLE IF EXISTS `Piezas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Piezas` (
  `codigo` int NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Piezas`
--

LOCK TABLES `Piezas` WRITE;
/*!40000 ALTER TABLE `Piezas` DISABLE KEYS */;
INSERT INTO `Piezas` VALUES (1,'tornillo'),(2,'tuerca'),(3,'perno'),(4,'visagra'),(5,'junta'),(6,'zocalo'),(7,'arandela'),(8,'tablon'),(9,'tabla'),(10,'tablilla');
/*!40000 ALTER TABLE `Piezas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Proveedores`
--

DROP TABLE IF EXISTS `Proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Proveedores` (
  `id` char(4) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Proveedores`
--

LOCK TABLES `Proveedores` WRITE;
/*!40000 ALTER TABLE `Proveedores` DISABLE KEYS */;
INSERT INTO `Proveedores` VALUES ('ADF','VALEO'),('DJF','Brembo'),('DJS','ATE'),('EJE','SKF'),('FDD','NGK'),('GKD','STARK'),('IEW','Bosh'),('JFP','ELRING'),('PYT','SACJS'),('WKL','TRW');
/*!40000 ALTER TABLE `Proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sumbinistra`
--

DROP TABLE IF EXISTS `Sumbinistra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Sumbinistra` (
  `codigoPieza` int NOT NULL,
  `idProveedor` char(4) NOT NULL,
  `precio` int DEFAULT NULL,
  PRIMARY KEY (`codigoPieza`,`idProveedor`),
  KEY `idProveedor` (`idProveedor`),
  CONSTRAINT `Sumbinistra_ibfk_1` FOREIGN KEY (`codigoPieza`) REFERENCES `Piezas` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Sumbinistra_ibfk_2` FOREIGN KEY (`idProveedor`) REFERENCES `Proveedores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sumbinistra`
--

LOCK TABLES `Sumbinistra` WRITE;
/*!40000 ALTER TABLE `Sumbinistra` DISABLE KEYS */;
INSERT INTO `Sumbinistra` VALUES (1,'EJE',2),(2,'ADF',3),(2,'IEW',8),(5,'DJS',10),(5,'FDD',4),(6,'JFP',2),(6,'WKL',7),(7,'PYT',15),(9,'ADF',4),(10,'GKD',20);
/*!40000 ALTER TABLE `Sumbinistra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'piezas'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-27 10:54:04
