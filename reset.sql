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
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2017-01-15 19:41:41','2017-01-15 19:41:41');
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
INSERT INTO `users` VALUES (1,'email','r0@null.com','$2a$11$K/lNFyxS3EFxfAFGJlaBr.DxiF3zxly60lfg7APD1m5LosPsyB43.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r0@null.com','{}','2017-01-15 19:41:43','2017-01-15 19:41:43','rf0','rl0',100),(2,'email','m0@null.com','$2a$11$A94ApercePoq7ErRkC5bUuaXsT73hnIPrijtwvVPtFit03WQMKNDq',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m0@null.com','{}','2017-01-15 19:41:43','2017-01-15 19:41:43','mf0','ml0',200),(3,'email','a0@null.com','$2a$11$yM9LhENLWYWQN4HMNgoO/eN1oaXnyqhY4G16rHi4N9ASkQFT6YAk2',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a0@null.com','{}','2017-01-15 19:41:44','2017-01-15 19:41:44','af0','al0',1000),(4,'email','r1@null.com','$2a$11$b4Gq/vQZPxP6gZABa/lwp.sn2r0s0MwOU.yaulxl.Zim92pxAMwda',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r1@null.com','{}','2017-01-15 19:41:44','2017-01-15 19:41:44','rf1','rl1',100),(5,'email','m1@null.com','$2a$11$OJty1V1yTA6twumwLjkf0uj7PdmVUBUdC8/wnE5vvFoGV0b6XxDTm',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m1@null.com','{}','2017-01-15 19:41:44','2017-01-15 19:41:44','mf1','ml1',200),(6,'email','a1@null.com','$2a$11$XfrE7dMdZFKpXf8XEDGcQuEt2DJ5aDlUVCDZLHqiFXSqOU6Ja22ki',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a1@null.com','{}','2017-01-15 19:41:44','2017-01-15 19:41:44','af1','al1',1000),(7,'email','r2@null.com','$2a$11$7iU5jBI7wWgrnMKbOR07n.HukYll77Vu8CZUOu.NavGJ7nYGU4VYK',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r2@null.com','{}','2017-01-15 19:41:44','2017-01-15 19:41:44','rf2','rl2',100),(8,'email','m2@null.com','$2a$11$AYUK0aE4xH4kb1IC8MUpROaMTsBi5VTyDG5ML/Jf5PzEjVhA7DXkW',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m2@null.com','{}','2017-01-15 19:41:44','2017-01-15 19:41:44','mf2','ml2',200),(9,'email','a2@null.com','$2a$11$9.jqLMYbF.66BrCwN/jp/eBg7eotYKC6KZirQI/jHS4eTHlT2mzfi',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a2@null.com','{}','2017-01-15 19:41:44','2017-01-15 19:41:44','af2','al2',1000),(10,'email','r3@null.com','$2a$11$g/LwNGNgVVf0EEViK.OkGOAtUK9e1rNGB/1XR3VINbwuP1Iu7alym',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r3@null.com','{}','2017-01-15 19:41:45','2017-01-15 19:41:45','rf3','rl3',100),(11,'email','m3@null.com','$2a$11$7IDEfdyZM1NAFaZH4D83j.3Zsdhu19TET2Tz2jnOhxrgNfHOdnlUi',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m3@null.com','{}','2017-01-15 19:41:45','2017-01-15 19:41:45','mf3','ml3',200),(12,'email','a3@null.com','$2a$11$9tBLkolhiJVVc83nwZwaGemve0qqr5DclKOM0NslxYSJCeIgM30fO',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a3@null.com','{}','2017-01-15 19:41:45','2017-01-15 19:41:45','af3','al3',1000),(13,'email','r4@null.com','$2a$11$aEzZnzv9B.n0ojEDAFeI8eZp4y6d/J221upJ9khS.idSJ2PO7F8um',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r4@null.com','{}','2017-01-15 19:41:45','2017-01-15 19:41:45','rf4','rl4',100),(14,'email','m4@null.com','$2a$11$mjTB02XKyuywfKyVgvmGYevzg7zXpqKmzIA6rau7f5Ft9ErOwGgem',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m4@null.com','{}','2017-01-15 19:41:45','2017-01-15 19:41:45','mf4','ml4',200),(15,'email','a4@null.com','$2a$11$/W3U7nVTefyaLqrpLux7s.l88r1e6NXYpuH4.gUByw.DiSC9H83OO',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a4@null.com','{}','2017-01-15 19:41:45','2017-01-15 19:41:45','af4','al4',1000),(16,'email','r5@null.com','$2a$11$7AaJ4l9r7TPTZWHlajtcteYtDJ4Zha7iSYHcp74d6dyUctJDDAYqW',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r5@null.com','{}','2017-01-15 19:41:46','2017-01-15 19:41:46','rf5','rl5',100),(17,'email','m5@null.com','$2a$11$81haQpE7Ml0LU..cWCpYs.lHytpsElB6uV45MhgcgDsh3A1PacuGO',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m5@null.com','{}','2017-01-15 19:41:46','2017-01-15 19:41:46','mf5','ml5',200),(18,'email','a5@null.com','$2a$11$oB1giUuQ5JlsdgGafvh.DucLC/K8wEASUIA2pw9f/nmeic/3jqpim',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a5@null.com','{}','2017-01-15 19:41:46','2017-01-15 19:41:46','af5','al5',1000),(19,'email','r6@null.com','$2a$11$wQKcDLdBN/AAqv.MZqJl2.o4.p1RJvorhtvsChxk9nT6cgQvzxWmO',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r6@null.com','{}','2017-01-15 19:41:46','2017-01-15 19:41:46','rf6','rl6',100),(20,'email','m6@null.com','$2a$11$.KF.pKoYn1vD9GZdEhBA9.f2nLOqp5xDbvuFPNAad3otydbO.jBRS',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m6@null.com','{}','2017-01-15 19:41:46','2017-01-15 19:41:46','mf6','ml6',200),(21,'email','a6@null.com','$2a$11$C8OMth/xqzXsmjyJSltq6uOPzqK5OO6wca2yz6E08x5C5X61hZgBu',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a6@null.com','{}','2017-01-15 19:41:46','2017-01-15 19:41:46','af6','al6',1000),(22,'email','r7@null.com','$2a$11$EBFxU1oWcdOKMoHQmAzqJeH7t9pHeRqyqA6AufVx7YwQzW83tAJR.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r7@null.com','{}','2017-01-15 19:41:47','2017-01-15 19:41:47','rf7','rl7',100),(23,'email','m7@null.com','$2a$11$loKyi5cf3kibtwitMJ7sPe1dGDpp673YpeTSRkvTgUNXuSWQLFjf.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m7@null.com','{}','2017-01-15 19:41:47','2017-01-15 19:41:47','mf7','ml7',200),(24,'email','a7@null.com','$2a$11$NTMSELuMupIjfuxcLD0IAO/hi6cuubWs7upD23utF6swt5DZSX5rm',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a7@null.com','{}','2017-01-15 19:41:47','2017-01-15 19:41:47','af7','al7',1000),(25,'email','r8@null.com','$2a$11$zIp/vy1sGdb5xy6/0aqBCuF4e5D8bnu1GBqKp5FuSUc7sxKW7E7zq',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r8@null.com','{}','2017-01-15 19:41:47','2017-01-15 19:41:47','rf8','rl8',100),(26,'email','m8@null.com','$2a$11$46Rg7QDImhGWA5L6ew9BM.1EvjdI7lQoP7lNzs8kl4ES2kqRn3X8y',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m8@null.com','{}','2017-01-15 19:41:47','2017-01-15 19:41:47','mf8','ml8',200),(27,'email','a8@null.com','$2a$11$fschlpdn2vzKMS2iPkZFYOtvr9k26sGxOANNeKGYgSNIaNH2W/p/6',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a8@null.com','{}','2017-01-15 19:41:47','2017-01-15 19:41:47','af8','al8',1000),(28,'email','r9@null.com','$2a$11$m.MHY/h8u5fv0QvrxzsqW.EjPoIyzewkuaKE.deuwW47nCFRIWtxm',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r9@null.com','{}','2017-01-15 19:41:48','2017-01-15 19:41:48','rf9','rl9',100),(29,'email','m9@null.com','$2a$11$Q4imhVbPTpTyz9ZE/Xz93uBYQ.824e/w6U1CN7Cwn6.V0Jer7BP0e',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m9@null.com','{}','2017-01-15 19:41:48','2017-01-15 19:41:48','mf9','ml9',200),(30,'email','a9@null.com','$2a$11$goxCKYIV2JuWUj4O40xLZ.TRF4MNpu2.3CGYt55LZZgoSIw2uLTWS',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a9@null.com','{}','2017-01-15 19:41:48','2017-01-15 19:41:48','af9','al9',1000);
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

-- Dump completed on 2017-01-15 12:44:04
