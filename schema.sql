CREATE DATABASE  IF NOT EXISTS `blog` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `blog`;
-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: blog
-- ------------------------------------------------------
-- Server version	8.0.19

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
  `title` varchar(255) NOT NULL,
  `description` text,
  `status` tinyint DEFAULT NULL,
  `createdAt` varchar(255) DEFAULT NULL,
  `updatedAt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'First post','Description',1,'2020-04-01 17:50:28','2020-04-01 17:52:10'),(2,'title 2','description',1,'2020-04-02 10:45:14','2020-04-02 10:45:14'),(3,'Feature/WFM-851 upload download information required for xaraya production deployment','sdfdsfsd',0,'2020-04-06T07:26:05.905Z','2020-04-06T07:26:05.905Z'),(4,'test','sdfsdfds',1,'2020-04-06T07:28:52.278Z','2020-04-06T07:28:52.278Z'),(5,'Rucha','asdfsf',0,'2020-04-06T12:01:06.581Z','2020-04-06T12:01:06.581Z'),(6,'First post','This is my first post',1,'2020-04-06T12:01:48.147Z','2020-04-06T12:01:48.147Z'),(7,'sdfsdf','sfddsfdssd sdfsdfds sfdsdfds sdfsdfds sdfsdf',1,'2020-04-06T13:19:43.794Z','2020-04-06T13:19:43.794Z'),(8,'Feature/WFM-851 upload download information required for xaraya production deployment','AAAAA',1,'2020-04-06T13:22:27.351Z','2020-04-06T13:22:27.351Z'),(9,'Feature/WFM-851 upload download information required for xaraya production deployment','this is the test description.',1,'2020-04-06T13:25:16.645Z','2020-04-06T13:25:16.645Z'),(10,'Feature/WFM-851 upload download information required for xaraya production deployment','ssdsdsds',1,'2020-04-06T13:26:50.546Z','2020-04-06T13:26:50.546Z'),(11,'Feature/WFM-851 upload download information required for xaraya production deployment','ddfgf dfgdfg dfgdfg dgdfg dfgdfg ',1,'2020-04-06T13:30:09.135Z','2020-04-06T13:30:09.135Z'),(12,'Feature/WFM-851 upload download information required for xaraya production deployment','dsfdsfds sdsd sdfdsf',1,'2020-04-06T13:31:23.401Z','2020-04-06T13:31:23.401Z'),(13,'Feature/WFM-851 upload download information required for xaraya production deployment','dfd',1,'2020-04-06T13:33:47.954Z','2020-04-06T13:33:47.954Z'),(14,'WFM-670:  added host ip','bbbbbbbb',1,'2020-04-06T13:34:40.462Z','2020-04-06T13:34:40.462Z'),(15,'this is the loading data','this is the new data ....',1,'2020-04-06T13:35:53.946Z','2020-04-06T13:35:53.946Z'),(16,'dfdfd','dfdfd dfdf. dfdfdfdf ',1,'2020-04-06T14:24:47.077Z','2020-04-06T14:24:47.077Z'),(17,'sfsfsdf','sdfsdfsd',1,'2020-04-06T14:28:26.802Z','2020-04-06T14:28:26.802Z'),(18,'dfdf','dfd',1,'2020-04-08T11:08:43.998Z','2020-04-08T11:08:43.998Z'),(19,'ddfd','',1,'2020-04-08T11:40:20.498Z','2020-04-08T11:40:20.498Z'),(20,'sdfds','',1,'2020-04-08T11:41:59.219Z','2020-04-08T11:41:59.219Z'),(21,'sdfdsf','',1,'2020-04-08T11:44:44.207Z','2020-04-08T11:44:44.207Z'),(22,'SDDF','',1,'2020-04-08T11:46:10.497Z','2020-04-08T11:46:10.497Z'),(23,'sdfsdf','',1,'2020-04-08T11:48:07.566Z','2020-04-08T11:48:07.566Z'),(24,'wewe','',1,'2020-04-08T11:48:59.422Z','2020-04-08T11:48:59.422Z'),(25,'wew','',1,'2020-04-08T11:51:15.919Z','2020-04-08T11:51:15.919Z'),(26,'aaaa','',1,'2020-04-08T12:12:31.626Z','2020-04-08T12:12:31.626Z'),(27,'aaa','dadas',1,'2020-04-08T12:22:58.485Z','2020-04-08T12:22:58.485Z'),(28,'sdfds','sdfd',1,'2020-04-08T12:24:31.600Z','2020-04-08T12:24:31.600Z'),(29,'qwee','',1,'2020-04-08T12:25:10.590Z','2020-04-08T12:25:10.590Z'),(30,'qqqq','sfdsfs',1,'2020-04-08T12:26:16.010Z','2020-04-08T12:26:16.010Z'),(31,'ghfhgfhg gjgjghjg','jgjhgg  ghjgjg jgjhgjhgjhg jj',1,'2020-04-08T15:09:39.277Z','2020-04-08T15:09:39.277Z'),(32,'ghfhgfhg gjgjghjg','jgjhgg  ghjgjg jgjhgjhgjhg jj',1,'2020-04-08T17:31:14.955Z','2020-04-08T17:31:14.955Z'),(33,'shriapd is nice','sdfasdfdsf',1,'2020-04-15T12:19:19.911Z','2020-04-15T12:19:19.911Z'),(34,'ssdfdsf sdfsdf sdfsdf sdfsdf sdfsdf sdfsdf sdfsdf','sdfsdf sdfsdf sdfdsf ',1,'2020-04-24T10:38:13.720Z','2020-04-24T10:38:13.720Z'),(35,'dfd dfdf dfd','dfd',1,'2020-04-24T10:39:20.376Z','2020-04-24T10:39:20.376Z'),(36,'sddsf sdfsdfds sdfsdfds sdfsdfds','sdfsdfsdfdsfsdfsdfsdfdsfsdf',1,'2020-04-24T10:44:08.317Z','2020-04-24T10:44:08.317Z'),(37,'Test redirect ','test redirect jmbbbmbn',1,'2020-04-24T10:47:56.441Z','2020-04-24T10:47:56.441Z'),(38,'Test','Test data',1,'2020-05-02T14:37:25.644Z','2020-05-02T14:37:25.644Z'),(39,'Test redirect','This is the description',1,'2020-05-02T14:46:58.956Z','2020-05-02T14:46:58.956Z'),(40,'sdfsdf','data is here.......................',1,'2020-05-02T14:48:11.204Z','2020-05-02T14:48:11.204Z'),(41,'sdfsdf','test',1,'2020-05-11T05:58:50.743Z','2020-05-11T05:58:50.743Z'),(42,'Rucha','Rucha',1,'2020-05-22T09:01:30.119Z','2020-05-22T09:01:30.119Z'),(43,'sdf','sdfdsf',1,'2020-05-22T13:22:31.604Z','2020-05-22T13:22:31.604Z'),(44,'AAAAAA','AAAAAA',1,'2020-05-22T13:24:12.745Z','2020-05-22T13:24:12.745Z'),(45,'test','test',1,'2020-05-22T13:41:22.913Z','2020-05-22T13:41:22.913Z'),(46,'data','data',1,'2020-05-22T13:45:21.041Z','2020-05-22T13:45:21.041Z'),(47,'test','test',1,'2020-05-22T13:49:02.157Z','2020-05-22T13:49:02.157Z'),(48,'test','test',1,'2020-05-22T13:52:40.290Z','2020-05-22T13:52:40.290Z'),(49,'test','test',1,'2020-05-22T13:54:54.531Z','2020-05-22T13:54:54.531Z'),(50,'test','test',1,'2020-05-22T13:56:35.512Z','2020-05-22T13:56:35.512Z'),(51,'test','test',1,'2020-05-22T13:57:37.861Z','2020-05-22T13:57:37.861Z'),(52,'test','test',1,'2020-05-22T14:00:17.791Z','2020-05-22T14:00:17.791Z'),(53,'this','this',1,'2020-05-22T14:03:36.657Z','2020-05-22T14:03:36.657Z'),(54,'sfdsfdf','sdffd',1,'2020-05-22T14:04:26.490Z','2020-05-22T14:04:26.490Z'),(55,'test','test',1,'2020-05-22T14:19:33.627Z','2020-05-22T14:19:33.627Z'),(56,'sdfdsfdsf','sdfsdfds',1,'2020-05-22T14:25:39.266Z','2020-05-22T14:25:39.266Z'),(57,'AAAAAAAA','BBBBBBBBB',1,'2020-05-22T14:28:26.355Z','2020-05-22T14:28:26.355Z'),(58,'BBBB','CCCC',1,'2020-05-22T14:31:50.362Z','2020-05-22T14:31:50.362Z'),(59,'DDDDDD','EEEEEEEEEE',1,'2020-05-22T14:58:34.051Z','2020-05-22T14:58:34.051Z'),(60,'EEEEE','EEEEEE',1,'2020-05-22T15:04:33.935Z','2020-05-22T15:04:33.935Z'),(61,'FFFF','FFFFF',1,'2020-05-22T15:08:13.854Z','2020-05-22T15:08:13.854Z'),(62,'JJJJ','JJJJJ',1,'2020-05-22T15:15:21.224Z','2020-05-22T15:15:21.224Z'),(63,'ddfd','dddd',1,'2020-05-22T17:35:52.894Z','2020-05-22T17:35:52.894Z'),(64,'sdfsdf','sdfdfds',1,'2020-05-23T15:05:19.719Z','2020-05-23T15:05:19.719Z'),(65,'sdfdsfdfds','sdfdsfdfds',1,'2020-05-23T15:06:04.068Z','2020-05-23T15:06:04.068Z'),(66,'test redirection','test redirection',1,'2020-05-23T15:08:02.793Z','2020-05-23T15:08:02.793Z'),(67,'sfsdfsdfds','sffdsfs',1,'2020-05-23T15:11:16.821Z','2020-05-23T15:11:16.821Z'),(68,'','',0,'2020-05-26T10:57:41.391Z','2020-05-26T10:57:41.391Z'),(69,'','',0,'2020-05-26T10:58:23.604Z','2020-05-26T10:58:23.604Z'),(70,'','',0,'2020-05-26T10:59:33.967Z','2020-05-26T10:59:33.967Z'),(71,'','',0,'2020-05-26T11:00:00.879Z','2020-05-26T11:00:00.879Z');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `token` varchar(45) DEFAULT NULL,
  `createdAt` varchar(45) DEFAULT NULL,
  `updatedAt` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (10,'vinayjoshi','$2b$10$3R1DHzZ/vb4mfOn9BP.ndeW6QMLNR3nUJXT71Eg24uorn7HnGm72m','','2020-05-26T13:02:01.768Z','2020-05-26T13:02:01.768Z');
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

-- Dump completed on 2020-06-03 13:57:34
