--
-- Table structure for table `professional_participant`
--

DROP TABLE IF EXISTS `professional_participant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professional_participant` (
  `Participant_ID` int NOT NULL,
  `Professional_Organization` varchar(255) NOT NULL,
  `Professional_JobTitle` varchar(100) NOT NULL,
  `Professional_Industry` varchar(100) NOT NULL,
  `Professional_Sector` enum('Public','Private') NOT NULL,
  PRIMARY KEY (`Participant_ID`),
  UNIQUE KEY `Participant_ID` (`Participant_ID`),
  CONSTRAINT `fk_professional_participant_participant` FOREIGN KEY (`Participant_ID`) REFERENCES `participant` (`Participant_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professional_participant`
--

LOCK TABLES `professional_participant` WRITE;
/*!40000 ALTER TABLE `professional_participant` DISABLE KEYS */;
INSERT INTO `professional_participant` VALUES (61,'ENISA (European Union Agency for Cybersecurity)','Application Security Administrator','Cyber Security','Public'),(62,'Deloitte','Software Engineer','IT Consultancy','Private'),(63,'CERT-EU (Computer Emergency Response Team for the EU Institutions)','Project Manager','Cyber Security','Public'),(64,'ANSSI (French National Cybersecurity Agency)','Chief Information Security Officer','Cyber Security','Public'),(65,'US Cybersecurity and Infrastructure Security Agency (CISA)','Architect','Cyber Security','Public'),(66,'T-Systems','Data Security Analyst','Cloud Computing','Private'),(67,'Symantec (Broadcom)','Information Security Analyst','Cyber Security','Private'),(68,'Swiss Federal Office for Cyber Security','IT Consultant','Cyber Security','Public'),(69,'BT Security','Cloud Security Architect','Cyber Security','Private'),(70,'Darktrace','Sales Representative','Cyber Security','Private'),(71,'Palo Alto Networks','Product Manager','Cyber Security','Private'),(72,'Sopra Steria','Senior Information Security Analyst','IT Consultancy','Private'),(73,'GCHQ (UK Government Communications Headquarters)','Business Analyst','Cyber Security','Public'),(74,'Bundesamt für Sicherheit in der Informationstechnik (BSI, Germany)','Marketing Director','Cyber Security','Public'),(75,'IBM Cloud','Data Analyst','Cloud Computing','Private'),(76,'NIST (National Institute of Standards and Technology, US)','Sales Representative','Cryptography','Public'),(77,'Accenture','Product Manager','IT Consultancy','Private'),(78,'Europol European Cybercrime Centre (EC3)','Senior Information Security Analyst','Cyber Security','Public'),(79,'EY (Ernst & Young)','Business Analyst','IT Consultancy','Private'),(80,'Capgemini','Marketing Director','IT Consultancy','Private'),(81,'Microsoft Azure','Data Analyst','Cloud Computing','Private'),(82,'National Cyber Security Centre (UK)','Application Security Administrator','Cyber Security','Public'),(83,'Thales Group','Software Engineer','Cryptography','Private'),(84,'Oracle Cloud','Project Manager','Cloud Computing','Private'),(85,'Check Point Software Technologies','Chief Information Security Officer','Cyber Security','Private'),(86,'Google Cloud','Architect','Cloud Computing','Private'),(87,'Amazon Web Services','Data Security Analyst','Cloud Computing','Private'),(88,'CrowdStrike','Information Security Analyst','Cyber Security','Private'),(89,'Gemalto (Thales)','IT Consultant','Cryptography','Private'),(90,'Kaspersky Lab','Cloud Security Architect','Cyber Security','Private'),(91,'Europol European Cybercrime Centre (EC3)','Cloud Security Architect','Cyber Security','Public'),(92,'Microsoft Azure','Architect','Cloud Computing','Private'),(93,'CERT-EU (Computer Emergency Response Team for the EU Institutions)','Project Manager','Cyber Security','Public'),(94,'ANSSI (French National Cybersecurity Agency)','Chief Information Security Officer','Cyber Security','Public'),(95,'Check Point Software Technologies','Business Analyst','Cyber Security','Private'),(96,'Amazon Web Services','Product Manager','Cloud Computing','Private'),(97,'National Cyber Security Centre (UK)','Information Security Analyst','Cyber Security','Public'),(98,'CrowdStrike','Sales Representative','Cyber Security','Private'),(99,'Kaspersky Lab','Application Security Administrator','Cyber Security','Private'),(100,'NIST (National Institute of Standards and Technology, US)','Software Engineer','Cryptography','Public');
/*!40000 ALTER TABLE `professional_participant` ENABLE KEYS */;
UNLOCK TABLES;
