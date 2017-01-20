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
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2017-01-20 03:08:58','2017-01-20 03:08:58');
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
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
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
INSERT INTO `users` VALUES (1,'email','r0@null.com','$2a$11$peUBffUYEQKR3DAbFlXM.Oia/xRlADqeh88UasS6QpEIoSOHIxZWC',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r0@null.com','{}','2017-01-20 03:09:00','2017-01-20 03:09:00','rf0','rl0',100,NULL,NULL,NULL),(2,'email','m0@null.com','$2a$11$rHqDJgQzmIIrPGdmDgCoOeJv1UbajzGCGQxAq5JNyJzHBkiuli0bm',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m0@null.com','{}','2017-01-20 03:09:01','2017-01-20 03:09:01','mf0','ml0',200,NULL,NULL,NULL),(3,'email','a0@null.com','$2a$11$wrxUINvpu3GlwxAnur.bK.VV0X2z8i48wCQ5cgbk.SmCYGoo2qozm',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a0@null.com','{}','2017-01-20 03:09:01','2017-01-20 03:09:01','af0','al0',1000,NULL,NULL,NULL),(4,'email','r1@null.com','$2a$11$OA85ug2N2vktmbVDtqosHOV62Fed/QNkqDphdtLP/QX/kQfhXfqsy',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r1@null.com','{}','2017-01-20 03:09:01','2017-01-20 03:09:01','rf1','rl1',100,NULL,NULL,NULL),(5,'email','m1@null.com','$2a$11$8rWQ4JQeJxHzYPtsrnLfAed/fwNVmJ7J3tSCKalFgYT3CZ9aa8z02',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m1@null.com','{}','2017-01-20 03:09:01','2017-01-20 03:09:01','mf1','ml1',200,NULL,NULL,NULL),(6,'email','a1@null.com','$2a$11$JAPUZwwwuiyg7tiy8zdC3.Oz53R4nSdMvrWTBegxo2Rj51ZFQdx3G',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a1@null.com','{}','2017-01-20 03:09:01','2017-01-20 03:09:01','af1','al1',1000,NULL,NULL,NULL),(7,'email','r2@null.com','$2a$11$sGvH4dNWNklRGP7ssJH7oO0u8LuJ5zXC8L4yXHPa3QnT2Xfgqn8MG',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r2@null.com','{}','2017-01-20 03:09:02','2017-01-20 03:09:02','rf2','rl2',100,NULL,NULL,NULL),(8,'email','m2@null.com','$2a$11$0uewsZRIPgfoSZY3xjNgS.NH5LGpNEnl6sEBYyUo7miPyb6rkYPoe',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m2@null.com','{}','2017-01-20 03:09:02','2017-01-20 03:09:02','mf2','ml2',200,NULL,NULL,NULL),(9,'email','a2@null.com','$2a$11$u.Wsgch4ht1Njhndzg7KQeQkA4x3FJTOQXDXVPFnVrBmzfMkuoldu',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a2@null.com','{}','2017-01-20 03:09:02','2017-01-20 03:09:02','af2','al2',1000,NULL,NULL,NULL),(10,'email','r3@null.com','$2a$11$Qdj5yYYcDu6lHi96Gc.NZ.Pqbq1tIpQWxmXUu86/7W2pz9F0O1QEm',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r3@null.com','{}','2017-01-20 03:09:02','2017-01-20 03:09:02','rf3','rl3',100,NULL,NULL,NULL),(11,'email','m3@null.com','$2a$11$Hi5FGhv3IKjjkBvwMRnvvOA7NzZb8o69ogEQhxJ99Mi1BsSI3BUSO',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m3@null.com','{}','2017-01-20 03:09:02','2017-01-20 03:09:02','mf3','ml3',200,NULL,NULL,NULL),(12,'email','a3@null.com','$2a$11$wbEn/mnX4CIhFf/h2Hvlgu3udCrZCvJRVJ9KLphi6Vs5yL4Ppckj6',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a3@null.com','{}','2017-01-20 03:09:02','2017-01-20 03:09:02','af3','al3',1000,NULL,NULL,NULL),(13,'email','r4@null.com','$2a$11$esrIXYtCnV69FAkNZwa2H.6HwR6LqmESFk.pPsGysAfFjENfRbIK2',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r4@null.com','{}','2017-01-20 03:09:02','2017-01-20 03:09:02','rf4','rl4',100,NULL,NULL,NULL),(14,'email','m4@null.com','$2a$11$hKXvnvXnruuvBvT7zBPHveHg4y19X2llgvnhOHjHSq0rbwClVkcp.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m4@null.com','{}','2017-01-20 03:09:03','2017-01-20 03:09:03','mf4','ml4',200,NULL,NULL,NULL),(15,'email','a4@null.com','$2a$11$PXTrY0zdV89soZ.XX8L6U.SUxIKXU/4K6UxS47S1HgbSf2FadYCMm',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a4@null.com','{}','2017-01-20 03:09:03','2017-01-20 03:09:03','af4','al4',1000,NULL,NULL,NULL),(16,'email','r5@null.com','$2a$11$7rMU1WbT9aT0Dx0Wf.IUd.Hwli4GcyFCEoPLt/wB1/XcMhtmXSfbO',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r5@null.com','{}','2017-01-20 03:09:03','2017-01-20 03:09:03','rf5','rl5',100,NULL,NULL,NULL),(17,'email','m5@null.com','$2a$11$34UbRxWuGXo2OZa4G1Q6LOMes5DKMjDS2yJux5KI.A8qu8c/QNwEi',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m5@null.com','{}','2017-01-20 03:09:03','2017-01-20 03:09:03','mf5','ml5',200,NULL,NULL,NULL),(18,'email','a5@null.com','$2a$11$O4m1w4.y/ynS99SfP76bPePTrC5.eCGVTN3D4LZQAi4KK2zjkwOna',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a5@null.com','{}','2017-01-20 03:09:03','2017-01-20 03:09:03','af5','al5',1000,NULL,NULL,NULL),(19,'email','r6@null.com','$2a$11$7n3VO5aIPVIBzt34RT.OOOyyg7MoQVFV8f2mSy.SgnGfMkjIuJiMC',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r6@null.com','{}','2017-01-20 03:09:03','2017-01-20 03:09:03','rf6','rl6',100,NULL,NULL,NULL),(20,'email','m6@null.com','$2a$11$5HHbaj/p7HR0nZsmm5r0K.K6Ow2a4ndz.KR9L63zQwHlAz3sRP3ZC',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m6@null.com','{}','2017-01-20 03:09:04','2017-01-20 03:09:04','mf6','ml6',200,NULL,NULL,NULL),(21,'email','a6@null.com','$2a$11$fmNrSdPE0vDIz41l5ysA6.ROOTNAzTc6Ms4EP23pbbzbKX4QuzsAG',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a6@null.com','{}','2017-01-20 03:09:04','2017-01-20 03:09:04','af6','al6',1000,NULL,NULL,NULL),(22,'email','r7@null.com','$2a$11$eB3LqILnbNOoL3Hat/rcuO4P6K2QecsG.IdxLYX31bc3vygMfZ2Ze',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r7@null.com','{}','2017-01-20 03:09:04','2017-01-20 03:09:04','rf7','rl7',100,NULL,NULL,NULL),(23,'email','m7@null.com','$2a$11$fZG8VxNy89b1judeZOan3uCYBpQGjPZjuE.wPVs1NJbWDwhmStEaO',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m7@null.com','{}','2017-01-20 03:09:04','2017-01-20 03:09:04','mf7','ml7',200,NULL,NULL,NULL),(24,'email','a7@null.com','$2a$11$cuGz0Y6kIE9DgsEaFh4Amu5.Q6GwCyyEw7N4VZVVuiOLFEV8pW.b6',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a7@null.com','{}','2017-01-20 03:09:04','2017-01-20 03:09:04','af7','al7',1000,NULL,NULL,NULL),(25,'email','r8@null.com','$2a$11$V/0TTLkbcsA6Zc1vITfLn.phpzKLmUkmZJIO7COgiJeqdCFUPWNvO',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r8@null.com','{}','2017-01-20 03:09:04','2017-01-20 03:09:04','rf8','rl8',100,NULL,NULL,NULL),(26,'email','m8@null.com','$2a$11$eM1xLcg9eaaUOofUrUTXF.x7TH5rTj56mandY2rnrQMWISTKbCN7y',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m8@null.com','{}','2017-01-20 03:09:05','2017-01-20 03:09:05','mf8','ml8',200,NULL,NULL,NULL),(27,'email','a8@null.com','$2a$11$6F8w4wNKeKP6pWP9XYF06u5nZ1EfmtlSubVsKhSZCB5H8j3oaWfHS',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a8@null.com','{}','2017-01-20 03:09:05','2017-01-20 03:09:05','af8','al8',1000,NULL,NULL,NULL),(28,'email','r9@null.com','$2a$11$Pu7.GxfTI9Gq3w6JHugG8.sMVepT1SByx1qq9BRAhedhIMqzskCPW',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r9@null.com','{}','2017-01-20 03:09:05','2017-01-20 03:09:05','rf9','rl9',100,NULL,NULL,NULL),(29,'email','m9@null.com','$2a$11$tfwLR4VAZv7tkAmUR1SM..dhIzgjRBtIDg5Rb.H.w3RNvuJBiLxua',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m9@null.com','{}','2017-01-20 03:09:05','2017-01-20 03:09:05','mf9','ml9',200,NULL,NULL,NULL),(30,'email','a9@null.com','$2a$11$l4Evw3I7WUadeNJG4UJnGexmqsDFFqIfeVuYdee5loEi6HBlBxuMC',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a9@null.com','{}','2017-01-20 03:09:05','2017-01-20 03:09:05','af9','al9',1000,NULL,NULL,NULL);
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

-- Dump completed on 2017-01-19 20:09:05
