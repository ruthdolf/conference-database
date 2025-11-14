--
-- Table structure for table `speaks_at`
--

DROP TABLE IF EXISTS `speaks_at`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `speaks_at` (
  `Participant_ID` int NOT NULL,
  `Session_ID` int NOT NULL,
  PRIMARY KEY (`Participant_ID`,`Session_ID`),
  KEY `fk_speaks_at_session` (`Session_ID`),
  CONSTRAINT `fk_speaks_at_participant` FOREIGN KEY (`Participant_ID`) REFERENCES `participant` (`Participant_ID`),
  CONSTRAINT `fk_speaks_at_session` FOREIGN KEY (`Session_ID`) REFERENCES `session` (`Session_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `speaks_at`
--

LOCK TABLES `speaks_at` WRITE;
/*!40000 ALTER TABLE `speaks_at` DISABLE KEYS */;
INSERT INTO `speaks_at` VALUES (30,1),(33,1),(24,2),(25,2),(51,3),(99,3),(73,4),(31,5),(42,5),(1,6),(9,6),(11,7),(72,7),(74,8),(86,8),(44,9),(93,9),(17,10),(76,10),(80,11),(81,11),(18,12),(78,12),(7,13),(57,13),(8,14),(21,14),(49,15),(87,15),(45,16),(64,16),(62,17),(95,17),(41,18),(46,18),(4,19),(79,19),(50,20),(55,20),(69,21),(85,21),(32,22),(52,22),(47,23),(84,23),(19,24),(38,25),(70,25),(20,26),(56,26),(35,27),(48,27),(5,28),(61,28),(2,29),(94,29),(22,30),(77,30),(27,31),(60,31),(36,32),(39,32),(34,33),(66,33),(91,34),(92,34),(28,35),(98,35),(63,36),(96,36),(65,37),(82,37),(58,38),(75,38),(29,39),(53,39),(68,40),(83,40),(15,41),(37,41),(40,42),(88,42),(6,43),(23,43),(54,44),(71,44),(67,45),(14,46),(43,46),(89,47),(97,47),(3,48),(10,48),(13,49),(12,50),(90,50),(16,51),(100,51),(26,52),(59,52);
/*!40000 ALTER TABLE `speaks_at` ENABLE KEYS */;
UNLOCK TABLES;
