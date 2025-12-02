-- MySQL dump 10.19  Distrib 10.3.39-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: college
-- ------------------------------------------------------
-- Server version	10.3.39-MariaDB

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
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade` (
  `sub_id` varchar(20) NOT NULL,
  `s_no` int(11) NOT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`sub_id`,`s_no`),
  KEY `s_no` (`s_no`),
  CONSTRAINT `grade_ibfk_1` FOREIGN KEY (`sub_id`) REFERENCES `subject` (`sub_id`),
  CONSTRAINT `grade_ibfk_2` FOREIGN KEY (`s_no`) REFERENCES `student` (`s_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
INSERT INTO `grade` VALUES ('SUB01',1,79),('SUB01',2,96),('SUB01',3,73),('SUB01',4,74),('SUB01',5,96),('SUB01',6,52),('SUB01',7,95),('SUB01',8,94),('SUB01',9,75),('SUB01',10,94),('SUB01',11,71),('SUB01',12,65),('SUB01',13,67),('SUB01',14,64),('SUB01',15,75),('SUB01',16,71),('SUB01',17,100),('SUB01',18,75),('SUB01',19,81),('SUB01',20,67),('SUB01',21,94),('SUB01',22,59),('SUB01',23,81),('SUB02',1,61),('SUB02',2,58),('SUB02',3,80),('SUB02',4,96),('SUB02',5,63),('SUB02',6,97),('SUB02',7,66),('SUB02',8,53),('SUB02',9,53),('SUB02',10,60),('SUB02',11,70),('SUB02',12,94),('SUB02',13,62),('SUB02',14,97),('SUB03',15,85),('SUB03',16,76),('SUB03',17,100),('SUB03',18,88),('SUB03',19,74),('SUB03',20,65),('SUB03',21,99),('SUB03',22,55),('SUB03',23,63),('SUB06',23,98);
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `s_no` int(11) NOT NULL,
  `s_name` varchar(10) NOT NULL,
  `grade` int(11) NOT NULL,
  `class` int(11) NOT NULL,
  `gender` char(2) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `email` varchar(320) DEFAULT NULL,
  `enter_date` date DEFAULT NULL,
  PRIMARY KEY (`s_no`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,' ella ',2,1,'F',21,NULL,'2021-03-02'),(2,'avery',2,1,'F',21,NULL,'2021-03-02'),(3,'scarlett',2,2,'F',22,NULL,'2021-03-02'),(4,'luna',2,2,'F',21,'test@test.com','2021-03-02'),(5,'olivia',2,2,'F',21,NULL,'2021-03-02'),(6,'jacob',2,1,'M',21,NULL,'2021-03-02'),(7,'alexander',2,1,'M',21,NULL,'2021-03-02'),(8,'william',2,1,'M',20,NULL,'2021-03-02'),(9,'daniel',2,1,'M',21,NULL,'2021-03-02'),(10,'david',2,2,'M',21,NULL,'2021-03-02'),(11,'james',2,2,'M',21,NULL,'2021-03-02'),(12,'luna',2,2,'M',21,NULL,'2021-03-02'),(13,'michael',2,2,'M',21,NULL,'2021-09-01'),(14,'oliver',2,1,'M',21,NULL,'2021-10-04'),(15,'olivia',1,1,'F',20,NULL,'2022-03-01'),(16,'emma',1,1,'F',20,NULL,'2022-03-01'),(17,'charlotte',1,1,'F',21,NULL,'2022-03-01'),(18,'abigail',1,2,'F',20,NULL,'2022-03-01'),(19,'noah',1,1,'M',20,NULL,'2022-03-01'),(20,'logan',1,1,'M',20,NULL,'2022-03-01'),(21,'mason',1,2,'M',20,NULL,'2022-03-01'),(22,'amelia',1,2,'F',21,NULL,'2022-05-05'),(23,'james',1,2,'M',20,NULL,'2022-10-01');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject` (
  `sub_id` varchar(20) NOT NULL,
  `sub_name` varchar(20) NOT NULL,
  `professor` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES ('SUB01','국어','korean'),('SUB02','수학','math'),('SUB03','영어','english'),('SUB04','역사','history'),('SUB05','과학','science'),('SUB06','예술','art');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-02 14:45:50
