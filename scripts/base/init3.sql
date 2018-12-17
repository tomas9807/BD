-- MySQL dump 10.13  Distrib 8.0.12, for Linux (x86_64)
--
-- Host: localhost    Database: marvel
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Afiliacion`
--

DROP TABLE IF EXISTS `Afiliacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Afiliacion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Afiliacion`
--

LOCK TABLES `Afiliacion` WRITE;
/*!40000 ALTER TABLE `Afiliacion` DISABLE KEYS */;
INSERT INTO `Afiliacion` VALUES (1,'X-Men','The X-Men are a privately owned security force created to harbor peace between the emerging homo superior, nicknamed \"Mutants\" and baseline humans. '),(2,'Avengers','The Avengers are a team of extraordinary individuals with special abilities and the will to do good in the world.'),(3,'Defenders (Manhattan)','When the trio of heroes Daredevil, Iron Fist and Luke Cage interfered with the operations of rising crime lord Diamondback, they were dealt heavy blows in retaliation.As they were looking for leads on Diamondback together with Luke\'s wife Jessica Jones, Daredevil noticed it could help people know that they actively worked together. They continued operating as a team to investigate Diamondback, and eventually became known as the Defenders.'),(4,'Defenders','Continuously thrown together by various circumstances, the team came to call themselves The Defenders and protect Earth from usually otherworldly attacks. Many members of the team aren\'t particularly fond of their teammates, with fights frequently breaking out and many labeling the group as a \'non-team\' for the way they act'),(5,'Midnight Sons','Nine beings with ties to the occult were drawn together by Doctor Strange to battle Lilith and her demonic children, the Lilin'),(6,'Heroes for Hire (Power Man & Iron Fist)','Heroes For Hire, Inc. is a small business licensed by the state of New York which offered a full line of professional investigation and protection services.'),(7,'Rand Corporation','Entrepreneur Wendell Rand and co-founder Harold Meachum established Rand-Meachum Incorporated as foundation for their research and investment enterprise.'),(8,'Immortal Weapons','The champions of the Seven Capital Cities of Heaven, each are skilled in martial arts and able to manipulate Chi energy in various ways.'),(9,'Heroes for Hire (Knight & Wing)','During the Civil War; Misty Knight and Colleen Wing were contacted by Iron Man, Reed Richards, and Spider-Man to reform Heroes for Hire in order to track down superhumans refusing to comply with the Superhuman Registration Act. '),(10,'New Avengers','The New Avengers first assembled by chance during a breakout occurred at the Raft, an island prison designed to hold super-criminals. Luke Cage (acting as a hired bodyguard) was escorting attorneys Foggy Nelson and Matt Murdock (Daredevil) to meet with the Sentry as it was occurring. Spider-Man, Captain America, and Iron Man all arrived to help keep order.'),(11,'Thunderbolts','Conceived as a new incarnation of the Masters of Evil, the Thunderbolts were initially formed by Baron Zemo.'),(12,'Heroes for Hire (Oracle Inc.)','Following up on the status of the Oracle corporation that Namor, Jim Hammond (the Golden Age Human Torch) and Danny Rand decided to set up a new Heroes For Hire organization.'),(13,'Secret Avengers (Civil War)','The Secret Avengers were founded by Captain America in response to the Superhuman Registration Act, set up precisely for those who wanted to fight against Iron Man\'s initiative for superhuman registration.'),(14,'Secret Defenders','With the Defenders disbanded, Dr. Strange organized his own \"Secret Defenders\" project, recruiting whichever heroes he required for a given mission, with no ongoing members.'),(15,'Defenders for a Day','When the Defenders\' associate Dollar Bill created a documentary about the group and aired it on television without their permission, it attracted a group of super-heroes who were interested in joining the group. '),(16,'Future Iron Man\'s Team','This team was formed by Iron Man from the future of various heroes from the past '),(17,'Mighty','In order to retaliate against the Worthy, Captain America brought Ms. Marvel, Iron Fist, Doctor Strange, Iron Man, Black Widow, Hawkeye, Red She-Hulk, Spider-Man, and Wolverine to Asgard to bless certain items in order to match the strength of the Worthy.'),(18,'Fantastic Four','The Fantastic Four are a group of scientific explorers lead by Dr. Reed Richards. After the team gained powers during a impromptu trip to space; Sue Storm, Johnny Storm and pilot Ben Grimm decided to remain together to explore the boundaries of science'),(19,'Future Foundation',' a new group of free-thinking individuals to plan for a better future for all of humanity and Earth. '),(20,'Illuminati','The Illuminati were a covert think-tank originally consisting of Mister Fantastic, Iron Man, Professor X, Doctor Strange, Black Bolt, and Namor. '),(21,'Interdimensional Council of Reeds (Multiverse)','The Council was founded officially by three versions of Reed Richards who had each acquired their universes\' Infinity Gauntlet.'),(22,'Knights of the Atomic Round Table','When the Fantastic Four and the Avengers sacrificed their lives to destroy Onslaught, Franklin Richards, the son of the FF\'s Mr. Fantastic and Invisible Woman subconsciously created a pocket universe to save their lives. '),(23,'Headbangers','The Headbangers were a collection of members of Alpha Flight and the Fantastic Four who were controlled by Headlok.'),(24,'Amazing Arachnids ',NULL),(25,'Warriors of the Great Web','The Warriors of the Great Web is a team formed by Spider-UK and Spider-Girl to help any reality that is in need of help.'),(26,'Spider-Army','Spider-powered beings from across the Multiverse joining forces to defeat the Inheritors'),(27,'Superior Spider-Army','Spider-powered beings from across the Multiverse to defeat the Totem hunter Karn'),(28,'Chronos Corps','The Chronos Corps are a group of time-displaced individuals Kang the Conqueror rescued from certain death at the hands of their own dying universes.'),(29,'Anachronauts','Personal guard of Kang the Conqueror'),(30,'Council of Kangs ','A group composed by Prime Kang and two of Kang\'s divergences that were tricked by their future counterpart Immortus to eliminate all divergent Kangs in the Multiverse so that Kang\'s destiny ended with him becoming Immortus. Immortus seemingly succeeded in this task for a time.'),(31,'Council of Cross-Time Kangs','The Council of Cross-Time Kangs was a group of several Humans, aliens and other creatures who took the guise of Kang the Conqueror after defeating the various robots used by the Prime Kang to rule multiple realities at the same time.'),(32,'Legion Accursed','Mephisto sent his agent Bitterhorn out to Earth to recruit an army of super-villains to battle the Beyonder. Bitterhorn begins by making deals with the Juggernaut, Electro, Baron Mordo, Absorbing Man and Titania. '),(33,'Hel-Rangers','The Hel-Rangers consisted of exiled inhabitants from other domains due to crimes they had committed and were sent to The Shield forever to guard the rest of Battleworld from the Zombies of the Deadlands, the Ultron Sentinels of Perfection, and the Annihilation Wave of New Xandar.'),(34,'Sons of Yinsen','A number of young men who had been enslaved by Wong-Chu learned of Ho Yinsen and Iron Man.'),(35,'Lethal Legion','The Lethal Legion were a super-villain team gathered by Grim Reaper to defeat the Avengers.'),(36,'Masters of Evil','The Masters of Evil were a team of supervillains.'),(37,'Gods of Asgard','The Asgardians are a humanoid race of extradimensional beings that hail from Asgard, a small pocket-dimension adjacent to Earth. '),(38,'Hell Lords','The Hell-Lords are powerful demons each in control of their respective \"Hell\" dimensions and are known to use the title of \"Satan\" to manipulate mortals. ');
/*!40000 ALTER TABLE `Afiliacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Afiliacion_Personaje`
--

DROP TABLE IF EXISTS `Afiliacion_Personaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Afiliacion_Personaje` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_competidor` int(10) unsigned DEFAULT NULL,
  `id_personaje` int(10) unsigned DEFAULT NULL,
  `id_base_afiliacion` int(10) unsigned NOT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_personaje` (`id_personaje`),
  KEY `id_competidor` (`id_competidor`),
  KEY `id_base_afiliacion` (`id_base_afiliacion`),
  CONSTRAINT `Afiliacion_Personaje_ibfk_1` FOREIGN KEY (`id_personaje`) REFERENCES `Personaje_NoCompetidor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Afiliacion_Personaje_ibfk_2` FOREIGN KEY (`id_competidor`) REFERENCES `Personaje_Competidor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Afiliacion_Personaje_ibfk_3` FOREIGN KEY (`id_base_afiliacion`) REFERENCES `Base_Afiliacion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Afiliacion_Personaje`
--

LOCK TABLES `Afiliacion_Personaje` WRITE;
/*!40000 ALTER TABLE `Afiliacion_Personaje` DISABLE KEYS */;
/*!40000 ALTER TABLE `Afiliacion_Personaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Alias`
--

DROP TABLE IF EXISTS `Alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Alias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_competidor` int(10) unsigned NOT NULL,
  `nombre` varchar(256) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`),
  KEY `id_competidor` (`id_competidor`),
  CONSTRAINT `Alias_ibfk_1` FOREIGN KEY (`id_competidor`) REFERENCES `Personaje_Competidor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Alias`
