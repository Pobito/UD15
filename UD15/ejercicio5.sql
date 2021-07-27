CREATE DATABASE  IF NOT EXISTS `Investigadores` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `Investigadores`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 192.168.1.175    Database: Investigadores
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
-- Table structure for table `Equipos`
--

DROP TABLE IF EXISTS `Equipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Equipos` (
  `numSerie` char(4) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `facultad` int DEFAULT NULL,
  PRIMARY KEY (`numSerie`),
  KEY `facultad` (`facultad`),
  CONSTRAINT `Equipos_ibfk_1` FOREIGN KEY (`facultad`) REFERENCES `facultad` (`codigo`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Equipos`
--

LOCK TABLES `Equipos` WRITE;
/*!40000 ALTER TABLE `Equipos` DISABLE KEYS */;
INSERT INTO `Equipos` VALUES ('ASD','Maria',5),('DFS','Jose',7),('EBJ','Dolores',1),('FER','Martin',4),('GFS','Arnau',3),('GRE','Cristina',1),('HRT','Rosa',2),('IUT','Sonia',9),('JKF','Pedro',8);
/*!40000 ALTER TABLE `Equipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Investigadores`
--

DROP TABLE IF EXISTS `Investigadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Investigadores` (
  `dni` varchar(8) NOT NULL,
  `nomApels` varchar(25) DEFAULT NULL,
  `facultad` int DEFAULT NULL,
  PRIMARY KEY (`dni`),
  KEY `facultad` (`facultad`),
  CONSTRAINT `Investigadores_ibfk_1` FOREIGN KEY (`facultad`) REFERENCES `facultad` (`codigo`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Investigadores`
--

LOCK TABLES `Investigadores` WRITE;
/*!40000 ALTER TABLE `Investigadores` DISABLE KEYS */;
INSERT INTO `Investigadores` VALUES ('13467982','Rosa',2),('33992875','Arnau',3),('38659724','Sonia',9),('45791358','Pedro',8),('74563289','Maria',5),('79461352','Cristina',1),('82534679','Martin',4),('95231649','Dolores',1),('97382561','Jose',7);
/*!40000 ALTER TABLE `Investigadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reserva`
--

DROP TABLE IF EXISTS `Reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reserva` (
  `dni` varchar(8) NOT NULL,
  `numSerie` char(4) NOT NULL,
  `comienzo` datetime DEFAULT NULL,
  `fin` datetime DEFAULT NULL,
  PRIMARY KEY (`dni`,`numSerie`),
  KEY `numSerie` (`numSerie`),
  CONSTRAINT `Reserva_ibfk_1` FOREIGN KEY (`dni`) REFERENCES `Investigadores` (`dni`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Reserva_ibfk_2` FOREIGN KEY (`numSerie`) REFERENCES `Equipos` (`numSerie`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reserva`
--

LOCK TABLES `Reserva` WRITE;
/*!40000 ALTER TABLE `Reserva` DISABLE KEYS */;
INSERT INTO `Reserva` VALUES ('13467982','HRT','2021-01-01 00:00:00','2022-01-01 00:00:00'),('33992875','DFS','2021-01-01 00:00:00','2022-01-01 00:00:00'),('45791358','EBJ','2021-01-01 00:00:00','2022-01-01 00:00:00');
/*!40000 ALTER TABLE `Reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facultad`
--

DROP TABLE IF EXISTS `facultad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facultad` (
  `codigo` int NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facultad`
--

LOCK TABLES `facultad` WRITE;
/*!40000 ALTER TABLE `facultad` DISABLE KEYS */;
INSERT INTO `facultad` VALUES (1,'medicina'),(2,'informatica'),(3,'artes'),(4,'filologia hispanica'),(5,'quimica'),(6,'enologia'),(7,'economia'),(8,'ciencias juridicas'),(9,'fisica');
/*!40000 ALTER TABLE `facultad` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-27 12:42:52
