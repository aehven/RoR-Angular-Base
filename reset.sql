-- MySQL dump 10.13  Distrib 5.7.15, for Linux (x86_64)
--
-- Host: localhost    Database: webapp_develop
-- ------------------------------------------------------
-- Server version	5.7.15-0ubuntu2

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
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2016-12-31 00:00:21','2016-12-31 00:00:21');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20161229222659'),('20161229230810');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider` varchar(255) NOT NULL DEFAULT 'email',
  `uid` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `confirmation_sent_at` datetime DEFAULT NULL,
  `unconfirmed_email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tokens` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_uid_and_provider` (`uid`,`provider`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`),
  KEY `index_users_on_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'email','r0@null.com','$2a$11$GM3GG1DxI1ZdI3qcUImSrujBYdaU/7ReYI5bqol8SePPOPADzpM6O',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r0@null.com','{}','2016-12-31 00:00:23','2016-12-31 00:00:23','rf0','rl0',100),(2,'email','m0@null.com','$2a$11$rrMeN5PFQyNr9YM30XCFU.c8NaSBu58SwD9hdfSwf5Wpn0QLL/aTa',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m0@null.com','{}','2016-12-31 00:00:23','2016-12-31 00:00:23','mf0','ml0',200),(3,'email','a0@null.com','$2a$11$hRdDsOll4NXA3BYlj0UAK.mqojoe2YJT3pJ935HwuVf5Lanfjrf42',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a0@null.com','{}','2016-12-31 00:00:23','2016-12-31 00:00:23','af0','al0',1000),(4,'email','r1@null.com','$2a$11$.vW0Xr.wKgf.GgSb9HsFju056KimXbWtuczdS7O/9wVJPF0HWkk4y',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r1@null.com','{}','2016-12-31 00:00:23','2016-12-31 00:00:23','rf1','rl1',100),(5,'email','m1@null.com','$2a$11$aDETSQvWsYDfQmFCemCBge/vAx6wf1yvzLLL9w.5z9RmHxVcn57ue',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m1@null.com','{}','2016-12-31 00:00:23','2016-12-31 00:00:23','mf1','ml1',200),(6,'email','a1@null.com','$2a$11$wVxTtCvP5KD8FUdIW1tr0OoztBcpTv56utMn9vD4MMXRCS0QFU2JC',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a1@null.com','{}','2016-12-31 00:00:24','2016-12-31 00:00:24','af1','al1',1000),(7,'email','r2@null.com','$2a$11$t8w4bNH7JFPuQJMy9SvKe.cwlP.H/7ADd4xzUoXoLcU5u8h92Jd9a',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r2@null.com','{}','2016-12-31 00:00:24','2016-12-31 00:00:24','rf2','rl2',100),(8,'email','m2@null.com','$2a$11$9geYhm08dFJstn3khxuvquhyM9.Woh4v2FGeF2q1tzW8xMOC6Gek6',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m2@null.com','{}','2016-12-31 00:00:24','2016-12-31 00:00:24','mf2','ml2',200),(9,'email','a2@null.com','$2a$11$wCfC8yXSmP8.QjR1qpEGNusgtFJ.9W6zhs4W3dOICM2Uwsmtp4seK',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a2@null.com','{}','2016-12-31 00:00:24','2016-12-31 00:00:24','af2','al2',1000),(10,'email','r3@null.com','$2a$11$72qP8A8Q8XgWg36m0GogxuwEdin/Ebgkns7D4THxqRA35klPN5dXe',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r3@null.com','{}','2016-12-31 00:00:24','2016-12-31 00:00:24','rf3','rl3',100),(11,'email','m3@null.com','$2a$11$c5TPN5UyW6yeXZD6q.nUkecyAkdrgETqkRQcN4nrWqLSXilde/xPq',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m3@null.com','{}','2016-12-31 00:00:24','2016-12-31 00:00:24','mf3','ml3',200),(12,'email','a3@null.com','$2a$11$DHyOqehTSc7.lUqeZCFMh.HKUHJy8mj3Ka6OeOC1v9cEilYn9xiCi',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a3@null.com','{}','2016-12-31 00:00:24','2016-12-31 00:00:24','af3','al3',1000),(13,'email','r4@null.com','$2a$11$0fFe78Lh1MYXROr6QRUmQOkfbK4mUP.0Y4J56FsSgjv9EieEs47CK',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r4@null.com','{}','2016-12-31 00:00:25','2016-12-31 00:00:25','rf4','rl4',100),(14,'email','m4@null.com','$2a$11$TA9i1JIsM0anxfsvajOlLO95RX/Hx5IuitQSZ1EXKXNJcaRQ0UyQ2',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m4@null.com','{}','2016-12-31 00:00:25','2016-12-31 00:00:25','mf4','ml4',200),(15,'email','a4@null.com','$2a$11$ZkkxnJb0XbkssIb3CacYzunRzzEWbtDhRVjDHijgN1uhlYFCooC9a',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a4@null.com','{}','2016-12-31 00:00:25','2016-12-31 00:00:25','af4','al4',1000),(16,'email','r5@null.com','$2a$11$X9arDRSg4t1SJXNoQOMty.d7Qd3dsEb8JVA27OAf7zBcX4IThjXpK',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r5@null.com','{}','2016-12-31 00:00:25','2016-12-31 00:00:25','rf5','rl5',100),(17,'email','m5@null.com','$2a$11$M0jbj/ormlLAbvciZ8ptsOUylElPnDPlpTtEII4FFs/O1PoG8cqm.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m5@null.com','{}','2016-12-31 00:00:25','2016-12-31 00:00:25','mf5','ml5',200),(18,'email','a5@null.com','$2a$11$UARZl6BLosYvp9p/v1OutOQaR7ZOmvFEBVIpjTkg0s6qFEiDeHyzm',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a5@null.com','{}','2016-12-31 00:00:25','2016-12-31 00:00:25','af5','al5',1000),(19,'email','r6@null.com','$2a$11$BZekZHkx1uZwsr..1fb6SeXk1pPvcVTn37tXUz6.fqD2rtry4e3gq',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r6@null.com','{}','2016-12-31 00:00:26','2016-12-31 00:00:26','rf6','rl6',100),(20,'email','m6@null.com','$2a$11$epUrs.vExM28gD4S06saL.sEkUYvad7F1kbb9oQvfdXLqY5Ehybjy',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m6@null.com','{}','2016-12-31 00:00:26','2016-12-31 00:00:26','mf6','ml6',200),(21,'email','a6@null.com','$2a$11$kS/O1hu3h7TatJrD1.m28u4i4w237384E0/3jjB1Ni8cHMqHy9dpq',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a6@null.com','{}','2016-12-31 00:00:26','2016-12-31 00:00:26','af6','al6',1000),(22,'email','r7@null.com','$2a$11$FXnSte0cWe0jcg0UbsTmReduMuqS9gx3Gaiyhyo/eq.8vwOCZF4Zm',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r7@null.com','{}','2016-12-31 00:00:26','2016-12-31 00:00:26','rf7','rl7',100),(23,'email','m7@null.com','$2a$11$CaLlyqke2.OkpdG58fXdw.wB.byldnGLvM1rYuPQx5k87kl7TEcPe',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m7@null.com','{}','2016-12-31 00:00:26','2016-12-31 00:00:26','mf7','ml7',200),(24,'email','a7@null.com','$2a$11$FTVZlcadGvret61lVT8rv.Pnje//6Y0wjC0qeIr/9MaN84p9YZN7a',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a7@null.com','{}','2016-12-31 00:00:26','2016-12-31 00:00:26','af7','al7',1000),(25,'email','r8@null.com','$2a$11$ZiBS9WYeluHeXN.4qjHFhufIrcMiKY7CUNnNFFmMlhlL9I.DnTdOO',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r8@null.com','{}','2016-12-31 00:00:27','2016-12-31 00:00:27','rf8','rl8',100),(26,'email','m8@null.com','$2a$11$3iyc.pf6nlKo9EtMkyqhcO1T0/jvB2JGMZSvMjxM79ydeg9cEqXZW',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m8@null.com','{}','2016-12-31 00:00:27','2016-12-31 00:00:27','mf8','ml8',200),(27,'email','a8@null.com','$2a$11$R4PGIiwMEPCyDKGwN4DDi.yvfHBlXjFs3Yulk7ifSn1fPWJPoR6sq',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a8@null.com','{}','2016-12-31 00:00:27','2016-12-31 00:00:27','af8','al8',1000),(28,'email','r9@null.com','$2a$11$9Vzz1Cy5nedTVeeH11rhOuOuh1YwfWydDOqXq5aEjWxeT.Bgzc/Qu',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r9@null.com','{}','2016-12-31 00:00:27','2016-12-31 00:00:27','rf9','rl9',100),(29,'email','m9@null.com','$2a$11$4hODhl1OlVWvtOp0paXI0ef7yjXZ8W9sEd5GOdxFFjmlNE8TdK42K',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m9@null.com','{}','2016-12-31 00:00:27','2016-12-31 00:00:27','mf9','ml9',200),(30,'email','a9@null.com','$2a$11$lIpP/Pw5uDxJb1duFyZpGe12HYPJh9zh7IM6Doa3r44NRko450Ej2',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a9@null.com','{}','2016-12-31 00:00:27','2016-12-31 00:00:27','af9','al9',1000);
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

-- Dump completed on 2016-12-30 17:00:27
