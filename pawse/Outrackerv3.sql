CREATE DATABASE  IF NOT EXISTS `outracker` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `outracker`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: outracker
-- ------------------------------------------------------
-- Server version	5.5.25

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
-- Table structure for table `beneficiary`
--

DROP TABLE IF EXISTS `beneficiary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beneficiary` (
  `BeneficiaryName` varchar(180) NOT NULL,
  `BeneficiaryNumber` varchar(30) NOT NULL,
  `BeneficiaryAddress` varchar(280) NOT NULL,
  PRIMARY KEY (`BeneficiaryName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beneficiary`
--

LOCK TABLES `beneficiary` WRITE;
/*!40000 ALTER TABLE `beneficiary` DISABLE KEYS */;
INSERT INTO `beneficiary` VALUES ('CWTS-C1','7163944','Pasig City'),('CWTS-C2','8762712','2501, Taft Avenue'),('MRF','7617281','Parang Village, Caloocan City'),('Pangarap','7760304','Caloocan City');
/*!40000 ALTER TABLE `beneficiary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coordinator`
--

DROP TABLE IF EXISTS `coordinator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coordinator` (
  `CoordinatorName` varchar(45) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(16) NOT NULL,
  PRIMARY KEY (`CoordinatorName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coordinator`
--

LOCK TABLES `coordinator` WRITE;
/*!40000 ALTER TABLE `coordinator` DISABLE KEYS */;
INSERT INTO `coordinator` VALUES ('COSCA','admin','12345');
/*!40000 ALTER TABLE `coordinator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participant`
--

DROP TABLE IF EXISTS `participant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participant` (
  `Participant_IDNumber` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Age` int(11) NOT NULL,
  `Course` varchar(180) NOT NULL,
  `CSF_idCSF` int(11) NOT NULL,
  PRIMARY KEY (`Participant_IDNumber`),
  KEY `CSF_idCSF` (`CSF_idCSF`),
  CONSTRAINT `participant_ibfk_1` FOREIGN KEY (`CSF_idCSF`) REFERENCES `csoa_form` (`idCSF`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participant`
--

LOCK TABLES `participant` WRITE;
/*!40000 ALTER TABLE `participant` DISABLE KEYS */;
/*!40000 ALTER TABLE `participant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `idFeedback` int(11) NOT NULL AUTO_INCREMENT,
  `Feedback` varchar(200) NOT NULL,
  `Beneficiary` varchar(180) NOT NULL,
  `Author` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idFeedback`),
  FOREIGN KEY (`Beneficiary`) REFERENCES `beneficiary` (`BeneficiaryName`) 
  ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

ALTER TABLE `Feedback` AUTO_INCREMENT=100000;
--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csoa_form`
--

DROP TABLE IF EXISTS `csoa_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csoa_form` (
  `idCSF` int(11) NOT NULL AUTO_INCREMENT,
  `ActivityType` varchar(300) NOT NULL,
  `Date_filed` varchar(10) NOT NULL,
  `SponsoringOrganization` varchar(45) NOT NULL,
  `TitleOfActivity` varchar(45) NOT NULL,
  `ActivityDate` varchar(10) NOT NULL,
  `Beneficiary` varchar(180) NOT NULL,
  `TotalProjectedExpense` double NOT NULL,
  `Faculty` varchar(45) NOT NULL,
  `Faculty_Number` varchar(11) NOT NULL,
  `Accomplisher` varchar(45) NOT NULL,
  `Accomplisher_Designation` varchar(45) NOT NULL,
  `Accomplisher_Number` varchar(45) NOT NULL,
  `Accomplisher_Email` varchar(45) NOT NULL,
  `Objectives` varchar(500) NOT NULL,
  `ProgramFlow` varchar(800) NOT NULL,
  `Status` varchar(8) DEFAULT 'Pending',
  `Coordinator_ApprovedBy` varchar(45) DEFAULT NULL,
  `Comments` varchar(160) DEFAULT NULL,
  `beginTime` varchar(45) NOT NULL,
  `endTime` varchar(45) NOT NULL,
  PRIMARY KEY (`idCSF`),
  KEY `Beneficiary` (`Beneficiary`),
  KEY `SponsoringOrganization` (`SponsoringOrganization`),
  CONSTRAINT `csoa_form_ibfk_1` FOREIGN KEY (`Beneficiary`) REFERENCES `beneficiary` (`BeneficiaryName`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `csoa_form_ibfk_2` FOREIGN KEY (`SponsoringOrganization`) REFERENCES `studentorganization` (`OrgName`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10004 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csoa_form`
--

LOCK TABLES `csoa_form` WRITE;
/*!40000 ALTER TABLE `csoa_form` DISABLE KEYS */;
INSERT INTO `csoa_form` VALUES (10000,'Environmental Related','2013-03-15','Moomedia','YMGS','2013-04-10','Pangarap',2500,'Mike Chan','09156271234','Nancy Naval','Junior Officer - Projects and Activities','09178670304','chykuri@gmail.com','Lorem ipsum dolor sit amet, consectetur adipiscing elit.','Nulla cursus pulvinar tortor, nec pretium tellus venenatis non','Approved','Joseph Rosal','','09:00','15:00'),(10002,'Education for Youth','2013-03-08','La Salle Computer Society','Tutorial for C','2013-03-15','CWTS-C2',150,'Angelo Reyes','09176281812','Earlniel Robles','VP - Projects and Activities','09157828123','reinfield_24@yahoo.com','Praesent aliquet sapien et nunc pharetra pretium','Donec congue augue eu turpis mollis vitae consequat mi facilisis','Pending',NULL,NULL,'10:00','15:30'),(10003,'Resource Mobilization','2013-04-01','Moomedia','dffdfd','2013-05-10','CWTS-C1',500,'sddsds','3434','fdf','fdfddff','3434','ffdfaa233@yahoo.com','dsfdf','sfsfsf','Rejected','Nancy Naval','invalid form.','09:00','12:00');
/*!40000 ALTER TABLE `csoa_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentorganization`
--

DROP TABLE IF EXISTS `studentorganization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `studentorganization` (
  `OrgName` varchar(45) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(16) NOT NULL,
  PRIMARY KEY (`OrgName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentorganization`
--

LOCK TABLES `studentorganization` WRITE;
/*!40000 ALTER TABLE `studentorganization` DISABLE KEYS */;
INSERT INTO `studentorganization` VALUES ('Junior Philippine Institution of Accountancy','jpia','jpia123'),('La Salle Computer Society','lscs','lscs123'),('Moomedia','moomedia','moo123'),('Nihon Kenkyuu Kai','nkk','nkk123'),('Outdoor Club','outdoor','out123');
/*!40000 ALTER TABLE `studentorganization` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-04-02 14:20:35
