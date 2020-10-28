-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: vijverwaardendb
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `actie`
--

DROP TABLE IF EXISTS `actie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actie` (
  `code` varchar(15) NOT NULL,
  `beschrijving` varchar(345) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actie`
--

LOCK TABLES `actie` WRITE;
/*!40000 ALTER TABLE `actie` DISABLE KEYS */;
INSERT INTO `actie` VALUES ('CHECK','Nazicht van  niveaus & apparaten'),('CODE','BESCHRIJVING'),('KW','Waterkwaliteit waarden bewaren'),('ON','Aanschakelen actuator'),('TEMP','Temperatuur waarde bewaren');
/*!40000 ALTER TABLE `actie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device`
--

DROP TABLE IF EXISTS `device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device` (
  `onderwerp` varchar(100) DEFAULT NULL,
  `meetapparaat` varchar(245) NOT NULL,
  `deviceid` varchar(45) NOT NULL,
  `meeteenheid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`deviceid`),
  CONSTRAINT `fk_device_meting` FOREIGN KEY (`deviceid`) REFERENCES `meting` (`deviceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device`
--

LOCK TABLES `device` WRITE;
/*!40000 ALTER TABLE `device` DISABLE KEYS */;
INSERT INTO `device` VALUES ('Waterkwaliteit-Chloor','Chloorgehalte analyser','CL2','ppm'),('Waterkwaliteit-Hardheid','Carbonaat hardheid meter','dKH','ppm'),('Waterfilter','Biotec Screenmatic filter','FiLTER',''),('Waterkwaliteit-Hardheid','Total hardheid meter','GH','ppm'),('Waterniveaumeter','Submersible Water Level Transmitter','LEVEL1','mm'),('Waterkwaliteit-Nitriet','Nitriet meter','NO2','mg/l'),('Waterkwaliteit-Nitraat','Nitraat meter','NO3','mg/l'),('Watertoevoer','AquaMax Eco Premium 12000 pomp','POMP',''),('Buitentemperatuurr','Digitale Temperatuur sensor','TEMPB','°C'),('Watertemperatuur','Professional Wireless Pool Thermometer','TEMPW','°C'),('Algen bestrijding','Bitron Gravity UV lamp','UV','');
/*!40000 ALTER TABLE `device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meting`
--

DROP TABLE IF EXISTS `meting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meting` (
  `volgnummer` int NOT NULL,
  `deviceid` varchar(45) DEFAULT NULL,
  `gemeten_waarde` float DEFAULT NULL,
  `datum` datetime(6) DEFAULT NULL,
  `code` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`volgnummer`),
  KEY `fk_meting_actie_idx` (`code`),
  KEY `fk_meting_device_idx` (`deviceid`),
  CONSTRAINT `fk_meting_actie` FOREIGN KEY (`code`) REFERENCES `actie` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meting`
--

LOCK TABLES `meting` WRITE;
/*!40000 ALTER TABLE `meting` DISABLE KEYS */;
INSERT INTO `meting` VALUES (4,'POMP',NULL,'2020-02-01 00:00:00.000000','ON'),(5,'TEMPB',10,'2020-02-01 00:00:00.000000','TEMP'),(6,'TEMPW',9,'2020-02-01 00:00:00.000000','TEMP'),(7,'FiLTER',NULL,'2020-02-01 00:00:00.000000','ON'),(8,'UV',NULL,'2020-02-01 00:00:00.000000','ON'),(9,'CL2',0.2,'2020-02-01 00:00:00.000000','KW'),(10,'dKH',6.3,'2020-02-01 00:00:00.000000','KW'),(11,'GH',200,'2020-02-01 00:00:00.000000','KW'),(12,'NO3',0,'2020-02-01 00:00:00.000000','KW'),(13,'NO2',2,'2020-02-01 00:00:00.000000','KW'),(14,'LEVEL1',200,'2020-02-01 00:00:00.000000','CHECK'),(15,'TEMPB',9.7,'2020-02-01 12:00:00.000000','TEMP'),(16,'TEMPW',9.5,'2020-02-01 12:00:00.000000','TEMP'),(17,'CL2',0.2,'2020-02-01 12:00:00.000000','KW'),(18,'dKH',6.3,'2020-02-01 12:00:00.000000','KW'),(19,'GH',16,'2020-02-01 12:00:00.000000','KW'),(20,'NO3',0,'2020-02-01 12:00:00.000000','KW'),(21,'NO2',2.5,'2020-02-01 12:00:00.000000','KW'),(22,'LEVEL1',199.7,'2020-02-01 12:00:00.000000','CHECK'),(23,'TEMPB',11.2,'2020-02-02 00:00:00.000000','TEMP'),(24,'TEMPW',9.8,'2020-02-02 00:00:00.000000','TEMP'),(25,'CL2',0.2,'2020-02-02 00:00:00.000000','KW'),(26,'dKH',6.3,'2020-02-02 00:00:00.000000','KW'),(27,'GH',16.5,'2020-02-02 00:00:00.000000','KW'),(28,'NO3',0,'2020-02-02 00:00:00.000000','KW'),(29,'NO2',3,'2020-02-02 00:00:00.000000','KW'),(30,'LEVEL1',199.8,'2020-02-02 00:00:00.000000','CHECK'),(31,'TEMPB',10,'2020-02-02 12:00:00.000000','TEMP'),(32,'TEMPW',9.9,'2020-02-02 12:00:00.000000','TEMP'),(33,'CL2',0.2,'2020-02-02 12:00:00.000000','KW'),(34,'dKH',6.3,'2020-02-02 12:00:00.000000','KW'),(35,'GH',16.6,'2020-02-02 12:00:00.000000','KW'),(36,'NO3',0.1,'2020-02-02 12:00:00.000000','KW'),(37,'NO2',3.5,'2020-02-02 12:00:00.000000','KW'),(38,'LEVEL1',200.9,'2020-02-02 12:00:00.000000','CHECK'),(39,'TEMPB',9,'2020-02-03 00:00:00.000000','TEMP'),(40,'TEMPW',10.3,'2020-02-03 00:00:00.000000','TEMP'),(41,'CL2',0.2,'2020-02-03 00:00:00.000000','KW'),(42,'dKH',6.3,'2020-02-03 00:00:00.000000','KW'),(43,'GH',16.6,'2020-02-03 00:00:00.000000','KW'),(44,'NO3',0.1,'2020-02-03 00:00:00.000000','KW'),(45,'NO2',4.5,'2020-02-03 00:00:00.000000','KW'),(46,'LEVEL1',200,'2020-02-03 00:00:00.000000','CHECK'),(47,'TEMPB',8,'2020-02-03 12:00:00.000000','TEMP'),(48,'TEMPW',10.5,'2020-02-03 12:00:00.000000','TEMP'),(49,'CL2',0.2,'2020-02-03 12:00:00.000000','KW'),(50,'dKH',6.3,'2020-02-03 12:00:00.000000','KW'),(51,'GH',17,'2020-02-03 12:00:00.000000','KW'),(52,'NO3',0.1,'2020-02-03 12:00:00.000000','KW'),(53,'NO2',5,'2020-02-03 12:00:00.000000','KW'),(54,'LEVEL1',199.8,'2020-02-03 12:00:00.000000','CHECK');
/*!40000 ALTER TABLE `meting` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-24 11:11:43
