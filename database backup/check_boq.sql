-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: check_boq
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `boq`
--

DROP TABLE IF EXISTS `boq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boq` (
  `BO_ID` int NOT NULL AUTO_INCREMENT,
  `BO_GroupID` int DEFAULT NULL,
  `BO_Name` varchar(100) DEFAULT NULL,
  `BO_Member` varchar(100) DEFAULT NULL,
  `BO_Materials` varchar(1000) DEFAULT NULL,
  `BO_Price` bigint DEFAULT NULL,
  `BO_Period` int DEFAULT NULL,
  PRIMARY KEY (`BO_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boq`
--

LOCK TABLES `boq` WRITE;
/*!40000 ALTER TABLE `boq` DISABLE KEYS */;
INSERT INTO `boq` VALUES (1,3,'P01','engineer','Cable 70 SQ MM. SAC=3',720,1),(2,2,'P02','engineer','NYY-1C 16 mm2=3,Pipe bridge=1,IEC 3 mm2=4',80359,3),(3,1,'P03','engineer','Cable 70 SQ MM. XLPE=1',550,1),(4,3,'P04','engineer','IEC 3 mm2=1',23,3),(5,3,'P05','Manager','IEC01 2.5 mm2=6',96,5);
/*!40000 ALTER TABLE `boq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CS_ID` int NOT NULL AUTO_INCREMENT,
  `CS_Name` varchar(80) DEFAULT NULL,
  `CS_Phone` varchar(10) DEFAULT NULL,
  `CS_Email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Rujipas Mekarkart','0652223222','rujipas.m@ku.th'),(2,'test-send-email','0123456789','checking.boq@gmail.com'),(3,'test','0910000000','checking.boq@gmail.com');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employer`
--

DROP TABLE IF EXISTS `employer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employer` (
  `EM_WorkID` varchar(10) NOT NULL,
  `EM_GroupID` varchar(10) NOT NULL,
  `EM_Name` varchar(80) NOT NULL,
  `EM_Phone` varchar(10) NOT NULL,
  `EM_Email` varchar(40) NOT NULL,
  PRIMARY KEY (`EM_WorkID`,`EM_GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employer`
--

LOCK TABLES `employer` WRITE;
/*!40000 ALTER TABLE `employer` DISABLE KEYS */;
INSERT INTO `employer` VALUES ('a1','1','A','0800000001','A01@hotmail.com'),('a2','1','B','0800000002','A02@hotmail.com'),('a3','2','C','0800000003','A03@hotmail.com'),('a4','2','D','0800000004','A04@hotmail.com'),('a5','3','E','0800000005','A05@hotmail.com');
/*!40000 ALTER TABLE `employer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materials`
--

DROP TABLE IF EXISTS `materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materials` (
  `Mat_ID` int NOT NULL AUTO_INCREMENT,
  `Mat_Name` varchar(100) DEFAULT NULL,
  `Mat_Price` int DEFAULT NULL,
  PRIMARY KEY (`Mat_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materials`
--

LOCK TABLES `materials` WRITE;
/*!40000 ALTER TABLE `materials` DISABLE KEYS */;
INSERT INTO `materials` VALUES (1,'Cable 70 SQ MM. SAC',240),(2,'Cable 70 SQ MM. XLPE',550),(3,'Cable 25 SQ MM. OHGW',550),(4,'IEC01 2.5 mm2',16),(5,'IEC 3 mm2',23),(6,'IEC 6 mm2',33),(7,'NYY-1C 2.5 mm2',30),(8,'NYY-1C 4 mm2',40),(9,'NYY-1C 16 mm2',89),(10,'Pipe bridge',80000),(12,'Cable 70 SQ MM. SAC',241);
/*!40000 ALTER TABLE `materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tor`
--

DROP TABLE IF EXISTS `tor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tor` (
  `TO_Materials` varchar(300) NOT NULL,
  `TO_GroupID` int NOT NULL,
  `TO_Member` varchar(300) NOT NULL,
  `TO_Period` int DEFAULT NULL,
  `TO_Name` varchar(100) NOT NULL,
  PRIMARY KEY (`TO_Materials`,`TO_GroupID`),
  CONSTRAINT `tor_chk_1` CHECK ((`TO_Period` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tor`
--

LOCK TABLES `tor` WRITE;
/*!40000 ALTER TABLE `tor` DISABLE KEYS */;
INSERT INTO `tor` VALUES ('Cable 70 SQ MM. SAC=3',3,'engineer',1,'P01'),('Cable 70 SQ MM. XLPE=1',1,'engineer',1,'P03'),('IEC 3 mm2=1',3,'engineer',3,'P04'),('IEC01 2.5 mm2=6',3,'Manager',5,'P05'),('NYY-1C 16 mm2=3,Pipe bridge=1,IEC 3 mm2=4',2,'engineer',3,'P02');
/*!40000 ALTER TABLE `tor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-22 23:37:03
