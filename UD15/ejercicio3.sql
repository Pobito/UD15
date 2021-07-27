CREATE DATABASE  IF NOT EXISTS `cientificos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cientificos`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 192.168.1.175    Database: cientificos
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
-- Table structure for table `Asignado_A`
--

DROP TABLE IF EXISTS `Asignado_A`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Asignado_A` (
  `cientifico` varchar(8) NOT NULL,
  `proyecto` char(4) NOT NULL,
  PRIMARY KEY (`cientifico`,`proyecto`),
  KEY `proyecto` (`proyecto`),
  CONSTRAINT `Asignado_A_ibfk_1` FOREIGN KEY (`cientifico`) REFERENCES `Cientificos` (`dni`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Asignado_A_ibfk_2` FOREIGN KEY (`proyecto`) REFERENCES `Proyecto` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Asignado_A`
--

LOCK TABLES `Asignado_A` WRITE;
/*!40000 ALTER TABLE `Asignado_A` DISABLE KEYS */;
INSERT INTO `Asignado_A` VALUES ('26798234','EMA'),('46798325','ENF'),('45728329','FKD'),('31648728','JDK'),('46958721','MRN');
/*!40000 ALTER TABLE `Asignado_A` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cientificos`
--

DROP TABLE IF EXISTS `Cientificos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cientificos` (
  `dni` varchar(8) NOT NULL,
  `nomApels` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cientificos`
--

LOCK TABLES `Cientificos` WRITE;
/*!40000 ALTER TABLE `Cientificos` DISABLE KEYS */;
INSERT INTO `Cientificos` VALUES ('13467982','Raquel'),('26798234','Miguel'),('31648728','David'),('35679482','Alba'),('45728329','Pedro'),('46798325','Maria'),('46958721','Ruben'),('59523467','Juan'),('92845734','Cristina'),('94573865','Judit');
/*!40000 ALTER TABLE `Cientificos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Proyecto`
--

DROP TABLE IF EXISTS `Proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Proyecto` (
  `id` char(4) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `horas` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Proyecto`
--

LOCK TABLES `Proyecto` WRITE;
/*!40000 ALTER TABLE `Proyecto` DISABLE KEYS */;
INSERT INTO `Proyecto` VALUES ('EMA','Proyecto 4',23),('ENF','Proyecto 7',80),('FKD','Proyecto 3',50),('JDK','Proyecto 1',55),('MRN','Proyecto 6',15),('PRK','Proyecto 2',25),('SME','Proyecto 5',60);
/*!40000 ALTER TABLE `Proyecto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-27 12:12:18
