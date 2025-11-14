DROP TABLE IF EXISTS `academic_participant`;

CREATE TABLE `academic_participant` (
  `Participant_ID` int NOT NULL,
  `Academic_School` varchar(255) NOT NULL,
  `Academic_Specialization` varchar(255) NOT NULL,
  `Academic_Type` enum('Student','Lecturer/Professor') NOT NULL,
  PRIMARY KEY (`Participant_ID`),
  UNIQUE KEY `Participant_ID` (`Participant_ID`),
  CONSTRAINT `fk_academic_participant_participant` FOREIGN KEY (`Participant_ID`) REFERENCES `participant` (`Participant_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
