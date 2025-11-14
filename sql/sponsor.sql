
--
-- Table structure for table `sponsor`
--

DROP TABLE IF EXISTS `sponsor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sponsor` (
  `Sponsor_ID` int NOT NULL,
  `Sponsor_Company` varchar(100) NOT NULL,
  `Sponsor_Tier` enum('Platinum','Gold','Silver') NOT NULL,
  `Sponsor_Amount` decimal(10,2) NOT NULL,
  `Sponsor_Sector` varchar(20) NOT NULL,
  `Sponsor_RepLName` varchar(50) NOT NULL,
  `Sponsor_RepFName` varchar(50) NOT NULL,
  `Sponsor_RepEmail` varchar(100) NOT NULL,
  `Sponsor_RepPhone` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Sponsor_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsor`
--

LOCK TABLES `sponsor` WRITE;
/*!40000 ALTER TABLE `sponsor` DISABLE KEYS */;
INSERT INTO `sponsor` VALUES (1,'Microsoft Azure','Silver',7425.00,'Private','Fitzsimon','Clementine','azure-team@microsoft.com','(754) 929-2176'),(2,'Palo Alto Networks','Silver',9425.00,'Private','Elphinston','Giuditta','contact@paloaltonetworks.com','(425) 054-5632'),(3,'European Union Agency for Cybersecurity (ENISA)','Silver',7329.00,'Public','Warland','April','sponsors@enisa.europa.eu','(757) 863-9716'),(4,'Cado Security','Gold',10370.00,'Private','Janosevic','Dur','info@cadosecurity.com','(605) 779-7990'),(5,'Fortinet','Platinum',63871.00,'Private','Buddles','Jill','partners@fortinet.com','(213) 723-7096'),(6,'Sekoia.io','Silver',8752.00,'Private','Spencelayh','Spencer','events@sekoia.io','(719) 322-2751'),(7,'Amazon Web Services','Gold',18233.00,'Private','Gemnett','Julian','aws-sponsorships@amazon.com','(405) 104-0735'),(8,'Bitdefender','Silver',6218.00,'Private','Reekie','Sutherlan','sponsorships@bitdefender.com','(540) 293-0411'),(9,'Check Point Software Technologies','Silver',9396.00,'Private','Milburne','Tabatha','events@checkpoint.com','(760) 816-5696'),(10,'ESET','Platinum',63304.00,'Private','Mateev','Barr','contact@eset.com','(717) 336-3269'),(11,'Darktrace','Gold',20790.00,'Private','Shevlane','Kendre','partners@darktrace.com','(202) 799-2909'),(12,'F-Secure','Gold',21871.00,'Private','Birdseye','Margaux','events@f-secure.com','(501) 906-4528'),(13,'EclecticIQ','Silver',7444.00,'Private','Drayn','Celestyn','info@eclecticiq.com','(716) 869-2899'),(14,'CrowdStrike','Gold',16814.00,'Private','Cassey','Rickert','info@crowdstrike.com','(714) 529-4919'),(15,'National Cyber Security Centre (UK)','Silver',5758.00,'Public','Baldacchi','Elia','sponsorship@ncsc.gov.uk','(561) 512-5368');
/*!40000 ALTER TABLE `sponsor` ENABLE KEYS */;
UNLOCK TABLES;
