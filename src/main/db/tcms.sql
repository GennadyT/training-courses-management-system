-- MySQL dump 10.13  Distrib 5.6.27, for Win64 (x86_64)
--
-- Host: localhost    Database: training_courses_management_system
-- ------------------------------------------------------
-- Server version	5.6.27-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `absence`
--

DROP TABLE IF EXISTS `absence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `absence` (
  `absence_id` int(11) NOT NULL AUTO_INCREMENT,
  `is_reasonable` bit(1) DEFAULT NULL,
  `reason_text` varchar(4500) DEFAULT NULL,
  `training_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `trainer_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`absence_id`),
  KEY `FK_51amokgdkmy83mdrqvujg5enx` (`training_id`),
  KEY `FK_2meku1gaugffsyq9t8okrg72a` (`user_id`),
  KEY `FK_cn2j1wjv4ugw1nf596n36or88` (`trainer_id`),
  CONSTRAINT `FK_2meku1gaugffsyq9t8okrg72a` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FK_51amokgdkmy83mdrqvujg5enx` FOREIGN KEY (`training_id`) REFERENCES `training` (`training_id`),
  CONSTRAINT `FK_cn2j1wjv4ugw1nf596n36or88` FOREIGN KEY (`trainer_id`) REFERENCES `training` (`training_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `absence`
--

LOCK TABLES `absence` WRITE;
/*!40000 ALTER TABLE `absence` DISABLE KEYS */;
/*!40000 ALTER TABLE `absence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `absence_lesson`
--

DROP TABLE IF EXISTS `absence_lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `absence_lesson` (
  `absence_lesson_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_reasonable` bit(1) DEFAULT NULL,
  `reason_text` varchar(4500) DEFAULT NULL,
  `lesson_id` bigint(20) DEFAULT NULL,
  `training_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`absence_lesson_id`),
  KEY `FK_6i2ll1q87mo00e3ku8myu7gaa` (`lesson_id`),
  KEY `FK_f60mjkvwyxn7aup92n41mfp7c` (`training_id`),
  KEY `FK_gtrx3uiyonq7f28vlr8mjwx7u` (`user_id`),
  CONSTRAINT `FK_6i2ll1q87mo00e3ku8myu7gaa` FOREIGN KEY (`lesson_id`) REFERENCES `regular_lesson` (`lesson_id`),
  CONSTRAINT `FK_f60mjkvwyxn7aup92n41mfp7c` FOREIGN KEY (`training_id`) REFERENCES `training` (`training_id`),
  CONSTRAINT `FK_gtrx3uiyonq7f28vlr8mjwx7u` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `absence_lesson`
--

