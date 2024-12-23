-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: manadb
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
  `loai_diem` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bang_diem`
--

LOCK TABLES `bang_diem` WRITE;
/*!40000 ALTER TABLE `bang_diem` DISABLE KEYS */;
INSERT INTO `bang_diem` VALUES (1,4,'15p_1',9,3,3,1),(2,4,'15p_2',8,3,3,1),(3,4,'15p_3',8.5,3,3,1),(4,5,'15p_1',6,3,3,1),(5,5,'15p_2',6,3,3,1),(6,5,'15p_3',8,3,3,1),(7,4,'1_tiet_1',10,3,3,1),(8,4,'1_tiet_2',10,3,3,1),(9,5,'1_tiet_1',7,3,3,1),(10,5,'1_tiet_2',7.5,3,3,1),(11,4,'thi',9.5,3,3,1),(12,5,'thi',9,3,3,1),(13,4,'15p_1',7,1,4,1),(14,4,'15p_2',6,1,4,1),(15,4,'15p_3',8,1,4,1),(16,4,'15p_4',7.5,1,4,1),(17,4,'15p_5',8,1,4,1),(18,4,'1_tiet_1',9,1,4,1),(19,4,'1_tiet_2',7,1,4,1),(20,4,'1_tiet_3',8,1,4,1),(21,4,'thi',10,1,4,1),(22,5,'15p_1',7,1,4,1),(23,5,'15p_2',5,1,4,1),(24,5,'15p_3',8,1,4,1),(25,5,'15p_4',9,1,4,1),(26,5,'15p_5',7,1,4,1),(27,5,'1_tiet_1',8.5,1,4,1),(28,5,'1_tiet_2',6,1,4,1),(29,5,'1_tiet_3',9,1,4,1),(30,5,'thi',8,1,4,1),(31,4,'15p_1',9,2,6,1),(32,4,'15p_2',9,2,6,1),(33,4,'15p_3',8,2,6,1),(34,4,'15p_4',7,2,6,1),(35,4,'15p_5',8,2,6,1),(36,4,'1_tiet_1',10,2,6,1),(37,4,'1_tiet_2',10,2,6,1),(38,4,'1_tiet_3',9,2,6,1),(39,4,'thi',9.5,2,6,1),(40,5,'15p_1',8,2,6,1),(41,5,'15p_2',7,2,6,1),(42,5,'15p_3',9,2,6,1),(43,5,'15p_4',7,2,6,1),(44,5,'15p_5',8,2,6,1),(45,5,'1_tiet_1',8,2,6,1),(46,5,'1_tiet_2',9,2,6,1),(47,5,'1_tiet_3',10,2,6,1),(48,5,'thi',8,2,6,1);
/*!40000 ALTER TABLE `bang_diem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bang_diem_tb`
--

DROP TABLE IF EXISTS `bang_diem_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bang_diem_tb` (
  `idBangDiemTB` int NOT NULL AUTO_INCREMENT,
  `hocSinh_id` int NOT NULL,
  `hocKy_id` int NOT NULL,
  `diem_trung_binh` float NOT NULL,
  PRIMARY KEY (`idBangDiemTB`),
  KEY `hocSinh_id` (`hocSinh_id`),
  KEY `hocKy_id` (`hocKy_id`),
  CONSTRAINT `bang_diem_tb_ibfk_1` FOREIGN KEY (`hocSinh_id`) REFERENCES `hoc_sinh` (`idHocSinh`),
  CONSTRAINT `bang_diem_tb_ibfk_2` FOREIGN KEY (`hocKy_id`) REFERENCES `hoc_ky` (`idHocKy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bang_diem_tb`
--

LOCK TABLES `bang_diem_tb` WRITE;
/*!40000 ALTER TABLE `bang_diem_tb` DISABLE KEYS */;
/*!40000 ALTER TABLE `bang_diem_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `danh_sach_lop`
--

