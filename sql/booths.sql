DROP TABLE IF EXISTS `booth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booth` (
  `Venue_ID` varchar(10) NOT NULL,
  `Booth_Size` enum('S','M','L') NOT NULL,
  `Sponsor_ID` int NOT NULL,
  PRIMARY KEY (`Venue_ID`),
  UNIQUE KEY `Venue_ID` (`Venue_ID`),
  UNIQUE KEY `Sponsor_ID` (`Sponsor_ID`),
  CONSTRAINT `fk_booth_sponsor` FOREIGN KEY (`Sponsor_ID`) REFERENCES `sponsor` (`Sponsor_ID`),
  CONSTRAINT `fk_booth_venue` FOREIGN KEY (`Venue_ID`) REFERENCES `venue` (`Venue_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booth`
--

LOCK TABLES `booth` WRITE;
/*!40000 ALTER TABLE `booth` DISABLE KEYS */;
INSERT INTO `booth` VALUES ('B1','L',10),('B10','S',4),('B11','S',6),('B12','S',9),('B13','S',11),('B14','S',12),('B15','S',14),('B2','L',15),('B3','M',1),('B4','M',5),('B5','M',7),('B6','M',8),('B7','M',13),('B8','S',2),('B9','S',3);
/*!40000 ALTER TABLE `booth` ENABLE KEYS */;
UNLOCK TABLES;
