-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: lasak23721209
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `candidate_details`
--

DROP TABLE IF EXISTS `candidate_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_details` (
  `CandidateIdentifier` varchar(20) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `Surname` varchar(20) NOT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `TelephoneNumber` int DEFAULT NULL,
  PRIMARY KEY (`CandidateIdentifier`),
  UNIQUE KEY `CandidateIdentifier_UNIQUE` (`CandidateIdentifier`),
  CONSTRAINT `candidate_details_chk_1` CHECK ((`CandidateIdentifier` like _utf8mb4'CAND%'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_details`
--

LOCK TABLES `candidate_details` WRITE;
/*!40000 ALTER TABLE `candidate_details` DISABLE KEYS */;
INSERT INTO `candidate_details` VALUES ('CAND001','Liam','O\'Brien','23 High St, Dublin',1234567),('CAND002','Aoife','Murphy','45 Green Rd, Cork',2345678),('CAND003','Conor','O\'Sullivan','12 River St, Limerick',3456789),('CAND004','Niamh','Doyle','34 Elm Ave, Galway',4567890),('CAND005','Sean','McCarthy','56 Oak St, Waterford',5678901),('CAND006','Ciara','Ryan','78 Maple Dr, Kilkenny',6789012),('CAND007','Patrick','Byrne','90 Park Ln, Sligo',7890123),('CAND008','Emma','Kelly','11 Willow Rd, Athlone',8901234),('CAND009','Michael','O\'Connor','22 Cherry St, Drogheda',9012345),('CAND010','Sarah','Fitzgerald','33 Birch Ave, Wexford',1234567),('CAND011','Brigid','McDonagh','12 Harbour Rd, Galway',2345678),('CAND012','Eoin','Walsh','14 Church St, Cork',3456789),('CAND013','Roisin','Flanagan','77 Main St, Limerick',4567890),('CAND014','Declan','Doherty','8 Abbey Rd, Dublin',5678901),('CAND015','Fiona','Brennan','19 Ash Ln, Kilkenny',6789012);
/*!40000 ALTER TABLE `candidate_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_skills`
--

DROP TABLE IF EXISTS `candidate_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_skills` (
  `CandidateIdentifier` varchar(20) NOT NULL,
  `SkillID` int NOT NULL,
  PRIMARY KEY (`CandidateIdentifier`,`SkillID`),
  KEY `CandidateID_idx` (`CandidateIdentifier`),
  KEY `SkillID_idx` (`SkillID`),
  KEY `CandidateID_idx_new` (`CandidateIdentifier`),
  KEY `SkillID_idx_new` (`SkillID`),
  CONSTRAINT `CandidateID_n` FOREIGN KEY (`CandidateIdentifier`) REFERENCES `candidate_details` (`CandidateIdentifier`),
  CONSTRAINT `SkillID_n` FOREIGN KEY (`SkillID`) REFERENCES `skills` (`SkillID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_skills`
--

LOCK TABLES `candidate_skills` WRITE;
/*!40000 ALTER TABLE `candidate_skills` DISABLE KEYS */;
INSERT INTO `candidate_skills` VALUES ('CAND001',1),('CAND003',1),('CAND005',1),('CAND007',1),('CAND010',1),('CAND012',1),('CAND015',1),('CAND001',2),('CAND003',2),('CAND004',2),('CAND007',2),('CAND009',2),('CAND011',2),('CAND013',2),('CAND015',2),('CAND002',3),('CAND003',3),('CAND006',3),('CAND011',3),('CAND014',3),('CAND001',4),('CAND003',4),('CAND005',4),('CAND007',4),('CAND012',4),('CAND015',4),('CAND001',5),('CAND003',5),('CAND004',5),('CAND007',5),('CAND010',5),('CAND011',5),('CAND014',5),('CAND015',5),('CAND002',6),('CAND004',6),('CAND006',6),('CAND007',6),('CAND009',6),('CAND011',6),('CAND014',6),('CAND015',6),('CAND001',7),('CAND005',7),('CAND007',7),('CAND011',7),('CAND012',7),('CAND015',7),('CAND002',8),('CAND005',8),('CAND008',8),('CAND010',8),('CAND011',8),('CAND013',8),('CAND003',9),('CAND004',9),('CAND005',9),('CAND007',9),('CAND009',9),('CAND012',9),('CAND014',9),('CAND003',10),('CAND005',10),('CAND007',10),('CAND010',10),('CAND012',10),('CAND015',10);
/*!40000 ALTER TABLE `candidate_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department_details`
--

DROP TABLE IF EXISTS `department_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department_details` (
  `DepartmentIdentifier` varchar(20) NOT NULL,
  `DepartmentName` varchar(50) NOT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `TelephoneNumber` int DEFAULT NULL,
  PRIMARY KEY (`DepartmentIdentifier`),
  UNIQUE KEY `DepartmentIdentifier_UNIQUE` (`DepartmentIdentifier`),
  UNIQUE KEY `DepartmentName_UNIQUE` (`DepartmentName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department_details`
--

LOCK TABLES `department_details` WRITE;
/*!40000 ALTER TABLE `department_details` DISABLE KEYS */;
INSERT INTO `department_details` VALUES ('ACCT01','Accounting','123 Finance St, Dublin',3531234),('CS01','Customer Support','606 Service Rd, Athlone',3539098),('FIN01','Finance','404 Budget Blvd, Belfast',4428901),('HR01','Human Resources','456 People Rd, Cork',3532145),('IT01','Information Technology','789 Tech Park, Limerick',3536134),('LEGAL01','Legal','707 Justice Ave, Drogheda',3534198),('MKTG01','Marketing','101 Promotion Ave, Galway',3539145),('OPS01','Operations','303 Supply Ln, Kilkenny',3535678),('RND01','Research and Development','505 Innovation St, Sligo',3537190),('SALES01','Sales','202 Commerce Dr, Waterford',3535145);
/*!40000 ALTER TABLE `department_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interview_details`
--

DROP TABLE IF EXISTS `interview_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interview_details` (
  `InterviewID` int NOT NULL,
  `InterviewDate` date NOT NULL,
  `CandidateID` varchar(20) NOT NULL,
  `DepartmentID` varchar(20) NOT NULL,
  `PositionID` varchar(20) NOT NULL,
  `Outcome` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`InterviewID`),
  UNIQUE KEY `InterviewID_UNIQUE` (`InterviewID`),
  KEY `candidate_idx` (`CandidateID`),
  KEY `department_idx` (`DepartmentID`),
  KEY `position_idx` (`PositionID`),
  CONSTRAINT `candidate` FOREIGN KEY (`CandidateID`) REFERENCES `candidate_details` (`CandidateIdentifier`),
  CONSTRAINT `department` FOREIGN KEY (`DepartmentID`) REFERENCES `department_details` (`DepartmentIdentifier`),
  CONSTRAINT `position` FOREIGN KEY (`PositionID`) REFERENCES `position_details` (`PositionIdentifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interview_details`
--

LOCK TABLES `interview_details` WRITE;
/*!40000 ALTER TABLE `interview_details` DISABLE KEYS */;
INSERT INTO `interview_details` VALUES (1,'2024-11-01','CAND001','ACCT01','AA101',1),(2,'2024-11-01','CAND002','CS01','AA102',0),(3,'2024-11-02','CAND003','FIN01','BB202',1),(4,'2024-11-02','CAND004','HR01','BB203',0),(5,'2024-11-02','CAND005','IT01','CC303',0),(6,'2024-11-03','CAND006','LEGAL01','CC304',0),(7,'2024-11-03','CAND007','MKTG01','DD404',0),(8,'2024-11-04','CAND008','OPS01','DD405',0),(9,'2024-11-04','CAND009','RND01','EE505',1),(10,'2024-11-05','CAND010','SALES01','EE506',0),(12,'2024-11-06','CAND012','CS01','FF607',1),(13,'2024-11-07','CAND013','FIN01','GG707',1),(14,'2024-11-07','CAND014','HR01','GG708',0),(15,'2024-11-08','CAND015','IT01','HH808',1),(16,'2024-11-08','CAND001','LEGAL01','HH809',0),(17,'2024-11-09','CAND002','MKTG01','II909',1),(18,'2024-11-09','CAND003','OPS01','II910',1),(19,'2024-11-10','CAND004','RND01','JJ010',0),(20,'2024-11-10','CAND005','SALES01','JJ011',1),(21,'2024-11-10','CAND006','ACCT01','AA101',0),(23,'2024-11-11','CAND008','FIN01','BB202',0),(24,'2024-11-12','CAND009','HR01','BB203',1),(25,'2024-11-12','CAND010','IT01','CC303',0),(26,'2024-11-12','CAND011','LEGAL01','CC304',1),(27,'2024-11-12','CAND012','MKTG01','DD404',1),(28,'2024-11-13','CAND013','OPS01','DD405',0),(29,'2024-11-13','CAND014','RND01','EE505',0),(30,'2024-11-13','CAND015','SALES01','EE506',1),(31,'2024-11-14','CAND001','ACCT01','AA101',0),(32,'2024-11-14','CAND002','CS01','AA102',1),(33,'2024-11-14','CAND003','FIN01','BB202',0),(34,'2024-11-15','CAND004','HR01','BB203',0),(35,'2024-11-15','CAND005','IT01','CC303',1);
/*!40000 ALTER TABLE `interview_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position_details`
--

DROP TABLE IF EXISTS `position_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position_details` (
  `PositionIdentifier` varchar(20) NOT NULL,
  `DepartmentOffering` varchar(20) NOT NULL,
  `PositionType` varchar(50) NOT NULL,
  PRIMARY KEY (`PositionIdentifier`),
  UNIQUE KEY `PositionIdentifier_UNIQUE` (`PositionIdentifier`),
  KEY `deptid_idx` (`DepartmentOffering`),
  CONSTRAINT `deptid` FOREIGN KEY (`DepartmentOffering`) REFERENCES `department_details` (`DepartmentIdentifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position_details`
--

LOCK TABLES `position_details` WRITE;
/*!40000 ALTER TABLE `position_details` DISABLE KEYS */;
INSERT INTO `position_details` VALUES ('AA101','ACCT01','Junior Accountant'),('AA102','MKTG01','Content Specialist'),('BB202','ACCT01','Senior Accountant'),('BB203','SALES01','Sales Representative'),('CC303','HR01','HR Assistant'),('CC304','SALES01','Account Manager'),('DD404','HR01','Recruiter'),('DD405','OPS01','Operations Analyst'),('EE505','IT01','IT Support Specialist'),('EE506','OPS01','Supply Chain Specialist'),('FF606','IT01','Network Administrator'),('FF607','FIN01','Financial Analyst'),('GG707','MKTG01','Marketing Coordinator'),('GG708','FIN01','Budget Analyst'),('HH808','RND01','Research Scientist'),('HH809','RND01','Product Developer'),('II909','CS01','Customer Support Representative'),('II910','CS01','Customer Success Manager'),('JJ010','LEGAL01','Legal Assistant'),('JJ011','LEGAL01','Compliance Specialist');
/*!40000 ALTER TABLE `position_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position_skills`
--

DROP TABLE IF EXISTS `position_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position_skills` (
  `PositionIdentifier` varchar(20) NOT NULL,
  `SkillID` int NOT NULL,
  PRIMARY KEY (`PositionIdentifier`,`SkillID`),
  KEY `skilllred_idx` (`SkillID`),
  CONSTRAINT `PositionID` FOREIGN KEY (`PositionIdentifier`) REFERENCES `position_details` (`PositionIdentifier`),
  CONSTRAINT `skilllred` FOREIGN KEY (`SkillID`) REFERENCES `skills` (`SkillID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position_skills`
--

LOCK TABLES `position_skills` WRITE;
/*!40000 ALTER TABLE `position_skills` DISABLE KEYS */;
INSERT INTO `position_skills` VALUES ('AA101',1),('AA102',1),('DD404',1),('DD405',1),('FF606',1),('HH808',1),('II910',1),('BB202',2),('BB203',2),('DD405',2),('EE505',2),('GG707',2),('GG708',2),('HH809',2),('JJ011',2),('AA101',3),('AA102',3),('CC304',3),('DD404',3),('HH808',3),('II909',3),('AA102',4),('CC303',4),('EE506',4),('GG707',4),('HH809',4),('II909',4),('JJ011',4),('BB202',5),('BB203',5),('CC304',5),('EE505',5),('FF607',5),('GG707',5),('HH808',5),('II909',5),('AA102',6),('BB202',6),('EE506',6),('FF606',6),('GG708',6),('II910',6),('JJ011',6),('AA101',7),('CC304',7),('DD404',7),('EE506',7),('HH808',7),('JJ010',7),('CC304',8),('DD404',8),('EE506',8),('FF606',8),('II909',8),('JJ011',8),('BB202',9),('CC304',9),('DD404',9),('FF607',9),('GG707',9),('HH808',9),('II910',9),('BB203',10),('CC303',10),('DD405',10),('EE505',10),('GG708',10),('JJ010',10),('JJ011',10);
/*!40000 ALTER TABLE `position_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `SkillID` int NOT NULL,
  `SkillName` varchar(40) NOT NULL,
  PRIMARY KEY (`SkillID`),
  UNIQUE KEY `SkillID_UNIQUE` (`SkillID`),
  UNIQUE KEY `SkillName_UNIQUE` (`SkillName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (5,'Adaptability'),(4,'Administrative Skills'),(1,'Communication'),(9,'Creativity'),(6,'Critical Thinking'),(10,'Leadership'),(2,'Problem Solving'),(8,'Project Management'),(3,'Teamwork'),(7,'Technical Skills');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'lasak23721209'
--
/*!50003 DROP PROCEDURE IF EXISTS `InsertCandidate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertCandidate`(
    IN p_CandidateIdentifier VARCHAR(20),
    IN p_FirstName VARCHAR(20),
    IN p_Surname VARCHAR(20),
    IN p_Address VARCHAR(50),
    IN p_TelephoneNumber INT
)
BEGIN
    INSERT INTO TableName (
        CandidateIdentifier, 
        FirstName, 
        Surname, 
        Address, 
        TelephoneNumber
    ) 
    VALUES (
        p_CandidateIdentifier, 
        p_FirstName, 
        p_Surname, 
        p_Address, 
        p_TelephoneNumber
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertCandidateSkill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertCandidateSkill`(
    IN p_CandidateIdentifier VARCHAR(20),
    IN p_SkillID INT
)
BEGIN
    INSERT INTO candidate_skills (
        CandidateIdentifier, 
        SkillID
    ) 
    VALUES (
        p_CandidateIdentifier, 
        p_SkillID
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertDepartment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertDepartment`(
	IN p_DepartmentIdentifier VARCHAR(20),
    IN p_DepartmentName VARCHAR(50),
    IN p_Address VARCHAR(50),
    IN p_TelephoneNumber INT
)
BEGIN
	INSERT INTO department_details(
		DepartmentIdentifier,
        DepartmentName,
        Address,
        TelephoneNumber
    )
    VALUES(
		p_DepartmentIdentifier,
        p_DepartmentName,
        p_Address,
        p_TelephoneNumber
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertInterview` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertInterview`(
	IN p_InterviewID INT,
    IN p_InterviewDate Date,
    IN p_CandidateID VARCHAR(20),
    IN p_DepartmentID VARCHAR(20),
    IN p_PositionID VARCHAR(20),
    IN p_Outcome TINYINT(1)
)
BEGIN
	INSERT INTO interview_details(
		InterviewID,
        InterviewDate,
        CandidateID,
        DepartmentID,
        PositionID,
        Outcome
    )
    VALUES(
	p_InterviewID,
    p_InterviewDate,
    p_CandidateID,
    p_DepartmentID,
    p_PositionID,
    p_Outcome
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertPosition` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertPosition`(
	IN p_PositionID VARCHAR(20),
    IN p_DepartmentID VARCHAR(20),
    IN p_PositionType VARCHAR(50)
)
BEGIN
	INSERT INTO position_details(
		PositionID,
        DepartmentID,
        PositionType
    )
    VALUES(
	p_PositionID,
    p_DepartmentID,
    p_PositionType
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertPositionSkill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertPositionSkill`(
    IN p_PositionIdentifier VARCHAR(20),
    IN p_SkillID INT
)
BEGIN
    INSERT INTO position_skills (
        PositionIdentifier, 
        SkillID
    ) 
    VALUES (
        p_PositionIdentifier, 
        p_SkillID
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertSkill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertSkill`(
    IN p_SkillID INT,
    IN p_SkillName VARCHAR(40)
)
BEGIN
    INSERT INTO skills (
        SkillID,
        SkillName
    ) 
    VALUES (
		SkillID,
        p_SkillName
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q01_FindCandidatesGivenName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q01_FindCandidatesGivenName`(p_FirstName Varchar(20))
BEGIN
	select *
    from candidate_details
    where Firstname = p_FirstName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q02_FindSurnameGivenCandidateID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q02_FindSurnameGivenCandidateID`(p_CandidateIdentifier Varchar(20))
BEGIN
	select Surname
    from candidate_details
    where CandidateIdentifier = p_CandidateIdentifier;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q03_FindDepartmentsGivenName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q03_FindDepartmentsGivenName`(p_DepartmentName Varchar(50))
BEGIN
	select *
    from department_details
    where DepartmentName = p_DepartmentName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q04_FindCandidatesWithRequiredSkill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q04_FindCandidatesWithRequiredSkill`(p_PositionID VARCHAR(20))
BEGIN
select DISTINCT cd.CandidateIdentifier, cd.FirstName, cd.Surname, cd.TelephoneNumber, cd.Address
from candidate_details cd, position_skills ps, candidate_skills cs
where cd.CandidateIdentifier = cs.CandidateIdentifier 
and ps.PositionIdentifier = p_PositionID 
and cs.SkillID = ps.SkillID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q05_FindPositionsRequiringSkill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q05_FindPositionsRequiringSkill`(p_SkillName varchar(40))
BEGIN
	select distinct pd.PositionIdentifier, pd.PositionType, pd.DepartmentOffering, s.SkillID
    from position_details pd, position_skills ps, skills s
    where s.SkillName = p_SkillName
    and s.SkillID = ps.SkillID
    and ps.PositionIdentifier = pd.PositionIdentifier;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q06_FindNumberOfCandidatesWithOffers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q06_FindNumberOfCandidatesWithOffers`()
BEGIN
	select count(*) as 'Number of offers'
    from interview_details i
    where i.Outcome = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q07_NumberOfAdministrativeSkillsPositions` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q07_NumberOfAdministrativeSkillsPositions`()
BEGIN
	select count(*) as 'Number of positions requiring Administrative skills'
    from position_details pd, position_skills ps, skills s
    where s.SkillName = 'Administrative Skills'
    and s.SkillID = ps.SkillID
    and ps.PositionIdentifier = pd.PositionIdentifier;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q08_FindCandidateIDInterviewedOnlyOnGivenDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q08_FindCandidateIDInterviewedOnlyOnGivenDate`(p_GivenDate Date)
BEGIN
	select id.CandidateID
    from interview_details id
    where id.InterviewDate = p_GivenDate
	AND CandidateID NOT IN (
		SELECT CandidateID 
		FROM interview_details
		WHERE InterviewDate != p_GivenDate
);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q09_FindInterviewsOnGivenDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q09_FindInterviewsOnGivenDate`(p_GivenDate Date)
BEGIN
	select *
    from interview_details id
    where id.InterviewDate = p_GivenDate;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q10_SortPositionsByDepartments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q10_SortPositionsByDepartments`()
BEGIN
	select *
    from department_details 
    INNER JOIN position_details ON position_details.DepartmentOffering=department_details.DepartmentIdentifier;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q11_FindCandidateNameAndIDWithMultipleInterviews` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q11_FindCandidateNameAndIDWithMultipleInterviews`()
BEGIN
	select cd.CandidateIdentifier, cd.FirstName, cd.Surname
    from interview_details id, candidate_details cd
    where cd.CandidateIdentifier = id.CandidateID
    group by CandidateIdentifier
    having count(*) > 1; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-17 19:07:25