DROP TABLE IF EXISTS `danh_sach_lop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `danh_sach_lop` (
  `maDsLop` int NOT NULL AUTO_INCREMENT,
  `idPhongHoc` int DEFAULT NULL,
  `tenLop` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `khoi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `giaoVienChuNhiem_id` int DEFAULT NULL,
  `siSoHienTai` int NOT NULL,
  `siSo` int NOT NULL,
  `hocKy_id` int NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`maDsLop`),
  UNIQUE KEY `idPhongHoc` (`idPhongHoc`),
  UNIQUE KEY `tenLop` (`tenLop`),
  KEY `giaoVienChuNhiem_id` (`giaoVienChuNhiem_id`),
  KEY `hocKy_id` (`hocKy_id`),
  CONSTRAINT `danh_sach_lop_ibfk_1` FOREIGN KEY (`idPhongHoc`) REFERENCES `phong_hoc` (`idPhongHoc`),
  CONSTRAINT `danh_sach_lop_ibfk_2` FOREIGN KEY (`giaoVienChuNhiem_id`) REFERENCES `giaovien` (`id`),
  CONSTRAINT `danh_sach_lop_ibfk_3` FOREIGN KEY (`hocKy_id`) REFERENCES `hoc_ky` (`idHocKy`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danh_sach_lop`
--

LOCK TABLES `danh_sach_lop` WRITE;
/*!40000 ALTER TABLE `danh_sach_lop` DISABLE KEYS */;
INSERT INTO `danh_sach_lop` VALUES (24,1,'10A1','Khối 10',7,2,2,1,1),(25,NULL,'11A1','Khối 11',3,2,2,1,1);
/*!40000 ALTER TABLE `danh_sach_lop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giao_vien`
--

DROP TABLE IF EXISTS `giao_vien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giao_vien` (
  `idGiaoVien` int NOT NULL AUTO_INCREMENT,
  `hoTen` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioiTinh` tinyint(1) NOT NULL,
  `ngaySinh` date NOT NULL,
  `diaChi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `SDT` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `eMail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `taiKhoan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `matKhau` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idMonHoc` int NOT NULL,
  PRIMARY KEY (`idGiaoVien`),
  UNIQUE KEY `SDT` (`SDT`),
  UNIQUE KEY `eMail` (`eMail`),
  UNIQUE KEY `taiKhoan` (`taiKhoan`),
  KEY `idMonHoc` (`idMonHoc`),
  CONSTRAINT `giao_vien_ibfk_1` FOREIGN KEY (`idMonHoc`) REFERENCES `mon_hoc` (`idMonHoc`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giao_vien`
--

LOCK TABLES `giao_vien` WRITE;
/*!40000 ALTER TABLE `giao_vien` DISABLE KEYS */;
INSERT INTO `giao_vien` VALUES (6,'Lý Vi Quyền',1,'1992-09-09','Thành phố Hồ Chí Minh','0792821000','viquyen@gmail.com','viquyen','e10adc3949ba59abbe56e057f20f883e',3),(7,'Tô Oai Hùng',1,'1992-09-15','Thành phố Hồ Chí Minh','0123456789','oaihung@gmai.com','oaihung','e10adc3949ba59abbe56e057f20f883e',1),(8,'Nguyễn Mai Trang',0,'1992-11-16','Thành phố Hồ Chí Minh','0762590966','maitrang@gmail.com','maitrang','e10adc3949ba59abbe56e057f20f883e',2),(9,'Minh Khuê',1,'1992-03-09','Thành phố Hồ Chí Minh','0794521012','minhkhue@gmail.com','minhkhue','e10adc3949ba59abbe56e057f20f883e',1);
/*!40000 ALTER TABLE `giao_vien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giao_vien_day_hoc`
--

DROP TABLE IF EXISTS `giao_vien_day_hoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giao_vien_day_hoc` (
  `idGiaoVienDayHoc` int NOT NULL AUTO_INCREMENT,
  `idGiaoVien` int DEFAULT NULL,
  `idDsLop` int DEFAULT NULL,
  PRIMARY KEY (`idGiaoVienDayHoc`),
  KEY `idGiaoVien` (`idGiaoVien`),
  KEY `idDsLop` (`idDsLop`),
  CONSTRAINT `giao_vien_day_hoc_ibfk_1` FOREIGN KEY (`idGiaoVien`) REFERENCES `giaovien` (`id`),
  CONSTRAINT `giao_vien_day_hoc_ibfk_2` FOREIGN KEY (`idDsLop`) REFERENCES `danh_sach_lop` (`maDsLop`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giao_vien_day_hoc`
--

LOCK TABLES `giao_vien_day_hoc` WRITE;
/*!40000 ALTER TABLE `giao_vien_day_hoc` DISABLE KEYS */;
INSERT INTO `giao_vien_day_hoc` VALUES (70,7,24),(71,4,24),(72,6,24),(73,3,25),(74,4,25),(75,6,25);
/*!40000 ALTER TABLE `giao_vien_day_hoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giaovien`
--

DROP TABLE IF EXISTS `giaovien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giaovien` (
  `id` int NOT NULL,
  `idMonHoc` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idMonHoc` (`idMonHoc`),
  CONSTRAINT `giaovien_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`),
  CONSTRAINT `giaovien_ibfk_2` FOREIGN KEY (`idMonHoc`) REFERENCES `monhoc` (`idMonHoc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giaovien`
--

LOCK TABLES `giaovien` WRITE;
/*!40000 ALTER TABLE `giaovien` DISABLE KEYS */;
INSERT INTO `giaovien` VALUES (4,1),(6,2),(3,3),(7,3);
/*!40000 ALTER TABLE `giaovien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoc_ky`
--

DROP TABLE IF EXISTS `hoc_ky`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoc_ky` (
  `idHocKy` int NOT NULL AUTO_INCREMENT,
  `namHoc` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hocKy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idHocKy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoc_ky`
--

LOCK TABLES `hoc_ky` WRITE;
/*!40000 ALTER TABLE `hoc_ky` DISABLE KEYS */;
INSERT INTO `hoc_ky` VALUES (1,'2024-2025','1'),(2,'2024-2025','2');
/*!40000 ALTER TABLE `hoc_ky` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoc_sinh`
--

DROP TABLE IF EXISTS `hoc_sinh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoc_sinh` (
  `idHocSinh` int NOT NULL AUTO_INCREMENT,
  `hoTen` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioiTinh` tinyint(1) NOT NULL,
  `ngaySinh` date NOT NULL,
  `khoi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diaChi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `SDT` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `eMail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `maDsLop` int DEFAULT NULL,
  PRIMARY KEY (`idHocSinh`),
  UNIQUE KEY `SDT` (`SDT`),
  UNIQUE KEY `eMail` (`eMail`),
  KEY `maDsLop` (`maDsLop`),
  CONSTRAINT `hoc_sinh_ibfk_1` FOREIGN KEY (`maDsLop`) REFERENCES `danh_sach_lop` (`maDsLop`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoc_sinh`
--

LOCK TABLES `hoc_sinh` WRITE;
/*!40000 ALTER TABLE `hoc_sinh` DISABLE KEYS */;
INSERT INTO `hoc_sinh` VALUES (1,'Nguyễn Quang Trung',1,'2009-02-21','Khối 10','Tp. Hồ Chí Minh','0987654321','quangtrung@gmail.com',24),(2,'Trần Thị Tuyết',0,'2009-03-27','Khối 10','Tp. Hồ Chí Minh','0987456321','tuyettran@gmail.com',24),(4,'Nguyễn Trà My',0,'2008-05-21','Khối 11','Tp. Hồ Chí Minh','0762590922','tramy@gmail.com',25),(5,'Trần Quốc Tuấn',1,'2008-04-01','Khối 11','Tp. Hồ Chí Minh','0762595241','tuan123@gmail.com',25);
/*!40000 ALTER TABLE `hoc_sinh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mon_hoc`
--

DROP TABLE IF EXISTS `mon_hoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mon_hoc` (
  `idMonHoc` int NOT NULL AUTO_INCREMENT,
  `tenMonHoc` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idMonHoc`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mon_hoc`
--

LOCK TABLES `mon_hoc` WRITE;
/*!40000 ALTER TABLE `mon_hoc` DISABLE KEYS */;
INSERT INTO `mon_hoc` VALUES (1,'Toán'),(2,'Văn'),(3,'Anh');
/*!40000 ALTER TABLE `mon_hoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monhoc`
--

DROP TABLE IF EXISTS `monhoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monhoc` (
  `idMonHoc` int NOT NULL AUTO_INCREMENT,
  `tenMonHoc` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `soCot15p` int NOT NULL,
  `soCot1Tiet` int NOT NULL,
  `soCotThi` int NOT NULL,
  PRIMARY KEY (`idMonHoc`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monhoc`
--

LOCK TABLES `monhoc` WRITE;
/*!40000 ALTER TABLE `monhoc` DISABLE KEYS */;
INSERT INTO `monhoc` VALUES (1,'Văn',5,3,1),(2,'Toán',5,3,1),(3,'Anh',3,2,1);
/*!40000 ALTER TABLE `monhoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhan_vien`
--

DROP TABLE IF EXISTS `nhan_vien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhan_vien` (
  `idNhanVien` int NOT NULL AUTO_INCREMENT,
  `hoTen` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioiTinh` tinyint(1) NOT NULL,
  `ngaySinh` date NOT NULL,
  `diaChi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `SDT` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `eMail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `vaiTro` enum('ADMIN','NHANVIENTIEPNHAN','GIAOVIEN','NGUOIQUANTRI') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taiKhoan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `matKhau` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idNhanVien`),
  UNIQUE KEY `SDT` (`SDT`),
  UNIQUE KEY `eMail` (`eMail`),
  UNIQUE KEY `taiKhoan` (`taiKhoan`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhan_vien`
--

LOCK TABLES `nhan_vien` WRITE;
/*!40000 ALTER TABLE `nhan_vien` DISABLE KEYS */;
INSERT INTO `nhan_vien` VALUES (1,'Tô Quốc Bình',1,'2004-02-21','Thành phố Hồ Chí Minh','0762590966','toquocbinh2102@gmail.com','NHANVIENTIEPNHAN','quocbinh','e10adc3949ba59abbe56e057f20f883e'),(3,'Trần Quốc Phong',1,'2004-10-30','Thành phố Hồ Chí Minh','0799773010','toquocphong2102@gmail.com','NGUOIQUANTRI','quocphong','e10adc3949ba59abbe56e057f20f883e');
/*!40000 ALTER TABLE `nhan_vien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanvien` (
  `id` int NOT NULL,
  `vaiTro` enum('NGUOIQUANTRI','NHANVIEN') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
INSERT INTO `nhanvien` VALUES (1,'NGUOIQUANTRI'),(2,'NHANVIEN');
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phong_hoc`
--

DROP TABLE IF EXISTS `phong_hoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phong_hoc` (
  `idPhongHoc` int NOT NULL AUTO_INCREMENT,
  `tenPhong` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idPhongHoc`),
  UNIQUE KEY `tenPhong` (`tenPhong`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phong_hoc`
--

LOCK TABLES `phong_hoc` WRITE;
/*!40000 ALTER TABLE `phong_hoc` DISABLE KEYS */;
INSERT INTO `phong_hoc` VALUES (1,'101'),(2,'102'),(3,'103'),(4,'104'),(5,'105'),(6,'201'),(7,'202'),(8,'203'),(9,'204'),(10,'205'),(11,'301'),(12,'302'),(13,'303'),(14,'304'),(15,'305');
/*!40000 ALTER TABLE `phong_hoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quy_dinh`
--

DROP TABLE IF EXISTS `quy_dinh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quy_dinh` (
  `idQuyDinh` int NOT NULL AUTO_INCREMENT,
  `min_age` int DEFAULT NULL,
  `max_age` int DEFAULT NULL,
  `si_so` int DEFAULT NULL,
  PRIMARY KEY (`idQuyDinh`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quy_dinh`
--

LOCK TABLES `quy_dinh` WRITE;
/*!40000 ALTER TABLE `quy_dinh` DISABLE KEYS */;
INSERT INTO `quy_dinh` VALUES (1,15,20,2);
/*!40000 ALTER TABLE `quy_dinh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hoTen` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioiTinh` tinyint(1) NOT NULL,
  `ngaySinh` date NOT NULL,
  `diaChi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `SDT` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `eMail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `taiKhoan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `matKhau` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `SDT` (`SDT`),
  UNIQUE KEY `eMail` (`eMail`),
  UNIQUE KEY `taiKhoan` (`taiKhoan`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Tô Quốc Bình',1,'2004-02-21','Thành phố Hồ Chí Minh','0762590966','toquocbinh2102@gmail.com','admin','e10adc3949ba59abbe56e057f20f883e'),(2,'Trần Quốc Phong',1,'2004-10-30','Thành phố Hồ Chí Minh','0762590977','tqphong2k4@gmail.com','quocphong','e10adc3949ba59abbe56e057f20f883e'),(3,'Trần Huỳnh Sang',1,'2004-03-24','Cà Mau','0123456789','hsang1@gmail.com','huynhsang','e10adc3949ba59abbe56e057f20f883e'),(4,'Nguyễn Đăng Khôi',1,'2004-05-24','Tp. Hồ Chí Minh','0123654789','dangkhoi@gmail.com','dangkhoi','e10adc3949ba59abbe56e057f20f883e'),(6,'Nguyễn Thanh Hà',0,'2004-08-10','Tp. Hồ Chí Minh','0762590978','hanguyen@gmail.com','thanhha','e10adc3949ba59abbe56e057f20f883e'),(7,'Lý Vi Quyền',1,'1992-09-17','Thành phố Hồ Chí Minh','0797343423','viquyen@gmail.com','viquyen','e10adc3949ba59abbe56e057f20f883e');
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

-- Dump completed on 2024-12-23 14:55:19
