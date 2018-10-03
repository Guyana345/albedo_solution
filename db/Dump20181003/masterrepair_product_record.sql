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
-- Table structure for table `product_record`
--

DROP TABLE IF EXISTS `product_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product_record` (
  `Product_Record_ID` int(11) NOT NULL,
  `P_Code` varchar(20) NOT NULL,
  `C_ID` int(11) NOT NULL,
  `D_ID` int(11) NOT NULL,
  `Date_Of_Purchase` date NOT NULL,
  `dateRecievedFromCust` date NOT NULL,
  `Sent_to_Factory` date DEFAULT NULL,
  `Recieved_from_Factory` date DEFAULT NULL,
  `warranty_ID` int(11) NOT NULL,
  `cost` varchar(45) DEFAULT NULL,
  `moneyRecieved_Date` datetime DEFAULT NULL,
  `repairSite_siteID` int(11) NOT NULL,
  `MoneyRecievedBy` int(11) DEFAULT NULL,
  `product_recordcol` varchar(45) DEFAULT NULL,
  `RepairStatus` varchar(45) NOT NULL,
  `RepairDetail` varchar(45) NOT NULL,
  PRIMARY KEY (`Product_Record_ID`),
  KEY `fk_product_record_customer1_idx` (`C_ID`),
  KEY `fk_product_record_department_store1_idx` (`D_ID`),
  KEY `fk_product_record_new_table1_idx` (`P_Code`),
  KEY `fk_product_record_warranty1_idx` (`warranty_ID`),
  KEY `fk_product_record_repairSite1_idx` (`repairSite_siteID`),
  KEY `fk_product_record_employee2_idx` (`MoneyRecievedBy`),
  CONSTRAINT `fk_product_record_customer1` FOREIGN KEY (`C_ID`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `fk_product_record_department_store1` FOREIGN KEY (`D_ID`) REFERENCES `department_store` (`department_id`),
  CONSTRAINT `fk_product_record_employee2` FOREIGN KEY (`MoneyRecievedBy`) REFERENCES `employee` (`emid`),
  CONSTRAINT `fk_product_record_new_table1` FOREIGN KEY (`P_Code`) REFERENCES `product` (`product_code`),
  CONSTRAINT `fk_product_record_repairSite1` FOREIGN KEY (`repairSite_siteID`) REFERENCES `repairsite` (`siteid`),
  CONSTRAINT `fk_product_record_warranty1` FOREIGN KEY (`warranty_ID`) REFERENCES `warranty` (`warranty_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_record`
--

LOCK TABLES `product_record` WRITE;
/*!40000 ALTER TABLE `product_record` DISABLE KEYS */;
INSERT INTO `product_record` VALUES (1000,'12',102,210,'2015-04-26','1982-09-12','1990-07-10','1991-11-15',501,'3700','1993-01-10 02:01:03',403,301,NULL,'A dolores asperiores omnis maiores.','Fugit quasi cum dolorem corporis maiores libe'),(1001,'5',109,209,'2000-01-06','2004-06-24','1970-09-23','1977-06-10',500,'2675','1979-07-05 10:38:46',405,300,NULL,'Sint quam commodi odit sequi autem.','Numquam sit voluptatem accusamus blanditiis d'),(1002,'5',104,208,'1992-03-08','1993-06-15','2009-05-18','2016-12-21',500,'4329','1976-11-21 20:00:26',405,304,NULL,'Non aut doloremque non laboriosam nihil solut','Dicta quis fugiat cumque ratione asperiores.'),(1003,'5',102,204,'1974-04-07','2012-02-15','2008-10-06','1993-01-15',503,'4859','1988-12-16 20:54:09',404,300,NULL,'Impedit facilis velit architecto a debitis el','Consequatur eum est necessitatibus.'),(1004,'20',108,209,'1999-12-09','2014-11-18','2016-10-28','1991-06-03',505,'4251','2011-11-21 15:39:22',405,301,NULL,'Sint nihil maiores qui unde ut error doloremq','Nam quas et similique saepe.'),(1005,'13',102,201,'2013-07-01','1984-05-08','1970-01-22','1973-07-29',501,'3071','1989-06-19 00:19:41',400,305,NULL,'Harum voluptatibus officia sit fugiat volupta','Quis voluptatem explicabo aut reiciendis dign'),(1006,'8',107,205,'2018-04-13','1995-02-12','2003-03-01','1999-11-07',502,'3899','1970-12-14 22:01:04',404,300,NULL,'Rerum provident quia nam nobis pariatur.','Doloribus nam qui rerum quaerat aliquam et to'),(1007,'17',106,205,'2014-11-24','1990-11-17','1983-11-08','1992-09-06',503,'3104','2007-03-05 13:34:49',401,301,NULL,'Autem nam distinctio ut esse est.','Accusamus vel qui at ut facere.'),(1008,'11',102,206,'1990-04-02','2008-06-24','1975-11-13','2015-07-25',502,'2432','1974-12-01 21:22:37',404,305,NULL,'Placeat iusto et ut dolor accusantium tempore','Perspiciatis molestiae aut sit vitae.'),(1009,'3',104,210,'1974-06-10','1970-12-30','1989-05-27','1991-12-14',504,'4708','1974-02-09 15:37:35',400,300,NULL,'Pariatur ut repudiandae nisi tenetur fugit ea','Accusantium eius non ducimus amet voluptatibu'),(1010,'2',107,205,'1974-08-09','1984-06-28','1970-07-03','1999-01-14',504,'3984','2003-08-14 20:51:01',400,300,NULL,'Sunt ea dolor earum numquam.','Vero praesentium ut eveniet est hic delectus '),(1011,'17',108,209,'2004-05-25','1985-12-06','2009-05-09','2011-06-19',500,'4626','2012-06-22 15:12:34',401,304,NULL,'Modi nihil consequatur ipsam nam.','Ut ut aliquam qui sequi enim voluptatem repre'),(1012,'2',108,209,'1971-02-13','1992-10-28','1992-07-11','2005-11-01',501,'3270','1976-10-15 23:56:35',401,301,NULL,'Maxime repellendus sit ut quaerat.','Accusantium quo voluptas aut dolorum.'),(1013,'10',110,200,'1976-10-14','1980-01-22','2016-03-23','1978-06-05',500,'4207','2014-06-10 13:14:02',403,301,NULL,'Blanditiis quo quas repellat et voluptatem.','Maxime voluptas a repellat dolorem et ut.'),(1014,'2',101,209,'1995-01-29','1989-10-13','2016-05-12','2000-09-23',502,'3311','1978-11-10 20:33:02',400,301,NULL,'Explicabo vero odio ut quos.','Numquam sunt atque minus.'),(1015,'12',106,200,'1991-02-04','1998-04-20','1976-02-28','2012-02-27',501,'4700','2012-05-22 16:37:53',401,301,NULL,'Quasi quia ipsa in reiciendis quas qui.','Ad et omnis tempora omnis eum ipsam nisi.'),(1016,'2',106,201,'1993-01-19','2016-05-17','1998-03-06','1977-04-13',503,'3764','2005-11-05 18:43:21',402,302,NULL,'Impedit aperiam qui non dolorum rerum at aut ','Dolorem facilis enim aspernatur hic earum dol'),(1017,'8',102,209,'2008-09-03','1972-04-17','2013-08-21','2017-03-06',504,'2368','1985-03-01 12:13:35',405,300,NULL,'Fugit delectus qui quisquam.','Vitae dolores earum ut ut maiores reiciendis.'),(1018,'17',105,201,'2018-01-09','1976-09-13','2000-10-02','1978-10-27',500,'2030','1985-04-26 06:55:38',405,304,NULL,'Voluptatibus praesentium aut deleniti volupta','Velit et ut et sed velit exercitationem.'),(1019,'16',107,200,'2013-10-13','1977-10-23','1985-09-21','1984-01-29',500,'4138','1983-09-14 02:34:53',400,303,NULL,'Reprehenderit molestias placeat dolorum est r','Laudantium inventore eum enim suscipit non nu'),(1020,'16',102,207,'1971-01-03','2004-04-02','1989-12-15','1998-03-06',500,'3938','1973-03-24 17:23:56',404,302,NULL,'Culpa voluptatem nihil repellat sunt reiciend','Sit commodi hic placeat voluptatem.'),(1021,'12',102,200,'2016-12-28','1999-03-02','1996-11-10','1993-05-19',501,'4762','2001-11-24 22:21:29',400,304,NULL,'Saepe consequatur occaecati nesciunt rem quas','Impedit sed dolores dolorem incidunt consequa'),(1022,'1',105,209,'1992-04-08','2015-02-02','1977-11-16','1982-11-05',502,'2273','2006-03-11 08:49:25',400,302,NULL,'Tempore nemo quam reiciendis facilis dolorem ','Qui soluta rerum excepturi aut velit.'),(1023,'19',100,206,'1998-02-03','1970-04-13','1988-11-05','2010-03-05',503,'2837','2016-08-16 09:30:40',402,302,NULL,'Dolorem ut modi tenetur totam.','In deleniti autem numquam qui.'),(1024,'9',106,200,'1991-09-17','1975-02-08','2001-10-14','2006-07-11',501,'4680','2006-08-24 10:44:51',403,305,NULL,'Accusamus dolor dolorem sit nesciunt vero vol','Laborum sed aut cum.'),(1025,'1',108,209,'1986-05-29','1994-06-19','1989-12-03','2012-04-13',501,'2625','1978-10-07 22:45:03',402,301,NULL,'Vel et voluptates repudiandae quibusdam.','Accusantium voluptas quibusdam omnis sapiente'),(1026,'13',103,210,'1990-12-31','2007-09-08','2001-02-24','1972-06-03',505,'2826','1982-02-26 23:29:47',401,300,NULL,'Necessitatibus in consequatur culpa dignissim','Vel veniam sed sapiente sed voluptates corrup'),(1027,'17',109,208,'2009-07-22','1999-12-18','1984-09-26','1999-04-12',503,'3155','2001-03-06 05:05:34',403,300,NULL,'Sed qui et beatae officia est fugiat.','Voluptatem dolores fugiat eum qui quis.'),(1028,'10',107,200,'1978-06-20','2010-12-25','1982-03-23','2018-04-17',504,'2212','1972-07-25 22:25:27',403,300,NULL,'Unde facere iusto dolores illo quidem et itaq','Dolorem dolores id tempore maiores itaque sed'),(1029,'19',103,210,'2006-12-14','2015-06-16','2004-12-12','1980-10-28',503,'2724','2004-05-18 01:55:44',405,304,NULL,'Non dolor iure nihil dignissimos et.','Qui ratione quia est id.'),(1030,'11',101,205,'1976-12-01','1988-11-20','1974-05-14','1981-10-21',500,'4856','2010-03-25 17:19:11',401,300,NULL,'Dolores minus omnis est.','Voluptate sunt modi ut molestiae est molestia');
/*!40000 ALTER TABLE `product_record` ENABLE KEYS */;
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
