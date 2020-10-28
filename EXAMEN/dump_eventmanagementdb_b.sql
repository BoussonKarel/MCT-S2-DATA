-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: eventmanagementdb
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
-- Temporary view structure for view `1-betalingen`
--

DROP TABLE IF EXISTS `1-betalingen`;
/*!50001 DROP VIEW IF EXISTS `1-betalingen`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `1-betalingen` AS SELECT 
 1 AS `PaymentMethod`,
 1 AS `Paymentamount`,
 1 AS `RegistrationFee`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `2-methodes`
--

DROP TABLE IF EXISTS `2-methodes`;
/*!50001 DROP VIEW IF EXISTS `2-methodes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `2-methodes` AS SELECT 
 1 AS `Betaalmethode`,
 1 AS `Totaal bedrag`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `3-registraties`
--

DROP TABLE IF EXISTS `3-registraties`;
/*!50001 DROP VIEW IF EXISTS `3-registraties`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `3-registraties` AS SELECT 
 1 AS `REGISTRATIE JAAR`,
 1 AS `REGISTRATIE MAAND`,
 1 AS `TOTAAL AANTAL REGISTRATIES`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `4-events`
--

DROP TABLE IF EXISTS `4-events`;
/*!50001 DROP VIEW IF EXISTS `4-events`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `4-events` AS SELECT 
 1 AS `EventID`,
 1 AS `StartDate`,
 1 AS `EventName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `5-registraties`
--

DROP TABLE IF EXISTS `5-registraties`;
/*!50001 DROP VIEW IF EXISTS `5-registraties`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `5-registraties` AS SELECT 
 1 AS `EventID`,
 1 AS `Totaal aantal registraties`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `attendees`
--

DROP TABLE IF EXISTS `attendees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendees` (
  `AttendeeID` int NOT NULL AUTO_INCREMENT,
  `AttendeeFirstName` varchar(12) DEFAULT NULL,
  `AttendeeLastName` varchar(12) DEFAULT NULL,
  `Title` varchar(25) DEFAULT NULL,
  `CompanyName` varchar(75) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `City` varchar(25) DEFAULT NULL,
  `PostalCode` varchar(12) DEFAULT NULL,
  `Country` varchar(45) DEFAULT NULL,
  `PhoneNumber` varchar(25) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`AttendeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendees`
--

LOCK TABLES `attendees` WRITE;
/*!40000 ALTER TABLE `attendees` DISABLE KEYS */;
INSERT INTO `attendees` VALUES (1,'Robin','Counts','Sales Representative','Contoso, Ltd.','Berkeley Gardens\r\n12  Brewery','London','WX1 6LT','UK','701 555 0182','Robin.Counts@Conto.com'),(2,'Arthur','Yasinski','Owner','Tailspin Toys','87 Polk St.\r\nSuite 5','San Francisco','89117','USA','715 555 0138','Arthur.Yasinski@Tails.com'),(3,'Fadi','Fakhouri','Marketing Assistant','Litware, Inc.','43 rue St. Laurent','Montréal','H1J 1C3','CANADA','31 4555 0154','Fadi.Fakhouri@Litwa.com'),(4,'Carol','Philips','Sales Representative','Coho Winery','2345 Bering St.','Anchorage','98008','USA','20 7555 0184','Carol.Philips@Coho .com'),(5,'Oliver','Cox','Sales Manager','Wide World Importers','90 Wadhurst Rd.','London','OX15 4NB','UK','701 1555 0117','Oliver.Cox@Wide .com'),(6,'Khurram','Fromzer','Consultant','Self Employed','24 Phantom St.','London Borough Of Brent','ME 12 4RF','UK','351 4555 5648','Khurram.Fromzer@Self .com'),(11,'Joseph','Alabani','Developer','Pack-it Group','125 Delta Rd.','Cardiff','MD 12 G33','UK','222 555 3333','Joseph.Alabani@Pack-.com'),(12,'Sneha ','Joshi','Director ','Unique Study Circle','55 Kupero Way','Udaipur','54564','India','514 240 2400','Sneha .Joshi@Uniqu.com'),(13,'Nima ','Eskandar','Member Of The Board ','Zitech Innovation Group','985 FiveWay St.','Esher','FD 54 D56','UK','065 516 9713','Nima .Eskandar@Zitec.com'),(14,'Wheng','Rhodi','Java C++ Database Design ','Linux System Administration','88 Wals Rd.','Guangzhou','DH 55 5T5','CHINA','359 157 9546','Wheng.Rhodi@Linux.com'),(15,'Jayana','Bitervi','Sales Representative','Longware, Inc.','52 Parker Place','Montréal','ME 63 7FG','CANADA','157 953 7913 ','Jayana.Bitervi@Litwa.com'),(16,'Sarah ','McVittie','John Lewis Retail Manager','John Lewis Retail ','2  Market Square','Toronto','OI 55 F45','CANADA','759 153 9317','Sarah .McVittie@John .com'),(17,'Bally ','Sigurds','Managing Director','Baites IT Support','56 Beauty Boulevard','London Borough Of Camden','SL 54 LZE','UK','546 978 3121','Bally .Sigurds@Baite.com'),(18,'Cheree',' Badu','Developer','Ahken Holistic Therapy','6 Pigeon Rd.','Harrow','UT JR 566','UK','546 230 2020','Cheree. Badu@Ahken.com'),(19,'Denise','Crouse','Production Manager','Intelfarm','200 Harker Place, Suite 100','Annapolis','21401','UK','410-573-1800','Denise.Crouse@Intel.com'),(20,'Daniel','Knox','Sales Manager','Insectus','2700 Wilson Boulevard','Arlington ','22201','USA','703-527-6596','Daniel.Knox@Insec.com'),(21,'Linda','Schneider','Professor','Internet Ethernity','5269 River Road','Bethesda','20816','UK','301-984-4860','Linda.Schneider@Inter.com'),(22,'Hillary','Carr','Production Director','InterSports','27249 Chagrin Boulevard','Woodmere','44122','UK','216-464-9403','Hillary.Carr@Inter.com'),(23,'Dana','Glazer','Sales Assistant','ISOMatrix','4420 Willard Avenue','Chevy Chase','20815','USA','301.657.1520','Dana.Glazer@ISOMa.com'),(24,'Julianne','Julie','Director Sales','iTeam','475 Wilmington West Chester Pike','Glen Mills','19342','UK','610-358-1133','Julianne.Julie@iTeam.com'),(25,'Cathy','Eubanks','Production Planner','IT-Planet','2693 Edmondson Road','Cincinnati','45209','USA','513-531-8015','Cathy.Eubanks@IT-Pl.com'),(26,'Morag','Keefe','Purchaser','DiscoveryHelp','13998 Cedar Road','University Heights','44118','UK','216-371-5320','Morag.Keefe@Disco.com'),(27,'Kara','Dawson','Professor','JetSilk','1797 Hydraulic Road','Charlottesville','22901','USA','434-973-4900','Kara.Dawson@JetSi.com'),(28,'Chryssanthe','Poulidakis','Technical Assistant','Katakana','1558 Kings Highway North','Cherry Hill','08034','UK','856-651-5271','Chryssanthe.Poulidakis@Katak.com'),(29,'Kerry','Durkan','Programmer','Keengen','821 Lancaster Avenue','Wayne','19087','UK','610-688-9400','Kerry.Durkan@Keeng.com'),(30,'Jan','Bonner','.NET Programmer','KitchKlim','3670 W. Dublin-Granville Road','Columbus','43235','USA','614-760-5556','Jan.Bonner@Kitch.com'),(31,'Hannah','Pease','Consultant','Konnect','1555 W. Lane Avenue','Upper Arlington','43221','USA','614-481-3400','Hannah.Pease@Konne.com'),(32,'Bill','Donver','Technical Support Manager','LeapLean','4501 Market Commons Dr.','Farifax','22033','USA','703-222-2058','Bill.Donver@farifax.com'),(33,'Pamela','Passaretta','Service Engineer','Lexicondo','2323 Wisconsin Avenue NW','Washington','20007','USA','202-333-5393','Pamela.Passaretta@Lexic.com'),(34,'Gretchen','Verrilli','Support technician','LiquidSense','2201 Eye Street NW','Washington','20037','USA','202-296-1660','Gretchen.Verrilli@Liqui.com'),(35,'Megan','Dyar','Support Manager','MagnaPlan','1001 Fleet Street','Baltimore','21202','UK','410-528-1640','Megan.Dyar@Magna.com'),(36,'Deirdre','Weisman','Call center coordinator','Marvane','1575 The Fairway','Rydal','19046','UK','215-481-0800','Deirdre.Weisman@Marva.com'),(37,'Jacqueline','Tiller','Technical Assistant','MindPC','10275 Little Patuxent Parkway','Columbia','21044','USA','614-760-5556','Jacqueline.Tiller@MindP.com'),(38,'Charles','Woolverton','Technician ','MindMappers','316 Kentlands Blvd.','Gaithersburg','20878','UK','301-258-9500','Charles.Woolverton@MindM.com'),(39,'Janna','Segnitz','Service Director','Miraclis','161 Lexington Green Circle','Lexington','40503','USA','859-971-8600','Janna.Segnitz@Mirac.com'),(40,'Emily','McGee','Sales Representative','Molly Bloom','4944 Shelbyville Road','Louisville','40207','USA','502-899-5545','Emily.McGee@Molly.com'),(41,'Holly','Davis','C# developper','Bloomberg','940 Route 73 North','Marlton','8053','UK','856-797-1115','Holly.Davis@Bloom.com'),(42,'James','Hafner','C++ developper','CCTVConnections','1330 Smith Avenue','Baltimore','21209','USA','410-532-6700','James.Hafner@CCTVC.com'),(43,'Naomi','Hernandez','Webprogrammer','Moltranic','5805 Deerfield Blvd.','Mason','45040','UK','513-398-9358','Naomi.Hernandez@Moltr.com'),(44,'Robin','Stab','Customer Service','Navir','1210 Bethlehem Pike','North Wales','19454','UK','215-646-6300','Robin.Stab@Navir.com'),(45,'Jason','Moore',NULL,'Neocent','1700 Duke Street','Alexandria','22314','UK','703-706-0891','Jason.Moore@Neoce.com'),(46,'John','Genovese','Webdesigen','Nurplex','2001 Pennsylvania Ave.','Philadelphia','19130','USA','215-557-0015','John.Genovese@Nurplex.com.com'),(47,'Susan','Extein',NULL,'OptiCall','500 W. Germantown Pike ','Plymouth Mtg','19462','UK','610-832-0010  ','Susan.Extein@OptiC.com'),(48,'Beth','Pearson',NULL,'Orbalix','3495 US Route 1 South','Princeton','8540','USA','609-799-2919','Beth.Pearson@Orbal.com'),(49,'Fadia','Jawdat','Wenconsultant','Ovation','1440 P Street NW','Washington','20005','USA','202-332-4300','Fadia.Jawdat@Ovati.com'),(50,'Mike','Shanley','Customer Relation Manager','Pasturia','5880 Centre Avenue','Pittsburgh','15206','USA','412-441-7960','Mike.Shanley@Pastu.com'),(51,'Joe','Christian','Desiger','PatchSystems','11660 Plaza America Dr.','Reston','20190','UK','703-736-0600','Joe.Christian@Patch.com'),(52,'Candy','Singley','Sales Assistant','PerceiveIT','11355 Woodglen Drive','Rockville','20852','UK','301-984-4880','Candy.Singley@Perce.com'),(53,'Ethan','Jarvis','Webdeveloper','PharmaBelt','929 South Street','Philadelphia','19147','USA','215-733-9788','Ethan.Jarvis@Pharm.com'),(54,'Angela','Atkinson','Retail Service','PlanetIT','11173 West Broad St.','Glen Allen','23060','UK','804-364-4050','Angela.Atkinson@Plane.com'),(55,'Bridget','Harty',NULL,'Powerzilla','8402 Old Keene Mill Road','Springfield','22152','USA','703-644-2500','Bridget.Harty@Power.com'),(56,'Afrodita','Boardley','Service Assitant','QuoteWard','833 Wayne Avenue','Silver Spring','20910','UK','301-608-9373','Afrodita.Boardley@Quote.com'),(57,'Maria','Glenn',NULL,'Radiantease','4530 40th Street, NW','Washington','20016','USA','202-237-5800','Maria.Glenn@Radia.com'),(58,'Neche','Harris','Service Coördinator','Rare IT','7511 Leesburg Pike','Falls Church','22043','UK','703-448-1600','Neche.Harris@Rare .com'),(59,'Brenda','Dennison',NULL,'Satelite Ranch','1800 Laskin Road','Virginia Beach','23454','USA','757-422-0444','Brenda.Dennison@Satel.com'),(60,'Robert','Doane',NULL,'Savvy','143 Maple Avenue East','Vienna','22180','USA','703-319-2000','Robert.Doane@Savvy.com'),(61,'Ashley','Vranick','Operations Manager','SimplySolve','10576 Perry Highway','Wexford','15090','UK','724-940-6100','Ashley.Vranick@Simpl.com'),(62,'Jeffrey','Werner','Operations Director','Sinus Airways','339 East Lancaster Avenue','Wynnewood','19096','UK','610-896-3737','Jeffrey.Werner@Sinus.com'),(63,'Raven','Vanderven','Legal Department','Ac Libero Consulting','P.O. Box 670, 3151 Vel Ave','Nadiad','21608','San Marino','0870 521 2677','in.lobortis@Fuscemilorem.ca'),(64,'Drew','Verneman','Human Resources','At Industries','P.O. Box 978, 3764 Hendrerit Rd.','Jolanda di Savoia','71111','Georgia','(0171) 722 1368','congue@ultrices.co.uk'),(65,'Timon','Alleman','Public Relations','Vulputate Risus Institute','143-7681 Luctus Av.','Leticia','Z6878','Uruguay','(020) 7012 6069','erat.volutpat.Nulla@arcu.net'),(66,'Jessamine','Iedereen','Payroll','Sit Ltd','2314 Vestibulum Street','Skegness','227747','Holy See (Vatican City State)','(01537) 62537','sit.amet.faucibus@telluslorem.com'),(67,'Barclay','Desimpele','Payroll','Lorem Inc.','Ap #296-6290 Lorem Ave','Laren','G1 9XI','Senegal','0838 935 3680','nisl.Nulla@Curabitur.ca'),(68,'Rogan','DeVelde','Asset Management','Convallis In Cursus Corp.','3854 Semper Av.','Saint-Pierre','93879','Saint Pierre and Miquelon','(016977) 2862','non.feugiat.nec@posuereenim.net'),(69,'Maxwell','Vandekerke','Legal Department','Mauris Limited','P.O. Box 785, 5329 Convallis Rd.','San Benedetto del Tronto','8556','Kuwait','076 7502 8698','vestibulum@Etiamvestibulummassa.org'),(70,'Echo','Verlove','Media Relations','Ligula Elit Pretium Consulting','P.O. Box 834, 9761 Est. Av.','Anjou','97845','Samoa','0800 1111','et@congueelitsed.org'),(71,'Chaim','Zutterlink','Customer Relations','Auctor Industries','Ap #143-3607 Magna. St.','Bad Dürkheim','W2L 9AS','Hungary','0845 46 42','In@massa.edu'),(72,'India','Belleman','Payroll','Dis Parturient Associates','P.O. Box 307, 6838 In Street','Duncan','13158','Mongolia','0845 46 48','id.sapien@vitaeorci.edu'),(73,'Macey','Debakker','Public Relations','Imperdiet Non Vestibulum Corporation','190-2127 Egestas St.','Yeongju','0278','Sudan','0800 678216','et.lacinia.vitae@semmollisdui.ca'),(74,'Dane','Degilde','Advertising','Non Sollicitudin A PC','Ap #818-7529 Scelerisque Av.','Bearberry','54475-83533','Bahamas','0500 789079','massa@risusNulla.ca'),(75,'Harding','Wieleman','Quality Assurance','Euismod Associates','Ap #894-1553 Bibendum. Rd.','Spaniard\'s Bay','61865','Togo','(014991) 73693','convallis.ante@sempereratin.com'),(76,'Jameson','Tyson','Tech Support','Ac Mi Eleifend Inc.','325-9887 Velit St.','Fraser-Fort George','141473','Svalbard and Jan Mayen Islands','0800 483290','risus@elit.org'),(77,'Iliana','Chapman','Payroll','Neque Nullam PC','P.O. Box 434, 5485 Laoreet Av.','Nelson','F9 5AK','Antarctica','0369 932 4408','a@atauctorullamcorper.com'),(78,'Erasmus','Dotson','Media Relations','Cras Lorem Lorem Ltd','5938 Ligula. Road','Shrewsbury','710711','Mayotte','0884 540 1067','Ut.tincidunt.orci@Etiam.org'),(79,'Ulla','Donelli','Research and Development','Nibh Donec Associates','P.O. Box 748, 8561 Erat St.','Mores','179542','Russian Federation','(0119) 835 0889','sit.amet@auguemalesuada.edu'),(80,'Brendan','Hernadez','Human Resources','Tellus Phasellus Company','Ap #726-693 Porttitor Road','Portsmouth','540838','Croatia','(016977) 0330','nunc@ligulaAeneangravida.com'),(81,'Vivian','Chavez','Research and Development','Aliquam Auctor Velit Institute','Ap #474-5736 Vivamus Street','Andalo','2838','Central African Republic','(01793) 19632','sit@tincidunt.com'),(82,'Forrest','Cooke','Quality Assurance','Nunc Quisque Inc.','8058 Ac, Street','Buin','3897','Isle of Man','(0118) 616 4173','nibh@disparturientmontes.net'),(83,'Tanisha','Wooten','Tech Support','Convallis Dolor Institute','Ap #359-916 Magna Ave','Llangollen','7973','Côte D\'Ivoire (Ivory Coast)','0845 46 48','est.Nunc.ullamcorper@ullamcorpernisl.net'),(84,'Alfreda','Wyat','Advertising','Imperdiet Erat Corporation','Ap #434-8935 Amet, Avenue','Metz','70651-519','Suriname','07634 627267','Praesent.luctus.Curabitur@eget.org'),(85,'Raymond','Potts','Tech Support','Mollis LLP','536-9905 Porttitor St.','Coalhurst','21910','Chad','(016977) 7900','gravida.non@VivamusrhoncusDonec.net'),(86,'Zoe','Savage','Media Relations','Odio Nam Interdum Company','751 Feugiat Road','Naperville','68-492','Afghanistan','(016977) 5736','augue.id@nec.edu'),(87,'Zane','Powell','Human Resources','Tempor Est Associates','879-3042 Aenean Rd.','Flin Flon','46288','Canada','07624 314371','in.faucibus@Innec.edu'),(88,'Jamal','Blanchard','Payroll','Donec Est Nunc Corporation','Ap #924-8909 Enim, Rd.','La Magdeleine','55401','Malaysia','056 2289 8198','amet.ornare@ipsumPhasellusvitae.ca'),(89,'Whitney','Blake','Legal Department','At Velit Incorporated','694-2917 Velit Av.','Milestone','01049','Netherlands','070 6368 4425','non.enim@odiotristiquepharetra.ca'),(90,'Joseph','Dewitte','Legal Department','Laoreet Ipsum PC','Ap #823-4560 Orci Avenue','Cabildo','25496','Zimbabwe','(011448) 56041','ullamcorper@tellusidnunc.com'),(91,'Jesse','Black','Tech Support','Egestas Inc.','P.O. Box 976, 9404 Etiam Ave','Mogliano','606946','Moldova','(01145) 287579','et.malesuada@consectetueradipiscing.co.uk'),(92,'Leo','Rasmussen','Advertising','Sit Corp.','P.O. Box 525, 1512 Tempor St.','Corbara','3645','Viet Nam','(0115) 545 2515','felis@sagittisNullam.com'),(93,'Dennis','Hamilton','Research and Development','In At Pede PC','P.O. Box 731, 8919 Purus Ave','Incheon','Z1523','Turkey','(0171) 991 1586','sodales.purus@vehicularisusNulla.com'),(94,'Malachi','Cooke','Customer Service','Ultricies Ornare Foundation','P.O. Box 437, 9701 Posuere Road','Bremerhaven','75776','Cocos (Keeling) Islands','(028) 3950 1508','ligula.Donec@loremluctus.net'),(95,'Hunter','Fowler','Customer Relations','Class Aptent Foundation','7749 Tellus St.','Lochgilphead','580605','Luxembourg','055 0215 1319','vitae.dolor@laoreetliberoet.net'),(96,'Barrett','Bereman','Human Resources','Eu Enim Limited','9778 Tortor Rd.','Motherwell','190523','Montenegro','0319 075 9583','vel.nisl.Quisque@perconubia.net'),(97,'Lara','Beverlink','Advertising','Ante Foundation','557-931 Porttitor Road','Munich','11333','Iraq','056 0760 7489','sodales.Mauris@dictumeueleifend.co.uk'),(98,'Amos','Tuurlink','Asset Management','Pellentesque Foundation','Ap #190-2360 Imperdiet Ave','Meise','00-855','Guernsey','(0116) 785 7553','ridiculus@ettristiquepellentesque.ca'),(99,'Wendy','Dekarte','Sales and Marketing','Enim Consequat Ltd','301-2790 Tellus Street','Gimhae','68177','Qatar','0800 986 1819','neque.sed.dictum@Crasconvallis.co.uk'),(100,'Bertha','Dezwarte','Customer Relations','Morbi Metus Vivamus Institute','P.O. Box 624, 2603 Ante. Rd.','Kohat','94-112','Dominica','(022) 5032 0321','varius@pharetra.net'),(101,'Ciara','Verlinde','Quality Assurance','Vestibulum Ante Associates','709-307 Interdum St.','Portsoy','9763 MH','Ethiopia','(016977) 1685','dui.in.sodales@Vivamussitamet.net'),(102,'Kylie','Ankome','Public Relations','Facilisis LLP','4981 Eu, Avenue','Piana degli Albanesi','366873','Vanuatu','070 0379 7112','Fusce.mi@pede.net'),(103,'Dillon','Tuurliinck','Public Relations','Luctus Ut LLP','P.O. Box 608, 6106 Sapien St.','Abohar','1118 UL','Tajikistan','0800 485590','Proin.sed@etmagnisdis.net'),(104,'Richard','Zeurinck','Public Relations','Torquent Consulting','Ap #973-8816 Nonummy Avenue','Orta San Giulio','G3A 8W6','Dominica','(01164) 784005','magna@sit.ca'),(105,'Octavius','Haak','Quality Assurance','Etiam Imperdiet Corporation','Ap #612-5464 Gravida. Street','Moncton','9127','El Salvador','(016977) 1100','fermentum.risus.at@posuere.co.uk'),(106,'Shea','Krol','Tech Support','Morbi Sit Amet Limited','P.O. Box 171, 9039 Arcu. Rd.','Laurencekirk','606868','Holy See (Vatican City State)','07669 441201','Nunc.sollicitudin.commodo@egetipsumDonec.org'),(107,'Boris','Krul','Finances','Congue Elit PC','Ap #392-5929 Convallis Street','Romeral','952301','Mongolia','07146 957155','velit.Quisque.varius@egetipsumSuspendisse.ca'),(108,'Hadassah','DeMan','Asset Management','Eget Odio PC','Ap #626-8319 Aliquam Avenue','Ellesmere Port','K1S 0A3','Russian Federation','(0110) 487 2523','mauris.ut.mi@pretium.com'),(109,'Jamalia','Elker','Payroll','Augue Corporation','Ap #606-5719 Tellus Rd.','Scandriglia','65312','Maldives','0845 46 47','fringilla.mi.lacinia@Donec.com'),(110,'Noelani','Russo','Media Relations','In PC','P.O. Box 669, 3872 Nec Avenue','Cortil-Noirmont','6464','Sao Tome and Principe','056 6162 5137','eget@etmagnaPraesent.edu'),(111,'Colin','Clay','Advertising','Ultricies Associates','9447 Habitant Av.','Charlottetown','0975','Mauritania','0980 543 3993','sagittis@miDuis.com'),(112,'Cailin','Vinderlinck','Human Resources','Vestibulum Neque Sed Limited','Ap #422-4685 Pede Rd.','Paglieta','O93 1CY','Isle of Man','0800 035 0382','mi@maurisipsumporta.ca'),(113,'Yen','Utterman','Quality Assurance','Metus Eu LLP','Ap #169-2105 Sem Ave','Rixensart','755344','Papua New Guinea','(01978) 031990','diam.Proin.dolor@idblandit.ca'),(114,'Wesley','Blister','Legal Department','Sit Inc.','Ap #701-7621 Erat Av.','Słupsk','6349 NQ','Guadeloupe','0872 478 3542','id@velvulputateeu.edu'),(115,'Kieran','Sheren','Media Relations','Consectetuer Rhoncus Corp.','P.O. Box 918, 2756 Amet Av.','Alcorcón','55087','Svalbard and Jan Mayen Islands','(015792) 51320','molestie@cursusnon.net'),(116,'Cadman','Upper','Tech Support','Rutrum Fusce Dolor Corporation','Ap #413-8854 Massa Rd.','Hualaihué','927890','Cook Islands','076 0238 2966','penatibus@maurisblanditmattis.org'),(117,'Lana','Upperman','Human Resources','Vitae Risus Duis Consulting','616 Sed St.','Boorsem','9387 GR','Gibraltar','(0101) 071 3088','orci@nequeet.com'),(118,'Honorato','Bouver','Advertising','Egestas Incorporated','2028 Mauris Road','Bhir','25383','Ireland','0500 474218','eget@porttitorinterdum.net'),(119,'Medge','Debouver','Research and Development','Dolor Dolor Tempus PC','Ap #217-8598 Luctus Av.','Boorsem','519851','Uruguay','070 6075 5438','enim.Etiam@tellusimperdiet.ca'),(120,'Vielka','Verbeke','Customer Service','Quisque Imperdiet Foundation','Ap #505-554 Elit Road','Linkebeek','43-071','Nigeria','(01652) 055175','ut.sem@dolorsitamet.com'),(121,'Jacob','Wittebolle','Media Relations','At Foundation','3497 Dapibus Road','PiŽtrain','6804','United States','076 9953 1021','sapien.gravida.non@PhasellusornareFusce.co.uk'),(122,'Leslie','Nova','Payroll','Sed Facilisis Foundation','688-1443 Turpis Street','Gloucester','46889','Saint Vincent and The Grenadines','(0113) 427 8431','lacus.Nulla@miDuis.co.uk'),(123,'Britanni','Casa','Human Resources','Laoreet LLP','776-2561 Egestas St.','Kasterlee','58872-015','Liechtenstein','(0191) 779 2560','parturient.montes.nascetur@inaliquetlobortis.edu'),(124,'Cade','Fermino','Sales and Marketing','Suspendisse Commodo Corporation','7616 A Avenue','Snezhinsk','93306','Tonga','0800 627 8333','non.nisi@odio.com'),(125,'Lee','Giantelli','Public Relations','Turpis Vitae Industries','Ap #519-1296 Integer Road','Huntsville','74330','Palau','(01331) 043999','in.tempus@odio.com'),(126,'Damon','Corina','Tech Support','Sed LLP','Ap #628-2695 Nunc Road','Dubuisson','5486','Indonesia','055 6108 1209','nulla@Integeraliquamadipiscing.org'),(127,'Inez','Debevane','Advertising','Lectus Nullam Suscipit Consulting','P.O. Box 884, 7270 Etiam Avenue','Orvault','08066-92782','Malaysia','0500 316074','Cras@Suspendisseacmetus.net'),(128,'Jared','Langerman','Payroll','Malesuada Fringilla LLC','6267 Elit. Rd.','Nancy','2930','Lesotho','0966 851 1179','quam@vel.ca'),(129,'Karina','Komen','Advertising','Sit Amet Ultricies Corp.','Ap #478-178 Sollicitudin Rd.','New Orleans','70916','Samoa','(01599) 96025','elementum.at.egestas@luctus.co.uk'),(130,'Levi','Mann','Payroll','Luctus Ut Pellentesque LLP','Ap #945-7783 Quis Rd.','Palmerston','62109','Nauru','07624 155921','neque.et.nunc@arcuCurabiturut.com'),(131,'Emerald','Never','Advertising','At Velit Foundation','479-338 Mollis St.','San Antonio','715136','Jamaica','(016977) 7809','velit.Sed@Donec.org'),(132,'Rhoda','Xiamani','Quality Assurance','Mauris Eu LLP','Ap #570-1076 Arcu. Avenue','HŽron','23-608','Guernsey','0878 272 0849','ac.risus@nec.net');
/*!40000 ALTER TABLE `attendees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_types`
--

DROP TABLE IF EXISTS `event_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_types` (
  `EventTypeID` int NOT NULL AUTO_INCREMENT,
  `EventType` varchar(125) DEFAULT NULL,
  PRIMARY KEY (`EventTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_types`
--

LOCK TABLES `event_types` WRITE;
/*!40000 ALTER TABLE `event_types` DISABLE KEYS */;
INSERT INTO `event_types` VALUES (1,'Leadership Seminar'),(2,'Computer Training'),(3,'Communication Skills Practice'),(4,'\'Advance Sales\' Meeting'),(5,'Conference'),(6,'Festivity'),(7,'Board meeting'),(8,'Exhibition or Expo'),(9,'Problem Solved demo\'s');
/*!40000 ALTER TABLE `event_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `EventID` int NOT NULL AUTO_INCREMENT,
  `EventName` varchar(45) DEFAULT NULL,
  `EventTypeID` int DEFAULT NULL,
  `Location` varchar(175) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `StartTime` time DEFAULT NULL,
  `EndTime` time DEFAULT NULL,
  `AvailableSpaces` int NOT NULL,
  `EventDescription` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`EventID`),
  KEY `EventTypeID_index` (`EventTypeID`),
  KEY `AvailableSpaces_index` (`AvailableSpaces`),
  CONSTRAINT `fk_events_event_types1` FOREIGN KEY (`EventTypeID`) REFERENCES `event_types` (`EventTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'Public Speaking Skills',3,'Chateau St. Mark, Anaheim','2019-01-01','2019-01-03','09:00:00','18:00:00',100,'Essential public-speaking skills for business professionals.'),(2,'Negotiating Excellence',1,'Chateau St. Mark, Anaheim','2019-04-01','2019-04-02','09:00:00','18:00:00',50,'How to get to a win/win outcome in any negotiating situation.'),(3,'Sales, Sales, Sales',4,'Scotney Castle, Kent','2019-04-01','2019-04-05','09:00:00','18:00:00',100,'Cutting-edge strategies for increasing your sales productivity.'),(4,'Computer Basics for Business',2,'Chateau St. Mark, Anaheim','2019-04-12','2019-04-14','08:30:00','17:00:00',50,'Basic computer skills everyone should master.'),(5,'Retail Business Technology Expo ',8,'Olympia Exhibition Centre, London','2019-03-08','2019-03-10','09:00:00','18:00:00',1000,'This event showcases products and services providing a unique platform to meet and do business '),(6,'Ecommerce made simple',2,'Study Center, New York','2019-07-01','2019-07-04','09:00:00','18:00:00',35,'Make your own Ecommerce markeitng plan.'),(7,'La Tomatina',6,'Bunyol, Spain','2019-04-26','2019-04-28','11:00:00','16:00:00',30000,'Every year 30,000 people assemble in the streets of Bunyol, Spain to participate in the largest tomato fight in the world. 125,000 kg of tomatoes are brought into the city'),(8,'Oktoberfest',6,'Theresienwiese, Germany','2019-09-19','2019-09-21','08:30:00','24:00:00',6000000,'Oktoberfest, the celebration of beer, is the biggest festival in the world with over 6 million people attending annually. Reportedly over 6 million liters of beer are consumed within the beer gardens there'),(9,'San Fermin',6,'Pamlona, Sapin','2019-04-06','2019-04-07','08:00:00','22:30:00',20000,'Made famous by Ernest Hemingway’s ‘The Sun Also Rises,’ the festival of San Fermin is simply incredible. Most of you have heard of the running of the bulls, or ‘el encierro’ as it is called by the locals, which takes place each morning at 8am'),(10,'Actuarial Science Conference',5,'The University of Warwick, UK','2019-06-01','2019-06-03','09:00:00','16:00:00',35,'The application of maths and statistics to assess risk in financial situations.  '),(11,'Advanced Public Speaking',1,'College of Public Speaking','2019-04-07','2019-04-11','09:30:00','17:00:00',22,'Do you need more gravitas to persuade senior colleagues or to hone your sales pitch?'),(12,'Rotterdam Bluegrass Festival',6,'Rotterdam','2020-06-26','2020-06-28','09:00:00','18:00:00',12000,'Traditionele Bluegrassuit heel Europa'),(13,'ShrewsBury Foodfestival',6,'Shrewsbury UK','2020-06-27','2020-06-28','09:00:00','24:00:00',2000,'Een viering van eten in heel de stad tne NW van Birmingham'),(14,'Let\'s Rock Southampton',6,'Southampton UK','2020-06-04','2020-06-04','12:00:00','22:30:00',5000,'Onderdeel van een Rock festival over geheel de UK'),(15,'Let\'s Rock Leeds',6,'Southampton UK','2020-06-20','2020-06-20','12:00:00','22:30:00',5000,'Onderdeel van een Rock festival over geheel de UK'),(16,'Let\'s Rock Schotland',6,'Southampton UK','2020-06-13','2020-06-13','12:00:00','22:30:00',5000,'Onderdeel van een Rock festival over geheel de UK'),(17,'Ferie Messium - Middeleeuws festival',6,'San Gimignano Italy','2020-06-20','2020-06-21','09:00:00','22:00:00',10000,'De stad roept het middeleeuws verleden op in een Toscaanse stijl.'),(18,'Copenhagen Jazz festival',6,'Copenhagen Jazz DK','2020-06-03','2020-06-12','09:00:00','24:00:00',10000,'Deense en internationale Jazz acts verspred over de stad.'),(19,'Gentse Feesten ',6,'Gent BE','2020-06-17','2020-06-26','09:00:00','24:00:00',1200000,'4000 evenementen 360 locaties  - één van de grootste cultuurevenementen in Europa'),(20,'Love supreme festival',6,'Brighton','2020-04-05','2020-04-06','09:00:00','24:00:00',5000,'Jazz, funk en soul in een \"glamping\" sfeer.'),(21,'Pluralsight Asp Identity',2,'Gent','2020-03-15','2020-03-16','09:00:00','16:00:00',85,'ASP Identity als Identy Provider gebruiken voor API beveiliging.'),(22,'Business Process Management',4,'Antwerp','2020-04-12','2020-04-15','09:30:00','16:30:00',38,'Stroomlijn jou marketing proces om hogere verkoopscijfers te realiseren.'),(23,'Old timer roadshow',6,'Knokke','2020-04-20','2020-04-20','08:00:00','24:00:00',150,'Met jouw oldtimer van Knokke naar Sluis en terug.');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee_schedules`
--

DROP TABLE IF EXISTS `fee_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fee_schedules` (
  `FeeScheduleID` int NOT NULL AUTO_INCREMENT,
  `EventID` int NOT NULL,
  `Nmbr_of_persons` int DEFAULT '1',
  `FeeDescription` varchar(125) DEFAULT NULL,
  `Fee` int NOT NULL,
  PRIMARY KEY (`FeeScheduleID`),
  KEY `EventID_index` (`EventID`),
  KEY `Fee_index` (`Fee`),
  KEY `Nmbr_of_persons` (`Nmbr_of_persons`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee_schedules`
--

LOCK TABLES `fee_schedules` WRITE;
/*!40000 ALTER TABLE `fee_schedules` DISABLE KEYS */;
INSERT INTO `fee_schedules` VALUES (1,1,1,'One Person.Registation fee entitles attendance at the event subscription date',500),(2,1,2,'Two Persons. Registation fee entitles attendance at the event subscription date',490),(3,1,4,'Three  or More Persons.Registation fee entitles attendance at the event subscription date',485),(4,1,5,'One Person.Registration fee includes attendance on all event dates',480),(5,1,6,NULL,475),(6,1,8,NULL,450),(7,2,1,NULL,1095),(8,2,2,'Two Persons.Registration fee includes attendance on all event dates',1000),(9,2,3,'Three or Persons.Registration fee includes attendance on all event dates',980),(10,2,4,NULL,970),(11,2,6,NULL,950),(12,3,1,'One Person.Registation fee entitles attendance at the event subscription date',550),(13,3,4,'Two or More Persons.Registation fee entitles attendance at the event subscription date',500),(14,4,1,'Per Person.Registation fee entitles attendance at the event subscription date.',375),(15,4,1,'Per Person, including hotels, 2 days',85),(16,4,4,'Free entrance  but registration is necessary. 2 hotel nights',65),(17,4,5,'Incuding 4 days hotel',60),(18,4,6,'Incuding 4 days hotel',55),(19,4,7,'Incuding 4 days hotel',50),(20,4,8,'Incuding 4 days hotel',45),(21,5,1,'Including hotel',590),(22,5,2,'Including 2 days hotel and all garden entrances',1200),(23,5,3,'Including 2 days hotel and all garden entrances',1100),(24,5,7,'Including 2 days hotel and all garden entrances',1000),(25,6,1,'Including 2 days hotel and all garden entrances',1250),(26,6,2,'Course entrance only all days.',1200),(27,6,5,'Course fee only',1150),(28,6,8,NULL,1000),(29,7,1,'Regular day',350),(30,7,2,NULL,345),(31,7,3,NULL,340),(32,7,4,NULL,335),(33,7,6,NULL,330),(34,7,7,NULL,325),(35,8,2,NULL,500),(36,8,3,NULL,495),(37,8,5,NULL,490),(38,8,6,NULL,485),(39,8,7,NULL,480),(40,9,3,NULL,250),(41,9,4,NULL,245),(42,9,7,NULL,240),(43,9,8,NULL,235),(44,10,1,'Regular day',650),(45,10,2,NULL,630),(46,10,3,NULL,625),(47,10,4,NULL,600),(48,10,6,NULL,575),(49,10,7,NULL,550),(50,11,4,NULL,150),(51,11,5,NULL,145),(52,11,7,NULL,125),(53,11,8,NULL,120),(54,12,3,NULL,120),(55,12,5,NULL,100),(56,12,7,NULL,95),(57,13,1,'Limited Entry',995),(58,13,2,'supremium Ticket',475),(59,13,3,'Free drink',450),(60,13,5,NULL,425),(61,13,8,NULL,400),(62,14,4,NULL,250),(63,14,5,NULL,225),(64,14,6,NULL,200),(65,15,2,NULL,180),(66,15,3,NULL,175),(67,15,5,NULL,175),(68,15,7,NULL,160),(69,16,1,'General',150),(70,16,4,'Camping includied',125),(71,16,8,'Camping includied',100),(72,17,7,NULL,150),(73,17,8,NULL,140),(74,18,1,'Standard',140),(75,18,1,'Field Ticket',14),(76,18,2,NULL,475),(77,18,5,NULL,425),(78,19,1,'One selection',1095),(79,19,5,NULL,1000),(80,19,6,NULL,900),(81,20,5,NULL,250);
/*!40000 ALTER TABLE `fee_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_methods`
--

DROP TABLE IF EXISTS `payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_methods` (
  `PaymentMethodID` int NOT NULL,
  `PaymentMethod` varchar(12) DEFAULT NULL,
  `CreditCard` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`PaymentMethodID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_methods`
--

LOCK TABLES `payment_methods` WRITE;
/*!40000 ALTER TABLE `payment_methods` DISABLE KEYS */;
INSERT INTO `payment_methods` VALUES (1,'Cheque',0),(2,'Visa Card',1),(4,'Bank Card',1),(5,'Cash',0),(6,'EFT',0),(7,'Master Card',1);
/*!40000 ALTER TABLE `payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `PaymentID` int NOT NULL AUTO_INCREMENT,
  `RegistrationID` int DEFAULT NULL,
  `PaymentAmount` int NOT NULL,
  `PaymentDate` datetime DEFAULT NULL,
  `PaymentMethodID` int DEFAULT NULL,
  PRIMARY KEY (`PaymentID`),
  KEY `RegistrationID_index` (`RegistrationID`),
  KEY `PaymentAmount_index` (`PaymentAmount`),
  KEY `PaymentMethodID_index` (`PaymentMethodID`),
  CONSTRAINT `fk_payments_payment_methods1` FOREIGN KEY (`PaymentMethodID`) REFERENCES `payment_methods` (`PaymentMethodID`),
  CONSTRAINT `fk_payments_registration` FOREIGN KEY (`RegistrationID`) REFERENCES `registrations` (`RegistrationID`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,5,580,'2019-02-06 00:00:00',2),(2,11,580,'2019-01-22 00:00:00',1),(3,102,593,'2018-12-29 00:00:00',1),(4,141,593,'2019-03-04 00:00:00',2),(5,110,2347,'2019-04-11 00:00:00',4),(6,63,2904,'2019-03-23 00:00:00',2),(7,105,1000,'2018-12-01 00:00:00',4),(8,61,4356,'2018-10-23 00:00:00',1),(9,1,1270,'2019-03-01 00:00:00',7),(11,4,1210,'2019-03-07 00:00:00',4),(12,90,1210,'2019-07-10 00:00:00',7),(13,94,3557,'2019-05-29 00:00:00',7),(14,12,4695,'2019-05-16 00:00:00',7),(15,75,1000,'2019-05-01 00:00:00',2),(16,2,638,'2019-04-10 00:00:00',2),(17,8,666,'2019-05-03 00:00:00',2),(18,86,2420,'2019-01-31 00:00:00',1),(19,107,2420,'2019-06-13 00:00:00',1),(20,142,2420,'2019-05-17 00:00:00',2),(21,3,454,'2019-05-14 00:00:00',4),(22,3,454,'2019-03-27 00:00:00',2),(23,6,435,'2019-03-02 00:00:00',4),(24,6,435,'2019-05-15 00:00:00',1),(25,14,454,'2019-06-03 00:00:00',7),(26,14,454,'2019-04-04 00:00:00',5),(27,118,454,'2019-03-22 00:00:00',4),(28,118,454,'2019-03-16 00:00:00',7),(29,46,315,'2019-03-10 00:00:00',7),(30,114,315,'2019-05-09 00:00:00',7),(31,122,363,'2019-04-29 00:00:00',2),(32,48,1000,'2019-04-09 00:00:00',2),(33,127,424,'2019-05-11 00:00:00',2),(34,106,436,'2019-01-31 00:00:00',1),(35,32,714,'2019-02-21 00:00:00',1),(36,35,714,'2019-03-28 00:00:00',2),(37,71,714,'2019-04-16 00:00:00',4),(38,55,1452,'2019-05-13 00:00:00',2),(39,78,1452,'2019-06-03 00:00:00',4),(40,29,3993,'2019-05-30 00:00:00',1),(41,37,3993,'2019-04-17 00:00:00',7),(42,62,3993,'2019-03-15 00:00:00',5),(43,68,1000,'2019-04-05 00:00:00',4),(44,19,1513,'2019-10-02 00:00:00',7),(45,21,1513,'2019-11-01 00:00:00',7),(46,24,1513,'2019-03-22 00:00:00',7),(47,25,1513,'2019-06-13 00:00:00',2),(48,34,1513,'2019-06-17 00:00:00',2),(49,38,1513,'2019-06-18 00:00:00',2),(50,87,1513,'2019-06-05 00:00:00',1),(51,126,1513,'2019-05-10 00:00:00',1),(52,134,1513,'2019-08-08 00:00:00',2),(53,69,1452,'2019-06-28 00:00:00',4),(54,124,6958,'2019-07-23 00:00:00',2),(55,83,4840,'2019-07-03 00:00:00',4),(56,132,4840,'2019-05-27 00:00:00',1),(57,30,1138,'2019-05-12 00:00:00',7),(58,22,1138,'2019-06-27 00:00:00',5),(59,36,418,'2019-06-01 00:00:00',4),(60,44,1234,'2019-04-23 00:00:00',7),(61,28,1621,'2019-06-14 00:00:00',7),(62,103,1621,'2019-04-11 00:00:00',7),(63,17,1000,'2019-06-30 00:00:00',2),(64,123,1000,'2019-03-26 00:00:00',2),(65,42,605,'2019-09-06 00:00:00',2),(66,84,605,'2019-08-30 00:00:00',1),(67,89,1797,'2019-10-05 00:00:00',1),(68,41,2965,'2019-11-24 00:00:00',2),(69,82,2965,'2019-12-29 00:00:00',4),(70,73,1000,'2019-12-08 00:00:00',2),(72,23,908,'2019-06-24 00:00:00',1),(73,80,908,'2019-02-28 00:00:00',7),(74,27,1186,'2019-04-19 00:00:00',5),(75,58,1000,'2019-04-14 00:00:00',4),(76,31,2275,'2019-02-05 00:00:00',7),(77,92,2275,'2019-02-06 00:00:00',7),(78,16,787,'2019-04-01 00:00:00',7),(79,49,787,'2019-04-15 00:00:00',2),(80,18,763,'2019-09-16 00:00:00',2),(81,26,1525,'2019-04-06 00:00:00',2),(82,20,2269,'2019-05-08 00:00:00',1),(83,131,2269,'2019-07-09 00:00:00',1),(84,53,2904,'2019-05-26 00:00:00',2),(85,130,2904,'2019-05-11 00:00:00',4),(86,40,1000,'2019-05-24 00:00:00',2),(87,39,1000,'2019-08-07 00:00:00',4),(88,60,726,'2019-04-14 00:00:00',1),(89,104,726,'2019-05-11 00:00:00',7),(90,119,726,'2019-06-06 00:00:00',5),(91,43,877,'2019-05-21 00:00:00',4),(92,133,877,'2019-05-01 00:00:00',7),(93,65,1059,'2019-04-15 00:00:00',7),(94,120,1059,'2019-06-09 00:00:00',7),(95,121,1059,'2019-05-14 00:00:00',2),(96,115,1162,'2019-05-25 00:00:00',2),(97,135,1162,'2019-06-11 00:00:00',2),(98,51,436,'2020-04-30 00:00:00',1),(99,52,436,'2020-07-17 00:00:00',1),(100,57,436,'2020-08-02 00:00:00',2),(101,72,605,'2020-07-19 00:00:00',4),(102,79,605,'2020-04-09 00:00:00',2),(103,96,605,'2020-08-19 00:00:00',4),(104,117,605,'2020-04-22 00:00:00',1),(105,77,805,'2020-08-12 00:00:00',7),(106,101,805,'2020-08-20 00:00:00',5),(107,59,1204,'2020-06-02 00:00:00',4),(108,47,1150,'2020-06-30 00:00:00',7),(110,109,1150,'2020-08-22 00:00:00',7),(111,95,1634,'2020-07-25 00:00:00',2),(113,136,2571,'2020-04-28 00:00:00',2),(115,67,1210,'2020-09-09 00:00:00',1),(116,139,1210,'2020-09-16 00:00:00',2),(117,76,1361,'2020-07-10 00:00:00',4),(118,81,1000,'2020-07-12 00:00:00',2),(119,85,436,'2020-06-10 00:00:00',4),(120,100,436,'2020-06-22 00:00:00',1),(121,128,635,'2020-04-04 00:00:00',7),(123,111,1059,'2020-06-06 00:00:00',4),(124,54,1355,'2020-07-02 00:00:00',7),(125,45,182,'2020-08-31 00:00:00',7),(126,97,605,'2020-06-11 00:00:00',7),(127,138,968,'2020-06-15 00:00:00',2),(128,70,1271,'2020-03-19 00:00:00',2),(129,125,1271,'2020-06-17 00:00:00',2),(130,112,1355,'2020-07-05 00:00:00',1),(131,56,169,'2020-03-31 00:00:00',1),(132,56,169,'2020-07-14 00:00:00',2),(133,64,169,'2020-05-31 00:00:00',4),(134,64,169,'2020-05-28 00:00:00',2),(135,140,1150,'2020-06-28 00:00:00',4),(136,129,2571,'2020-06-06 00:00:00',1),(137,116,1325,'2020-05-11 00:00:00',7),(140,74,1000,'2020-07-09 00:00:00',7),(141,93,1000,'2020-05-17 00:00:00',7),(142,137,1000,'2020-06-29 00:00:00',7),(143,91,1513,'2020-05-12 00:00:00',2),(144,102,1000,'2018-11-19 00:00:00',2),(145,141,1000,'2019-04-07 00:00:00',2),(146,4,1000,'2019-06-06 00:00:00',1),(147,90,1000,'2019-06-16 00:00:00',1),(148,55,1000,'2019-04-08 00:00:00',2),(149,78,1000,'2019-03-14 00:00:00',4),(150,69,1000,'2019-07-18 00:00:00',2),(151,22,1000,'2019-06-25 00:00:00',4),(152,36,1000,'2019-05-17 00:00:00',1),(153,42,1000,'2019-09-17 00:00:00',7),(154,84,1000,'2019-09-25 00:00:00',5),(155,18,1000,'2019-08-03 00:00:00',4),(156,68,5000,'2019-02-26 00:00:00',7),(157,123,1753,'2019-05-12 00:00:00',7),(159,58,1033,'2019-02-14 00:00:00',2),(160,39,3659,'2019-07-31 00:00:00',2),(161,65,1059,'2019-05-13 00:00:00',2),(162,120,1059,'2019-02-20 00:00:00',1),(163,121,1059,'2019-07-04 00:00:00',1),(164,68,2470,'2019-04-13 00:00:00',2),(165,83,4840,'2019-05-08 00:00:00',4),(166,132,4840,'2019-06-11 00:00:00',2),(167,31,1138,'2019-04-27 00:00:00',4),(168,92,1138,'2019-04-05 00:00:00',1);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registrations`
--

DROP TABLE IF EXISTS `registrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registrations` (
  `RegistrationID` int NOT NULL AUTO_INCREMENT,
  `AttendeeID` int DEFAULT NULL,
  `EventID` int DEFAULT NULL,
  `RegistrationDate` datetime(6) DEFAULT NULL,
  `PurchaseOrderNumber` varchar(15) DEFAULT NULL,
  `SalesTaxRate` int NOT NULL,
  `Nmbr_of_persons` int NOT NULL DEFAULT '1',
  `FeeScheduleID` int NOT NULL DEFAULT '1',
  `RegistrationFee` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`RegistrationID`),
  KEY `AttendeeID_index` (`AttendeeID`),
  KEY `EventID_index` (`EventID`),
  KEY `SalesTaxRate_index` (`SalesTaxRate`),
  KEY `RegistrationFee_index` (`RegistrationFee`),
  KEY `FeeScheduleID_index` (`FeeScheduleID`),
  CONSTRAINT `fk_registration_attendees1` FOREIGN KEY (`AttendeeID`) REFERENCES `attendees` (`AttendeeID`),
  CONSTRAINT `fk_registration_events1` FOREIGN KEY (`EventID`) REFERENCES `events` (`EventID`),
  CONSTRAINT `fk_registration_fee_schedules1` FOREIGN KEY (`FeeScheduleID`) REFERENCES `fee_schedules` (`FeeScheduleID`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registrations`
--

LOCK TABLES `registrations` WRITE;
/*!40000 ALTER TABLE `registrations` DISABLE KEYS */;
INSERT INTO `registrations` VALUES (1,1,2,'2018-12-21 00:00:00.000000','Con-53831',16,1,7,1270),(2,1,3,'2019-03-04 00:00:00.000000','Con-88232',16,1,12,638),(3,1,4,'2019-02-24 00:00:00.000000','Con-29670',21,1,14,454),(4,2,2,'2019-02-15 00:00:00.000000','Tai-33652',21,2,8,2420),(5,3,1,'2018-10-06 00:00:00.000000','Lit-69253',16,1,1,580),(6,3,4,'2019-02-06 00:00:00.000000','Lit-75310',16,1,14,435),(8,4,3,'2019-03-22 00:00:00.000000','Coh-78792',21,1,12,666),(11,5,1,'2018-12-31 00:00:00.000000','Wid-78029',16,1,1,580),(12,5,2,'2019-02-18 00:00:00.000000','Wid-63771',21,4,10,4695),(14,5,4,'2019-02-09 00:00:00.000000','Wid-74767',21,1,14,454),(16,41,10,'2019-02-25 00:00:00.000000','Blo-12524',21,1,44,787),(17,39,7,'2019-03-03 00:00:00.000000','Mir-68317',21,6,33,2396),(18,12,10,'2019-05-28 00:00:00.000000','Uni-54014',21,2,45,1525),(19,52,6,'2019-06-19 00:00:00.000000','Per-55119',21,1,25,1513),(20,37,10,'2019-03-01 00:00:00.000000','Min-23556',21,3,46,2269),(21,35,6,'2019-06-24 00:00:00.000000','Mag-22420',21,1,25,1513),(22,18,7,'2019-04-17 00:00:00.000000','Ahk-31436',21,2,30,835),(23,56,9,'2019-02-24 00:00:00.000000','Quo-79917',21,3,40,908),(24,45,6,'2019-03-06 00:00:00.000000','Neo-55280',21,1,25,1513),(25,15,6,'2019-04-07 00:00:00.000000','Lon-26648',21,1,25,1513),(26,44,10,'2019-03-07 00:00:00.000000','Nav-37400',21,2,45,1525),(27,23,9,'2019-02-22 00:00:00.000000','ISO-17056',21,4,41,1186),(28,48,7,'2019-04-21 00:00:00.000000','Orb-43080',21,4,32,1621),(29,14,5,'2019-03-05 00:00:00.000000','Lin-74232',21,3,23,3993),(30,14,7,'2018-12-30 00:00:00.000000','Lin-71923',21,1,29,424),(31,11,9,'2019-01-02 00:00:00.000000','Pac-46917',21,8,43,2275),(32,11,5,'2018-11-17 00:00:00.000000','Pac-88817',21,1,21,714),(33,52,8,'2019-06-24 00:00:00.000000','Per-53334',21,7,39,4066),(34,28,6,'2019-04-19 00:00:00.000000','Kat-70219',21,1,25,1513),(35,49,5,'2018-12-31 00:00:00.000000','Ova-21096',21,1,21,714),(36,49,7,'2019-01-27 00:00:00.000000','Ova-44822',21,2,30,835),(37,46,5,'2019-03-08 00:00:00.000000','Nur-70823',21,3,23,3993),(38,13,6,'2019-03-14 00:00:00.000000','Zit-49651',21,1,25,1513),(39,16,10,'2019-04-25 00:00:00.000000','Joh-25785',21,7,49,4659),(40,44,10,'2019-04-18 00:00:00.000000','Nav-49971',21,6,48,4175),(41,15,8,'2019-08-01 00:00:00.000000','Lon-82501',21,5,37,2965),(42,26,8,'2019-06-05 00:00:00.000000','Dis-12595',21,2,35,1210),(43,76,11,'2019-02-02 00:00:00.000000','A7O 8H9',21,5,51,877),(44,110,7,'2019-01-20 00:00:00.000000','N3Y 4Q9',21,3,31,1234),(45,85,16,'2020-04-30 23:00:00.000000','T7G 8S1',21,1,69,182),(46,130,4,'2018-12-15 00:00:00.000000','Y9H 3F0',21,4,16,315),(47,119,13,'2020-05-24 00:00:00.000000','Z3B 0F8',21,2,58,1150),(48,113,4,'2019-03-02 00:00:00.000000','T3L 6Q4',21,6,18,399),(49,53,10,'2019-02-09 00:00:00.000000','I3V 1W4',21,1,44,787),(50,76,13,'2020-06-20 00:00:00.000000','X4B 8O7',21,2,58,1150),(51,106,12,'2020-03-26 00:00:00.000000','H8M 2I2',21,3,54,436),(52,50,12,'2020-05-18 00:00:00.000000','Z5R 0J4',21,3,54,436),(53,90,10,'2019-03-26 00:00:00.000000','O4E 8J4',21,4,47,2904),(54,107,15,'2020-03-15 00:00:00.000000','H0B 1I3',21,7,68,1355),(55,99,5,'2019-01-26 00:00:00.000000','B5P 7M0',21,2,22,2904),(56,80,18,'2020-03-07 00:00:00.000000','L1I 9M7',21,1,74,169),(57,88,12,'2020-05-16 00:00:00.000000','E6G 3A3',21,3,54,436),(58,107,9,'2018-12-27 00:00:00.000000','C8P 0J8',21,7,42,2033),(59,117,13,'2020-05-05 00:00:00.000000','A8D 1J4',21,1,57,1204),(60,71,11,'2019-01-06 00:00:00.000000','L0T 6E8',21,4,50,726),(61,56,1,'2018-09-20 00:00:00.000000','Y2C 3E5',21,8,6,4356),(62,74,5,'2018-12-12 00:00:00.000000','B2W 5W7',21,3,23,3993),(63,51,1,'2018-12-01 00:00:00.000000','C2C 8C0',21,5,4,2904),(64,96,18,'2020-05-03 00:00:00.000000','D1E 8A3',21,1,74,169),(65,114,11,'2019-03-16 00:00:00.000000','F1L 1A2',21,7,52,1059),(66,127,19,'2020-05-18 00:00:00.000000','N7O 3R2',21,5,79,6050),(67,90,14,'2020-04-30 23:59:00.000000','W5R 4A7',21,4,62,1210),(68,56,5,'2019-01-02 00:00:00.000000','W5P 4M7',21,7,24,8470),(69,108,6,'2019-04-04 00:00:00.000000','J5C 2J5',21,2,26,2904),(70,66,17,'2020-03-04 00:00:00.000000','Q0H 3M9',21,7,72,1271),(71,119,5,'2018-12-31 00:00:00.000000','Q0T 9H7',21,1,21,714),(72,104,12,'2020-03-30 00:00:00.000000','U9D 3Y1',21,5,55,605),(73,50,8,'2019-08-29 00:00:00.000000','K5P 9Y8',21,6,38,3521),(74,102,19,'2020-06-02 00:00:00.000000','K6E 9R6',21,6,80,6534),(75,89,2,'2019-01-16 00:00:00.000000','M6A 0W5',21,6,11,6897),(76,111,14,'2020-05-28 00:00:00.000000','U1P 1Q8',21,5,63,1361),(77,92,12,'2020-04-13 00:00:00.000000','Y0F 6P8',21,7,56,805),(78,84,5,'2019-02-18 00:00:00.000000','U3P 6K4',21,2,22,2904),(79,121,12,'2020-03-10 00:00:00.000000','M4H 6S6',21,5,55,605),(80,124,9,'2018-12-27 00:00:00.000000','E8K 2Q9',21,3,40,908),(81,126,14,'2020-04-12 16:08:00.000000','P7L 9J8',21,6,64,1452),(82,106,8,'2019-08-22 00:00:00.000000','J4H 4T9',21,5,37,2965),(83,120,6,'2019-03-09 00:00:00.000000','L9W 9W7',21,8,28,9680),(84,59,8,'2019-07-06 00:00:00.000000','A9I 2D8',21,2,35,1210),(85,49,15,'2020-02-26 00:00:00.000000','D1K 5C7',21,2,65,436),(86,123,3,'2019-01-05 00:00:00.000000','B9E 0Y4',21,4,13,2420),(87,58,6,'2019-04-25 00:00:00.000000','H0V 5Y9',21,1,25,1513),(88,82,13,'2020-06-24 00:00:00.000000','J8H 1Z4',21,8,61,3872),(89,51,8,'2019-07-28 00:00:00.000000','G8L 6Q0',21,3,36,1797),(90,53,2,'2019-03-23 00:00:00.000000','C3T 1T6',21,2,8,2420),(91,119,20,'2020-02-20 00:00:00.000000','C7A 7C6',21,5,81,1513),(92,93,9,'2019-01-17 00:00:00.000000','U4K 5Q1',21,8,43,2275),(93,80,19,'2020-03-04 00:00:00.000000','Y5K 4H5',21,6,80,6534),(94,54,2,'2019-01-29 00:00:00.000000','Y8M 0I5',21,3,9,3557),(95,94,13,'2020-03-21 00:00:00.000000','F6M 7B9',21,3,59,1634),(96,51,12,'2020-04-09 00:00:00.000000','G3A 4W9',21,5,55,605),(97,129,16,'2020-05-14 00:00:00.000000','P7D 0V3',21,4,70,605),(98,52,13,'2020-06-27 00:00:00.000000','Z4U 5L3',21,3,59,1634),(99,125,2,'2019-02-17 00:00:00.000000','M8M 0E1',21,1,7,1325),(100,118,15,'2020-05-05 00:00:00.000000','U0V 6W0',21,2,65,436),(101,70,12,'2020-04-21 00:00:00.000000','A5B 0F4',21,7,56,805),(102,52,1,'2018-10-05 00:00:00.000000','F0U 4B8',21,2,2,1186),(103,54,7,'2019-01-25 00:00:00.000000','S5W 7N8',21,4,32,1621),(104,119,11,'2019-01-19 00:00:00.000000','G3E 6M0',21,4,50,726),(105,57,1,'2018-09-18 00:00:00.000000','Z8J 3A1',21,6,5,3449),(106,74,4,'2019-01-09 00:00:00.000000','R3S 0D3',21,8,20,436),(107,92,3,'2019-02-21 00:00:00.000000','V7J 8H1',21,4,13,2420),(108,131,15,'2020-06-17 00:00:00.000000','Y9J 2R4',21,5,67,1059),(109,119,13,'2020-04-21 20:10:00.000000','P6P 0M2',21,2,58,1150),(110,83,1,'2018-12-10 00:00:00.000000','U4T 7D8',21,4,3,2347),(111,69,15,'2020-02-22 00:00:00.000000','L7N 1K9',21,5,67,1059),(112,95,17,'2020-06-08 00:00:00.000000','S4G 9B3',21,8,73,1355),(113,123,19,'2020-06-15 00:00:00.000000','T8U 3F3',21,5,79,6050),(114,88,4,'2019-01-01 00:00:00.000000','C6V 7B0',21,4,16,315),(115,102,11,'2019-01-14 00:00:00.000000','P9A 0Y8',21,8,53,1162),(116,60,19,'2020-04-26 00:00:00.000000','Y1K 6C6',21,1,78,1325),(117,122,12,'2020-03-24 00:00:00.000000','Z2V 1A1',21,5,55,605),(118,92,4,'2018-12-28 00:00:00.000000','W6P 9A9',21,1,14,454),(119,80,11,'2019-02-02 00:00:00.000000','Z8I 0F6',21,4,50,726),(120,81,11,'2019-01-30 00:00:00.000000','B2N 3H2',21,7,52,1059),(121,53,11,'2019-03-13 00:00:00.000000','H5A 6L0',21,7,52,1059),(122,95,4,'2018-12-28 00:00:00.000000','J6I 2T0',21,5,17,363),(123,91,7,'2019-03-09 00:00:00.000000','R3S 8A6',21,7,34,2753),(124,98,6,'2019-03-13 00:00:00.000000','I8A 7F6',21,5,27,6958),(125,69,17,'2020-03-15 00:00:00.000000','U1K 3B4',21,7,72,1271),(126,49,6,'2019-03-13 00:00:00.000000','T4N 3Y7',21,1,25,1513),(127,70,4,'2019-01-15 00:00:00.000000','L7W 5P2',21,7,19,424),(128,63,15,'2020-03-08 00:00:00.000000','I6F 6I2',21,3,66,635),(129,59,18,'2020-05-22 00:00:00.000000','H8R 7W7',21,5,77,2571),(130,125,10,'2019-02-01 00:00:00.000000','B3Q 6N4',21,4,47,2904),(131,122,10,'2019-04-25 00:00:00.000000','H2W 0R7',21,3,46,2269),(132,118,6,'2019-03-24 00:00:00.000000','B2N 9L0',21,8,28,9680),(133,119,11,'2019-02-23 00:00:00.000000','C3M 5J8',21,5,51,877),(134,65,6,'2019-05-16 00:00:00.000000','B6L 9I1',21,1,25,1513),(135,104,11,'2019-03-18 00:00:00.000000','R1Z 3T8',21,8,53,1162),(136,63,13,'2020-03-24 00:00:00.000000','L7R 2Z0',21,5,60,2571),(137,114,19,'2020-06-01 00:00:00.000000','V5W 4M9',21,6,80,6534),(138,77,16,'2020-05-29 00:00:00.000000','O4N 2Q2',21,8,71,968),(139,52,14,'2020-06-01 00:00:00.000000','W6A 9S0',21,4,62,1210),(140,98,18,'2020-03-10 00:00:00.000000','P3S 8T7',21,2,76,1150),(141,53,1,'2018-11-29 00:00:00.000000','C8P 6F7',21,2,2,1186),(142,117,3,'2019-02-03 00:00:00.000000','C0O 4Y3',21,4,13,2420);
/*!40000 ALTER TABLE `registrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `1-betalingen`
--

/*!50001 DROP VIEW IF EXISTS `1-betalingen`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `1-betalingen` AS select `m`.`PaymentMethod` AS `PaymentMethod`,`p`.`PaymentAmount` AS `Paymentamount`,`r`.`RegistrationFee` AS `RegistrationFee` from ((`registrations` `r` join `payments` `p` on((`r`.`RegistrationID` = `p`.`RegistrationID`))) join `payment_methods` `m` on((`p`.`PaymentMethodID` = `m`.`PaymentMethodID`))) where (`r`.`PurchaseOrderNumber` = 'Joh-25785') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `2-methodes`
--

/*!50001 DROP VIEW IF EXISTS `2-methodes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `2-methodes` AS select `m`.`PaymentMethod` AS `Betaalmethode`,sum(`p`.`PaymentAmount`) AS `Totaal bedrag` from (`payments` `p` join `payment_methods` `m` on((`p`.`PaymentMethodID` = `m`.`PaymentMethodID`))) group by `m`.`PaymentMethod` order by sum(`p`.`PaymentAmount`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `3-registraties`
--

/*!50001 DROP VIEW IF EXISTS `3-registraties`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `3-registraties` AS select year(`r`.`RegistrationDate`) AS `REGISTRATIE JAAR`,monthname(`r`.`RegistrationDate`) AS `REGISTRATIE MAAND`,concat(cast(sum(`r`.`Nmbr_of_persons`) as char charset utf8mb4),' personen') AS `TOTAAL AANTAL REGISTRATIES` from `registrations` `r` group by `REGISTRATIE JAAR`,`REGISTRATIE MAAND` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `4-events`
--

/*!50001 DROP VIEW IF EXISTS `4-events`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `4-events` AS select `e`.`EventID` AS `EventID`,date_format(`e`.`StartDate`,'%d-%m-%Y') AS `StartDate`,upper(`e`.`EventName`) AS `EventName` from (`events` `e` left join `registrations` `r` on((`r`.`EventID` = `e`.`EventID`))) where (`r`.`EventID` is null) order by `e`.`StartDate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `5-registraties`
--

/*!50001 DROP VIEW IF EXISTS `5-registraties`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `5-registraties` AS select `r`.`EventID` AS `EventID`,count(`r`.`EventID`) AS `Totaal aantal registraties` from `registrations` `r` where (`r`.`RegistrationDate` between '2020-03-15' and '2020-04-30 23:59:59') group by `r`.`EventID` having (`Totaal aantal registraties` > 2) order by `Totaal aantal registraties` desc */;
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

-- Dump completed on 2020-05-15 15:52:38
