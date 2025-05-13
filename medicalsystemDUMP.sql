CREATE DATABASE  IF NOT EXISTS `medicalsystem` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `medicalsystem`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: medicalsystem
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `analysis`
--

DROP TABLE IF EXISTS `analysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analysis` (
  `AnalysisID` int NOT NULL AUTO_INCREMENT,
  `TestID` int DEFAULT NULL,
  `DoctorID` int DEFAULT NULL,
  `Results` text,
  `Notes` text,
  PRIMARY KEY (`AnalysisID`),
  KEY `TestID` (`TestID`),
  KEY `DoctorID` (`DoctorID`),
  CONSTRAINT `analysis_ibfk_1` FOREIGN KEY (`TestID`) REFERENCES `tests` (`TestID`),
  CONSTRAINT `analysis_ibfk_2` FOREIGN KEY (`DoctorID`) REFERENCES `doctor` (`DoctorID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analysis`
--

LOCK TABLES `analysis` WRITE;
/*!40000 ALTER TABLE `analysis` DISABLE KEYS */;
INSERT INTO `analysis` VALUES (1,18,13,'Elevated cholesterol','Prescribe Medication'),(2,16,8,'High blood pressure','Prescribe Medication'),(3,5,1,'No Issues ','Consider regular monitoring'),(4,13,14,'Vitamin D deficiency','Prescribe Medication'),(5,6,4,'Low potassium levels','Prescribe Medication'),(6,10,14,'Anemia detected','Prescribe Medication'),(7,11,9,'Elevated cholesterol','Prescribe Medication'),(8,1,13,'Elevated cholesterol','Prescribe Medication'),(9,12,12,'High blood pressure','Prescribe Medication'),(10,12,12,'Vitamin D deficiency','Prescribe Medication'),(11,18,5,'Elevated cholesterol','Prescribe Medication'),(12,15,9,'High blood pressure','Prescribe Medication'),(13,14,13,'Elevated cholesterol','Prescribe Medication'),(14,12,4,'High blood pressure','Prescribe Medication'),(15,5,10,'Elevated cholesterol','Prescribe Medication'),(16,14,11,'High blood pressure','Prescribe Medication'),(17,2,9,'No Issues ','Consider regular monitoring'),(18,7,10,'No Issues ','Consider regular monitoring'),(19,10,18,'No Issues ','Consider regular monitoring'),(20,20,11,'No Issues ','Consider regular monitoring'),(21,3,9,'Elevated cholesterol','Prescribe Medication'),(22,6,12,'Anemia detected','Prescribe Medication'),(23,14,19,'Anemia detected','Prescribe Medication'),(24,11,10,'Low potassium levels','Prescribe Medication'),(25,1,3,'Low potassium levels','Prescribe Medication');
/*!40000 ALTER TABLE `analysis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `AppointmentID` int NOT NULL AUTO_INCREMENT,
  `PatientID` int DEFAULT NULL,
  `DoctorID` int DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`AppointmentID`),
  KEY `PatientID` (`PatientID`),
  KEY `DoctorID` (`DoctorID`),
  KEY `idx_appointment_date` (`Date`),
  CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`),
  CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`DoctorID`) REFERENCES `doctor` (`DoctorID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (1,11,3,'2024-01-23','09:00:00','Confirmed','Urgent'),(2,19,14,'2024-01-24','14:30:00','Canceled','Normal'),(3,17,10,'2024-01-25','11:00:00','Confirmed','Normal'),(4,18,4,'2024-02-13','16:00:00','Unconfirmed','Urgent'),(5,2,14,'2024-02-15','12:30:00','Confirmed','Normal'),(6,17,2,'2024-03-05','09:30:00','Confirmed','Normal'),(7,16,1,'2024-03-14','15:00:00','Confirmed','Normal'),(8,19,9,'2024-06-05','13:00:00','Unconfirmed','Normal'),(9,13,1,'2024-07-11','10:30:00','Canceled','Normal'),(10,19,14,'2024-08-14','17:00:00','Confirmed','Normal'),(11,18,3,'2024-08-26','11:30:00','Canceled','Normal'),(12,5,2,'2024-08-27','14:00:00','Unconfirmed','Normal'),(13,16,18,'2024-09-05','09:00:00','Canceled','Urgent'),(14,18,5,'2024-09-12','16:30:00','Unconfirmed','Normal'),(15,16,18,'2024-10-29','12:00:00','Confirmed','Normal'),(16,9,8,'2024-11-22','15:30:00','Canceled','Normal'),(17,4,20,'2024-12-16','10:00:00','Confirmed','Normal'),(18,6,16,'2025-01-21','13:30:00','Canceled','Normal'),(19,1,12,'2025-01-23','17:00:00','Confirmed','Urgent'),(20,18,8,'2025-01-28','09:30:00','Canceled','Normal'),(21,14,7,'2025-02-13','16:00:00','Confirmed','Normal'),(22,2,12,'2025-02-19','11:00:00','Unconfirmed','Urgent'),(23,15,14,'2025-03-10','14:30:00','Confirmed','Normal'),(24,3,13,'2025-03-12','12:00:00','Unconfirmed','Urgent'),(25,14,1,'2025-04-01','15:00:00','Confirmed','Normal');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_client`
--

DROP TABLE IF EXISTS `b_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `b_client` (
  `ClientID` int NOT NULL AUTO_INCREMENT,
  `EmployeeName` varchar(100) DEFAULT NULL,
  `Company` varchar(100) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `PhoneNo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ClientID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_client`
--

LOCK TABLES `b_client` WRITE;
/*!40000 ALTER TABLE `b_client` DISABLE KEYS */;
INSERT INTO `b_client` VALUES (1,'﻿Cordelia Mcgowan','Aldi','1980-01-18','41234567'),(2,'Floyd Shepherd','Hungry Jacks','1980-02-14','49876543'),(3,'Leah Valdez','JB HI-FI','1980-04-19','45551212'),(4,'Alma Anderson','Nike','1980-07-09','43219876'),(5,'Frazer Spencer','Aldi','1981-08-04','46060606'),(6,'Roy Salazar','Hungry Jacks','1982-06-30','47778889'),(7,'Zahraa Hughes','Aldi','1983-11-24','40123012'),(8,'Gail Chavez','Aldi','1984-01-18','48901234'),(9,'Sulayman Simmons','JB HI-FI','1984-10-15','42345678'),(10,'Blanche Kaufman','JB HI-FI','1986-01-12','44455566'),(11,'Zaara Meadows','Hungry Jacks','1986-01-13','46789012'),(12,'Alexandre Robbins','Nike','1987-07-31','43322110'),(13,'Craig Salinas','JB HI-FI','1988-11-14','49182736'),(14,'Bethany Singleton','Nike','1990-11-13','45040302'),(15,'Nieve Peck','JB HI-FI','1991-03-23','47865432'),(16,'Thea Trevino','Nike','1992-09-23','40987654'),(17,'Eliot Raymond','Hungry Jacks','1995-09-04','41122334'),(18,'Chad Bridges','Nike','1997-03-08','48899001'),(19,'Guy Mcintyre','Nike','2000-01-07','42233445'),(20,'Eddie Barber','Hungry Jacks','2000-05-19','46677889');
/*!40000 ALTER TABLE `b_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard`
--

DROP TABLE IF EXISTS `dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard` (
  `DashboardID` int NOT NULL AUTO_INCREMENT,
  `ClientID` int DEFAULT NULL,
  `TestID` int DEFAULT NULL,
  `StaffID` int DEFAULT NULL,
  `PatientID` int DEFAULT NULL,
  `TestResults` text,
  `C_Efficiency` decimal(5,2) DEFAULT NULL,
  `Flow` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`DashboardID`),
  KEY `ClientID` (`ClientID`),
  KEY `TestID` (`TestID`),
  KEY `StaffID` (`StaffID`),
  KEY `PatientID` (`PatientID`),
  CONSTRAINT `dashboard_ibfk_1` FOREIGN KEY (`ClientID`) REFERENCES `b_client` (`ClientID`),
  CONSTRAINT `dashboard_ibfk_2` FOREIGN KEY (`TestID`) REFERENCES `tests` (`TestID`),
  CONSTRAINT `dashboard_ibfk_3` FOREIGN KEY (`StaffID`) REFERENCES `staff` (`StaffID`),
  CONSTRAINT `dashboard_ibfk_4` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard`
--

LOCK TABLES `dashboard` WRITE;
/*!40000 ALTER TABLE `dashboard` DISABLE KEYS */;
INSERT INTO `dashboard` VALUES (32,1,6,37,1,'Negative',2.30,'Constant Patient'),(33,2,3,44,2,'Positive',3.00,'Ocational Patient'),(34,3,1,40,3,'Positive',5.30,'Constant Patient'),(35,4,14,42,4,'Negative',1.00,'Ocational Patient'),(36,5,1,32,5,'Positive',2.00,'Ocational Patient'),(37,6,20,41,6,'Positive',1.00,'Constant Patient'),(38,7,9,38,7,'Negative',2.30,'Ocational Patient'),(39,8,3,50,8,'Positive',3.00,'Ocational Patient'),(40,9,11,48,9,'Positive',3.30,'Ocational Patient'),(41,10,10,36,10,'Positive',4.00,'Constant Patient'),(42,11,1,35,11,'Negative',5.00,'Ocational Patient'),(43,12,19,40,12,'Positive',2.30,'Ocational Patient'),(44,13,6,43,13,'Negative',1.30,'Ocational Patient'),(45,14,10,46,14,'Positive',0.30,'Constant Patient'),(46,15,16,39,15,'Negative',5.00,'Ocational Patient'),(47,16,11,34,16,'Positive',4.00,'Ocational Patient'),(48,17,5,36,17,'Negative',3.00,'Ocational Patient'),(49,18,1,33,18,'Negative',2.00,'Constant Patient'),(50,19,11,39,19,'Positive',0.30,'Constant Patient'),(51,20,13,37,20,'Negative',2.00,'Ocational Patient');
/*!40000 ALTER TABLE `dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `DoctorID` int NOT NULL AUTO_INCREMENT,
  `Specialization` varchar(100) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `PhoneNo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`DoctorID`),
  KEY `idx_doctor_specialization` (`Specialization`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'﻿Cardiology','Mackenzie Mcgee','1960-12-13','41927583'),(2,'Neurology','Aminah England','1961-09-25','43584129'),(3,'Pediatrics','Vinny Bauer','1965-07-30','46813204'),(4,'Orthopedics','Sonny Pham','1966-11-02','42375910'),(5,'Dermatology','Martha Soto','1968-11-04','45190376'),(6,'Oncology','Kacper Boone','1969-03-20','47642831'),(7,'Psychiatry','Gemma Owens','1970-01-05','48309152'),(8,'Cardiology','Francesca Howe','1971-11-18','44876293'),(9,'Neurology','Abdullahi Browning','1973-11-17','41253687'),(10,'Cardiology','Hussein Roberts','1974-11-18','46791430'),(11,'Neurology','Malaika Mayo','1975-06-25','43128965'),(12,'Cardiology','Sami Pena','1976-04-24','45697214'),(13,'Cardiology','Andrew Suarez','1980-10-12','42481350'),(14,'Cardiology','Chelsea Hensley','1983-02-21','47914682'),(15,'Orthopedics','Joe Cole','1984-03-29','44362597'),(16,'Neurology','Lili Calderon','1984-08-20','48507143'),(17,'Dermatology','Kelsey Orozco','1986-01-12','41839206'),(18,'Dermatology','Carlo Adkins','1986-03-22','46275891'),(19,'Neurology','Seamus Prince','1986-07-11','43710524'),(20,'Psychiatry','Mae Carr','1990-08-21','45948317');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_record`
--

DROP TABLE IF EXISTS `medical_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical_record` (
  `RecordID` int NOT NULL AUTO_INCREMENT,
  `PatientID` int DEFAULT NULL,
  `Diagnosis` text,
  `Treatments` text,
  `Prescriptions` text,
  PRIMARY KEY (`RecordID`),
  KEY `PatientID` (`PatientID`),
  CONSTRAINT `medical_record_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_record`
--

LOCK TABLES `medical_record` WRITE;
/*!40000 ALTER TABLE `medical_record` DISABLE KEYS */;
INSERT INTO `medical_record` VALUES (1,2,'Hypertension','Diet and exercise','ACE inhibitors'),(2,17,'Diabetes','No sugar diet','Insulin'),(3,2,'Diabetes','No sugar diet','Insulin'),(4,10,'Depressive disorders','Cognitive behavioral therapy','Antidepressants'),(5,9,'Epilepsy','Epilepsy surgery','Anti-seizure'),(6,6,'Hypertension','Diet and exercise','ACE inhibitors'),(7,18,'Hypertension','Diet and exercise','ACE inhibitors'),(8,8,'Diabetes','No sugar diet','Insulin'),(9,5,'Hypertension','Diet and exercise','ACE inhibitors'),(10,19,'Epilepsy','Epilepsy surgery','Anti-seizure'),(11,1,'Diabetes','No sugar diet','Insulin'),(12,16,'Epilepsy','Epilepsy surgery','Anti-seizure'),(13,19,'Hypertension','Diet and exercise','ACE inhibitors'),(14,11,'Depressive disorders','Cognitive behavioral therapy','Antidepressants'),(15,12,'Diabetes','No sugar diet','Insulin'),(16,13,'Hypertension','Diet and exercise','ACE inhibitors'),(17,1,'Depressive disorders','Cognitive behavioral therapy','Antidepressants'),(18,3,'Diabetes','No sugar diet','Insulin'),(19,1,'Diabetes','No sugar diet','Insulin'),(20,1,'Depressive disorders','Cognitive behavioral therapy','Antidepressants'),(21,2,'Hypertension','Diet and exercise','ACE inhibitors'),(22,9,'Diabetes','No sugar diet','Insulin'),(23,2,'Epilepsy','Epilepsy surgery','Anti-seizure'),(24,6,'Diabetes','No sugar diet','Insulin'),(25,16,'Hypertension','Diet and exercise','ACE inhibitors');
/*!40000 ALTER TABLE `medical_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `PatientID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `ASSANDID` varchar(50) NOT NULL,
  `PhoneNo` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PatientID`),
  KEY `idx_patient_dob` (`DOB`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'Joe','1981-10-22','65791','42315987','joe528@example.com\r'),(2,'Karen','1983-03-08','37088','41896324','karen193@example.com\r'),(3,'Max','1984-04-08','29282','43750219','max847@example.com\r'),(4,'Trisha','1985-06-02','92111','46128493','trisha306@example.com\r'),(5,'Romel','1986-09-01','73655','44973105','romel472@example.com\r'),(6,'Mathew','1989-11-19','18994','47302586','mathew915@example.com\r'),(7,'James','1990-09-21','73530','45819672','james634@example.com\r'),(8,'William','1991-07-18','66419','48264130','william281@example.com\r'),(9,'Natasha','1991-07-20','12770','49531807','natasha753@example.com\r'),(10,'Laura','1992-03-12','96671','41207395','laura419@example.com\r'),(11,'Loren','1992-08-16','22147','43689214','loren586@example.com\r'),(12,'Dominic','1998-08-24','89575','46415703','dominic327@example.com\r'),(13,'Kenny','1999-12-07','96181','42978531','kenny864@example.com\r'),(14,'Stan','2004-07-26','24401','45136892','stan142@example.com\r'),(15,'Sofia','2004-11-09','11366','47803926','sofia695@example.com\r'),(16,'Lucia','2006-09-26','59376','44592381','lucia238@example.com\r'),(17,'Kiara','2009-07-22','92764','48321506','kiara971@example.com\r'),(18,'Robert','2011-12-03','23957','41769438','robert503@example.com\r'),(19,'Arianna','2012-06-19','44652','43284150','arianna376@example.com\r'),(20,'Camila','2016-02-12','60869','46907321','camila829@example.com\r');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `StaffID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Salary` decimal(10,2) DEFAULT NULL,
  `Shifts` varchar(100) DEFAULT NULL,
  `PhoneNo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`StaffID`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (32,'﻿Arthur Cochran','1980-10-10',47000.00,'full-time day employee','48192346'),(33,'Mathew Drake','1980-10-26',92000.00,'full-time night employee','41576920'),(34,'Ava Dickerson','1980-12-16',135000.00,'full-time day employee','43829105'),(35,'Isra Leonard','1981-07-29',63000.00,'full-time night employee','46341872'),(36,'Mohsin England','1981-09-29',210000.00,'full-time day employee','42987654'),(37,'Elena Joseph','1982-06-03',88000.00,'full-time night employee','45613209'),(38,'Ayden Trevino','1982-10-20',175000.00,'full-time day employee','47250981'),(39,'Heath Mendoza','1985-03-27',52000.00,'full-time night employee','44875132'),(40,'Hallie Fitzpatrick','1985-11-17',310000.00,'full-time day employee','41392847'),(41,'Adem Baird','1985-12-20',74000.00,'full-time night employee','46704315'),(42,'Clark Cummings','1987-05-16',123000.00,'full-time day employee','43168294'),(43,'Brendan Hebert','1989-11-02',96000.00,'full-time night employee','45927103'),(44,'Lenny Mckenzie','1993-04-23',41000.00,'full-time day employee','42481576'),(45,'Rafael Chase','1996-08-16',162000.00,'full-time night employee','47639821'),(46,'Daniel Hodges','1997-03-08',83000.00,'full-time day employee','44105392'),(47,'Kristian Perkins','1997-04-23',257000.00,'full-time night employee','48376154'),(48,'Jamil Dunlap','1997-05-02',68000.00,'full-time day employee','41920583'),(49,'Maizie Lara','1999-05-05',109000.00,'full-time night employee','46583214'),(50,'Donovan Edwards','1999-07-18',194000.00,'full-time day employee','43247890'),(51,'Denise Moran','2000-12-15',55000.00,'full-time night employee','45791623');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supervision`
--

DROP TABLE IF EXISTS `supervision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supervision` (
  `RecordID` int NOT NULL,
  `DoctorID` int NOT NULL,
  `Notes` text,
  PRIMARY KEY (`RecordID`,`DoctorID`),
  KEY `DoctorID` (`DoctorID`),
  CONSTRAINT `supervision_ibfk_1` FOREIGN KEY (`RecordID`) REFERENCES `medical_record` (`RecordID`),
  CONSTRAINT `supervision_ibfk_2` FOREIGN KEY (`DoctorID`) REFERENCES `doctor` (`DoctorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supervision`
--

LOCK TABLES `supervision` WRITE;
/*!40000 ALTER TABLE `supervision` DISABLE KEYS */;
INSERT INTO `supervision` VALUES (3,8,'x-ray analisis needed'),(4,7,'No longer supervision needed'),(5,7,'Ask for more tests'),(6,7,'Constant supervition needed'),(9,4,'Constant supervition needed'),(9,17,'x-ray analisis needed'),(10,8,'No longer supervision needed'),(10,20,'No longer supervision needed'),(12,14,'Constant supervition needed'),(15,14,'x-ray analisis needed'),(16,3,'Constant supervition needed'),(16,9,'Ask for more tests'),(17,20,'x-ray analisis needed'),(22,14,'No longer supervision needed'),(23,2,'x-ray analisis needed'),(23,13,'Constant supervition needed'),(23,20,'Ask for more tests'),(24,2,'Constant supervition needed'),(24,17,'x-ray analisis needed'),(24,20,'Constant supervition needed'),(25,4,'No longer supervision needed');
/*!40000 ALTER TABLE `supervision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tests`
--

DROP TABLE IF EXISTS `tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tests` (
  `TestID` int NOT NULL AUTO_INCREMENT,
  `PatientID` int DEFAULT NULL,
  `TestName` varchar(100) DEFAULT NULL,
  `TestDescription` text,
  `TestProcedure` text,
  PRIMARY KEY (`TestID`),
  KEY `idx_test_patient` (`PatientID`),
  CONSTRAINT `tests_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tests`
--

LOCK TABLES `tests` WRITE;
/*!40000 ALTER TABLE `tests` DISABLE KEYS */;
INSERT INTO `tests` VALUES (1,12,'Blood test','Search for blood anomalies','drawing blood from vain'),(2,9,'Urine test','Search for diet annomalies','Urine in a recipient'),(3,2,'x-rays','Search for internal anomalies','Computer axial tomography scan'),(4,19,'Electrocardiogram','Search for heart diseases','Use of electrocardiograph'),(5,11,'Blood test','Search for blood anomalies','drawing blood from vain'),(6,5,'Blood test','Search for blood anomalies','drawing blood from vain'),(7,19,'Urine test','Search for diet annomalies','Urine in a recipient'),(8,6,'Electrocardiogram','Search for heart diseases','Use of electrocardiograph'),(9,3,'Blood test','Search for blood anomalies','drawing blood from vain'),(10,8,'Electrocardiogram','Search for heart diseases','Use of electrocardiograph'),(11,1,'Urine test','Search for diet annomalies','Urine in a recipient'),(12,14,'x-rays','Search for internal anomalies','Computer axial tomography scan'),(13,6,'Electrocardiogram','Search for heart diseases','Use of electrocardiograph'),(14,13,'Electrocardiogram','Search for heart diseases','Use of electrocardiograph'),(15,8,'Urine test','Search for diet annomalies','Urine in a recipient'),(16,14,'Blood test','Search for blood anomalies','drawing blood from vain'),(17,19,'x-rays','Search for internal anomalies','Computer axial tomography scan'),(18,18,'Electrocardiogram','Search for heart diseases','Use of electrocardiograph'),(19,18,'x-rays','Search for internal anomalies','Computer axial tomography scan'),(20,3,'Blood test','Search for blood anomalies','drawing blood from vain');
/*!40000 ALTER TABLE `tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_permit`
--

DROP TABLE IF EXISTS `work_permit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `work_permit` (
  `PermitID` int NOT NULL AUTO_INCREMENT,
  `ClientID` int DEFAULT NULL,
  `DoctorID` int DEFAULT NULL,
  `IssueDate` date DEFAULT NULL,
  `ExpireDate` date DEFAULT NULL,
  PRIMARY KEY (`PermitID`),
  KEY `DoctorID` (`DoctorID`),
  KEY `idx_workpermit_client` (`ClientID`),
  CONSTRAINT `work_permit_ibfk_1` FOREIGN KEY (`ClientID`) REFERENCES `b_client` (`ClientID`),
  CONSTRAINT `work_permit_ibfk_2` FOREIGN KEY (`DoctorID`) REFERENCES `doctor` (`DoctorID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_permit`
--

LOCK TABLES `work_permit` WRITE;
/*!40000 ALTER TABLE `work_permit` DISABLE KEYS */;
INSERT INTO `work_permit` VALUES (1,10,17,'2024-07-12','2024-07-19'),(2,16,16,'2025-01-03','2025-01-17'),(3,14,15,'2024-11-28','2024-12-05'),(4,7,12,'2024-03-15','2024-03-29'),(5,10,15,'2025-04-18','2025-04-25'),(6,10,14,'2024-09-21','2024-10-05'),(7,2,2,'2024-05-01','2024-05-08'),(8,11,4,'2025-02-22','2025-03-08'),(9,3,17,'2024-12-10','2024-12-17'),(10,9,19,'2024-08-05','2024-08-19'),(11,2,17,'2025-03-01','2025-03-08'),(12,19,8,'2024-06-19','2024-07-03'),(13,16,5,'2025-04-02','2025-04-09'),(14,7,13,'2024-10-26','2024-11-09'),(15,14,17,'2024-02-07','2024-02-14'),(16,16,20,'2025-01-15','2025-01-29'),(17,19,10,'2024-04-30','2024-05-07'),(18,12,5,'2024-12-31','2025-01-14'),(19,3,3,'2025-03-20','2025-03-27'),(20,20,11,'2024-09-08','2024-09-22'),(21,11,14,'2024-05-23','2024-05-30'),(22,11,15,'2025-02-10','2025-02-24'),(23,11,12,'2024-11-03','2024-11-10'),(24,6,13,'2024-07-29','2024-08-12'),(25,10,12,'2025-04-29','2025-05-06');
/*!40000 ALTER TABLE `work_permit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-30 12:05:50
