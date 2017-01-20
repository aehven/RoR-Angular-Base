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
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2017-01-20 02:28:13','2017-01-20 02:28:13');
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
  `address` varchar(255) DEFAULT NULL,
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
INSERT INTO `users` VALUES (1,'email','r0@null.com','$2a$11$Z/xRjBTjwf9GCtjXSfvXt.I5zR93/zFu7EORttSOXvYFlzh/n1xsa',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r0@null.com','{}','2017-01-20 02:28:16','2017-01-20 02:28:16','rf0','rl0',100,NULL),(2,'email','m0@null.com','$2a$11$aJCJvBD2USuALdzZwW0UkOkqHNo2zf7.0pBDGir.ejFx4qqij5xOu',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m0@null.com','{}','2017-01-20 02:28:16','2017-01-20 02:28:16','mf0','ml0',200,NULL),(3,'email','a0@null.com','$2a$11$kDDmh2tLG9oq03Y1dfmVROj9OamtxOImGS3.rn3C3TRu8cVQbYI6O',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a0@null.com','{}','2017-01-20 02:28:16','2017-01-20 02:28:16','af0','al0',1000,NULL),(4,'email','r1@null.com','$2a$11$ALnIAsewjddjB.zGaXQ4Ees8riG18J30D8icwNO2YYSVH9h0hpTkK',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r1@null.com','{}','2017-01-20 02:28:16','2017-01-20 02:28:16','rf1','rl1',100,NULL),(5,'email','m1@null.com','$2a$11$F1TMWjryHnhue5GFbZnD9.6u5x5SDcc80jbxrnLED5WWJ1XJApTZe',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m1@null.com','{}','2017-01-20 02:28:16','2017-01-20 02:28:16','mf1','ml1',200,NULL),(6,'email','a1@null.com','$2a$11$fwcqKUSeJxYgYWyVS2d8Mu.CEyB.Zdo9/W2JI5nH6ty5KmsFNWsMq',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a1@null.com','{}','2017-01-20 02:28:16','2017-01-20 02:28:16','af1','al1',1000,NULL),(7,'email','r2@null.com','$2a$11$TzxdMiiaApbyf7YdVirpKOowLz2vssKfwqUspqqV8Eg4inYjKrXFi',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r2@null.com','{}','2017-01-20 02:28:16','2017-01-20 02:28:16','rf2','rl2',100,NULL),(8,'email','m2@null.com','$2a$11$xznkXuKy5tmRnf7wshInXuyl6h7A7i7SDpT0n8/.mir44iNeSh1oe',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m2@null.com','{}','2017-01-20 02:28:17','2017-01-20 02:28:17','mf2','ml2',200,NULL),(9,'email','a2@null.com','$2a$11$bNfjh4GOiQo8oCbvs9WYXO2vM.wnjVdNl/YSpifDDcGCUjK2c6Ztm',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a2@null.com','{}','2017-01-20 02:28:17','2017-01-20 02:28:17','af2','al2',1000,NULL),(10,'email','r3@null.com','$2a$11$Upqtl19wgRSEsrYZJtIL5OQEjGjUWwrV4Xz8dUuEmeNAu218ozNvy',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r3@null.com','{}','2017-01-20 02:28:17','2017-01-20 02:28:17','rf3','rl3',100,NULL),(11,'email','m3@null.com','$2a$11$RicqqdR9SedwO1nuZbArmOdCm04gjd6iBH3KEQLEv2FwgkpoXbniu',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m3@null.com','{}','2017-01-20 02:28:17','2017-01-20 02:28:17','mf3','ml3',200,NULL),(12,'email','a3@null.com','$2a$11$VBqV7VI/997NJEgK/Gp/5OlG/8KOJQhGxCZzG3eZG57lgp5v9qZgu',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a3@null.com','{}','2017-01-20 02:28:17','2017-01-20 02:28:17','af3','al3',1000,NULL),(13,'email','r4@null.com','$2a$11$XB9Sfe5I9KhuCCsRLbsPRexZK4.pBDGZSwTO7NfXTS.4PAhWGe4xS',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r4@null.com','{}','2017-01-20 02:28:17','2017-01-20 02:28:17','rf4','rl4',100,NULL),(14,'email','m4@null.com','$2a$11$NqteI91iFNo9kRXABtkZFeyab5RHVRlpddKoTGJSkrluLeYLYZXXG',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m4@null.com','{}','2017-01-20 02:28:18','2017-01-20 02:28:18','mf4','ml4',200,NULL),(15,'email','a4@null.com','$2a$11$EzkBE6B6qfJbwyhDV.kFj.xI0tXgwW6Pno.IFodeS5mDTdrUawbnK',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a4@null.com','{}','2017-01-20 02:28:18','2017-01-20 02:28:18','af4','al4',1000,NULL),(16,'email','r5@null.com','$2a$11$m.vwUNgjAT5LQAZDURASk.q.SrwiMK2BxlZd0JSaeU/L87DmmScZq',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r5@null.com','{}','2017-01-20 02:28:18','2017-01-20 02:28:18','rf5','rl5',100,NULL),(17,'email','m5@null.com','$2a$11$pSRVaqr5JF4ZDMNXWm078eZm60FV7nbxA/D.MS.3Td2PjaZlSvca6',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m5@null.com','{}','2017-01-20 02:28:18','2017-01-20 02:28:18','mf5','ml5',200,NULL),(18,'email','a5@null.com','$2a$11$ZB5BxD8Hrs86YXqAG4N.wOZDfCKlZbtELBa9uSO9FAn4BBHi89H1C',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a5@null.com','{}','2017-01-20 02:28:18','2017-01-20 02:28:18','af5','al5',1000,NULL),(19,'email','r6@null.com','$2a$11$9CGJaGsyaxBbncsxiq7zGu9Y8glQfvWRkK4Pv.XEuTW.7VBphp65e',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r6@null.com','{}','2017-01-20 02:28:18','2017-01-20 02:28:18','rf6','rl6',100,NULL),(20,'email','m6@null.com','$2a$11$EUWGF/ulgBaUCiRAyEunUOR4oKGiU9nbbsdwztm8T6wf1hN7FneVC',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m6@null.com','{}','2017-01-20 02:28:19','2017-01-20 02:28:19','mf6','ml6',200,NULL),(21,'email','a6@null.com','$2a$11$lq6UB/MYX5dQ9SW9Mrh4tOPZbZoorcfGbX6meU6h6DFWR2K6T7Nu.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a6@null.com','{}','2017-01-20 02:28:19','2017-01-20 02:28:19','af6','al6',1000,NULL),(22,'email','r7@null.com','$2a$11$mwaYKt5xPSXGGo1Le/9wcevRkZKLI.0T/M/bakmlzIgWZyaJAERee',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r7@null.com','{}','2017-01-20 02:28:19','2017-01-20 02:28:19','rf7','rl7',100,NULL),(23,'email','m7@null.com','$2a$11$7dNH5lzv0D52HvUruKlPE.o/D2AAQUMSS7M7c2yy05lI7Rfk0pagW',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m7@null.com','{}','2017-01-20 02:28:19','2017-01-20 02:28:19','mf7','ml7',200,NULL),(24,'email','a7@null.com','$2a$11$Xw6i1P5Bds42M6yWchZaZupzGcfRZckh6.TIifH0nK0eCiuPdDPJW',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a7@null.com','{}','2017-01-20 02:28:19','2017-01-20 02:28:19','af7','al7',1000,NULL),(25,'email','r8@null.com','$2a$11$725JGLKXFlkHbL.fVwVqHuCOJXcRwRqq8euZ2r6Yzoj/AYE9t2vQu',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r8@null.com','{}','2017-01-20 02:28:19','2017-01-20 02:28:19','rf8','rl8',100,NULL),(26,'email','m8@null.com','$2a$11$IpOlmcyVptAGCePhhqr/f.DeU.Xh3VNu7AApDfZ05qU.JT31K6u1G',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m8@null.com','{}','2017-01-20 02:28:19','2017-01-20 02:28:19','mf8','ml8',200,NULL),(27,'email','a8@null.com','$2a$11$dHkJSCwUSGGn2ErybFYslerTq/q9cZ/2fqmzFiII6l73/usUp8Xf2',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a8@null.com','{}','2017-01-20 02:28:20','2017-01-20 02:28:20','af8','al8',1000,NULL),(28,'email','r9@null.com','$2a$11$1x/Jw0aeWPySsN6McyGSOO13cd7qqgfv.WsOyrbJxn9/Xhct6ifB6',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r9@null.com','{}','2017-01-20 02:28:20','2017-01-20 02:28:20','rf9','rl9',100,NULL),(29,'email','m9@null.com','$2a$11$HfAsJzECLNWN9XqnWDhHze6rgE3uvZ.BVQGC2LTBBVO0fGYe8LZZ6',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m9@null.com','{}','2017-01-20 02:28:20','2017-01-20 02:28:20','mf9','ml9',200,NULL),(30,'email','a9@null.com','$2a$11$JmS5cRYNzCfH2AAMqABdsORY7TipL4nQJY8wx29SXce/in76VNl52',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a9@null.com','{}','2017-01-20 02:28:20','2017-01-20 02:28:20','af9','al9',1000,NULL);
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

-- Dump completed on 2017-01-19 19:28:20
