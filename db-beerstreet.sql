-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: beerstreet
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbeers`
--

DROP TABLE IF EXISTS `tbeers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbeers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `producer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbeers`
--

LOCK TABLES `tbeers` WRITE;
/*!40000 ALTER TABLE `tbeers` DISABLE KEYS */;
INSERT INTO `tbeers` VALUES (1,'saris10','dobre pivo','velky saris'),(2,'saris12','lepsie pivo','velky saris'),(3,'pilsner urquell','najlepsie pivo','prazdroj'),(4,'Kozel10','fajne pivko','velke popovice'),(5,'Kozel tmave','cierne pivko','velke popovice'),(7,'Zlaty bazant73','fajnucke pivko','hurbanovo');
/*!40000 ALTER TABLE `tbeers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `torders`
--

DROP TABLE IF EXISTS `torders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `torders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `beerId` int NOT NULL,
  `tableId` int DEFAULT NULL,
  `personId` int DEFAULT NULL,
  `statusId` char(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `torders`
--

LOCK TABLES `torders` WRITE;
/*!40000 ALTER TABLE `torders` DISABLE KEYS */;
INSERT INTO `torders` VALUES (1,1,2,4,'ordered'),(2,2,2,5,'ordered');
/*!40000 ALTER TABLE `torders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twall`
--

DROP TABLE IF EXISTS `twall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `twall` (
  `id` int NOT NULL AUTO_INCREMENT,
  `beerId` int NOT NULL,
  `beerPrice` float NOT NULL,
  `timeStamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twall`
--

LOCK TABLES `twall` WRITE;
/*!40000 ALTER TABLE `twall` DISABLE KEYS */;
INSERT INTO `twall` VALUES (1,1,0.7,NULL),(2,1,0.7,'2020-11-18 09:21:25'),(3,2,0.65,'2020-11-18 09:28:42'),(4,1,1.25,'2020-11-18 09:28:53'),(5,2,0.9,'2020-11-18 09:29:08'),(6,3,1.4,'2020-11-18 09:29:22'),(7,3,1.2,'2020-11-18 09:29:26'),(8,2,1.15,'2020-11-18 09:29:36');
/*!40000 ALTER TABLE `twall` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-25 15:44:27
