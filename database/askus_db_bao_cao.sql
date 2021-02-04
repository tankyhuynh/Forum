-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: askus_db
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `bao_cao`
--

DROP TABLE IF EXISTS `bao_cao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bao_cao` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nguoi_dung_id` bigint unsigned NOT NULL,
  `the_loai_bao_cao_id` tinyint unsigned NOT NULL,
  `bai_viet_id` bigint unsigned NOT NULL,
  `thoi_gian` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_bao_cao_nguoi_dung_idx` (`nguoi_dung_id`),
  KEY `fk_bao_cao_the_loai_bao_cao1_idx` (`the_loai_bao_cao_id`),
  KEY `fk_bao_cao_bai_viet1_idx` (`bai_viet_id`),
  CONSTRAINT `fk_bao_cao_bai_viet1` FOREIGN KEY (`bai_viet_id`) REFERENCES `bai_viet` (`id`),
  CONSTRAINT `fk_bao_cao_nguoi_dung` FOREIGN KEY (`nguoi_dung_id`) REFERENCES `nguoi_dung` (`id`),
  CONSTRAINT `fk_bao_cao_the_loai_bao_cao1` FOREIGN KEY (`the_loai_bao_cao_id`) REFERENCES `the_loai_bao_cao` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bao_cao`
--

LOCK TABLES `bao_cao` WRITE;
/*!40000 ALTER TABLE `bao_cao` DISABLE KEYS */;
/*!40000 ALTER TABLE `bao_cao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-04 20:25:49
