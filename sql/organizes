--
-- Table structure for table `organizes`
--

DROP TABLE IF EXISTS `organizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organizes` (
  `Organizer_ID` int NOT NULL,
  `Session_ID` int NOT NULL,
  PRIMARY KEY (`Organizer_ID`,`Session_ID`),
  KEY `fk_organizes_session` (`Session_ID`),
  CONSTRAINT `fk_organizes_organizer` FOREIGN KEY (`Organizer_ID`) REFERENCES `organizer` (`Organizer_ID`),
  CONSTRAINT `fk_organizes_session` FOREIGN KEY (`Session_ID`) REFERENCES `session` (`Session_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizes`
--

LOCK TABLES `organizes` WRITE;
/*!40000 ALTER TABLE `organizes` DISABLE KEYS */;
INSERT INTO `organizes` VALUES (5,1),(15,2),(88,2),(59,3),(83,3),(22,4),(36,4),(6,5),(65,5),(1,6),(42,7),(81,7),(28,8),(92,8),(19,9),(33,9),(44,10),(72,10),(78,11),(97,11),(16,12),(62,12),(24,13),(60,13),(20,14),(98,14),(9,15),(54,15),(27,16),(34,16),(39,17),(99,17),(13,18),(79,18),(11,19),(67,19),(37,20),(89,20),(30,21),(66,21),(51,22),(52,22),(26,23),(80,23),(53,24),(23,25),(86,25),(48,26),(69,26),(2,27),(35,27),(63,28),(94,28),(49,29),(95,29),(3,30),(46,31),(75,31),(85,32),(93,32),(56,33),(82,33),(32,34),(58,34),(21,35),(96,35),(17,36),(68,36),(4,37),(40,37),(38,38),(50,38),(41,39),(76,39),(12,40),(87,40),(14,41),(73,41),(25,42),(47,42),(61,43),(71,43),(29,44),(84,44),(8,45),(31,45),(55,46),(57,46),(45,47),(70,47),(43,48),(91,48),(7,49),(10,49),(74,50),(90,50),(18,51),(100,51),(64,52),(77,52);
/*!40000 ALTER TABLE `organizes` ENABLE KEYS */;
UNLOCK TABLES;
