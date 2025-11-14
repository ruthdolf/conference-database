DROP TABLE IF EXISTS `attends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attends` (
  `Participant_ID` int NOT NULL,
  `Session_ID` int NOT NULL,
  PRIMARY KEY (`Participant_ID`,`Session_ID`),
  KEY `fk_attends_session` (`Session_ID`),
  CONSTRAINT `fk_attends_participant` FOREIGN KEY (`Participant_ID`) REFERENCES `participant` (`Participant_ID`),
  CONSTRAINT `fk_attends_session` FOREIGN KEY (`Session_ID`) REFERENCES `session` (`Session_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attends`
--

LOCK TABLES `attends` WRITE;
/*!40000 ALTER TABLE `attends` DISABLE KEYS */;
/*!40000 ALTER TABLE `attends` ENABLE KEYS */;
UNLOCK TABLES;
