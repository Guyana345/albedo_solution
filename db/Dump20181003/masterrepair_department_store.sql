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
-- Table structure for table `department_store`
--

DROP TABLE IF EXISTS `department_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `department_store` (
  `Department_ID` int(11) NOT NULL,
  `Department_Location` varchar(255) NOT NULL,
  `Department_Name` varchar(255) NOT NULL,
  PRIMARY KEY (`Department_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department_store`
--

LOCK TABLES `department_store` WRITE;
/*!40000 ALTER TABLE `department_store` DISABLE KEYS */;
INSERT INTO `department_store` VALUES (200,'510 Rice Roads Suite 513\nHilmatown, WY 12678','Halvorson Inc'),(201,'2872 Lehner Harbor\nNew Joanie, WV 71720','Hermiston Inc'),(203,'955 Cole Pike Suite 853\nGuadalupefurt, IL 92332','Schamberger-McGlynn'),(204,'44514 Russel Brooks\nWest Johnpaultown, CO 41644-2755','Lemke-Gulgowski'),(205,'217 Beier Motorway\nKrisstad, MA 88882','Schultz-Rau'),(206,'368 Wilfrid Shores\nGoodwinfort, NE 18081','Kub Ltd'),(207,'531 Stroman Overpass Apt. 115\nSouth Jefferyview, NM 69125-8624','Sipes Group'),(208,'77950 Earlene Plaza Apt. 744\nNorth Haydenbury, FL 06920','Jenkins-Bauch'),(209,'3094 Koss Track\nHackettside, DE 92730','Grant-Gislason'),(210,'65578 Jast Knolls Apt. 436\nEast Khalil, DC 65777-2675','Donnelly LLC');
/*!40000 ALTER TABLE `department_store` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-03 13:01:04
