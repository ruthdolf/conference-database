--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `Venue_ID` varchar(10) NOT NULL,
  `Room_Capacity` int NOT NULL,
  PRIMARY KEY (`Venue_ID`),
  UNIQUE KEY `Venue_ID` (`Venue_ID`),
  CONSTRAINT `fk_room_venue` FOREIGN KEY (`Venue_ID`) REFERENCES `venue` (`Venue_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES ('R1',40),('R2',40),('R3',150),('R4',35),('R5',30),('R6',45);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;
