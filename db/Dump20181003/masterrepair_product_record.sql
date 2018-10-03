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
INSERT INTO `product_record` VALUES (1000,'15',107,203,'1971-09-02','1986-01-27','1998-12-23','2001-03-15',502,'1039','1980-07-20 02:10:07',403,308,NULL,'praesentium'),(1001,'20',101,210,'2007-10-14','1974-04-30','1977-11-19','1990-03-02',500,'1649','1983-03-14 18:02:26',402,304,NULL,'veritatis'),(1002,'4',105,201,'1974-08-29','2005-12-02','1970-01-30','2016-07-16',500,'1701','1993-07-25 11:04:09',401,304,NULL,'et'),(1003,'4',110,203,'2014-07-02','1989-03-09','1978-05-23','1990-05-01',503,'960','1983-11-02 05:32:16',403,302,NULL,'minus'),(1004,'5',101,201,'2008-07-17','2006-09-18','2011-10-23','2016-08-02',502,'1045','2002-08-29 12:47:29',400,307,NULL,'nostrum'),(1005,'5',110,205,'1997-02-16','1981-03-25','1997-12-09','1986-11-21',503,'1377','2017-03-13 08:17:28',401,307,NULL,'autem'),(1006,'19',105,201,'1977-04-23','1977-06-13','2017-04-13','1975-09-12',502,'652','1983-07-03 07:58:56',402,310,NULL,'vitae'),(1007,'14',110,208,'1994-01-12','2014-07-09','1997-10-17','1977-05-02',502,'704','1990-09-13 01:55:12',402,304,NULL,'voluptatum'),(1008,'14',107,205,'1970-08-14','1971-08-06','1993-10-16','1996-02-11',502,'1895','1984-01-24 12:07:57',405,303,NULL,'consectetur'),(1009,'14',106,205,'2009-11-04','1990-11-22','2009-09-01','1987-11-28',504,'1206','2005-07-16 12:00:46',402,305,NULL,'vel'),(1010,'16',104,210,'1992-09-16','2004-08-20','2016-01-04','1989-07-05',501,'1738','1989-09-02 17:12:51',402,306,NULL,'vero'),(1011,'6',106,204,'1984-12-06','2016-05-05','2010-03-27','1995-10-28',503,'1303','1975-04-05 05:28:24',402,304,NULL,'laboriosam'),(1012,'14',104,207,'2010-01-08','1980-05-29','2009-10-18','1992-04-15',502,'1900','1972-04-01 14:55:58',403,301,NULL,'tenetur'),(1013,'12',103,200,'1984-06-25','2000-11-29','1997-11-16','2012-06-11',504,'1397','1976-07-07 20:51:33',404,304,NULL,'eveniet'),(1014,'14',110,200,'2000-05-11','1970-06-13','1971-08-29','2010-05-09',500,'637','1972-10-14 20:22:11',405,308,NULL,'hic'),(1015,'7',108,205,'2014-01-30','1996-08-15','1989-05-26','1981-10-07',505,'1754','1992-01-25 04:13:50',402,300,NULL,'possimus'),(1016,'20',101,201,'2000-01-23','2000-04-06','1989-05-27','2012-07-07',502,'1658','1977-08-14 11:36:00',403,304,NULL,'qui'),(1017,'10',102,208,'1982-12-26','1982-04-07','1991-07-22','1994-12-26',500,'1486','1975-07-23 14:34:28',405,300,NULL,'deleniti'),(1018,'17',108,208,'1995-07-07','1975-04-19','2014-07-15','1987-09-26',505,'675','1991-07-26 18:50:30',400,305,NULL,'non'),(1019,'11',105,202,'1986-02-20','1974-02-24','1992-12-22','1998-04-09',505,'1407','1988-06-14 22:11:17',402,300,NULL,'quia'),(1020,'14',105,209,'2003-04-28','2018-08-20','1973-12-11','1976-08-09',501,'523','1990-05-11 16:59:49',401,310,NULL,'reprehenderit'),(1021,'6',105,203,'2005-12-29','1982-07-21','1992-03-02','2008-03-05',504,'1395','1976-03-18 11:35:19',405,302,NULL,'odio'),(1022,'5',103,205,'2010-01-04','2013-12-07','1994-01-26','1984-09-23',504,'1398','2012-10-16 18:46:37',404,309,NULL,'eligendi'),(1023,'2',106,200,'1986-01-20','2009-07-16','1989-03-19','2017-10-07',501,'970','1998-01-04 02:10:18',405,302,NULL,'esse'),(1024,'18',109,209,'1970-10-03','1991-06-29','1994-07-21','2009-03-23',502,'578','1981-12-02 14:07:37',403,303,NULL,'corrupti'),(1025,'2',104,203,'1970-05-03','1988-11-18','2014-04-17','2014-05-04',502,'1732','1988-01-28 11:40:59',403,308,NULL,'voluptas'),(1026,'6',110,210,'1976-05-25','2011-02-04','1989-04-19','1978-12-31',500,'810','1996-12-22 07:47:20',402,308,NULL,'magnam'),(1027,'13',102,201,'1988-11-01','1979-06-10','2009-06-18','1986-08-10',501,'559','1995-04-03 01:46:32',403,308,NULL,'vitae'),(1028,'1',102,203,'1996-04-11','2001-05-04','1992-05-02','2010-12-18',505,'1647','1993-09-19 09:23:03',404,303,NULL,'ex'),(1029,'2',105,201,'2003-09-11','1987-07-27','2007-05-22','1987-11-24',501,'1502','2013-11-14 21:49:28',403,309,NULL,'commodi'),(1030,'19',102,210,'1974-04-08','1992-09-28','2010-04-26','1975-02-05',500,'1843','2017-01-01 13:31:23',403,304,NULL,'iure');
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

-- Dump completed on 2018-10-03 13:01:04
