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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `Product_Code` varchar(20) NOT NULL,
  `Product_Detail` varchar(45) NOT NULL,
  `Price` int(11) NOT NULL,
  `Size` varchar(45) NOT NULL,
  PRIMARY KEY (`Product_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('0','Nostrum necessitatibus reprehenderit amet dol',7,'7'),('1','Corporis accusantium doloribus rerum eius ven',3,'9'),('10','Placeat atque sed sit.',6,'1'),('11','Molestiae quae enim veritatis totam.',2,'7'),('12','Ut commodi rerum recusandae quis provident et',5,'3'),('13','Et consequatur deserunt non.',5,'6'),('14','Tenetur qui enim unde nemo velit sed.',9,'2'),('15','Debitis provident culpa assumenda aut dolorem',5,'3'),('16','Autem suscipit similique nisi aut saepe facil',7,'3'),('17','Voluptatum eum animi dolor iure tenetur assum',1,'3'),('18','Et sunt omnis qui.',2,'4'),('19','Optio at deleniti sed et odit maxime.',4,'3'),('2','Est minus dolores eum sed impedit.',5,'7'),('20','Corporis dolore quia numquam explicabo cupidi',1,'4'),('4','Est explicabo in fuga reprehenderit excepturi',6,'5'),('5','Voluptatibus nulla adipisci rem sapiente quia',2,'3'),('6','Et dolorem dicta eius voluptatum provident in',1,'4'),('7','Aut debitis sint eos iste rerum enim adipisci',3,'6'),('8','Ipsum quisquam aut aut illo velit.',4,'6'),('9','Ipsa et odit voluptas aut magni.',6,'2');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-03 14:41:08
