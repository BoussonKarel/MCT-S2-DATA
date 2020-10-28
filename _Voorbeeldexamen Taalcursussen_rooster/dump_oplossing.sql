-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: dbtaalcursussen
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
-- Temporary view structure for view `01_beschikbare_plaatsen`
--

DROP TABLE IF EXISTS `01_beschikbare_plaatsen`;
/*!50001 DROP VIEW IF EXISTS `01_beschikbare_plaatsen`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `01_beschikbare_plaatsen` AS SELECT 
 1 AS `CursusID`,
 1 AS `Taal`,
 1 AS `Cursusnaam`,
 1 AS `Beschikbare plaatsen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `02_cursussen_per_niveau`
--

DROP TABLE IF EXISTS `02_cursussen_per_niveau`;
/*!50001 DROP VIEW IF EXISTS `02_cursussen_per_niveau`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `02_cursussen_per_niveau` AS SELECT 
 1 AS `Niveau`,
 1 AS `Aantal ingeroosterd`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `03_niet_ingerichte_cursussen`
--

DROP TABLE IF EXISTS `03_niet_ingerichte_cursussen`;
/*!50001 DROP VIEW IF EXISTS `03_niet_ingerichte_cursussen`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `03_niet_ingerichte_cursussen` AS SELECT 
 1 AS `CursusID`,
 1 AS `Taal`,
 1 AS `Cursusnaam`,
 1 AS `Beschrijving`,
 1 AS `Duurtijd`,
 1 AS `Niveau`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `04_meerdere_ingericht`
--

DROP TABLE IF EXISTS `04_meerdere_ingericht`;
/*!50001 DROP VIEW IF EXISTS `04_meerdere_ingericht`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `04_meerdere_ingericht` AS SELECT 
 1 AS `CursusID`,
 1 AS `Cursusnaam`,
 1 AS `Aantal ingericht`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `05_ingerichte_cursussen_per_lokaal_taal`
--

DROP TABLE IF EXISTS `05_ingerichte_cursussen_per_lokaal_taal`;
/*!50001 DROP VIEW IF EXISTS `05_ingerichte_cursussen_per_lokaal_taal`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `05_ingerichte_cursussen_per_lokaal_taal` AS SELECT 
 1 AS `Klaslokaal`,
 1 AS `Taal`,
 1 AS `Aantal ingericht`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cursussen`
--

DROP TABLE IF EXISTS `cursussen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursussen` (
  `CursusID` int NOT NULL,
  `Taal` varchar(45) DEFAULT NULL,
  `Cursusnaam` text,
  `Beschrijving` text,
  `Duurtijd` time DEFAULT NULL,
  `Niveau` varchar(45) DEFAULT 'intermediair',
  PRIMARY KEY (`CursusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursussen`
--

LOCK TABLES `cursussen` WRITE;
/*!40000 ALTER TABLE `cursussen` DISABLE KEYS */;
INSERT INTO `cursussen` VALUES (1,'Portugees','Initiatie Portugees','Na 13 sessies kun je de eerste contacten leggen met je Portugeessprekende handelspartners of met de lokale bevolking. Opleiding van 13 sessies.','02:00:00','initiatie'),(2,'Arabisch','Initiatie zakelijk Arabisch','Eerste stap richting vlotter contact . Opleiding van 12 sessies','03:00:00','initiatie'),(3,'Italiaans','Initiatie zakelijk Italiaans','I primi passi in italiano - de eerste stappen in het Italiaans . Opleiding van 12 sessies.','02:30:00','initiatie'),(4,'Pools','Pools-vervolgtraining','De actieve Poolse talenkennis van de deelnemers wordt uitgediept door middel van dialogen en authentieke Poolse documenten.  Opleiding van 12 sessies.','03:00:00','intermediair'),(5,'Pools','Pools voor de bouwsector','Waarborg een vlotte communicatie en de veiligheid van je Poolse bouwvakkers','02:45:00','intermediair'),(6,'Portugees','Zakelijk (Braziliaans) Portugees - initiatie','Na 12 sessies kun je de eerste contacten leggen met je Portugeessprekende handelspartners of met de lokale bevolking.','02:45:00','initiatie'),(7,'Chinees','Zakelijk Chinees - initiatie','Na deze opleiding kan je de eerste contacten leggen met jouw Chinese handelspartners of met de lokale bevolking in het Chinees.','03:00:00','initiatie'),(8,'Japans','Zakelijk Japans - initiatie','Voor wie professioneel onderhandelt met Japanners of in Japan wil verblijven en de kennis van Japans is nihil of bijna onbestaande.','02:00:00','initiatie'),(9,'Pools','Zakelijk Pools - initiatie','Na 12 sessies kun je de eerste contacten leggen met je Poolssprekende handelspartners of met de lokale bevolking.','03:00:00','initiatie'),(10,'Roemeens','Zakelijk Roemeens - initiatie','Voor wie professioneel onderhandelt met Roemenen of in Roemenië wil verblijven en de kennis van het Roemeens nihil of bijna onbestaande is.','03:00:00','initiatie'),(11,'Russisch','Zakelijk Russisch - initiatie','zet je eerste stappen in het Russisch','02:00:00','initiatie'),(12,'Turks','Zakelijk Turks - initiatie','Na deze opleiding kan je de eerste contacten leggen met Turkse handelspartners of met de lokale bevolking in het Turks.','02:30:00','initiatie'),(13,'Zweeds','Zakelijk Zweeds - initiatie','Leer Zweeds in 12 lessen.','02:00:00','initiatie'),(14,'Spaans','Verkopen in het Spaans voor kleinhandel en horeca','Sta je klanten en bezoekers te woord in het Spaans','02:45:00','intermediair'),(15,'Spaans','Zakelijk communiceren in het Spaans - intermediair','Breid je kennis van het Spaans verder uit!','02:00:00','intermediair'),(16,'Duits','Duits in het transport','Een korte training om de communicatie met Duitstalige chauffeurs te bevorderen','02:30:00','intermediair'),(17,'Duits','Onthaal in het Duits','Een perfect onthaal in het Duits','03:00:00','intermediair'),(18,'Duits','Taalbad zakelijk Duits','Dompel je volledig onder in de Duitse taal!','02:45:00','intermediair'),(19,'Duits','Testavond Duits','Je twijfelt welk niveau Duits haalbaar is voor jou? Kom dan naar de gratis testavond Duits!','02:45:00','intermediair'),(20,'Duits','Zakelijk communiceren in het Duits - basis','Zet je eerste stappen in het Duits','03:00:00','basis'),(21,'Duits','Zakelijk communiceren in het Duits - gevorderd','Vervolmaak je kennis van professioneel Duits','02:00:00','gevorderd'),(22,'Duits','Zakelijk communiceren in het Duits - intermediair','optimaliseer je basiskennis van het Duits','03:00:00','intermediair'),(23,'Frans','Commercieel Frans','Krijg de specifieke commerciële terminologie onder de knie en handel vlot verkoopgesprekken af in het Frans','03:00:00','intermediair'),(24,'Frans','Conversatielessen zakelijk Frans','Een taal onderhoud je maar door ze veel te spreken!','02:00:00','intermediair'),(25,'Frans','Converseren in het Frans in de horeca','Een perfecte bediening voor je Franstalige klanten','02:30:00','intermediair'),(26,'Frans','Foutloos schrijven in het Frans','In deze cursus oefen je je schrijfvaardigheid tot je teksten foutloos en klantgericht zijn.','02:00:00','intermediair'),(27,'Frans','Frans in de apotheek','Help je Franstalige klanten op een professionele manier','03:00:00','intermediair'),(28,'Frans','Frans in de verkoop in de kleinhandelzaak','Sta als winkelbediende je klanten vlotter te woord in het Frans','02:30:00','intermediair'),(29,'Frans','Frans in de verzekeringssector','Help je klanten professioneel verder in het Frans','03:00:00','intermediair'),(30,'Frans','Frans in het transport','een opleiding Frans toegespitst op de logistieke sector!','02:45:00','intermediair'),(31,'Frans','Frans voor de boekhouder','Leer de specifieke terminologie in no time!','02:45:00','intermediair'),(32,'Frans','Frans voor de bouw- en vastgoedsector','Communiceren met Franstalige klanten en leveranciers in hun vakjargon!','03:00:00','intermediair'),(33,'Frans','Frans voor het notariaat','In het notariaat neemt het Frans als voertaal een belangrijke plaats in','02:00:00','intermediair'),(34,'Frans','Frans voor personeelszaken','Vlot communiceren tijdens Franstalige contractbesprekingen en interviews','03:00:00','intermediair'),(35,'Frans','Gratis testavonden Frans','Je twijfelt welk niveau haalbaar is voor jou? Kom dan naar één van onze gratis testavonden Frans!','03:00:00','intermediair'),(36,'Frans','Initiatie zakelijk Frans','Zet je eerste stappen in het Frans','02:00:00','initiatie'),(37,'Frans','Juridisch Frans','Sta professioneel cliënten te woord!','02:30:00','intermediair'),(38,'Frans','Klantgericht telefoneren in het Frans','In deze training leer je professioneel en doeltreffend telefoneren in het Frans.','02:00:00','intermediair'),(39,'Frans','Presenteren in het Frans','Leer efficiënt presenteren in het Frans!','03:00:00','intermediair'),(40,'Frans','Taalbad zakelijk Frans','Dompel je met deze opleiding zes uur per dag, 1 week lang, onder in de Franse taal!','02:30:00','intermediair'),(41,'Frans','Vergaderingen en verslagen in het Frans - workshop','Nooit meer met je mond vol tanden tijdens een Franstalige vergadering','03:00:00','intermediair'),(42,'Frans','Zakelijk communiceren in het Frans - basis','Activeer je passieve kennis van het Frans','02:45:00','basis'),(43,'Frans','Zakelijk communiceren in het Frans - gevorderd','Perfectioneer je Frans','02:45:00','gevorderd'),(44,'Frans','Zakelijk communiceren in het Frans - intermediair','Verdiep je basiskennis van het Frans','03:00:00','intermediair'),(45,'Engels','Foutloos schrijven in het Engels','Leer foutloos schriftelijk corresponderen met Engelstaligen','02:00:00','intermediair'),(46,'Engels','Gratis testavond Engels','Je twijfelt welk niveau Engels haalbaar is voor jou? Kom dan naar onze gratis testavond!','03:00:00','intermediair'),(47,'Engels','Presenteren in het Engels','Leer een goede presentatie te geven in het Engels!','03:00:00','intermediair'),(48,'Engels','Taalbad zakelijk Engels','Dompel je met deze opleiding zes uur per dag, 1 week lang, onder in de Engelse taal!','02:00:00','intermediair'),(49,'Engels','Zakelijk communiceren in het Engels - basis','Beschik over de minimale vaardigheden om contacten te leggen met Engelstaligen.','02:30:00','basis'),(50,'Engels','Zakelijk communiceren in het Engels - gevorderd','Perfectioneer je Engels','02:00:00','gevorderd'),(51,'Engels','Zakelijk communiceren in het Engels - intermediair','Daag jezelf uit om je basiskennis Engels naar een hoger niveau te tillen!','03:00:00','intermediair'),(52,'Spaans','Conversatielessen zakelijk Spaans','Een taal onderhoud je maar door ze veel te spreken.','02:30:00','intermediair'),(53,'Spaans','Gratis testavond Spaans','Je twijfelt welk niveau haalbaar is voor jou? Kom dan naar één van onze gratis testavonden Spaans!','03:00:00','intermediair'),(54,'Spaans','Zakelijk communiceren in het Spaans - basis','Aan de slag met je eerste zinnen in het Spaans!','02:45:00','basis'),(55,'Spaans','Zakelijk communiceren in het Spaans - gevorderd','Vlot communiceren in het Spaans','03:00:00','gevorderd'),(56,'Duits','Commercieel Duits','Leer de commerciële terminologie om verkoopsgesprekken vlot af te handelen in het Duits.','03:00:00','intermediair');
/*!40000 ALTER TABLE `cursussen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docenten`
--

DROP TABLE IF EXISTS `docenten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docenten` (
  `DocentID` int NOT NULL,
  `Naam` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`DocentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docenten`
--

LOCK TABLES `docenten` WRITE;
/*!40000 ALTER TABLE `docenten` DISABLE KEYS */;
INSERT INTO `docenten` VALUES (1,'Rakesh Mcduff'),(2,'Tricia Salguero'),(3,'Mihai Ziegler'),(4,'Tyetha Schwier'),(5,'Bill Kiilerich'),(6,'Ida Kilpatrick'),(7,'Oren Goodwin'),(8,'Elizabeth Brinson'),(9,'Kevin Arreguin'),(10,'Emced Shaffer');
/*!40000 ALTER TABLE `docenten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docenten_has_cursussen`
--

DROP TABLE IF EXISTS `docenten_has_cursussen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docenten_has_cursussen` (
  `docenten_DocentID` int NOT NULL,
  `cursussen_CursusID` int NOT NULL,
  PRIMARY KEY (`cursussen_CursusID`,`docenten_DocentID`),
  KEY `fk_docenten_has_cursussen_cursussen1_idx` (`cursussen_CursusID`),
  KEY `fk_docenten_has_cursussen_docenten_idx` (`docenten_DocentID`),
  CONSTRAINT `fk_docenten_has_cursussen_cursussen1` FOREIGN KEY (`cursussen_CursusID`) REFERENCES `cursussen` (`CursusID`),
  CONSTRAINT `fk_docenten_has_cursussen_docenten` FOREIGN KEY (`docenten_DocentID`) REFERENCES `docenten` (`DocentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docenten_has_cursussen`
--

LOCK TABLES `docenten_has_cursussen` WRITE;
/*!40000 ALTER TABLE `docenten_has_cursussen` DISABLE KEYS */;
/*!40000 ALTER TABLE `docenten_has_cursussen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `excel_simulatie`
--

DROP TABLE IF EXISTS `excel_simulatie`;
/*!50001 DROP VIEW IF EXISTS `excel_simulatie`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `excel_simulatie` AS SELECT 
 1 AS `lesrooster_id`,
 1 AS `Taal`,
 1 AS `Cursus Naam`,
 1 AS `Beschrijving`,
 1 AS `Aantal sessies`,
 1 AS `Dag`,
 1 AS `Semester`,
 1 AS `Klaslokaal`,
 1 AS `Max_plaatsen`,
 1 AS `Tijdstip`,
 1 AS `Duurtijd`,
 1 AS `Verantwoordelijke`,
 1 AS `Schooljaar`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `lesroosters`
--

DROP TABLE IF EXISTS `lesroosters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesroosters` (
  `LesroosterID` int NOT NULL,
  `CursusID` int NOT NULL,
  `Dag` varchar(15) DEFAULT NULL,
  `Semester` int NOT NULL,
  `Klaslokaal` char(2) DEFAULT NULL,
  `Aantal_sessies` int DEFAULT NULL,
  `Tijdstip` time NOT NULL,
  `VerantwoordelijkeID` int DEFAULT NULL,
  `Schooljaar` varchar(10) NOT NULL,
  PRIMARY KEY (`LesroosterID`),
  KEY `fk_lesroosters_lokalen1_idx` (`Klaslokaal`),
  KEY `fk_lesroosters_cursussen1_idx` (`CursusID`),
  KEY `fk_lesroosters_docenten1_idx` (`VerantwoordelijkeID`),
  CONSTRAINT `fk_lesroosters_cursussen1` FOREIGN KEY (`CursusID`) REFERENCES `cursussen` (`CursusID`),
  CONSTRAINT `fk_lesroosters_docenten1` FOREIGN KEY (`VerantwoordelijkeID`) REFERENCES `docenten` (`DocentID`),
  CONSTRAINT `fk_lesroosters_lokalen1` FOREIGN KEY (`Klaslokaal`) REFERENCES `lokalen` (`LokaalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesroosters`
--

LOCK TABLES `lesroosters` WRITE;
/*!40000 ALTER TABLE `lesroosters` DISABLE KEYS */;
INSERT INTO `lesroosters` VALUES (1,1,'Maandag',1,'A1',13,'18:30:00',NULL,'2019-20'),(2,2,'Dinsdag',1,'A2',12,'19:00:00',1,'2019-20'),(3,3,'Woensdag',1,'A3',12,'17:30:00',2,'2019-20'),(4,3,'Woensdag',2,'A7',12,'17:30:00',2,'2019-20'),(5,4,'Donderdag',1,'A4',12,'18:00:00',3,'2019-20'),(6,4,'Donderdag',2,'A7',12,'18:30:00',3,'2019-20'),(7,5,'Vrijdag',1,'A5',6,'19:00:00',3,'2019-20'),(8,6,'Zaterdag',1,'A1',12,'10:30:00',NULL,'2019-20'),(9,7,'Maandag',2,'A2',12,'19:00:00',4,'2019-20'),(10,7,'Maandag',1,'A7',12,'18:45:00',4,'2019-20'),(11,8,'Dinsdag',2,'A3',12,'17:45:00',4,'2019-20'),(12,9,'Woensdag',2,'A4',12,'19:00:00',3,'2019-20'),(13,10,'Donderdag',2,'A5',12,'19:30:00',3,'2019-20'),(14,11,'Vrijdag',2,'A1',12,'18:00:00',5,'2019-20'),(15,12,'Zaterdag',1,'A2',12,'10:30:00',6,'2019-20'),(16,13,'Maandag',1,'A3',12,'18:00:00',7,'2019-20'),(17,14,'Vrijdag',2,'A6',4,'19:45:00',2,'2019-20'),(18,15,'Dinsdag',2,'A6',12,'19:00:00',NULL,'2019-20'),(19,16,'Woensdag',1,'D2',6,'19:15:00',8,'2019-20'),(20,16,'Woensdag',2,'D2',6,'19:15:00',NULL,'2019-20'),(21,17,'Donderdag',1,'D3',5,'19:30:00',8,'2019-20'),(22,18,'Vrijdag',1,'D4',10,'19:45:00',8,'2019-20'),(23,19,'Zaterdag',1,'D1',1,'10:00:00',8,'2019-20'),(24,20,'Maandag',1,'D2',12,'18:30:00',8,'2019-20'),(25,20,'Maandag',2,'D5',12,'19:00:00',8,'2019-20'),(26,21,'Dinsdag',1,'D3',12,'17:00:00',8,'2019-20'),(27,22,'Woensdag',2,'D4',12,'17:30:00',8,'2019-20'),(28,23,'Donderdag',1,'F3',6,'18:00:00',9,'2019-20'),(29,24,'Vrijdag',1,'F2',4,'19:00:00',9,'2019-20'),(30,25,'Zaterdag',1,'F1',4,'10:30:00',9,'2019-20'),(31,26,'Maandag',1,'F5',4,'18:45:00',9,'2019-20'),(32,27,'Dinsdag',1,'F3',6,'17:45:00',9,'2019-20'),(33,28,'Woensdag',1,'F2',5,'19:00:00',9,'2019-20'),(34,29,'Donderdag',2,'F7',5,'19:30:00',9,'2019-20'),(35,30,'Vrijdag',2,'F5',6,'18:00:00',9,'2019-20'),(36,31,'Zaterdag',2,'F4',6,'10:30:00',9,'2019-20'),(37,32,'Maandag',2,'F4',8,'18:00:00',9,'2019-20'),(38,33,'Dinsdag',2,'F2',6,'19:00:00',9,'2019-20'),(39,34,'Woensdag',1,'F1',12,'19:15:00',9,'2019-20'),(40,35,'Donderdag',1,'F5',1,'19:30:00',9,'2019-20'),(41,36,'Vrijdag',2,'F3',12,'19:45:00',NULL,'2019-20'),(42,36,'Vrijdag',1,'F7',12,'19:45:00',9,'2019-20'),(43,37,'Zaterdag',1,'F2',5,'14:00:00',9,'2019-20'),(44,37,'Zaterdag',2,'F2',5,'14:00:00',NULL,'2019-20'),(45,38,'Maandag',1,'F1',5,'18:30:00',9,'2019-20'),(46,38,'Maandag',2,'F1',5,'18:30:00',9,'2019-20'),(47,39,'Dinsdag',1,'F5',3,'19:00:00',9,'2019-20'),(48,39,'Dinsdag',2,'F7',3,'19:00:00',NULL,'2019-20'),(49,40,'Woensdag',1,'F6',10,'17:30:00',NULL,'2019-20'),(50,40,'Woensdag',2,'F7',10,'17:30:00',NULL,'2019-20'),(51,41,'Donderdag',1,'F6',12,'18:00:00',NULL,'2019-20'),(52,42,'Vrijdag',1,'F6',12,'19:00:00',NULL,'2019-20'),(53,43,'Zaterdag',1,'F6',12,'10:30:00',NULL,'2019-20'),(54,44,'Maandag',1,'E3',12,'18:45:00',NULL,'2019-20'),(55,44,'Maandag',2,'F7',12,'18:25:00',NULL,'2019-20'),(56,45,'Dinsdag',1,'E3',6,'17:45:00',10,'2019-20'),(57,45,'Dinsdag',2,'E3',6,'17:50:00',10,'2019-20'),(58,46,'Woensdag',2,'E2',1,'19:15:00',10,'2019-20'),(59,47,'Donderdag',2,'E2',2,'19:15:00',10,'2019-20'),(60,48,'Vrijdag',1,'E1',10,'18:00:00',10,'2019-20'),(61,48,'Vrijdag',2,'E4',10,'18:00:00',10,'2019-20'),(62,49,'Zaterdag',1,'E1',12,'10:30:00',10,'2019-20'),(63,50,'Maandag',1,'E1',12,'18:00:00',10,'2019-20'),(64,51,'Dinsdag',1,'E3',12,'19:00:00',10,'2019-20'),(65,51,'Dinsdag',2,'E4',12,'19:00:00',10,'2019-20'),(66,52,'Woensdag',1,'A6',4,'19:15:00',2,'2019-20'),(67,52,'Woensdag',2,'A6',4,'19:15:00',2,'2019-20'),(68,53,'Donderdag',2,'A6',1,'19:30:00',2,'2019-20'),(69,54,'Zaterdag',1,'A7',12,'14:00:00',2,'2019-20'),(70,54,'Zaterdag',2,'A7',12,'14:00:00',2,'2019-20'),(71,55,'Maandag',1,'A6',12,'19:00:00',2,'2019-20'),(72,56,'Dinsdag',2,'D1',6,'19:00:00',NULL,'2019-20'),(73,56,'Dinsdag',1,'D5',6,'19:00:00',NULL,'2019-20');
/*!40000 ALTER TABLE `lesroosters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lokalen`
--

DROP TABLE IF EXISTS `lokalen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lokalen` (
  `LokaalID` char(2) NOT NULL,
  `Campus` varchar(45) DEFAULT NULL,
  `Max_plaatsen` int DEFAULT NULL,
  PRIMARY KEY (`LokaalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lokalen`
--

LOCK TABLES `lokalen` WRITE;
/*!40000 ALTER TABLE `lokalen` DISABLE KEYS */;
INSERT INTO `lokalen` VALUES ('A1','Kortrijk West',21),('A2','Kortrijk West',24),('A3','Kortrijk West',24),('A4','Kortrijk West',27),('A5','Kortrijk West',23),('A6','Kortrijk West',21),('A7','Kortrijk West',16),('D1','Kortrijk Noord',21),('D2','Kortrijk Noord',21),('D3','Kortrijk Noord',25),('D4','Kortrijk Noord',22),('D5','Kortrijk Noord',12),('E1','Kortrijk Noord',21),('E2','Kortrijk Noord',21),('E3','Kortrijk Noord',21),('E4','Kortrijk Noord',16),('F1','Kortrijk West',26),('F2','Kortrijk West',27),('F3','Kortrijk West',27),('F4','Kortrijk West',26),('F5','Kortrijk West',25),('F6','Kortrijk West',21),('F7','Kortrijk West',14);
/*!40000 ALTER TABLE `lokalen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `01_beschikbare_plaatsen`
--

/*!50001 DROP VIEW IF EXISTS `01_beschikbare_plaatsen`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `01_beschikbare_plaatsen` AS select `c`.`CursusID` AS `CursusID`,`c`.`Taal` AS `Taal`,`c`.`Cursusnaam` AS `Cursusnaam`,sum(`k`.`Max_plaatsen`) AS `Beschikbare plaatsen` from ((`lesroosters` `r` join `cursussen` `c` on((`r`.`CursusID` = `c`.`CursusID`))) join `lokalen` `k` on((`r`.`Klaslokaal` = `k`.`LokaalID`))) group by `c`.`CursusID`,`c`.`Cursusnaam` order by `Beschikbare plaatsen` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `02_cursussen_per_niveau`
--

/*!50001 DROP VIEW IF EXISTS `02_cursussen_per_niveau`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `02_cursussen_per_niveau` AS select `c`.`Niveau` AS `Niveau`,count(`c`.`Niveau`) AS `Aantal ingeroosterd` from (`lesroosters` `r` join `cursussen` `c` on((`r`.`CursusID` = `c`.`CursusID`))) group by `c`.`Niveau` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `03_niet_ingerichte_cursussen`
--

/*!50001 DROP VIEW IF EXISTS `03_niet_ingerichte_cursussen`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `03_niet_ingerichte_cursussen` AS select `cursussen`.`CursusID` AS `CursusID`,`cursussen`.`Taal` AS `Taal`,`cursussen`.`Cursusnaam` AS `Cursusnaam`,`cursussen`.`Beschrijving` AS `Beschrijving`,`cursussen`.`Duurtijd` AS `Duurtijd`,`cursussen`.`Niveau` AS `Niveau` from `cursussen` where `cursussen`.`CursusID` in (select distinct `lesroosters`.`CursusID` from `lesroosters`) is false */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `04_meerdere_ingericht`
--

