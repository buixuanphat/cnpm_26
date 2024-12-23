-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: manadb
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `bang_diem`
--

DROP TABLE IF EXISTS `bang_diem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bang_diem` (
  `idBangDiem` int NOT NULL AUTO_INCREMENT,
  `hocSinh_id` int NOT NULL,
  `loai_diem` varchar(20) DEFAULT NULL,
  `diem` float DEFAULT NULL,
  `monHoc_id` int NOT NULL,
  `giaoVien_id` int NOT NULL,
  `hocKy_id` int NOT NULL,
  PRIMARY KEY (`idBangDiem`),
  KEY `hocSinh_id` (`hocSinh_id`),
  KEY `monHoc_id` (`monHoc_id`),
  KEY `giaoVien_id` (`giaoVien_id`),
  KEY `hocKy_id` (`hocKy_id`),
  CONSTRAINT `bang_diem_ibfk_1` FOREIGN KEY (`hocSinh_id`) REFERENCES `hoc_sinh` (`idHocSinh`),
  CONSTRAINT `bang_diem_ibfk_2` FOREIGN KEY (`monHoc_id`) REFERENCES `monhoc` (`idMonHoc`),
  CONSTRAINT `bang_diem_ibfk_3` FOREIGN KEY (`giaoVien_id`) REFERENCES `giaovien` (`id`),
  CONSTRAINT `bang_diem_ibfk_4` FOREIGN KEY (`hocKy_id`) REFERENCES `hoc_ky` (`idHocKy`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bang_diem`
--

LOCK TABLES `bang_diem` WRITE;
/*!40000 ALTER TABLE `bang_diem` DISABLE KEYS */;
INSERT INTO `bang_diem` VALUES (1,1,'15p_1',8,3,7,1),(2,1,'15p_2',9,3,7,1),(3,1,'15p_3',7,3,7,1),(4,1,'1_tiet_1',8,3,7,1),(5,1,'1_tiet_2',8,3,7,1),(6,1,'thi',8.75,3,7,1),(7,2,'15p_1',8,3,7,1),(8,2,'15p_2',9,3,7,1),(9,2,'15p_3',6,3,7,1),(10,2,'1_tiet_1',7.5,3,7,1),(11,2,'1_tiet_2',8.5,3,7,1),(12,2,'thi',7.5,3,7,1),(13,1,'15p_1',6,1,4,1),(14,1,'15p_2',7,1,4,1),(15,1,'15p_3',9,1,4,1),(16,1,'15p_4',8,1,4,1),(17,1,'15p_5',7,1,4,1),(18,1,'1_tiet_1',9,1,4,1),(19,1,'1_tiet_2',9,1,4,1),(20,1,'1_tiet_3',9,1,4,1),(21,1,'thi',8.5,1,4,1),(22,2,'15p_1',6,1,4,1),(23,2,'15p_2',9,1,4,1),(24,2,'15p_3',9,1,4,1),(25,2,'15p_4',8.5,1,4,1),(26,2,'15p_5',7,1,4,1),(27,2,'1_tiet_1',9,1,4,1),(28,2,'1_tiet_2',9,1,4,1),(29,2,'1_tiet_3',9,1,4,1),(30,2,'thi',7.5,1,4,1),(31,1,'15p_1',5,2,6,1),(32,1,'15p_2',6,2,6,1),(33,1,'15p_3',7,2,6,1),(34,1,'15p_4',8,2,6,1),(35,1,'15p_5',9,2,6,1),(36,1,'1_tiet_1',8,2,6,1),(37,1,'1_tiet_2',6,2,6,1),(38,1,'1_tiet_3',9,2,6,1),(39,1,'thi',8,2,6,1),(40,2,'15p_1',6,2,6,1),(41,2,'15p_2',6,2,6,1),(42,2,'15p_3',8,2,6,1),(43,2,'15p_4',8,2,6,1),(44,2,'15p_5',9,2,6,1),(45,2,'1_tiet_1',8,2,6,1),(46,2,'1_tiet_2',6,2,6,1),(47,2,'1_tiet_3',9,2,6,1),(48,2,'thi',8,2,6,1);
/*!40000 ALTER TABLE `bang_diem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-23 16:02:19
