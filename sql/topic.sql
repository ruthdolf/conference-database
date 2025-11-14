--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topic` (
  `Topic_ID` int NOT NULL,
  `Topic_Name` varchar(100) NOT NULL,
  PRIMARY KEY (`Topic_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topic`
--

LOCK TABLES `topic` WRITE;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
INSERT INTO `topic` VALUES (1,'AI'),(2,'IoT Security'),(3,'Cryptography'),(4,'Digital Forensics'),(5,'Security Compliance'),(6,'Cloud Security'),(7,'Blockchain Security'),(8,'Cyber Threat Intelligence');
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
UNLOCK TABLES;
