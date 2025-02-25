-- MariaDB dump 10.19  Distrib 10.11.2-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: IT_Dept
-- ------------------------------------------------------
-- Server version	10.11.2-MariaDB-1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AUTH`
--

DROP TABLE IF EXISTS `AUTH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AUTH` (
  `REGISTER_NUMBER` varchar(25) NOT NULL,
  `PASSWORD_ENCRYPTED` varchar(60) NOT NULL DEFAULT '$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C',
  PRIMARY KEY (`REGISTER_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTH`
--

LOCK TABLES `AUTH` WRITE;
/*!40000 ALTER TABLE `AUTH` DISABLE KEYS */;
INSERT INTO `AUTH` VALUES
('IT24GMCAD11','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C');
/*!40000 ALTER TABLE `AUTH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESULT_INTEGRATED`
--

DROP TABLE IF EXISTS `RESULT_INTEGRATED`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESULT_INTEGRATED` (
  `REGISTER_NUMBER` varchar(25) NOT NULL,
  `S1` decimal(3,2) DEFAULT NULL,
  `S2` decimal(3,2) DEFAULT NULL,
  `S3` decimal(3,2) DEFAULT NULL,
  `S4` decimal(3,2) DEFAULT NULL,
  `S5` decimal(3,2) DEFAULT NULL,
  `S6` decimal(3,2) DEFAULT NULL,
  `S7` decimal(3,2) DEFAULT NULL,
  `S8` decimal(3,2) DEFAULT NULL,
  `S9` decimal(3,2) DEFAULT NULL,
  `S10` decimal(3,2) DEFAULT NULL,
  PRIMARY KEY (`REGISTER_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESULT_INTEGRATED`
--

LOCK TABLES `RESULT_INTEGRATED` WRITE;
/*!40000 ALTER TABLE `RESULT_INTEGRATED` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESULT_INTEGRATED` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESULT_MASTERS`
--

DROP TABLE IF EXISTS `RESULT_MASTERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESULT_MASTERS` (
  `REGISTER_NUMBER` varchar(25) NOT NULL,
  `S1` decimal(3,2) DEFAULT NULL,
  `S2` decimal(3,2) DEFAULT NULL,
  `S3` decimal(3,2) DEFAULT NULL,
  `S4` decimal(3,2) DEFAULT NULL,
  PRIMARY KEY (`REGISTER_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESULT_MASTERS`
--

LOCK TABLES `RESULT_MASTERS` WRITE;
/*!40000 ALTER TABLE `RESULT_MASTERS` DISABLE KEYS */;
INSERT INTO `RESULT_MASTERS` VALUES
('IT24GMCAD11',8.24,NULL,NULL,NULL);
/*!40000 ALTER TABLE `RESULT_MASTERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STUDENTS`
--

DROP TABLE IF EXISTS `STUDENTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `STUDENTS` (
  `REGISTER_NUMBER` varchar(25) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `COURSE` varchar(8) DEFAULT NULL,
  `BATCH` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`REGISTER_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STUDENTS`
--

LOCK TABLES `STUDENTS` WRITE;
/*!40000 ALTER TABLE `STUDENTS` DISABLE KEYS */;
INSERT INTO `STUDENTS` VALUES
('IT24GMCAD24','Mohammed Farhan N P','m.farhan.np.mca@gmail.com','MCA','2024-2026');
/*!40000 ALTER TABLE `STUDENTS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-25 17:23:24
