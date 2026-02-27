-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping structure for table absensi_sekolah_v.3.bentuk_pelanggaran
DROP TABLE IF EXISTS `bentuk_pelanggaran`;
CREATE TABLE IF NOT EXISTS `bentuk_pelanggaran` (
  `bentuk_pelanggaran_id` int NOT NULL AUTO_INCREMENT,
  `kategori_pelanggaran_id` int NOT NULL DEFAULT '0',
  `bentuk_pelanggaran` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bobot` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`bentuk_pelanggaran_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table absensi_sekolah_v.3.bentuk_pelanggaran: ~5 rows (approximately)
INSERT INTO `bentuk_pelanggaran` (`bentuk_pelanggaran_id`, `kategori_pelanggaran_id`, `bentuk_pelanggaran`, `bobot`) VALUES
	(1, 1, 'Berkelahi dengan sekolahan lain', '100'),
	(2, 1, 'Terbukti melakukan kejahatan', '50'),
	(3, 4, 'Mengejek Guru', '10'),
	(4, 4, 'Berkata Kotor Dengan Guru', '50'),
	(5, 2, 'Absensi Telat', '10');

-- Dumping structure for table absensi_sekolah_v.3.kategori_pelanggaran
DROP TABLE IF EXISTS `kategori_pelanggaran`;
CREATE TABLE IF NOT EXISTS `kategori_pelanggaran` (
  `kategori_pelanggaran_id` int NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`kategori_pelanggaran_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table absensi_sekolah_v.3.kategori_pelanggaran: ~4 rows (approximately)
INSERT INTO `kategori_pelanggaran` (`kategori_pelanggaran_id`, `nama_kategori`) VALUES
	(1, 'KEJAHATAN'),
	(2, 'KERAJINAN'),
	(3, 'KERAPIAN'),
	(4, 'KESOPANAN');

-- Dumping structure for table absensi_sekolah_v.3.pelanggaran
DROP TABLE IF EXISTS `pelanggaran`;
CREATE TABLE IF NOT EXISTS `pelanggaran` (
  `pelanggaran_id` int NOT NULL AUTO_INCREMENT,
  `pegawai_id` int DEFAULT '0',
  `kelas` varchar(50) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `jenis_pelanggaran` int DEFAULT NULL,
  `bentuk_pelanggaran` varchar(100) DEFAULT NULL,
  `bobot` int DEFAULT NULL,
  `tanggal` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`pelanggaran_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table absensi_sekolah_v.3.pelanggaran: ~0 rows (approximately)
INSERT INTO `pelanggaran` (`pelanggaran_id`, `pegawai_id`, `kelas`, `user_id`, `jenis_pelanggaran`, `bentuk_pelanggaran`, `bobot`, `tanggal`, `time`) VALUES
	(2, 12, 'IX-A', 1, 1, 'Terbukti melakukan kejahatan', 50, '2025-12-08', '14:20:19'),
	(3, 12, 'IX-A', 2, 2, 'Absensi Telat', 10, '2025-12-10', '01:07:29'),
	(4, 12, 'IX-A', 1, 2, 'Absensi Telat', 10, '2025-12-15', '12:47:03');

-- Dumping structure for table absensi_sekolah_v.3.sanksi_pelanggaran
DROP TABLE IF EXISTS `sanksi_pelanggaran`;
CREATE TABLE IF NOT EXISTS `sanksi_pelanggaran` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pegawai_id` int NOT NULL DEFAULT '0',
  `user_id` int DEFAULT NULL,
  `wali_murid` int DEFAULT NULL,
  `ditujukan` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_surat` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perihal` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `template` text COLLATE utf8mb4_unicode_ci,
  `tanggal` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table absensi_sekolah_v.3.sanksi_pelanggaran: ~1 rows (approximately)
INSERT INTO `sanksi_pelanggaran` (`id`, `pegawai_id`, `user_id`, `wali_murid`, `ditujukan`, `kode_surat`, `perihal`, `keterangan`, `template`, `tanggal`, `time`) VALUES
	(2, 12, 1, 6, 'Wali Murid', '01/SP/KS/XII/2025', 'Peringatan Pertama', '- Terbukti melakukan kejahatan', 'Dengan hormat,\r\nDengan ini kami sampaikan kepada Bapak/Ibu/Wali dari :\r\n\r\nNama  : {{nama_siswa}}\r\nKelas    : {{kelas}}\r\n\r\nSehubungan dengan sikap tidak disiplin dan pelanggaran terhadap tata tertib sekolah yang Siswa lakukan, maka dengan ini pihak sekolah memberikan surat peringatan {{peringatan}}. Bahwa siswa/siswi tersebut telah melakukan pelanggaran tata tertib berupa\r\n\r\n{{daftar_pelanggaran}}\r\n\r\nDengan surat peringatan ini diharapkan agar kiranya Bapak/Ibu/Wali lebih mengawasi kegiatan siswa baik dari segi sikap individu, sosial dan spiritual. Agar dikemudian hari siswa tidak mengulangi kesalahan yang sama dan atau kesalahan lainnya, sehingga tercipta perilaku siswa yang lebih baik.\r\n\r\nDemikian surat ini kami sampaikan, atas perhatiaanya saya ucapkan terimakasih.', '2025-12-11', '21:51:12');

-- Dumping structure for table absensi_sekolah_v.3.template_surat
DROP TABLE IF EXISTS `template_surat`;
CREATE TABLE IF NOT EXISTS `template_surat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` text COLLATE utf8mb4_unicode_ci,
  `tipe` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table absensi_sekolah_v.3.template_surat: ~0 rows (approximately)
INSERT INTO `template_surat` (`id`, `kode`, `template`, `tipe`, `date`) VALUES
	(2, 'SP', 'Dengan hormat,\r\nDengan ini kami sampaikan kepada Bapak/Ibu/Wali dari :\r\n\r\nNama  : {{nama_siswa}}\r\nKelas    : {{kelas}}\r\n\r\nSehubungan dengan sikap tidak disiplin dan pelanggaran terhadap tata tertib sekolah yang Siswa lakukan, maka dengan ini pihak sekolah memberikan surat peringatan {{peringatan}}. Bahwa siswa/siswi tersebut telah melakukan pelanggaran tata tertib berupa\r\n\r\n{{daftar_pelanggaran}}\r\n\r\nDengan surat peringatan ini diharapkan agar kiranya Bapak/Ibu/Wali lebih mengawasi kegiatan siswa baik dari segi sikap individu, sosial dan spiritual. Agar dikemudian hari siswa tidak mengulangi kesalahan yang sama dan atau kesalahan lainnya, sehingga tercipta perilaku siswa yang lebih baik.\r\n\r\nDemikian surat ini kami sampaikan, atas perhatiaanya saya ucapkan terimakasih.', 'pelanggaran', '2025-12-11');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
