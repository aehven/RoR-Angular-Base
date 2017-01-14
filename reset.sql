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
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2017-01-13 15:44:05','2017-01-13 15:44:05');
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
  `role` int(11) DEFAULT '1000',
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
INSERT INTO `users` VALUES (1,'email','r0@null.com','$2a$11$XmfOKFvXhX.amWdJuI6zveg0KIoSNlHPFwwd2NXvIfFqWBHcDnMwq',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r0@null.com','{}','2017-01-13 15:44:07','2017-01-13 15:44:07','rf0','rl0',100),(2,'email','m0@null.com','$2a$11$PKXTJfZVUdYpTH0BbWLFvuulpFi129XhBxiSCLlobzDD8uM296aVe',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m0@null.com','{}','2017-01-13 15:44:07','2017-01-13 15:44:07','mf0','ml0',200),(3,'email','a0@null.com','$2a$11$/PsxM.QAlechynuQlvcqoO52Q0ZpDQuyfkstOojhhJYqfnvT2vble',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a0@null.com','{}','2017-01-13 15:44:08','2017-01-13 15:44:08','af0','al0',1000),(4,'email','r1@null.com','$2a$11$mqOR1uAEd5AuGeCchAArQOw6MJCHEpN76NC0T333Ax9vUMKjl0ngi',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r1@null.com','{}','2017-01-13 15:44:08','2017-01-13 15:44:08','rf1','rl1',100),(5,'email','m1@null.com','$2a$11$JOzQ1adG/zsLsPafzSsBueLmBPJ2Yo1/pNJHxcrgUJm2/GSvOlzwa',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m1@null.com','{}','2017-01-13 15:44:08','2017-01-13 15:44:08','mf1','ml1',200),(6,'email','a1@null.com','$2a$11$uaFjrwetiXJKKbaul.kYBOa9tFs1t3O7n6MD2hR7zHN.Npe1Hf36u',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a1@null.com','{}','2017-01-13 15:44:08','2017-01-13 15:44:08','af1','al1',1000),(7,'email','r2@null.com','$2a$11$kMW7nSb111FKL4sN1F1Kl.bASzC50.vOkS3T7D3TzLZF5EgEZctUe',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r2@null.com','{}','2017-01-13 15:44:08','2017-01-13 15:44:08','rf2','rl2',100),(8,'email','m2@null.com','$2a$11$ki6viFA0QnD46a9X0sRpWuJtwZrjVRH84Fz1VDPfrY71Ue5h20QCe',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m2@null.com','{}','2017-01-13 15:44:08','2017-01-13 15:44:08','mf2','ml2',200),(9,'email','a2@null.com','$2a$11$mzxjrJKfMeZYw5w1I7n7VOOOGJ0cJ9yoAKgsQ8yyJfq08a6xhtOx6',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a2@null.com','{}','2017-01-13 15:44:08','2017-01-13 15:44:08','af2','al2',1000),(10,'email','r3@null.com','$2a$11$yDinAQUdxe1XIRCqlRNhUe.sPHogSjDhAeRdb1G1ZXPcUP.LCrBQy',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r3@null.com','{}','2017-01-13 15:44:09','2017-01-13 15:44:09','rf3','rl3',100),(11,'email','m3@null.com','$2a$11$qPdy8ZcxpruTofSRBQTtaO6CZwo7z5jS2up3.UUewcepbDx9nAQ1m',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m3@null.com','{}','2017-01-13 15:44:09','2017-01-13 15:44:09','mf3','ml3',200),(12,'email','a3@null.com','$2a$11$f8Pbd0EqjKYt2i7bPRQzyemhxCMVqZys9LK9AfaqJxR4r0dFSqfl.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a3@null.com','{}','2017-01-13 15:44:09','2017-01-13 15:44:09','af3','al3',1000),(13,'email','r4@null.com','$2a$11$AckhMYJV3snl0TKE7g.2h.OMoXzmDv2oShH.ZJcW.CGoGOGnUqj9e',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r4@null.com','{}','2017-01-13 15:44:09','2017-01-13 15:44:09','rf4','rl4',100),(14,'email','m4@null.com','$2a$11$JCX8lRNOKTlwaNUgcMxkQOey7MyGOt7YcbyT2sqada8skhHMlAVqW',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m4@null.com','{}','2017-01-13 15:44:09','2017-01-13 15:44:09','mf4','ml4',200),(15,'email','a4@null.com','$2a$11$02WyZ8nKJfNFKon8Z7KVgO7CVmmCnxGubEaYFYu17Lx49pYuJozOC',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a4@null.com','{}','2017-01-13 15:44:09','2017-01-13 15:44:09','af4','al4',1000),(16,'email','r5@null.com','$2a$11$UsSvfbiVnFZXP8RzziamhOLm.feW8nrzn7zRzsSJzLNAoY.8PYB3G',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r5@null.com','{}','2017-01-13 15:44:10','2017-01-13 15:44:10','rf5','rl5',100),(17,'email','m5@null.com','$2a$11$kzvhNwr3CHn8v82Kbx5oGeSQ3L599i2.O3BlVYQdc8/Q/U7ROphOe',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m5@null.com','{}','2017-01-13 15:44:10','2017-01-13 15:44:10','mf5','ml5',200),(18,'email','a5@null.com','$2a$11$MaTuSFPczJs1NQuBCIHvg.hzEIo9Fxm3kd3tMMNxBe.s6BLNov1Lu',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a5@null.com','{}','2017-01-13 15:44:10','2017-01-13 15:44:10','af5','al5',1000),(19,'email','r6@null.com','$2a$11$j5qj3fZmnwdzGh6z6tnV.ehaQ2xJszhix.fr/4v6C4JE1PE.zGxHO',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r6@null.com','{}','2017-01-13 15:44:10','2017-01-13 15:44:10','rf6','rl6',100),(20,'email','m6@null.com','$2a$11$8GffW5MbRekLmdjMwoZrnONveeULYOJRPCnug4dEo9WPuee0EemHu',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m6@null.com','{}','2017-01-13 15:44:10','2017-01-13 15:44:10','mf6','ml6',200),(21,'email','a6@null.com','$2a$11$Uiq2F4/Bdklr9GVWUfUDoeE/YVD.lB8uYIuQBRKFdVJuTyX.R1pM2',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a6@null.com','{}','2017-01-13 15:44:10','2017-01-13 15:44:10','af6','al6',1000),(22,'email','r7@null.com','$2a$11$GpN3NLW7swjrjqczLpj.au3gOKRSsMVKPpSXDho06t7I7ncFWxaHe',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r7@null.com','{}','2017-01-13 15:44:10','2017-01-13 15:44:10','rf7','rl7',100),(23,'email','m7@null.com','$2a$11$NfwG8V1GTbMnPNKlofz3l.Mdog86pGF6kSDYrcaqJwe1O.FaRC9VO',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m7@null.com','{}','2017-01-13 15:44:11','2017-01-13 15:44:11','mf7','ml7',200),(24,'email','a7@null.com','$2a$11$ms7llh0ja/oliD5paU6RyOx7g7OFhjJCYGxNK/hIUBfCQN5hBJjhu',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a7@null.com','{}','2017-01-13 15:44:11','2017-01-13 15:44:11','af7','al7',1000),(25,'email','r8@null.com','$2a$11$8WDCslteWJwPIGyDMoRez.6RuiHiHm1.30vRXOuAUwVEt9Gs7s6Ie',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r8@null.com','{}','2017-01-13 15:44:11','2017-01-13 15:44:11','rf8','rl8',100),(26,'email','m8@null.com','$2a$11$W2VTs999lFDYX0uA6nkqXutqVENfLvNHBvJqUXEizRiQQQYcrU95y',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m8@null.com','{}','2017-01-13 15:44:11','2017-01-13 15:44:11','mf8','ml8',200),(27,'email','a8@null.com','$2a$11$obWwPdZupHHbkkBpNO8QWO5U/IzlAxAqDpRCpOmOgHha5vfd08BaK',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a8@null.com','{}','2017-01-13 15:44:11','2017-01-13 15:44:11','af8','al8',1000),(28,'email','r9@null.com','$2a$11$Xm.kZeq34H198m48Ma7zmuKD2X3E88ItHBt6LzZkQW7LpzxkzKPOG',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r9@null.com','{}','2017-01-13 15:44:11','2017-01-13 15:44:11','rf9','rl9',100),(29,'email','m9@null.com','$2a$11$0pDIFd1P8/jpMJWYLuiWE.0OCsoUcO38mFZXZSWGalDqc1JHmxkxe',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m9@null.com','{}','2017-01-13 15:44:12','2017-01-13 15:44:12','mf9','ml9',200),(30,'email','a9@null.com','$2a$11$WkR1IKdzOQWjxsZM3iBEhOG/cJfi8kFP1HAIs3vH9dP0yk3Jjj0Di',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a9@null.com','{}','2017-01-13 15:44:12','2017-01-13 15:44:12','af9','al9',1000);
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

-- Dump completed on 2017-01-13  8:44:12
