-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: IT_Dept
-- ------------------------------------------------------
-- Server version	8.0.41-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AUTH` (
  `REGISTER_NUMBER` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `PASSWORD_ENCRYPTED` varchar(60) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C',
  PRIMARY KEY (`REGISTER_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTH`
--

LOCK TABLES `AUTH` WRITE;
/*!40000 ALTER TABLE `AUTH` DISABLE KEYS */;
INSERT INTO `AUTH` VALUES ('IT24GMCAD01','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C'),('IT24GMCAD02','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C'),('IT24GMCAD03','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C'),('IT24GMCAD04','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C'),('IT24GMCAD05','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C'),('IT24GMCAD06','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C'),('IT24GMCAD07','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C'),('IT24GMCAD08','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C'),('IT24GMCAD09','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C'),('IT24GMCAD10','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C'),('IT24GMCAD11','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C'),('IT24GMCAD12','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C'),('IT24GMCAD13','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C'),('IT24GMCAD14','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C'),('IT24GMCAD15','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C'),('IT24GMCAD16','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C'),('IT24GMCAD17','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C'),('IT24GMCAD18','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C'),('IT24GMCAD19','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C'),('IT24GMCAD20','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C'),('IT24GMCAD21','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C'),('IT24GMCAD22','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C'),('IT24GMCAD23','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C'),('IT24GMCAD24','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C'),('IT24GMCAD25','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C'),('IT24GMCAD26','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C'),('IT24GMCAD27','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C'),('IT24GMCAD28','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C'),('IT24GMCAD29','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C'),('IT24GMCAD30','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C'),('IT24GMCAD31','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C'),('IT24GMCAD32','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C'),('IT24GMCAD33','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C'),('IT24GMCAD34','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C'),('IT24GMCAD35','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C'),('IT24GMCAD36','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C'),('IT24GMCAD37','$2y$10$5bUBc1jlcEi9Bczliyo9quq4O7vfIsGVpug7EzteGobZc8ybPb.4C');
/*!40000 ALTER TABLE `AUTH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESULT_INTEGRATED`
--

DROP TABLE IF EXISTS `RESULT_INTEGRATED`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESULT_INTEGRATED` (
  `REGISTER_NUMBER` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESULT_MASTERS` (
  `REGISTER_NUMBER` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
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
INSERT INTO `RESULT_MASTERS` VALUES ('IT24GMCAD01',7.33,NULL,NULL,NULL),('IT24GMCAD02',7.90,NULL,NULL,NULL),('IT24GMCAD03',8.38,NULL,NULL,NULL),('IT24GMCAD04',6.14,NULL,NULL,NULL),('IT24GMCAD05',7.62,NULL,NULL,NULL),('IT24GMCAD06',8.29,NULL,NULL,NULL),('IT24GMCAD07',8.52,NULL,NULL,NULL),('IT24GMCAD08',7.81,NULL,NULL,NULL),('IT24GMCAD09',7.38,NULL,NULL,NULL),('IT24GMCAD10',7.19,NULL,NULL,NULL),('IT24GMCAD11',8.24,NULL,NULL,NULL),('IT24GMCAD12',7.67,NULL,NULL,NULL),('IT24GMCAD13',7.90,NULL,NULL,NULL),('IT24GMCAD14',7.19,NULL,NULL,NULL),('IT24GMCAD15',7.29,NULL,NULL,NULL),('IT24GMCAD16',6.00,NULL,NULL,NULL),('IT24GMCAD17',7.24,NULL,NULL,NULL),('IT24GMCAD18',7.00,NULL,NULL,NULL),('IT24GMCAD19',7.81,NULL,NULL,NULL),('IT24GMCAD20',8.52,NULL,NULL,NULL),('IT24GMCAD21',8.29,NULL,NULL,NULL),('IT24GMCAD22',8.00,NULL,NULL,NULL),('IT24GMCAD23',7.86,NULL,NULL,NULL),('IT24GMCAD24',7.81,NULL,NULL,NULL),('IT24GMCAD25',7.43,NULL,NULL,NULL),('IT24GMCAD26',7.48,NULL,NULL,NULL),('IT24GMCAD27',7.71,NULL,NULL,NULL),('IT24GMCAD28',7.38,NULL,NULL,NULL),('IT24GMCAD29',7.24,NULL,NULL,NULL),('IT24GMCAD30',6.81,NULL,NULL,NULL),('IT24GMCAD31',8.62,NULL,NULL,NULL),('IT24GMCAD32',7.48,NULL,NULL,NULL),('IT24GMCAD33',7.33,NULL,NULL,NULL),('IT24GMCAD34',8.24,NULL,NULL,NULL),('IT24GMCAD35',8.33,NULL,NULL,NULL),('IT24GMCAD36',7.62,NULL,NULL,NULL),('IT24GMCAD37',7.90,NULL,NULL,NULL),('IT24PSCSD01',7.33,NULL,NULL,NULL),('IT24PSCSD02',7.71,NULL,NULL,NULL),('IT24PSCSD03',8.43,NULL,NULL,NULL),('IT24PSCSD04',7.86,NULL,NULL,NULL),('IT24PSCSD05',7.90,NULL,NULL,NULL),('IT24PSCSD06',7.62,NULL,NULL,NULL),('IT24PSCSD07',8.38,NULL,NULL,NULL),('IT24PSCSD08',8.24,NULL,NULL,NULL),('IT24PSCSD09',7.52,NULL,NULL,NULL),('IT24PSCSD10',8.10,NULL,NULL,NULL),('IT24PSCSD11',6.62,NULL,NULL,NULL),('IT24PSCSD12',7.14,NULL,NULL,NULL),('IT24PSCSD13',8.81,NULL,NULL,NULL),('IT24PSCSD14',7.19,NULL,NULL,NULL),('IT24PSCSD15',8.52,NULL,NULL,NULL),('IT24PSCSD16',7.81,NULL,NULL,NULL),('IT24PSCSD17',7.00,NULL,NULL,NULL),('IT24PSCSD18',8.19,NULL,NULL,NULL),('IT24PSCSD19',8.00,NULL,NULL,NULL),('IT24PSCSD20',8.52,NULL,NULL,NULL);
/*!40000 ALTER TABLE `RESULT_MASTERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STUDENTS`
--

DROP TABLE IF EXISTS `STUDENTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STUDENTS` (
  `REGISTER_NUMBER` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `EMAIL` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `COURSE` varchar(8) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `BATCH` varchar(9) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`REGISTER_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STUDENTS`
--

LOCK TABLES `STUDENTS` WRITE;
/*!40000 ALTER TABLE `STUDENTS` DISABLE KEYS */;
INSERT INTO `STUDENTS` VALUES ('IT24GMCAD01','Abhinesh K Ramesh','abhineshkramesh007@gmail.com','MCA','2024-2026'),('IT24GMCAD02','Adith V','adithv137@gmail.com','MCA','2024-2026'),('IT24GMCAD03','Akash Gopalan','akashpryrm@gmail.com','MCA','2024-2026'),('IT24GMCAD04','Akash Pradeep','akash27m2@gmail.com','MCA','2024-2026'),('IT24GMCAD05','Akshay Saji','akshaysaji1312@gmail.com','MCA','2024-2026'),('IT24GMCAD06','Anugrah.M.V','anugrahmv007@gmail.com','MCA','2024-2026'),('IT24GMCAD07','Anuraj. A','karadkanuraj@gmail.com','MCA','2024-2026'),('IT24GMCAD08','Arjun P V','arjunsugu2002@gmail.com','MCA','2024-2026'),('IT24GMCAD09','Karthik K V','karthikmarar.11@gmail.com','MCA','2024-2026'),('IT24GMCAD10','Krishnendh M','krishnendhkrish7@gmail.com','MCA','2024-2026'),('IT24GMCAD11','Mohammed Farhan N P','m.farhan.np.mca@gmail.com','MCA','2024-2026'),('IT24GMCAD12','Muhammed Mishab P','mishab1441@gmail.com','MCA','2024-2026'),('IT24GMCAD13','Rohith. K','rohithkmca@gmail.com','MCA','2024-2026'),('IT24GMCAD14','Sachin K','sachinsajeev3121@gmail.com','MCA','2024-2026'),('IT24GMCAD15','Sai Sangeeth','saisangeeth50@gmail.com','MCA','2024-2026'),('IT24GMCAD16','Sanjay Kumar C','skthamilan1322003@gmail.com','MCA','2024-2026'),('IT24GMCAD17','Sayooj Valsan','sayoojvalsan2317@gmail.com','MCA','2024-2026'),('IT24GMCAD18','Sooraj K','soorajsoorajk136@gmail.com','MCA','2024-2026'),('IT24GMCAD19','S P Lukumanul Hakeem',NULL,'MCA','2024-2026'),('IT24GMCAD20','Abhishna P P','abhishna2002@gmail.com','MCA','2024-2026'),('IT24GMCAD21','Amrutha Balan','amruthabala18@gmail.com','MCA','2024-2026'),('IT24GMCAD22','Archana T K','archanatk27@gmail.com','MCA','2024-2026'),('IT24GMCAD23','Ardra K','ardmmz234@gmail.com','MCA','2024-2026'),('IT24GMCAD24','Fahma Rudhsha Latheef .K.T','fahrudlat@gmail.com','MCA','2024-2026'),('IT24GMCAD25','Fathima.N.K','fathimarahim678@gmail.com','MCA','2024-2026'),('IT24GMCAD26','Fathimath Jumana','fathimathjumana347@gmail.com','MCA','2024-2026'),('IT24GMCAD27','Fathimathu Ziya V K','ziafathima175@gmail.com','MCA','2024-2026'),('IT24GMCAD28','Keerthana P K','keerthanaharidas03@gmail.com','MCA','2024-2026'),('IT24GMCAD29','Maya . S','ammumaya0646@gmail.com','MCA','2024-2026'),('IT24GMCAD30','Mubashira.V.P','mubashiravpktr@gmail.com','MCA','2024-2026'),('IT24GMCAD31','Nada Fathima','nadaevk@gmail.com','MCA','2024-2026'),('IT24GMCAD32','Nandana.P.P','nandanamanoharan2002@gmail.com','MCA','2024-2026'),('IT24GMCAD33','Navya.P.P',NULL,'MCA','2024-2026'),('IT24GMCAD34','Neha Latheesh','ambilineha333@gmail.com','MCA','2024-2026'),('IT24GMCAD35','Theertha V','theerthav2003@gmail.com','MCA','2024-2026'),('IT24GMCAD36','Theja K','thejat422@gmail.com','MCA','2024-2026'),('IT24GMCAD37','Vandana T T K','vandanavandu270@gmail.com','MCA','2024-2026'),('IT24PSCSD01','Abhiram. E. K','abhiramiritty02@gmail.com','MSC','2024-2026'),('IT24PSCSD02','Adwaith Haridas','adwaithharidas412@gmail.com','MSC','2024-2026'),('IT24PSCSD03','Arjun. P','arjunpmundakkai@gmail.com','MSC','2024-2026'),('IT24PSCSD04','Aswin Manoj','aswinkannur592@gmail.com','MSC','2024-2026'),('IT24PSCSD05','Mohammed Sabad. N. A','sabadmohammed7@gmail.com','MSC','2024-2026'),('IT24PSCSD06','Sabith','sabithkattukochi@gmail.com','MSC','2024-2026'),('IT24PSCSD07','Sangeeth. V','sangeethv2002@gmail.com','MSC','2024-2026'),('IT24PSCSD08','Sourav. E','sourav520027@gmail.com','MSC','2024-2026'),('IT24PSCSD09','Anjal. K. K','anjalpavithran94@gmail.com','MSC','2024-2026'),('IT24PSCSD10','Anuvratha. C','anuchandran718@gmail.com','MSC','2024-2026'),('IT24PSCSD11','Aswani. P. V','ashwanipv720@gmail.com','MSC','2024-2026'),('IT24PSCSD12','Asna. M. T','asnahamza420@gmail.com','MSC','2024-2026'),('IT24PSCSD13','Harsha. T. V','hatshatv29@gmail.com','MSC','2024-2026'),('IT24PSCSD14','Kavya. N','kavyaprashanth85@gmail.com','MSC','2024-2026'),('IT24PSCSD15','Nandana Narayanan','nandhanamnambiar@gmail.com','MSC','2024-2026'),('IT24PSCSD16','Rahfathu Rahman. M','rahfathurahmanm@gmail.com','MSC','2024-2026'),('IT24PSCSD17','Saniya. V','saniyavasanthan@gmail.com','MSC','2024-2026'),('IT24PSCSD18','Vaishanavi. K. C','vaishnavikc2@gmail.com','MSC','2024-2026'),('IT24PSCSD19','Vismaya','vizvismaya9@gmail.com','MSC','2024-2026'),('IT24PSCSD20','Vyshnavi Mammaly','vyshzzz345@gmail.com','MSC','2024-2026');
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

-- Dump completed on 2025-03-02 14:13:27
