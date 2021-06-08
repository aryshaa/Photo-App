CREATE DATABASE  IF NOT EXISTS `csc317db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `csc317db`;
-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: 127.0.0.1    Database: csc317db
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `description` varchar(4096) NOT NULL,
  `photopath` varchar(4096) NOT NULL,
  `thumbnail` varchar(4096) NOT NULL,
  `active` int NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `fk_userid` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `posts to users_idx` (`fk_userid`),
  CONSTRAINT `posts to users` FOREIGN KEY (`fk_userid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (17,'test title1','test test title tasfatitle 2342324-142314','images/uploads','images/uploads/thumbnail',0,'2021-05-19 17:01:17',2),(18,'test title31','test test title334 tasfatitle 2342324-142314','images/test33.png','images/thumbnails/test44.png',0,'2021-05-19 17:07:28',4),(19,'test title31','test test title334 tasfatitle 2342324-142314','images/test33.png','images/thumbnails/test44.png',0,'2021-05-19 17:18:03',4),(20,'test title31','test test title334 tasfatitle 2342324-142314','images/test33.png','images/thumbnails/test44.png',0,'2021-05-19 17:33:51',4),(21,'test title31','test test title334 tasfatitle 2342324-142314','images/test33.png','images/thumbnails/test44.png',0,'2021-05-19 17:47:03',4),(22,'test title31','test test title334 tasfatitle 2342324-142314','images/test33.png','images/thumbnails/test44.png',0,'2021-05-19 18:16:00',4),(23,'Photo1','Mustang','images/test33.png','images/thumbnails/test44.png',0,'2021-05-19 18:37:20',2),(24,'Photo2','Challenger','images/test33.png','images/thumbnails/test44.png',0,'2021-05-19 18:39:12',2),(25,'Photo3','Audi','images/test33.png','images/thumbnails/test44.png',0,'2021-05-19 18:40:14',2),(26,'Photo3','Audi','images/test33.png','images/thumbnails/test44.png',0,'2021-05-19 19:46:42',2),(27,'Photo4','Ford','images/test33.png','images/thumbnails/test44.png',0,'2021-05-19 20:17:13',2),(28,'Photo6','Nissan','images/test33.png','images/thumbnails/test44.png',0,'2021-05-19 21:44:27',2),(29,'Photo6','Nissan','images/test33.png','images/thumbnails/test44.png',0,'2021-05-19 21:44:29',2),(30,'Photo7','Hunda','images/test33.png','images/thumbnails/test44.png',0,'2021-05-19 21:45:27',2);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 17:32:43
