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
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2017-01-07 16:13:36','2017-01-07 16:13:36');
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
  `role` int(11) DEFAULT '100',
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
INSERT INTO `users` VALUES (1,'email','r0@null.com','$2a$11$h0tER/MXWFY3IKCC1ye1xu.BdT4qBaJUiZoRSQm3i3HALOmXnF2zC',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r0@null.com','{}','2017-01-07 16:13:38','2017-01-07 16:13:38','rf0','rl0',100),(2,'email','m0@null.com','$2a$11$4PR6rxwJOx/ALD8VTljyLekeGGJmAvf/Gh7o9WY1Pmda/6j9qIcAa',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m0@null.com','{}','2017-01-07 16:13:38','2017-01-07 16:13:38','mf0','ml0',200),(3,'email','a0@null.com','$2a$11$/g53jtuFd8TJHkInmqza9.sjeU0SS2F5HX/hqaSBYTkantEhMVmeC',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a0@null.com','{}','2017-01-07 16:13:38','2017-01-07 16:13:38','af0','al0',1000),(4,'email','r1@null.com','$2a$11$uPuf6WZVKZlEeQ9cnfbWael6tQtOEUo3vedJ1tv//0pHAgcdCt3Gm',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r1@null.com','{}','2017-01-07 16:13:39','2017-01-07 16:13:39','rf1','rl1',100),(5,'email','m1@null.com','$2a$11$quGXIK9xuoGad/OrxW3BAugAs3bM/BaKCEaxSWVckbLe9oWoT3emW',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m1@null.com','{}','2017-01-07 16:13:39','2017-01-07 16:13:39','mf1','ml1',200),(6,'email','a1@null.com','$2a$11$mvAacZAsCFSg9GqNVGaOdOdOP1RwBxsZ1hWFXDHCIPW7FXAaEbORS',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a1@null.com','{}','2017-01-07 16:13:39','2017-01-07 16:13:39','af1','al1',1000),(7,'email','r2@null.com','$2a$11$2.P8Rvq9b8AvEuZkVrKXNuSqTexKHoZjxzaiZf6yQ0KbURkeIgu..',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r2@null.com','{}','2017-01-07 16:13:39','2017-01-07 16:13:39','rf2','rl2',100),(8,'email','m2@null.com','$2a$11$a24UkiZ1IUvCnenmDU9tieK0Hr4IR3FmDDaN7K0A1QkuVBEn2oESO',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m2@null.com','{}','2017-01-07 16:13:39','2017-01-07 16:13:39','mf2','ml2',200),(9,'email','a2@null.com','$2a$11$iUbbn4niWvkYQWsJbHFGKesZULkxr76ZA0bcrsbmgkoybFZmTElFa',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a2@null.com','{}','2017-01-07 16:13:39','2017-01-07 16:13:39','af2','al2',1000),(10,'email','r3@null.com','$2a$11$RnCHTemjigJGTuBT8fV0mOjpcYTNlwwAYpLY0vZOqksTEaBr9vpQe',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r3@null.com','{}','2017-01-07 16:13:40','2017-01-07 16:13:40','rf3','rl3',100),(11,'email','m3@null.com','$2a$11$9apLswLKG.q/zzSJFT0eyO9hx0TbfDLG.Qnx4.DHrFMI1sfCXlSPW',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m3@null.com','{}','2017-01-07 16:13:40','2017-01-07 16:13:40','mf3','ml3',200),(12,'email','a3@null.com','$2a$11$Y/ez9EQB6lJBzSMISMMQzOnuFuopvaB1f1wL.huyX62MkuiRxhf4m',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a3@null.com','{}','2017-01-07 16:13:40','2017-01-07 16:13:40','af3','al3',1000),(13,'email','r4@null.com','$2a$11$U8SFs7Cj.JkVT2jCq3338OYgR1FCd5Hp0WU5WUd/6V1LJFGInzBia',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r4@null.com','{}','2017-01-07 16:13:40','2017-01-07 16:13:40','rf4','rl4',100),(14,'email','m4@null.com','$2a$11$9Fr9NQLIFMZhLHsxWPY.r.pq5KlcC4FZEUwlK1ALlGRaQJm1kKaOC',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m4@null.com','{}','2017-01-07 16:13:40','2017-01-07 16:13:40','mf4','ml4',200),(15,'email','a4@null.com','$2a$11$6M/PMdRaS8QvtgRNqBOzou9LA6jDL8FY00cjVMge.JSYNtsnym/1.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a4@null.com','{}','2017-01-07 16:13:40','2017-01-07 16:13:40','af4','al4',1000),(16,'email','r5@null.com','$2a$11$3AJPkuZLZKGD38qZJSTTbefYzxiElkLbHrDiu0diGptN75vPY5Pg6',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r5@null.com','{}','2017-01-07 16:13:41','2017-01-07 16:13:41','rf5','rl5',100),(17,'email','m5@null.com','$2a$11$1AmJvnyJRia2v0evNkanJ.Dq25E5alBm1i3yg57H8pRxy8aYKgdje',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m5@null.com','{}','2017-01-07 16:13:41','2017-01-07 16:13:41','mf5','ml5',200),(18,'email','a5@null.com','$2a$11$48efUwl/g7hrPyxOtErh/eohblIA4cw6tHjWj.8nZztscrn2N.50i',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a5@null.com','{}','2017-01-07 16:13:41','2017-01-07 16:13:41','af5','al5',1000),(19,'email','r6@null.com','$2a$11$z6RsobIqrtz2AQk8ui4cYuJa1yVp0s.N5WowDG6BaO8sstM5Z/GeO',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r6@null.com','{}','2017-01-07 16:13:41','2017-01-07 16:13:41','rf6','rl6',100),(20,'email','m6@null.com','$2a$11$XNd7bqPzPeXRuHL.HM1ju.zoAXA1RXbFLD9FKeopLa3GTDgo1FHv6',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m6@null.com','{}','2017-01-07 16:13:41','2017-01-07 16:13:41','mf6','ml6',200),(21,'email','a6@null.com','$2a$11$TfMnlU1DZIL.IB8JiobiZefB4k9wcY/92fQlV6JBIiYwDcDsFynuy',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a6@null.com','{}','2017-01-07 16:13:41','2017-01-07 16:13:41','af6','al6',1000),(22,'email','r7@null.com','$2a$11$b0O0nFlkakoTA6ySOUn/b.QaZQ4g0/848J.H4lsi3gGQsRiDSvBCq',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r7@null.com','{}','2017-01-07 16:13:41','2017-01-07 16:13:41','rf7','rl7',100),(23,'email','m7@null.com','$2a$11$f8qfnjHS306gaFfXcJmSn.32bFSJZBvhgUgkx2Lk2PiMfGJ2AjtUS',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m7@null.com','{}','2017-01-07 16:13:42','2017-01-07 16:13:42','mf7','ml7',200),(24,'email','a7@null.com','$2a$11$mf4dJ2564usTydYt7Wu5Ne4vKzrv8tkwQNFyDgDHeqvi7D5wKo8ju',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a7@null.com','{}','2017-01-07 16:13:42','2017-01-07 16:13:42','af7','al7',1000),(25,'email','r8@null.com','$2a$11$ojzB2qlz5z7ZF/D9VVmDqON8KmstNWFtb8pr.7JqSdwJhMTi/7N22',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r8@null.com','{}','2017-01-07 16:13:42','2017-01-07 16:13:42','rf8','rl8',100),(26,'email','m8@null.com','$2a$11$or8NiVItzJFAajp41J7nKOkCEh.RaBSVUES7fwxQ6qkYGdjZHCise',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m8@null.com','{}','2017-01-07 16:13:42','2017-01-07 16:13:42','mf8','ml8',200),(27,'email','a8@null.com','$2a$11$N/RHC/vOAP2iMIR3xTjd8Olo.enFj8wWWH7SUVvLn3tDhUBd1/bUu',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a8@null.com','{}','2017-01-07 16:13:42','2017-01-07 16:13:42','af8','al8',1000),(28,'email','r9@null.com','$2a$11$U.dTQxouERQuVL1VxGFuf.jgKzECpEfeaR4uHcsu5j/fKZ1FBGfhS',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'r9@null.com','{}','2017-01-07 16:13:42','2017-01-07 16:13:42','rf9','rl9',100),(29,'email','m9@null.com','$2a$11$VNDmLeJqXl1rWoQrtQ0z/eqFL8bJqBZVCt2Z7p9LZJjIDASUkQwtG',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'m9@null.com','{}','2017-01-07 16:13:43','2017-01-07 16:13:43','mf9','ml9',200),(30,'email','a9@null.com','$2a$11$h8sk0BZZtplsh56m3SW3UubZESJ8cBzkTPlqHNryN70V7TvbaGDLW',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a9@null.com','{}','2017-01-07 16:13:43','2017-01-07 16:13:43','af9','al9',1000);
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

-- Dump completed on 2017-01-07  9:13:43