--

LOCK TABLES `Alias` WRITE;
/*!40000 ALTER TABLE `Alias` DISABLE KEYS */;
/*!40000 ALTER TABLE `Alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Alifiacion`
--

DROP TABLE IF EXISTS `Alifiacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Alifiacion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) NOT NULL,
  `descripcion` text NOT NULL,
  `indificador_aumento` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Alifiacion`
--

LOCK TABLES `Alifiacion` WRITE;
/*!40000 ALTER TABLE `Alifiacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `Alifiacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Base_Afiliacion`
--

DROP TABLE IF EXISTS `Base_Afiliacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Base_Afiliacion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_base` int(10) unsigned NOT NULL,
  `id_afiliacion` int(10) unsigned NOT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`,`id_base`,`id_afiliacion`),
  KEY `id_afiliacion` (`id_afiliacion`),
  KEY `Base_Afiliacion_ibfk_1` (`id_base`),
  CONSTRAINT `Base_Afiliacion_ibfk_1` FOREIGN KEY (`id_base`) REFERENCES `Base_Operacion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Base_Afiliacion_ibfk_2` FOREIGN KEY (`id_afiliacion`) REFERENCES `Alifiacion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Base_Afiliacion`
--

LOCK TABLES `Base_Afiliacion` WRITE;
/*!40000 ALTER TABLE `Base_Afiliacion` DISABLE KEYS */;
INSERT INTO `Base_Afiliacion` VALUES (1,1,1,0),(2,2,1,1),(3,3,1,0),(4,4,1,0),(5,5,1,NULL),(6,6,1,NULL),(7,7,1,NULL),(8,8,3,NULL),(9,9,4,1),(10,12,4,0),(11,13,4,0),(12,14,4,0),(13,9,5,0),(14,10,6,NULL),(15,11,7,0),(16,15,9,0),(17,16,10,0),(18,17,10,0),(19,18,10,0),(20,19,11,0),(21,20,11,0),(22,21,11,0),(23,22,11,0),(24,23,11,0),(25,24,11,0),(26,25,12,0),(27,26,13,0),(28,27,14,0),(29,28,15,0),(30,29,16,0),(31,30,17,0),(32,31,18,0),(33,32,18,0),(34,33,18,0),(35,34,18,0),(36,35,18,0),(37,23,18,0),(38,36,19,0),(39,34,19,0),(40,37,19,0),(41,38,19,0),(42,39,19,0),(43,30,20,0),(44,41,20,0),(45,16,20,0),(46,34,20,0),(47,42,2,0),(48,43,2,0),(49,44,2,0),(50,34,2,0),(51,45,2,0),(52,46,2,0),(53,47,2,0),(54,48,2,0),(55,18,2,0),(56,16,2,0),(57,49,21,0),(58,50,22,0),(59,51,23,0),(60,52,24,0),(61,53,25,0),(62,54,25,0),(63,55,25,0),(64,53,26,0),(65,56,26,0),(66,57,26,0),(67,58,27,0),(68,59,27,0),(69,60,28,0),(70,61,29,1),(71,62,30,0),(72,63,31,0),(73,64,32,0),(74,65,33,0),(75,66,34,0),(76,67,35,0),(77,68,36,0),(78,69,36,0),(79,70,36,0),(80,71,36,0),(81,72,37,0),(82,73,37,0),(83,74,38,0);
/*!40000 ALTER TABLE `Base_Afiliacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Base_Operacion`
--

DROP TABLE IF EXISTS `Base_Operacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Base_Operacion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_lugar` int(10) unsigned DEFAULT NULL,
  `id_universo` int(10) unsigned DEFAULT NULL,
  `nombre` varchar(256) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`),
  KEY `id_lugar` (`id_lugar`),
  KEY `id_universo` (`id_universo`),
  CONSTRAINT `Base_Operacion_ibfk_1` FOREIGN KEY (`id_lugar`) REFERENCES `Lugar` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Base_Operacion_ibfk_2` FOREIGN KEY (`id_universo`) REFERENCES `Universo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Base_Operacion`
--

LOCK TABLES `Base_Operacion` WRITE;
/*!40000 ALTER TABLE `Base_Operacion` DISABLE KEYS */;
INSERT INTO `Base_Operacion` VALUES (1,1,68,'Xavier Institute for Higher Learning','is a special institute founded and led by Professor Charles Xavier to train young mutants in controlling their powers and help foster a friendly human-mutant relationship.'),(2,1,68,'Jean Grey School for Higher Learning','After Wolverine left Utopia, with many of the X-Men, he returned to the ruins of the Xavier Institute to found a new school, Jean Grey School for Higher Learning, in honor of the first student of Professor Xavier.[51]'),(3,1,70,'X-Haven','X-Haven was a sanctuary founded by Storm to protect mutantkind from both the danger of the Terrigen Mist and the ever-growing oppression her people faced.'),(4,1,71,'Utopia','Utopia was the main headquarters of the majority of the mutant population and the X-Men. '),(5,1,73,'Graymalkin Industries','After much debate and a rescue mission of a few AWOL X-Men, Scott Summers, with the financial help of Warren Worthington III, decided to relocate in San Francisco where the people, and mayor, were more accepting.'),(6,1,74,'Cooterman\'s Creek','Cooterman\'s Creek is a high-tech facility disguised as an abandoned town in the Australian Outback. '),(7,1,76,'Magneto\'s Island','used as a R&R location for Magneto and the X-Men / New Mutants due to its eldritch nature and eletronic systems, which masked it from the outside world.'),(8,1,65,'Manhattan (Defenders\' Base)',NULL),(9,1,77,'Sanctum Sanctorum','Also known as the Sanctum Sanctorum, the townhouse has served as the personal residence of Doctor Strange and formerly as the headquarters of the Defenders and the New Avengers.'),(10,1,78,'Headquarters of the Heroes for Hire',NULL),(11,1,78,'The Rand Building','The Rand Building is home to the Rand Corporation.'),(12,1,14,'Heart of Heaven','Once every 88 years, during a heavenly convergence, each of the Seven Capital Cities of Heaven occupy the same space and time to create a place called the Heart of Heaven.'),(13,1,66,'Richmond Riding Academy','served as an unofficial headquarters for the non-team the Defenders.'),(14,1,79,'Angel\'s Aerie','it served as \"New\" Defenders headquarters, when Beast tried to reorganize the Defenders team.'),(15,1,65,'Knightwing Restorations Inc. Office',NULL),(16,1,65,'Avengers Mansion','Located at 721 (or 890) Fifth Avenue in New York, this three-story townhouse was originally built in 1932 by industrialist Howard Stark as his Manhattan residence.'),(17,1,80,'Captain America\'s townhouse',NULL),(18,1,65,'Stark Tower','was designed by Tony Stark with the intention to serve as a gleaming beacon of modern architecture.'),(19,1,82,'Thunderbolts Clubhouse',NULL),(20,1,83,'The Raft','The Raft was a super maximum security prison for super-powered criminals'),(21,1,79,'Thunderbolt Mountain',NULL),(22,1,80,'Thunderbolts Headquarters',NULL),(23,1,85,'Four Freedoms Plaza','Four Freedoms Plaza was the replacement headquarters for the Fantastic Four when their original dwelling, the Baxter Building, was destroyed by Kristoff Vernard the adoptive son of Doctor Doom. '),(24,1,86,'Mount Charteris Mountain Base',NULL),(25,1,87,'Gem Theater','Luke Cage rented a 3rd story office/apartment at the Gem Theater for a number of years.'),(26,NULL,NULL,'Secret safehouse',NULL),(27,1,89,'Doctor Druid\'s Sanctum',NULL),(28,1,1,'Defenders Headquarters',NULL),(29,1,1,'Unlocated underwater base','Donald Birch\'s base'),(30,1,NULL,'Movil','la base de operaciones no tiene lugar fijo puede moverse a varios lados'),(31,1,90,'Ben Grimm\'s apartment building',NULL),(32,1,65,'Moon Girl\'s Secret Laboratory','Moon Girl\'s Secret Laboratory is located within the substructure of Public School 20 Anna Silver on the Lower East Side of Manhattan in New York City.'),(33,1,65,'Public School 20 Anna Silver','Public School 20 Anna Silver is a New York public school located on Essex Street in the Lower East Side neighborhood of Manhattan.'),(34,1,65,'Baxter Building','The Baxter Building is a 35-story building located at 42nd Street and Madison Avenue, Manhattan, New York City in the United States of America just a few blocks from the United Nations Headquarters.'),(35,1,65,'Antarctic Laboratory (Pier Four)','was the Fantastic Four\'s third temporarily base/home warehouse near the Hudson River following their return from Franklin\'s alternate universe and the destruction of Four Freedoms Plaza by the Thunderbolts.'),(36,15,NULL,'Movil a traves del Multiverso',NULL),(37,1,92,'Camp Hammond','The camp is primarily used to train drafted super powered young people in the United States who have to be registered with the federal government.'),(38,1,93,'Foundation (Space Station)','The Foundation is a orbital space station and education facility of the Future Foundation, built by Reed Richards in geosynchronous orbit above the Baxter Building.'),(39,1,94,'Vostok Station',NULL),(40,1,22,'Funtime, Inc. Facility','Funtime, Inc. was one of the many subsidiaries of the larger Stark Industries. Currently abandoned, it served as the main point of encounter of Iron Man and the Illuminati.'),(41,1,95,'Necropolis (Base)','The Necropolis is the Wakandan City of the Dead, where previous Black Panthers are buried.'),(42,1,14,'Avengers Mountain (Base)','According to Loki, the Progenitor was an Alpha Celestial who came to Earth four billion years ago after being infected by the Horde to die a sad and painful death. '),(43,1,82,'Polo Norte (Avengers\' Base)',NULL),(44,1,96,'Avengers Auxiliary Headquarters','The Avengers Auxiliary Headquarters was an underground warehouse set up by Tony Stark in case of emergencies.'),(45,1,97,'Avengers Hangar','After suffering from defunding, the Avengers moved their base of operations to an abandoned Stark Industries facility in New Jersey.'),(46,1,75,'Avengers Island (Hydrobase)','Originally built as a floating oceanography research station disguised to appear as a natural island in the Atlantic Ocean. '),(47,1,25,'Wakanda (Avengers\' Base)',NULL),(48,1,99,'K\'un-Lun (Avengers\' Base)',NULL),(49,15,NULL,'Interdimensional Council of Reeds (Base)',NULL),(50,1,100,'State University','State University is one of the best private university\'s in the United States of America. It is located in Hegeman, New York State.'),(51,1,101,'Tuktoyatuk','small town in the Yukon of Canada'),(52,15,NULL,'Amazing Arachnids (Base)',NULL),(53,10,14,'Loomworld','Loomworld was an Earth conquered by the Inheritors and is being used as their main domain to travel the Multiverse with the unwilling help of the Master Weaver\'s dimensional portals to hunt the Spider-Totems.'),(54,11,103,'Oscorp Tower','Oscorp was the main headquarter of the Oscorp until Liz Allan took over the building as the hub of Alchemax'),(55,11,104,'ChinaTown (Base)',NULL),(56,12,87,'Sims Tower','After one of his encounters with Morlun, Ezekiel Sims created Sims Tower to protect future generations of Spider-Totems. '),(57,13,68,'Central Park (Base)',NULL),(58,1,72,'Horizon University','It is staffed by the organization formerly known as the Parker Institute for Technology.'),(59,14,105,'Empire State University','Empire State University (ESU) officially Empire State University in the City of New York is a private, Ivy League, research university in Upper Manhattan, New York City.'),(60,15,NULL,'Chronos Corps (Base)',NULL),(61,1,NULL,'Chronopolis','Immortus/Kang\'s main city base in the future. From here, he rules all of his realms.'),(62,NULL,70,'Castle Limbo',NULL),(63,NULL,70,'Kang-Krossroads',NULL),(64,1,NULL,'Mephisto\'s Realm','The realm of Mephisto is but one of many \"death dimensions\". Time moves much more slowly here, a few days on Earth feel like many years here.'),(65,11,102,'Shield','The Shield is a giant wall that is one of Battleworld\'s most important structures. It isolates the three deadliest domains of Battleworld, Deadlands, Perfection and New Xandar from the rest of the planet.'),(66,1,NULL,'Sons of Yinsen (Base)',NULL),(67,1,NULL,'Lethal Legion (Base)',NULL),(68,1,107,'Under the Shadow Council',NULL),(69,1,108,'Under Crimson Cowl',NULL),(70,1,110,'Under Baron Heinrich Zemo',NULL),(71,1,14,'Masters of Evil\'s South America Base',NULL),(72,1,111,'Asgardia (Base)',NULL),(73,1,112,'Oklahoma (Base)',NULL),(74,15,NULL,'Hell Lords\' Various Bases',NULL);
/*!40000 ALTER TABLE `Base_Operacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Categoria`
--

DROP TABLE IF EXISTS `Categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Categoria` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categoria`
--

LOCK TABLES `Categoria` WRITE;
/*!40000 ALTER TABLE `Categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `Categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Color`
--

DROP TABLE IF EXISTS `Color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Color` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Color`
--

LOCK TABLES `Color` WRITE;
/*!40000 ALTER TABLE `Color` DISABLE KEYS */;
INSERT INTO `Color` VALUES (3,'Amarillo'),(10,'Anaranjado'),(1,'Azul'),(6,'Gris'),(7,'Marron'),(2,'Morado'),(8,'Negro'),(5,'Rojo'),(9,'Rosado'),(4,'Verde');
/*!40000 ALTER TABLE `Color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Enfrentamiento`
--

DROP TABLE IF EXISTS `Enfrentamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Enfrentamiento` (
  `id_competidor1` int(10) unsigned NOT NULL,
  `id_competidor2` int(10) unsigned NOT NULL,
  `fecha_hora_inicio` datetime NOT NULL,
  `tipo_etapa` tinyint(3) unsigned NOT NULL,
  `ganador` tinyint(3) unsigned DEFAULT NULL,
  `duracion` time NOT NULL,
  PRIMARY KEY (`id_competidor1`,`id_competidor2`),
  KEY `id_competidor2` (`id_competidor2`),
  CONSTRAINT `Enfrentamiento_ibfk_1` FOREIGN KEY (`id_competidor1`) REFERENCES `Inscrito` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Enfrentamiento_ibfk_2` FOREIGN KEY (`id_competidor2`) REFERENCES `Inscrito` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Enfrentamiento`
--

LOCK TABLES `Enfrentamiento` WRITE;
/*!40000 ALTER TABLE `Enfrentamiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `Enfrentamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Evento`
--

DROP TABLE IF EXISTS `Evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Evento` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fecha_hora_inicio` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Evento`
--

LOCK TABLES `Evento` WRITE;
/*!40000 ALTER TABLE `Evento` DISABLE KEYS */;
/*!40000 ALTER TABLE `Evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Habilidad`
--

DROP TABLE IF EXISTS `Habilidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Habilidad` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Habilidad`
--

LOCK TABLES `Habilidad` WRITE;
/*!40000 ALTER TABLE `Habilidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `Habilidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Habilidad_Competidor`
--

DROP TABLE IF EXISTS `Habilidad_Competidor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Habilidad_Competidor` (
  `id_competidor` int(10) unsigned NOT NULL,
  `id_habilidad` int(10) unsigned NOT NULL,
  `valor` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id_competidor`,`id_habilidad`),
  KEY `id_habilidad` (`id_habilidad`),
  CONSTRAINT `Habilidad_Competidor_ibfk_1` FOREIGN KEY (`id_competidor`) REFERENCES `Personaje_Competidor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Habilidad_Competidor_ibfk_2` FOREIGN KEY (`id_habilidad`) REFERENCES `Habilidad` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Habilidad_Competidor`
--

LOCK TABLES `Habilidad_Competidor` WRITE;
/*!40000 ALTER TABLE `Habilidad_Competidor` DISABLE KEYS */;
/*!40000 ALTER TABLE `Habilidad_Competidor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Inscrito`
--

DROP TABLE IF EXISTS `Inscrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Inscrito` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_evento` int(10) unsigned NOT NULL,
  `puntos_etapa1` tinyint(3) unsigned DEFAULT NULL,
  `grupo_id` int(10) unsigned NOT NULL,
  `id_afiliacion_personaje` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_evento` (`id_evento`),
  KEY `id_afiliacion_personaje` (`id_afiliacion_personaje`),
  CONSTRAINT `Inscrito_ibfk_1` FOREIGN KEY (`id_evento`) REFERENCES `Evento` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Inscrito_ibfk_2` FOREIGN KEY (`id_afiliacion_personaje`) REFERENCES `Afiliacion_Personaje` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Inscrito`
--

LOCK TABLES `Inscrito` WRITE;
/*!40000 ALTER TABLE `Inscrito` DISABLE KEYS */;
/*!40000 ALTER TABLE `Inscrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lugar`
--

DROP TABLE IF EXISTS `Lugar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Lugar` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_padre` int(10) unsigned DEFAULT NULL,
  `nombre` varchar(256) NOT NULL,
  `tipo` enum('universo','galaxia','planeta','mundo_mitologico','dimension_magica') DEFAULT NULL,
  `tipo_geografico` enum('pais','estado','ciudad','locale') DEFAULT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`),
  KEY `id_padre` (`id_padre`),
  CONSTRAINT `Lugar_ibfk_1` FOREIGN KEY (`id_padre`) REFERENCES `Lugar` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lugar`
--

LOCK TABLES `Lugar` WRITE;
/*!40000 ALTER TABLE `Lugar` DISABLE KEYS */;
/*!40000 ALTER TABLE `Lugar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Parafernalia`
--

DROP TABLE IF EXISTS `Parafernalia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Parafernalia` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) NOT NULL,
  `descripcion` varchar(256) DEFAULT NULL,
  `tipo` enum('arma','armadura','otro') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Parafernalia`
--

LOCK TABLES `Parafernalia` WRITE;
/*!40000 ALTER TABLE `Parafernalia` DISABLE KEYS */;
/*!40000 ALTER TABLE `Parafernalia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Parafernalia_Competidor`
--

DROP TABLE IF EXISTS `Parafernalia_Competidor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Parafernalia_Competidor` (
  `id_competidor` int(10) unsigned NOT NULL,
  `id_parafernalia` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_competidor`,`id_parafernalia`),
  KEY `id_parafernalia` (`id_parafernalia`),
  CONSTRAINT `Parafernalia_Competidor_ibfk_1` FOREIGN KEY (`id_competidor`) REFERENCES `Personaje_Competidor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Parafernalia_Competidor_ibfk_2` FOREIGN KEY (`id_parafernalia`) REFERENCES `Parafernalia` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Parafernalia_Competidor`
--

LOCK TABLES `Parafernalia_Competidor` WRITE;
/*!40000 ALTER TABLE `Parafernalia_Competidor` DISABLE KEYS */;
/*!40000 ALTER TABLE `Parafernalia_Competidor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Personaje_Competidor`
--

DROP TABLE IF EXISTS `Personaje_Competidor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Personaje_Competidor` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_original` varchar(256) NOT NULL,
  `nombre_real` varchar(256) NOT NULL,
  `apellido_real` varchar(256) NOT NULL,
  `biografia` text,
  `identidad` enum('publica','anonima') DEFAULT NULL,
  `moralidad` enum('heroe','villano','antiheroe') DEFAULT NULL,
  `altura` varchar(256) DEFAULT NULL,
  `altura_opcional` varchar(256) DEFAULT NULL,
  `peso` varchar(256) DEFAULT NULL,
  `peso_opcional` varchar(256) DEFAULT NULL,
  `estado_civil` enum('soltero','casado') DEFAULT NULL,
  `genero` enum('M','F','Otro') DEFAULT NULL,
  `color_ojos_id` int(10) unsigned NOT NULL,
  `color_pelo_id` int(10) unsigned NOT NULL,
  `id_lugar_nacimiento` int(10) unsigned NOT NULL,
  `foto_path` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `color_ojos_id` (`color_ojos_id`),
  KEY `color_pelo_id` (`color_pelo_id`),
  KEY `id_lugar_nacimiento` (`id_lugar_nacimiento`),
  CONSTRAINT `Personaje_Competidor_ibfk_1` FOREIGN KEY (`color_ojos_id`) REFERENCES `Color` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Personaje_Competidor_ibfk_2` FOREIGN KEY (`color_pelo_id`) REFERENCES `Color` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Personaje_Competidor_ibfk_3` FOREIGN KEY (`id_lugar_nacimiento`) REFERENCES `id_lugar_nacimiento` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Personaje_Competidor`
--

LOCK TABLES `Personaje_Competidor` WRITE;
/*!40000 ALTER TABLE `Personaje_Competidor` DISABLE KEYS */;
/*!40000 ALTER TABLE `Personaje_Competidor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Personaje_NoCompetidor`
--

DROP TABLE IF EXISTS `Personaje_NoCompetidor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Personaje_NoCompetidor` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) NOT NULL,
  `fallecido` tinyint(4) DEFAULT NULL,
  `genero` enum('M','F','Otro') DEFAULT NULL,
  `nombre_real` varchar(256) NOT NULL,
  `apellido_real` varchar(256) NOT NULL,
  `id_lugar_nacimiento` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_lugar_nacimiento` (`id_lugar_nacimiento`),
  CONSTRAINT `Personaje_NoCompetidor_ibfk_1` FOREIGN KEY (`id_lugar_nacimiento`) REFERENCES `id_lugar_nacimiento` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Personaje_NoCompetidor`
--

LOCK TABLES `Personaje_NoCompetidor` WRITE;
/*!40000 ALTER TABLE `Personaje_NoCompetidor` DISABLE KEYS */;
/*!40000 ALTER TABLE `Personaje_NoCompetidor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Poder`
--

DROP TABLE IF EXISTS `Poder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Poder` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Poder`
--

LOCK TABLES `Poder` WRITE;
/*!40000 ALTER TABLE `Poder` DISABLE KEYS */;
/*!40000 ALTER TABLE `Poder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Poder_Competidor`
--

DROP TABLE IF EXISTS `Poder_Competidor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Poder_Competidor` (
  `id_competidor` int(10) unsigned NOT NULL,
  `id_poder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_competidor`,`id_poder`),
  KEY `id_poder` (`id_poder`),
  CONSTRAINT `Poder_Competidor_ibfk_1` FOREIGN KEY (`id_competidor`) REFERENCES `Personaje_Competidor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Poder_Competidor_ibfk_2` FOREIGN KEY (`id_poder`) REFERENCES `Poder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Poder_Competidor`
--

LOCK TABLES `Poder_Competidor` WRITE;
/*!40000 ALTER TABLE `Poder_Competidor` DISABLE KEYS */;
/*!40000 ALTER TABLE `Poder_Competidor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Profesion`
--

DROP TABLE IF EXISTS `Profesion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Profesion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Profesion`
--

LOCK TABLES `Profesion` WRITE;
/*!40000 ALTER TABLE `Profesion` DISABLE KEYS */;
INSERT INTO `Profesion` VALUES (1,'Ing. Electrico','La ingeniería eléctrica es el campo de la ingeniería que se ocupa del estudio y la aplicación de la electricidad, la electrónica y el electromagnetismo'),(2,'Inventor','Inventor o inventora es la persona que idea, crea, concibe, construye o desarrolla algo que no existía antes'),(3,'Ing. Industrial','La ingeniería industrial es una de las ramas de la ingeniería, y se ocupa de la optimización de uso de recursos humanos, técnicos e informativos'),(7,'Vago','no hace nada'),(8,'Ing Informatico','La ingeniería informática o ingeniería en computación es la rama de la ingeniería que aplica los fundamentos de la ciencia de la computación, la ingeniería electrónica, la ingeniería de software y la ingeniería de telecomunicaciones'),(47,'Agricultor',''),(48,'Carpintero',''),(49,'Constructor',''),(50,'Arquitecto',''),(51,'Doctor',''),(52,'Veterinario',''),(53,'Profesor',''),(54,'Mecanico','');
/*!40000 ALTER TABLE `Profesion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Profesion_Competidor`
--

DROP TABLE IF EXISTS `Profesion_Competidor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Profesion_Competidor` (
  `id_competidor` int(10) unsigned NOT NULL,
  `id_profesion` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_competidor`,`id_profesion`),
  KEY `id_profesion` (`id_profesion`),
  CONSTRAINT `Profesion_Competidor_ibfk_1` FOREIGN KEY (`id_competidor`) REFERENCES `Personaje_Competidor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Profesion_Competidor_ibfk_2` FOREIGN KEY (`id_profesion`) REFERENCES `Profesion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Profesion_Competidor`
--

LOCK TABLES `Profesion_Competidor` WRITE;
/*!40000 ALTER TABLE `Profesion_Competidor` DISABLE KEYS */;
/*!40000 ALTER TABLE `Profesion_Competidor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Relacion`
--

DROP TABLE IF EXISTS `Relacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Relacion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_competidor1` int(10) unsigned DEFAULT NULL,
  `id_competidor2` int(10) unsigned DEFAULT NULL,
  `id_personaje1` int(10) unsigned DEFAULT NULL,
  `id_personaje2` int(10) unsigned DEFAULT NULL,
  `tipo_relacion` enum('padre','hermano','primo','tio') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_personaje1` (`id_personaje1`),
  KEY `id_personaje2` (`id_personaje2`),
  KEY `id_competidor1` (`id_competidor1`),
  KEY `id_competidor2` (`id_competidor2`),
  CONSTRAINT `Relacion_ibfk_1` FOREIGN KEY (`id_personaje1`) REFERENCES `Personaje_NoCompetidor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Relacion_ibfk_2` FOREIGN KEY (`id_personaje2`) REFERENCES `Personaje_NoCompetidor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Relacion_ibfk_3` FOREIGN KEY (`id_competidor1`) REFERENCES `Personaje_Competidor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Relacion_ibfk_4` FOREIGN KEY (`id_competidor2`) REFERENCES `Personaje_Competidor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Relacion`
--

LOCK TABLES `Relacion` WRITE;
/*!40000 ALTER TABLE `Relacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `Relacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Universo`
--

DROP TABLE IF EXISTS `Universo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Universo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Universo`
--

LOCK TABLES `Universo` WRITE;
/*!40000 ALTER TABLE `Universo` DISABLE KEYS */;
INSERT INTO `Universo` VALUES (1,'Tierra 616','es el universo original de Marvel donde se originan la mayoría de las historias y personajes, de hecho este es el espacio de las series clásicas como X- Men, The Amazing Spider-Man y Fantastic Four'),(2,'House of M','es un universo que deriva de Tiera 616 donde los mutantes son quienes predominan. Debido a la acción de la Bruja Escarlata ningun ser humano recuerda como solía ser su mundo, excepto los agentes de SHIELD y Wolverine.'),(3,'Ultimate','se puede decir que es el universo donde todo vuelve a comenzar. En este universo los superhéroes presentan características diferentes a las del original, por ejemplo, el Ultimate Spider-Man es Miles Morales que es una persona afroamericana con ascendencia latina.'),(4,'Age of Apocalypse','es producto de un accidente temporal cuando Legion, hijo del profesor X, viaja al pasado para asesinar a Magneto, pero por un error mata a su propio padre, lo que provoca el ascenso de Apocalipsis como señor de la Tierra. En este Universo, también conocido como Tierra 295, los humanos se revelan junto a Reed Richards y Tony Stark.'),(5,'Marvel 2099','es el universo del futuro en este lugar las grandes corporaciones controlan un mundo dividido por una guerra entre humanos y mutantes, aquí surgen historias como Spider- Man 2099, X-Men 2099 y Fantastic Four 2099 entre otros.'),(6,'Marvel Noir','por alguna razón, la mayoría de los personajes no tienen poderes, a excepción de Spider-Man.'),(7,'Marvel Zombies','es el mundo de los muertos vivientes, en éste mundo los superhéroes y villanos son infectados por un virus alienígena que los convierte en zombies.'),(8,'Ucronías','es el universo donde los escritores se preguntaron “que hubiese pasado si...”. En esta línea temporal hay cosas que nunca sucedieron o sucedieron de forma diferente, por ejemplo Bruce Banner es mordido por una araña radioactiva que lo convierte en Spider-Man mientras que Peter Parker se inyecta la fórmula que lo convierte en Hulk.'),(9,'Larval Universe','también conocido como Tierra 8311, es el universo donde los personajes conocidos se presentan como una versión animal: Spider-Ham, Fantastic Fur y el Capitán Americat, entre otros.'),(10,'Tierra-001','La Tierra-001 es la realidad natal de Los Herederos y alberga los trofeos de mil mundos conquistados.'),(11,'Tierra-15513','La Tierra-15513 es una realidad dentro de la cual el Dios Emperador de Doom formó su Battleworld.'),(12,'Tierra-3145','Tierra-3145 es el hogar de Ben Parker, quien se convirtió en el hombre araña en esta realidad. Sin embargo, se retiró de Spider-Man después de que su esposa y su sobrino fueron asesinados por la Elf Esmeralda.'),(13,'Tierra-13','La Tierra-13 es una realidad alternativa del Universo 616. En este mundo Peter Parker fue elegido por la Fuerza Enigma y retuvo los poderes del Capitán Universo.'),(14,'Tierra-TRN588','Earth-TRN588 is a divergent reality similar to Earth-928, a reality where a second Age of Heroes began in the future of 2099 A.D. '),(15,'Multiverso','The Multiverse is the collection of alternate universes which share a universal hierarchy; it is a subsection of the larger Omniverse, the collection of all alternate universes. ');
/*!40000 ALTER TABLE `Universo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `np`
--

DROP TABLE IF EXISTS `np`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `np` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `np`
--

LOCK TABLES `np` WRITE;
/*!40000 ALTER TABLE `np` DISABLE KEYS */;
/*!40000 ALTER TABLE `np` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-17 17:28:53
