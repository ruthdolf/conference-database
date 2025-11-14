--
-- Table structure for table `delivered_by`
--

DROP TABLE IF EXISTS `delivered_by`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivered_by` (
  `Sponsor_ID` int NOT NULL,
  `Session_ID` int NOT NULL,
  PRIMARY KEY (`Sponsor_ID`,`Session_ID`),
  KEY `fk_delivered_by_session` (`Session_ID`),
  CONSTRAINT `fk_delivered_by_session` FOREIGN KEY (`Session_ID`) REFERENCES `session` (`Session_ID`),
  CONSTRAINT `fk_delivered_by_sponsor` FOREIGN KEY (`Sponsor_ID`) REFERENCES `sponsor` (`Sponsor_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivered_by`
--

LOCK TABLES `delivered_by` WRITE;
/*!40000 ALTER TABLE `delivered_by` DISABLE KEYS */;
INSERT INTO `delivered_by` VALUES (14,1),(5,2),(3,3),(13,5),(12,6),(12,7),(2,9),(2,11),(14,13),(6,14),(4,16),(8,17),(10,18),(6,19),(5,21),(4,22),(10,26),(9,28),(7,29),(8,30),(15,33),(9,34),(15,35),(1,36),(3,37),(1,38),(5,40),(13,41),(11,42),(1,45),(7,47),(15,48),(12,49),(6,51),(11,52);
/*!40000 ALTER TABLE `delivered_by` ENABLE KEYS */;
UNLOCK TABLES;
