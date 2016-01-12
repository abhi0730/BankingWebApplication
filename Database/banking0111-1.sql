-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: banking
-- ------------------------------------------------------
-- Server version	5.7.10-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `ACCNT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `BALANCE` double NOT NULL,
  `MIN_BALANCE` double NOT NULL DEFAULT '500',
  `username` varchar(45) NOT NULL,
  PRIMARY KEY (`ACCNT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (7,'Abhinav',3000,500,'abhi'),(8,'Dheeraj',30000,500,'chanti'),(9,'1123',122,500,'u'),(10,'name ',123123,500,'user'),(11,'name ',123123,500,'user'),(12,'dheerajbajj',3000,500,'admin'),(13,'admin',12341,500,'admin'),(14,'admin',121212,500,'admin'),(15,'Abhinav',15000,500,'mama'),(16,'Abhinav',21000,500,'abhi1');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cred`
--

DROP TABLE IF EXISTS `cred`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cred` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `ACCNT_ID` int(11) NOT NULL,
  PRIMARY KEY (`username`),
  KEY `ACCNT_ID` (`ACCNT_ID`),
  CONSTRAINT `cred_ibfk_1` FOREIGN KEY (`ACCNT_ID`) REFERENCES `accounts` (`ACCNT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cred`
--

LOCK TABLES `cred` WRITE;
/*!40000 ALTER TABLE `cred` DISABLE KEYS */;
INSERT INTO `cred` VALUES ('abhi','abhi',7),('abhi1','abhi1',16),('admin','admin',14),('chanti','chanti',8),('mama','mama',15);
/*!40000 ALTER TABLE `cred` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txs`
--

DROP TABLE IF EXISTS `txs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `txs` (
  `TX_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TX_TYPE` varchar(10) DEFAULT NULL,
  `TX_DATE` date DEFAULT NULL,
  `AMOUNT` varchar(45) DEFAULT NULL,
  `ACCNT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TX_ID`),
  KEY `ACCNT_ID_idx` (`ACCNT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txs`
--

LOCK TABLES `txs` WRITE;
/*!40000 ALTER TABLE `txs` DISABLE KEYS */;
INSERT INTO `txs` VALUES (11,'Credit','2016-01-11','2000',8),(12,'Debit','2016-01-11','18000',8),(13,'Credit','2016-01-11','900',8),(14,'Credit','2016-01-11','100',8),(15,'Debit','2016-01-11','5000',8),(16,'Debit','2016-01-11','6000',8),(17,'Credit','2016-01-11','6000',8),(18,'Credit','2016-01-11','5000',15),(19,'Debit','2016-01-11','2000',15),(20,'Credit','2016-01-11','1000',7),(21,'Credit','2016-01-11','10000',16),(22,'Debit','2016-01-11','1000',16),(23,'Credit','2016-01-11','2000',16),(24,'Debit','2016-01-11','1000',7);
/*!40000 ALTER TABLE `txs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-11 21:58:07