/*!50001 DROP VIEW IF EXISTS `04_meerdere_ingericht`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `04_meerdere_ingericht` AS select `r`.`CursusID` AS `CursusID`,`c`.`Cursusnaam` AS `Cursusnaam`,count(`r`.`CursusID`) AS `Aantal ingericht` from (`lesroosters` `r` join `cursussen` `c` on((`r`.`CursusID` = `c`.`CursusID`))) group by `r`.`CursusID`,`c`.`Cursusnaam` having (`Aantal ingericht` > 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `05_ingerichte_cursussen_per_lokaal_taal`
--

/*!50001 DROP VIEW IF EXISTS `05_ingerichte_cursussen_per_lokaal_taal`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `05_ingerichte_cursussen_per_lokaal_taal` AS select `r`.`Klaslokaal` AS `Klaslokaal`,`c`.`Taal` AS `Taal`,count(`r`.`Klaslokaal`) AS `Aantal ingericht` from ((`lesroosters` `r` join `lokalen` `k` on((`r`.`Klaslokaal` = `k`.`LokaalID`))) join `cursussen` `c` on((`r`.`CursusID` = `c`.`CursusID`))) group by `r`.`Klaslokaal`,`c`.`Taal` order by `r`.`Klaslokaal`,`c`.`Taal` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `excel_simulatie`
--

/*!50001 DROP VIEW IF EXISTS `excel_simulatie`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `excel_simulatie` AS select `r`.`LesroosterID` AS `lesrooster_id`,`c`.`Taal` AS `Taal`,`c`.`Cursusnaam` AS `Cursus Naam`,`c`.`Beschrijving` AS `Beschrijving`,`r`.`Aantal_sessies` AS `Aantal sessies`,`r`.`Dag` AS `Dag`,`r`.`Semester` AS `Semester`,`r`.`Klaslokaal` AS `Klaslokaal`,`k`.`Max_plaatsen` AS `Max_plaatsen`,`r`.`Tijdstip` AS `Tijdstip`,`c`.`Duurtijd` AS `Duurtijd`,`d`.`Naam` AS `Verantwoordelijke`,`r`.`Schooljaar` AS `Schooljaar` from (((`lesroosters` `r` join `cursussen` `c` on((`r`.`CursusID` = `c`.`CursusID`))) left join `docenten` `d` on((`r`.`VerantwoordelijkeID` = `d`.`DocentID`))) join `lokalen` `k` on((`r`.`Klaslokaal` = `k`.`LokaalID`))) order by `r`.`LesroosterID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-08 13:58:22
