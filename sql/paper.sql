--
-- Table structure for table `paper`
--

DROP TABLE IF EXISTS `paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paper` (
  `Paper_ID` int NOT NULL,
  `Paper_Title` text NOT NULL,
  `Topic_ID` int NOT NULL,
  PRIMARY KEY (`Paper_ID`),
  KEY `fk_paper_topic` (`Topic_ID`),
  CONSTRAINT `fk_paper_topic` FOREIGN KEY (`Topic_ID`) REFERENCES `topic` (`Topic_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paper`
--

LOCK TABLES `paper` WRITE;
/*!40000 ALTER TABLE `paper` DISABLE KEYS */;
INSERT INTO `paper` VALUES (1,'Privacy-Preserving Techniques in Cloud Computing',6),(2,'A Survey of Zero Trust Architectures in Modern Enterprises',1),(3,'Insider Threat Detection Using Behavioral Analytics',8),(4,'Detection and Mitigation of DDoS Attacks in Real-Time',2),(5,'Blockchain-Based Solutions for Secure IoT Communication',3),(6,'Evaluating the Effectiveness of Multi-Factor Authentication',5),(7,'Automated Malware Analysis Using Dynamic Sandboxing',4),(8,'Ethical Hacking: Tools, Techniques, and Legal Implications',7),(9,'Adversarial Attacks on Deep Learning Models in Cyber Security',7),(10,'User Awareness and Training for Phishing Prevention',4),(11,'Digital Forensics in the Age of Encrypted Communications',3),(12,'Security Implications of Edge Computing',6),(13,'Vulnerability Assessment of 5G Networks',8),(14,'Machine Learning Approaches for Phishing Detection',2),(15,'Securing Industrial Control Systems Against Ransomware',5),(16,'Cybersecurity Frameworks for Healthcare Systems',1),(17,'Quantum Computing Threats to Current Cryptographic Systems',8),(18,'The Role of Artificial Intelligence in Cyber Threat Intelligence',7),(19,'Cyber Risk Management in Supply Chain Networks',3),(20,'Cybersecurity Challenges in Autonomous Vehicles',1),(21,'Insider Threat Detection Using Behavioral Analytics',2),(22,'Digital Forensics in the Age of Encrypted Communications',5),(23,'Cyber Risk Management in Supply Chain Networks',4),(24,'Evaluating the Effectiveness of Multi-Factor Authentication',6),(25,'Detection and Mitigation of DDoS Attacks in Real-Time',8);
/*!40000 ALTER TABLE `paper` ENABLE KEYS */;
UNLOCK TABLES;
