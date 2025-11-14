--
-- Table structure for table `reviewer`
--

DROP TABLE IF EXISTS `reviewer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviewer` (
  `Reviewer_ID` int NOT NULL,
  `Reviewer_FName` varchar(50) NOT NULL,
  `Reviewer_LName` varchar(50) NOT NULL,
  `Reviewer_Email` varchar(100) NOT NULL,
  PRIMARY KEY (`Reviewer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewer`
--

LOCK TABLES `reviewer` WRITE;
/*!40000 ALTER TABLE `reviewer` DISABLE KEYS */;
INSERT INTO `reviewer` VALUES (1,'Clementine','Fitzsimon','clementine.fitzsimon@hotmail.com'),(2,'Giuditta','Elphinston','giuditta.elphinston@gmail.com'),(3,'April','Warland','april.warland@gmail.com'),(4,'Dur','Janosevic','dur.janosevic@hotmail.com'),(5,'Jill','Buddles','jill.buddles@hotmail.com'),(6,'Spencer','Spencelayh','spencer.spencelayh@gmail.com');
/*!40000 ALTER TABLE `reviewer` ENABLE KEYS */;
UNLOCK TABLES;
