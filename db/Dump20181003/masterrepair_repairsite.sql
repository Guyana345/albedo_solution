-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: masterrepair
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `repairsite`
--

DROP TABLE IF EXISTS `repairsite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `repairsite` (
  `siteID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `location` varchar(512) NOT NULL,
  `phoneNum` varchar(45) NOT NULL,
  PRIMARY KEY (`siteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repairsite`
--

LOCK TABLES `repairsite` WRITE;
/*!40000 ALTER TABLE `repairsite` DISABLE KEYS */;
INSERT INTO `repairsite` VALUES (400,'Hudson-Halvorson','484 Aileen Point\nLake Gradyburgh, AR 36216-5788','+54(0)8245106914'),(402,'Smith, Collins and Schuppe','5840 Janis Burgs\nNew Dee, PA 64741-2210','+11(8)8061941737'),(403,'Heidenreich-Kovacek','794 Daphne Plains\nHellerville, MT 23808','221-629-0215x74696'),(404,'Morar-Spencer','7325 Xander Brook\nAngelport, RI 25532','449.186.0694'),(405,'Kuhlman-Dicki','243 Streich Landing Suite 954\nDachhaven, CO 67502-5422','215.933.0184');
/*!40000 ALTER TABLE `repairsite` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-03 13:01:03
