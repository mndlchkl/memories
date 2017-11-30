CREATE DATABASE  IF NOT EXISTS `memories` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `memories`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: memories
-- ------------------------------------------------------
-- Server version 5.5.5-10.1.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `amigos`
--

DROP TABLE IF EXISTS `amigos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `amigos` (
  `ID_AMIGO` int(11) NOT NULL,
  `RUT_AMIGO` varchar(45) DEFAULT NULL,
  `user_RUT` int(11) NOT NULL,
  PRIMARY KEY (`ID_AMIGO`),
  KEY `fk_amigos_user1_idx` (`user_RUT`),
  CONSTRAINT `fk_amigos_user1` FOREIGN KEY (`user_RUT`) REFERENCES `user` (`RUT`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amigos`
--

LOCK TABLES `amigos` WRITE;
/*!40000 ALTER TABLE `amigos` DISABLE KEYS */;
/*!40000 ALTER TABLE `amigos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clasificacion`
--

DROP TABLE IF EXISTS `clasificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clasificacion` (
  `ID_CLASIFICACION` int(11) NOT NULL,
  `CLASIFICACION` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_CLASIFICACION`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clasificacion`
--

LOCK TABLES `clasificacion` WRITE;
/*!40000 ALTER TABLE `clasificacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `clasificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cobertura`
--

DROP TABLE IF EXISTS `cobertura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cobertura` (
  `ID_COBERTURA` int(11) NOT NULL AUTO_INCREMENT,
  `COBERTURA` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_COBERTURA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cobertura`
--

LOCK TABLES `cobertura` WRITE;
/*!40000 ALTER TABLE `cobertura` DISABLE KEYS */;
/*!40000 ALTER TABLE `cobertura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emocion`
--

DROP TABLE IF EXISTS `emocion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emocion` (
  `ID_EMOCION` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE_EMOCION` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_EMOCION`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emocion`
--

LOCK TABLES `emocion` WRITE;
/*!40000 ALTER TABLE `emocion` DISABLE KEYS */;
/*!40000 ALTER TABLE `emocion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `familiar`
--

DROP TABLE IF EXISTS `familiar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `familiar` (
  `ID_FAMILIAR` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(100) DEFAULT NULL,
  `RUT` int(11) NOT NULL,
  `PARENTESCO` int(11) NOT NULL,
  PRIMARY KEY (`ID_FAMILIAR`),
  KEY `fk_familiar_user1_idx` (`RUT`),
  KEY `fk_familiar_parentesco1_idx` (`PARENTESCO`),
  CONSTRAINT `fk_familiar_parentesco1` FOREIGN KEY (`PARENTESCO`) REFERENCES `parentesco` (`ID_PARENTESCO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_familiar_user1` FOREIGN KEY (`RUT`) REFERENCES `user` (`RUT`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `familiar`
--

LOCK TABLES `familiar` WRITE;
/*!40000 ALTER TABLE `familiar` DISABLE KEYS */;
/*!40000 ALTER TABLE `familiar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parentesco`
--

DROP TABLE IF EXISTS `parentesco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parentesco` (
  `ID_PARENTESCO` int(11) NOT NULL AUTO_INCREMENT,
  `ROL_PARENTESCO` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_PARENTESCO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parentesco`
--

LOCK TABLES `parentesco` WRITE;
/*!40000 ALTER TABLE `parentesco` DISABLE KEYS */;
/*!40000 ALTER TABLE `parentesco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recuerdo`
--

DROP TABLE IF EXISTS `recuerdo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recuerdo` (
  `ID_RECUERDO` int(11) NOT NULL AUTO_INCREMENT,
  `RUT` int(11) NOT NULL,
  `FECHA_RECUERDO` datetime DEFAULT NULL,
  `COBERTURA` int(11) NOT NULL,
  `EMOCION` int(11) NOT NULL,
  `TIPO_RECUERDO` int(11) NOT NULL,
  `CREADO_EL` timestamp NULL DEFAULT NULL,
  `CLASIFICACION` int(11) NOT NULL,
  PRIMARY KEY (`ID_RECUERDO`),
  KEY `FK_TIENE` (`RUT`),
  KEY `fk_recuerdo_cobertura1_idx` (`COBERTURA`),
  KEY `fk_recuerdo_emocion1_idx` (`EMOCION`),
  KEY `fk_recuerdo_tiporecuerdo1_idx` (`TIPO_RECUERDO`),
  KEY `fk_recuerdo_clasificacion1_idx` (`CLASIFICACION`),
  CONSTRAINT `FK_TIENE` FOREIGN KEY (`RUT`) REFERENCES `user` (`RUT`),
  CONSTRAINT `fk_recuerdo_clasificacion1` FOREIGN KEY (`CLASIFICACION`) REFERENCES `clasificacion` (`ID_CLASIFICACION`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_recuerdo_cobertura1` FOREIGN KEY (`COBERTURA`) REFERENCES `cobertura` (`ID_COBERTURA`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_recuerdo_emocion1` FOREIGN KEY (`EMOCION`) REFERENCES `emocion` (`ID_EMOCION`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_recuerdo_tiporecuerdo1` FOREIGN KEY (`TIPO_RECUERDO`) REFERENCES `tiporecuerdo` (`ID_TIPO_RECUERDO`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recuerdo`
--

LOCK TABLES `recuerdo` WRITE;
/*!40000 ALTER TABLE `recuerdo` DISABLE KEYS */;
/*!40000 ALTER TABLE `recuerdo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiporecuerdo`
--

DROP TABLE IF EXISTS `tiporecuerdo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiporecuerdo` (
  `ID_TIPO_RECUERDO` int(11) NOT NULL,
  `TIPO` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_TIPO_RECUERDO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiporecuerdo`
--

LOCK TABLES `tiporecuerdo` WRITE;
/*!40000 ALTER TABLE `tiporecuerdo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiporecuerdo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `NAME` varchar(50) DEFAULT NULL,
  `LASTNAME` varchar(50) DEFAULT NULL,
  `RUT` int(11) NOT NULL,
  `PASSWORD` varchar(20) DEFAULT NULL,
  `FECHA_NACIMIENTO` date DEFAULT NULL,
  PRIMARY KEY (`RUT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('yoyo','yo',1,'1',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'memories'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-30 20:40:24
