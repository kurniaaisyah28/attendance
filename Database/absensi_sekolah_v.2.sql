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


-- Dumping structure for table absensi_sekolah_v.3.absen
DROP TABLE IF EXISTS `absen`;
CREATE TABLE IF NOT EXISTS `absen` (
  `absen_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `tanggal` date NOT NULL,
  `lokasi_id` int DEFAULT NULL,
  `jam_masuk` varchar(50) DEFAULT NULL,
  `jam_toleransi` varchar(50) DEFAULT NULL,
  `jam_pulang` varchar(50) DEFAULT NULL,
  `absen_in` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `absen_out` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto_in` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto_out` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_masuk` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_pulang` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_in` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_out` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kehadiran` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `radius` varchar(20) DEFAULT NULL,
  `radius_out` varchar(20) DEFAULT NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`absen_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table absensi_sekolah_v.3.absen: ~0 rows (approximately)
INSERT INTO `absen` (`absen_id`, `user_id`, `tanggal`, `lokasi_id`, `jam_masuk`, `jam_toleransi`, `jam_pulang`, `absen_in`, `absen_out`, `foto_in`, `foto_out`, `status_masuk`, `status_pulang`, `map_in`, `map_out`, `kehadiran`, `radius`, `radius_out`, `keterangan`) VALUES
	(1, 1, '2025-11-18', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Izin', 'Izin', NULL, NULL, 'Izin', NULL, NULL, 'asdasd');

-- Dumping structure for table absensi_sekolah_v.3.absen_ekbm
DROP TABLE IF EXISTS `absen_ekbm`;
CREATE TABLE IF NOT EXISTS `absen_ekbm` (
  `absen_id` int NOT NULL AUTO_INCREMENT,
  `jadwal_id` int NOT NULL DEFAULT '0',
  `pegawai` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `kelas` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pelajaran` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `keterangan` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`absen_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table absensi_sekolah_v.3.absen_ekbm: ~0 rows (approximately)

-- Dumping structure for table absensi_sekolah_v.3.absen_pegawai
DROP TABLE IF EXISTS `absen_pegawai`;
CREATE TABLE IF NOT EXISTS `absen_pegawai` (
  `absen_id` int NOT NULL AUTO_INCREMENT,
  `pegawai_id` int NOT NULL DEFAULT '0',
  `tanggal` date NOT NULL,
  `lokasi_id` int DEFAULT NULL,
  `jam_masuk` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jam_toleransi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jam_pulang` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `absen_in` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `absen_out` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto_in` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto_out` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_masuk` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_pulang` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_in` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_out` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kehadiran` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `radius` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `radius_out` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`absen_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table absensi_sekolah_v.3.absen_pegawai: ~1 rows (approximately)

-- Dumping structure for table absensi_sekolah_v.3.admin
DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `fullname` varchar(40) NOT NULL,
  `username` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `avatar` varchar(150) NOT NULL,
  `registrasi_date` date NOT NULL,
  `tanggal_login` datetime NOT NULL,
  `time` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL,
  `level` int NOT NULL,
  `ip` varchar(40) NOT NULL,
  `browser` varchar(40) NOT NULL,
  `active` varchar(2) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table absensi_sekolah_v.3.admin: ~3 rows (approximately)
INSERT INTO `admin` (`admin_id`, `fullname`, `username`, `phone`, `email`, `password`, `avatar`, `registrasi_date`, `tanggal_login`, `time`, `status`, `level`, `ip`, `browser`, `active`) VALUES
	(1, 'Coki Widodo', 'Widodo', '089666665781', 'swidodo.com@gmail.com', '$2y$10$iUZpF3UFbPjH4U/zErn5I.mixtbptmapoRYp6tIi69MqTVqaNirRy', 'avatar-Widodo-1670038763.jpg', '2022-03-22', '2025-11-18 17:06:11', '1763460371', 'Online', 1, '1', 'Google Crome', 'Y'),
	(6, 'Intan Permata sari', 'Intan', '089666665781', 'intanpermatasari@gmail.com', '$2y$10$lIKR1cqN8kNusBU45zqvAuINgD.g9X3/2rDBC6qvjT4oejy1jP53S', 'avatar.jpg', '2022-12-01', '2022-12-03 10:22:26', '1670047459', 'Offline', 1, '::1', 'Google Chrome 107.0.0.0', 'Y'),
	(7, 'Intan', 'Intan', '083160901108', 'intanwidodo@gmail.com', '$2y$10$qcLhXtELoswkSi.j4xEwFuK76EgZdLLR7aDlOikwJyp16B1y.dKXS', 'avatar.jpg', '2023-07-07', '2023-07-07 05:08:01', '1688699281', 'Offline', 3, '::1', 'Google Chrome 114.0.0.0', 'Y');

-- Dumping structure for table absensi_sekolah_v.3.artikel
DROP TABLE IF EXISTS `artikel`;
CREATE TABLE IF NOT EXISTS `artikel` (
  `artikel_id` int NOT NULL AUTO_INCREMENT,
  `penerbit` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` time NOT NULL,
  `date` date NOT NULL,
  `statistik` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`artikel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table absensi_sekolah_v.3.artikel: ~4 rows (approximately)
INSERT INTO `artikel` (`artikel_id`, `penerbit`, `judul`, `domain`, `deskripsi`, `foto`, `kategori`, `time`, `date`, `statistik`, `active`) VALUES
	(2, 'Widodo', 'Aplikasi Absensi Siswa Dengan Notifikasi ke Orang Tua Berbasis Web', 'aplikasi-absensi-siswa-dengan-notifikasi-ke-orang-tua-berbasis-web', '<p><span class="yt-core-attributed-string--link-inherit-color" dir="auto">Halo, Bapak/Ibu Guru dan Sobat Pendidikan! 📢 Pernah repot dengan absensi manual yang memakan waktu? Kini saatnya beralih ke AbsenSiswa! ✅ Solusi absensi digital yang cepat, akurat, dan anti-kecurangan. Pantau kehadiran siswa secara real-time dengan mudah! 🚀📊 Yuk, kenali fitur lengkapnya sekarang! </span><span class="yt-core-attributed-string--link-inherit-color" dir="auto"><a class="yt-core-attributed-string__link yt-core-attributed-string__link--call-to-action-color" tabindex="0" href="https://www.youtube.com/hashtag/absensiswa" target="">#AbsenSiswa</a></span> <span class="yt-core-attributed-string--link-inherit-color" dir="auto"><a class="yt-core-attributed-string__link yt-core-attributed-string__link--call-to-action-color" tabindex="0" href="https://www.youtube.com/hashtag/absensidigital" target="">#AbsensiDigital</a></span><span class="yt-core-attributed-string--link-inherit-color" dir="auto">" Untuk Harga dan Pemesanan bisa langsung hub </span><span class="yt-core-attributed-string--link-inherit-color" dir="auto"><a class="yt-core-attributed-string__link yt-core-attributed-string__link--call-to-action-color" tabindex="0" href="https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbnhKOFN2YjVqcEJYOE9aQzZWaTRWWkllYnB1UXxBQ3Jtc0trV1Z0WDJXTVFPRXM5a29qSkdXb1JsQURjNE9STDVleHVZQU16cjZCMEZjT0dKZmtWSmV5akZDMDZfSDV1bVNIQTd2RDU3M05TSlBwYU16WEtzVGp6cU9RTXMteHRUcy13TDE3eVlwRzc2UmZQbEYwaw&amp;q=https%3A%2F%2Fwa.me%2F62083160901108&amp;v=IFpfp62F9_Y" target="_blank" rel="nofollow noopener">https://wa.me/62083160901108</a></span></p>\r\n<p><span class="yt-core-attributed-string--link-inherit-color" dir="auto"><iframe title="YouTube video player" src="//www.youtube.com/embed/IFpfp62F9_Y?si=8FvO1EbsfZVwP4pI" width="560" height="315" frameborder="0" allowfullscreen="allowfullscreen"></iframe></span></p>', 'file_685c28e93a19d9.58068809.jpg', 'berita', '16:53:10', '2022-11-29', '12', 'Y'),
	(3, 'Widodo', 'Aplikasi Absensi V.5 Absen dengan Selfie Recognition &amp; QRCODE Radius', 'aplikasi-absensi-v5-absen-dengan-selfie-recognition-amp-qrcode-radius', '<div class="more_lessx">\r\n<p>Aplikasi Absensi Online Berbasis Foto Selfie Recognition dan QRCODE. Website ini dibangun menggunakan framework bootstrap dan PHP (MYSQLi). Sekilas cara kerjanya dengan merekam absen menggunakan verifikasi foto selfie recognition dan QRCODE, serta mendetek lokasi pengguna saat mengisi absensi online. Pengguna hanya boleh melakukan absen masuk dan absen pulang 1 kali perhari di jam kerja nya.</p>\r\n<ins class="adsbygoogle" data-ad-layout="in-article" data-ad-format="fluid" data-ad-client="ca-pub-9864620178233492" data-ad-slot="8776392112" data-adsbygoogle-status="done" data-ad-status="unfilled"></ins>\r\n<p>Di versi ke 5 ini Foto Selfienya sudah menggunakan Recognition dan&nbsp; Menggunakan QRCODE sebagai pengganti jadi ada 2 pilihan Tipe Absenya.</p>\r\n<p>- FREE Biaya Ongkos Kirim<br>- Dapat Source Kode dan Databasenya<br>- Lisensi Dijamin ORIGINAL Garansi Uang Kembali 100%<br>- BARANG SELALU READY<br>- TANPA ONGKOS KIRIM<br>- PRODUK ORIGINAL 100%</p>\r\n<p><br><strong>FITUR UNGGULAN</strong></p>\r\n<ol>\r\n<li>Absensi dengan foto wajah sudah menggunakan Recognition</li>\r\n<li>Absen Menggunakan QRCODE untuk pilihan ke 2</li>\r\n<li>Lokasi Radiusnya bias di aktifinkan dan non aktifkan</li>\r\n<li>Terdapat Api Notifikasi WhatsApp</li>\r\n<li>Absen masuk &amp; absen pulang</li>\r\n<li>Deteksi lokasi pengguna (geolocation)</li>\r\n<li>Laporan Absensi Lengkap</li>\r\n<li>Manajemen jam</li>\r\n<li>Fitur login dengan akun google</li>\r\n<li>Pengajuan Cuti</li>\r\n<li>Hadir, Izin, Sakit</li>\r\n<li>Terdapat Slider foto/untuk promo</li>\r\n<li>Terdapat Artikel/Informasi</li>\r\n<li>Terdapat Live Chat ke Admin</li>\r\n</ol>\r\n<p><br><strong>FITUR UMUM</strong><br>- Landing page &amp; web responsive<br>- Mudah di gunakan dan aplikasi ringan<br>- Rekap laporan berdasarkan bulan, Tanggal dan Hari<br>- Laporan absen dalam PDF, Excel dan Print<br>- Fitur print laporan langsung ke printer</p>\r\n<p>- Kelebihan Script / Source Code :<br>- Bersifat selamanya tanpa batas waktu<br>- Panduan Instalasi Lengkap<br>- Installasi Sangat Mudah<br>- Tidak akan di Banned<br>- Bisa Offline maupun Online<br>- Tidak boleh dijual kembali<br>- Tampilan Bisa di edit atau di custom sesuai yang dibutuhkan<br>- Konsultasi Free<br><br></p>\r\n<p><strong>DEMO APLIKASI</strong></p>\r\n<p><strong>Pegawai/User:</strong><br>- Url : https://absensiv5.s-widodo.com<br>- Email : swidodo.com@gmail.com<br>- Password : 123456</p>\r\n<p><strong>Admin</strong><br>-&nbsp;<a href="https://absensiv5.s-widodo.com/sw-admin">https://absensiv5.s-widodo.com/sw-admin</a><br>- User : Widodo<br>- Password : 123456</p>\r\n<p><br><br><strong>UPDATE ICON TIDAK TAMPIL SILAHKAN DOWNLOAD LINK DIBAWAH INI</strong></p>\r\n<p><a title="DOWNLOAD" href="https://drive.google.com/file/d/1PNxh960XAf2j7Dkdm2yRB6q6hMK6FW7J/view?usp=drive_link" target="_blank" rel="noopener"><strong>Download</strong></a></p>\r\n<p><strong>*Bagi yang sudah order</strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong>*PRODUK ORIGINAL DIBUAT OLEH S-WIDODO.COM</strong></p>\r\n</div>', 'file_685c28bbef8856.56859555.jpg', 'berita', '10:41:55', '2022-11-30', '55', 'Y'),
	(4, 'Coki Widodo', 'Aplikasi Absensi Siswa Dengan Scan Qrcode/Barcode V.1', 'aplikasi-absensi-siswa-dengan-scan-qrcodebarcode-v1', '<p><a class="google-anno" href="https://s-widodo.com/product/19-aplikasi-absensi-siswa-dengan-scan-qrcodebarcode-v1.html#" data-google-vignette="false" data-google-interstitial="false">&nbsp;<span class="google-anno-t">Aplikasi</span></a>&nbsp;ini merecord absensi menggunakan QR CODE yang bisa di download oleh siswa beserta ID CARDnya. sudah support di Semua HP, Laptop dan bisa pakai Mesin&nbsp;<a class="google-anno" href="https://s-widodo.com/product/19-aplikasi-absensi-siswa-dengan-scan-qrcodebarcode-v1.html#" data-google-vignette="false" data-google-interstitial="false">&nbsp;<span class="google-anno-t">scanner</span></a><br>.<br><br><strong>*SEMUA PRODUK FULL SOURCE CODE YA BISA LANGSUNG DIGUNAKAN</strong><br><br></p>\r\n<ul>\r\n<li><span data-preserver-spaces="true">Dapat Source Kode dan Databasenya</span></li>\r\n<li><span data-preserver-spaces="true">Lisensi Dijamin ORIGINAL Garansi Uang Kembali 100%</span></li>\r\n<li><span data-preserver-spaces="true">BARANG SELALU READY</span></li>\r\n<li><span data-preserver-spaces="true">PRODUK ORIGINAL 100%</span></li>\r\n</ul>\r\n<p><strong>FITUR UNGGULA</strong></p>\r\n<ul>\r\n<li><span data-preserver-spaces="true">Tampilan Sudah Respoonsive</span></li>\r\n<li><span data-preserver-spaces="true">Absen Scan qrcode menggunakan Hp, Laptop atau Mesin Scanner</span></li>\r\n<li><span data-preserver-spaces="true">Mudah di Operasikan</span></li>\r\n<li><span data-preserver-spaces="true">Terdapat ID Card yang bisa diubah Oleh siswa maupun Admin</span></li>\r\n<li><span data-preserver-spaces="true">Terdapat Geo Location Absen masuk mencatat lokasi titik absen</span></li>\r\n<li><span data-preserver-spaces="true">Memiliki Fitur Login Google</span></li>\r\n<li><span data-preserver-spaces="true">Memiiliki Fitur Notifikasi WhatsApp ke Wali Murid/Siswa</span></li>\r\n<li><span data-preserver-spaces="true">Laporan Lengkap per hari, siswa maupun bulan dengan output PDF, EXCEL dan PRINT</span></li>\r\n<li><span data-preserver-spaces="true">Memiliki Fitur Izin dengan Approve Guru atau Admin</span></li>\r\n<li><span data-preserver-spaces="true">Support PHP Versi 7.4</span></li>\r\n<li><span data-preserver-spaces="true">Memiliki Radius Lokasi</span></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<div id="aswift_1_host"><iframe id="aswift_1" tabindex="0" title="Advertisement" src="https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-9864620178233492&amp;output=html&amp;h=183&amp;slotname=8776392112&amp;adk=1194630350&amp;adf=2803266164&amp;pi=t.ma~as.8776392112&amp;w=730&amp;abgtt=6&amp;fwrn=4&amp;lmt=1742000165&amp;rafmt=11&amp;format=730x183&amp;url=https%3A%2F%2Fs-widodo.com%2Fproduct%2F19-aplikasi-absensi-siswa-dengan-scan-qrcodebarcode-v1.html&amp;wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTkuMC4wIiwieDg2IiwiIiwiMTM0LjAuNjk5OC44OSIsbnVsbCwwLG51bGwsIjY0IixbWyJDaHJvbWl1bSIsIjEzNC4wLjY5OTguODkiXSxbIk5vdDpBLUJyYW5kIiwiMjQuMC4wLjAiXSxbIkdvb2dsZSBDaHJvbWUiLCIxMzQuMC42OTk4Ljg5Il1dLDBd&amp;dt=1742000165348&amp;bpp=1&amp;bdt=403&amp;idt=115&amp;shv=r20250312&amp;mjsv=m202503130101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Df224fe6f6d255e66%3AT%3D1730436363%3ART%3D1742000160%3AS%3DALNI_MYYMEXP2UdT586N_zS4X_sU7Xc1uA&amp;gpic=UID%3D00000f49832daf32%3AT%3D1730436363%3ART%3D1742000160%3AS%3DALNI_MYSp3REtreyD8M0nBXOjCeHduaFYw&amp;eo_id_str=ID%3Daf23020dfda5e9bc%3AT%3D1730436363%3ART%3D1742000160%3AS%3DAA-AfjZxApCm2sA4vbeTJeiOqK1L&amp;prev_fmts=0x0&amp;nras=1&amp;correlator=5183522587339&amp;frm=20&amp;pv=1&amp;rplot=4&amp;u_tz=420&amp;u_his=3&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1032&amp;u_aw=1920&amp;u_cd=24&amp;u_sd=1&amp;dmc=8&amp;adx=400&amp;ady=1958&amp;biw=1910&amp;bih=911&amp;scr_x=0&amp;scr_y=0&amp;eid=31089628%2C31091052%2C95332590%2C95354310%2C95354338%2C95354598%2C31091039%2C31088250%2C31090357%2C95352178&amp;oid=2&amp;pvsid=4476553562543792&amp;tmod=1486444475&amp;uas=0&amp;nvt=1&amp;ref=https%3A%2F%2Fs-widodo.com%2Fproduct&amp;fc=1920&amp;brdim=0%2C0%2C0%2C0%2C1920%2C0%2C1920%2C1032%2C1920%2C911&amp;vis=1&amp;rsz=%7C%7CpoeEbr%7C&amp;abl=CS&amp;pfx=0&amp;fu=128&amp;bc=31&amp;bz=1&amp;td=1&amp;tdf=2&amp;psd=W251bGwsbnVsbCxudWxsLDNd&amp;nt=1&amp;ifi=2&amp;uci=a!2&amp;btvi=1&amp;fsb=1&amp;dtd=124" name="aswift_1" width="730" height="0" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" data-google-container-id="a!2" aria-label="Advertisement" data-google-query-id="CJCbnajwiowDFfBynQkdWq4Oww" data-load-complete="true"></iframe></div>\r\n<p>&nbsp;</p>\r\n<p><br><br>FITUR UMUM</p>\r\n<ul>\r\n<li><span data-preserver-spaces="true">Landing page &amp; web responsive</span></li>\r\n<li><span data-preserver-spaces="true">Mudah di gunakan dan aplikasi ringan</span></li>\r\n<li><span data-preserver-spaces="true">Rekap laporan berdasarkan bulan, Tanggal dan Siswa</span></li>\r\n<li><span data-preserver-spaces="true">Laporan absen dalam PDF, EXCEL dan PRINT</span></li>\r\n<li><span data-preserver-spaces="true">Fitur Print laporan langsung ke Printer</span></li>\r\n</ul>\r\n<p><br><br>Kelebihan Script / Source Code :<br>Bersifat selamanya tanpa batas waktu<br>Panduan Instalasi Lengkap<br>Installasi Sangat Mudah<br>Tidak akan di Banned<br>Bisa Offline maupun Online<br>Tidak boleh dijual kembali<br>Tampilan Bisa di edit atau di custom sesuai yang dibutuhkan<br>Konsultasi Free<br><br><br>DEMO APLIKASI<br>https://absensi-sekolah.s-widodo.com/<br>Email : swidodo.com@gmail.com<br>Password : 123456<br><br>ADMIN<br>https://absensi-sekolah.s-widodo.com/sw-admin<br>Username : Widodo<br>Password : 123456</p>', 'file_685c28780a0eb7.19604562.jpg', 'berita', '07:55:33', '2025-06-25', '18', 'Y'),
	(7, 'Coki Widodo', 'Aplikasi PPDB (Pendaftaran Siswa baru) PHP V.8+', 'aplikasi-ppdb-pendaftaran-siswa-baru-php-v8', '<p><a class="google-anno" href="https://s-widodo.com/product/22-aplikasi-ppdb-pendaftaran-siswa-baru-php-v8.html#" data-google-vignette="false" data-google-interstitial="false">&nbsp;<span class="google-anno-t">Aplikasi</span></a>&nbsp;PPDB (Penerimaan Peserta Didik Baru) adalah sebuah sistem digital yang dirancang untuk mempermudah proses pendaftaran siswa baru ke jenjang pendidikan tertentu, mulai dari tingkat SD, SMP, hingga SMA/SMK. Dengan memanfaatkan teknologi informasi,&nbsp;<a class="google-anno" href="https://s-widodo.com/product/22-aplikasi-ppdb-pendaftaran-siswa-baru-php-v8.html#" data-google-vignette="false" data-google-interstitial="false">&nbsp;<span class="google-anno-t">aplikasi</span></a>&nbsp;ini memungkinkan proses seleksi, validasi data, dan pengumuman hasil dilakukan secara online.<br><br></p>\r\n<p class="" data-start="542" data-end="568"><strong data-start="542" data-end="568">Manfaat Aplikasi PPDB:</strong></p>\r\n<ol data-start="570" data-end="1550">\r\n<li class="" data-start="570" data-end="819">\r\n<p class="" data-start="573" data-end="819"><strong data-start="573" data-end="609">Meningkatkan Efisiensi dan Waktu</strong><br>Proses pendaftaran yang sebelumnya harus dilakukan langsung di sekolah kini bisa dilakukan dari rumah, hanya dengan menggunakan komputer atau ponsel. Ini menghemat waktu dan tenaga bagi orang tua dan siswa.</p>\r\n<div class="google-anno-skip google-anno-sc" tabindex="0" role="link" aria-label="Kursus online terbaik" data-google-vignette="false" data-google-interstitial="false">Kursus online terbaik</div>\r\n<p>&nbsp;</p>\r\n</li>\r\n<li class="" data-start="821" data-end="1020">\r\n<p class="" data-start="824" data-end="1020"><strong data-start="824" data-end="860">Mengurangi Antrean dan Kerumunan</strong><br>Dengan sistem online, tak perlu lagi datang ke sekolah hanya untuk menyerahkan berkas. Ini sangat berguna terutama saat pandemi atau dalam kondisi terbatas.</p>\r\n</li>\r\n<li class="" data-start="1022" data-end="1218">\r\n<p class="" data-start="1025" data-end="1218"><strong data-start="1025" data-end="1056">Transparansi Proses Seleksi</strong><br>Aplikasi PPDB sering dilengkapi dengan sistem penilaian otomatis dan publikasi hasil secara real-time. Ini mengurangi potensi kecurangan atau manipulasi data.</p>\r\n</li>\r\n</ol>\r\n<h4 data-start="1609" data-end="1847">FITUR UNGGULAN</h4>\r\n<p data-start="1609" data-end="1847">✅Formulir Data diri lengkap<br>✅ Formulir Nilai (Fleksibel Bisa di aktifkan dan Nonaktifkan)<br>✅ Upload Berkas (Fleksibel Bisa di aktifkan dan Nonaktifkan)<br>✅ Pembayaran Payment Gateway (Fleksibel Bisa di aktifkan dan Nonaktifkan)<br>✅ Registrasi Ulang (Fleksibel Bisa di aktifkan dan Nonaktifkan)<br>✅ Login dengan Google<br>✅ Memiliki Notifikasi WhatsApp (jika di aktifkan)<br>✅ Laporan Lengkap.<br>✅ Tampilan Responsive<br>✅ Support Php Versi 8+</p>\r\n<p><iframe src="https://www.youtube.com/embed/mabbQ7ZSTv4?si=beLZyfLCQawRgAjJ" width="560" height="314" allowfullscreen="allowfullscreen"></iframe></p>', 'file_685c29475c27d0.48182116.jpg', 'berita', '23:51:09', '2025-06-25', '8', 'Y');

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

-- Dumping structure for table absensi_sekolah_v.3.chat
DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `chat_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `pegawai_id` int NOT NULL DEFAULT '0',
  `pesan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `files` varchar(100) DEFAULT NULL,
  `ukuran` varchar(20) DEFAULT NULL,
  `datetime` datetime NOT NULL,
  `tujuan` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_user` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_pegawai` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`chat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table absensi_sekolah_v.3.chat: ~0 rows (approximately)

-- Dumping structure for table absensi_sekolah_v.3.chat_list
DROP TABLE IF EXISTS `chat_list`;
CREATE TABLE IF NOT EXISTS `chat_list` (
  `chat_list_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `pegawai_id` int DEFAULT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`chat_list_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table absensi_sekolah_v.3.chat_list: ~1 rows (approximately)

-- Dumping structure for table absensi_sekolah_v.3.izin
DROP TABLE IF EXISTS `izin`;
CREATE TABLE IF NOT EXISTS `izin` (
  `izin_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `nama_lengkap` varchar(80) DEFAULT NULL,
  `tanggal` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `files` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alasan` varchar(20) DEFAULT NULL,
  `keterangan` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` time NOT NULL,
  `date` date NOT NULL,
  `status` enum('PENDING','Y','N') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  PRIMARY KEY (`izin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table absensi_sekolah_v.3.izin: ~0 rows (approximately)
INSERT INTO `izin` (`izin_id`, `user_id`, `nama_lengkap`, `tanggal`, `tanggal_selesai`, `files`, `alasan`, `keterangan`, `time`, `date`, `status`) VALUES
	(1, 1, 'Siswa Widodo', '2025-11-18', '2025-11-18', 'izin_691c1349cac038.74153482.jpg', 'Izin', 'asdasd', '13:33:45', '2025-11-18', 'Y');

-- Dumping structure for table absensi_sekolah_v.3.izin_pegawai
DROP TABLE IF EXISTS `izin_pegawai`;
CREATE TABLE IF NOT EXISTS `izin_pegawai` (
  `izin_id` int NOT NULL AUTO_INCREMENT,
  `pegawai_id` int NOT NULL DEFAULT '0',
  `nama_lengkap` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `files` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alasan` varchar(50) DEFAULT NULL,
  `keterangan` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` time NOT NULL,
  `date` date NOT NULL,
  `status` enum('PENDING','Y','N') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  PRIMARY KEY (`izin_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table absensi_sekolah_v.3.izin_pegawai: ~0 rows (approximately)

-- Dumping structure for table absensi_sekolah_v.3.jadwal_mengajar
DROP TABLE IF EXISTS `jadwal_mengajar`;
CREATE TABLE IF NOT EXISTS `jadwal_mengajar` (
  `jadwal_id` int NOT NULL AUTO_INCREMENT,
  `hari` varchar(50) DEFAULT NULL,
  `pegawai` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `mata_pelajaran` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `tingkat` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `kelas` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `dari_jam` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `sampai_jam` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`jadwal_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table absensi_sekolah_v.3.jadwal_mengajar: ~6 rows (approximately)
INSERT INTO `jadwal_mengajar` (`jadwal_id`, `hari`, `pegawai`, `mata_pelajaran`, `tingkat`, `kelas`, `dari_jam`, `sampai_jam`) VALUES
	(4, 'Senin', '12', '3', 'IX', 'IX-A', '07:00', '08:00'),
	(6, 'Selasa', '12', '3', 'IX', 'IX-A', '07:00', '08:00'),
	(7, 'Rabu', '12', '3', 'IX', 'IX-A', '07:30', '09:00'),
	(8, 'Jumat', '12', '3', 'IX', 'IX-A', '07:00', '09:00'),
	(9, 'Kamis', '14', '3', 'IX', 'IX-A', '07:00', '08:00'),
	(10, 'Kamis', '12', '3', 'IX', 'IX-A', '07:00', '08:00');

-- Dumping structure for table absensi_sekolah_v.3.jam_sekolah
DROP TABLE IF EXISTS `jam_sekolah`;
CREATE TABLE IF NOT EXISTS `jam_sekolah` (
  `jam_sekolah_id` int NOT NULL AUTO_INCREMENT,
  `hari` varchar(15) NOT NULL,
  `jam_masuk` time DEFAULT NULL,
  `jam_telat` time DEFAULT NULL,
  `jam_pulang` time DEFAULT NULL,
  `tipe` varchar(10) DEFAULT NULL,
  `active` enum('Y','N') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`jam_sekolah_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table absensi_sekolah_v.3.jam_sekolah: ~21 rows (approximately)
INSERT INTO `jam_sekolah` (`jam_sekolah_id`, `hari`, `jam_masuk`, `jam_telat`, `jam_pulang`, `tipe`, `active`) VALUES
	(1, 'Minggu', '07:30:00', '08:00:00', '12:00:00', 'Siswa', 'N'),
	(2, 'Senin', '07:30:00', '08:00:00', '12:00:00', 'Siswa', 'Y'),
	(3, 'Selasa', '07:30:00', '08:00:00', '13:00:00', 'Siswa', 'Y'),
	(4, 'Rabu', '07:30:00', '08:00:00', '13:00:00', 'Siswa', 'Y'),
	(5, 'Kamis', '07:30:00', '16:00:00', '21:00:00', 'Siswa', 'Y'),
	(6, 'Jumat', '07:30:00', '08:00:00', '12:00:00', 'Siswa', 'Y'),
	(7, 'Sabtu', '05:58:55', '05:58:59', '05:59:00', 'Siswa', 'N'),
	(8, 'Senin', '07:30:00', '08:00:00', '15:00:00', 'guru', 'Y'),
	(9, 'Selasa', '07:30:00', '08:00:00', '15:00:00', 'guru', 'Y'),
	(10, 'Rabu', '07:00:00', '08:00:00', '15:00:00', 'guru', 'Y'),
	(11, 'Kamis', '00:00:00', '00:00:00', '00:00:00', 'guru', 'Y'),
	(12, 'Jumat', '00:00:00', '00:00:00', '00:00:00', 'guru', 'Y'),
	(13, 'Sabtu', '07:00:00', '07:30:00', '13:00:00', 'guru', 'Y'),
	(14, 'Minggu', '00:00:00', '00:00:00', '00:00:00', 'guru', 'N'),
	(15, 'Senin', '00:00:00', '00:00:00', '00:00:00', 'staff', 'Y'),
	(16, 'Selasa', '00:00:00', '00:00:00', '00:00:00', 'staff', 'Y'),
	(17, 'Rabu', '00:00:00', '00:00:00', '00:00:00', 'staff', 'Y'),
	(18, 'Kamis', '00:00:00', '00:00:00', '00:00:00', 'staff', 'Y'),
	(19, 'Jumat', '00:00:00', '00:00:00', '00:00:00', 'staff', 'Y'),
	(20, 'Sabtu', '00:00:00', '00:00:00', '00:00:00', 'staff', 'Y'),
	(21, 'Minggu', '00:00:00', '00:00:00', '00:00:00', 'staff', 'N');

-- Dumping structure for table absensi_sekolah_v.3.kartu_nama
DROP TABLE IF EXISTS `kartu_nama`;
CREATE TABLE IF NOT EXISTS `kartu_nama` (
  `kartu_id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipe` varchar(10) DEFAULT NULL,
  `active` enum('Y','N') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`kartu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table absensi_sekolah_v.3.kartu_nama: ~0 rows (approximately)
INSERT INTO `kartu_nama` (`kartu_id`, `nama`, `foto`, `tipe`, `active`) VALUES
	(2, 'Template 1', 'file_68c13a41ae59c9.05901307.png', 'P', 'Y');

-- Dumping structure for table absensi_sekolah_v.3.kategori
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE IF NOT EXISTS `kategori` (
  `kategori_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seotitle` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`kategori_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table absensi_sekolah_v.3.kategori: ~2 rows (approximately)
INSERT INTO `kategori` (`kategori_id`, `title`, `seotitle`) VALUES
	(1, 'Pengumuman', 'pengumuman'),
	(15, 'Berita', 'berita');

-- Dumping structure for table absensi_sekolah_v.3.kategori_pelanggaran
DROP TABLE IF EXISTS `kategori_pelanggaran`;
CREATE TABLE IF NOT EXISTS `kategori_pelanggaran` (
  `kategori_pelanggaran_id` int NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`kategori_pelanggaran_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table absensi_sekolah_v.3.kategori_pelanggaran: ~0 rows (approximately)
INSERT INTO `kategori_pelanggaran` (`kategori_pelanggaran_id`, `nama_kategori`) VALUES
	(1, 'KEJAHATAN'),
	(2, 'KERAJINAN'),
	(3, 'KERAPIAN'),
	(4, 'KESOPANAN');

-- Dumping structure for table absensi_sekolah_v.3.kelas
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE IF NOT EXISTS `kelas` (
  `kelas_id` int NOT NULL AUTO_INCREMENT,
  `parent_id` varchar(10) NOT NULL DEFAULT '0',
  `nama_kelas` varchar(40) NOT NULL,
  PRIMARY KEY (`kelas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table absensi_sekolah_v.3.kelas: ~7 rows (approximately)
INSERT INTO `kelas` (`kelas_id`, `parent_id`, `nama_kelas`) VALUES
	(1, '0', 'VII'),
	(2, '0', 'VIII'),
	(3, '0', 'IX'),
	(7, '3', 'IX-A'),
	(8, '3', 'IX-B'),
	(9, '3', 'IX-C'),
	(12, '3', 'IX-D');

-- Dumping structure for table absensi_sekolah_v.3.lain_lain
DROP TABLE IF EXISTS `lain_lain`;
CREATE TABLE IF NOT EXISTS `lain_lain` (
  `lain_lain_id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(40) NOT NULL,
  `tipe` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lain_lain_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table absensi_sekolah_v.3.lain_lain: ~8 rows (approximately)
INSERT INTO `lain_lain` (`lain_lain_id`, `nama`, `tipe`) VALUES
	(1, 'Asia/Jakarta', 'timezone'),
	(2, 'Asia/Makassar', 'timezone'),
	(3, 'Asia/Jayapura', 'timezone'),
	(4, 'Siswa', 'waktu'),
	(5, 'Guru', 'Waktu'),
	(6, 'TU', 'waktu'),
	(7, 'Izin', 'izin'),
	(8, 'Sakit', 'izin');

-- Dumping structure for table absensi_sekolah_v.3.level
DROP TABLE IF EXISTS `level`;
CREATE TABLE IF NOT EXISTS `level` (
  `level_id` int NOT NULL AUTO_INCREMENT,
  `level_nama` varchar(20) NOT NULL,
  PRIMARY KEY (`level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table absensi_sekolah_v.3.level: ~3 rows (approximately)
INSERT INTO `level` (`level_id`, `level_nama`) VALUES
	(1, 'Superadmin'),
	(2, 'User'),
	(3, 'Guru');

-- Dumping structure for table absensi_sekolah_v.3.libur
DROP TABLE IF EXISTS `libur`;
CREATE TABLE IF NOT EXISTS `libur` (
  `libur_id` int NOT NULL AUTO_INCREMENT,
  `libur_hari` varchar(20) NOT NULL,
  `active` varchar(5) NOT NULL,
  PRIMARY KEY (`libur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table absensi_sekolah_v.3.libur: ~3 rows (approximately)
INSERT INTO `libur` (`libur_id`, `libur_hari`, `active`) VALUES
	(1, 'Sabtu', 'N'),
	(2, 'Minggu', 'N'),
	(3, 'Jumat', 'Y');

-- Dumping structure for table absensi_sekolah_v.3.libur_nasional
DROP TABLE IF EXISTS `libur_nasional`;
CREATE TABLE IF NOT EXISTS `libur_nasional` (
  `libur_nasional_id` int NOT NULL AUTO_INCREMENT,
  `libur_tanggal` date NOT NULL,
  `keterangan` varchar(60) NOT NULL,
  PRIMARY KEY (`libur_nasional_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table absensi_sekolah_v.3.libur_nasional: ~2 rows (approximately)
INSERT INTO `libur_nasional` (`libur_nasional_id`, `libur_tanggal`, `keterangan`) VALUES
	(1, '2023-08-17', 'Hari Kemerdakaan Indonesia'),
	(7, '2023-11-30', 'Hari Guru');

-- Dumping structure for table absensi_sekolah_v.3.lokasi
DROP TABLE IF EXISTS `lokasi`;
CREATE TABLE IF NOT EXISTS `lokasi` (
  `lokasi_id` int NOT NULL AUTO_INCREMENT,
  `lokasi_nama` varchar(30) NOT NULL,
  `lokasi_alamat` text NOT NULL,
  `lokasi_latitude` varchar(100) NOT NULL,
  `lokasi_longitude` varchar(100) NOT NULL,
  `lokasi_radius` varchar(20) NOT NULL,
  `lokasi_qrcode` varchar(100) NOT NULL,
  `lokasi_tanggal` date NOT NULL,
  `lokasi_jam_mulai` time NOT NULL,
  `lokasi_jam_selesai` time NOT NULL,
  `lokasi_status` varchar(2) NOT NULL,
  PRIMARY KEY (`lokasi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table absensi_sekolah_v.3.lokasi: ~0 rows (approximately)
INSERT INTO `lokasi` (`lokasi_id`, `lokasi_nama`, `lokasi_alamat`, `lokasi_latitude`, `lokasi_longitude`, `lokasi_radius`, `lokasi_qrcode`, `lokasi_tanggal`, `lokasi_jam_mulai`, `lokasi_jam_selesai`, `lokasi_status`) VALUES
	(2, 'S-widodo.com', 'Jl. Rizai kedaton bandar lampung', '-5.371990', '105.271356', '4000', '7FFB1668764933', '2022-11-18', '16:48:53', '16:48:53', 'N');

-- Dumping structure for table absensi_sekolah_v.3.mata_pelajaran
DROP TABLE IF EXISTS `mata_pelajaran`;
CREATE TABLE IF NOT EXISTS `mata_pelajaran` (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode` varchar(50) DEFAULT NULL,
  `nama_mapel` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table absensi_sekolah_v.3.mata_pelajaran: ~12 rows (approximately)
INSERT INTO `mata_pelajaran` (`id`, `kode`, `nama_mapel`) VALUES
	(1, 'PABP', 'Penddidikan Agama dan Budi Pekerti'),
	(2, 'PPKn', 'Pendidikan Pancasila dan Kewarganegaraan'),
	(3, 'BINDO', 'Bahasa Indonesia'),
	(4, 'MTK', 'Matematika'),
	(5, 'IPA', 'Ilmu Pengetahuan Alam'),
	(6, 'IPS', 'Ilmu Pengetahuan Sosial'),
	(7, 'BING', 'Bahasa Inggris'),
	(8, 'PJOK', 'Pendidikan Jasmani Olahraga dan Kesehatan'),
	(9, 'INFO', 'Informatika'),
	(10, 'PRK', 'Prakarya'),
	(11, 'BSUND', 'Bahasa Sunda'),
	(12, 'TIK', 'Tekhnologi Indormasi dan Komunikasi');

-- Dumping structure for table absensi_sekolah_v.3.modul
DROP TABLE IF EXISTS `modul`;
CREATE TABLE IF NOT EXISTS `modul` (
  `modul_id` int NOT NULL AUTO_INCREMENT,
  `modul_nama` varchar(45) NOT NULL,
  PRIMARY KEY (`modul_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table absensi_sekolah_v.3.modul: ~23 rows (approximately)
INSERT INTO `modul` (`modul_id`, `modul_nama`) VALUES
	(1, 'Siswa'),
	(2, 'Wali Murid'),
	(3, 'Kelas'),
	(4, 'Artikel'),
	(5, 'Lokasi'),
	(6, 'Jam Sekolah'),
	(7, 'Tahun ajaran'),
	(8, 'Libur'),
	(9, 'Izin'),
	(10, 'Laporan'),
	(11, 'Pengarutan Web'),
	(13, 'Admin'),
	(14, 'Hak Akses'),
	(15, 'Master Data'),
	(16, 'ID CARD'),
	(17, 'Alumni'),
	(18, 'Pegawai'),
	(19, 'Users'),
	(20, 'Mata Pelajaran'),
	(21, 'E-KBM'),
	(22, 'Jadwal Mengajar'),
	(23, 'Slider'),
	(24, 'Absen Manual'),
	(25, 'Pelanggaran');

-- Dumping structure for table absensi_sekolah_v.3.notifikasi
DROP TABLE IF EXISTS `notifikasi`;
CREATE TABLE IF NOT EXISTS `notifikasi` (
  `notifikasi_id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pegawai_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `datetime` datetime NOT NULL,
  `tipe` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tujuan` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`notifikasi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table absensi_sekolah_v.3.notifikasi: ~0 rows (approximately)
INSERT INTO `notifikasi` (`notifikasi_id`, `user_id`, `pegawai_id`, `nama`, `keterangan`, `link`, `tanggal`, `datetime`, `tipe`, `tujuan`, `status`) VALUES
	(1, '1', '12', 'Siswa Widodo', 'Baru saja megajukan izin', 'izin', '2025-11-18', '2025-11-18 13:33:45', 'siswa', 'pegawai', 'N'),
	(2, '1', NULL, 'Siswa Widodo', 'Permohonan Izin Anda disetujui', 'izin', '2025-11-18', '2025-11-18 13:33:57', 'siswa', 'siswa', 'N');

-- Dumping structure for table absensi_sekolah_v.3.pegawai
DROP TABLE IF EXISTS `pegawai`;
CREATE TABLE IF NOT EXISTS `pegawai` (
  `pegawai_id` int NOT NULL AUTO_INCREMENT,
  `nip` varchar(30) NOT NULL,
  `rfid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qrcode` varchar(50) DEFAULT NULL,
  `nama_lengkap` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat_lahir` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_lahir` varchar(20) DEFAULT NULL,
  `jenis_kelamin` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wali_kelas` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` int NOT NULL DEFAULT '0',
  `telp` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `avatar` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_registrasi` datetime NOT NULL,
  `tanggal_login` datetime NOT NULL,
  `ip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Offline','Online') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Offline',
  `active` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`pegawai_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table absensi_sekolah_v.3.pegawai: ~2 rows (approximately)
INSERT INTO `pegawai` (`pegawai_id`, `nip`, `rfid`, `qrcode`, `nama_lengkap`, `email`, `password`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `jabatan`, `wali_kelas`, `lokasi`, `telp`, `alamat`, `avatar`, `tanggal_registrasi`, `tanggal_login`, `ip`, `browser`, `status`, `active`) VALUES
	(12, '47821646', '', '14E1DA5F33', 'Widodo, S.kom', 'swidodo.com@gmail.com', '$2y$10$G6rGVVzneW8YOT9PsM/TZunNCIN/s7dlIN5nzpGTydyJYJb/zHlCu', 'Kudus', '1990-01-01', 'Laki-laki', 'guru', 'IX-A', 2, '6283160901108', 'Lampung', 'avatar_68ff041bd9d5f5.08016454.jpg', '2025-09-12 00:56:06', '2025-11-17 12:56:29', '127.0.0.1', 'Google Chrome 139.0.0.0', 'Online', 'Y'),
	(14, '123456', NULL, '2222222222', 'Widodo Guru', 'swidodo.com2@gmail.com', '$2y$10$LVFauiZ1AZ0VqbeROgr16.ifzsQ/0nWr9McbRWrxGgGgRtMIQz4xy', NULL, NULL, NULL, 'guru', 'IX-A', 2, NULL, NULL, NULL, '2025-10-13 03:13:10', '2025-10-13 03:13:10', '::1', 'Google Chrome 141.0.0.0', 'Offline', 'Y');

-- Dumping structure for table absensi_sekolah_v.3.pelanggaran
DROP TABLE IF EXISTS `pelanggaran`;
CREATE TABLE IF NOT EXISTS `pelanggaran` (
  `pelanggaran_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `pegawai_id` int DEFAULT '0',
  `kelas` varchar(50) DEFAULT NULL,
  `bentuk_pelanggaran` varchar(100) DEFAULT NULL,
  `bobot` int DEFAULT NULL,
  `tanggal` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`pelanggaran_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table absensi_sekolah_v.3.pelanggaran: ~3 rows (approximately)
INSERT INTO `pelanggaran` (`pelanggaran_id`, `user_id`, `pegawai_id`, `kelas`, `bentuk_pelanggaran`, `bobot`, `tanggal`, `time`) VALUES
	(22, 1, 12, 'IX-A', 'Absensi Telat', 10, '2025-11-18', '01:14:38');

-- Dumping structure for table absensi_sekolah_v.3.role
DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `level_id` int NOT NULL,
  `modul_id` int NOT NULL,
  `lihat` varchar(5) NOT NULL,
  `modifikasi` varchar(5) NOT NULL,
  `hapus` varchar(5) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table absensi_sekolah_v.3.role: ~31 rows (approximately)
INSERT INTO `role` (`role_id`, `level_id`, `modul_id`, `lihat`, `modifikasi`, `hapus`) VALUES
	(2, 1, 2, 'Y', 'Y', 'Y'),
	(5, 1, 5, 'Y', 'Y', 'Y'),
	(11, 1, 11, 'Y', 'Y', 'Y'),
	(13, 1, 13, 'Y', 'Y', 'Y'),
	(14, 1, 14, 'Y', 'Y', 'Y'),
	(16, 2, 2, 'Y', 'Y', 'Y'),
	(19, 2, 5, 'N', 'N', 'N'),
	(25, 2, 11, 'Y', 'N', 'N'),
	(27, 2, 13, 'N', 'N', 'N'),
	(28, 2, 14, 'N', 'N', 'N'),
	(29, 1, 3, 'Y', 'Y', 'Y'),
	(30, 3, 9, 'Y', 'Y', 'Y'),
	(31, 1, 6, 'Y', 'Y', 'Y'),
	(32, 1, 7, 'Y', 'Y', 'Y'),
	(33, 1, 8, 'Y', 'Y', 'Y'),
	(34, 1, 9, 'Y', 'Y', 'Y'),
	(35, 1, 10, 'Y', 'Y', 'Y'),
	(36, 3, 10, 'Y', 'Y', 'Y'),
	(37, 2, 7, 'N', 'N', 'N'),
	(38, 1, 1, 'Y', 'Y', 'Y'),
	(39, 1, 15, 'Y', 'Y', 'Y'),
	(40, 1, 16, 'Y', 'Y', 'Y'),
	(41, 1, 17, 'Y', 'Y', 'Y'),
	(42, 1, 18, 'Y', 'Y', 'Y'),
	(43, 1, 19, 'Y', 'Y', 'Y'),
	(44, 1, 20, 'Y', 'Y', 'Y'),
	(45, 1, 21, 'Y', 'Y', 'Y'),
	(46, 1, 22, 'Y', 'Y', 'Y'),
	(47, 1, 23, 'Y', 'Y', 'Y'),
	(48, 1, 24, 'Y', 'Y', 'Y'),
	(49, 1, 4, 'Y', 'Y', 'Y'),
	(50, 1, 25, 'Y', 'Y', 'Y');

-- Dumping structure for table absensi_sekolah_v.3.setting
DROP TABLE IF EXISTS `setting`;
CREATE TABLE IF NOT EXISTS `setting` (
  `site_id` int NOT NULL AUTO_INCREMENT,
  `site_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_sekolah` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kementrian` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `npsn` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desa` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kecamatan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kabupaten` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `propinsi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kepala_sekolah` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nip_kepala_sekolah` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_phone` char(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `site_owner` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_logo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_favicon` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_kop` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ttd_kepsek` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stempel` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gmail_host` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gmail_username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gmail_password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gmail_port` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gmail_active` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_client_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_client_secret` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_client_active` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipe_absen_siswa` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipe_absen_pegawai` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipe_absen_layar` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_phone` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_token` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_domain` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_tipe` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_template` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `whatsapp_active` enum('Y','N') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table absensi_sekolah_v.3.setting: ~0 rows (approximately)
INSERT INTO `setting` (`site_id`, `site_name`, `nama_sekolah`, `kementrian`, `npsn`, `desa`, `kecamatan`, `kabupaten`, `propinsi`, `kepala_sekolah`, `nip_kepala_sekolah`, `site_phone`, `site_address`, `site_owner`, `site_logo`, `site_favicon`, `site_kop`, `ttd_kepsek`, `stempel`, `site_url`, `site_email`, `gmail_host`, `gmail_username`, `gmail_password`, `gmail_port`, `gmail_active`, `google_client_id`, `google_client_secret`, `google_client_active`, `tipe_absen_siswa`, `tipe_absen_pegawai`, `tipe_absen_layar`, `timezone`, `whatsapp_phone`, `whatsapp_token`, `secret_key`, `whatsapp_domain`, `whatsapp_tipe`, `whatsapp_template`, `whatsapp_active`) VALUES
	(1, 'App. Sekolah V.3', 'SMAN 1 Bandar Lampung', 'KEMDIKBUD', '167513653', 'Tanjungkarang', 'Tanjungkarang Timur', 'Bandar Lampung', 'Lampung', 'S. Widodo, S.com', '38247324664', '083160901108', 'Jl. Jend. Sudirman No.41, Rw. Laut, Kec. Tanjungkarang Timur, Kota Bandar Lampung, Lampung 35213', 'Widodo', '68c5de6649a570.00310931.png', '68c5de7930a584.47887366.png', '68c5df0b040624.10893316.png', NULL, '68d199ed54cd60.64506895.png', 'http://localhost/Absensi-sekolah-V.3', 'swidodo.com@gmail.com', 'smtp.gmail.com', 'swidodo.com@gmail.com', 'cqpveixfqexoqfak', '465', 'N', '482205120603-hf6aqm1mgr29ubsi2qttcrmfhmm2uklb.apps.googleusercontent.com', '7EjMuD8XO88nR-5mtqYhh4Y3', 'Y', 'selfie', 'selfie', 'qrcode-webcame', 'Asia/Jakarta', '6285231843379', 'Dv50Gu50KBD1KduYw5Zr6cz3fOluvZdecShTJqddhx0gHoZgX8ocJdl', 'Am0OtShp', 'https://tegal.wablas.com/api/v2/send-message', 'POST', 'Assalamualaikum wr wb, Bapak/Ibu Kami  dari Perusahaan Menginformasikan bahwa :\r\n\r\nNama: {{nama}}\r\nHari/Tanggal: {{tanggal}}\r\n\r\n=========================\r\nTelah {{tipe}} Sekolah \r\nJam Sekolah : {{jam_sekolah}}\r\nJam Absen : {{jam_absen}}\r\nStatus : {{status}}\r\n=========================\r\nLokasi :  {{lokasi}}\r\n\r\nTerimakasih, Wassalamualaikum wr wb\r\nHormat kami,\r\nS-widodo.com', 'Y');

-- Dumping structure for table absensi_sekolah_v.3.slider
DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `slider_id` int NOT NULL AUTO_INCREMENT,
  `slider_nama` varchar(50) NOT NULL,
  `slider_url` varchar(50) NOT NULL,
  `foto` varchar(150) NOT NULL,
  `active` varchar(5) NOT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table absensi_sekolah_v.3.slider: ~2 rows (approximately)
INSERT INTO `slider` (`slider_id`, `slider_nama`, `slider_url`, `foto`, `active`) VALUES
	(1, 'Slider 1', '#', '2022-11-29-1669693034.jpg', 'Y'),
	(3, 'SLIDER 2', '#', 'slider-2024-11-22-1732260994.jpg', 'Y');

-- Dumping structure for table absensi_sekolah_v.3.tahun_ajaran
DROP TABLE IF EXISTS `tahun_ajaran`;
CREATE TABLE IF NOT EXISTS `tahun_ajaran` (
  `tahun_ajaran_id` int NOT NULL AUTO_INCREMENT,
  `tahun_ajaran` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`tahun_ajaran_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table absensi_sekolah_v.3.tahun_ajaran: ~0 rows (approximately)
INSERT INTO `tahun_ajaran` (`tahun_ajaran_id`, `tahun_ajaran`) VALUES
	(1, '2025/2026');

-- Dumping structure for table absensi_sekolah_v.3.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `nisn` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rfid` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat_lahir` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_lahir` varchar(50) DEFAULT NULL,
  `jenis_kelamin` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kelas` varchar(20) DEFAULT NULL,
  `tahun_ajaran` varchar(25) DEFAULT NULL,
  `lokasi` int DEFAULT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `telp` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_registrasi` datetime NOT NULL,
  `tanggal_login` datetime NOT NULL,
  `ip` varchar(30) NOT NULL,
  `browser` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` enum('Y','N') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Y',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table absensi_sekolah_v.3.user: ~0 rows (approximately)
INSERT INTO `user` (`user_id`, `nisn`, `rfid`, `email`, `password`, `nama_lengkap`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `kelas`, `tahun_ajaran`, `lokasi`, `alamat`, `telp`, `avatar`, `tanggal_registrasi`, `tanggal_login`, `ip`, `browser`, `status`, `active`) VALUES
	(1, '123456789', '', 'swidodo.com@gmail.com', '$2y$10$j.DCKRGWx713W1BY3.34deMT4quqWdINm1aIr0ekD33WbGo7xmOuW', 'Siswa Widodo', '-', '1970-01-01', 'Laki-laki', 'IX-A', '2025/2026', 2, 'Bandar Lampung, lampung', '6283160901108', 'avatar_68ff042ed998b1.50387249.jpg', '2025-10-12 17:39:09', '2025-11-18 13:33:46', '::1', 'Google Chrome 141.0.0.0', 'Online', 'Y'),
	(2, '3453409', '898080', 'dsfijdsklfj@gmail.com', '$2y$10$T5SVbGgRN3ow/gDAv4bb.OLFc/Ueyt43Ng9A8SQ4pCrhuX3tLTegS', '09iosued', 'Kudus', '2000-08-07', 'Laki-laki', 'IX-A', '2025/2026', 2, 'Lampung', '6283160901108', NULL, '2025-11-14 18:06:39', '2025-11-14 18:06:39', '127.0.0.1', 'Google Chrome 142.0.0.0', 'Offline', 'Y');

-- Dumping structure for table absensi_sekolah_v.3.wali_murid
DROP TABLE IF EXISTS `wali_murid`;
CREATE TABLE IF NOT EXISTS `wali_murid` (
  `wali_murid_id` int NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat_lahir` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_kelamin` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telp` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nisn` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_siswa` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'avatar.jpg',
  `tanggal_registrasi` datetime NOT NULL,
  `tanggal_login` timestamp NOT NULL,
  `ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`wali_murid_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table absensi_sekolah_v.3.wali_murid: ~2 rows (approximately)
INSERT INTO `wali_murid` (`wali_murid_id`, `nama_lengkap`, `email`, `password`, `tempat_lahir`, `jenis_kelamin`, `telp`, `nisn`, `nama_siswa`, `alamat`, `avatar`, `tanggal_registrasi`, `tanggal_login`, `ip`, `browser`, `status`) VALUES
	(5, 'Widodo', 'swidodo.com@gmail.com', '$2y$10$V7IchcaK/8X/5itaYEaEWOxLtRARHmQ.938xlF/07V1w.mH2kz0PW', 'Kudus', 'Laki-laki', '6283160901108', '24325353535', 'Siswa', 'Bandar Lampung', 'avatar.jpg', '2025-09-10 17:18:42', '2025-10-23 09:51:31', '::1', 'Google Chrome 139.0.0.0', 'Online'),
	(6, 'Wali Murid', 'swidodo2.com@gmail.com', '123456', NULL, NULL, NULL, '123456789', 'QWwewiu', NULL, 'avatar.jpg', '2025-10-13 03:28:03', '2025-10-12 20:28:03', '::1', 'Google Chrome 141.0.0.0', 'Offline');

-- Dumping structure for table absensi_sekolah_v.3.whatsapp_pesan
DROP TABLE IF EXISTS `whatsapp_pesan`;
CREATE TABLE IF NOT EXISTS `whatsapp_pesan` (
  `whatsapp_pesan_id` int NOT NULL AUTO_INCREMENT,
  `penerima` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tujuan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pesan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`whatsapp_pesan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table absensi_sekolah_v.3.whatsapp_pesan: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
