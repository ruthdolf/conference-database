-- MySQL dump 10.13  Distrib 9.1.0, for Win64 (x86_64)
--
-- Host: localhost    Database: conference_db
-- ------------------------------------------------------
-- Server version	9.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `academic_participant`
--

DROP TABLE IF EXISTS `academic_participant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academic_participant` (
  `Participant_ID` int NOT NULL,
  `Academic_School` varchar(255) NOT NULL,
  `Academic_Specialization` varchar(255) NOT NULL,
  `Academic_Type` enum('Student','Lecturer/Professor') NOT NULL,
  PRIMARY KEY (`Participant_ID`),
  UNIQUE KEY `Participant_ID` (`Participant_ID`),
  CONSTRAINT `fk_academic_participant_participant` FOREIGN KEY (`Participant_ID`) REFERENCES `participant` (`Participant_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic_participant`
--

LOCK TABLES `academic_participant` WRITE;
/*!40000 ALTER TABLE `academic_participant` DISABLE KEYS */;
INSERT INTO `academic_participant` VALUES (1,'Technical University of Munich','Mechatronics','Student'),(2,'University College London','Computer Science','Lecturer/Professor'),(3,'Heidelberg University - Germany','Computer Networks','Student'),(4,'Kadir Has University','Cryptography','Lecturer/Professor'),(5,'University of Amsterdam','Web Development','Lecturer/Professor'),(6,'University of Oxford','Cyber Security','Student'),(7,'Ss. Cyril and Methodius University','Artificial Intelligence','Student'),(8,'ETH Zurich','Robotics','Lecturer/Professor'),(9,'SRH University of Applied Sciences','Mathematics','Student'),(10,'University of Cambridge','Computational Linguistics','Lecturer/Professor'),(11,'Heidelberg University - Germany','Data Engineering','Student'),(12,'SRH University of Applied Sciences','Computer Networks','Lecturer/Professor'),(13,'University of Amsterdam','Web Development','Student'),(14,'Technical University of Munich','Artificial Intelligence','Lecturer/Professor'),(15,'University College London','Computer Science','Lecturer/Professor'),(16,'Ss. Cyril and Methodius University','Robotics','Student'),(17,'Kadir Has University','Data Engineering','Lecturer/Professor'),(18,'University of Oxford','Mathematics','Student'),(19,'University of Cambridge','Cyber Security','Student'),(20,'ETH Zurich','Computational Linguistics','Lecturer/Professor'),(21,'Ss. Cyril and Methodius University','Cryptography','Student'),(22,'University College London','Mechatronics','Lecturer/Professor'),(23,'Kadir Has University','Cyber Security','Lecturer/Professor'),(24,'University of Oxford','Artificial Intelligence','Student'),(25,'ETH Zurich','Computational Linguistics','Student'),(26,'University of Amsterdam','Computer Networks','Lecturer/Professor'),(27,'University of Cambridge','Cryptography','Lecturer/Professor'),(28,'Heidelberg University - Germany','Mathematics','Student'),(29,'SRH University of Applied Sciences','Mechatronics','Student'),(30,'Technical University of Munich','Robotics','Lecturer/Professor'),(31,'Technical University of Munich','Web Development','Student'),(32,'Ss. Cyril and Methodius University','Computer Science','Lecturer/Professor'),(33,'ETH Zurich','Data Engineering','Student'),(34,'Heidelberg University - Germany','Computer Networks','Lecturer/Professor'),(35,'University of Oxford','Cyber Security','Student'),(36,'University College London','Computer Science','Lecturer/Professor'),(37,'SRH University of Applied Sciences','Cryptography','Student'),(38,'University of Cambridge','Mathematics','Lecturer/Professor'),(39,'Kadir Has University','Web Development','Lecturer/Professor'),(40,'University of Amsterdam','Artificial Intelligence','Student'),(41,'Heidelberg University - Germany','Computational Linguistics','Lecturer/Professor'),(42,'Kadir Has University','Robotics','Student'),(43,'University of Amsterdam','Data Engineering','Lecturer/Professor'),(44,'University of Oxford','Mechatronics','Student'),(45,'Ss. Cyril and Methodius University','Computer Science','Student'),(46,'ETH Zurich','Mathematics','Lecturer/Professor'),(47,'SRH University of Applied Sciences','Computational Linguistics','Lecturer/Professor'),(48,'University of Cambridge','Cryptography','Student'),(49,'Technical University of Munich','Web Development','Student'),(50,'University College London','Mechatronics','Lecturer/Professor'),(51,'SRH University of Applied Sciences','Artificial Intelligence','Lecturer/Professor'),(52,'University of Amsterdam','Robotics','Student'),(53,'Technical University of Munich','Computer Networks','Lecturer/Professor'),(54,'University College London','Data Engineering','Student'),(55,'Ss. Cyril and Methodius University','Cyber Security','Lecturer/Professor'),(56,'Kadir Has University','Mechatronics','Student'),(57,'University of Oxford','Artificial Intelligence','Student'),(58,'University of Cambridge','Computer Science','Lecturer/Professor'),(59,'ETH Zurich','Cryptography','Student'),(60,'Heidelberg University - Germany','Cyber Security','Lecturer/Professor');
/*!40000 ALTER TABLE `academic_participant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attends`
--

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

--
-- Table structure for table `booth`
--

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

--
-- Table structure for table `delivered_by`
--

DROP TABLE IF EXISTS `delivered_by`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivered_by` (
  `Sponsor_ID` int NOT NULL,
  `Session_ID` int NOT NULL,
  PRIMARY KEY (`Sponsor_ID`,`Session_ID`),
  KEY `fk_delivered_by_session` (`Session_ID`),
  CONSTRAINT `fk_delivered_by_session` FOREIGN KEY (`Session_ID`) REFERENCES `session` (`Session_ID`),
  CONSTRAINT `fk_delivered_by_sponsor` FOREIGN KEY (`Sponsor_ID`) REFERENCES `sponsor` (`Sponsor_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivered_by`
--

LOCK TABLES `delivered_by` WRITE;
/*!40000 ALTER TABLE `delivered_by` DISABLE KEYS */;
INSERT INTO `delivered_by` VALUES (14,1),(5,2),(3,3),(13,5),(12,6),(12,7),(2,9),(2,11),(14,13),(6,14),(4,16),(8,17),(10,18),(6,19),(5,21),(4,22),(10,26),(9,28),(7,29),(8,30),(15,33),(9,34),(15,35),(1,36),(3,37),(1,38),(5,40),(13,41),(11,42),(1,45),(7,47),(15,48),(12,49),(6,51),(11,52);
/*!40000 ALTER TABLE `delivered_by` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interests`
--

DROP TABLE IF EXISTS `interests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interests` (
  `Topic_ID` int NOT NULL,
  `Participant_ID` int NOT NULL,
  PRIMARY KEY (`Topic_ID`,`Participant_ID`),
  KEY `fk_interests_participant` (`Participant_ID`),
  CONSTRAINT `fk_interests_participant` FOREIGN KEY (`Participant_ID`) REFERENCES `participant` (`Participant_ID`),
  CONSTRAINT `fk_interests_topic` FOREIGN KEY (`Topic_ID`) REFERENCES `topic` (`Topic_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interests`
--

LOCK TABLES `interests` WRITE;
/*!40000 ALTER TABLE `interests` DISABLE KEYS */;
INSERT INTO `interests` VALUES (1,1),(2,1),(5,1),(6,2),(7,2),(8,2),(4,3),(2,4),(7,4),(6,5),(7,5),(1,6),(4,6),(8,6),(2,7),(5,7),(8,7),(2,8),(2,9),(8,9),(1,10),(2,10),(5,10),(8,10),(1,11),(2,11),(1,12),(5,12),(7,12),(2,13),(3,13),(7,13),(4,14),(5,14),(6,14),(8,15),(2,16),(4,16),(6,16),(8,16),(1,17),(6,17),(3,18),(6,18),(1,19),(3,20),(5,20),(7,20),(1,21),(2,21),(5,22),(4,23),(6,23),(1,24),(3,24),(4,24),(3,25),(7,25),(2,26),(6,26),(8,26),(2,27),(4,27),(8,27),(7,28),(8,28),(3,29),(8,29),(1,30),(5,31),(6,31),(3,32),(7,32),(8,34),(4,35),(6,35),(7,36),(1,37),(5,37),(2,38),(3,38),(6,39),(2,40),(6,40),(2,41),(4,41),(5,41),(8,41),(3,42),(2,43),(3,43),(7,43),(8,43),(1,44),(4,45),(5,45),(8,46),(2,47),(4,47),(6,47),(1,48),(6,49),(7,49),(8,49),(4,50),(6,51),(8,51),(5,52),(2,53),(4,53),(7,53),(8,53),(8,54),(3,55),(6,55),(8,55),(8,56),(4,57),(5,57),(4,58),(7,58),(8,58),(3,60),(4,61),(6,61),(2,62),(8,62),(2,63),(6,63),(2,64),(2,65),(7,65),(8,65),(2,66),(6,66),(3,67),(3,69),(5,69),(6,69),(2,70),(5,70),(6,70),(3,71),(6,71),(7,71),(1,72),(1,73),(8,73),(1,76),(6,76),(3,77),(2,78),(4,78),(2,80),(4,80),(1,81),(3,81),(2,82),(5,82),(2,83),(7,83),(3,84),(1,85),(4,85),(5,85),(6,85),(7,85),(1,86),(3,86),(7,86),(5,88),(8,88),(3,89),(4,89),(5,89),(8,89),(4,90),(6,90),(1,91),(7,91),(6,92),(7,92),(1,93),(2,93),(7,93),(1,94),(3,94),(8,94),(4,95),(6,95),(6,96),(1,97),(2,97),(3,97),(4,97),(6,98),(7,99),(1,100),(5,100),(7,100);
/*!40000 ALTER TABLE `interests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizer`
--

DROP TABLE IF EXISTS `organizer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organizer` (
  `Organizer_ID` int NOT NULL,
  `Organizer_FName` varchar(50) NOT NULL,
  `Organizer_LName` varchar(50) NOT NULL,
  `Organizer_Email` varchar(100) NOT NULL,
  `Organizer_Phone` varchar(25) DEFAULT NULL,
  `Organizer_Affiliation` varchar(255) NOT NULL,
  `Organizer_Role` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Organizer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizer`
--

LOCK TABLES `organizer` WRITE;
/*!40000 ALTER TABLE `organizer` DISABLE KEYS */;
INSERT INTO `organizer` VALUES (1,'Clementine','Fitzsimon','clementine.fitzsimon@hotmail.com','+7 678 971 0012','University College London','Digital Content Manager'),(2,'Giuditta','Elphinston','giuditta.elphinston@gmail.com','+213 769 307 0055','Heidelberg University - Germany','Event Coordinator'),(3,'April','Warland','april.warland@gmail.com','+48 555 812 0097','SRH University of Applied Sciences','Public Relations Lead'),(4,'Dur','Janosevic','dur.janosevic@hotmail.com','+34 080 059 0097','Ss. Cyril and Methodius University','AV/Technical Support'),(5,'Jill','Buddles','jill.buddles@hotmail.com','+39 098 038 0031','Kadir Has University','IT/Platform Support'),(6,'Spencer','Spencelayh','spencer.spencelayh@gmail.com','+60 550 484 0091','Technical University of Munich','Logistics Lead'),(7,'Julian','Gemnett','julian.gemnett@aol.com','+54 424 768 0009','ETH Zurich','Program Manager'),(8,'Sutherlan','Reekie','sutherlan.reekie@freenet.de','+43 167 282 0055','University of Amsterdam','Marketing Director'),(9,'Tabatha','Milburne','tabatha.milburne@gmail.com','+370 726 099 0017','University of Oxford','Sponsorship Manager'),(10,'Barr','Mateev','barr.mateev@outlook.com','+27 777 435 0064','University of Cambridge','Photography & Videography Lead'),(11,'Kendre','Shevlane','kendre.shevlane@comcast.net','+40 777 795 0049','Ss. Cyril and Methodius University','Registration Coordinator'),(12,'Margaux','Birdseye','margaux.birdseye@hotmail.com','+48 046 211 0030','ETH Zurich','Venue Manager'),(13,'Celestyn','Drayn','celestyn.drayn@yahoo.com','+1 602 305 0019','SRH University of Applied Sciences','Workshop Facilitator'),(14,'Rickert','Cassey','rickert.cassey@arcor.de','+54 536 174 0060','University of Cambridge','Digital Content Manager'),(15,'Elia','Baldacchi','elia.baldacchi@yahoo.co.id','+90 180 085 0086','Technical University of Munich','Venue Manager'),(16,'Lyndel','Philips','lyndel.philips@aol.com','+81 186 148 0017','University College London','IT/Platform Support'),(17,'Lorne','Duesberry','lorne.duesberry@hotmail.com','+1 463 933 0020','Heidelberg University - Germany','Marketing Director'),(18,'Zelig','Dugue','zelig.dugue@yahoo.com','+65 498 770 0015','Kadir Has University','Sponsorship Manager'),(19,'Killie','Rogerot','killie.rogerot@cox.net','+91 415 229 0043','University of Amsterdam','AV/Technical Support'),(20,'Deva','Burditt','deva.burditt@sbcglobal.net','+82 721 679 0096','University of Oxford','Public Relations Lead'),(21,'Tully','Saull','tully.saull@yahoo.com','+375 371 255 0023','University of Cambridge','Workshop Facilitator'),(22,'Elene','Castaneda','elene.castaneda@yahoo.co.uk','+34 298 528 0015','University College London','Logistics Lead'),(23,'Everett','Whale','everett.whale@hotmail.com','+1 701 185 0049','Kadir Has University','Program Manager'),(24,'Rosemonde','Hayselden','rosemonde.hayselden@orange.fr','+91 733 040 0095','University of Amsterdam','Registration Coordinator'),(25,'Nissa','Syson','nissa.syson@yahoo.com','+39 746 186 0004','Ss. Cyril and Methodius University','Photography & Videography Lead'),(26,'Shayne','Bridle','shayne.bridle@gmail.com','+91 238 635 0041','Heidelberg University - Germany','Event Coordinator'),(27,'Boigie','Meneur','boigie.meneur@yahoo.com','+34 779 162 0013','University of Oxford','Registration Coordinator'),(28,'Garwin','Del Checolo','garwin.delchecolo@gmail.com','+380 859 688 0055','ETH Zurich','Digital Content Manager'),(29,'Isiahi','Hayesman','isiahi.hayesman@ntlworld.com','+34 485 269 0026','SRH University of Applied Sciences','Public Relations Lead'),(30,'Farrell','Jockle','farrell.jockle@hotmail.es','+65 738 750 0090','Technical University of Munich','Venue Manager'),(31,'Robinette','Wakeham','robinette.wakeham@yahoo.com','+65 823 494 0057','SRH University of Applied Sciences','IT/Platform Support'),(32,'Agnola','Rasor','agnola.rasor@yahoo.com','+7 658 437 0096','University of Oxford','AV/Technical Support'),(33,'Juditha','Colcomb','juditha.colcomb@hotmail.com','+380 995 358 0034','University of Cambridge','Logistics Lead'),(34,'Jackelyn','Yitzhakof','jackelyn.yitzhakof@yahoo.com','+65 684 132 0057','Kadir Has University','Sponsorship Manager'),(35,'Peadar','Crosi','peadar.crosi@gmail.com','+370 365 387 0000','Technical University of Munich','Photography & Videography Lead'),(36,'Clemmy','Farndell','clemmy.farndell@rocketmail.com','+48 468 838 0072','Heidelberg University - Germany','Program Manager'),(37,'Sigfried','Scarrott','sigfried.scarrott@aol.com','+385 849 075 0079','University of Amsterdam','Workshop Facilitator'),(38,'Karissa','Druce','karissa.druce@yahoo.com','+81 527 462 0089','Ss. Cyril and Methodius University','Marketing Director'),(39,'Elena','Seid','elena.seid@hotmail.com','+380 589 340 0037','University College London','Event Coordinator'),(40,'Viola','Franzoli','viola.franzoli@yahoo.com','+34 214 013 0030','ETH Zurich','Sponsorship Manager'),(41,'Marika','Shelper','marika.shelper@charter.net','+82 307 019 0078','Ss. Cyril and Methodius University','Digital Content Manager'),(42,'Cornall','Rutherford','cornall.rutherford@gmail.com','+34 100 285 0034','ETH Zurich','Program Manager'),(43,'Louella','Fiddyment','louella.fiddyment@hotmail.com','+48 960 452 0089','SRH University of Applied Sciences','Venue Manager'),(44,'Rheta','Hallward','rheta.hallward@gmail.com','+971 929 038 0063','University of Cambridge','Marketing Director'),(45,'Torrey','Geraldi','torrey.geraldi@yahoo.com','+91 014 812 0015','Technical University of Munich','Photography & Videography Lead'),(46,'Moritz','Vickress','moritz.vickress@hotmail.com','+81 206 484 0057','University College London','Public Relations Lead'),(47,'Christina','McIlvaney','christina.mcilvaney@hotmail.co.uk','+90 352 639 0062','Heidelberg University - Germany','Workshop Facilitator'),(48,'Guy','Danniell','guy.danniell@gmail.com','+213 368 370 0078','Kadir Has University','Event Coordinator'),(49,'Romy','Jobbins','romy.jobbins@yahoo.com','+65 146 366 0098','University of Amsterdam','AV/Technical Support'),(50,'Marshall','Welman','marshall.welman@hotmail.com','+82 979 010 0074','University of Oxford','IT/Platform Support'),(51,'Addy','Daintrey','addy.daintrey@hotmail.com','+7 465 710 0055','Heidelberg University - Germany','Registration Coordinator'),(52,'Cornie','Martugin','cornie.martugin@rediffmail.com','+46 700 538 0034','University of Amsterdam','Logistics Lead'),(53,'Carmel','Grandin','carmel.grandin@hotmail.co.uk','+54 026 759 0020','University College London','AV/Technical Support'),(54,'Oberon','Wemyss','oberon.wemyss@orange.fr','+65 932 655 0095','SRH University of Applied Sciences','Workshop Facilitator'),(55,'Urban','Loreit','urban.loreit@gmail.com','+370 622 563 0078','Ss. Cyril and Methodius University','IT/Platform Support'),(56,'Marylinda','Jenckes','marylinda.jenckes@hotmail.com','+34 997 065 0004','ETH Zurich','Marketing Director'),(57,'Carina','Bastock','carina.bastock@yahoo.fr','+51 835 171 0007','Kadir Has University','Logistics Lead'),(58,'Benni','Vasile','benni.vasile@hotmail.com','+39 953 628 0050','University of Oxford','Public Relations Lead'),(59,'Jinny','McCuis','jinny.mccuis@hotmail.com','+504 413 358 0065','Technical University of Munich','Sponsorship Manager'),(60,'Fons','Truscott','fons.truscott@hotmail.com','+46 232 036 0025','University of Cambridge','Event Coordinator'),(61,'Leoine','MacDearmont','leoine.macdearmont@msn.com','+1 712 608 0041','Ss. Cyril and Methodius University','Program Manager'),(62,'Chickie','Reeman','chickie.reeman@yahoo.com','+1 217 300 0084','Heidelberg University - Germany','Registration Coordinator'),(63,'Adrianne','Croke','adrianne.croke@yahoo.com','+43 339 957 0030','SRH University of Applied Sciences','Venue Manager'),(64,'Wes','Canadine','wes.canadine@yahoo.es','+7 921 815 0001','University of Oxford','Photography & Videography Lead'),(65,'Adrea','Cominoli','adrea.cominoli@gmail.com','+81 186 982 0078','Technical University of Munich','Digital Content Manager'),(66,'Amandie','Coal','amandie.coal@hotmail.com','+33 891 155 0032','University College London','Sponsorship Manager'),(67,'Ximenez','Beaushaw','ximenez.beaushaw@hotmail.com','+420 858 646 0006','ETH Zurich','Registration Coordinator'),(68,'Obidiah','Honatsch','obidiah.honatsch@hotmail.co.uk','+370 838 132 0071','Kadir Has University','Program Manager'),(69,'Aymer','Davidovic','aymer.davidovic@hotmail.com','+1 323 050 0011','University of Amsterdam','Public Relations Lead'),(70,'Clarissa','Santorini','clarissa.santorini@bigpond.com','+7 519 004 0003','University of Cambridge','Digital Content Manager'),(71,'Marsiella','Ramsden','marsiella.ramsden@hotmail.com','+971 125 930 0085','University College London','IT/Platform Support'),(72,'Laurene','Pinkie','laurene.pinkie@hotmail.com','+81 154 436 0088','Ss. Cyril and Methodius University','Photography & Videography Lead'),(73,'Quincy','Climo','quincy.climo@hotmail.com','+380 285 049 0018','Kadir Has University','Venue Manager'),(74,'Aila','St. Louis','aila.stlouis@gmail.com','+34 460 583 0019','University of Oxford','Logistics Lead'),(75,'Boris','Reddihough','boris.reddihough@gmail.com','+61 924 502 0021','University of Cambridge','AV/Technical Support'),(76,'Chadwick','Scardifeild','chadwick.scardifeild@hotmail.com','+7 447 963 0022','ETH Zurich','Workshop Facilitator'),(77,'Zachariah','Medcalf','zachariah.medcalf@hotmail.fr','+52 839 528 0039','Heidelberg University - Germany','Marketing Director'),(78,'Calvin','Ingerfield','calvin.ingerfield@wanadoo.fr','+48 550 540 0077','SRH University of Applied Sciences','Event Coordinator'),(79,'Phylis','Hares','phylis.hares@gmail.com','+34 738 527 0012','University of Amsterdam','Program Manager'),(80,'Margy','Boullen','margy.boullen@hotmail.com','+64 383 935 0015','Technical University of Munich','AV/Technical Support'),(81,'Lacey','Fazakerley','lacey.fazakerley@yahoo.com','+49 668 431 0090','Ss. Cyril and Methodius University','Registration Coordinator'),(82,'Floria','Plews','floria.plews@uol.com.br','+420 316 711 0055','Heidelberg University - Germany','Marketing Director'),(83,'Spence','Vader','spence.vader@aol.com','+971 772 368 0042','SRH University of Applied Sciences','Photography & Videography Lead'),(84,'Norina','Ruberti','norina.ruberti@hotmail.co.uk','+52 088 286 0091','University of Oxford','Public Relations Lead'),(85,'Alyosha','Berrycloth','alyosha.berrycloth@yahoo.com','+351 359 818 0040','Technical University of Munich','Venue Manager'),(86,'Julia','Loton','julia.loton@gmail.com','+91 582 239 0092','University College London','Workshop Facilitator'),(87,'Rickie','Hackly','rickie.hackly@yahoo.com','+36 937 007 0058','ETH Zurich','Event Coordinator'),(88,'Yorker','Vallentine','yorker.vallentine@yahoo.com','+40 358 517 0085','Kadir Has University','Logistics Lead'),(89,'Jermain','Stroobant','jermain.stroobant@yahoo.com','+52 312 774 0048','University of Amsterdam','Digital Content Manager'),(90,'Gabie','Watkiss','gabie.watkiss@gmail.com','+34 509 620 0099','University of Cambridge','IT/Platform Support'),(91,'Eldon','Ruoff','eldon.ruoff@yahoo.com','+82 516 563 0051','University of Amsterdam','Sponsorship Manager'),(92,'Ambrose','Janu','ambrose.janu@gmail.com','+90 342 122 0029','Ss. Cyril and Methodius University','Event Coordinator'),(93,'Jennie','Sidworth','jennie.sidworth@aol.com','+81 587 759 0069','Heidelberg University - Germany','Logistics Lead'),(94,'Corny','Balsellie','corny.balsellie@hotmail.fr','+421 793 340 0068','University of Oxford','AV/Technical Support'),(95,'Barnabas','Varren','barnabas.varren@yahoo.com.br','+91 902 962 0028','ETH Zurich','Marketing Director'),(96,'Wake','Crenage','wake.crenage@yahoo.de','+34 636 909 0081','SRH University of Applied Sciences','Digital Content Manager'),(97,'Dilly','Champe','dilly.champe@hotmail.com','+40 144 865 0097','Technical University of Munich','Photography & Videography Lead'),(98,'Wilow','Bergin','wilow.bergin@rediffmail.com','+65 490 232 0019','University of Cambridge','Workshop Facilitator'),(99,'Rubina','Lochet','rubina.lochet@sfr.fr','+91 760 628 0079','University College London','Sponsorship Manager'),(100,'Koral','Serraillier','koral.serraillier@rediffmail.com','+43 574 291 0088','Kadir Has University','Program Manager');
/*!40000 ALTER TABLE `organizer` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `paper`
--

DROP TABLE IF EXISTS `paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paper` (
  `Paper_ID` int NOT NULL,
  `Paper_Title` text NOT NULL,
  `Topic_ID` int NOT NULL,
  PRIMARY KEY (`Paper_ID`),
  KEY `fk_paper_topic` (`Topic_ID`),
  CONSTRAINT `fk_paper_topic` FOREIGN KEY (`Topic_ID`) REFERENCES `topic` (`Topic_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paper`
--

LOCK TABLES `paper` WRITE;
/*!40000 ALTER TABLE `paper` DISABLE KEYS */;
INSERT INTO `paper` VALUES (1,'Privacy-Preserving Techniques in Cloud Computing',6),(2,'A Survey of Zero Trust Architectures in Modern Enterprises',1),(3,'Insider Threat Detection Using Behavioral Analytics',8),(4,'Detection and Mitigation of DDoS Attacks in Real-Time',2),(5,'Blockchain-Based Solutions for Secure IoT Communication',3),(6,'Evaluating the Effectiveness of Multi-Factor Authentication',5),(7,'Automated Malware Analysis Using Dynamic Sandboxing',4),(8,'Ethical Hacking: Tools, Techniques, and Legal Implications',7),(9,'Adversarial Attacks on Deep Learning Models in Cyber Security',7),(10,'User Awareness and Training for Phishing Prevention',4),(11,'Digital Forensics in the Age of Encrypted Communications',3),(12,'Security Implications of Edge Computing',6),(13,'Vulnerability Assessment of 5G Networks',8),(14,'Machine Learning Approaches for Phishing Detection',2),(15,'Securing Industrial Control Systems Against Ransomware',5),(16,'Cybersecurity Frameworks for Healthcare Systems',1),(17,'Quantum Computing Threats to Current Cryptographic Systems',8),(18,'The Role of Artificial Intelligence in Cyber Threat Intelligence',7),(19,'Cyber Risk Management in Supply Chain Networks',3),(20,'Cybersecurity Challenges in Autonomous Vehicles',1),(21,'Insider Threat Detection Using Behavioral Analytics',2),(22,'Digital Forensics in the Age of Encrypted Communications',5),(23,'Cyber Risk Management in Supply Chain Networks',4),(24,'Evaluating the Effectiveness of Multi-Factor Authentication',6),(25,'Detection and Mitigation of DDoS Attacks in Real-Time',8);
/*!40000 ALTER TABLE `paper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participant`
--

DROP TABLE IF EXISTS `participant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participant` (
  `Participant_ID` int NOT NULL,
  `Participant_FName` varchar(50) NOT NULL,
  `Participant_LName` varchar(50) NOT NULL,
  `Participant_Email` varchar(100) NOT NULL,
  `Participant_Phone` varchar(25) DEFAULT NULL,
  `Ticket_Type` int NOT NULL,
  PRIMARY KEY (`Participant_ID`),
  UNIQUE KEY `Participant_Email` (`Participant_Email`),
  KEY `fk_participant_ticket` (`Ticket_Type`),
  CONSTRAINT `fk_participant_ticket` FOREIGN KEY (`Ticket_Type`) REFERENCES `ticket` (`Ticket_Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participant`
--

LOCK TABLES `participant` WRITE;
/*!40000 ALTER TABLE `participant` DISABLE KEYS */;
INSERT INTO `participant` VALUES (1,'Clementine','Fitzsimon','clementine.fitzsimon@hotmail.com','+7 678 971 0012',2),(2,'Giuditta','Elphinston','giuditta.elphinston@gmail.com','+213 769 307 0055',3),(3,'April','Warland','april.warland@gmail.com','+48 555 812 0097',1),(4,'Dur','Janosevic','dur.janosevic@hotmail.com','+34 080 059 0097',3),(5,'Jill','Buddles','jill.buddles@hotmail.com','+39 098 038 0031',3),(6,'Spencer','Spencelayh','spencer.spencelayh@gmail.com','+60 550 484 0091',4),(7,'Julian','Gemnett','julian.gemnett@aol.com','+54 424 768 0009',3),(8,'Sutherlan','Reekie','sutherlan.reekie@freenet.de','+43 167 282 0055',4),(9,'Tabatha','Milburne','tabatha.milburne@gmail.com','+370 726 099 0017',4),(10,'Barr','Mateev','barr.mateev@outlook.com','+27 777 435 0064',4),(11,'Kendre','Shevlane','kendre.shevlane@comcast.net','+40 777 795 0049',3),(12,'Margaux','Birdseye','margaux.birdseye@hotmail.com','+48 046 211 0030',3),(13,'Celestyn','Drayn','celestyn.drayn@yahoo.com','+1 602 305 0019',4),(14,'Rickert','Cassey','rickert.cassey@arcor.de','+54 536 174 0060',3),(15,'Elia','Baldacchi','elia.baldacchi@yahoo.co.id','+90 180 085 0086',2),(16,'Lyndel','Philips','lyndel.philips@aol.com','+81 186 148 0017',2),(17,'Lorne','Duesberry','lorne.duesberry@hotmail.com','+1 463 933 0020',2),(18,'Zelig','Dugue','zelig.dugue@yahoo.com','+65 498 770 0015',3),(19,'Killie','Rogerot','killie.rogerot@cox.net','+91 415 229 0043',2),(20,'Deva','Burditt','deva.burditt@sbcglobal.net','+82 721 679 0096',3),(21,'Tully','Saull','tully.saull@yahoo.com','+375 371 255 0023',4),(22,'Elene','Castaneda','elene.castaneda@yahoo.co.uk','+34 298 528 0015',3),(23,'Everett','Whale','everett.whale@hotmail.com','+1 701 185 0049',3),(24,'Rosemonde','Hayselden','rosemonde.hayselden@orange.fr','+91 733 040 0095',3),(25,'Nissa','Syson','nissa.syson@yahoo.com','+39 746 186 0004',4),(26,'Shayne','Bridle','shayne.bridle@gmail.com','+91 238 635 0041',2),(27,'Boigie','Meneur','boigie.meneur@yahoo.com','+34 779 162 0013',3),(28,'Garwin','Del Checolo','garwin.delchecolo@gmail.com','+380 859 688 0055',2),(29,'Isiahi','Hayesman','isiahi.hayesman@ntlworld.com','+34 485 269 0026',3),(30,'Farrell','Jockle','farrell.jockle@hotmail.es','+65 738 750 0090',3),(31,'Robinette','Wakeham','robinette.wakeham@yahoo.com','+65 823 494 0057',1),(32,'Agnola','Rasor','agnola.rasor@yahoo.com','+7 658 437 0096',3),(33,'Juditha','Colcomb','juditha.colcomb@hotmail.com','+380 995 358 0034',1),(34,'Jackelyn','Yitzhakof','jackelyn.yitzhakof@yahoo.com','+65 684 132 0057',3),(35,'Peadar','Crosi','peadar.crosi@gmail.com','+370 365 387 0000',3),(36,'Clemmy','Farndell','clemmy.farndell@rocketmail.com','+48 468 838 0072',3),(37,'Sigfried','Scarrott','sigfried.scarrott@aol.com','+385 849 075 0079',1),(38,'Karissa','Druce','karissa.druce@yahoo.com','+81 527 462 0089',1),(39,'Elena','Seid','elena.seid@hotmail.com','+380 589 340 0037',3),(40,'Viola','Franzoli','viola.franzoli@yahoo.com','+34 214 013 0030',2),(41,'Marika','Shelper','marika.shelper@charter.net','+82 307 019 0078',3),(42,'Cornall','Rutherford','cornall.rutherford@gmail.com','+34 100 285 0034',4),(43,'Louella','Fiddyment','louella.fiddyment@hotmail.com','+48 960 452 0089',2),(44,'Rheta','Hallward','rheta.hallward@gmail.com','+971 929 038 0063',4),(45,'Torrey','Geraldi','torrey.geraldi@yahoo.com','+91 014 812 0015',2),(46,'Moritz','Vickress','moritz.vickress@hotmail.com','+81 206 484 0057',3),(47,'Christina','McIlvaney','christina.mcilvaney@hotmail.co.uk','+90 352 639 0062',3),(48,'Guy','Danniell','guy.danniell@gmail.com','+213 368 370 0078',2),(49,'Romy','Jobbins','romy.jobbins@yahoo.com','+65 146 366 0098',4),(50,'Marshall','Welman','marshall.welman@hotmail.com','+82 979 010 0074',3),(51,'Addy','Daintrey','addy.daintrey@hotmail.com','+7 465 710 0055',3),(52,'Cornie','Martugin','cornie.martugin@rediffmail.com','+46 700 538 0034',4),(53,'Carmel','Grandin','carmel.grandin@hotmail.co.uk','+54 026 759 0020',2),(54,'Oberon','Wemyss','oberon.wemyss@orange.fr','+65 932 655 0095',2),(55,'Urban','Loreit','urban.loreit@gmail.com','+370 622 563 0078',4),(56,'Marylinda','Jenckes','marylinda.jenckes@hotmail.com','+34 997 065 0004',3),(57,'Carina','Bastock','carina.bastock@yahoo.fr','+51 835 171 0007',2),(58,'Benni','Vasile','benni.vasile@hotmail.com','+39 953 628 0050',1),(59,'Jinny','McCuis','jinny.mccuis@hotmail.com','+504 413 358 0065',3),(60,'Fons','Truscott','fons.truscott@hotmail.com','+46 232 036 0025',3),(61,'Leoine','MacDearmont','leoine.macdearmont@msn.com','+1 712 608 0041',2),(62,'Chickie','Reeman','chickie.reeman@yahoo.com','+1 217 300 0084',1),(63,'Adrianne','Croke','adrianne.croke@yahoo.com','+43 339 957 0030',4),(64,'Wes','Canadine','wes.canadine@yahoo.es','+7 921 815 0001',3),(65,'Adrea','Cominoli','adrea.cominoli@gmail.com','+81 186 982 0078',2),(66,'Amandie','Coal','amandie.coal@hotmail.com','+33 891 155 0032',2),(67,'Ximenez','Beaushaw','ximenez.beaushaw@hotmail.com','+420 858 646 0006',4),(68,'Obidiah','Honatsch','obidiah.honatsch@hotmail.co.uk','+370 838 132 0071',3),(69,'Aymer','Davidovic','aymer.davidovic@hotmail.com','+1 323 050 0011',2),(70,'Clarissa','Santorini','clarissa.santorini@bigpond.com','+7 519 004 0003',3),(71,'Marsiella','Ramsden','marsiella.ramsden@hotmail.com','+971 125 930 0085',3),(72,'Laurene','Pinkie','laurene.pinkie@hotmail.com','+81 154 436 0088',2),(73,'Quincy','Climo','quincy.climo@hotmail.com','+380 285 049 0018',1),(74,'Aila','St. Louis','aila.stlouis@gmail.com','+34 460 583 0019',2),(75,'Boris','Reddihough','boris.reddihough@gmail.com','+61 924 502 0021',3),(76,'Chadwick','Scardifeild','chadwick.scardifeild@hotmail.com','+7 447 963 0022',3),(77,'Zachariah','Medcalf','zachariah.medcalf@hotmail.fr','+52 839 528 0039',3),(78,'Calvin','Ingerfield','calvin.ingerfield@wanadoo.fr','+48 550 540 0077',3),(79,'Phylis','Hares','phylis.hares@gmail.com','+34 738 527 0012',3),(80,'Margy','Boullen','margy.boullen@hotmail.com','+64 383 935 0015',3),(81,'Lacey','Fazakerley','lacey.fazakerley@yahoo.com','+49 668 431 0090',2),(82,'Floria','Plews','floria.plews@uol.com.br','+420 316 711 0055',4),(83,'Spence','Vader','spence.vader@aol.com','+971 772 368 0042',3),(84,'Norina','Ruberti','norina.ruberti@hotmail.co.uk','+52 088 286 0091',4),(85,'Alyosha','Berrycloth','alyosha.berrycloth@yahoo.com','+351 359 818 0040',3),(86,'Julia','Loton','julia.loton@gmail.com','+91 582 239 0092',4),(87,'Rickie','Hackly','rickie.hackly@yahoo.com','+36 937 007 0058',3),(88,'Yorker','Vallentine','yorker.vallentine@yahoo.com','+40 358 517 0085',2),(89,'Jermain','Stroobant','jermain.stroobant@yahoo.com','+52 312 774 0048',1),(90,'Gabie','Watkiss','gabie.watkiss@gmail.com','+34 509 620 0099',4),(91,'Eldon','Ruoff','eldon.ruoff@yahoo.com','+82 516 563 0051',4),(92,'Ambrose','Janu','ambrose.janu@gmail.com','+90 342 122 0029',2),(93,'Jennie','Sidworth','jennie.sidworth@aol.com','+81 587 759 0069',3),(94,'Corny','Balsellie','corny.balsellie@hotmail.fr','+421 793 340 0068',3),(95,'Barnabas','Varren','barnabas.varren@yahoo.com.br','+91 902 962 0028',2),(96,'Wake','Crenage','wake.crenage@yahoo.de','+34 636 909 0081',3),(97,'Dilly','Champe','dilly.champe@hotmail.com','+40 144 865 0097',4),(98,'Wilow','Bergin','wilow.bergin@rediffmail.com','+65 490 232 0019',2),(99,'Rubina','Lochet','rubina.lochet@sfr.fr','+91 760 628 0079',2),(100,'Koral','Serraillier','koral.serraillier@rediffmail.com','+43 574 291 0088',2);
/*!40000 ALTER TABLE `participant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professional_participant`
--

DROP TABLE IF EXISTS `professional_participant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professional_participant` (
  `Participant_ID` int NOT NULL,
  `Professional_Organization` varchar(255) NOT NULL,
  `Professional_JobTitle` varchar(100) NOT NULL,
  `Professional_Industry` varchar(100) NOT NULL,
  `Professional_Sector` enum('Public','Private') NOT NULL,
  PRIMARY KEY (`Participant_ID`),
  UNIQUE KEY `Participant_ID` (`Participant_ID`),
  CONSTRAINT `fk_professional_participant_participant` FOREIGN KEY (`Participant_ID`) REFERENCES `participant` (`Participant_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professional_participant`
--

LOCK TABLES `professional_participant` WRITE;
/*!40000 ALTER TABLE `professional_participant` DISABLE KEYS */;
INSERT INTO `professional_participant` VALUES (61,'ENISA (European Union Agency for Cybersecurity)','Application Security Administrator','Cyber Security','Public'),(62,'Deloitte','Software Engineer','IT Consultancy','Private'),(63,'CERT-EU (Computer Emergency Response Team for the EU Institutions)','Project Manager','Cyber Security','Public'),(64,'ANSSI (French National Cybersecurity Agency)','Chief Information Security Officer','Cyber Security','Public'),(65,'US Cybersecurity and Infrastructure Security Agency (CISA)','Architect','Cyber Security','Public'),(66,'T-Systems','Data Security Analyst','Cloud Computing','Private'),(67,'Symantec (Broadcom)','Information Security Analyst','Cyber Security','Private'),(68,'Swiss Federal Office for Cyber Security','IT Consultant','Cyber Security','Public'),(69,'BT Security','Cloud Security Architect','Cyber Security','Private'),(70,'Darktrace','Sales Representative','Cyber Security','Private'),(71,'Palo Alto Networks','Product Manager','Cyber Security','Private'),(72,'Sopra Steria','Senior Information Security Analyst','IT Consultancy','Private'),(73,'GCHQ (UK Government Communications Headquarters)','Business Analyst','Cyber Security','Public'),(74,'Bundesamt für Sicherheit in der Informationstechnik (BSI, Germany)','Marketing Director','Cyber Security','Public'),(75,'IBM Cloud','Data Analyst','Cloud Computing','Private'),(76,'NIST (National Institute of Standards and Technology, US)','Sales Representative','Cryptography','Public'),(77,'Accenture','Product Manager','IT Consultancy','Private'),(78,'Europol European Cybercrime Centre (EC3)','Senior Information Security Analyst','Cyber Security','Public'),(79,'EY (Ernst & Young)','Business Analyst','IT Consultancy','Private'),(80,'Capgemini','Marketing Director','IT Consultancy','Private'),(81,'Microsoft Azure','Data Analyst','Cloud Computing','Private'),(82,'National Cyber Security Centre (UK)','Application Security Administrator','Cyber Security','Public'),(83,'Thales Group','Software Engineer','Cryptography','Private'),(84,'Oracle Cloud','Project Manager','Cloud Computing','Private'),(85,'Check Point Software Technologies','Chief Information Security Officer','Cyber Security','Private'),(86,'Google Cloud','Architect','Cloud Computing','Private'),(87,'Amazon Web Services','Data Security Analyst','Cloud Computing','Private'),(88,'CrowdStrike','Information Security Analyst','Cyber Security','Private'),(89,'Gemalto (Thales)','IT Consultant','Cryptography','Private'),(90,'Kaspersky Lab','Cloud Security Architect','Cyber Security','Private'),(91,'Europol European Cybercrime Centre (EC3)','Cloud Security Architect','Cyber Security','Public'),(92,'Microsoft Azure','Architect','Cloud Computing','Private'),(93,'CERT-EU (Computer Emergency Response Team for the EU Institutions)','Project Manager','Cyber Security','Public'),(94,'ANSSI (French National Cybersecurity Agency)','Chief Information Security Officer','Cyber Security','Public'),(95,'Check Point Software Technologies','Business Analyst','Cyber Security','Private'),(96,'Amazon Web Services','Product Manager','Cloud Computing','Private'),(97,'National Cyber Security Centre (UK)','Information Security Analyst','Cyber Security','Public'),(98,'CrowdStrike','Sales Representative','Cyber Security','Private'),(99,'Kaspersky Lab','Application Security Administrator','Cyber Security','Private'),(100,'NIST (National Institute of Standards and Technology, US)','Software Engineer','Cryptography','Public');
/*!40000 ALTER TABLE `professional_participant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewed_by`
--

DROP TABLE IF EXISTS `reviewed_by`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviewed_by` (
  `Paper_ID` int NOT NULL,
  `Reviewer_ID` int NOT NULL,
  `Review_Score` int DEFAULT NULL,
  `Review_Justification` text,
  PRIMARY KEY (`Paper_ID`,`Reviewer_ID`),
  KEY `fk_reviewed_by_reviewer` (`Reviewer_ID`),
  CONSTRAINT `fk_reviewed_by_paper` FOREIGN KEY (`Paper_ID`) REFERENCES `paper` (`Paper_ID`),
  CONSTRAINT `fk_reviewed_by_reviewer` FOREIGN KEY (`Reviewer_ID`) REFERENCES `reviewer` (`Reviewer_ID`),
  CONSTRAINT `reviewed_by_chk_1` CHECK ((`Review_Score` between 1 and 10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewed_by`
--

LOCK TABLES `reviewed_by` WRITE;
/*!40000 ALTER TABLE `reviewed_by` DISABLE KEYS */;
INSERT INTO `reviewed_by` VALUES (1,1,8,'The theoretical analysis is incomplete and lacks supporting evidence. Rejected.'),(1,4,6,'The paper does not meet the conference\'s originality criteria. Rejected.'),(1,5,4,'Comprehensive literature review and clear contributions justify acceptance.'),(2,2,4,'The study addresses an important problem but fails to provide new insights. Rejected.'),(2,3,2,'The methodology lacks sufficient experimental validation, making the results inconclusive. Rejected.'),(2,5,8,'Innovative use of machine learning techniques with robust validation. Accepted.'),(3,1,8,'The manuscript contains several methodological flaws and unclear explanations. Rejected.'),(3,3,5,'Comprehensive literature review and clear contributions justify acceptance.'),(3,6,6,'The study addresses an important problem but fails to provide new insights. Rejected.'),(4,3,4,'The paper presents a novel approach to data clustering, demonstrating significant improvements over existing methods. Accepted.'),(4,4,8,'The theoretical analysis is incomplete and lacks supporting evidence. Rejected.'),(4,5,9,'The methodology lacks sufficient experimental validation, making the results inconclusive. Rejected.'),(5,1,4,'Innovative use of machine learning techniques with robust validation. Accepted.'),(5,2,9,'The study addresses an important problem but fails to provide new insights. Rejected.'),(5,6,5,'The theoretical analysis is incomplete and lacks supporting evidence. Rejected.'),(6,1,2,'Well-written and thoroughly evaluated, with practical implications. Accepted.'),(6,3,2,'Comprehensive literature review and clear contributions justify acceptance.'),(6,5,6,'The paper presents a novel approach to data clustering, demonstrating significant improvements over existing methods. Accepted.'),(7,1,8,'The paper presents a novel approach to data clustering, demonstrating significant improvements over existing methods. Accepted.'),(7,4,4,'The paper presents a novel approach to data clustering, demonstrating significant improvements over existing methods. Accepted.'),(7,5,8,'Comprehensive literature review and clear contributions justify acceptance.'),(7,6,10,'The study addresses an important problem but fails to provide new insights. Rejected.'),(8,1,8,'The methodology lacks sufficient experimental validation, making the results inconclusive. Rejected.'),(8,2,9,'The manuscript contains several methodological flaws and unclear explanations. Rejected.'),(8,3,10,'Strong experimental results and reproducible code provided. Accepted.'),(8,4,8,'The study addresses an important problem but fails to provide new insights. Rejected.'),(9,1,5,'The theoretical analysis is incomplete and lacks supporting evidence. Rejected.'),(9,2,10,'The methodology lacks sufficient experimental validation, making the results inconclusive. Rejected.'),(9,4,8,'The methodology lacks sufficient experimental validation, making the results inconclusive. Rejected.'),(10,3,9,'Innovative use of machine learning techniques with robust validation. Accepted.'),(10,5,1,'Innovative use of machine learning techniques with robust validation. Accepted.'),(10,6,3,'Strong experimental results and reproducible code provided. Accepted.'),(11,4,9,'Comprehensive literature review and clear contributions justify acceptance.'),(11,5,6,'The paper does not meet the conference\'s originality criteria. Rejected.'),(11,6,3,'Well-written and thoroughly evaluated, with practical implications. Accepted.'),(12,3,1,'The theoretical analysis is incomplete and lacks supporting evidence. Rejected.'),(12,5,5,'The manuscript contains several methodological flaws and unclear explanations. Rejected.'),(12,6,3,'The paper presents a novel approach to data clustering, demonstrating significant improvements over existing methods. Accepted.'),(13,1,8,'The paper does not meet the conference\'s originality criteria. Rejected.'),(13,3,9,'The manuscript contains several methodological flaws and unclear explanations. Rejected.'),(13,4,8,'Comprehensive literature review and clear contributions justify acceptance.'),(14,2,5,'Well-written and thoroughly evaluated, with practical implications. Accepted.'),(14,3,3,'The study addresses an important problem but fails to provide new insights. Rejected.'),(14,6,1,'The theoretical analysis is incomplete and lacks supporting evidence. Rejected.'),(15,2,4,'Strong experimental results and reproducible code provided. Accepted.'),(15,6,3,'The paper does not meet the conference\'s originality criteria. Rejected.'),(16,2,8,'The paper presents a novel approach to data clustering, demonstrating significant improvements over existing methods. Accepted.'),(16,5,7,'The theoretical analysis is incomplete and lacks supporting evidence. Rejected.'),(16,6,4,'Strong experimental results and reproducible code provided. Accepted.'),(17,5,3,'Well-written and thoroughly evaluated, with practical implications. Accepted.'),(17,6,3,'Strong experimental results and reproducible code provided. Accepted.'),(18,1,7,'The theoretical analysis is incomplete and lacks supporting evidence. Rejected.'),(18,3,8,'Innovative use of machine learning techniques with robust validation. Accepted.'),(18,5,1,'The manuscript contains several methodological flaws and unclear explanations. Rejected.'),(19,2,5,'The paper presents a novel approach to data clustering, demonstrating significant improvements over existing methods. Accepted.'),(19,4,4,'Comprehensive literature review and clear contributions justify acceptance.'),(19,6,8,'The study addresses an important problem but fails to provide new insights. Rejected.'),(20,1,4,'Innovative use of machine learning techniques with robust validation. Accepted.'),(20,2,7,'The paper does not meet the conference\'s originality criteria. Rejected.'),(20,4,9,'The methodology lacks sufficient experimental validation, making the results inconclusive. Rejected.'),(21,1,1,'The paper presents a novel approach to data clustering, demonstrating significant improvements over existing methods. Accepted.'),(21,2,10,'The study addresses an important problem but fails to provide new insights. Rejected.'),(21,5,7,'The manuscript contains several methodological flaws and unclear explanations. Rejected.'),(21,6,1,'The methodology lacks sufficient experimental validation, making the results inconclusive. Rejected.'),(22,1,2,'Strong experimental results and reproducible code provided. Accepted.'),(22,4,8,'The manuscript contains several methodological flaws and unclear explanations. Rejected.'),(22,6,3,'The paper does not meet the conference\'s originality criteria. Rejected.'),(23,4,8,'Well-written and thoroughly evaluated, with practical implications. Accepted.'),(23,5,4,'Comprehensive literature review and clear contributions justify acceptance.'),(23,6,4,'The paper does not meet the conference\'s originality criteria. Rejected.'),(24,1,10,'Comprehensive literature review and clear contributions justify acceptance.'),(24,3,5,'Well-written and thoroughly evaluated, with practical implications. Accepted.'),(25,1,4,'The paper does not meet the conference\'s originality criteria. Rejected.'),(25,3,4,'Innovative use of machine learning techniques with robust validation. Accepted.');
/*!40000 ALTER TABLE `reviewed_by` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `Ticket_Type` int NOT NULL,
  `Ticket_Desc` varchar(100) NOT NULL,
  `Ticket_Price` int NOT NULL,
  PRIMARY KEY (`Ticket_Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (1,'Regular',250),(2,'Student',100),(3,'CyberMAC',0),(4,'Sponsor',0);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topic` (
  `Topic_ID` int NOT NULL,
  `Topic_Name` varchar(100) NOT NULL,
  PRIMARY KEY (`Topic_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topic`
--

LOCK TABLES `topic` WRITE;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
INSERT INTO `topic` VALUES (1,'AI'),(2,'IoT Security'),(3,'Cryptography'),(4,'Digital Forensics'),(5,'Security Compliance'),(6,'Cloud Security'),(7,'Blockchain Security'),(8,'Cyber Threat Intelligence');
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
UNLOCK TABLES;

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

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-10  0:16:23
