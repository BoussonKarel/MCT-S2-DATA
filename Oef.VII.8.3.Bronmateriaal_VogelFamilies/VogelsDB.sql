-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: vogelsdb
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
-- Temporary view structure for view `01_bedreigingsoverzicht`
--

DROP TABLE IF EXISTS `01_bedreigingsoverzicht`;
/*!50001 DROP VIEW IF EXISTS `01_bedreigingsoverzicht`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `01_bedreigingsoverzicht` AS SELECT 
 1 AS `BEDREIGING`,
 1 AS `FAMILIE`,
 1 AS `VOGELNAAM`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `02_aantal_vogels_per_bedreiging`
--

DROP TABLE IF EXISTS `02_aantal_vogels_per_bedreiging`;
/*!50001 DROP VIEW IF EXISTS `02_aantal_vogels_per_bedreiging`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `02_aantal_vogels_per_bedreiging` AS SELECT 
 1 AS `BEDREIGING`,
 1 AS `AANTAL`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `03_bedreigde_aantallen_perfamilie`
--

DROP TABLE IF EXISTS `03_bedreigde_aantallen_perfamilie`;
/*!50001 DROP VIEW IF EXISTS `03_bedreigde_aantallen_perfamilie`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `03_bedreigde_aantallen_perfamilie` AS SELECT 
 1 AS `BEDREIGING`,
 1 AS `FAMILIE`,
 1 AS `AANTAL VOGELS`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `birds`
--

DROP TABLE IF EXISTS `birds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `birds` (
  `idBird` int NOT NULL,
  `Common_name` varchar(100) NOT NULL,
  `Scientific_name` varchar(100) DEFAULT NULL,
  `RedlistCode` varchar(5) DEFAULT 'V',
  `FamilyID` int DEFAULT NULL,
  PRIMARY KEY (`idBird`),
  UNIQUE KEY `common_name_UNIQUE` (`Common_name`),
  KEY `fk_birds_families_idx` (`FamilyID`),
  KEY `fk_birds_redlistcodes1_idx` (`RedlistCode`),
  CONSTRAINT `fk_birds_families` FOREIGN KEY (`FamilyID`) REFERENCES `families` (`idFamily`),
  CONSTRAINT `fk_birds_redlistcodes1` FOREIGN KEY (`RedlistCode`) REFERENCES `redlistcodes` (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `birds`
--

LOCK TABLES `birds` WRITE;
/*!40000 ALTER TABLE `birds` DISABLE KEYS */;
INSERT INTO `birds` VALUES (22678911,'Grey Partridge','Perdix perdix','LC',26),(22678944,'Common Quail','Coturnix coturnix','LC',26),(22679460,'Willow Ptarmigan','Lagopus lagopus','LC',26),(22679480,'Black Grouse','Lyrurus tetrix','LC',26),(22679487,'Western Capercaillie','Tetrao urogallus','LC',26),(22679494,'Hazel Grouse','Tetrastes bonasia','LC',26),(22679814,'White-headed Duck','Oxyura leucocephala','E',3),(22679839,'Mute Swan','Cygnus olor','LC',3),(22679856,'Whooper Swan','Cygnus cygnus','LC',3),(22679862,'Tundra Swan','Cygnus columbianus','LC',3),(22679872,'Pink-footed Goose','Anser brachyrhynchus','LC',3),(22679875,'Taiga Bean Goose','Anser fabalis','LC',3),(22679881,'Greater White-fronted Goose','Anser albifrons','LC',3),(22679886,'Lesser White-fronted Goose','Anser erythropus','V',3),(22679889,'Greylag Goose','Anser anser','LC',3),(22679935,'Canada Goose','Branta canadensis','LC',3),(22679943,'Barnacle Goose','Branta leucopsis','LC',3),(22679946,'Brant Goose','Branta bernicla','LC',3),(22679954,'Red-breasted Goose','Branta ruficollis','V',3),(22680003,'Ruddy Shelduck','Tadorna ferruginea','LC',3),(22680024,'Common Shelduck','Tadorna tadorna','LC',3),(22680107,'Mandarin Duck','Aix galericulata','LC',3),(22680149,'Gadwall','Mareca strepera','LC',3),(22680157,'Eurasian Wigeon','Mareca penelope','LC',3),(22680186,'Mallard','Anas platyrhynchos','LC',3),(22680229,'Blue-winged Teal','Spatula discors','LC',3),(22680247,'Northern Shoveler','Spatula clypeata','LC',3),(22680301,'Northern Pintail','Anas acuta','LC',3),(22680313,'Garganey','Spatula querquedula','LC',3),(22680348,'Red-crested Pochard','Netta rufina','LC',3),(22680358,'Common Pochard','Aythya ferina','V',3),(22680370,'Ring-necked Duck','Aythya collaris','LC',3),(22680373,'Ferruginous Duck','Aythya nyroca','NT',3),(22680391,'Tufted Duck','Aythya fuligula','LC',3),(22680398,'Greater Scaup','Aythya marila','LC',3),(22680402,'Lesser Scaup','Aythya affinis','LC',3),(22680405,'Common Eider','Somateria mollissima','NT',3),(22680409,'King Eider','Somateria spectabilis','LC',3),(22680415,'Steller\'s Eider','Polysticta stelleri','V',3),(22680423,'Harlequin Duck','Histrionicus histrionicus','LC',3),(22680427,'Long-tailed Duck','Clangula hyemalis','V',3),(22680441,'Surf Scoter','Melanitta perspicillata','LC',3),(22680455,'Common Goldeneye','Bucephala clangula','LC',3),(22680465,'Smew','Mergellus albellus','LC',3),(22680485,'Red-breasted Merganser','Mergus serrator','LC',3),(22680492,'Common Merganser','Mergus merganser','LC',3),(22680683,'Eurasian Wryneck','Jynx torquilla','LC',2),(22681076,'Lesser Spotted Woodpecker','Dryobates minor','LC',2),(22681114,'Middle Spotted Woodpecker','Dendrocoptes medius','LC',2),(22681124,'Great Spotted Woodpecker','Dendrocopos major','LC',2),(22681127,'Syrian Woodpecker','Dendrocopos syriacus','LC',2),(22681382,'Black Woodpecker','Dryocopus martius','LC',2),(22682655,'Eurasian Hoopoe','Upupa epops','LC',56),(22682860,'European Roller','Coracias garrulus','LC',55),(22683027,'Common Kingfisher','Alcedo atthis','LC',53),(22683645,'Pied Kingfisher','Ceryle rudis','LC',54),(22683756,'European Bee-eater','Merops apiaster','LC',43),(22683819,'Great Spotted Cuckoo','Clamator glandarius','LC',51),(22683873,'Common Cuckoo','Cuculus canorus','LC',51),(22686774,'Alpine Swift','Tachymarptis melba','LC',45),(22686800,'Common Swift','Apus apus','LC',45),(22688504,'Western Barn Owl','Tyto alba','LC',52),(22688643,'Eurasian Scops Owl','Otus scops','LC',25),(22688927,'Eurasian Eagle-owl','Bubo bubo','LC',25),(22689055,'Snowy Owl','Bubo scandiacus','V',25),(22689108,'Ural Owl','Strix uralensis','LC',25),(22689118,'Great Grey Owl','Strix nebulosa','LC',25),(22689189,'Northern Hawk-Owl','Surnia ulula','LC',25),(22689194,'Eurasian Pygmy Owl','Glaucidium passerinum','LC',25),(22689328,'Little Owl','Athene noctua','LC',25),(22689362,'Boreal Owl','Aegolius funereus','LC',25),(22689507,'Long-eared Owl','Asio otus','LC',25),(22689531,'Short-eared Owl','Asio flammeus','LC',25),(22689887,'European Nightjar','Caprimulgus europaeus','LC',32),(22690066,'Rock Pigeon, urban\"\"','Columba livia f. urbana','LC',23),(22690088,'Stock Dove','Columba oenas','LC',23),(22690103,'Common Wood Pigeon','Columba palumbus','LC',23),(22690419,'European Turtle Dove','Streptopelia turtur','V',23),(22690439,'Oriental Turtle Dove','Streptopelia orientalis','LC',23),(22691896,'Little Bustard','Tetrax tetrax','NT',48),(22691900,'Great Bustard','Otis tarda','V',48),(22692081,'Demoiselle Crane','Anthropoides virgo','LC',65),(22692146,'Common Crane','Grus grus','LC',65),(22692543,'Corn Crake','Crex crex','LC',28),(22692663,'Little Crake','Zapornia parva','LC',28),(22692667,'Baillon\'s Crake','Zapornia pusilla','LC',28),(22692676,'Spotted Crake','Porzana porzana','LC',28),(22692913,'Eurasian Coot','Fulica atra','LC',28),(22692980,'Pallas\'s Sandgrouse','Syrrhaptes paradoxus','LC',19),(22693052,'Eurasian Woodcock','Scolopax rusticola','LC',5),(22693093,'Great Snipe','Gallinago media','NT',5),(22693097,'Common Snipe','Gallinago gallinago','LC',5),(22693133,'Jack Snipe','Lymnocryptes minimus','LC',5),(22693150,'Black-tailed Godwit','Limosa limosa','NT',5),(22693158,'Bar-tailed Godwit','Limosa lapponica','NT',5),(22693178,'Whimbrel','Numenius phaeopus','LC',5),(22693185,'Slender-billed Curlew','Numenius tenuirostrisÔÇá?','CE',5),(22693190,'Eurasian Curlew','Numenius arquata','NT',5),(22693207,'Spotted Redshank','Tringa erythropus','LC',5),(22693211,'Common Redshank','Tringa totanus','LC',5),(22693216,'Marsh Sandpiper','Tringa stagnatilis','LC',5),(22693220,'Common Greenshank','Tringa nebularia','LC',5),(22693231,'Greater Yellowlegs','Tringa melanoleuca','LC',5),(22693235,'Lesser Yellowlegs','Tringa flavipes','LC',5),(22693243,'Green Sandpiper','Tringa ochropus','LC',5),(22693247,'Wood Sandpiper','Tringa glareola','LC',5),(22693251,'Terek Sandpiper','Xenus cinereus','LC',5),(22693264,'Common Sandpiper','Actitis hypoleucos','LC',5),(22693277,'Spotted Sandpiper','Actitis macularius','LC',5),(22693336,'Ruddy Turnstone','Arenaria interpres','LC',5),(22693359,'Great Knot','Calidris tenuirostris','E',5),(22693363,'Red Knot','Calidris canutus','NT',5),(22693369,'Sanderling','Calidris alba','LC',5),(22693373,'Semipalmated Sandpiper','Calidris pusilla','NT',5),(22693379,'Little Stint','Calidris minuta','LC',5),(22693388,'Temminck\'s Stint','Calidris temminckii','LC',5),(22693399,'White-rumped Sandpiper','Calidris fuscicollis','LC',5),(22693404,'Baird\'s Sandpiper','Calidris bairdii','LC',5),(22693408,'Pectoral Sandpiper','Calidris melanotos','LC',5),(22693420,'Purple Sandpiper','Calidris maritima','LC',5),(22693427,'Dunlin','Calidris alpina','LC',5),(22693431,'Curlew Sandpiper','Calidris ferruginea','NT',5),(22693447,'Buff-breasted Sandpiper','Calidris subruficollis','NT',5),(22693464,'Broad-billed Sandpiper','Calidris falcinellus','LC',5),(22693468,'Ruff','Calidris pugnax','LC',5),(22693490,'Red-necked Phalarope','Phalaropus lobatus','LC',5),(22693494,'Red Phalarope','Phalaropus fulicarius','LC',5),(22693712,'Pied Avocet','Recurvirostra avosetta','LC',40),(22693727,'European Golden Plover','Pluvialis apricaria','LC',20),(22693735,'Pacific Golden Plover','Pluvialis fulva','LC',20),(22693740,'American Golden Plover','Pluvialis dominica','LC',20),(22693749,'Grey Plover','Pluvialis squatarola','LC',20),(22693759,'Common Ringed Plover','Charadrius hiaticula','LC',20),(22693770,'Little Ringed Plover','Charadrius dubius','LC',20),(22693855,'Lesser Sand Plover','Charadrius mongolus','LC',20),(22693862,'Greater Sand Plover','Charadrius leschenaultii','LC',20),(22693906,'Eurasian Dotterel','Charadrius morinellus','LC',20),(22693949,'Northern Lapwing','Vanellus vanellus','NT',20),(22694053,'Sociable Lapwing','Vanellus gregarius','CE',20),(22694064,'White-tailed Lapwing','Vanellus leucurus','LC',20),(22694127,'Collared Pratincole','Glareola pratincola','LC',6),(22694136,'Black-winged Pratincole','Glareola nordmanni','NT',6),(22694160,'Great Skua','Catharacta skua','LC',47),(22694240,'Pomarine Jaeger','Stercorarius pomarinus','LC',47),(22694245,'Parasitic Jaeger','Stercorarius parasiticus','LC',47),(22694251,'Long-tailed Jaeger','Stercorarius longicaudus','LC',47),(22694308,'Mew Gull','Larus canus','LC',7),(22694317,'Ring-billed Gull','Larus delawarensis','LC',7),(22694324,'Great Black-backed Gull','Larus marinus','LC',7),(22694343,'Glaucous Gull','Larus hyperboreus','LC',7),(22694373,'Lesser Black-backed Gull','Larus fuscus','LC',7),(22694379,'Pallas\'s Gull','Ichthyaetus ichthyaetus','LC',7),(22694420,'Black-headed Gull','Chroicocephalus ridibundus','LC',7),(22694428,'Slender-billed Gull','Chroicocephalus genei','LC',7),(22694443,'Mediterranean Gull','Ichthyaetus melanocephalus','LC',7),(22694469,'Little Gull','Hydrocoloeus minutus','LC',7),(22694473,'Ivory Gull','Pagophila eburnea','NT',7),(22694476,'Ross\'s Gull','Rhodostethia rosea','LC',7),(22694479,'Sabine\'s Gull','Xema sabini','LC',7),(22694497,'Black-legged Kittiwake','Rissa tridactyla','V',7),(22694524,'Caspian Tern','Hydroprogne caspia','LC',18),(22694591,'Sandwich Tern','Thalasseus sandvicensis','LC',18),(22694601,'Roseate Tern','Sterna dougallii','LC',18),(22694623,'Common Tern','Sterna hirundo','LC',18),(22694629,'Arctic Tern','Sterna paradisaea','LC',18),(22694656,'Little Tern','Sternula albifrons','LC',18),(22694764,'Whiskered Tern','Chlidonias hybrida','LC',18),(22694782,'White-winged Tern','Chlidonias leucopterus','LC',18),(22694787,'Black Tern','Chlidonias niger','LC',18),(22694837,'Little Auk','Alle alle','LC',36),(22694841,'Common Murre','Uria aalge','LC',36),(22694847,'Thick-billed Murre','Uria lomvia','LC',36),(22694852,'Razorbill','Alca torda','NT',36),(22694861,'Black Guillemot','Cepphus grylle','LC',36),(22694927,'Atlantic Puffin','Fratercula arctica','V',36),(22694938,'Western Osprey','Pandion haliaetus','LC',64),(22694989,'European Honey Buzzard','Pernis apivorus','LC',17),(22695028,'Black-winged Kite','Elanus caeruleus','LC',17),(22695072,'Red Kite','Milvus milvus','NT',17),(22695130,'Pallas\'s Fish Eagle','Haliaeetus leucoryphus','E',17),(22695137,'White-tailed Eagle','Haliaeetus albicilla','LC',17),(22695174,'Bearded Vulture','Gypaetus barbatus','NT',17),(22695180,'Egyptian Vulture','Neophron percnopterus','E',17),(22695219,'Griffon Vulture','Gyps fulvus','LC',17),(22695231,'Cinereous Vulture','Aegypius monachus','NT',17),(22695344,'Western Marsh Harrier','Circus aeruginosus','LC',17),(22695396,'Pallid Harrier','Circus macrourus','NT',17),(22695405,'Montagu\'s Harrier','Circus pygargus','LC',17),(22695499,'Levant Sparrowhawk','Accipiter brevipes','LC',17),(22695624,'Eurasian Sparrowhawk','Accipiter nisus','LC',17),(22695683,'Northern Goshawk','Accipiter gentilis','LC',17),(22695973,'Rough-legged Buzzard','Buteo lagopus','LC',17),(22696022,'Lesser Spotted Eagle','Clanga pomarina','LC',17),(22696027,'Greater Spotted Eagle','Clanga clanga','V',17),(22696038,'Steppe Eagle','Aquila nipalensis','E',17),(22696048,'Eastern Imperial Eagle','Aquila heliaca','V',17),(22696060,'Golden Eagle','Aquila chrysaetos','LC',17),(22696092,'Booted Eagle','Hieraaetus pennatus','LC',17),(22696357,'Lesser Kestrel','Falco naumanni','LC',15),(22696362,'Common Kestrel','Falco tinnunculus','LC',15),(22696432,'Red-footed Falcon','Falco vespertinus','NT',15),(22696442,'Eleonora\'s Falcon','Falco eleonorae','LC',15),(22696453,'Merlin','Falco columbarius','LC',15),(22696460,'Eurasian Hobby','Falco subbuteo','LC',15),(22696495,'Saker Falcon','Falco cherrug','E',15),(22696500,'Gyrfalcon','Falco rusticolus','LC',15),(22696545,'Little Grebe','Tachybaptus ruficollis','LC',24),(22696574,'Pied-billed Grebe','Podilymbus podiceps','LC',24),(22696599,'Red-necked Grebe','Podiceps grisegena','LC',24),(22696602,'Great Crested Grebe','Podiceps cristatus','LC',24),(22696606,'Horned Grebe','Podiceps auritus','V',24),(22696610,'Black-necked Grebe','Podiceps nigricollis','LC',24),(22696657,'Northern Gannet','Morus bassanus','LC',62),(22696734,'Pygmy Cormorant','Microcarbo pygmaeus','LC',8),(22696792,'Great Cormorant','Phalacrocorax carbo','LC',8),(22696894,'European Shag','Phalacrocorax aristotelis','LC',8),(22696993,'Grey Heron','Ardea cinerea','LC',38),(22697031,'Purple Heron','Ardea purpurea','LC',38),(22697043,'Great Egret','Ardea alba','LC',38),(22697109,'Western Cattle Egret','Bubulcus ibis','LC',38),(22697123,'Squacco Heron','Ardeola ralloides','LC',38),(22697211,'Black-crowned Night Heron','Nycticorax nycticorax','LC',38),(22697346,'Eurasian Bittern','Botaurus stellaris','LC',38),(22697360,'Greater Flamingo','Phoenicopterus roseus','LC',22),(22697422,'Glossy Ibis','Plegadis falcinellus','LC',63),(22697555,'Eurasian Spoonbill','Platalea leucorodia','LC',63),(22697590,'Great White Pelican','Pelecanus onocrotalus','LC',42),(22697599,'Dalmatian Pelican','Pelecanus crispus','NT',42),(22697669,'Black Stork','Ciconia nigra','LC',49),(22697691,'White Stork','Ciconia ciconia','LC',49),(22697829,'Red-throated Loon','Gavia stellata','LC',30),(22697834,'Black-throated Loon','Gavia arctica','LC',30),(22697842,'Common Loon','Gavia immer','LC',30),(22697847,'Yellow-billed Loon','Gavia adamsii','NT',30),(22697866,'Northern Fulmar','Fulmarus glacialis','LC',16),(22698209,'Sooty Shearwater','Ardenna grisea','NT',16),(22698436,'Wilson\'s Storm Petrel','Oceanites oceanicus','LC',NULL),(22698477,'European Storm Petrel','Hydrobates pelagicus','LC',46),(22705001,'Red-backed Shrike','Lanius collurio','LC',27),(22705038,'Lesser Grey Shrike','Lanius minor','LC',27),(22705095,'Woodchat Shrike','Lanius senator','LC',27),(22705775,'Siberian Jay','Perisoreus infaustus','LC',21),(22705921,'Alpine Chough','Pyrrhocorax graculus','LC',21),(22705929,'Western Jackdaw','Corvus monedula','LC',21),(22705983,'Rook','Corvus frugilegus','LC',21),(22706016,'Carrion Crow','Corvus corone','LC',21),(22708146,'Bohemian Waxwing','Bombycilla garrulus','LC',57),(22708156,'White-throated Dipper','Cinclus cinclus','LC',34),(22708257,'Common Rock Thrush','Monticola saxatilis','LC',11),(22708382,'Siberian Thrush','Geokichla sibirica','LC',9),(22708768,'Ring Ouzel','Turdus torquatus','LC',9),(22708793,'Eyebrowed Thrush','Turdus obscurus','LC',9),(22708816,'Fieldfare','Turdus pilaris','LC',9),(22708819,'Redwing','Turdus iliacus','NT',9),(22708822,'Song Thrush','Turdus philomelos','LC',9),(22708829,'Mistle Thrush','Turdus viscivorus','LC',9),(22709192,'Spotted Flycatcher','Muscicapa striata','LC',11),(22709308,'European Pied Flycatcher','Ficedula hypoleuca','LC',11),(22709315,'Collared Flycatcher','Ficedula albicollis','LC',11),(22709675,'European Robin','Erithacus rubecula','LC',11),(22709691,'Thrush Nightingale','Luscinia luscinia','LC',11),(22709696,'Common Nightingale','Luscinia megarhynchos','LC',11),(22709707,'Bluethroat','Luscinia svecica','LC',11),(22710051,'Black Redstart','Phoenicurus ochruros','LC',11),(22710055,'Common Redstart','Phoenicurus phoenicurus','LC',11),(22710156,'Whinchat','Saxicola rubetra','LC',11),(22710184,'European Stonechat','Saxicola (torquatus) rubicola','LC',11),(22710302,'Black-eared Wheatear','Oenanthe hispanica','LC',11),(22710308,'Pied Wheatear','Oenanthe pleschanka','LC',11),(22710325,'Desert Wheatear','Oenanthe deserti','LC',11),(22710333,'Isabelline Wheatear','Oenanthe isabellina','LC',11),(22711234,'Wallcreeper','Tichodroma muraria','LC',60),(22711249,'Short-toed Treecreeper','Certhia brachydactyla','LC',33),(22711703,'Willow Tit','Poecile montanus','LC',44),(22711810,'European Crested Tit','Lophophanes cristatus','LC',44),(22712252,'Barn Swallow','Hirundo rustica','LC',31),(22714445,'Cetti\'s Warbler','Cettia cetti','LC',50),(22714657,'Common Grasshopper Warbler','Locustella naevia','LC',1),(22714664,'Pallas\'s Grasshopper Warbler','Locustella certhiola','LC',1),(22714679,'River Warbler','Locustella fluviatilis','LC',1),(22714684,'Savi\'s Warbler','Locustella luscinioides','LC',1),(22714693,'Moustached Warbler','Acrocephalus melanopogon','LC',12),(22714696,'Aquatic Warbler','Acrocephalus paludicola','V',12),(22714700,'Sedge Warbler','Acrocephalus schoenobaenus','LC',12),(22714714,'Paddyfield Warbler','Acrocephalus agricola','LC',12),(22714722,'Eurasian Reed Warbler','Acrocephalus scirpaceus','LC',12),(22714736,'Blyth\'s Reed Warbler','Acrocephalus dumetorum','LC',12),(22714741,'Marsh Warbler','Acrocephalus palustris','LC',12),(22714912,'Melodious Warbler','Hippolais polyglotta','LC',12),(22714916,'Icterine Warbler','Hippolais icterina','LC',12),(22715240,'Willow Warbler','Phylloscopus trochilus','LC',4),(22715255,'Western Bonelli\'s Warbler','Phylloscopus bonelli','LC',4),(22715260,'Wood Warbler','Phylloscopus sibilatrix','LC',4),(22715264,'Dusky Warbler','Phylloscopus fuscatus','LC',4),(22715284,'Radde\'s Warbler','Phylloscopus schwarzi','LC',4),(22715310,'Yellow-browed Warbler','Phylloscopus inornatus','LC',4),(22716776,'Bearded Reedling','Panurus biarmicus','LC',10),(22716901,'Eurasian Blackcap','Sylvia atricapilla','LC',29),(22716906,'Garden Warbler','Sylvia borin','LC',29),(22716910,'Common Whitethroat','Sylvia communis','LC',29),(22716937,'Barred Warbler','Sylvia nisoria','LC',29),(22716959,'Sardinian Warbler','Sylvia melanocephala','LC',29),(22717285,'Calandra Lark','Melanocorypha calandra','LC',14),(22717298,'White-winged Lark','Alauda leucoptera','LC',14),(22717301,'Black Lark','Melanocorypha yeltoniensis','LC',14),(22717383,'Crested Lark','Galerida cristata','LC',14),(22717411,'Woodlark','Lullula arborea','LC',14),(22717434,'Horned Lark','Eremophila alpestris','LC',14),(22718348,'White Wagtail','Motacilla alba','LC',13),(22718379,'Citrine Wagtail','Motacilla citreola','LC',13),(22718392,'Grey Wagtail','Motacilla cinerea','LC',13),(22718501,'Tawny Pipit','Anthus campestris','LC',13),(22718546,'Tree Pipit','Anthus trivialis','LC',13),(22718550,'Olive-backed Pipit','Anthus hodgsoni','LC',13),(22718553,'Pechora Pipit','Anthus gustavi','LC',13),(22718556,'Meadow Pipit','Anthus pratensis','NT',13),(22718560,'Red-throated Pipit','Anthus cervinus','LC',13),(22718567,'Eurasian Rock Pipit','Anthus petrosus','LC',13),(22718571,'Water Pipit','Anthus spinoletta','LC',13),(22718617,'Alpine Accentor','Prunella collaris','LC',35),(22718630,'Siberian Accentor','Prunella montanella','LC',35),(22718651,'Dunnock','Prunella modularis','LC',35),(22724836,'Velvet Scoter','Melanitta fusca','V',3),(22724879,'Common Scoter','Melanitta nigra','LC',3),(22725022,'European Green Woodpecker','Picus viridis','LC',2),(22725141,'Water Rail','Rallus aquaticus','LC',28),(22725469,'Tawny Owl','Strix aluco','LC',25),(22726503,'Grey-headed Woodpecker','Picus canus','LC',2),(22727124,'White-backed Woodpecker','Dendrocopos leucotos','LC',2),(22727137,'Eurasian Three-toed Woodpecker','Picoides tridactylus','LC',2),(22727487,'Kentish Plover','Charadrius alexandrinus','LC',20),(22727733,'Hen Harrier','Circus cyaneus','LC',17),(22727811,'Eurasian Collared Dove','Streptopelia decaocto','LC',23),(22727969,'Black-winged Stilt','Himantopus himantopus','LC',40),(22728245,'Houbara Bustard','Chlamydotis undulata','V',48),(22728432,'Balearic Shearwater','Puffinus mauretanicus','CE',16),(22729514,'Hume\'s Leaf Warbler','Phylloscopus humei','LC',4),(22729533,'Iberian Grey Shrike','Lanius meridionalis','V',27),(22729717,'Eurasian Teal','Anas crecca','LC',3),(22729877,'Iceland Gull','Larus glaucoides','LC',7),(22733462,'Eurasian Oystercatcher','Haematopus ostralegus','NT',66),(22734216,'Short-toed Snake Eagle','Circaetus gallicus','LC',17),(22734364,'Pallas\'s Leaf Warbler','Phylloscopus proregulus','LC',4),(22734972,'Black Kite','Milvus migrans','LC',17),(22734992,'Lesser Whitethroat','Sylvia curruca','LC',29),(22734997,'Goldcrest','Regulus regulus','LC',41),(22735002,'Common Firecrest','Regulus ignicapilla','LC',41),(22735060,'Eurasian Treecreeper','Certhia familiaris','LC',33),(22735766,'Little Bittern','Ixobrychus minutus','LC',38),(22735909,'Red-breasted Flycatcher','Ficedula parva','LC',11),(22735929,'Caspian Gull','Larus cachinnans','LC',7),(22735965,'Coal Tit','Periparus ater','LC',44),(22735985,'Azure Tit','Cyanistes cyanus','LC',44),(22735990,'Great Tit','Parus major','LC',44),(22735995,'Marsh Tit','Poecile palustris','LC',44),(22736148,'Eurasian Penduline Tit','Remiz pendulinus','LC',61),(22736562,'Long-legged Buzzard','Buteo rufinus','LC',17),(45061132,'Scopoli\'s Shearwater','Calonectris diomedea','LC',16),(45100023,'Common Pheasant','Phasianus colchicus','LC',26),(45111439,'Eurasian Stone-curlew','Burhinus oedicnemus','LC',67),(45354964,'Peregrine Falcon','Falco peregrinus','LC',15),(61695117,'Common Buzzard','Buteo buteo','LC',17),(62026481,'Gull-billed Tern','Gelochelidon nilotica','LC',18),(62030608,'European Herring Gull','Larus argentatus','LC',7),(62120190,'Common Moorhen','Gallinula chloropus','LC',28),(62774969,'Little Egret','Egretta garzetta','LC',38),(102998555,'Eurasian Skylark','Alauda arvensis','LC',14),(103692938,'Eurasian Golden Oriole','Oriolus oriolus','LC',39),(103718693,'Isabelline Shrike','Lanius isabellinus','LC',27),(103718932,'Great Grey Shrike','Lanius excubitor','LC',27),(103723684,'Eurasian Jay','Garrulus glandarius','LC',21),(103727048,'Eurasian Magpie','Pica pica','LC',21),(103727252,'Spotted Nutcracker','Nucifraga caryocatactes','LC',21),(103761667,'Eurasian Blue Tit','Cyanistes caeruleus','LC',44),(103766207,'Greater Short-toed Lark','Calandrella brachydactyla','LC',14),(103773898,'Northern Wheatear','Oenanthe oenanthe','LC',11),(103811886,'Common House Martin','Delichon urbicum','LC',31),(103812643,'Red-rumped Swallow','Cecropis daurica','LC',31),(103815961,'Sand Martin','Riparia riparia','LC',31),(103821389,'Richard\'s Pipit','Anthus richardi','LC',13),(103822349,'Western Yellow Wagtail','Motacilla flava','LC',13),(103843725,'Common Chiffchaff','Phylloscopus collybita','LC',4),(103845399,'Greenish Warbler','Phylloscopus trochiloides','LC',4),(103845882,'Arctic Warbler','Phylloscopus borealis','LC',4),(103871923,'Long-tailed Tit','Aegithalos caudatus','LC',58),(103874024,'Subalpine Warbler','Sylvia cantillans','LC',29),(103879357,'Scaly Thrush','Zoothera dauma','LC',9),(103879804,'Eurasian Nuthatch','Sitta europaea','LC',59),(103883277,'Eurasian Wren','Troglodytes troglodytes','LC',37),(103888106,'Common Blackbird','Turdus merula','LC',9),(103892088,'Naumann\'s Thrush','Turdus naumanni','LC',9),(103892167,'Red-throated Thrush','Turdus ruficollis','LC',9),(104317670,'Great Reed Warbler','Acrocephalus arundinaceus','LC',12),(105294257,'Red-flanked Bluetail','Tarsiger cyanurus','LC',11),(132438298,'Leach\'s Storm Petrel','Hydrobates leucorhous','V',46);
/*!40000 ALTER TABLE `birds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `families`
--

DROP TABLE IF EXISTS `families`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `families` (
  `idFamily` int NOT NULL,
  `Common_name` varchar(100) NOT NULL,
  `Scientific_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idFamily`),
  UNIQUE KEY `Common_name_UNIQUE` (`Common_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `families`
--

LOCK TABLES `families` WRITE;
/*!40000 ALTER TABLE `families` DISABLE KEYS */;
INSERT INTO `families` VALUES (1,'Grass-warblers and allies / Old World Warblers','Locustellidae / Sylviidae'),(2,'Woodpeckers','Picidae'),(3,'Ducks, Geese and Swans','Anatidae'),(4,'Leaf-warblers and allies / Old World Warblers','Phylloscopidae / Sylviidae'),(5,'Sandpipers and Allies','Scolopacidae'),(6,'Pratincoles, Coursers','Glareolidae'),(7,'Gulls','Laridae'),(8,'Cormorants','Phalacrocoracidae'),(9,'Thrushes and Allies','Turdidae'),(10,'Bearded Reedling / Old World Warblers','Panuridae / Sylviidae'),(11,'Old World Flycatchers','Muscicapidae'),(12,'Marsh- and Tree-warblers / Old World Warblers','Acrocephalidae / Sylviidae'),(13,'Pipits and Wagtails','Motacillidae'),(14,'Larks','Alaudidae'),(15,'Falcons and Caracaras','Falconidae'),(16,'Petrels and Shearwaters','Procellariidae'),(17,'Hawks and Eagles','Accipitridae'),(18,'Gulls / Terns','Laridae : Sterninae / Sternidae'),(19,'Sandgrouse','Pteroclidae'),(20,'Plovers','Charadriidae'),(21,'Crows','Corvidae'),(22,'Flamingos','Phoenicopteridae'),(23,'Pigeons and Doves','Columbidae'),(24,'Grebes','Podicipedidae'),(25,'Typical Owls','Strigidae'),(26,'Pheasants and Partridges','Phasianidae'),(27,'Shrikes','Laniidae'),(28,'Rails, Gallinules and Coots','Rallidae'),(29,'Old World Warblers','Sylviidae'),(30,'Loons','Gaviidae'),(31,'Swallows and Martins','Hirundinidae'),(32,'Nightjars','Caprimulgidae'),(33,'Treecreepers','Certhiidae'),(34,'Dippers','Cinclidae'),(35,'Accentors','Prunellidae'),(36,'Auks','Alcidae'),(37,'Wrens','Troglodytidae'),(38,'Herons','Ardeidae'),(39,'Orioles','Oriolidae'),(40,'Avocets, Stilts','Recurvirostridae'),(41,'Kinglets & Firecrests','Regulidae'),(42,'Pelicans','Pelecanidae'),(43,'Bee-Eaters','Meropidae'),(44,'Tits and Chickadees','Paridae'),(45,'Swifts','Apodidae'),(46,'Storm-Petrels','Hydrobatidae'),(47,'Skuas','Stercorariidae'),(48,'Bustards','Otididae'),(49,'Storks','Ciconiidae'),(50,'Ground-warblers and allies / * (Scotocercidae : Cettiinae) / Old World Warblers','Cettiidae / Scotocercidae : Cettiinae / Sylviidae'),(51,'Cuckoos','Cuculidae'),(52,'Barn-Owls','Tytonidae'),(53,'Kingfishers','Alcedinidae'),(54,'Kingfishers : Water Kingfishers','Alcedinidae : Cerylinae / Cerylidae'),(55,'Rollers','Coraciidae'),(56,'Hoopoes','Upupidae'),(57,'Waxwings','Bombycillidae'),(58,'Long-tailed Tits / Old World Warblers','Aegithalidae / Sylviidae'),(59,'Nuthatches','Sittidae'),(60,'Wallcreeper / Nuthatches : Wallcreeper','Tichodromidae / Sittidae : Tichodromadinae'),(61,'Penduline Tits / Tits and Chickadees','Remizidae / Paridae'),(62,'Gannets and Boobies','Sulidae'),(63,'Ibises and Spoonbills','Threskiornithidae'),(64,'Osprey','Pandionidae'),(65,'Cranes','Gruidae'),(66,'Oystercatchers','Haematopodidae'),(67,'Thick-Knees','Burhinidae');
/*!40000 ALTER TABLE `families` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `redlistcodes`
--

DROP TABLE IF EXISTS `redlistcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `redlistcodes` (
  `Code` varchar(5) NOT NULL,
  `Code_EN` varchar(45) DEFAULT NULL,
  `Code_NL` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redlistcodes`
--

LOCK TABLES `redlistcodes` WRITE;
/*!40000 ALTER TABLE `redlistcodes` DISABLE KEYS */;
INSERT INTO `redlistcodes` VALUES ('CE','Critically Endangered','Ernstig bedreigd'),('E','Endangered','Bedreigd'),('LC','Least Concern','Niet bedreigd (veilig)'),('NT','Near threatened','Gevoelig'),('V','Vulnerable','Kwetsbaar');
/*!40000 ALTER TABLE `redlistcodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `01_bedreigingsoverzicht`
--

/*!50001 DROP VIEW IF EXISTS `01_bedreigingsoverzicht`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `01_bedreigingsoverzicht` AS select `r`.`Code_NL` AS `BEDREIGING`,`f`.`Common_name` AS `FAMILIE`,`b`.`Common_name` AS `VOGELNAAM` from ((`birds` `b` join `families` `f` on((`b`.`FamilyID` = `f`.`idFamily`))) join `redlistcodes` `r` on((`b`.`RedlistCode` = `r`.`Code`))) where (`r`.`Code` <> 'LC') order by `r`.`Code_NL`,`f`.`Common_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `02_aantal_vogels_per_bedreiging`
--

/*!50001 DROP VIEW IF EXISTS `02_aantal_vogels_per_bedreiging`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `02_aantal_vogels_per_bedreiging` AS select `r`.`Code_NL` AS `BEDREIGING`,count(`b`.`RedlistCode`) AS `AANTAL` from (`birds` `b` join `redlistcodes` `r` on((`b`.`RedlistCode` = `r`.`Code`))) group by `BEDREIGING` order by `AANTAL` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `03_bedreigde_aantallen_perfamilie`
--

/*!50001 DROP VIEW IF EXISTS `03_bedreigde_aantallen_perfamilie`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `03_bedreigde_aantallen_perfamilie` AS select `r`.`Code_NL` AS `BEDREIGING`,`f`.`Common_name` AS `FAMILIE`,count(`b`.`FamilyID`) AS `AANTAL VOGELS` from ((`birds` `b` join `families` `f` on((`b`.`FamilyID` = `f`.`idFamily`))) join `redlistcodes` `r` on((`b`.`RedlistCode` = `r`.`Code`))) group by `BEDREIGING`,`FAMILIE` order by `BEDREIGING`,`FAMILIE` */;
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

-- Dump completed on 2020-04-30 16:49:07
