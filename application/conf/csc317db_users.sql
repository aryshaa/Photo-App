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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `usertype` int NOT NULL DEFAULT '0',
  `active` int NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'testusers','fake@mail.com','321ejfhfbrejkfkr',0,0,'2021-05-14 00:52:00'),(2,'test666','fake12@mail.com','2122ejfhfbrejkfkr',0,0,'2021-05-14 01:04:08'),(3,'test11','test@test.com','12345',0,0,'2021-05-14 05:11:07'),(4,'test12','make@mail.com','$2b$15$OGmyOtly4qsKnkcQrmCqcO.rQ3Ajys1za0ZP/c9EGb.Y15kMcgi5i',0,0,'2021-05-14 13:59:03'),(5,'refactor01','refactor01@mail.com','$2b$15$A3VvQ1rGhgZkQfhCTJ3BH.a72S7sizZMhJMZSxEuKu26hezKvv1mG',0,0,'2021-05-18 02:49:44'),(6,'refactor0099','arysharma0099@gmail.com','$2b$15$4dZ3Slv0ljnoijKxM9ulLeitDLnXa8TIRO.J279zWftFrWdbGw7sK',0,0,'2021-05-18 03:10:01'),(7,'test45','arysharmavvrt@mail.com','$2b$15$jmRRC845j.KdC0kG7ykuneEr.ekVr54MsUO48jIuGj7sOJukKGDOe',0,0,'2021-05-18 03:32:20'),(8,'photoapp','photoap@mail.com','$2b$15$wBHSh.ceAgfPZSqFfIYqRu3oI8N8zBYMQJDwyyiYDs.KJsYq/D1Le',0,0,'2021-05-20 14:55:24');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
