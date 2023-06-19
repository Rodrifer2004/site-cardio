CREATE DATABASE  IF NOT EXISTS `consulta` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `consulta`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: consulta
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `formulario`
--

DROP TABLE IF EXISTS `formulario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formulario` (
  `cod_form` int NOT NULL,
  `pergunta1` varchar(45) NOT NULL,
  `pergunta2` varchar(45) NOT NULL,
  `pergunta3` varchar(45) NOT NULL,
  `pergunta4` varchar(45) NOT NULL,
  `pergunta5` varchar(45) NOT NULL,
  `pergunta6` varchar(45) NOT NULL,
  `pergunta7` varchar(45) NOT NULL,
  PRIMARY KEY (`cod_form`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formulario`
--

LOCK TABLES `formulario` WRITE;
/*!40000 ALTER TABLE `formulario` DISABLE KEYS */;
/*!40000 ALTER TABLE `formulario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_paciente`
--

DROP TABLE IF EXISTS `info_paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `info_paciente` (
  `codigo_info` int NOT NULL AUTO_INCREMENT,
  `nome_pai` varchar(45) DEFAULT NULL,
  `nome_mae` varchar(45) DEFAULT NULL,
  `telefone_emergencia` varchar(45) DEFAULT NULL,
  `tipo_sangue` varchar(45) DEFAULT NULL,
  `cod_form` int DEFAULT NULL,
  PRIMARY KEY (`codigo_info`),
  UNIQUE KEY `codigo_info_UNIQUE` (`codigo_info`),
  KEY `cod_form_idx` (`cod_form`),
  CONSTRAINT `cod_form` FOREIGN KEY (`cod_form`) REFERENCES `formulario` (`cod_form`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_paciente`
--

LOCK TABLES `info_paciente` WRITE;
/*!40000 ALTER TABLE `info_paciente` DISABLE KEYS */;
/*!40000 ALTER TABLE `info_paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paciente` (
  `idpaciente` int NOT NULL AUTO_INCREMENT,
  `email` varchar(110) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  `nome` varchar(65) DEFAULT NULL,
  `sexo` varchar(45) DEFAULT NULL,
  `dt_nascimento` varchar(45) DEFAULT NULL,
  `nacionalidade` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `codigo_info` int DEFAULT NULL,
  PRIMARY KEY (`idpaciente`),
  UNIQUE KEY `idpaciente_UNIQUE` (`idpaciente`),
  KEY `codigo_info_idx` (`codigo_info`),
  CONSTRAINT `codigo_info` FOREIGN KEY (`codigo_info`) REFERENCES `info_paciente` (`codigo_info`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-19  3:05:16
