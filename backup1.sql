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
-- Table structure for table `Afiliacion_Personaje`
--
DROP SCHEMA IF EXISTS marvel;
CREATE SCHEMA IF NOT EXISTS marvel;
USE marvel
DROP TABLE IF EXISTS `Afiliacion_Personaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Afiliacion_Personaje` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_competidor` int(10) unsigned DEFAULT NULL,
  `id_personaje` int(10) unsigned DEFAULT NULL,
  `id_afiliacion` int(10) unsigned NOT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_personaje` (`id_personaje`),
  KEY `id_competidor` (`id_competidor`),
  KEY `id_afiliacion` (`id_afiliacion`),
  CONSTRAINT `Afiliacion_Personaje_ibfk_1` FOREIGN KEY (`id_personaje`) REFERENCES `Personaje_NoCompetidor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Afiliacion_Personaje_ibfk_2` FOREIGN KEY (`id_competidor`) REFERENCES `Personaje_Competidor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Afiliacion_Personaje_ibfk_3` FOREIGN KEY (`id_afiliacion`) REFERENCES `Alifiacion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
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
  `id_base` int(10) unsigned NOT NULL,
  `id_afiliacion` int(10) unsigned NOT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_base`,`id_afiliacion`),
  KEY `id_afiliacion` (`id_afiliacion`),
  CONSTRAINT `Base_Afiliacion_ibfk_1` FOREIGN KEY (`id_base`) REFERENCES `Base_Operacion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Base_Afiliacion_ibfk_2` FOREIGN KEY (`id_afiliacion`) REFERENCES `Alifiacion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Base_Afiliacion`
--

LOCK TABLES `Base_Afiliacion` WRITE;
/*!40000 ALTER TABLE `Base_Afiliacion` DISABLE KEYS */;
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
  `id_lugar` int(10) unsigned NOT NULL,
  `nombre` varchar(256) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`),
  KEY `id_lugar` (`id_lugar`),
  CONSTRAINT `Base_Operacion_ibfk_1` FOREIGN KEY (`id_lugar`) REFERENCES `Lugar` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Base_Operacion`
--

LOCK TABLES `Base_Operacion` WRITE;
/*!40000 ALTER TABLE `Base_Operacion` DISABLE KEYS */;
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
  `tipo` enum('universo','galaxia','planeta','mundo mitologico') DEFAULT NULL,
  `tipo_geografico` enum('pais','estado','ciudad','zona') DEFAULT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`),
  KEY `id_padre` (`id_padre`),
  CONSTRAINT `Lugar_ibfk_1` FOREIGN KEY (`id_padre`) REFERENCES `Lugar` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lugar`
--

LOCK TABLES `Lugar` WRITE;
/*!40000 ALTER TABLE `Lugar` DISABLE KEYS */;
INSERT INTO `Lugar` VALUES (1,NULL,'Tierra 616','universo',NULL,'es el universo original de Marvel donde se originan la mayoría de las historias y\npersonajes, de hecho este es el espacio de las series clásicas como X- Men, The Amazing\nSpider-Man y Fantastic Four'),(2,NULL,'House of M','universo',NULL,'es un universo que deriva de Tiera 616 donde los mutantes son quienes\npredominan. Debido a la acción de la Bruja Escarlata ningun ser humano recuerda como\nsolía ser su mundo, excepto los agentes de SHIELD y Wolverine.'),(3,NULL,'Ultimate','universo',NULL,'se puede decir que es el universo donde todo vuelve a comenzar. En este universo los\nsuperhéroes presentan características diferentes a las del original, por ejemplo, el Ultimate\nSpider-Man es Miles Morales que es una persona afroamericana con ascendencia latina.'),(4,NULL,'Age of Apocalypse','universo',NULL,'es producto de un accidente temporal cuando Legion, hijo del profesor\nX, viaja al pasado para asesinar a Magneto, pero por un error mata a su propio padre, lo que\nprovoca el ascenso de Apocalipsis como señor de la Tierra. En este Universo, también\nconocido como Tierra 295, los humanos se revelan junto a Reed Richards y Tony Stark.'),(5,NULL,'Marvel 2099','universo',NULL,'es el universo del futuro en este lugar las grandes corporaciones controlan un\nmundo dividido por una guerra entre humanos y mutantes, aquí surgen historias como Spider-\nMan 2099, X-Men 2099 y Fantastic Four 2099 entre otros.'),(6,NULL,'Marvel Noir','universo',NULL,'por alguna razón, la mayoría de los personajes no tienen poderes, a excepción\nde Spider-Man.'),(7,NULL,'Marvel Zombies','universo',NULL,'es el mundo de los muertos vivientes, en éste mundo los superhéroes y villanos\nson infectados por un virus alienígena que los convierte en zombies.'),(8,NULL,'Ucronías','universo',NULL,'es el universo donde los escritores se preguntaron “que hubiese pasado si...”. En esta\nlínea temporal hay cosas que nunca sucedieron o sucedieron de forma diferente, por ejemplo\nBruce Banner es mordido por una araña radioactiva que lo convierte en Spider-Man mientras\nque Peter Parker se inyecta la fórmula que lo convierte en Hulk.'),(9,NULL,'Larval Universe','universo',NULL,'también conocido como Tierra 8311, es el universo donde los personajes\nconocidos se presentan como una versión animal: Spider-Ham, Fantastic Fur y el Capitán\nAmericat, entre otros.');
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Profesion`
--

LOCK TABLES `Profesion` WRITE;
/*!40000 ALTER TABLE `Profesion` DISABLE KEYS */;
INSERT INTO `Profesion` VALUES (1,'Ing. Electrico','La ingeniería eléctrica es el campo de la ingeniería que se ocupa del estudio y la aplicación de la electricidad, la electrónica y el electromagnetismo'),(2,'Inventor','Inventor o inventora es la persona que idea, crea, concibe, construye o desarrolla algo que no existía antes'),(3,'Ing. Industrial','La ingeniería industrial es una de las ramas de la ingeniería, y se ocupa de la optimización de uso de recursos humanos, técnicos e informativos'),(4,'Ing. Electrico','La ingeniería eléctrica es el campo de la ingeniería que se ocupa del estudio y la aplicación de la electricidad, la electrónica y el electromagnetismo'),(5,'Inventor','Inventor o inventora es la persona que idea, crea, concibe, construye o desarrolla algo que no existía antes'),(6,'Ing. Industrial','La ingeniería industrial es una de las ramas de la ingeniería, y se ocupa de la optimización de uso de recursos humanos, técnicos e informativos');
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-01 16:06:14
