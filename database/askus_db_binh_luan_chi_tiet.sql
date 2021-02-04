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
-- Table structure for table `binh_luan_chi_tiet`
--

DROP TABLE IF EXISTS `binh_luan_chi_tiet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `binh_luan_chi_tiet` (
  `binh_luan_id` bigint unsigned NOT NULL,
  `trang_thai_id` tinyint unsigned NOT NULL,
  `thoi_gian` timestamp NOT NULL,
  PRIMARY KEY (`binh_luan_id`,`trang_thai_id`),
  KEY `fk_binh_luan_chi_tiet_binh_luan1_idx` (`binh_luan_id`),
  KEY `fk_binh_luan_chi_tiet_trang_thai1_idx` (`trang_thai_id`),
  CONSTRAINT `fk_binh_luan_chi_tiet_binh_luan1` FOREIGN KEY (`binh_luan_id`) REFERENCES `binh_luan` (`id`),
  CONSTRAINT `fk_binh_luan_chi_tiet_trang_thai1` FOREIGN KEY (`trang_thai_id`) REFERENCES `trang_thai` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `binh_luan_chi_tiet`
--

LOCK TABLES `binh_luan_chi_tiet` WRITE;
/*!40000 ALTER TABLE `binh_luan_chi_tiet` DISABLE KEYS */;
INSERT INTO `binh_luan_chi_tiet` VALUES (1,1,'2021-02-04 12:21:37'),(2,1,'2021-02-04 12:22:02');
/*!40000 ALTER TABLE `binh_luan_chi_tiet` ENABLE KEYS */;
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
