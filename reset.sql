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
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2016-12-30 18:21:14','2016-12-30 18:21:14');
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
INSERT INTO `users` VALUES (1,'email','r0@null.com','$2a$11$H90OF0FQjycFKryC7hn6uexAOYhh88/IYOHkNYkst3AZ2wUh.8HIm',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r0@null.com','{}','2016-12-30 18:21:16','2016-12-30 18:21:16','f0','l0',100),(2,'email','m0@null.com','$2a$11$SC7M5mHk5p8IiOClYzuBVuZAlDREwP.8GV4IXCnQGFk7/FlF.IlVi',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m0@null.com','{}','2016-12-30 18:21:16','2016-12-30 18:21:16','f0','l0',200),(3,'email','a0@null.com','$2a$11$b2cH/vif8C4RfHGwuDrrV.NHt3uQ/tAJa0cjYiLbBXnmD//CZ9Je.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a0@null.com','{}','2016-12-30 18:21:16','2016-12-30 18:21:16','f0','l0',1000),(4,'email','r1@null.com','$2a$11$Ng4ajIaH2t2iYkx2rMq3tetE2HplTNtjCSZ4aogeBYakAscdtyCFC',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r1@null.com','{}','2016-12-30 18:21:16','2016-12-30 18:21:16','f1','l1',100),(5,'email','m1@null.com','$2a$11$nk9Ldc4V/oYOS4KyZz9s8.Pg9hNQcoTB807JdvF70pgekk.hpaGhm',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m1@null.com','{}','2016-12-30 18:21:17','2016-12-30 18:21:17','f1','l1',200),(6,'email','a1@null.com','$2a$11$EjmP07rV5Byl8/wnmqmFDuEpQBe.wmKVUw/XFTdJDPqnXe7evnVFm',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a1@null.com','{}','2016-12-30 18:21:17','2016-12-30 18:21:17','f1','l1',1000),(7,'email','r2@null.com','$2a$11$qtmkOjke7rK1c4vmgRB3GubTzLZJfpEyF9kcdX6upwLWBlboOluHC',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r2@null.com','{}','2016-12-30 18:21:17','2016-12-30 18:21:17','f2','l2',100),(8,'email','m2@null.com','$2a$11$PkGnzOVR/E4Co4bDDQg9Ve0iGth8jqOkXik4eTMOKpPLNW9It39Ty',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m2@null.com','{}','2016-12-30 18:21:17','2016-12-30 18:21:17','f2','l2',200),(9,'email','a2@null.com','$2a$11$ctIBTu4FukatmqK8id.q3eEvBeahoE85KX2dM.8m5KKiZHBRhSsC2',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a2@null.com','{}','2016-12-30 18:21:17','2016-12-30 18:21:17','f2','l2',1000),(10,'email','r3@null.com','$2a$11$s2ZvDQ5CxkTRWQWFQhxb9..yBPlwq.crpF7hByOHMLwFStQU.uoRG',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r3@null.com','{}','2016-12-30 18:21:17','2016-12-30 18:21:17','f3','l3',100),(11,'email','m3@null.com','$2a$11$BE7/h8GYcWCiaGwutvGOPetrv3WOVY8Vr3b.BeFNBeanwwOzAXW1C',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m3@null.com','{}','2016-12-30 18:21:18','2016-12-30 18:21:18','f3','l3',200),(12,'email','a3@null.com','$2a$11$uaZ5280OxcKrXK72unUtbOyZ0fKZY//fvZotAXwORbj3XraLLVEtC',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a3@null.com','{}','2016-12-30 18:21:18','2016-12-30 18:21:18','f3','l3',1000),(13,'email','r4@null.com','$2a$11$zUm.ZxsmnpUqwhcczHgeneCjddmZ2vino5GoVy7UMhhWqIUwM1iae',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r4@null.com','{}','2016-12-30 18:21:18','2016-12-30 18:21:18','f4','l4',100),(14,'email','m4@null.com','$2a$11$Y7S1WWSqO6PkzqPVQhP3oOIvAR.vHg1bDZi9.Xifk5GVjZAnBTs96',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m4@null.com','{}','2016-12-30 18:21:18','2016-12-30 18:21:18','f4','l4',200),(15,'email','a4@null.com','$2a$11$kxUS7bPtOBp6Oi9iWI4U6u9Oy17L0Dev.5w2GW5Bmjv.xTf/aiog6',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a4@null.com','{}','2016-12-30 18:21:18','2016-12-30 18:21:18','f4','l4',1000),(16,'email','r5@null.com','$2a$11$gtvLP0mxFwbJ.Fc6WWQB7u6B69sjOn/wLFZe9aBmYe0vkAnknNLpC',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r5@null.com','{}','2016-12-30 18:21:18','2016-12-30 18:21:18','f5','l5',100),(17,'email','m5@null.com','$2a$11$d.MmPKT.SNOBzsa25SVptu7ASvbQJ379F1YJrp9EcSWHve4nMrBw.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m5@null.com','{}','2016-12-30 18:21:18','2016-12-30 18:21:18','f5','l5',200),(18,'email','a5@null.com','$2a$11$.ZSyBjiOjkm.t9W3pZvlF.NSiYegFf/D2rJO7LJt7vRDpQlbgKPSm',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a5@null.com','{}','2016-12-30 18:21:19','2016-12-30 18:21:19','f5','l5',1000),(19,'email','r6@null.com','$2a$11$M2jOxvhKiaCAAuU.ypZSQOfWaJnsQdxnnFqhyARAhKNw876WRIIlm',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r6@null.com','{}','2016-12-30 18:21:19','2016-12-30 18:21:19','f6','l6',100),(20,'email','m6@null.com','$2a$11$A7G4bSt7Qv0B4ufAYn8zAud92F4lDb6kPHSAmvzde/ulndxHVZwjS',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m6@null.com','{}','2016-12-30 18:21:19','2016-12-30 18:21:19','f6','l6',200),(21,'email','a6@null.com','$2a$11$cj/ymMlsRqKNiQnKnT3YvO3FGz2xVgPE1IemMlFpzO42FUKKkLEoK',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a6@null.com','{}','2016-12-30 18:21:19','2016-12-30 18:21:19','f6','l6',1000),(22,'email','r7@null.com','$2a$11$o85LIRXXMrZjsZTmq0pHbuXb7cwi.MqHFARNcwbqlArDcG8Ipsssu',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r7@null.com','{}','2016-12-30 18:21:19','2016-12-30 18:21:19','f7','l7',100),(23,'email','m7@null.com','$2a$11$4cwXDCL6rMouYzPwH6Y45e2riQkkGSoOa/DH4KoP5yBlRF4yQTaRC',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m7@null.com','{}','2016-12-30 18:21:19','2016-12-30 18:21:19','f7','l7',200),(24,'email','a7@null.com','$2a$11$/SEUvL42cg9ybJ0sZ1kFp.PLFaXtt1CYcPj.x/uhXwcA1qzyrWyiS',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a7@null.com','{}','2016-12-30 18:21:20','2016-12-30 18:21:20','f7','l7',1000),(25,'email','r8@null.com','$2a$11$nn.y0sJVAcMgiRTlWV5gHOK451iL33pTXN32M2A9NoktwUsWPhs/y',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r8@null.com','{}','2016-12-30 18:21:20','2016-12-30 18:21:20','f8','l8',100),(26,'email','m8@null.com','$2a$11$wFhaGb/z8q.Wo.DYLEtiIusaGE7m9SV62KnhxJ96NJRhaj/sBGy4y',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m8@null.com','{}','2016-12-30 18:21:20','2016-12-30 18:21:20','f8','l8',200),(27,'email','a8@null.com','$2a$11$LDPq9X2s/YgsVbO.u4eGY.Hq7ewdlDrogyYrFLMS5J.ddb9OHZsze',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a8@null.com','{}','2016-12-30 18:21:20','2016-12-30 18:21:20','f8','l8',1000),(28,'email','r9@null.com','$2a$11$dh/ctgQRsEU6.DpMGjmTjuinnXJY6.lo6EbGxE5ip8u6s1J5Ph63G',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r9@null.com','{}','2016-12-30 18:21:20','2016-12-30 18:21:20','f9','l9',100),(29,'email','m9@null.com','$2a$11$p0cwspU/zuI4AQhhTRg7TuTz/1aFKCLTUukLoiImCtN4gJ5AV7cMG',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m9@null.com','{}','2016-12-30 18:21:20','2016-12-30 18:21:20','f9','l9',200),(30,'email','a9@null.com','$2a$11$MWKQ7DKQeqR/iHJU/x7W1OUo/7/85kvMEvHFBHVjkPqYxQ3od/LEC',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a9@null.com','{}','2016-12-30 18:21:21','2016-12-30 18:21:21','f9','l9',1000);
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

-- Dump completed on 2016-12-30 11:21:21
