-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: circusdb
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
-- Table structure for table `locatie`
--

DROP TABLE IF EXISTS `locatie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locatie` (
  `LocatieID` int NOT NULL AUTO_INCREMENT,
  `StadCode` char(6) NOT NULL,
  `Oppervlakte` decimal(10,0) NOT NULL,
  `PrijsPerM2` decimal(10,0) NOT NULL,
  `Datum` date NOT NULL,
  `Duurtijd` time NOT NULL,
  `ReservatieBevestigd` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`LocatieID`),
  KEY `fk_Locatie_Stad1_idx` (`StadCode`),
  CONSTRAINT `fk_Locatie_Stad1` FOREIGN KEY (`StadCode`) REFERENCES `stad` (`StadCode`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locatie`
--

LOCK TABLES `locatie` WRITE;
/*!40000 ALTER TABLE `locatie` DISABLE KEYS */;
INSERT INTO `locatie` VALUES (1,'BRU',100,200,'2020-05-15','48:00:00',_binary '');
/*!40000 ALTER TABLE `locatie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `optreden`
--

DROP TABLE IF EXISTS `optreden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `optreden` (
  `OptredenID` int NOT NULL AUTO_INCREMENT,
  `Naam` varchar(45) DEFAULT NULL,
  `Omschrijving` varchar(200) DEFAULT NULL,
  `Duur` time DEFAULT NULL,
  PRIMARY KEY (`OptredenID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `optreden`
--

LOCK TABLES `optreden` WRITE;
/*!40000 ALTER TABLE `optreden` DISABLE KEYS */;
INSERT INTO `optreden` VALUES (1,'De Grote Paardenshow','Een show vol met spetterende acts met paarden enzo.','02:00:00');
/*!40000 ALTER TABLE `optreden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stad`
--

DROP TABLE IF EXISTS `stad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stad` (
  `StadCode` char(6) NOT NULL,
  `Stad` varchar(30) DEFAULT NULL,
  `Contactpersoon` varchar(45) DEFAULT NULL,
  `E-mailadres` varchar(50) DEFAULT NULL,
  `Telefoonnummer` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`StadCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stad`
--

LOCK TABLES `stad` WRITE;
/*!40000 ALTER TABLE `stad` DISABLE KEYS */;
INSERT INTO `stad` VALUES ('BRU','Brugge','Franky Demon','cultuur@brugge.be','050 00 11 22');
/*!40000 ALTER TABLE `stad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `TicketID` int NOT NULL AUTO_INCREMENT,
  `VertoningID` int NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Scanned` bit(1) DEFAULT b'0',
  PRIMARY KEY (`TicketID`),
  KEY `fk_ticket_vertoning_idx` (`VertoningID`),
  CONSTRAINT `fk_ticket_vertoning` FOREIGN KEY (`VertoningID`) REFERENCES `vertoning` (`VertoningID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (3,1,'Standaard',_binary ''),(4,1,'VIP',_binary ''),(5,1,'Standaard',_binary '\0'),(6,1,'Standaard',_binary ''),(9,1,'Standaard',_binary '\0');
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vertoning`
--

DROP TABLE IF EXISTS `vertoning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vertoning` (
  `VertoningID` int NOT NULL AUTO_INCREMENT,
  `LocatieID` int NOT NULL,
  `OptredenID` int NOT NULL,
  PRIMARY KEY (`VertoningID`),
  UNIQUE KEY `LocatieID_UNIQUE` (`LocatieID`),
  UNIQUE KEY `OptredenID_UNIQUE` (`OptredenID`),
  KEY `fk_Locatie_has_Optreden_Optreden1_idx` (`OptredenID`),
  KEY `fk_Locatie_has_Optreden_Locatie_idx` (`LocatieID`),
  CONSTRAINT `fk_Locatie_has_Optreden_Locatie` FOREIGN KEY (`LocatieID`) REFERENCES `locatie` (`LocatieID`),
  CONSTRAINT `fk_Locatie_has_Optreden_Optreden1` FOREIGN KEY (`OptredenID`) REFERENCES `optreden` (`OptredenID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vertoning`
--

LOCK TABLES `vertoning` WRITE;
/*!40000 ALTER TABLE `vertoning` DISABLE KEYS */;
INSERT INTO `vertoning` VALUES (1,1,1);
/*!40000 ALTER TABLE `vertoning` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-15 15:17:07
