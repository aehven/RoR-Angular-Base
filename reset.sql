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
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2017-01-20 04:17:52','2017-01-20 04:17:52');
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
  `phone` varchar(255) DEFAULT NULL,
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
INSERT INTO `users` VALUES (1,'email','r0@null.com','$2a$11$vKdqGkCXPFJdCVXw03jqxOTpcII0tWM0AH5El.8Vcdf0QKmlTxA1W',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r0@null.com','{}','2017-01-20 04:17:55','2017-01-20 04:17:55','rf0','rl0',100,NULL,NULL),(2,'email','m0@null.com','$2a$11$abF0OjfTkYFW.No2uZAgBO0VAvueAJOgh99epbvKiN5ekImD.kf8a',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m0@null.com','{}','2017-01-20 04:17:55','2017-01-20 04:17:55','mf0','ml0',200,NULL,NULL),(3,'email','a0@null.com','$2a$11$54XC8R9gpN4ysbwIqzTVZ.o3IES4YsUexNfx.cweDuJ87tuuTWck6',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a0@null.com','{}','2017-01-20 04:17:55','2017-01-20 04:17:55','af0','al0',1000,NULL,NULL),(4,'email','r1@null.com','$2a$11$09nSxxdvMbbgqcCZL2PIMu7Ixqr7qCsjml6yk1YtpUl.pkaEzlPge',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r1@null.com','{}','2017-01-20 04:17:55','2017-01-20 04:17:55','rf1','rl1',100,NULL,NULL),(5,'email','m1@null.com','$2a$11$ZiEoh6iQFbWsaPgLPufppuC27Ay665RHz1jr.8tj1j05mtO6AznmO',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m1@null.com','{}','2017-01-20 04:17:55','2017-01-20 04:17:55','mf1','ml1',200,NULL,NULL),(6,'email','a1@null.com','$2a$11$RJfcRvtosXr.ZxYim44/4uJNhNnyfAOHzWvG0jwa37OmSphun3cx.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a1@null.com','{}','2017-01-20 04:17:55','2017-01-20 04:17:55','af1','al1',1000,NULL,NULL),(7,'email','r2@null.com','$2a$11$WrKGjZttQrCxCp80r.EaSuhkmlo71tl3UT5eNsiCYuJuC/FuxX2Zu',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r2@null.com','{}','2017-01-20 04:17:55','2017-01-20 04:17:55','rf2','rl2',100,NULL,NULL),(8,'email','m2@null.com','$2a$11$BkvlAyg80Wm817A9UFBst.GY87XscpcSYuKeQWoCxuJl8c5pD5jpq',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m2@null.com','{}','2017-01-20 04:17:56','2017-01-20 04:17:56','mf2','ml2',200,NULL,NULL),(9,'email','a2@null.com','$2a$11$tFK/Q6mDYoDyL/Yvd0DEKegS7.txZV2VLgpNKoJPkZLlpBd.IofHW',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a2@null.com','{}','2017-01-20 04:17:56','2017-01-20 04:17:56','af2','al2',1000,NULL,NULL),(10,'email','r3@null.com','$2a$11$YwRsF29qlMD8gb3yiu33su4/plhVz7OZ4DHAlcUGGbXcLqNgudwJ6',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r3@null.com','{}','2017-01-20 04:17:56','2017-01-20 04:17:56','rf3','rl3',100,NULL,NULL),(11,'email','m3@null.com','$2a$11$wZVd0d5b6GSXAJwuHXRpNugo9F7cHyLfzDb1qXDqTfGskmQ6jUIp.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m3@null.com','{}','2017-01-20 04:17:56','2017-01-20 04:17:56','mf3','ml3',200,NULL,NULL),(12,'email','a3@null.com','$2a$11$nLwbSPjsyivO72N.319jKe7E5VOgBKlRoRdZZ/1g37jjilhV/jDwS',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a3@null.com','{}','2017-01-20 04:17:56','2017-01-20 04:17:56','af3','al3',1000,NULL,NULL),(13,'email','r4@null.com','$2a$11$kk7cTL2E7sRFoZyezOrKXuAydNxyHBLchHe3CHQE2Hm4YAUIS75ra',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r4@null.com','{}','2017-01-20 04:17:56','2017-01-20 04:17:56','rf4','rl4',100,NULL,NULL),(14,'email','m4@null.com','$2a$11$5nwoo9pb3y64/Pa00hyWZOp6FizBFTKrWr7jDMGe5q242LZsaQMUG',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m4@null.com','{}','2017-01-20 04:17:57','2017-01-20 04:17:57','mf4','ml4',200,NULL,NULL),(15,'email','a4@null.com','$2a$11$qZA1fVdvP.RL4aSFDdjcuOQE0XggaOTHvHL2BX2DKiOkQD52grtRu',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a4@null.com','{}','2017-01-20 04:17:57','2017-01-20 04:17:57','af4','al4',1000,NULL,NULL),(16,'email','r5@null.com','$2a$11$7QWz7BSImEVSKZRGEGai3.BjqgY2GJ6DYqh2Y9jEcY7bzM6eM3ONm',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r5@null.com','{}','2017-01-20 04:17:57','2017-01-20 04:17:57','rf5','rl5',100,NULL,NULL),(17,'email','m5@null.com','$2a$11$ZmPasEWdx4gUBemdJwQfX.mUbQpuu5cDlao8VJG1QvV/8csDBt.fu',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m5@null.com','{}','2017-01-20 04:17:57','2017-01-20 04:17:57','mf5','ml5',200,NULL,NULL),(18,'email','a5@null.com','$2a$11$2yVGCH9ydiHseAn8xqEVMuMqzgvAA2cP.hAdXtEW4ahBQlvBTNeBi',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a5@null.com','{}','2017-01-20 04:17:57','2017-01-20 04:17:57','af5','al5',1000,NULL,NULL),(19,'email','r6@null.com','$2a$11$qWd4Vhqzx/mRCHUYkpvb2OdW9FkVA1Oa18LPoRtgIU05Ex4V8Zyxu',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r6@null.com','{}','2017-01-20 04:17:57','2017-01-20 04:17:57','rf6','rl6',100,NULL,NULL),(20,'email','m6@null.com','$2a$11$CPyID/nYZeQCtqLSewDmruAdOEaX7wYlShKHMqP6Q6ImD7UbrRD1m',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m6@null.com','{}','2017-01-20 04:17:58','2017-01-20 04:17:58','mf6','ml6',200,NULL,NULL),(21,'email','a6@null.com','$2a$11$8XKewCUDAF51BEHKXbsspuRnH/b9op6rgCMo.WXXrsIomhA7BMrtq',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a6@null.com','{}','2017-01-20 04:17:58','2017-01-20 04:17:58','af6','al6',1000,NULL,NULL),(22,'email','r7@null.com','$2a$11$n4D48Ni5kuSUJ1x20g51h.Y7ZRDtUu.cOImV3pR/j38RhUlfEf2Ca',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r7@null.com','{}','2017-01-20 04:17:58','2017-01-20 04:17:58','rf7','rl7',100,NULL,NULL),(23,'email','m7@null.com','$2a$11$LPUDwx7ZDibcBRjttNVdfO88WjNY8.t/e3LzmiDFxLt.8Micgn/Mi',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m7@null.com','{}','2017-01-20 04:17:58','2017-01-20 04:17:58','mf7','ml7',200,NULL,NULL),(24,'email','a7@null.com','$2a$11$oqw935ppSFs7ADFZGcTlRe9rKvxDW1TPnxeuga/it2w0tUHcRufdm',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a7@null.com','{}','2017-01-20 04:17:58','2017-01-20 04:17:58','af7','al7',1000,NULL,NULL),(25,'email','r8@null.com','$2a$11$hZ4wLHEIZ.T9qBnvWjjDGe8227Ga1OeNPJfc7lt1Fl6w2s1UHlXm.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r8@null.com','{}','2017-01-20 04:17:58','2017-01-20 04:17:58','rf8','rl8',100,NULL,NULL),(26,'email','m8@null.com','$2a$11$489Aad9AKtUYdr49Gy811OEIFeCJFMNQbcdiPpIsEBUb236uMrdX2',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m8@null.com','{}','2017-01-20 04:17:58','2017-01-20 04:17:58','mf8','ml8',200,NULL,NULL),(27,'email','a8@null.com','$2a$11$QkmegAXYxg3ymDOjPjCXD.PLE3fq6qlE8v6TlY3p5HfSPzR9v9/TO',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a8@null.com','{}','2017-01-20 04:17:59','2017-01-20 04:17:59','af8','al8',1000,NULL,NULL),(28,'email','r9@null.com','$2a$11$WpIwn3WAKGMwLS56mJs5JOm1dxyouDewTX53VPJPoFCIdMYsM1F7a',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r9@null.com','{}','2017-01-20 04:17:59','2017-01-20 04:17:59','rf9','rl9',100,NULL,NULL),(29,'email','m9@null.com','$2a$11$Lb0eZrDRwpzLptCvZ2mTw.lPdjQzlaPdue.SL2QAG/KUNymbF/VbW',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m9@null.com','{}','2017-01-20 04:17:59','2017-01-20 04:17:59','mf9','ml9',200,NULL,NULL),(30,'email','a9@null.com','$2a$11$skI.utefNbsFpkV5USmVKOqLL2Z/.tvkinJ4R3/p1nGxT0cghJQQO',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a9@null.com','{}','2017-01-20 04:17:59','2017-01-20 04:17:59','af9','al9',1000,NULL,NULL);
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

-- Dump completed on 2017-01-19 21:17:59
