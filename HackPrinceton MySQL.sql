-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: hackprinceton
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `deliveries`
--

DROP TABLE IF EXISTS `deliveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliveries` (
  `Completed_Date` date DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Order_ID` int DEFAULT NULL,
  `Delivery_ID` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Delivery_ID`),
  KEY `Order_ID` (`Order_ID`),
  CONSTRAINT `deliveries_ibfk_1` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveries`
--

LOCK TABLES `deliveries` WRITE;
/*!40000 ALTER TABLE `deliveries` DISABLE KEYS */;
INSERT INTO `deliveries` VALUES ('2023-11-12','Completed',1,8),('2023-11-12','Delivering',4,9),('2023-11-12','Completed',4,10);
/*!40000 ALTER TABLE `deliveries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `Order_ID` int NOT NULL AUTO_INCREMENT,
  `Order_Date` date DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `Product` varchar(255) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `User_ID` int DEFAULT NULL,
  PRIMARY KEY (`Order_ID`),
  KEY `User_ID` (`User_ID`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `users` (`User_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2023-11-12','Friend 108','Condoms',2,NULL),(2,'2023-11-12','Forbes A166','Pads',1,NULL),(3,'2023-11-12','Test 123','Pads',1,NULL),(4,'2023-11-12','Nassau Hall','Pads',1,NULL),(5,'2023-11-12','Forbes A166','Condoms',1,NULL),(6,'2023-11-12','Forbes A166','Plan B',1,NULL),(7,'2023-11-12','Forbes A166','Condoms',10,NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `User_ID` int NOT NULL AUTO_INCREMENT,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Deliverer` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`User_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'emi@gmail.com','emi123','Emi',0),(2,'hello@gmail.com','password','emiliano',1),(3,'test2@test.com','test2','hello',0),(4,'test2@test.com','test2','hello',0),(5,'ep0148@princeton.edu','curiouslySalmon2','Ethan Park',1),(6,'ep0148@princeton.edu','bak','',1),(7,'ep0148@princeton.edu','baka','',1),(8,'ep0149@princeton.edu','baka','',1),(9,'ep0149@princeton.edu','bak','',1),(10,'ep0149@princeton.edu','bak','',1),(11,'ep0149@princeton.edu','bak','',1),(12,'ep0148@princeton.edu','bak','',1),(13,'ep0149@princeton.edu','bak','',1),(14,'ep0149@princeton.edu','bak','',1),(15,'ep0149@princeton.edu','bak','',1),(16,'ep0150@princeton.edu','bak','',1),(17,'bro wtf','bak','',1),(18,'alex','a','',1),(19,'alex','a','',1),(20,'alexa','a','',1),(21,'test4','a','',1),(22,'new deliverer','test deliverer','',1),(23,'new dliver','a','',1),(24,'i wanna die','help','',1),(25,'help','helppppp','',1),(26,'aa','aaa','',1),(27,'hello@hello.com','Password','hello',1),(28,'hello@hello.com','Password','hello',1),(29,'emi@gmail.com','emi123','emi',0),(30,'emi@gmail.com','emi123','emi',0),(31,'emi@gmail.com','emi123','emi',0),(32,'emi@gmail.com','emi123','emi',0),(33,'emi@gmail.com','emi123','emi',0),(34,'a','a','',1),(35,'a','a','',1),(36,'a','a','',1),(37,'a','a','',1),(38,'aa','a','',1),(39,'ui','ui','',1),(40,'uu','uu','',1),(41,'aaa','aaaaaa','',1),(42,'aaaa','aaa','',1),(43,'','','',1),(44,'','','',1),(45,'h','','',1),(46,'h','k','',1),(47,'aaa','aaa','',1),(48,'aa','aaa','',1),(49,'jjjj','jjjjjjjj','',1),(50,'emi','emi','emi',1),(51,'emi@emi.comq','dngoisngsd','dofgneonhe',1),(52,'emi@gmail.com','agwpnwieng','emi',1),(53,'ep0148','','',1),(54,'ep0148@princeton.edu','salmonsalmon','Ethan Park',0);
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

-- Dump completed on 2023-11-15 15:41:54