LOCK TABLES `absence_lesson` WRITE;
/*!40000 ALTER TABLE `absence_lesson` DISABLE KEYS */;
/*!40000 ALTER TABLE `absence_lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audience`
--

DROP TABLE IF EXISTS `audience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audience` (
  `audience_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`audience_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audience`
--

LOCK TABLES `audience` WRITE;
/*!40000 ALTER TABLE `audience` DISABLE KEYS */;
INSERT INTO `audience` VALUES (1,'Java developers'),(2,'PHP developers'),(3,'JavaScript developers'),(4,'C++ developers'),(5,'Scala developers'),(6,'Go developers'),(7,'Testers'),(8,'Everybody'),(9,'C# developers'),(10,'Python developers'),(11,'Ruby developers'),(12,'Android developers'),(13,'IOS developers'),(14,'SQL developers');
/*!40000 ALTER TABLE `audience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_feedback`
--

DROP TABLE IF EXISTS `employee_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_feedback` (
  `employee_feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `askQuestions` bit(1) DEFAULT NULL,
  `attitudeToLearning` int(11) DEFAULT NULL,
  `communication` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `focusedOnResults` bit(1) DEFAULT NULL,
  `interest` bit(1) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `mark` varchar(45) DEFAULT NULL,
  `present` bit(1) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `text` varchar(4500) DEFAULT NULL,
  `training_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `trainer_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`employee_feedback_id`),
  KEY `FK_448fgvrdwsxur2n66ks7sxp4x` (`training_id`),
  KEY `FK_481kei9j76s2j1li3nq9mr86h` (`user_id`),
  KEY `FK_jupn30lulyra25sfcs7gxdrbo` (`trainer_id`),
  CONSTRAINT `FK_448fgvrdwsxur2n66ks7sxp4x` FOREIGN KEY (`training_id`) REFERENCES `training` (`training_id`),
  CONSTRAINT `FK_481kei9j76s2j1li3nq9mr86h` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FK_jupn30lulyra25sfcs7gxdrbo` FOREIGN KEY (`trainer_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_feedback`
--

LOCK TABLES `employee_feedback` WRITE;
/*!40000 ALTER TABLE `employee_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ex_training_user`
--

DROP TABLE IF EXISTS `ex_training_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ex_training_user` (
  `training_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`training_id`,`user_id`),
  KEY `FK_d56bu2mjy33xop1kbaj28isj6` (`user_id`),
  CONSTRAINT `FK_d56bu2mjy33xop1kbaj28isj6` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FK_pl325c95q8g1pod301o1t09j7` FOREIGN KEY (`training_id`) REFERENCES `training` (`training_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ex_training_user`
--

LOCK TABLES `ex_training_user` WRITE;
/*!40000 ALTER TABLE `ex_training_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `ex_training_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES (1,'English'),(2,'French'),(3,'German'),(4,'Italian'),(5,'Russian'),(6,'Spanish');
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson_edit`
--

DROP TABLE IF EXISTS `lesson_edit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lesson_edit` (
  `lesson_edit_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `is_approved` bit(1) DEFAULT NULL,
  `location` int(11) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `lesson_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`lesson_edit_id`),
  KEY `FK_ceak500enalunsh53k2pg49o2` (`lesson_id`),
  CONSTRAINT `FK_ceak500enalunsh53k2pg49o2` FOREIGN KEY (`lesson_id`) REFERENCES `regular_lesson` (`lesson_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson_edit`
--

LOCK TABLES `lesson_edit` WRITE;
/*!40000 ALTER TABLE `lesson_edit` DISABLE KEYS */;
/*!40000 ALTER TABLE `lesson_edit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `notification_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `trainingId` bigint(20) NOT NULL,
  `trainingName` varchar(255) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=322 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,'2015-08-11 13:59:06',1,'Java',5,1),(2,'2015-08-11 13:59:06',1,'Java',5,2),(3,'2015-08-11 13:59:06',1,'Java',5,4),(4,'2015-08-11 13:59:06',1,'Java',5,5),(5,'2015-08-11 13:59:06',1,'Java',5,6),(6,'2015-08-11 13:59:06',1,'Java',5,8),(7,'2015-08-11 14:00:02',1,'Java',12,6),(8,'2015-08-11 14:00:02',1,'Java',12,7),(9,'2015-08-11 14:00:02',1,'Java',12,8),(10,'2015-08-11 14:00:02',1,'Java',12,4),(11,'2015-08-11 14:02:30',3,'C# #1',5,1),(12,'2015-08-11 14:02:30',3,'C# #1',5,2),(13,'2015-08-11 14:02:30',3,'C# #1',5,4),(14,'2015-08-11 14:02:30',3,'C# #1',5,5),(15,'2015-08-11 14:02:30',3,'C# #1',5,6),(16,'2015-08-11 14:02:30',2,'C# #2',5,1),(17,'2015-08-11 14:02:30',3,'C# #1',5,8),(18,'2015-08-11 14:02:30',2,'C# #2',5,2),(19,'2015-08-11 14:02:30',2,'C# #2',5,4),(20,'2015-08-11 14:02:30',2,'C# #2',5,5),(21,'2015-08-11 14:02:30',2,'C# #2',5,6),(22,'2015-08-11 14:02:30',2,'C# #2',5,8),(23,'2015-08-11 14:03:02',3,'C# #1',12,9),(24,'2015-08-11 14:03:02',3,'C# #1',12,1),(25,'2015-08-11 14:03:03',3,'C# #1',11,9),(26,'2015-08-11 14:03:03',3,'C# #1',11,1),(27,'2015-08-11 14:10:06',3,'C# #1',12,6),(28,'2015-08-11 14:10:06',3,'C# #1',12,9),(29,'2015-08-11 14:10:06',3,'C# #1',12,1),(30,'2015-08-11 14:10:17',1,'Java',12,6),(31,'2015-08-11 14:10:17',1,'Java',12,7),(32,'2015-08-11 14:10:17',1,'Java',12,8),(33,'2015-08-11 14:10:17',1,'Java',12,9),(34,'2015-08-11 14:10:17',1,'Java',12,4),(35,'2015-08-11 14:10:38',3,'C# #1',11,6),(36,'2015-08-11 14:10:38',3,'C# #1',11,9),(37,'2015-08-11 14:10:38',3,'C# #1',11,1),(38,'2015-08-11 14:10:46',1,'Java',11,6),(39,'2015-08-11 14:10:46',1,'Java',11,7),(40,'2015-08-11 14:10:46',1,'Java',11,8),(41,'2015-08-11 14:10:46',1,'Java',11,9),(42,'2015-08-11 14:10:46',1,'Java',11,4),(43,'2015-08-11 14:13:29',3,'C# #1',7,1),(44,'2015-08-11 14:13:29',3,'C# #1',7,2),(45,'2015-08-11 14:13:29',3,'C# #1',7,4),(46,'2015-08-11 14:13:29',3,'C# #1',7,5),(47,'2015-08-11 14:13:29',3,'C# #1',7,6),(48,'2015-08-11 14:13:29',3,'C# #1',7,8),(49,'2015-08-11 14:15:41',4,'111',5,1),(50,'2015-08-11 14:15:41',4,'111',5,2),(51,'2015-08-11 14:15:41',4,'111',5,4),(52,'2015-08-11 14:15:41',4,'111',5,5),(53,'2015-08-11 14:15:41',4,'111',5,6),(54,'2015-08-11 14:15:41',4,'111',5,8),(55,'2015-08-11 14:17:09',5,'222',5,1),(56,'2015-08-11 14:17:09',5,'222',5,2),(57,'2015-08-11 14:17:09',5,'222',5,4),(58,'2015-08-11 14:17:09',5,'222',5,5),(59,'2015-08-11 14:17:09',5,'222',5,6),(60,'2015-08-11 14:17:09',5,'222',5,8),(61,'2015-08-11 14:17:32',6,'English',5,1),(62,'2015-08-11 14:17:32',6,'English',5,2),(63,'2015-08-11 14:17:32',6,'English',5,4),(64,'2015-08-11 14:17:32',6,'English',5,5),(65,'2015-08-11 14:17:32',6,'English',5,6),(66,'2015-08-11 14:17:32',6,'English',5,8),(67,'2015-08-11 14:17:51',5,'222',2,1),(68,'2015-08-11 14:17:51',5,'222',2,2),(69,'2015-08-11 14:17:51',5,'222',2,4),(70,'2015-08-11 14:17:51',5,'222',2,5),(71,'2015-08-11 14:17:51',5,'222',2,6),(72,'2015-08-11 14:17:51',5,'222',2,8),(73,'2015-08-11 14:17:51',5,'222',2,9),(74,'2015-08-11 14:18:49',7,'Python',5,1),(75,'2015-08-11 14:18:49',7,'Python',5,2),(76,'2015-08-11 14:18:49',7,'Python',5,4),(77,'2015-08-11 14:18:49',7,'Python',5,5),(78,'2015-08-11 14:18:49',7,'Python',5,6),(79,'2015-08-11 14:18:49',7,'Python',5,8),(80,'2015-08-11 14:21:34',5,'Ruby',2,1),(81,'2015-08-11 14:21:34',5,'Ruby',2,2),(82,'2015-08-11 14:21:34',5,'Ruby',2,4),(83,'2015-08-11 14:21:34',5,'Ruby',2,5),(84,'2015-08-11 14:21:34',5,'Ruby',2,6),(85,'2015-08-11 14:21:34',5,'Ruby',2,8),(86,'2015-08-11 14:21:34',5,'Ruby',2,9),(87,'2015-08-11 14:21:41',5,'Ruby',2,1),(88,'2015-08-11 14:21:41',5,'Ruby',2,2),(89,'2015-08-11 14:21:41',5,'Ruby',2,4),(90,'2015-08-11 14:21:41',5,'Ruby',2,5),(91,'2015-08-11 14:21:41',5,'Ruby',2,6),(92,'2015-08-11 14:21:41',5,'Ruby',2,8),(93,'2015-08-11 14:21:41',5,'Ruby',2,9),(94,'2015-08-11 14:21:50',5,'Ruby',2,1),(95,'2015-08-11 14:21:50',5,'Ruby',2,2),(96,'2015-08-11 14:21:50',5,'Ruby',2,4),(97,'2015-08-11 14:21:50',5,'Ruby',2,5),(98,'2015-08-11 14:21:50',5,'Ruby',2,6),(99,'2015-08-11 14:21:50',5,'Ruby',2,8),(100,'2015-08-11 14:21:50',5,'Ruby',2,9),(101,'2015-08-11 14:23:55',5,'JavaScript',2,1),(102,'2015-08-11 14:23:55',5,'JavaScript',2,2),(103,'2015-08-11 14:23:55',5,'JavaScript',2,4),(104,'2015-08-11 14:23:55',5,'JavaScript',2,5),(105,'2015-08-11 14:23:55',5,'JavaScript',2,6),(106,'2015-08-11 14:23:55',5,'JavaScript',2,8),(107,'2015-08-11 14:23:55',5,'JavaScript',2,9),(108,'2015-08-11 14:31:14',8,'Go #2',5,1),(109,'2015-08-11 14:31:14',8,'Go #2',5,2),(110,'2015-08-11 14:31:14',9,'Go #1',5,1),(111,'2015-08-11 14:31:14',8,'Go #2',5,4),(112,'2015-08-11 14:31:14',9,'Go #1',5,2),(113,'2015-08-11 14:31:14',8,'Go #2',5,5),(114,'2015-08-11 14:31:14',9,'Go #1',5,4),(115,'2015-08-11 14:31:14',9,'Go #1',5,5),(116,'2015-08-11 14:31:14',9,'Go #1',5,6),(117,'2015-08-11 14:31:14',9,'Go #1',5,8),(118,'2015-08-11 14:31:14',8,'Go #2',5,6),(119,'2015-08-11 14:31:14',8,'Go #2',5,8),(120,'2015-08-11 14:31:17',10,'IOS developing',5,1),(121,'2015-08-11 14:31:17',10,'IOS developing',5,2),(122,'2015-08-11 14:31:17',10,'IOS developing',5,4),(123,'2015-08-11 14:31:17',10,'IOS developing',5,5),(124,'2015-08-11 14:31:17',10,'IOS developing',5,6),(125,'2015-08-11 14:31:17',10,'IOS developing',5,8),(126,'2015-08-11 14:31:27',8,'Go #2',2,1),(127,'2015-08-11 14:31:27',8,'Go #2',2,2),(128,'2015-08-11 14:31:27',8,'Go #2',2,4),(129,'2015-08-11 14:31:27',8,'Go #2',2,5),(130,'2015-08-11 14:31:27',8,'Go #2',2,6),(131,'2015-08-11 14:31:27',8,'Go #2',2,8),(132,'2015-08-11 14:31:27',8,'Go #2',2,9),(133,'2015-08-11 14:31:27',9,'Go #1',2,1),(134,'2015-08-11 14:31:27',9,'Go #1',2,2),(135,'2015-08-11 14:31:27',9,'Go #1',2,4),(136,'2015-08-11 14:31:27',9,'Go #1',2,5),(137,'2015-08-11 14:31:27',9,'Go #1',2,6),(138,'2015-08-11 14:31:27',9,'Go #1',2,8),(139,'2015-08-11 14:31:27',9,'Go #1',2,9),(140,'2015-08-11 14:32:02',9,'Go #1',12,4),(141,'2015-08-11 14:32:02',9,'Go #1',12,6),(142,'2015-08-11 14:32:02',9,'Go #1',12,7),(143,'2015-08-11 14:32:02',9,'Go #1',12,9),(144,'2015-08-11 14:32:04',8,'Go #2',12,4),(145,'2015-08-11 14:32:04',8,'Go #2',12,6),(146,'2015-08-11 14:32:04',8,'Go #2',12,7),(147,'2015-08-11 14:32:04',8,'Go #2',12,9),(148,'2015-08-11 14:32:05',9,'Go #1',11,4),(149,'2015-08-11 14:32:05',9,'Go #1',11,6),(150,'2015-08-11 14:32:05',9,'Go #1',11,7),(151,'2015-08-11 14:32:05',9,'Go #1',11,9),(152,'2015-08-11 14:32:07',8,'Go #2',11,4),(153,'2015-08-11 14:32:07',8,'Go #2',11,6),(154,'2015-08-11 14:32:07',8,'Go #2',11,7),(155,'2015-08-11 14:32:07',8,'Go #2',11,9),(156,'2015-08-11 14:33:32',9,'Go #1',2,1),(157,'2015-08-11 14:33:32',9,'Go #1',2,2),(158,'2015-08-11 14:33:32',9,'Go #1',2,4),(159,'2015-08-11 14:33:32',8,'Go #2',2,1),(160,'2015-08-11 14:33:32',9,'Go #1',2,5),(161,'2015-08-11 14:33:32',8,'Go #2',2,2),(162,'2015-08-11 14:33:32',9,'Go #1',2,6),(163,'2015-08-11 14:33:32',9,'Go #1',2,8),(164,'2015-08-11 14:33:32',8,'Go #2',2,4),(165,'2015-08-11 14:33:32',9,'Go #1',2,9),(167,'2015-08-11 14:33:32',8,'Go #2',2,6),(168,'2015-08-11 14:33:32',8,'Go #2',2,8),(169,'2015-08-11 14:33:32',8,'Go #2',2,9),(170,'2015-08-11 14:34:02',9,'Go #1',1,1),(171,'2015-08-11 14:34:02',9,'Go #1',1,2),(172,'2015-08-11 14:34:02',9,'Go #1',1,4),(173,'2015-08-11 14:34:02',9,'Go #1',1,5),(174,'2015-08-11 14:34:02',9,'Go #1',1,6),(175,'2015-08-11 14:34:02',9,'Go #1',1,8),(176,'2015-08-11 14:34:07',9,'Go #1',7,1),(177,'2015-08-11 14:34:07',9,'Go #1',7,2),(179,'2015-08-11 14:34:07',9,'Go #1',7,5),(180,'2015-08-11 14:34:07',9,'Go #1',7,6),(181,'2015-08-11 14:34:07',9,'Go #1',7,8),(182,'2015-08-11 14:34:09',9,'Go #1',1,1),(183,'2015-08-11 14:34:09',9,'Go #1',1,2),(185,'2015-08-11 14:34:09',9,'Go #1',1,5),(186,'2015-08-11 14:34:09',9,'Go #1',1,6),(187,'2015-08-11 14:34:09',9,'Go #1',1,8),(188,'2015-08-11 14:39:06',3,'C# #1',12,6),(189,'2015-08-11 14:39:06',3,'C# #1',12,9),(190,'2015-08-11 14:39:06',3,'C# #1',12,1),(191,'2015-08-11 14:39:14',1,'Java',12,6),(192,'2015-08-11 14:39:14',1,'Java',12,7),(193,'2015-08-11 14:39:14',1,'Java',12,8),(194,'2015-08-11 14:39:14',1,'Java',12,9),(196,'2015-08-11 14:39:19',3,'C# #1',11,6),(197,'2015-08-11 14:39:19',3,'C# #1',11,9),(198,'2015-08-11 14:39:19',3,'C# #1',11,1),(199,'2015-08-11 14:39:27',1,'Java',11,6),(200,'2015-08-11 14:39:27',1,'Java',11,7),(201,'2015-08-11 14:39:27',1,'Java',11,8),(202,'2015-08-11 14:39:27',1,'Java',11,9),(204,'2015-08-11 14:42:06',3,'C# #1',12,6),(205,'2015-08-11 14:42:06',3,'C# #1',12,9),(206,'2015-08-11 14:42:06',3,'C# #1',12,1),(207,'2015-08-11 14:42:14',1,'Java',12,6),(208,'2015-08-11 14:42:14',1,'Java',12,7),(209,'2015-08-11 14:42:14',1,'Java',12,8),(210,'2015-08-11 14:42:14',1,'Java',12,9),(212,'2015-08-11 14:42:19',3,'C# #1',11,6),(213,'2015-08-11 14:42:19',3,'C# #1',11,9),(214,'2015-08-11 14:42:19',3,'C# #1',11,1),(215,'2015-08-11 14:43:05',3,'C# #1',12,6),(216,'2015-08-11 14:43:05',3,'C# #1',12,9),(217,'2015-08-11 14:43:05',3,'C# #1',12,1),(218,'2015-08-11 14:43:13',1,'Java',12,6),(219,'2015-08-11 14:43:13',1,'Java',12,7),(220,'2015-08-11 14:43:13',1,'Java',12,8),(221,'2015-08-11 14:43:13',1,'Java',12,9),(223,'2015-08-11 14:43:19',3,'C# #1',11,6),(224,'2015-08-11 14:43:19',3,'C# #1',11,9),(225,'2015-08-11 14:43:19',3,'C# #1',11,1),(226,'2015-08-11 14:43:27',1,'Java',11,6),(227,'2015-08-11 14:43:27',1,'Java',11,7),(228,'2015-08-11 14:43:27',1,'Java',11,8),(229,'2015-08-11 14:43:27',1,'Java',11,9),(231,'2015-08-11 15:00:02',7,'Python',12,3),(232,'2015-08-11 15:41:02',7,'Python',12,3),(233,'2015-08-11 15:43:14',6,'English',7,1),(234,'2015-08-11 15:43:14',6,'English',7,2),(236,'2015-08-11 15:43:14',6,'English',7,5),(237,'2015-08-11 15:43:14',6,'English',7,6),(238,'2015-08-11 15:43:14',6,'English',7,8),(240,'2015-08-11 15:51:07',11,'Java',5,2),(241,'2015-08-11 15:51:07',11,'Java',5,4),(242,'2015-08-11 15:51:07',11,'Java',5,5),(243,'2015-08-11 15:51:07',11,'Java',5,6),(244,'2015-08-11 15:51:07',11,'Java',5,8),(246,'2015-08-11 15:51:52',11,'Java',7,2),(247,'2015-08-11 15:51:52',11,'Java',7,4),(248,'2015-08-11 15:51:52',11,'Java',7,5),(249,'2015-08-11 15:51:52',11,'Java',7,6),(250,'2015-08-11 15:51:52',11,'Java',7,8),(252,'2015-08-11 15:53:01',11,'Java devloping',2,2),(253,'2015-08-11 15:53:01',11,'Java devloping',2,4),(254,'2015-08-11 15:53:01',11,'Java devloping',2,5),(255,'2015-08-11 15:53:01',11,'Java devloping',2,6),(256,'2015-08-11 15:53:01',11,'Java devloping',2,8),(257,'2015-08-11 15:53:01',11,'Java devloping',2,4),(259,'2015-08-11 15:56:20',7,'Python',2,2),(260,'2015-08-11 15:56:20',7,'Python',2,4),(261,'2015-08-11 15:56:20',7,'Python',2,5),(262,'2015-08-11 15:56:20',7,'Python',2,6),(263,'2015-08-11 15:56:20',7,'Python',2,8),(264,'2015-08-11 15:56:20',7,'Python',2,3),(266,'2015-08-11 16:05:39',12,'Russian',5,2),(267,'2015-08-11 16:05:39',12,'Russian',5,4),(268,'2015-08-11 16:05:39',12,'Russian',5,5),(269,'2015-08-11 16:05:39',12,'Russian',5,6),(270,'2015-08-11 16:05:39',12,'Russian',5,8),(272,'2015-08-11 16:06:49',12,'Russian',2,2),(274,'2015-08-11 16:06:49',12,'Russian',2,5),(275,'2015-08-11 16:06:49',12,'Russian',2,6),(276,'2015-08-11 16:06:49',12,'Russian',2,8),(277,'2015-08-11 16:06:49',12,'Russian',2,7),(278,'2015-08-11 16:07:59',12,'Russian',8,1),(279,'2015-08-11 16:07:59',12,'Russian',8,2),(281,'2015-08-11 16:07:59',12,'Russian',8,5),(282,'2015-08-11 16:07:59',12,'Russian',8,6),(283,'2015-08-11 16:07:59',12,'Russian',8,8),(284,'2015-08-11 16:08:51',1,'Java',1,1),(285,'2015-08-11 16:08:51',1,'Java',1,2),(286,'2015-08-11 16:08:51',1,'Java',1,4),(287,'2015-08-11 16:08:51',1,'Java',1,5),(288,'2015-08-11 16:08:51',1,'Java',1,6),(289,'2015-08-11 16:08:51',1,'Java',1,8),(290,'2015-08-11 16:09:52',12,'Russian',2,1),(291,'2015-08-11 16:09:52',12,'Russian',2,2),(292,'2015-08-11 16:09:52',12,'Russian',2,4),(293,'2015-08-11 16:09:52',12,'Russian',2,5),(294,'2015-08-11 16:09:52',12,'Russian',2,6),(295,'2015-08-11 16:09:52',12,'Russian',2,8),(296,'2015-08-11 16:09:52',12,'Russian',2,7),(297,'2015-08-11 16:12:58',14,'Android #2',5,1),(298,'2015-08-11 16:12:58',14,'Android #2',5,2),(299,'2015-08-11 16:12:58',13,'Android #1',5,1),(300,'2015-08-11 16:12:58',14,'Android #2',5,4),(301,'2015-08-11 16:12:58',13,'Android #1',5,2),(302,'2015-08-11 16:12:58',14,'Android #2',5,5),(303,'2015-08-11 16:12:58',13,'Android #1',5,4),(304,'2015-08-11 16:12:58',14,'Android #2',5,6),(305,'2015-08-11 16:12:58',13,'Android #1',5,5),(306,'2015-08-11 16:12:58',14,'Android #2',5,8),(307,'2015-08-11 16:12:58',13,'Android #1',5,6),(308,'2015-08-11 16:12:58',13,'Android #1',5,8),(309,'2015-08-11 16:13:02',13,'Android #1',12,17),(310,'2015-08-18 12:30:08',6,'English',12,4),(311,'2015-08-18 12:30:08',6,'English',12,7),(312,'2015-08-18 12:30:08',6,'English',12,5),(313,'2015-08-18 12:33:07',6,'English',12,4),(314,'2015-08-18 12:33:07',6,'English',12,7),(315,'2015-08-18 12:33:07',6,'English',12,5),(316,'2015-08-18 12:34:07',6,'English',12,4),(317,'2015-08-18 12:34:07',6,'English',12,7),(318,'2015-08-18 12:34:07',6,'English',12,5),(319,'2015-09-11 11:27:07',12,'Russian',12,4),(320,'2015-09-11 11:27:07',12,'Russian',12,7),(321,'2015-09-11 11:39:03',12,'Russian',12,7);
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regular_lesson`
--

DROP TABLE IF EXISTS `regular_lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regular_lesson` (
  `lesson_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `training_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`lesson_id`),
  KEY `FK_dh8ktih722nvl9tqnjh89ehek` (`training_id`),
  CONSTRAINT `FK_dh8ktih722nvl9tqnjh89ehek` FOREIGN KEY (`training_id`) REFERENCES `training` (`training_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regular_lesson`
--

LOCK TABLES `regular_lesson` WRITE;
/*!40000 ALTER TABLE `regular_lesson` DISABLE KEYS */;
INSERT INTO `regular_lesson` VALUES (1,'2015-08-18 14:15:00','223','14:15-15:45',6),(2,'2015-08-25 14:15:00','223','14:15-15:45',6),(3,'2015-09-01 14:15:00','223','14:15-15:45',6),(4,'2015-09-08 14:15:00','223','14:15-15:45',6),(5,'2015-09-15 14:15:00','223','14:15-15:45',6),(6,'2015-09-22 14:15:00','223','14:15-15:45',6),(7,'2015-09-29 14:15:00','223','14:15-15:45',6),(8,'2015-10-06 14:15:00','223','14:15-15:45',6),(9,'2015-10-13 14:15:00','223','14:15-15:45',6),(10,'2015-10-20 14:15:00','223','14:15-15:45',6),(11,'2015-10-27 14:15:00','223','14:15-15:45',6),(12,'2015-11-03 14:15:00','223','14:15-15:45',6),(13,'2015-11-10 14:15:00','223','14:15-15:45',6),(14,'2015-11-17 14:15:00','223','14:15-15:45',6),(15,'2015-11-24 14:15:00','223','14:15-15:45',6),(16,'2015-12-01 14:15:00','223','14:15-15:45',6),(17,'2015-12-08 14:15:00','223','14:15-15:45',6),(18,'2015-12-15 14:15:00','223','14:15-15:45',6),(19,'2015-12-22 14:15:00','223','14:15-15:45',6),(20,'2015-12-29 14:15:00','223','14:15-15:45',6),(21,'2015-08-13 15:30:00','224','15:30-17:00',6),(22,'2015-08-20 15:30:00','224','15:30-17:00',6),(23,'2015-08-27 15:30:00','224','15:30-17:00',6),(24,'2015-09-03 15:30:00','224','15:30-17:00',6),(25,'2015-09-10 15:30:00','224','15:30-17:00',6),(26,'2015-09-17 15:30:00','224','15:30-17:00',6),(27,'2015-09-24 15:30:00','224','15:30-17:00',6),(28,'2015-10-01 15:30:00','224','15:30-17:00',6),(29,'2015-10-08 15:30:00','224','15:30-17:00',6),(30,'2015-10-15 15:30:00','224','15:30-17:00',6),(31,'2015-10-22 15:30:00','224','15:30-17:00',6),(32,'2015-10-29 15:30:00','224','15:30-17:00',6),(33,'2015-11-05 15:30:00','224','15:30-17:00',6),(34,'2015-11-12 15:30:00','224','15:30-17:00',6),(35,'2015-11-19 15:30:00','224','15:30-17:00',6),(36,'2015-11-26 15:30:00','224','15:30-17:00',6),(37,'2015-12-03 15:30:00','224','15:30-17:00',6),(38,'2015-12-10 15:30:00','224','15:30-17:00',6),(39,'2015-12-17 15:30:00','224','15:30-17:00',6),(40,'2015-12-24 15:30:00','224','15:30-17:00',6),(41,'2015-08-18 10:30:00',NULL,'10:30-11:30',12),(42,'2015-08-25 10:30:00',NULL,'10:30-11:30',12),(43,'2015-09-01 10:30:00',NULL,'10:30-11:30',12),(44,'2015-09-08 10:30:00',NULL,'10:30-11:30',12),(45,'2015-09-15 10:30:00',NULL,'10:30-11:30',12),(46,'2015-09-22 10:30:00',NULL,'10:30-11:30',12),(47,'2015-09-29 10:30:00',NULL,'10:30-11:30',12),(48,'2015-10-06 10:30:00',NULL,'10:30-11:30',12),(49,'2015-10-13 10:30:00',NULL,'10:30-11:30',12),(50,'2015-10-20 10:30:00',NULL,'10:30-11:30',12),(51,'2015-10-27 10:30:00',NULL,'10:30-11:30',12),(52,'2015-11-03 10:30:00',NULL,'10:30-11:30',12),(53,'2015-11-10 10:30:00',NULL,'10:30-11:30',12),(54,'2015-11-17 10:30:00',NULL,'10:30-11:30',12),(55,'2015-11-24 10:30:00',NULL,'10:30-11:30',12),(56,'2015-12-01 10:30:00',NULL,'10:30-11:30',12),(57,'2015-12-08 10:30:00',NULL,'10:30-11:30',12),(58,'2015-12-15 10:30:00',NULL,'10:30-11:30',12),(59,'2015-12-22 10:30:00',NULL,'10:30-11:30',12),(60,'2015-12-29 10:30:00',NULL,'10:30-11:30',12),(61,'2015-08-14 13:04:00',NULL,'13:04-14:04',12),(62,'2015-08-21 13:04:00',NULL,'13:04-14:04',12),(63,'2015-08-28 13:04:00',NULL,'13:04-14:04',12),(64,'2015-09-04 13:04:00',NULL,'13:04-14:04',12),(65,'2015-09-11 13:04:00',NULL,'13:04-14:04',12),(66,'2015-09-18 13:04:00',NULL,'13:04-14:04',12),(67,'2015-09-25 13:04:00',NULL,'13:04-14:04',12),(68,'2015-10-02 13:04:00',NULL,'13:04-14:04',12),(69,'2015-10-09 13:04:00',NULL,'13:04-14:04',12),(70,'2015-10-16 13:04:00',NULL,'13:04-14:04',12),(71,'2015-10-23 13:04:00',NULL,'13:04-14:04',12),(72,'2015-10-30 13:04:00',NULL,'13:04-14:04',12),(73,'2015-11-06 13:04:00',NULL,'13:04-14:04',12),(74,'2015-11-13 13:04:00',NULL,'13:04-14:04',12),(75,'2015-11-20 13:04:00',NULL,'13:04-14:04',12),(76,'2015-11-27 13:04:00',NULL,'13:04-14:04',12),(77,'2015-12-04 13:04:00',NULL,'13:04-14:04',12),(78,'2015-12-11 13:04:00',NULL,'13:04-14:04',12),(79,'2015-12-18 13:04:00',NULL,'13:04-14:04',12),(80,'2015-12-25 13:04:00',NULL,'13:04-14:04',12);
/*!40000 ALTER TABLE `regular_lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role` varchar(20) NOT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `UK_bjxn5ii7v7ygwx39et0wawu0q` (`role`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'administrator'),(3,'external'),(4,'external visitor'),(2,'user');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `color` varchar(255) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'red','Java'),(2,'yellow','PHP'),(3,'brown','JavaScript'),(4,'blue','C++'),(5,'pink','Scala'),(6,'blue','Go'),(7,'purple','English'),(8,'orange','General'),(9,'purple','C#'),(10,'yellow','Python'),(11,'red','Ruby'),(12,'green','Android'),(13,'grey','IOS'),(14,'brown','SQL');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainer_feedback`
--

DROP TABLE IF EXISTS `trainer_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trainer_feedback` (
  `trainer_feedback_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `asks` bit(1) DEFAULT NULL,
  `assimilation` bit(1) DEFAULT NULL,
  `creativity` bit(1) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `explain_difficult_places` bit(1) DEFAULT NULL,
  `high_erudition` bit(1) DEFAULT NULL,
  `explain_how_to_use` bit(1) DEFAULT NULL,
  `interest` bit(1) DEFAULT NULL,
  `mark_main_point` bit(1) DEFAULT NULL,
  `nice` bit(1) DEFAULT NULL,
  `patient` bit(1) DEFAULT NULL,
  `understandably` bit(1) DEFAULT NULL,
  `trainer_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`trainer_feedback_id`),
  KEY `FK_simaqg1k2pl5w9c0yw3xxpd7g` (`trainer_id`),
  KEY `FK_fmtkjyd9ytr5ph6en60e78c2s` (`user_id`),
  CONSTRAINT `FK_fmtkjyd9ytr5ph6en60e78c2s` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FK_simaqg1k2pl5w9c0yw3xxpd7g` FOREIGN KEY (`trainer_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainer_feedback`
--

LOCK TABLES `trainer_feedback` WRITE;
/*!40000 ALTER TABLE `trainer_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainer_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training`
--

DROP TABLE IF EXISTS `training`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `training` (
  `training_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `continuous` bit(1) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `days` varchar(20) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `end` date DEFAULT NULL,
  `external_type` bit(1) DEFAULT NULL,
  `is_approved` bit(1) DEFAULT NULL,
  `is_editing` bit(1) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `max_visitors_count` int(11) DEFAULT NULL,
  `regular` bit(1) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `trainer_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`training_id`),
  KEY `FK_kpu07jorm6b09r79qs6mbbudd` (`language_id`),
  KEY `FK_qpxtqvn6p3ey7stx3v45m5ujv` (`trainer_id`),
  CONSTRAINT `FK_kpu07jorm6b09r79qs6mbbudd` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`),
  CONSTRAINT `FK_qpxtqvn6p3ey7stx3v45m5ujv` FOREIGN KEY (`trainer_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training`
--

LOCK TABLES `training` WRITE;
/*!40000 ALTER TABLE `training` DISABLE KEYS */;
INSERT INTO `training` VALUES (1,'\0','2015-08-11 15:10:00',NULL,'Java is a general-purpose computer programming language that is concurrent, class-based, object-oriented,',60,NULL,'\0','','\0','111',7,'\0',NULL,'15:10-16:10','Java',1,4),(2,'','2015-08-14 17:00:00',NULL,'C# для молодых разработчиков',80,NULL,'','','\0','222',2,'\0',NULL,'17:00-18:20','C# #2',5,1),(3,'','2015-08-11 15:00:00',NULL,'C# для начинающих',80,NULL,'','','\0','243',2,'\0',NULL,'15:00-16:20','C# #1',5,1),(4,'\0','2015-08-11 14:13:00',NULL,'C++ for developing',60,NULL,'\0','','\0','111',1,'\0',NULL,'14:13-15:13','C++',1,1),(5,'\0','2015-08-19 14:15:00',NULL,'Ruby for python developers',60,NULL,'\0','','\0','234  ',1,'\0',NULL,'14:15-15:15','JavaScript',1,9),(6,'\0',NULL,'1 3 ','English for intermediate level',90,'2015-12-31','\0','','\0','223 224',7,'','2015-08-12','14:15-15:45 15:30-17:00 ','English',1,5),(7,'\0','2015-08-12 15:00:00',NULL,'Python for beginners and juniors',120,NULL,'\0','','\0','223 ',4,'\0',NULL,'15:00-17:00','Python',1,3),(8,'','2015-08-11 14:39:00',NULL,'Go # 2',60,NULL,'\0','','\0','222 ',4,'\0',NULL,'14:39-15:39','Go #2',1,9),(9,'','2015-08-11 14:25:00',NULL,'Go # 1',60,NULL,'\0','','\0','111 ',4,'\0',NULL,'14:25-15:25','Go #1',1,9),(10,'\0','2015-08-11 14:30:00',NULL,'IOS developing for beginners',60,NULL,'\0','','\0','223',2,'\0',NULL,'14:30-15:30','IOS developing',1,4),(11,'\0','2015-08-12 16:48:00',NULL,'Во время внеплановой проверки были выявлены нарушения торгового законодательства: невыполнение ассортиментных перечней товаров, несоблюдение температурных режимов хранения продуктов, отсутствие ценников на продукцию, а также проведение мероприятий, стимулирующих реализацию алкогольных напитков. Отмечается, в каждом втором из проверенных объектов к продаже предлагались товары с истекшими сроками годности.\nВ ведомстве отвели руководству ОАО «Постторг» 10 дней для принятия соответствующих мер и устранения выявленных нарушений.\nЧитать полностью:  http://news.tut.by/economics/459786.html',80,NULL,'\0','','\0','243 ',10,'\0',NULL,'16:48-18:08','Java devloping',1,4),(12,'\0',NULL,'1 4 ','Russian',60,'2015-12-31','','','\0','',20,'','2015-08-12','10:30-11:30 13:04-14:04 ','Russian',5,7),(13,'','2015-08-12 16:12:00',NULL,'Android part 2',120,NULL,'\0',NULL,'\0',NULL,5,'\0',NULL,'16:12-18:12','Android #1',1,4),(14,'','2015-08-26 16:12:00',NULL,'Android part 1',120,NULL,'\0',NULL,'\0',NULL,5,'\0',NULL,'16:12-18:12','Android #2',1,4);
/*!40000 ALTER TABLE `training` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training_audience`
--

DROP TABLE IF EXISTS `training_audience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `training_audience` (
  `training_id` bigint(20) NOT NULL,
  `audience_id` int(11) NOT NULL,
  PRIMARY KEY (`training_id`,`audience_id`),
  KEY `FK_2v2lu1kyv99pei6swdvv003xg` (`audience_id`),
  CONSTRAINT `FK_2v2lu1kyv99pei6swdvv003xg` FOREIGN KEY (`audience_id`) REFERENCES `audience` (`audience_id`),
  CONSTRAINT `FK_q5y28hyclav9qmsf0kmryohki` FOREIGN KEY (`training_id`) REFERENCES `training` (`training_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training_audience`
--

LOCK TABLES `training_audience` WRITE;
/*!40000 ALTER TABLE `training_audience` DISABLE KEYS */;
INSERT INTO `training_audience` VALUES (1,1),(11,1),(4,2),(5,2),(11,3),(8,6),(9,6),(6,8),(12,8),(2,9),(3,9),(7,10),(13,12),(14,12),(10,13);
/*!40000 ALTER TABLE `training_audience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training_edit`
--

DROP TABLE IF EXISTS `training_edit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `training_edit` (
  `training_edit_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `days` varchar(20) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `end` date DEFAULT NULL,
  `is_approved` bit(1) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `max_visitors_count` int(11) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `training_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`training_edit_id`),
  KEY `FK_pbcaya6359pjfu8u9hsuis386` (`language_id`),
  KEY `FK_mlvf536njfjd4pn3ekh23ht44` (`training_id`),
  CONSTRAINT `FK_mlvf536njfjd4pn3ekh23ht44` FOREIGN KEY (`training_id`) REFERENCES `training` (`training_id`),
  CONSTRAINT `FK_pbcaya6359pjfu8u9hsuis386` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training_edit`
--

LOCK TABLES `training_edit` WRITE;
/*!40000 ALTER TABLE `training_edit` DISABLE KEYS */;
INSERT INTO `training_edit` VALUES (1,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,5),(2,NULL,NULL,'Ruby for python developers',NULL,NULL,'','234 ',NULL,NULL,NULL,'Ruby',NULL,5),(3,NULL,NULL,NULL,NULL,NULL,'','234  ',NULL,NULL,NULL,'JavaScript',NULL,5),(4,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,8),(5,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,9),(6,'2015-08-11 14:25:00',NULL,NULL,NULL,NULL,'','111 ',NULL,NULL,'14:25-15:25',NULL,NULL,9),(7,NULL,NULL,NULL,NULL,NULL,'','222 ',NULL,NULL,NULL,NULL,NULL,8),(8,NULL,NULL,NULL,80,NULL,'','243 ',NULL,NULL,'16:48-18:08','Java devloping',NULL,11),(9,NULL,NULL,'Python for beginners and juniors',NULL,NULL,'','223 ',NULL,NULL,NULL,NULL,NULL,7),(10,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,12),(11,NULL,NULL,NULL,NULL,NULL,'',NULL,20,NULL,NULL,NULL,NULL,12);
/*!40000 ALTER TABLE `training_edit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training_feedback`
--

DROP TABLE IF EXISTS `training_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `training_feedback` (
  `training_feedback_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `effectiveness` int(11) DEFAULT NULL,
  `impression` int(11) DEFAULT NULL,
  `intelligibility` int(11) DEFAULT NULL,
  `interest` int(11) DEFAULT NULL,
  `is_approved` bit(1) DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL,
  `recommending` bit(1) DEFAULT NULL,
  `star_count` int(11) DEFAULT NULL,
  `text` varchar(4500) DEFAULT NULL,
  `trainer_desire` bit(1) DEFAULT NULL,
  `learn_smth_new` int(11) DEFAULT NULL,
  `training_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`training_feedback_id`),
  KEY `FK_mlwjwvf8ak8o7phe8y8axfrtx` (`training_id`),
  KEY `FK_2tigk6qho8qc7ex525k8i6bhg` (`user_id`),
  CONSTRAINT `FK_2tigk6qho8qc7ex525k8i6bhg` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FK_mlwjwvf8ak8o7phe8y8axfrtx` FOREIGN KEY (`training_id`) REFERENCES `training` (`training_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training_feedback`
--

LOCK TABLES `training_feedback` WRITE;
/*!40000 ALTER TABLE `training_feedback` DISABLE KEYS */;
INSERT INTO `training_feedback` VALUES (1,'2015-08-11 14:34:02',NULL,0,NULL,2,'','\0',NULL,8,'Very interesting',NULL,NULL,9,5),(2,'2015-08-11 14:34:09',NULL,0,NULL,NULL,NULL,'\0',NULL,9,'It was cool!',NULL,NULL,9,7),(3,'2015-08-11 16:08:51',NULL,NULL,0,NULL,NULL,'\0',NULL,10,NULL,NULL,NULL,1,7);
/*!40000 ALTER TABLE `training_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training_rating`
--

DROP TABLE IF EXISTS `training_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `training_rating` (
  `training_rating_id` int(11) NOT NULL AUTO_INCREMENT,
  `star_count` int(11) DEFAULT NULL,
  `training_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`training_rating_id`),
  KEY `FK_ifmnueta8qsaps608t3m8ilt2` (`training_id`),
  KEY `FK_gbby2cuxsjq86awtln7q8sstm` (`user_id`),
  CONSTRAINT `FK_gbby2cuxsjq86awtln7q8sstm` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FK_ifmnueta8qsaps608t3m8ilt2` FOREIGN KEY (`training_id`) REFERENCES `training` (`training_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training_rating`
--

LOCK TABLES `training_rating` WRITE;
/*!40000 ALTER TABLE `training_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `training_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training_tag`
--

DROP TABLE IF EXISTS `training_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `training_tag` (
  `training_id` bigint(20) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`training_id`,`tag_id`),
  KEY `FK_kxg64pw3vhnu2vxj01lqxel0s` (`tag_id`),
  CONSTRAINT `FK_7pknu13o0pjv98ma8sd43x5rb` FOREIGN KEY (`training_id`) REFERENCES `training` (`training_id`),
  CONSTRAINT `FK_kxg64pw3vhnu2vxj01lqxel0s` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training_tag`
--

LOCK TABLES `training_tag` WRITE;
/*!40000 ALTER TABLE `training_tag` DISABLE KEYS */;
INSERT INTO `training_tag` VALUES (1,1),(11,1),(5,3),(11,3),(4,4),(8,6),(9,6),(6,7),(6,8),(12,8),(2,9),(3,9),(7,10),(13,12),(14,12),(10,13);
/*!40000 ALTER TABLE `training_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training_user`
--

DROP TABLE IF EXISTS `training_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `training_user` (
  `training_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`training_id`,`user_id`),
  KEY `FK_ea6heja5wvdswwid81qj1070q` (`user_id`),
  CONSTRAINT `FK_ea6heja5wvdswwid81qj1070q` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FK_t1ao42tjaiyqcg63bn1218tlv` FOREIGN KEY (`training_id`) REFERENCES `training` (`training_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training_user`
--

LOCK TABLES `training_user` WRITE;
/*!40000 ALTER TABLE `training_user` DISABLE KEYS */;
INSERT INTO `training_user` VALUES (5,1),(6,4),(8,4),(9,4),(8,5),(9,5),(1,6),(2,6),(3,6),(8,6),(9,6),(1,7),(6,7),(8,7),(9,7),(1,8),(1,9),(2,9),(3,9);
/*!40000 ALTER TABLE `training_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file`
--

DROP TABLE IF EXISTS `upload_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upload_file` (
  `upload_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `training_id` bigint(20) NOT NULL,
  PRIMARY KEY (`upload_id`),
  KEY `FK_hadtko3whdrli9q6sf1xjgw9x` (`training_id`),
  CONSTRAINT `FK_hadtko3whdrli9q6sf1xjgw9x` FOREIGN KEY (`training_id`) REFERENCES `training` (`training_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file`
--

LOCK TABLES `upload_file` WRITE;
/*!40000 ALTER TABLE `upload_file` DISABLE KEYS */;
INSERT INTO `upload_file` VALUES (1,'Я.txt',3),(2,'9QxSodbdmQ4.jpeg',9),(3,'tz.txt',6),(4,'HIDDevice.dll',11);
/*!40000 ALTER TABLE `upload_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `e_mail` varchar(255) DEFAULT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(60) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UK_ew1hvam8uwaknuaellwhqchhb` (`login`),
  UNIQUE KEY `UK_5awx5dcb9xdv5m1bl38bmoke0` (`e_mail`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'jdoe@example.com','John','Doe','jdoe','$2a$10$fw1N2/nyt3Qg5WHWv230bOlKFw5fnM9my61L4fsbfHISj5rhGZhdq'),(2,'j.depp@example.com','Johnny','Depp','depp','$2a$10$fw1N2/nyt3Qg5WHWv230bOlKFw5fnM9my61L4fsbfHISj5rhGZhdq'),(3,'cyrus@example.com','Miley','Syrus','miley','$2a$10$fw1N2/nyt3Qg5WHWv230bOlKFw5fnM9my61L4fsbfHISj5rhGZhdq'),(4,'gennady.trubach@mail.ru','Gennady','Trubach','gtrubach','$2a$10$fw1N2/nyt3Qg5WHWv230bOlKFw5fnM9my61L4fsbfHISj5rhGZhdq'),(5,'1@example.com','Yana','Yaroshevich','yaroshevich','$2a$10$fw1N2/nyt3Qg5WHWv230bOlKFw5fnM9my61L4fsbfHISj5rhGZhdq'),(6,'2@example.com','Victor','Romashko','phantom','$2a$10$fw1N2/nyt3Qg5WHWv230bOlKFw5fnM9my61L4fsbfHISj5rhGZhdq'),(7,'3@example.com','Anton','Bely','bely','$2a$10$fw1N2/nyt3Qg5WHWv230bOlKFw5fnM9my61L4fsbfHISj5rhGZhdq'),(8,'4@example.com','Alexey','Khvorostovskiy','khvorostovskiy','$2a$10$fw1N2/nyt3Qg5WHWv230bOlKFw5fnM9my61L4fsbfHISj5rhGZhdq'),(9,'5@example.com','Sviatoslau','Shchaurouski','shchaurouski','$2a$10$fw1N2/nyt3Qg5WHWv230bOlKFw5fnM9my61L4fsbfHISj5rhGZhdq');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FK_it77eq964jhfqtu54081ebtio` (`role_id`),
  CONSTRAINT `FK_apcc8lxk2xnug8377fatvbn04` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FK_it77eq964jhfqtu54081ebtio` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,1),(2,1),(4,1),(5,1),(6,1),(8,1),(3,2),(7,2),(9,2);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waiting_list`
--

DROP TABLE IF EXISTS `waiting_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waiting_list` (
  `waiting_list_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `training_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`waiting_list_id`),
  KEY `FK_m7ajdtxrffqehvwgg1xg29tdr` (`training_id`),
  KEY `FK_hxcnjomo5e02plcgeihmyi24n` (`user_id`),
  CONSTRAINT `FK_hxcnjomo5e02plcgeihmyi24n` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FK_m7ajdtxrffqehvwgg1xg29tdr` FOREIGN KEY (`training_id`) REFERENCES `training` (`training_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waiting_list`
--

LOCK TABLES `waiting_list` WRITE;
/*!40000 ALTER TABLE `waiting_list` DISABLE KEYS */;
INSERT INTO `waiting_list` VALUES (1,'2015-08-11 14:03:35',3,8),(2,'2015-08-11 14:03:35',2,8),(5,'2015-08-11 14:15:24',3,4),(6,'2015-08-11 14:15:24',2,4),(7,'2015-08-11 14:20:27',5,7);
/*!40000 ALTER TABLE `waiting_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-14 17:19:23
