CREATE DATABASE  IF NOT EXISTS `348project4` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `348project4`;
-- MySQL dump 10.13  Distrib 8.0.26, for macos11 (x86_64)
--
-- Host: 35.239.10.220    Database: 348project4
-- ------------------------------------------------------
-- Server version	8.0.18-google

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ 'fabadc9b-5a1f-11ec-9957-42010a800002:1-33460';

--
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actor` (
  `actor_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  PRIMARY KEY (`actor_id`),
  KEY `actor_id` (`actor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES (1,'Brad Pitt','American'),(2,'Edward Norton','American'),(3,'Cho Yeo-jeong','Korean'),(4,'Park So-dam','Korean'),(5,'Leonardo DiCaprio','American'),(6,'Joseph Gordon-Levitt','American'),(7,'John David Washington','American'),(8,'Robert Pattinson','British'),(9,'Tom Hardy','United Kingdom'),(10,'Daniel Craig','United Kingdom'),(11,'Sam Worthington','Australia'),(12,'Robert Downey Jr.','American'),(13,'Rachel McAdams','Canadian'),(14,'Matt Damon','American');
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `avg_rating`
--

DROP TABLE IF EXISTS `avg_rating`;
/*!50001 DROP VIEW IF EXISTS `avg_rating`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `avg_rating` AS SELECT 
 1 AS `movie_id`,
 1 AS `avg`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `box_office`
--

DROP TABLE IF EXISTS `box_office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `box_office` (
  `movie_id` int(11) NOT NULL,
  `gross_profit` int(11) NOT NULL,
  `weeks_in_theater` int(11) NOT NULL,
  `age_rating` varchar(10) NOT NULL,
  `budget` int(11) NOT NULL,
  PRIMARY KEY (`movie_id`),
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `box_office_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `box_office`
--

LOCK TABLES `box_office` WRITE;
/*!40000 ALTER TABLE `box_office` DISABLE KEYS */;
INSERT INTO `box_office` VALUES (1,45150,5,'PG',21000),(2,1938047,23,'R',21000),(3,1324,3,'R',21343252),(4,1251,1243,'NC-17',1234325),(5,544,6,'PG',12144),(6,544,6,'PG',12144),(7,544,6,'PG',12144),(8,2433,8,'PG',22234),(9,18780,10,'PG',4859),(10,18780,10,'PG',4859),(11,18780,10,'R',4859),(12,2230,10,'PG',223);
/*!40000 ALTER TABLE `box_office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `critics`
--

DROP TABLE IF EXISTS `critics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `critics` (
  `critic_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`critic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `critics`
--

LOCK TABLES `critics` WRITE;
/*!40000 ALTER TABLE `critics` DISABLE KEYS */;
INSERT INTO `critics` VALUES (1,'a'),(2,'b'),(3,'c'),(4,'d'),(5,'e'),(6,'f'),(7,'g'),(8,'h'),(9,'i'),(10,'j');
/*!40000 ALTER TABLE `critics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `release_year` int(11) NOT NULL,
  `coutnry_of_origin` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `director` varchar(255) NOT NULL,
  `trailer_link` varchar(255) NOT NULL,
  `poster_link` varchar(255) NOT NULL,
  PRIMARY KEY (`movie_id`),
  KEY `movie_id` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Fight Club','Drama',1999,'America','English','David Fincher','https://www.youtube.com/watch?v=SUXWAEX2jlg','https://m.media-amazon.com/images/M/MV5BMmEzNTkxYjQtZTc0MC00YTVjLTg5ZTEtZWMwOWVlYzY0NWIwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg'),(2,'Parasite','Drama',2019,'Korea','Korean','Bong Joon-ho','https://www.youtube.com/watch?v=5xH0HfJHsaY&t=4s','https://assets.mubicdn.net/images/notebook/post_images/29832/images-w1400.jpg?1579570864'),(3,'Tenet','sci-fi',2020,'America','English','Christopher Nolan','https://www.youtube.com/watch?v=AZGcmvrTX9M','https://m.media-amazon.com/images/M/MV5BYzg0NGM2NjAtNmIxOC00MDJmLTg5ZmYtYzM0MTE4NWE2NzlhXkEyXkFqcGdeQXVyMTA4NjE0NjEy._V1_.jpg'),(4,'Inception','action',2010,'America','English','Christopher Nolan','https://www.youtube.com/watch?v=YoHD9XEInc0','https://static.displate.com/857x1200/displate/2020-04-27/c033648ac36509e3690684ca6a60ddaa_c4c6e9073230ebc514dd9e4fc0633de7.jpg'),(5,'Venom: Let There Be Carnage','sci-fi',2021,'America','English','Andy Serkis','https://www.youtube.com/watch?v=-FmWuCgJmxo&ab_channel=SonyPicturesEntertainment','https://upload.wikimedia.org/wikipedia/en/1/15/Casino_Royale_2_-_UK_cinema_poster.jpg'),(6,'Venom: Let There Be Carnage','sci-fi',2021,'America','English','Andy Serkis','https://www.youtube.com/watch?v=-FmWuCgJmxo&ab_channel=SonyPicturesEntertainment','https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.imdb.com%2Ftitle%2Ftt7097896%2F&psig=AOvVaw3BXQoBpE5vvxfG6s2-WHv-&ust=1639343132226000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCNjryp3T3PQCFQAAAAAdAAAAABAD'),(7,'Venom: Let There Be Carnage','sci-fi',2021,'America','English','Andy Serkis','https://www.youtube.com/watch?v=-FmWuCgJmxo&ab_channel=SonyPicturesEntertainment','https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.imdb.com%2Ftitle%2Ftt7097896%2F&psig=AOvVaw3BXQoBpE5vvxfG6s2-WHv-&ust=1639343132226000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCNjryp3T3PQCFQAAAAAdAAAAABAD'),(8,'Casino Royale','action',2006,'United Kingdom','English','Martin Campbell','https://www.youtube.com/watch?v=GV_18deeAXk&t=1&ab_channel=JamesBond007','https://upload.wikimedia.org/wikipedia/en/1/15/Casino_Royale_2_-_UK_cinema_poster.jpg'),(9,'Avatar','Fantasy',2009,'America','English','James Cameron','https://www.youtube.com/watch?v=5PSNL1qE6VY&ab_channel=20thCenturyStudios','https://upload.wikimedia.org/wikipedia/en/b/b0/Avatar-Teaser-Poster.jpg'),(10,'Avengers: Endgame','sci-fi',2019,'America','English','Anthony Russo','https://www.youtube.com/watch?v=TcMBFSGVi1c&ab_channel=MarvelEntertainment','https://upload.wikimedia.org/wikipedia/en/0/0d/Avengers_Endgame_poster.jpg'),(11,'About Time','drama',2013,'United Kingdom','English','Richard Curtis','https://www.youtube.com/watch?v=khB_wpn-bmc&ab_channel=MovieclipsTrailers','https://www.imdb.com/title/tt2194499/mediaviewer/rm3036522240/?ref_=tt_ov_i'),(12,'Ford v Ferrari','action',2019,'America','English','James Mangold','https://www.youtube.com/watch?v=zyYgDtY2AMY&ab_channel=20thCenturyStudios','https://upload.wikimedia.org/wikipedia/en/a/a4/Ford_v._Ferrari_%282019_film_poster%29.png');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parental_advisory`
--

DROP TABLE IF EXISTS `parental_advisory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parental_advisory` (
  `movie_id` int(11) NOT NULL,
  `violence` varchar(10) NOT NULL,
  `sex_nudity` varchar(10) NOT NULL,
  `drug_alcohol` varchar(10) NOT NULL,
  PRIMARY KEY (`movie_id`),
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `parental_advisory_ibfk_3` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parental_advisory`
--

LOCK TABLES `parental_advisory` WRITE;
/*!40000 ALTER TABLE `parental_advisory` DISABLE KEYS */;
INSERT INTO `parental_advisory` VALUES (1,'Severe','Severe','Severe'),(2,'Severe','Severe','Severe'),(3,'Severe','Moderate','Mild'),(4,'Moderate','Mild','Severe'),(5,'Mild','Moderate','Moderate'),(6,'Mild','Moderate','Moderate'),(7,'Mild','Moderate','Moderate'),(8,'Moderate','Moderate','Moderate'),(9,'Mild','Mild','Mild'),(10,'Mild','Mild','Mild'),(11,'Moderate','Severe','Moderate'),(12,'Moderate','Mild','Moderate');
/*!40000 ALTER TABLE `parental_advisory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ratings` (
  `critic_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  PRIMARY KEY (`critic_id`,`movie_id`),
  KEY `movie_id` (`movie_id`),
  KEY `critic_id` (`critic_id`),
  CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`),
  CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`critic_id`) REFERENCES `critics` (`critic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES (1,1,9),(2,1,8),(2,8,9),(2,10,9),(2,12,9),(3,1,7),(4,2,9),(5,2,8),(6,2,7),(6,9,8),(7,4,3),(8,4,2),(9,3,7),(10,3,9);
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reported_movies`
--

DROP TABLE IF EXISTS `reported_movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reported_movies` (
  `movie_id` int(11) NOT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reported_movies`
--

LOCK TABLES `reported_movies` WRITE;
/*!40000 ALTER TABLE `reported_movies` DISABLE KEYS */;
/*!40000 ALTER TABLE `reported_movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `starring`
--

DROP TABLE IF EXISTS `starring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `starring` (
  `movie_id` int(11) NOT NULL,
  `actor_id` int(11) NOT NULL,
  PRIMARY KEY (`movie_id`,`actor_id`),
  KEY `actor_id` (`actor_id`),
  KEY `movie_id` (`movie_id`),
  KEY `actor_id_2` (`actor_id`),
  CONSTRAINT `starring_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`),
  CONSTRAINT `starring_ibfk_2` FOREIGN KEY (`actor_id`) REFERENCES `actor` (`actor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `starring`
--

LOCK TABLES `starring` WRITE;
/*!40000 ALTER TABLE `starring` DISABLE KEYS */;
INSERT INTO `starring` VALUES (1,1),(1,2),(2,3),(2,4),(4,5),(9,5),(4,6),(9,6),(3,7),(9,7),(3,8),(10,8),(11,9),(12,10);
/*!40000 ALTER TABLE `starring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `trans` varchar(1500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES ('\'SET TRANSACTION ISOLATION LEVEL READ COMMITTED;\nSTART TRANSACTION;\n\nselect @movie_id := MAX(movie_id)+1 from box_office;\n\ninsert into movies(`movie_id`, `name`, `genre`, `release_year`, `coutnry_of_origin`, `language`, `director`, `trailer_link`, `poster_link`)\n    values(@movie_id, \'Venom: Let There Be Carnage\', \'sci-fi\', \'2021\', \'America\', \'English\', \'Andy Serkis\', \'https://www.youtube.com/watch?v=-FmWuCgJmxo&ab_channel=SonyPicturesEntertainment\', \'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.imdb.com%2Ftitle%2Ftt7097896%2F&psig=AOvVaw3BXQoBpE5vvxfG6s2-WHv-&ust=1639343132226000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCNjryp3T3PQCFQAAAAAdAAAAABAD\');\n\n\ninsert into box_office(`movie_id`, `gross_profit`, `weeks_in_theater`, `age_rating`, `budget`)\n    values(@movie_id, 544, 6, \'PG\', 12144);\n\n\ninsert into parental_advisory(`movie_id`, `violence`, `sex_nudity`, `drug_alcohol`)\n    values(@movie_id, \'Mild\', \'Moderate\', \'Moderate\');\n\ncommit;');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database '348project4'
--
/*!50003 DROP PROCEDURE IF EXISTS `average_movie_rating` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `average_movie_rating`()
BEGIN

DECLARE done int default 0;
DECLARE curr_movie_id int;
DECLARE curr_avg decimal;
DECLARE movie_id_list CURSOR FOR 
                                select movie_id, avg(rating)
                                from critics
                                group by movie_id;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

DROP TABLE IF EXISTS avg_rating;
CREATE TABLE `avg_rating` (
`movie_id` int
,`avg` decimal
);

OPEN  movie_id_list;
    
insert_avg: LOOP
                FETCH movie_id_list INTO curr_movie_id, curr_avg;

                IF done = 1 THEN
                    LEAVE insert_avg;
                END IF;

                INSERT INTO avg_rating 
                        VALUES (curr_movie_id, curr_avg);

END LOOP insert_avg;

CLOSE movie_id_list;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `avg_rating`
--

/*!50001 DROP VIEW IF EXISTS `avg_rating`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
VIEW `avg_rating` AS select `ratings`.`movie_id` AS `movie_id`,avg(`ratings`.`rating`) AS `avg` from `ratings` group by `ratings`.`movie_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-12 18:40:53
