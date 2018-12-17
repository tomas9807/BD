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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Afiliacion`
--

LOCK TABLES `Afiliacion` WRITE;
/*!40000 ALTER TABLE `Afiliacion` DISABLE KEYS */;
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
  `id_lugar` int(10) unsigned DEFAULT NULL,
  `id_universo` int(10) unsigned DEFAULT NULL,
  `nombre` varchar(256) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`),
  KEY `id_lugar` (`id_lugar`),
  KEY `id_universo` (`id_universo`),
  CONSTRAINT `Base_Operacion_ibfk_1` FOREIGN KEY (`id_lugar`) REFERENCES `Lugar` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Base_Operacion_ibfk_2` FOREIGN KEY (`id_universo`) REFERENCES `Universo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Universo`
--

LOCK TABLES `Universo` WRITE;
/*!40000 ALTER TABLE `Universo` DISABLE KEYS */;
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

-- Dump completed on 2018-12-17 17:06:42
