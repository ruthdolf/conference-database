--
-- Table structure for table `venue`
--

DROP TABLE IF EXISTS `venue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venue` (
  `Venue_ID` varchar(10) NOT NULL,
  `Hall_Name` varchar(100) NOT NULL,
  PRIMARY KEY (`Venue_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venue`
--

LOCK TABLES `venue` WRITE;
/*!40000 ALTER TABLE `venue` DISABLE KEYS */;
INSERT INTO `venue` VALUES ('B1','Biljana'),('B10','Biljana'),('B11','Biljana'),('B12','Biljana'),('B13','Biljana'),('B14','Biljana'),('B15','Biljana'),('B2','Biljana'),('B3','Biljana'),('B4','Biljana'),('B5','Biljana'),('B6','Biljana'),('B7','Biljana'),('B8','Biljana'),('B9','Biljana'),('R1','Business Hall'),('R2','Green Hall'),('R3','Labino'),('R4','Ohrid'),('R5','Kaneo'),('R6','Car Samoil');
/*!40000 ALTER TABLE `venue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
