-- --------------------------------------------------------
-- Máy chủ:                      127.0.0.1
-- Server version:               10.4.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Phiên bản:           12.7.0.6850
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for thuvien
CREATE DATABASE IF NOT EXISTS `thuvien` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `thuvien`;

-- Dumping structure for table thuvien.bandoc
CREATE TABLE IF NOT EXISTS `bandoc` (
  `MABANDOC` varchar(10) NOT NULL,
  `TEN` varchar(122) NOT NULL,
  `EMAIL` varchar(122) NOT NULL,
  `PASSWORD` varchar(12) NOT NULL,
  `SDT` varchar(122) DEFAULT NULL,
  `CHUCVU` varchar(50) NOT NULL,
  PRIMARY KEY (`MABANDOC`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table thuvien.login
CREATE TABLE IF NOT EXISTS `login` (
  `USER` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table thuvien.masachchung
CREATE TABLE IF NOT EXISTS `masachchung` (
  `MASACHCHUNG` varchar(5) NOT NULL,
  `TENSACH` varchar(50) NOT NULL,
  `SOLUONG` int(2) unsigned zerofill NOT NULL DEFAULT 00,
  `THELOAI` varchar(50) NOT NULL DEFAULT '',
  `TACGIA` varchar(50) NOT NULL DEFAULT '',
  `NHAXUATBAN` varchar(122) NOT NULL,
  `NAMXUATBAN` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`MASACHCHUNG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table thuvien.phieumuontrasach
CREATE TABLE IF NOT EXISTS `phieumuontrasach` (
  `MAPHIEUMUON` varchar(10) NOT NULL,
  `MABANDOC` varchar(10) NOT NULL,
  `MASACH` varchar(5) NOT NULL,
  `SOLUONG` int(11) NOT NULL,
  `NGAYMUON` date NOT NULL,
  `HANTRA` date NOT NULL,
  `NGAYTRA` date DEFAULT NULL,
  `TINHTRANG` varchar(50) DEFAULT 'Chưa trả',
  PRIMARY KEY (`MAPHIEUMUON`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table thuvien.sach
CREATE TABLE IF NOT EXISTS `sach` (
  `MASACHCHUNG` varchar(10) NOT NULL,
  `MASACH` varchar(10) NOT NULL,
  `TENSACH` varchar(50) NOT NULL,
  `THELOAI` varchar(50) NOT NULL,
  `TACGIA` varchar(50) NOT NULL,
  `TRANGTHAI` longtext NOT NULL,
  `ANH` longblob DEFAULT NULL,
  PRIMARY KEY (`MASACH`),
  KEY `MASACHCHUNG` (`MASACHCHUNG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
