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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee` (
  `emID` int(11) NOT NULL,
  `fName` varchar(45) NOT NULL,
  `minit` varchar(45) NOT NULL,
  `lName` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`emID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (300,'Hayley','Jr.','Stark','margaret.schoen','9927c2af094c200e55396874c3171ec47797b7d3','batz.kurtis@example.net'),(301,'Meda','MD','Little','marietta.dare','c467bb22e27aa6dd2c1ded3f8f40454f4045732c','eichmann.antoinette@example.net'),(303,'Therese','I','Spencer','mdavis','131f4c1112f67466f839b877d4cac4328ab8afe0','hartmann.shanon@example.com'),(304,'Nasir','V','Marks','qbatz','d961b237e14df0bf44f738f2ff9db7fea6160272','mweimann@example.net'),(305,'Carmel','MD','McGlynn','matilde.hirthe','21d2d843c6a5609f7b66d1518f3d5a1984f5dd94','bartell.mason@example.net'),(306,'Eleonore','Sr.','Fay','raina92','d94869aa0029ed7af65e5b732779ed60b3b18ab5','reta.mccullough@example.org'),(307,'Theresa','Jr.','Lindgren','willow85','9a032b866ae867dd56223b951857def424fe2705','antonio72@example.org'),(308,'Lonnie','IV','Sipes','savanna.runolfsson','dac8960ffafa680694e50ad562c024ac5e74564e','antonetta06@example.com'),(309,'Fritz','V','Johnston','branson.franecki','81b99009f6f43c61af196ef0d8d0ecae9187543a','karine.murazik@example.com'),(310,'Abdiel','V','Stark','ward.nayeli','0c3b3d8a46d04adbe0eb5ce9e2c9b2e937b1c6cc','kpaucek@example.org');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-03 14:41:09
