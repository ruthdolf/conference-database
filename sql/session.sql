--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session` (
  `Session_ID` int NOT NULL,
  `Session_Date` date NOT NULL,
  `Session_Timings` varchar(50) NOT NULL,
  `Session_Mode` enum('Online','Offline') NOT NULL,
  `Session_Type` enum('Talk','Workshop','Paper Presentation') NOT NULL,
  `Reviewer_ID` int NOT NULL,
  `Venue_ID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Session_ID`),
  KEY `fk_session_venue` (`Venue_ID`),
  KEY `fk_session_reviewer` (`Reviewer_ID`),
  CONSTRAINT `fk_session_reviewer` FOREIGN KEY (`Reviewer_ID`) REFERENCES `reviewer` (`Reviewer_ID`),
  CONSTRAINT `fk_session_venue` FOREIGN KEY (`Venue_ID`) REFERENCES `room` (`Venue_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
INSERT INTO `session` VALUES (1,'2025-10-13','14:30 to 16:30','Online','Workshop',2,NULL),(2,'2025-10-13','12:00 to 13:15','Offline','Talk',6,'R6'),(3,'2025-10-11','09:00 to 10:15','Online','Paper Presentation',5,NULL),(4,'2025-10-11','10:30 to 11:45','Offline','Workshop',4,'R3'),(5,'2025-10-13','09:00 to 10:15','Online','Talk',3,NULL),(6,'2025-10-14','14:30 to 16:30','Offline','Paper Presentation',3,'R6'),(7,'2025-10-13','10:30 to 11:45','Offline','Workshop',2,'R2'),(8,'2025-10-14','12:00 to 13:15','Online','Talk',3,NULL),(9,'2025-10-13','12:00 to 13:15','Offline','Paper Presentation',1,'R1'),(10,'2025-10-11','09:00 to 10:15','Online','Paper Presentation',2,NULL),(11,'2025-10-11','14:30 to 16:30','Offline','Workshop',6,'R6'),(12,'2025-10-13','10:30 to 11:45','Offline','Talk',5,'R6'),(13,'2025-10-13','09:00 to 10:15','Online','Workshop',5,NULL),(14,'2025-10-13','10:30 to 11:45','Online','Talk',1,NULL),(15,'2025-10-12','14:30 to 16:30','Offline','Paper Presentation',3,'R1'),(16,'2025-10-14','12:00 to 13:15','Offline','Talk',2,'R3'),(17,'2025-10-14','09:00 to 10:15','Offline','Paper Presentation',6,'R4'),(18,'2025-10-13','14:30 to 16:30','Online','Workshop',4,NULL),(19,'2025-10-11','10:30 to 11:45','Online','Talk',5,NULL),(20,'2025-10-12','12:00 to 13:15','Offline','Paper Presentation',3,'R1'),(21,'2025-10-12','10:30 to 11:45','Offline','Workshop',1,'R1'),(22,'2025-10-14','14:30 to 16:30','Offline','Workshop',2,'R1'),(23,'2025-10-13','12:00 to 13:15','Online','Talk',3,NULL),(24,'2025-10-11','09:00 to 10:15','Offline','Paper Presentation',1,'R3'),(25,'2025-10-13','09:00 to 10:15','Online','Paper Presentation',6,NULL),(26,'2025-10-12','12:00 to 13:15','Offline','Workshop',1,'R3'),(27,'2025-10-13','14:30 to 16:30','Online','Talk',5,NULL),(28,'2025-10-13','10:30 to 11:45','Online','Talk',6,NULL),(29,'2025-10-11','12:00 to 13:15','Online','Paper Presentation',5,NULL),(30,'2025-10-12','09:00 to 10:15','Offline','Workshop',4,'R3'),(31,'2025-10-13','14:30 to 16:30','Online','Paper Presentation',1,NULL),(32,'2025-10-13','10:30 to 11:45','Online','Workshop',3,NULL),(33,'2025-10-13','12:00 to 13:15','Offline','Talk',2,'R4'),(34,'2025-10-11','09:00 to 10:15','Online','Talk',6,NULL),(35,'2025-10-12','14:30 to 16:30','Online','Paper Presentation',5,NULL),(36,'2025-10-13','10:30 to 11:45','Offline','Workshop',4,'R3'),(37,'2025-10-12','14:30 to 16:30','Offline','Talk',2,'R3'),(38,'2025-10-12','10:30 to 11:45','Offline','Paper Presentation',2,'R5'),(39,'2025-10-12','09:00 to 10:15','Online','Workshop',6,NULL),(40,'2025-10-12','12:00 to 13:15','Offline','Workshop',5,'R5'),(41,'2025-10-13','12:00 to 13:15','Online','Talk',4,NULL),(42,'2025-10-14','14:30 to 16:30','Offline','Paper Presentation',1,'R2'),(43,'2025-10-12','10:30 to 11:45','Offline','Talk',6,'R6'),(44,'2025-10-13','09:00 to 10:15','Online','Paper Presentation',1,NULL),(45,'2025-10-12','14:30 to 16:30','Online','Workshop',4,NULL),(46,'2025-10-14','09:00 to 10:15','Offline','Paper Presentation',2,'R2'),(47,'2025-10-12','12:00 to 13:15','Offline','Workshop',4,'R6'),(48,'2025-10-12','10:30 to 11:45','Online','Talk',3,NULL),(49,'2025-10-12','09:00 to 10:15','Offline','Workshop',3,'R6'),(50,'2025-10-11','12:00 to 13:15','Offline','Talk',3,'R2'),(51,'2025-10-14','14:30 to 16:30','Online','Paper Presentation',6,NULL),(52,'2025-10-11','10:30 to 11:45','Offline','Workshop',2,'R5');
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;
