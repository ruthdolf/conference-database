--
-- Table structure for table `submits`
--

DROP TABLE IF EXISTS `submits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `submits` (
  `Participant_ID` int NOT NULL,
  `Paper_ID` int NOT NULL,
  PRIMARY KEY (`Participant_ID`,`Paper_ID`),
  KEY `fk_submits_paper` (`Paper_ID`),
  CONSTRAINT `fk_submits_paper` FOREIGN KEY (`Paper_ID`) REFERENCES `paper` (`Paper_ID`),
  CONSTRAINT `fk_submits_participant` FOREIGN KEY (`Participant_ID`) REFERENCES `participant` (`Participant_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submits`
--

LOCK TABLES `submits` WRITE;
/*!40000 ALTER TABLE `submits` DISABLE KEYS */;
INSERT INTO `submits` VALUES (22,1),(32,1),(39,1),(57,1),(2,2),(8,2),(34,2),(58,2),(1,3),(18,3),(51,3),(73,3),(29,4),(53,4),(64,4),(74,4),(42,5),(65,5),(67,5),(72,5),(7,6),(25,6),(52,6),(97,6),(44,7),(88,7),(93,7),(100,7),(26,8),(68,8),(77,8),(98,8),(27,9),(35,9),(43,9),(70,9),(14,10),(30,10),(41,10),(83,10),(36,11),(79,11),(82,11),(86,11),(12,12),(56,12),(89,12),(94,12),(19,13),(20,13),(24,13),(49,13),(21,14),(23,14),(71,14),(96,14),(15,15),(45,15),(54,15),(66,15),(3,16),(38,16),(46,16),(84,16),(17,17),(48,17),(91,17),(99,17),(5,18),(50,18),(92,18),(95,18),(11,19),(33,19),(55,19),(80,19),(37,20),(78,20),(85,20),(90,20),(10,21),(28,21),(63,21),(76,21),(40,22),(59,22),(60,22),(69,22),(4,23),(6,23),(9,23),(13,23),(31,24),(47,24),(62,24),(75,24),(16,25),(61,25),(81,25),(87,25);
/*!40000 ALTER TABLE `submits` ENABLE KEYS */;
UNLOCK TABLES;
