-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 01 Okt 2017 pada 20.40
-- Versi Server: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iwwmis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_history`
--

CREATE TABLE `login_history` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_addr` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(11) UNSIGNED NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `nama_modul` varchar(30) DEFAULT NULL,
  `url` varchar(30) DEFAULT NULL,
  `icon` varchar(30) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `modul`
--

INSERT INTO `modul` (`id_modul`, `parent`, `nama_modul`, `url`, `icon`, `sequence`) VALUES
(2, 0, 'Armada Supir', '#', 'fa fa-map-signs', 1),
(4, 2, 'Jadwal Armada', '#', 'fa fa-truck', 2),
(5, 0, 'Klien', '#', 'fa fa-group', 2),
(6, 5, 'Bisnis', '#', 'fa fa-building', 2),
(7, 5, 'Perumahan', '#', 'fa fa-home', 1),
(8, 0, 'Master Data', '#', 'fa fa-file-text-o', 6),
(9, 8, 'Data Armada', 'Master_fleet', 'fa fa-circle', 1),
(10, 8, 'Data Supir', 'Master_driver', 'fa fa-user-circle', 2),
(11, 8, 'Data Wilayah', 'Master_wilayah', 'fa fa-map-marker', 3),
(12, 8, 'Data Bak Sampah', 'Master_bk_sampah', 'fa fa-trash', 4),
(13, 0, 'Operasional', '#', 'fa fa-gear', 3),
(14, 0, 'CCTV', '#', 'fa fa-video-camera', 4),
(15, 0, 'Pembayaran', '#', 'fa fa-credit-card', 5),
(17, 8, 'Data Agama', 'Master_agama', 'fa fa-circle 	', 6),
(18, 8, 'Data Bagian', 'Master_bagian', 'fa fa-circle 	', 7),
(19, 8, 'Data Jabatan', 'Master_jabatan', 'fa fa-circle', 7),
(20, 8, 'Data Rumah', 'Master_rumah', 'fa fa-home', 9),
(21, 8, 'Data Komplain', 'Master_komplen', 'fa fa-circle', 11),
(22, 8, 'Data Pemungut', 'Master_pemungut', 'fa fa-circle', 12),
(23, 8, 'Data Perawatan', 'Master_perawatan', 'fa fa-circle', 13),
(24, 8, 'Data Perencanaan', 'Master_perencanaan', 'fa fa-circle', 14),
(25, 8, 'Data Status', 'Master_status', 'fa fa-address-card', 15),
(26, 8, 'Data Bisnis', 'Master_bisnis', 'fa fa-circle', 16);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_agama`
--

CREATE TABLE `m_agama` (
  `id` int(11) NOT NULL,
  `nama_agama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_agama`
--

INSERT INTO `m_agama` (`id`, `nama_agama`) VALUES
(11, 'Islam'),
(12, 'Kristen'),
(13, 'Budha'),
(14, 'Hindu'),
(15, 'Protestan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_bagian`
--

CREATE TABLE `m_bagian` (
  `id` int(11) NOT NULL,
  `nama_bagian` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_bagian`
--

INSERT INTO `m_bagian` (`id`, `nama_bagian`) VALUES
(1, 'umum'),
(2, 'staff'),
(4, 'abc');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_bisnis`
--

CREATE TABLE `m_bisnis` (
  `id_bisnis` int(11) NOT NULL,
  `nama_bisnis` varchar(50) DEFAULT NULL,
  `jenis` varchar(20) DEFAULT NULL,
  `tipe` varchar(20) DEFAULT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `map_icon` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_bisnis`
--

INSERT INTO `m_bisnis` (`id_bisnis`, `nama_bisnis`, `jenis`, `tipe`, `alamat`, `map_icon`) VALUES
(1, 'SMA Negeri 1 Setu', 'Pendidikan', 'SMA', 'Lubangbuaya, Setu, Bekasi, West Java 17320, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(2, 'SD Kids School', 'Pendidikan', 'SD', 'Medan Satria, Bekasi City, West Java 17131, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(3, 'Sekolah Dasar 5 Bani Saleh', 'Pendidikan', 'SD', 'Jl. RA. Kartini No.7, Margahayu, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(4, 'SD Batutis Al-ilmi', 'Pendidikan', 'SD', 'Pekayon Jaya, South Bekasi, Bekasi City, West Java 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(5, 'Sekolah Dasar Maria Fransiska', 'Pendidikan', 'SD', 'Jl. Arjuna I, Jaka Setia, Bekasi Sel., Kota Bks, Jawa Barat 17147, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(6, 'Sekolah Dasar Al Hanief', 'Pendidikan', 'SD', 'Jl. Bambu Kuning Selatan, RT.4/RW.3, Bojong Rawalumbu, Rawalumbu, Kota Bks, Jawa Barat 17114, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(7, 'KB-TK-SD Immanuel', 'Pendidikan', 'SD', 'Jalan Taman Alamanda U, Pejuang, Bekasi Barat, Kota Bks, Jawa Barat 17125, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(8, 'Sekolah Dasar Strada Nawar', 'Pendidikan', 'SD', 'Jalan Raya Hankam No.85, Jatiranggon, Jatisampurna, Jatiranggon, Jatisampurna, Kota Bks, Jawa Barat 17432, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(9, 'Sekolah Tahfizh Plus HSG SD Khoiru Ummah 25 Cibubu', 'Pendidikan', 'SD', 'BS 25 No. 25, Jatisampurna, Jalan Tanjung V, Jatisampurna, Kota Bekasi, Jatisampurna, Kota Bks, Jawa Barat 17433, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(10, 'Uptd Pembinaan SD', 'Pendidikan', 'SD', 'Jl. Raya Setu Bantar Gebang, Cimuning, Mustikajaya, Kota Bks, Jawa Barat 17155, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(11, 'Sekolah Walisongo Bekasi', 'Pendidikan', 'SD', 'Jl. Raya Jatisampurna No.38, Jatiranggon, Jatisampurna, Kota Bks, Jawa Barat 17432, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(12, 'SD MARSUDIRINI', 'Pendidikan', 'SD', 'Kemang Pratama, Kota Bekasi, Sepanjang Jaya, Kota Bks, Jawa Barat 17114, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(13, 'Sekolah Dasar Negeri Bekasi Jaya IX', 'Pendidikan', 'SD', 'Jl. Jati Raya No.1, Kayuringin Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17112, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(14, 'Royal Wells School', 'Pendidikan', 'SD', 'Jl. Cikunir Raya No.25, Jakasampurna, Bekasi Barat, Kota Bks, Jawa Barat 17146, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(15, 'Sekolah Dasar 4 Bani Saleh', 'Pendidikan', 'SD', 'Kompleks Rsij, Jl. Komp. RSIJ Blok H No.1, Harapan Jaya, Bekasi Utara, Kota Bks, Jawa Barat 17124, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(16, 'Sekolah Dasar Nur Hikmah', 'Pendidikan', 'SD', 'Jalan Jatimurni No.10, Jatimelati, Pondokmelati, Kota Bks, Jawa Barat 17415, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(17, 'SD Cenderawasih Jaya', 'Pendidikan', 'SD', 'JL. Mahoni, Komplek Duren Jaya Blok C/331-A, Bekasi Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17411, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(18, 'SD Nasional Satu - Bekasi', 'Pendidikan', 'SD', 'Jl. Raya Hankam, Jatirahayu, Pondokmelati, Kota Bks, Jawa Barat 17414, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(19, 'Sekolah Dasar Cahaya Harapan', 'Pendidikan', 'SD', 'Komp. Sentra Niaga, Jl. Komp. Boulevard, Pejuang, Medan Satria, Kota Bks, Jawa Barat 17131, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(20, 'Sekolah Dasar Harapan Indonesia', 'Pendidikan', 'SD', 'Jl. Gn. Krakatau I Blok B No.87-88, Harapan Jaya, Bekasi Utara, Kota Bks, Jawa Barat 17124, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(21, 'TK, SD, SMP, SMA Galatia Bekasi', 'Pendidikan', 'SD', 'Jl. Boulevard Hijau Raya Blok d1 No.1, Pejuang, Medan Satria, Kota Bks, Jawa Barat 17131, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(22, 'Sekolah Dasar Strada Kampung Sawah', 'Pendidikan', 'SD', 'Jl. Raya Kp. Sawah No.67, RT.6/RW.4, Jatimelati, Pondokmelati, Kota Bks, Jawa Barat 17415, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(23, 'SD Ar-Rayhan', 'Pendidikan', 'SD', 'JL. Jati Mekar Raya, RT. 04 / RW. 17, Jati Asih, Pondok Gede, Jatimekar, Jatiasih, Kota Bks, Jawa Barat 17116, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(24, 'SD Bekasi Jaya XIII', 'Pendidikan', 'SD', 'JL. Jati Raya, Komplek Bekasi Jaya Indah I, Bojong Menteng, Kota Bks, Jawa Barat 17112, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(25, 'SD Santa Maria Monica', 'Pendidikan', 'SD', 'Jl Cendrawasih IV Margahayu Bekasi Timur Bekasi Jawa Barat, Margahayu, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(26, 'Sekolah Dasar Martha', 'Pendidikan', 'SD', 'Jl. Gamprit No.10, Jatiwaringin, Pondokgede, Kota Bks, Jawa Barat 17411, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(27, 'Sekolah Dasar Citta Bangsa', 'Pendidikan', 'SD', 'Jl. Bumi Arya Blok A No.11, Jatikramat, Jatiasih, Kota Bks, Jawa Barat 17421, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(28, 'UPTD Pembinaan SD Kecamatan Bekasi Barat', 'Pendidikan', 'SD', 'JL Raya Bintara, Bekasi Barat, Duta Kranji No. 4, Bintara, Bekasi Bar., Kota Bks, Jawa Barat 17134, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(29, 'SD Strada Bhakti Wiyata 1', 'Pendidikan', 'SD', 'Jl. Bintara Raya, Kranji, Bekasi Bar., Kota Bks, Jawa Barat 17134, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(30, 'SD Cendrawasih Jaya', 'Pendidikan', 'SD', 'Duren Jaya, East Bekasi, Bekasi City, West Java 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(31, 'SD Islam Syafiul Ikhwan', 'Pendidikan', 'SD', 'Jalan Syafiul Ikhwan RT.07/02 Jati Cempaka Pondok Gede, RW.8, Jatibening Baru, Bekasi Selatan, Kota Bks, Jawa Barat 17411, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(32, 'SD Negeri Bahagia 06', 'Pendidikan', 'SD', 'Komplek Pondok Ungu Permai RT 009 %2F RW 11 Kaliabang Tengah Bekasi Utara Bekasi Jawa Barat, Bahagia, Babelan, Bekasi, Jawa Barat 17121, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(33, 'SD ISLAM AL-AZHAR 9', 'Pendidikan', 'SD', 'Rawalumbu, Jl. Kemang Pratama Raya, Bojong Rawalumbu, Kota Bks, Jawa Barat 17116, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(34, 'SD Pangudi Luhur Bernardus', 'Pendidikan', 'SD', 'Jl. Zona Eropa Boulevard, Pasirranji, Cikarang Pusat, Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(35, 'SD Al - Muslim', 'Pendidikan', 'SD', 'Jl. Raya Setu, Tambun, Tambun Sel., Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(36, 'Sekolah Dasar Miftahul Jannah', 'Pendidikan', 'SD', 'Jl. Sosial No.20, RT.2/RW.6, Jatiwaringin, Pondokgede, Kota Bks, Jawa Barat 17411, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(37, 'SD Islam Al Amal', 'Pendidikan', 'SD', 'Margahayu, East Bekasi, Bekasi City, West Java 17412, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(38, 'Sekolah Dasar Widya Bhakti', 'Pendidikan', 'SD', 'Jl. Narogong Permai XXI, Pengasinan, Kota Bks, Jawa Barat 17116, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(39, 'Sekolah Dasar Advent XIV Bekasi', 'Pendidikan', 'SD', 'Jl. Sersan Aswan No.3, Margahayu, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(40, 'Sekolah Dasar Dian Karunia', 'Pendidikan', 'SD', 'Jalan Galaxi Raya Blok B No.290, Jaka Setia, Bekasi Sel., Kota Bks, Jawa Barat 17147, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(41, 'SD HARAPAN MULIA', 'Pendidikan', 'SD', 'Jl. Gardenia I Blok Aaii No.7, Jaka Setia, Bekasi Sel., Kota Bks, Jawa Barat 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(42, 'SD Kasih Bunda', 'Pendidikan', 'SD', 'Jl. Ir. H. Juanda No.212, Bekasi Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(43, 'Sekolah Dasar Kristen Penabur Bekasi', 'Pendidikan', 'SD', 'Jl. Bekasi Permai IV Blok BD No.3, Bekasi Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17112, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(44, 'SDN Bekasi Jaya', 'Pendidikan', 'SD', 'Jl. KH. Agus Salim No.122 C, Bekasi Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17112, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(45, 'SD Islam Al - Fajar', 'Pendidikan', 'SD', 'Villa Nusa Indah Raya, Jl. Swatantra V No.1, Jatirasa, Jatiasih, Kota Bks, Jawa Barat 17424, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(46, 'SD Negeri Nusantara', 'Pendidikan', 'SD', 'Jl. Yapen Raya Aren Jaya Bekasi Timur Bekasi Jawa Barat, Bekasi Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(47, 'Sekolah Dasar Islam Terpadu Widya Duta', 'Pendidikan', 'SD', 'Jl. Bumi Alinda Kencana Blok A1 No.2-6, Kaliabang Tengah, Bekasi Utara, Kota Bks, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(48, 'Sekolah Dasar Maria Fransiska', 'Pendidikan', 'SD', 'Jl. Arjuna I, Jaka Setia, Bekasi Sel., Kota Bks, Jawa Barat 17147, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(49, 'Sekolah Dasar Strada Budi Luhur 2', 'Pendidikan', 'SD', 'Jl. Ir. H. Juanda No.164, Margahayu, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(50, 'Sekolah Dasar Mandalahayu', 'Pendidikan', 'SD', 'Yayasan Mandalahayu, Jl. Perum. Margahayu No.304 - 312, Margahayu, Bekasi Tim., Bekasi, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(51, 'Sekolah Dasar Islam Al-Husna', 'Pendidikan', 'SD', 'Jl. Taman Wisma Asri, RW.9, Tlk. Pucung, Bekasi Utara, Kota Bks, Jawa Barat 17121, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(52, 'Sekolah Dasar Negeri Kayuringin Jaya 17', 'Pendidikan', 'SD', 'Perumnas 1 Bekasi, Jl. Cendrawasih Raya, Kayuringin Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17144, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(53, 'Sekolah Dasar Mentari Indonesia', 'Pendidikan', 'SD', 'Jl. Pd. Ungu Permai No.1, Kaliabang Tengah, Bekasi Utara, Bekasi, Jawa Barat 17125, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(54, 'SD Maria Fransiska', 'Pendidikan', 'SD', 'Jl Arjuna I Bekasi Jaya Bekasi Timur Bekasi Jawa Barat, Bekasi Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(55, 'Sekolah Dasar Islam Terpadu Lab School ISTEC', 'Pendidikan', 'SD', 'Jl. Jamrud Raya, Bojong Rawalumbu, Kota Bks, Jawa Barat 17116, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(56, 'Sekolah Dasar Negeri Kota Baru II', 'Pendidikan', 'SD', 'Jl. Sultan Agung, Kota Baru, Bekasi Bar., Kota Bks, Jawa Barat 17132, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(57, 'Sekolah Dasar Marsudirini Bekasi', 'Pendidikan', 'SD', 'Jl. Kemang Pratama Raya, Bojong Rawalumbu, Rawalumbu, Kota Bks, Jawa Barat 17116, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(58, 'Sekolah Dasar Harapan Indonesia', 'Pendidikan', 'SD', 'Jl. Gn. Krakatau I Blok B No.87-88, Harapan Jaya, Bekasi Utara, Kota Bks, Jawa Barat 17124, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(59, 'Sekolah Dasar Islam Terpadu Riyadh El Jannah Islam', 'Pendidikan', 'SD', 'Perum Kodam, Jl. Perum Kodam Raya Blok A No.27, Mustika Jaya, Mustikajaya, Kota Bks, Jawa Barat 17158, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(60, 'SD ISLAM AL FAJRI', 'Pendidikan', 'SD', 'Jalan Cemara 1 No.2, Jakasampurna, Bekasi Bar., Kota Bks, Jawa Barat 17145, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(61, 'Sekolah Dasar Islam Terpadu Thariq Bin Ziyad', 'Pendidikan', 'SD', 'Perum Pondok Hijau Permai, Jalan Pondok Hijau Permai Blok A No.23, Pengasinan, Rawalumbu, Bekasi, Jawa Barat 17115, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(62, 'Sekolah Dasar Islam Terpadu Salsabila', 'Pendidikan', 'SD', 'Jl. Ki Mangun Sarkoro No.30, Bekasi Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17112, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(63, 'SD Bekasi Jaya XIII', 'Pendidikan', 'SD', 'JL. Jati Raya, Komplek Bekasi Jaya Indah I, Bojong Menteng, Kota Bks, Jawa Barat 17112, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(64, 'Sekolah Dasar Strada Nawar', 'Pendidikan', 'SD', 'Jalan Raya Hankam No.85, Jatiranggon, Jatisampurna, Jatiranggon, Jatisampurna, Kota Bks, Jawa Barat 17432, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(65, 'Sekolah Dasar Islam Al-Azhar 6 Jakapermai', 'Pendidikan', 'SD', 'Jl. Cendana IV No.16, Jakasampurna, Bekasi Barat, Jakasampurna, Bekasi Bar., Kota Bks, Jawa Barat 17145, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(66, 'Sekolah Dasar Islam Terpadu Ar Rahmah', 'Pendidikan', 'SD', 'Bekasi TImur Regensi Blok A1 No.2, Jl. Bekasi Timur Regensi, Cimuning, Mustikajaya, Bekasi, Jawa Barat 17151, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(67, 'Sekolah SD Islam', 'Pendidikan', 'SD', 'Jalan Raya Kalimalang, Jakasampurna, Bekasi Bar., Kota Bks, Jawa Barat 17145, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(68, 'Sekolah Dasar Negeri Bintara V', 'Pendidikan', 'SD', 'Jl. Bintara VIII No.1, Bintara, Bekasi Bar., Kota Bks, Jawa Barat 17134, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(69, 'Sekolah Dasar Negeri Bekasi Jaya IX', 'Pendidikan', 'SD', 'Jl. Jati Raya No.1, Kayuringin Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17112, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(70, 'Sekolah Dasar Alam Pertiwi', 'Pendidikan', 'SD', 'Jl. Raya Mustika Jaya, Cimuning, Mustikajaya, Kota Bks, Jawa Barat 17155, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(71, 'Sekolah Dasar Citta Bangsa', 'Pendidikan', 'SD', 'Jl. Bumi Arya Blok A No.11, Jatikramat, Jatiasih, Kota Bks, Jawa Barat 17421, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(72, 'Sekolah Dasar Negeri Padurenan VI', 'Pendidikan', 'SD', 'Perum Dukuh Zamrud, Jl. Zamrud Selatan 3, Padurenan, Mustikajaya, Kota Bks, Jawa Barat 17156, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(73, 'Sekolah Dasar Islam Terpadu IQRO', 'Pendidikan', 'SD', 'Jl. Ayat Jati Makmur No.78, Jatimakmur, Pondokgede, Kota Bks, Jawa Barat 17413, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(74, 'Sekolah Dasar Strada Kampung Sawah', 'Pendidikan', 'SD', 'Jl. Raya Kp. Sawah No.67, RT.6/RW.4, Jatimelati, Pondokmelati, Kota Bks, Jawa Barat 17415, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(75, 'Sekolah Dasar Islam Al-Husna', 'Pendidikan', 'SD', 'Komplek Keuangan, Jl. Guntur I, Kayuringin Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17144, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(76, 'Sekolah Tahfizh Plus HSG SD Khoiru Ummah 25 Cibubu', 'Pendidikan', 'SD', 'BS 25 No. 25, Jatisampurna, Jalan Tanjung V, Jatisampurna, Kota Bekasi, Jatisampurna, Kota Bks, Jawa Barat 17433, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(77, 'Sekolah Dasar Muhammadiyah 47 Bekasi', 'Pendidikan', 'SD', 'Jl. Kimangun Sarkoro No.45, Bekasi Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17112, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(78, 'Sekolah Dasar Islam Darussalam', 'Pendidikan', 'SD', 'Jl. Mahoni 12 Blok C, Pekayon Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(79, 'Sekolah Dasar Santa Lusia', 'Pendidikan', 'SD', 'Jl. Kemuning V, Bojong Menteng, Kota Bks, Jawa Barat 17117, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(80, 'SD Cenderawasih Jaya', 'Pendidikan', 'SD', 'JL. Mahoni, Komplek Duren Jaya Blok C/331-A, Bekasi Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17411, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(81, 'Sekolah Dasar Islam Terpadu Yayasan Pendidikan Isl', 'Pendidikan', 'SD', 'Kompleks Unisma, Jl. Cut Mutia Raya No.83, Margahayu, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(82, 'Sekolah Dasar Kristen Penabur Harapan Indah', 'Pendidikan', 'SD', 'Kota Harapan Indah, Jl.Boulevar Kav.21, Medan Satria, RW.3, Medan Satria, Bekasi, Jawa Barat 17132, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(83, 'Sekolah Dasar Cahaya Harapan', 'Pendidikan', 'SD', 'Komp. Sentra Niaga, Jl. Komp. Boulevard, Pejuang, Medan Satria, Kota Bks, Jawa Barat 17131, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(84, 'Sekolah Dasar Islam Terpadu (SDIT) Nurul Falah', 'Pendidikan', 'SD', 'JL. Sasak Tiga, RT. 001 RW. 03, Tambun, Tridaya Sakti, Tambun Sel., Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(85, 'Sekolah Dasar 5 Bani Saleh', 'Pendidikan', 'SD', 'Jl. RA. Kartini No.7, Margahayu, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(86, 'SD Negeri Bekasi Jaya 2', 'Pendidikan', 'SD', 'Jl. KH Mas Mansyur RT 001 %2F RW 02 Bekasi Jaya Bekasi Timur Bekasi Jawa Barat, Tlk. Pucung, Bekasi Utara, Kota Bks, Jawa Barat 17121, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(87, 'SD Mutiara 17 Agustus', 'Pendidikan', 'SD', 'Jl. Taman Wisma Asri Kav. N 12, RT 04 / RW 17, Teluk Pucung, Bekasi Utara, Tlk. Pucung, Bekasi Utara, Kota Bks, Jawa Barat 17121, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(88, 'Sekolah Dasar Advent XIV Bekasi', 'Pendidikan', 'SD', 'Jl. Sersan Aswan No.3, Margahayu, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(89, 'SD Negeri Bahagia 06', 'Pendidikan', 'SD', 'Komplek Pondok Ungu Permai RT 009 %2F RW 11 Kaliabang Tengah Bekasi Utara Bekasi Jawa Barat, Bahagia, Babelan, Bekasi, Jawa Barat 17121, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(90, 'SD Islam Terpadu YPI 45', 'Pendidikan', 'SD', 'Jl. Cut Meutia No.83, Margahayu, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(91, 'SD Al Azhar Syifa Budi Jatibening', 'Pendidikan', 'SD', 'Jalan Taman Sari Persada Raya Blok 1 No. 1, Jatibening Baru, Pondok Gede, Jatibening Baru, Bekasi, Kota Bks, Jawa Barat 17412, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(92, 'Uptd Pembinaan SD', 'Pendidikan', 'SD', 'Jl. Raya Setu Bantar Gebang, Cimuning, Mustikajaya, Kota Bks, Jawa Barat 17155, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(93, 'Sekolah Dasar Alodia', 'Pendidikan', 'SD', 'Jl. Taman Baugenvile, Pejuang, Bekasi Barat, Bekasi, Jawa Barat 17131, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(94, 'SD ISLAM AL-AZHAR 9', 'Pendidikan', 'SD', 'Rawalumbu, Jl. Kemang Pratama Raya, Bojong Rawalumbu, Kota Bks, Jawa Barat 17116, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(95, 'Sekolah Dasar Islam Terpadu Al-Izzah', 'Pendidikan', 'SD', 'Jl. Kemandoran No.65, Pekayon Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(96, 'Sekolah Dasar Islam Al-Anshar', 'Pendidikan', 'SD', 'Jl. Pulo Ribung, Pekayon Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(97, 'Sekolah Dasar Negeri Teluk Pucung VII', 'Pendidikan', 'SD', 'Jl. Apel Merah Raya Blok AA.5 No.46A, Tlk. Pucung, Bekasi Utara, Kota Bks, Jawa Barat 17121, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(98, 'Sekolah Dasar Al Hanief', 'Pendidikan', 'SD', 'Jl. Bambu Kuning Selatan, RT.4/RW.3, Bojong Rawalumbu, Rawalumbu, Kota Bks, Jawa Barat 17114, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(99, 'SD Negeri Bekasi Jaya 2', 'Pendidikan', 'SD', 'JL. KH Mas Mansyur, RT 001/02, Bekasi Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17112, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(100, 'Sekolah Dasar Islam Terpadu Al-Muhajirin', 'Pendidikan', 'SD', 'Duta, Jl. Gelatik Raya, Kranji, Bekasi Bar., Kota Bks, Jawa Barat 17135, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(101, 'Sekolah Dasar Negeri Pekayon Jaya VI', 'Pendidikan', 'SD', 'Jl. Raya Pekayon, Pekayon Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(102, 'SDN Bekasi Jaya', 'Pendidikan', 'SD', 'Jl. KH. Agus Salim No.122 C, Bekasi Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17112, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(103, 'Sekolah SD Islam', 'Pendidikan', 'SD', 'Jalan Raya Kalimalang, Jakasampurna, Bekasi Bar., Kota Bks, Jawa Barat 17145, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(104, 'Sekolah Dasar Marsudirini Bekasi', 'Pendidikan', 'SD', 'Jl. Kemang Pratama Raya, Bojong Rawalumbu, Rawalumbu, Kota Bks, Jawa Barat 17116, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(105, 'SD Islam Riyadhus Shalihin Bekasi', 'Pendidikan', 'SD', 'Perumahan Mutiara Insani, Kel. Padurenan, Kec., Jl. Kp. Klp. Dua, Mustika Jaya, Bekasi Timur, Kota Bks, Jawa Barat 17156, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(106, 'SD Negeri Nusantara', 'Pendidikan', 'SD', 'Jl. Yapen Raya Aren Jaya Bekasi Timur Bekasi Jawa Barat, Bekasi Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(107, 'SD ISLAM AL FAJRI', 'Pendidikan', 'SD', 'Jalan Cemara 1 No.2, Jakasampurna, Bekasi Bar., Kota Bks, Jawa Barat 17145, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(108, 'SD Islam Al - Fajar', 'Pendidikan', 'SD', 'Villa Nusa Indah Raya, Jl. Swatantra V No.1, Jatirasa, Jatiasih, Kota Bks, Jawa Barat 17424, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(109, 'Sekolah Dasar Strada Budi Luhur 2', 'Pendidikan', 'SD', 'Jl. Ir. H. Juanda No.164, Margahayu, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(110, 'Sekolah Dasar Mentari Indonesia', 'Pendidikan', 'SD', 'Jl. Pd. Ungu Permai No.1, Kaliabang Tengah, Bekasi Utara, Bekasi, Jawa Barat 17125, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(111, 'Sekolah Dasar Islam Al-Husna', 'Pendidikan', 'SD', 'Jl. Taman Wisma Asri, RW.9, Tlk. Pucung, Bekasi Utara, Kota Bks, Jawa Barat 17121, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(112, 'Sekolah Dasar Mandalahayu', 'Pendidikan', 'SD', 'Yayasan Mandalahayu, Jl. Perum. Margahayu No.304 - 312, Margahayu, Bekasi Tim., Bekasi, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(113, 'Sekolah Dasar Santa Lusia', 'Pendidikan', 'SD', 'Jl. Kemuning V, Bojong Menteng, Kota Bks, Jawa Barat 17117, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(114, 'Sekolah Dasar Islam Terpadu IQRO', 'Pendidikan', 'SD', 'Jl. Ayat Jati Makmur No.78, Jatimakmur, Pondokgede, Kota Bks, Jawa Barat 17413, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(115, 'Sd Setia Bekasi Timur', 'Pendidikan', 'SD', 'Jl. P. Irian Jaya Raya Perumnas III, Aren Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(116, 'Sekolah Dasar Muhammadiyah 47 Bekasi', 'Pendidikan', 'SD', 'Jl. Kimangun Sarkoro No.45, Bekasi Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17112, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(117, 'Sekolah Dasar Kristen Penabur Bekasi', 'Pendidikan', 'SD', 'Jl. Bekasi Permai IV Blok BD No.3, Bekasi Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17112, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(118, 'Sekolah Dasar Islam Al-Husna', 'Pendidikan', 'SD', 'Komplek Keuangan, Jl. Guntur I, Kayuringin Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17144, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(119, 'Sekolah Dasar Strada Cakung', 'Pendidikan', 'SD', 'Jl. Wibawa Mukti II, Jatisari, Jatiasih, Kota Bks, Jawa Barat 17426, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(120, 'SD Muhammadiyah 47', 'Pendidikan', 'SD', 'Jl. Ki S Mangun Sarkoro 45 Bekasi Jaya Bekasi Timur Bekasi Jawa Barat, Tlk. Pucung, Bekasi Utara, Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(121, 'Sekolah Dasar Islam Darussalam', 'Pendidikan', 'SD', 'Jl. Mahoni 12 Blok C, Pekayon Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(122, 'Sekolah Menengah Pertama Mutiara 17 Agustus 1', 'Pendidikan', 'SMP', 'Jalan Taman Wisma Asri Raya No.Kav N7, Teluk Pucung, Bekasi Utara, Tlk. Pucung, Bekasi Utara, Kota Bks, Jawa Barat 17121, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(123, 'SMPN 23 Bekasi', 'Pendidikan', 'SMP', 'Jl. Jati Kramat Indah II, Jatiasih, Jatikramat, Jatiasih, Kota Bks, Jawa Barat 17421, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(124, 'SMP Negri 3 Bekasi', 'Pendidikan', 'SMP', 'JL. Beo II, Komplek. Bumi Lestari, Jatibening, Bekasi, Kota Bks, Jawa Barat 17421, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(125, 'Sekolah Menengah Pertama Bani Taqwa Bekasi', 'Pendidikan', 'SMP', 'Jalan Akasia Raya Ujung Blok F6 No.1, Pengasinan, Rawalumbu, Kota Bks, Jawa Barat 17115, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(126, 'SMPN 1 Bekasi', 'Pendidikan', 'SMP', 'Jl. KH Agus Salim No.138, Bekasi Jaya, Bekasi Timur, Kota Bks, Jawa Barat 17143, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(127, 'SMA PGRI 1 Bekasi', 'Pendidikan', 'SMP', 'Jl. Cirebon, Duren Jaya, Kota Bks, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(128, 'SMP Tashfia', 'Pendidikan', 'SMP', 'Jalan Ratna No. 82, Jatikramat, Jatiasih, Jatikramat, Jatiasih, Kota Bks, Jawa Barat 17421, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(129, 'Sekolah Menengah Pertama Negeri 2 Kota Bekasi', 'Pendidikan', 'SMP', 'Jalan Chairil Anwar No. 37, Margahayu, Bekasi Timur, Bekasi, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(130, 'SMP Negeri 40 Bekasi', 'Pendidikan', 'SMP', 'Jalan Asem Jaya, Ciketing, Mustika Jaya, Mustikajaya, Kota Bks, Jawa Barat 17158, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(131, 'Sekolah Menengah Pertama Malidar', 'Pendidikan', 'SMP', 'Jl. Balai Desa No.2, Jatirasa, Jatiasih, Kota Bks, Jawa Barat 17424, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(132, 'SMPN 18 Bekasi', 'Pendidikan', 'SMP', 'Jl. KH. Agus Salim No.150, Bekasi Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17112, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(133, 'SMPN Negeri 11 Kota Bekasi', 'Pendidikan', 'SMP', 'Perumnas 3 Aren Jaya, Jalan Pulau Sumatera Raya No. 1, Kota Bks, Jawa Barat, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(134, 'SMPN 17 Bekasi', 'Pendidikan', 'SMP', 'Jl. Masjid Kemang No. 80, Jaticempaka, Pondok Gede, Pondokgede, Kota Bks, Jawa Barat 13620, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(135, 'SMP Strada Budi Luhur', 'Pendidikan', 'SMP', 'Jl. Ir. H. Juanda No.164, Margahayu, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(136, 'Junior High School 32 Bekasi', 'Pendidikan', 'SMP', 'Perumahan Wisma Jaya, Jl. Kusuma Timur Raya, RT 04/ RW 20, Aren Jaya, Bekasi Timur, Kota Bks, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(137, 'Sekolah Menengah Pertama Negeri 14 Kota Bekasi', 'Pendidikan', 'SMP', 'Jl. Bintara VIII, Bintara, Bekasi Bar., Kota Bks, Jawa Barat 17134, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(138, 'Sekolah Menengah Pertama Negeri 38 Bekasi', 'Pendidikan', 'SMP', 'Jl. Kaliabang, Perwira, Bekasi Utara, Kota Bks, Jawa Barat 17123, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(139, 'Sekolah Menengah Pertama Negeri 22 Bekasi', 'Pendidikan', 'SMP', 'Jl. Bintara 17, Bintara Jaya, Bekasi Bar., Kota Bks, Jawa Barat 17136, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(140, 'SMPN 31 Bekasi', 'Pendidikan', 'SMP', 'Perumahan Taman Rahayu Regency, Jalan Pangkalan No. 8, Ciketingudik, Bantargebang, Ciketing Udik, Bantargebang, Kota Bks, Jawa Barat 17153, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(141, 'Sekolah Menengah Atas Marsudirini Bekasi', 'Pendidikan', 'SMP', 'Jalan Raya Narogong No. 202, Kemang Pratama, Bojong Rawalumbu, Kota Bks, Jawa Barat 17116, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(142, 'Sekolah Menengah Pertama Negeri 40 Kota Bekasi', 'Pendidikan', 'SMP', 'Jl. Rw. Mulya, Mustika Jaya, Mustikajaya, Kota Bks, Jawa Barat 17158, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(143, 'Sekolah Menengah Pertama Negeri 19 Bekasi', 'Pendidikan', 'SMP', 'Jalan Flamboyan, Perumahan Harapan Indah, Medan Satria, Pejuang, Medan Satria, Kota Bks, Jawa Barat 17134, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(144, 'SMP Negeri 36 Bekasi', 'Pendidikan', 'SMP', 'Perum Permata Legenda Blok K, Mustikajaya, Mustika Jaya, Kota Bks, Jawa Barat 17158, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(145, 'SMP Negeri 25', 'Pendidikan', 'SMP', 'Jl. Gn. Jayawijaya Raya, Harapan Jaya, Bekasi Utara, Kota Bks, Jawa Barat 17124, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(146, 'Sekolah Menengah Pertama Sejahtera Bekasi', 'Pendidikan', 'SMP', 'Jl. Irigasi Baru II Jl. Irigasi Persada Baru No.52, Bekasi Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17112, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(147, 'Sekolah Menengah Pertama Tamansiswa Bekasi', 'Pendidikan', 'SMP', 'Perum Bumi Bekasi Baru Utara, Jl. Selecta Raya No.2, Pengasinan, Rawalumbu, Kota Bks, Jawa Barat 17115, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(148, 'Sekolah Menengah Pertama 27 Bekasi', 'Pendidikan', 'SMP', 'Komp. PU, Jl. Sapta Taruna, Sumur Batu, Bantargebang, Kota Bks, Jawa Barat 17154, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(149, 'Sekolah Menengah Pertama Patriot Bekasi', 'Pendidikan', 'SMP', 'Komplek Mas Naga Bintara Jaya, Jl. Kalibaru Timur Bekasi, Kali Baru, Medan Satria, Kota Bks, Jawa Barat 17133, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(150, 'Sekolah Menengah Pertama Negeri 30 Bekasi', 'Pendidikan', 'SMP', 'Komp. Bumi Asih Indah, Jl. Wibawa Mukti II, Jatiasih, Kota Bks, Jawa Barat 17423, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(151, 'SMP Negeri 36 Bekasi', 'Pendidikan', 'SMP', 'Perum Permata Legenda Blok K, Padurenan, Mustikajaya, Padurenan, Mustikajaya, Kota Bks, Jawa Barat 17158, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(152, 'SMP Muhammadiyah 28 Bekasi', 'Pendidikan', 'SMP', 'Bekasi Jaya, East Bekasi, Bekasi City, West Java 17112, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(153, 'SMP PGRI 3', 'Pendidikan', 'SMP', 'Jalan Bintara VIII, Bekasi Barat, Kota Bks, Jawa Barat, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(154, 'SMP Sumber Daya Bekasi', 'Pendidikan', 'SMP', 'Jl. Mustika Sari Raya,Bekasi, Mustikasari, Mustikajaya, Kota Bks, Jawa Barat 17116, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(155, 'Sekolah Menengah Pertama Santo Bellarminus Bekasi', 'Pendidikan', 'SMP', 'Jl. Kemangsari 4 No.97, Jatibening Baru, Pondokgede, Kota Bks, Jawa Barat 17412, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(156, 'SMP Negeri 29 Bekasi', 'Pendidikan', 'SMP', 'Jl. H. IIyas No.63, Jaka Mulya, Bekasi Sel., Kota Bks, Jawa Barat 17146, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(157, 'Sekolah Menengah Pertama Gelora Bekasi', 'Pendidikan', 'SMP', 'Jln Kali Baru Barat No.2, Baru City, West Bekasi, Bekasi City, West Java 17133, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(158, 'Sekolah Menengah Pertama Advent XIV Bekasi', 'Pendidikan', 'SMP', 'Jl. Sersan Aswan No.3, Margahayu, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(159, 'SMP PGRI 1 Bekasi', 'Pendidikan', 'SMP', 'Karangsatria, North Tambun, Bekasi, West Java 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(160, 'SMP Galatia', 'Pendidikan', 'SMP', 'Pejuang, Medan Satria, Bekasi City, West Java 17131, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(161, 'Sekolah Menengah Pertama Sandikta', 'Pendidikan', 'SMP', 'Jl. Raya Hankam No.208, RT.8/RW.3, Jatirahayu, Pondokmelati, Kota Bks, Jawa Barat 17414, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(162, 'SMP Negeri 5', 'Pendidikan', 'SMP', 'Jalan Seroja, Harapan Jaya, Bekasi Utara, Kota Bks, Jawa Barat 17124, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(163, 'Sekolah Menengah Pertama Negeri 8 Bekasi', 'Pendidikan', 'SMP', 'Jl. Cipendawa, Bojong Menteng, Rawalumbu, Kota Bks, Jawa Barat 17117, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(164, 'SMP Negeri 12 Bekasi', 'Pendidikan', 'SMP', 'Taman Galaxy, Jalan Pulo Sirih Timur Raya, Pekayon Jaya, Bekasi Selatan, Kota Bks, Jawa Barat 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(165, 'Sekolah Menengah Pertama Negeri 13 Kota Bekasi', 'Pendidikan', 'SMP', 'Jalan Arbei Harapan Baru No.1, RT.5/RW.16, Kota Baru, Bekasi Bar., Kota Bks, Jawa Barat 17133, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(166, 'SMP Negeri 24 Kota Bekasi', 'Pendidikan', 'SMP', 'Bumi Dirgantara Permai, Jalan Raya Garuda No. 24, Jatisari, Jatiasih, Jatisari, Jatiasih, Kota Bks, Jawa Barat 17426, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(167, 'SMP Negeri 7 Bekasi', 'Pendidikan', 'SMP', 'Perumnas 2 Kayuringin, Jalan Belanak, Kayuringin Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17144, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(168, 'Sekolah Menengah Pertama Negeri 21 Bekasi', 'Pendidikan', 'SMP', 'Perumahan Villa Indah Permai Blok H, Teluk Pucung, Bekasi Utara, Tlk. Pucung, Bekasi Utara, Kota Bks, Jawa Barat 17121, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(169, 'Sekolah Menengah Pertama Negeri 37 Bekasi', 'Pendidikan', 'SMP', 'Jl. Padi Raya No.2, Kaliabang Tengah, Bekasi Utara, Kota Bks, Jawa Barat 17125, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(170, 'SMPN 3 Bekasi', 'Pendidikan', 'SMP', 'Jl. K.H. Agus Salim No.75, Bekasi Jaya, Bekasi Timur, Kota Bks, Jawa Barat 17112, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(171, 'SMP Negeri 20 Bekasi', 'Pendidikan', 'SMP', 'Jl. Felisia, Jatibening Baru, Bekasi, Kota Bks, Jawa Barat 17412, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(172, 'SMP Negeri 16 Bekasi', 'Pendidikan', 'SMP', 'Jalan Narogong Jaya, Taman Narogong Indah, Rawalumbu, Pengasinan, Kota Bks, Jawa Barat 17115, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(173, 'SMP Darma Patria', 'Pendidikan', 'SMP', 'Jl. Dahlia Jaya No.6, Jakasampurna, Bekasi Bar., Kota Bks, Jawa Barat 17145, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(174, 'SMP Negeri 6 Bekasi', 'Pendidikan', 'SMP', 'JL. Mesjid Nurul Ihsan, Jatiwaringin, Jatiwaringin, Pondokgede, Kota Bks, Jawa Barat 17411, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(175, 'Sekolah Menengah Pertama Negeri 6 Bekasi', 'Pendidikan', 'SMP', 'Jatiwaringin, Pondokgede, Bekasi City, West Java 17411, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(176, 'SMP Negeri 9 Bekasi', 'Pendidikan', 'SMP', 'Jalan Swatantra IV No.4, Jatiasih, Kota Bks, Jawa Barat 17423, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(177, 'SMP Widya Nusantara Bekasi', 'Pendidikan', 'SMP', 'Jl. Tri Satya No.42, Bojong Rawalumbu, Rawalumbu, Kota Bks, Jawa Barat 17116, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(178, 'SMP Negeri 39 Bekasi', 'Pendidikan', 'SMP', 'Jalan Wibawa Mukti 2, Jatiluhur, Jatiasih, Jatiluhur, Jatiasih, Kota Bks, Jawa Barat 17425, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(179, 'SMP Strada Bhakti Wiyata', 'Pendidikan', 'SMP', 'Jl. Bintara Raya No.38, Kranji, Bekasi Bar., Kota Bks, Jawa Barat 17134, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(180, 'SMP Negeri 41 Kota Bekasi', 'Pendidikan', 'SMP', 'Jl. Kp. Bojong Rw. Lumbu No.41, Bojong Rawalumbu, Rawalumbu, Kota Bks, Jawa Barat 17116, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(181, 'SMP Negeri 15 Bekasi', 'Pendidikan', 'SMP', 'JL. Raya Bulak Tinggi, Jatiwarna, Bekasi, Jaticempaka, Pondokgede, Bekasi City, West Java 13620, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(182, 'SMA Al Muhadjirin Bekasi', 'Pendidikan', 'SMA', 'Jatirahayu, Pondokmelati, Bekasi City, West Java 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(183, 'SMA Negeri 17 Bekasi', 'Pendidikan', 'SMA', 'Jalan Haji IIyas No.23, Jaka Mulya, Bekasi Selatan, Kota Bks, Jawa Barat 17146, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(184, 'SMA YPI 45 Bekasi', 'Pendidikan', 'SMA', 'Komplek Unisma, Jl. Cut Meutia No. 83, Margahayu, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(185, 'SMA Islam PB Soedirman 1 Bekasi', 'Pendidikan', 'SMA', 'Taman Galaxi Indah, Jl. Taman Soka II, Bekasi, Jawa Barat 16969, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(186, 'SMA Future Gate', 'Pendidikan', 'SMA', 'Komplek Pemda Jatiasih Blok A, Jl. Yudistira, Jatiasih, Kota Bks, Jawa Barat 17423, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(187, 'SMA Negeri 12 Bekasi', 'Pendidikan', 'SMA', 'Jl. Masjid Al-Ikhlas No.6, Kranji, Bekasi Bar., Kota Bks, Jawa Barat 17135, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(188, 'SMAN 5 Tambun Selatan', 'Pendidikan', 'SMA', 'Grand Wisata, Jl. Sunset Boulevard, Lambangsari, Tambun Selatan, Mustika Jaya, Mustikajaya, Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(189, 'Sekolah Menengah Atas Sandikta', 'Pendidikan', 'SMA', 'Jl. Raya Hankam No.208, Jatirahayu, Pondokmelati, Kota Bks, Jawa Barat 17414, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(190, 'SMA Muhammadiyah 9 Bekasi', 'Pendidikan', 'SMA', 'Jl. Kimangun Sarkoro No.45, Bekasi Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17112, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(191, 'Alexandria Islamic Senior High School', 'Pendidikan', 'SMA', 'Jl. Pengasinan Raya No.50, Rawa Lumbu, Bekasi Tim., Kota Bks, Jawa Barat 17115, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(192, 'SMA Negeri 17 Bekasi', 'Pendidikan', 'SMA', 'Jl. Peldatarmizi, Jaka Mulya, Bekasi Sel., Kota Bks, Jawa Barat 17146, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(193, 'Sekolah Menengah Atas Dan SMK Al - Muhadjirin', 'Pendidikan', 'SMA', 'Perumnas 3, Jalan P. Jawa Raya, Bekasi Timur, Aren Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(194, 'Sekolah Menengah Atas Yasfi', 'Pendidikan', 'SMA', 'Jl. Raya Kp. Sawah, Jatimurni, Pondokmelati, Kota Bks, Jawa Barat 17415, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(195, 'SMA Yadika 11 Jatirangga', 'Pendidikan', 'SMA', 'Jl. Lurah Namat, Jatirangga, Jatisampurna, Kota Bks, Jawa Barat 17434, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(196, 'SMA Malidar', 'Pendidikan', 'SMA', 'Pekayon Jaya, South Bekasi, Bekasi City, West Java 17424, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(197, 'SMA PANGUDI LUHUR 2', 'Pendidikan', 'SMA', 'Jl. Kampung Sawah, Jatimurni, Pondokmelati, Kota Bks, Jawa Barat 17431, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(198, 'SMAN 18 Bekasi', 'Pendidikan', 'SMA', 'Jalan rudal no. 18 perumahan duren jaya permai, Aren Jaya, Bekasi Timur, Kota Bekasi, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(199, 'SMA Sulthon Aulia Boarding School Bekasi', 'Pendidikan', 'SMA', 'Jl. Batu Tumbuh I, Kel. Jaticempaka, Kec. Pondok Gede, Kota Bks, Jawa Barat 17411, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(200, 'SMA Nasional 1', 'Pendidikan', 'SMA', 'Jl. Ring Rudal, Jatirahayu, Pondokmelati, Kota Bks, Jawa Barat 17414, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(201, 'Sekolah Menengah Atas Tamansiswa Bekasi', 'Pendidikan', 'SMA', 'Perum Bumi Bekasi Baru Utara, Jl. Selecta Raya No.2, Pengasinan, Rawalumbu, Kota Bks, Jawa Barat 17115, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(202, 'SMA Al-Muslim Bekasi', 'Pendidikan', 'SMA', 'Jl. Raya Setu, Kampung Bahagia, Tambun Selatan, Tambun, Tambun Sel., Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(203, 'SMA Daya Utama', 'Pendidikan', 'SMA', 'Jl. Raya Mustika Jaya No.47, Mustika Jaya, Mustikajaya, Kota Bks, Jawa Barat 17158, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(204, 'Sekolah Menengah Atas Pax Patriae', 'Pendidikan', 'SMA', 'Komplek Villa Galaxy, Jalan Gardenia Raya Blok BA2 No.41, Bekasi Selatan, Jaka Setia, Bekasi Sel., Kota Bks, Jawa Barat 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(205, 'Sekolah Menengah Atas Pangeran Jayakarta', 'Pendidikan', 'SMA', 'Jl. Jend Sudirman KM. 28, Buaran, Harapan Mulya, Medan Satria, Harapan Mulya, Medan Satria, Kota Bks, Jawa Barat 17143, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(206, 'Mutiara Baru Senior High School', 'Pendidikan', 'SMA', 'Jalan Pramuka No. 05, Sepanjang Jaya, Rawa Lumbu, Kota Bks, Jawa Barat 17114, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(207, 'Sekolah Menengah Umum Toga Terang', 'Pendidikan', 'SMA', 'Jl. Bintara Jaya No.9, RT.13/RW.3, Bintara Jaya, Bekasi Bar., Kota Bks, Jawa Barat 17136, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(208, 'KB-TK-SD-SMP-SMA-SMK GALAJUARA KOTA BEKASI', 'Pendidikan', 'SMA', 'Jalan Raya Kaliabang Tengah No.22, Kaliabang Tengah, Bekasi Utara, Kota Bks, Jawa Barat 17125, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(209, 'SMA Bina Siswa Utama Bekasi', 'Pendidikan', 'SMA', 'JL. Aster Raya, No. 15, Perum Harapan Baru, Jatirasa, Jatiasih, Kota Bks, Jawa Barat 17147, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(210, 'Sekolah Menengah Atas Global Prestasi', 'Pendidikan', 'SMA', 'Komplek GPS, Jl. KH. Noer Ali No.10B, Pekayon Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17145, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(211, 'SMA Taman Harapan 2', 'Pendidikan', 'SMA', 'Pejuang, Medan Satria, Bekasi City, West Java 17124, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(212, 'Sekolah Menengah Atas (SMA) SR Bekasi', 'Pendidikan', 'SMA', 'Jl. Babelan Raya, Kebalen, Babelan, Bekasi, Jawa Barat 17121, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(213, 'SMA Tunas Jakasampurna', 'Pendidikan', 'SMA', 'Jaka Setia, South Bekasi, Bekasi City, West Java 17147, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(214, 'Sekolah Menengah Atas Persada Plus Galajuara', 'Pendidikan', 'SMA', 'Jl. Raya Kaliabang Tengah No.20, Kaliabang Tengah, Bekasi Utara, Kota Bks, Jawa Barat 17125, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(215, 'TK-SD-SMP-SMA-SMK Travina Prima', 'Pendidikan', 'SMA', 'Jl. Raya Kaliabang Tengah No.10, Perwira, Bekasi Utara, Kota Bks, Jawa Barat 17125, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(216, 'SMA Hutama', 'Pendidikan', 'SMA', 'Jalan Raya Hankam No.68, Pondokmelati, Kota Bks, Jawa Barat 17414, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(217, 'Sekolah Menengah Atas Al-Ihsan', 'Pendidikan', 'SMA', 'Jl. Belut I, Kayuringin Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17144, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(218, 'SMA Strada', 'Pendidikan', 'SMA', 'Jl. Strada, Bintara, Bekasi Bar., Kota Bks, Jawa Barat 17134, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(219, 'SMAN 3 Bekasi', 'Pendidikan', 'SMA', 'Taman Galaxi Indah, Jalan Pulo Ribung Raya, Pekayon Jaya, Bekasi Selatan, Kota Bks, Jawa Barat 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(220, 'Sekolah Menengah Umum Galatia', 'Pendidikan', 'SMA', 'Jl. Boulevard Hijau Raya Blok A1 No.1, Pejuang, Medan Satria, Kota Bks, Jawa Barat 17131, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(221, 'Sekolah Menengah Atas Negeri 13 Bekasi', 'Pendidikan', 'SMA', 'Perum Bumi Bekasi Baru Utara, Jalan Pariwisata Raya, Pengasinan, Rawalumbu, Kota Bks, Jawa Barat 17115, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(222, 'Sekolah Menengah Atas Marsudirini Bekasi', 'Pendidikan', 'SMA', 'Jalan Raya Narogong No. 202, Kemang Pratama, Bojong Rawalumbu, Kota Bks, Jawa Barat 17116, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(223, 'SMA Negeri 11 Bekasi', 'Pendidikan', 'SMA', 'Komp Perwira Tinggi, Jalan Wibawa Mukti Kav. Pati TNI AU, Jatisari, Jatiasih, Jatisari, Jatiasih, Kota Bks, Jawa Barat 17426, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(224, 'SMA Negeri 8 Bekasi', 'Pendidikan', 'SMA', 'Jl. Irigasi No. 1, RT. 01 / RW. 21, Pekayon Jaya, Bekasi Selatan, Kota Bks, Jawa Barat 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png');
INSERT INTO `m_bisnis` (`id_bisnis`, `nama_bisnis`, `jenis`, `tipe`, `alamat`, `map_icon`) VALUES
(225, 'SMA Patriot', 'Pendidikan', 'SMA', 'Komplek Mas Naga Bintara Jaya, Jalan Kali Baru Timur, Kali Baru, Bekasi Barat, Kota Bks, Jawa Barat 17133, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(226, 'SMA Negeri 16 Bekasi', 'Pendidikan', 'SMA', 'Jl. Arteri Tol Jor Jatiwarna, Jatimelati, Pondokmelati, Jatimelati, Pondokmelati, Kota Bks, Jawa Barat 17415, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(227, 'SMA Korpri Bekasi', 'Pendidikan', 'SMA', 'Jalan Rumah Sakit Mekarsari, Bekasi Jaya, Bekasi Timur, Kota Bks, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(228, 'SMA PGRI 1 Bekasi', 'Pendidikan', 'SMA', 'Jl. Cirebon, Duren Jaya, Kota Bks, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(229, 'SMA Negeri 7 Bekasi', 'Pendidikan', 'SMA', 'Jalan Lingkar Tata Kota No.107, Jatisampurna, Kota Bks, Jawa Barat 17433, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(230, 'SMA Negeri 10 Bekasi', 'Pendidikan', 'SMA', 'Jalan Harapan Indah, Medan Satria, Kota Bks, Jawa Barat 17132, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(231, 'Sekolah Menengah Atas Negeri 6 Kota Bekasi', 'Pendidikan', 'SMA', 'Jl. Asri Lestari Raya, Jaka Setia, Bekasi Sel., Kota Bks, Jawa Barat 17147, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(232, 'SMA Bani Saleh Kota Bekasi', 'Pendidikan', 'SMA', 'Jalan Melati Raya 2 No.54, Bekasi Jaya, Bekasi Timur, Kota Bks, Jawa Barat 17112, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(233, 'SMAN 14 KOTA BEKASI', 'Pendidikan', 'SMA', 'Perum Alinda Kencana Permai, Jl. Ceri Raya, Kaliabang Tengah, Bekasi Utara, Kota Bks, Jawa Barat 17610, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(234, 'Sekolah Menengah Atas Santo Bellarminus Bekasi', 'Pendidikan', 'SMA', 'Jl. Kemangsari 4 No.97, Jatibening Baru, Pondokgede, Kota Bks, Jawa Barat 17412, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(235, 'Sekolah Menengah Atas PGRI 2 Kota Bekasi', 'Pendidikan', 'SMA', 'Gerbang Perum Tytyan Kencana, Jl. K.H. Muchtar Tabrani, Marga Mulya, Bekasi Utara, Kota Bks, Jawa Barat 17143, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(236, 'SMA Martia Bhakti', 'Pendidikan', 'SMA', 'Jl. Jend. Sudirman, Kayuringin Jaya, Bekasi Bar., Kota Bks, Jawa Barat 17143, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(237, 'SMP/SMA/SMK Yadika 9 Bintara Jaya', 'Pendidikan', 'SMA', 'Jl. Bintara Jaya Raya No. No.51, RT.3/RW.4, Bintara Jaya, Bekasi Bar., Kota Bks, Jawa Barat 17136, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(238, 'Sekolah Menengah Atas Widya Nusantara', 'Pendidikan', 'SMA', 'Jl. Tri Satya No.47, Bojong Rawalumbu, Rawalumbu, Kota Bks, Jawa Barat 17116, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(239, 'Sekolah Menengah Atas Negeri 2 Kota Bekasi', 'Pendidikan', 'SMA', 'Perumnas 2, Jl. Tangkuban Perahu No. 1, Bekasi Selatan, Kota Bks, Jawa Barat 17144, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(240, 'SMA ANANDA BEKASI', 'Pendidikan', 'SMA', 'Jl. Prof. Muhamad Yamin No.21, Duren Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(241, 'Akademi Kebidanan Kartika Mitra Husada', 'Pendidikan', 'Akademi', 'Jl Bekasi Timur IV, Kel. Cipinang Besar Utara Kec. Jatinegara, RT.7/RW.8, Cipinang Besar Utara, Jatinegara, Kota Jakarta Timur, DKI Jakarta 13410, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(242, 'Akademi Keperawatan (Akper) Royhan', 'Pendidikan', 'Akademi', 'JL. Raya Kranggan, RT. 03 RW. 05, No. 1, Jatiranggon, Jatiraden, Jatisampurna, Kota Bks, Jawa Barat 17433, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(243, 'Akademi Kebidanan Kartika Mitra Husada', 'Pendidikan', 'Akademi', 'No.1 Jatinegara Akademi Kebudanan Kartika Husada, Jl. Bekasi Tim. IV, RT.16/RW.7, Cipinang Besar Utara, DKI Jakarta, Kota Jakarta Timur, DKI Jakarta 13410, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(244, 'Akademi Kebidanan Bhakti Husada', 'Pendidikan', 'Akademi', 'Jl. Ki Hajar Dewantara No.14, Karangasih, Cikarang Utara, Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(245, 'Akademi Keperawatan Bhakti Husada Cikarang', 'Pendidikan', 'Akademi', 'JL. RE Martadinata, Cikarang Kota, Cikarang Utara, Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(246, 'Komplek Akademi TNI', 'Pendidikan', 'Akademi', 'Jalan Raya Bekasi No. 17, Cakung, RT.6/RW.1, Ujung Menteng, Cakung, Kota Jakarta Timur, DKI Jakarta 13960, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_recreational-71.png'),
(247, 'Komplek Mako Akademi TNI', 'Pendidikan', 'Akademi', 'Jalan Bekasi Raya No.15, Pulo Gadung, RT.8/RW.3, Jatinegara Kaum, Kota Jakarta Timur, DKI Jakarta 13250, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(248, 'Akademi Keperawatan Mitra Keluarga', 'Pendidikan', 'Akademi', 'Jl. Bekasi Tim. Raya, RT.16/RW.5, Cipinang, Kota Jakarta Timur, DKI Jakarta 13240, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(249, 'Akademi Teknik Otomotive', 'Pendidikan', 'Akademi', 'JL. Meranti, No. 1, Jatiwaringin, Makasar, Kota Bks, Jawa Barat 90222, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(250, 'Akademi Keperawatan Antariksa Jakarta', 'Pendidikan', 'Akademi', 'Gg. Harun 3 No.6A, Jatirahayu, Pondokmelati, Kota Bks, Jawa Barat 17414, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(251, 'Akademi Alkautsar', 'Pendidikan', 'Akademi', 'Jalan Pulo Ribung Raya No.2, Pekayon Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(252, 'Akademi Teknik Patriot', 'Pendidikan', 'Akademi', 'Jl Kalibaru Timur Bekasi Barat, Tlp 021-8854948, 8854947, Kali Baru, Medan Satria, Bekasi City, West Java 17132, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(253, 'Sekolah Tinggi Ilmu Kesehatan Mitra Keluarga', 'Pendidikan', 'Akademi', 'Jl. Pengasinan Rawa Semut, Margahayu, Bekasi Timur, Margahayu, Bekasi, Jawa Barat, 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(254, 'Akademi Radiognostik Dan Radioterapi Yapenpernus', 'Pendidikan', 'Akademi', 'JL. Pangasinan Raya, No. 72/73, Pondok Hijau, 17115, Pengasinan, Kota Bks, Jawa Barat 17115, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(255, 'Akademi Manajemen Informatika dan Komputer (AMIK) ', 'Pendidikan', 'Akademi', 'Jl. Raya Setu No.55, Tambun, Tambun Sel., Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(256, 'Akademi Koluchstyl Indonesia', 'Pendidikan', 'Akademi', 'Jl. Raya Jati Asih, Jatiasih, Kota Bks, Jawa Barat 17423, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(257, 'Akademi Bahasa Asing Borobudur', 'Pendidikan', 'Akademi', 'JL. Raya Kalimang No.1, Jatibening Baru, Pondokgede, Kota Bks, DKI Jakarta 13910, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(258, 'STBA JIA (Sekolah Tinggi Bahasa Asing JIA)', 'Pendidikan', 'Akademi', 'Jalan Cut Mutia Raya No.30, Margahayu, Bekasi Timur, Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(259, 'ATMI Cikarang', 'Pendidikan', 'Akademi', 'Jl. Kampus Hijau No. 3, Kawasan Jababeka Education Park, Cikarang Baru, Simpangan, Cikarang Utara, Bekasi, Jawa Barat 17520, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(260, 'Akademi Manajemen Informatika Komputer Cikarang', 'Pendidikan', 'Akademi', 'Jl. Kapt Sumantri 16, Bekasi, 17142, Cikarang Kota, North Cikarang, Bekasi, West Java 16830, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(261, 'Akademi Komunitas Presiden', 'Pendidikan', 'Akademi', 'K. H., Jl. Ki Hajar Dewantara, Karangasih, Cikarang Utara, Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(262, 'Bina Sarana Informatika (BSI)', 'Pendidikan', 'Akademi', 'Jalan Cut Meutia No. 88, Sepanjang Jaya, Rawalumbu, Kota Bks, Jawa Barat 17114, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(263, 'Akademi Kebidanan Farama Mulya', 'Pendidikan', 'Akademi', 'Jalan Raya Hankam No. 9, Jatiwarna, Pondokmelati, Jatiwarna, Pondokmelati, Kota Bks, Jawa Barat 17415, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(264, 'Perguruan Tinggi Bina Insani', 'Pendidikan', 'Akademi', 'Jl. Raya Siliwangi No. 6, Rawa Panjang, Sepanjang Jaya, Bekasi, Kota Bks, Jawa Barat 45121, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(265, 'Akademi Kebidanan Gema Nusantara Bekasi', 'Pendidikan', 'Akademi', 'Jalan Kapuk Raya No.1, Pengasinan, Rawalumbu, Pengasinan, Kota Bks, Jawa Barat 17115, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(266, 'Akademi Kebidanan Suka Wangi Bekasi', 'Pendidikan', 'Akademi', 'Jl. Pemuda No.11, Kranji, Bekasi Bar., Kota Bks, Jawa Barat 17135, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(267, 'Akademi Bina Insani', 'Pendidikan', 'Akademi', 'Jl. Jend A Yani Kayuringin Jaya Bekasi Selatan Bekasi Jawa Barat, Harapan Mulya, Medan Satria, Kota Bks, Jawa Barat 17143, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(268, 'Akademi Kebidanan Prima Indonesia', 'Pendidikan', 'Akademi', 'Jl. Raya Bintara 4 B, Bintara, Bekasi Bar., Kota Bks, Jawa Barat 17134, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(269, 'Akademi Perdagangan Bandung', 'Pendidikan', 'Akademi', 'Jl. Bintara Jaya VIII No.11, Bintara Jaya, Bekasi Bar., Kota Bks, Jawa Barat 17136, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(270, 'Akademi Keuangan Dan Perbankan Indonesia', 'Pendidikan', 'Akademi', 'Jl. Ir H Juanda 111-E-G Aren Jaya Bekasi Timur Bekasi Jawa Barat, Duren Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(271, 'Akademi Kebidanan Bhakti Pertiwi Indonesia', 'Pendidikan', 'Akademi', 'Jl. Jeruk Raya No.15, RW.1, Kota Baru, Bekasi Bar., Kota Bks, DKI Jakarta 12620, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(272, 'Akademi Perawat Bani Saleh', 'Pendidikan', 'Akademi', 'JL. RA Kartini, 66 RT 002/02, Bekasi, 17113, Margahayu, East Bekasi, Bekasi City, West Java 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(273, 'Akademi Keuangan Dan Perbankan Indonesia', 'Pendidikan', 'Akademi', 'JL Ir H Juanda No.111-E, Duren Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(274, 'Akademi Manajemen Informatika Dan Komputer Sultan ', 'Pendidikan', 'Akademi', 'Jl. Ir H Juanda 139 RT 005 RW 01 Bekasi Jaya Bekasi Timur Bekasi Jawa Barat, Tlk. Pucung, Bekasi Utara, Kota Bks, Jawa Barat 17121, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(275, 'Akademi Teknologi Patriot', 'Pendidikan', 'Akademi', 'Jl. Kalibaru Timur Bekasi, Harapan Mulya, Medan Satria, Kota Bks, Jawa Barat 17133, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(276, 'Akademi Komunikasi Radio Dan Televisi Hutama', 'Pendidikan', 'Akademi', 'Jl Hankam No 37 Pondok Gede Bekasi, Tlp 021-84990824, Jatirahayu, Pondokmelati, Bekasi City, West Java 17414, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(277, 'Akademi Sekretari Dan Manajemen Insulindo', 'Pendidikan', 'Akademi', 'JL. Juanda, No. 240, 17113, Bekasi Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(278, 'Akademi Rontgen (ATRO) Persada Nusantara Bekasi', 'Pendidikan', 'Akademi', 'Jl. Kapuk Raya, Pengasinan, Rawalumbu, Kota Bks, Jawa Barat 17115, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(279, 'Akademi Keperawatan As-Syafi''Iyah', 'Pendidikan', 'Akademi', 'RW.3, Jatiwaringin, Pondokgede, Kota Bks, Jawa Barat 17411, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(280, 'Akademi Keperawatan', 'Pendidikan', 'Akademi', 'Jaticempaka, Pondokgede, Bekasi City, West Java 13620, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(281, 'Akademi Keperawatan Mitra Keluarga', 'Pendidikan', 'Akademi', 'Bekasi 1 No.15A, RT.5/RW.3, Rw. Bunga, Jatinegara, Kota Jakarta Timur, DKI Jakarta 13110, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(282, 'Akademi Rontgen', 'Pendidikan', 'Akademi', 'Ruko Namira, Jl. Pengasinan Raya No.72/73, Pengasinan, Rawalumbu, Bekasi, Jawa Barat 17115, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(283, 'Institut Teknologi dan Sains Bandung', 'Pendidikan', 'Institut', 'Kota Deltamas Lot-A1 CBD, Jl. Ganesha Boulevard, Cikarang Pusat, Pasirranji, Cikarang Pusat, Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(284, 'STIAMI Bekasi', 'Pendidikan', 'Institut', 'Jl. Jendral Sudirman KM. 32 No. 37, Bekasi Selatan, Harapan Mulya, Medan Satria, Kota Bks, Jawa Barat 17143, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(285, 'Institut Bisnis Muhammadiyah Bekasi', 'Pendidikan', 'Institut', 'Jalan jend. Ahmad yani blok b2 nomor 11 & 22, sentra niaga kalimalang, bekasi, Kayuringin Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17144, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(286, 'Institut Agama Islam Shalahuddin Al-Ayyubi (INISA)', 'Pendidikan', 'Institut', 'Jl. Sultan Hasanudin No.203, Tambun, Tambun Sel., Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(287, 'Institut Jepang Indonesia Amerika', 'Pendidikan', 'Institut', 'Jl. Raya Cut Meutia Margahayu Bekasi Timur Bekasi Jawa Barat, Duren Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(288, 'Institut Ilmu Sosial dan Manajemen STIAMI, Kampus ', 'Pendidikan', 'Institut', 'Jalan Industri No.18A, Cikarang Utara, Karangbaru, Cikarang Utara, Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(289, 'institut carrefour indonesia juanda Bekasi', 'Pendidikan', 'Institut', 'Jl. Ir. H. Juanda No.183, Margahayu, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(290, 'Institut Hypnotis Hypnotherapi Indonesia', 'Pendidikan', 'Institut', 'jl dewi sartika Bekasi, bekasi, Margahayu, East Bekasi, Bekasi City, West Java 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(291, 'LBH Institut Trias Politika RI', 'Pendidikan', 'Institut', 'Perumahan Graha Prima Blok IE 1 No. 1, JL Cendana Raya, Tambun, Tambun Utara, Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(292, 'English Club Institut Empowfring Community', 'Pendidikan', 'Institut', 'JL Letnan Arsyad 2, RT 01 RW 01, Kayuringin Jaya, Bekasi Selatan, Kayuringin Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17144, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(293, 'Politeknik Gunakarya Indonesia', 'Pendidikan', 'Politeknik', 'Grand Center Blok D No 24-27, Jl. Cut Mutia, Margahayu, Bekasi, Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(294, 'Politeknik Gunakarya Indonesia', 'Pendidikan', 'Politeknik', 'Ruko Sentra Kuning Blok B No.13-14, Jalan Raya Cibarusah, Cikarang, Sukaresmi, Cikarang Sel., Bekasi, Jawa Barat 17550, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(295, 'Politeknik LP3I Jakarta Kampus Bekasi | LP3I Bekas', 'Pendidikan', 'Politeknik', 'Jl. Jendral Sudirman Grand mall Blok A1-2, Kranji, Medan Satria, Kota Bks, Jawa Barat 17135, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(296, 'Politeknik Kelapa Sawit Citra Widya Edukasi', 'Pendidikan', 'Politeknik', 'Jalan Gapura No. 8, Rawa Banteng, Cibuntu, Cibitung, Bekasi, Jawa Barat 17520, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(297, 'Sekolah Tinggi Duta Bangsa', 'Pendidikan', 'Sekolah Tinggi', 'JL. Kalibaru Timur, Medan Satria, 17133, Kali Baru, Medan Satria, Kota Bks, Jawa Barat 17132, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(298, 'STEI Sekolah Tinggi Ilmu Ekonomi Indonesia', 'Pendidikan', 'Sekolah Tinggi', 'Jl. Pramuka No.17, Marga Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17141, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(299, 'Sekolah Tinggi Teologi Harapan Indah', 'Pendidikan', 'Sekolah Tinggi', 'Ruko Sentra Onderdil 1 Blok EL No. 3, JL Raya Bekasi, Harapan Indah, Pejuang, Medan Satria, Kota Bks, Jawa Barat 17131, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(300, 'Sekolah Tinggi Agama Islam Nur El-Ghazy', 'Pendidikan', 'Sekolah Tinggi', 'Jl. Simpang Tiga No.32, Tambun, Kampung Bahagia, Margahayu, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(301, 'Sekolah Tinggi Bahasa Asing Intensive English Cour', 'Pendidikan', 'Sekolah Tinggi', 'Jl. Ir. H. Juanda No. 81 Margahayu Bekasi Timur Bekasi Jawa Barat, Margahayu, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(302, 'stt bina tunggal', 'Pendidikan', 'Sekolah Tinggi', 'Jl. H. Wahab Affan No.1, Medan Satria, Kota Bks, Jawa Barat 17132, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(303, 'STIKES Abdi Nusantara', 'Pendidikan', 'Sekolah Tinggi', 'Jalan Kubah Putih No. 7 RT.01/RW.14, Jatibening, Pondok Gede, Kota Bks, Jawa Barat 17412, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(304, 'STIE Bisnis Internasional Indonesia', 'Pendidikan', 'Sekolah Tinggi', 'Jl. Sultan Hasanudin No.5A, Mekarsari, Tambun, Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(305, 'Sekolah Tinggi Ilmu Kesehatan Medika Cikarang', 'Pendidikan', 'Sekolah Tinggi', 'JL. Raya Industri, Cikarang, Pasirsari, Cikarang Sel., Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(306, 'STMIK Pranata Indonesia', 'Pendidikan', 'Sekolah Tinggi', 'Jl. Cut Mutia Raya No.28, Margahayu, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(307, 'STTJ', 'Pendidikan', 'Sekolah Tinggi', 'Jaticempaka, Pondokgede, Bekasi City, West Java 13620, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(308, 'Sekolah Tinggi Ilmu Ekonomi Indoneisa (Kamus D)', 'Pendidikan', 'Sekolah Tinggi', 'Ruko Sun City, JL. M. Hasibuan, Blok A 35, Marga Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17141, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(309, 'Sekolah Tinggi Manajemen Informatika dan Komputer ', 'Pendidikan', 'Sekolah Tinggi', 'JL. Kyai Haji Agus Salim, 17112, Bekasi Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17112, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(310, 'Sekolah Tinggi Manajemen T. Malahayati', 'Pendidikan', 'Sekolah Tinggi', 'Jl. Mayor Madmuin Hasibuan, Marga Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17141, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(311, 'Gedung Pusat Belajar Kh.noer Alie Sekolah Tinggi A', 'Pendidikan', 'Sekolah Tinggi', 'Jl. KH. Noer Alie Jl. Ujung Harapan, Bahagia, Babelan, Bekasi, Jawa Barat 17612, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(312, 'Sekolah Tinggi Ilmu Ekonomi (STIE) Tri Buana', 'Pendidikan', 'Sekolah Tinggi', 'Jl. Raya Kranggan, Jatiraden, Jatisampurna, Kota Bks, Jawa Barat 17433, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(313, 'Akademik dan Sekolah Tinggi Galajuara', 'Pendidikan', 'Sekolah Tinggi', 'Jl. Raya Kaliabang Tengah No.20, Kaliabang Tengah, Bekasi Utara, Kota Bks, Jawa Barat 17125, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(314, 'Sekolah Tinggi Ingress Yanto Terbuka', 'Pendidikan', 'Sekolah Tinggi', 'Jl. Raya Kalimalang No.19, Jakasampurna, Bekasi Bar., Kota Bks, Jawa Barat 17145, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(315, 'Sekolah Tinggi Management IMMI S1', 'Pendidikan', 'Sekolah Tinggi', 'Jl. Kali Manggis, Jatikarya, Jatisampurna, Kota Bks, Jawa Barat 17435, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(316, 'Sekolah Tinggi Ilmu Ekonomi DWIPA Wacana', 'Pendidikan', 'Sekolah Tinggi', 'Ruko Sentra Niaga Aneka, Jalan Raya Pejuang, Pejuang, Medan Satria, Bekasi, Jawa Barat 17131, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(317, 'Sekolah Tinggi Ilmu Ekonomi " Kalpataru"', 'Pendidikan', 'Sekolah Tinggi', 'Jl. Pramuka Raya No.17, Sepanjang Jaya, Rawalumbu, Kota Bks, Jawa Barat 17114, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(318, 'Sekolah Tinggi Bahasa Asing Intensive English Cour', 'Pendidikan', 'Sekolah Tinggi', 'Jl. Bekasi Timur Raya No.30, RT.3/RW.14, Cipinang, Pulo Gadung, Kota Jakarta Timur, DKI Jakarta 13240, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(319, 'Sekolah Tinggi Teknologi Jakarta (STTJ)', 'Pendidikan', 'Sekolah Tinggi', 'Jl. Jatiwaringin Raya No.42, Jatiwaringin, Pondokgede, Kota Bks, Jawa Barat 17411, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(320, 'Sekolah Tinggi Agama Islam Nur El-Ghazy', 'Pendidikan', 'Sekolah Tinggi', 'Jl. Raya Setu, Tambun, Tambun Sel., Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(321, 'Sekolah Tinggi Ilmu Ekonomi Dwipawacana', 'Pendidikan', 'Sekolah Tinggi', 'Jalan Raya Akses Pintu Tol Cibitung No.50, Gandasari, Cikarang Bar., Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(322, 'Sekolah Tinggi Ilmu Da''wah Muhammad Natsir', 'Pendidikan', 'Sekolah Tinggi', 'Jl. Kp. Bulu No.4, Setiamekar, Tambun Sel., Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(323, 'SMPN 3 Bekasi', 'Pendidikan', 'Sekolah Tinggi', 'Jl. K.H. Agus Salim No.75, Bekasi Jaya, Bekasi Timur, Kota Bks, Jawa Barat 17112, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(324, 'Sekolah Menengah Pertama Negeri (SMPN) 36 Bekasi', 'Pendidikan', 'Sekolah Tinggi', 'JL Cipendawa, Rawalumbu, Bojong Menteng, Bojong Menteng, Kota Bks, Jawa Barat 17117, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(325, 'Sekolah Tinggi Teknik Texmaco', 'Pendidikan', 'Sekolah Tinggi', 'Ruko Central Cikarang, Jl. Raya Cikarang Cibarusah Blok C No.20, Sukaresmi, Cikarang Sel., Bekasi, Jawa Barat 17550, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(326, 'Sekolah Tinggi Dariwisata Sahid', 'Pendidikan', 'Sekolah Tinggi', 'Ruko Union, Jl. Moh. H. Thamrin Blok C No.12, Cibatu, Cikarang Sel., Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(327, 'Sekolah Tinggi Ilmu Ekonomi Paripurna', 'Pendidikan', 'Sekolah Tinggi', 'JL. Industri Raya, No. 81, Cikarang, Bekasi, 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(328, 'Koperasi Pegawai Sekolah Tinggi Ilmu Pelayaran', 'Pendidikan', 'Sekolah Tinggi', 'JL. Marunda Makmur, RT 001/01, Bekasi, 17630, Sagara Makmur, Tarumajaya, Bekasi, West Java 17211, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(329, 'STKIP Panca Sakti Program Studi Pendidikan Ekonomi', 'Pendidikan', 'Sekolah Tinggi', 'Jatirahayu, Pondokmelati, Bekasi City, West Java 17414, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(330, 'LP3T Nurul Fikri', 'Pendidikan', 'Sekolah Tinggi', 'Jl. Ciremai Raya No.217, Kayuringin Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17144, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(331, 'Sekolah Tinggi Teknologi Informatika', 'Pendidikan', 'Sekolah Tinggi', 'Karangbaru, North Cikarang, Bekasi, West Java 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(332, 'Sekolah Menengah Pertama Terbuka (SMPIT) AS Suadah', 'Pendidikan', 'Sekolah Tinggi', 'JL. Pondok Ungu Permai, No. 57, Komplek. Cendrabaga, Blok. A, Kaliabang Tengah, Bekasi Utara, Kota Bks, Jawa Barat 17125, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(333, 'Pendidikan Guru Sekolah Dasar Yayasan Pendidikan I', 'Pendidikan', 'Sekolah Tinggi', 'Kompleks Unisma, Jl. Cut Mutia Raya No.83, Margahayu, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(334, 'STIE Pertiwi', 'Pendidikan', 'Sekolah Tinggi', 'Jalan Ir. Haji Juanda No.133, Bekasi Timur, Bekasi Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(335, 'STKIP Panca Sakti', 'Pendidikan', 'Sekolah Tinggi', 'Jl. Lap. Multiguna No.3, Margahayu, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(336, 'Universitas Muhammadiyah', 'Pendidikan', 'Universitas', 'No., Jl. Ki Mangun Sarkoro No.55, Bekasi Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17112, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(337, 'STBA JIA (Sekolah Tinggi Bahasa Asing JIA)', 'Pendidikan', 'Sekolah Tinggi', 'Jalan Cut Mutia Raya No.30, Margahayu, Bekasi Timur, Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(338, 'Perguruan Tinggi Bina Insani', 'Pendidikan', 'Sekolah Tinggi', 'Jl. Raya Siliwangi No. 6, Rawa Panjang, Sepanjang Jaya, Bekasi, Kota Bks, Jawa Barat 45121, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(339, 'Sekolah Tinggi Transportasi Darat', 'Pendidikan', 'Sekolah Tinggi', 'Jl. Raya Setu No.40, Cibuntu, Cibitung, Bekasi, Jawa Barat 17520, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(340, 'Sekolah Tinggi Pelita Bangsa', 'Pendidikan', 'Sekolah Tinggi', 'Jalan Inspeksi Kali Malang - Tegal Danas, Cikarang, Cibatu, Cikarang Sel., Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(341, 'STIE Mulia Pratama', 'Pendidikan', 'Sekolah Tinggi', 'Jalan Haji Mulyadi Joyomartono Kav. 5, Margahayu, Bekasi Timur, Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(342, 'STT LETS (Sekolah Tinggi Teologi LETS)', 'Pendidikan', 'Sekolah Tinggi', 'Jl. KH. Noer Ali, Jakasampurna, Bekasi Bar., Kota Bks, Jawa Barat 17145, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(343, 'SEKOLAH TINGGI TEKNIK DUTA BANGSA', 'Pendidikan', 'Sekolah Tinggi', 'Ruko CBD, Jalan Niaga Raya Blok A-10-A-12, Mekarmukti, Cikarang Utara, Pasirsari, Cikarang Sel., Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(344, 'Sekolah Tinggi Ilmu Kesehatan Mitra Keluarga', 'Pendidikan', 'Sekolah Tinggi', 'Jl. Pengasinan Rawa Semut, Margahayu, Bekasi Timur, Margahayu, Bekasi, Jawa Barat, 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(345, 'Sekolah Tinggi Ilmu Kesehatan Persada Husada Indon', 'Pendidikan', 'Sekolah Tinggi', 'Jalan Nyai Dewi Mayangsari, Jatisari, Jatiasih, Kota Bekasi, Jatisari, Jatiasih, Kota Bks, Jawa Barat 17426, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(346, 'Sekolah Tinggi Ilmu Administrasi Sandikta', 'Pendidikan', 'Sekolah Tinggi', 'Jalan Raya Hankam No.208, Jatirahayu, Pondokmelati, Jatirahayu, Pondokmelati, Kota Bks, Jawa Barat 17414, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(347, 'STMIK MIKAR', 'Pendidikan', 'Sekolah Tinggi', 'Jl. M. Hasibuan No. 5, Margahayu, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(348, 'Sekolah Tinggi Agama Islam Bani Saleh', 'Pendidikan', 'Sekolah Tinggi', 'Jl. Raya Fatahillah, Cikarang Barat Bekasi, Kalijaya, Cikarang Bar., Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(349, 'STMIK Mercusuar', 'Pendidikan', 'Sekolah Tinggi', 'Jatiwaringin 144, Pondokgede, Kota Bekasi, Jawa Barat 17411, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(350, 'Sekolah Tinggi Ilmu Manajemen (STIM) Budi Bakti', 'Pendidikan', 'Sekolah Tinggi', 'Ruko Grand Mall Bekaso Blok D No, Jl. Jend. Sudirman No.36, Harapan Mulya, Medan Satria, Kota Bks, Jawa Barat 17143, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(351, 'Trisakti School of Management - Bekasi', 'Pendidikan', 'Sekolah Tinggi', 'Jalan Siliwangi No.74, Sepanjang Jaya, Rawalumbu, Kota Bks, Jawa Barat 17114, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(352, 'STKIP Kusuma Negara, Kampus B', 'Pendidikan', 'Sekolah Tinggi', 'Jalan Bintara Raya V, Bintara, Bekasi Barat, Bintara, Bekasi Bar., Kota Bks, Jawa Barat 17134, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(353, 'Sekolah Tinggi Ilmu Kesehatan Medistra Indonesia', 'Pendidikan', 'Sekolah Tinggi', 'Jalan Cut Mutia Raya No.88A, Sepanjang Jaya, Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(354, 'Sekolah Tinggi Ilmu Manajemen Budi Bakti', 'Pendidikan', 'Sekolah Tinggi', 'Jl. Lingkar Jati I Blok D, Duren Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(355, 'Sekolah Tinggi Manajemen Informatika Dan Komputer ', 'Pendidikan', 'Sekolah Tinggi', 'Jl. Cut Mutiah 28 A-B Aren Jaya Bekasi Timur Bekasi Jawa Barat, Bekasi Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(356, 'Sekolah Tinggi Teologi Bethesda', 'Pendidikan', 'Sekolah Tinggi', 'JL. Boulevar Hijau, Blok B.1/30, Sentra Niaga III, 17131, RT.10/RW.8, Pusaka Rakyat, Tarumajaya, Bekasi, Jawa Barat 17131, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(357, 'Universitas Mercusuar', 'Pendidikan', 'Universitas', 'Jl. Jatiwaringin Raya No. 148 Jati Waringin Pondok Gede Bekasi Jawa Barat, Jatimakmur, Pondokgede, Kota Bks, Jawa Barat 17413, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(358, 'STIAMI Bekasi', 'Pendidikan', 'Universitas', 'Jl. Jendral Sudirman KM. 32 No. 37, Bekasi Selatan, Harapan Mulya, Medan Satria, Kota Bks, Jawa Barat 17143, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(359, 'Kampus 2, Fakultas Ekonomi UIA', 'Pendidikan', 'Universitas', 'Jl. Jatiwaringin Raya No.87, Jaticempaka, Pondokgede, Kota Bks, Jawa Barat 17411, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(360, 'Assyafi''iyah Kampus Jatiwaringin', 'Pendidikan', 'Universitas', 'Jl. Jatiwaringin Raya No.12, Jaticempaka, Pondokgede, Kota Bks, Jawa Barat 17411, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(361, 'Universitas Mercubuana Gedung 2 Kampus Bekasi', 'Pendidikan', 'Universitas', 'Jl. Rw. Dolar No.45, Jatiraden, Jatisampurna, Kota Bks, Jawa Barat 17433, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(362, 'Universitas Islam As-Syafiiyah', 'Pendidikan', 'Universitas', 'Jl. Raya Cikarang Cibarusah, Sindangmulya, Cibarusah, Bekasi, Jawa Barat 17340, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(363, 'UNIVERSITAS ISLAM "45" BEKASI', 'Pendidikan', 'Universitas', 'Jalan Cut Mutia Raya No. 83, Margahayu, Bekasi Timur, Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(364, 'Universitas Kristen Krida Wacana (UKRIDA) Kampus I', 'Pendidikan', 'Universitas', 'Robson Square Blok B/7, Jl. Mohammad Husni Thamrin, Lippo Cikarang, Cibatu, Cikarang Sel., Bekasi, Jawa Barat 17550, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(365, 'Politeknik Kelapa Sawit Citra Widya Edukasi', 'Pendidikan', 'Universitas', 'Jalan Gapura No. 8, Rawa Banteng, Cibuntu, Cibitung, Bekasi, Jawa Barat 17520, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(366, 'STMIK Bina Insani', 'Pendidikan', 'Universitas', 'Jl. Siliwangi (Narogong) No. 28, Rawa Lumbu, Sepanjang Jaya, Kota Bks, Jawa Barat 17114, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(367, 'Politeknik Gunakarya Indonesia', 'Pendidikan', 'Universitas', 'Grand Center Blok D No 24-27, Jl. Cut Mutia, Margahayu, Bekasi, Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(368, 'STIE Tribuana', 'Pendidikan', 'Universitas', 'Jl. Radio, Margahayu, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(369, 'Bina Sarana Informatika (BSI)', 'Pendidikan', 'Universitas', 'Jalan Cut Meutia No. 88, Sepanjang Jaya, Rawalumbu, Kota Bks, Jawa Barat 17114, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(370, 'Trisakti School of Management - Bekasi', 'Pendidikan', 'Universitas', 'Jalan Siliwangi No.74, Sepanjang Jaya, Rawalumbu, Kota Bks, Jawa Barat 17114, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(371, 'Universitas', 'Pendidikan', 'Universitas', 'Jl. Raya Pd. Gede, Jatiwaringin, Pondokgede, Kota Bks, Jawa Barat 17411, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(372, 'Universitas Mercubuana', 'Pendidikan', 'Universitas', 'Jl. Mujair No.31, Jatiraden, Jatisampurna, Kota Bks, Jawa Barat 17432, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(373, 'Fakultas Ekonomi Unisma Bekasi', 'Pendidikan', 'Universitas', 'Jl. Cut Mutia Raya, Margahayu, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(374, 'Stima Immi', 'Pendidikan', 'Universitas', 'Komplek Pertokoan Modern, JL. Alternatif Cibubur, No. 16A, Cibubur, Jatikarya, Jatisampurna, Kota Bks, Jawa Barat 17435, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(375, 'Institut Teknologi dan Sains Bandung', 'Pendidikan', 'Universitas', 'Kota Deltamas Lot-A1 CBD, Jl. Ganesha Boulevard, Cikarang Pusat, Pasirranji, Cikarang Pusat, Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(376, 'Bina Sarana Informatika', 'Pendidikan', 'Universitas', 'Jalan Raya Jatiwaringin No. 18, Jatiwaringin, Pondok Gede, Kota Bks, Jawa Barat 17411, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(377, 'STKIP Titian Ilmu Bekasi', 'Pendidikan', 'Universitas', 'Jalan Raya Cipendawa, Bojong Menteng, Kota Bks, Jawa Barat 17117, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(378, 'Sekolah Tinggi Ilmu Manajemen (STIM) Budi Bakti', 'Pendidikan', 'Universitas', 'Ruko Grand Mall Bekaso Blok D No, Jl. Jend. Sudirman No.36, Harapan Mulya, Medan Satria, Kota Bks, Jawa Barat 17143, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(379, 'Binus University Bekasi', 'Pendidikan', 'Universitas', 'Jl. Al-Ikhlas II No.5, Marga Mulya, Bekasi Utara, Kota Bks, Jawa Barat 17124, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(380, 'Universitas Negeri Jakarta', 'Pendidikan', 'Universitas', 'Setia Asih, Tarumajaya, Bekasi, West Java 17215, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(381, 'STTJ', 'Pendidikan', 'Universitas', 'Jl. Raya Pd. Gede, Jatiwaringin, Pondokgede, Kota Bks, Jawa Barat 17411, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(382, 'Jurusan Teknik Komputer', 'Pendidikan', 'Universitas', 'Teluk Pucung, North Bekasi, Bekasi City, West Java 17121, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(383, 'Mercu Buana', 'Pendidikan', 'Universitas', 'Universitas Mercu Buana Gedung Menara Lt. 1, Jalan Meruya Selatan No. 1, RT.4/RW.1, Meruya Selatan, Kembangan, Jakarta Barat, DKI Jakarta 11650, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(384, 'STKIP Kusuma Negara, Kampus B', 'Pendidikan', 'Universitas', 'Jalan Bintara Raya V, Bintara, Bekasi Barat, Bintara, Bekasi Bar., Kota Bks, Jawa Barat 17134, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(385, 'UNIVERSITAS GUNA DARMA J4', 'Pendidikan', 'Universitas', 'Jl. Kemang Pratama Raya, Kota Bks, Jawa Barat, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(386, 'Fakultas Hubungan Masyarakat', 'Pendidikan', 'Universitas', 'Pondok Melati Bekasi, Jl. Hankam Raya, Jatirahayu, Pondokmelati, Kota Bks, DKI Jakarta 17414, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(387, 'STIU Darul Hikmah', 'Pendidikan', 'Universitas', 'Kp. Cakung RT01/05 Jatiasari Jatiasih, Jl. Wibawa Mukti II, Jatisari, Jatiasih, Kota Bks, Jawa Barat 17426, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(388, 'Universitas Muhammadiyah', 'Pendidikan', 'Universitas', 'No., Jl. Ki Mangun Sarkoro No.55, Bekasi Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17112, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(389, 'Universitas Bhayangkara Jakarta Raya Kampus II', 'Pendidikan', 'Universitas', 'Jalan Raya Perjuangan, Marga Mulya, Bekasi Utara, Bekasi, Jawa Barat 17121, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(390, 'President University', 'Pendidikan', 'Universitas', 'Jalan Ki Hajar Dewantara RT. 2 / RW. 4, Mekarmukti, Cikarang Utara, Bekasi, Jawa Barat 17550, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(391, 'University Esa Unggul Bekasi Harapan Indah', 'Pendidikan', 'Universitas', 'Komplek Office Park Blok 5 No. 11 - 17, Jalan Harapan Indah Boulevard, Harapan Mulya, Medan Satria, Kota Bks, Jawa Barat 17132, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(392, 'Universitas Islam As-Syafi''iyah', 'Pendidikan', 'Universitas', 'Jl. Jatiwaringin Raya No. 12, Pondokgede, Kota Bks, Jawa Barat 17411, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(393, 'Universitas Satya Negara Indonesia - Kampus B', 'Pendidikan', 'Universitas', 'Jalan H Jampang No. 91, Jatimulya, Tambun Selatan, Jatimulya, Tambun Sel., Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(394, 'Gunadarma J1 Kalimalang', 'Pendidikan', 'Universitas', 'Gunadarma Kalimalang Kampus J, Jalan Kyai Haji Noer Alie, Bekasi Selatan, Jakasampurna, Bekasi Bar., Kota Bks, Jawa Barat 17145, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(395, 'Sekolah Tinggi Pelita Bangsa', 'Pendidikan', 'Universitas', 'Jalan Inspeksi Kali Malang - Tegal Danas, Cikarang, Cibatu, Cikarang Sel., Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(396, 'Fakultas Sastra', 'Pendidikan', 'Universitas', 'Gunadarma Kalimalang Kampus J, Jl. KH. Noer Ali, Jakasampurna, Bekasi Sel., Kota Bks, Jawa Barat 17145, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(397, 'MERCU BUANA UNIVERSITY', 'Pendidikan', 'Universitas', 'Jalan Raya Kranggan No. 6, Jatiraden, Jatisampurna, Kota Bks, Jawa Barat 17432, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(398, 'Universitas Bhayangkara', 'Pendidikan', 'Universitas', 'Bekasi, Bekasi City, West Java, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(399, 'STBA JIA (Sekolah Tinggi Bahasa Asing JIA)', 'Pendidikan', 'Universitas', 'Jalan Cut Mutia Raya No.30, Margahayu, Bekasi Timur, Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(400, 'STIE Tri Bhakti', 'Pendidikan', 'Universitas', 'Jl. Teuku Umar No.24, Sepanjang Jaya, Rawalumbu, Kota Bks, Jawa Barat 17114, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(401, 'Sekolah Tinggi Ilmu Kesehatan Mitra Keluarga', 'Pendidikan', 'Universitas', 'Jl. Pengasinan Rawa Semut, Margahayu, Bekasi Timur, Margahayu, Bekasi, Jawa Barat, 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(402, 'STMIK Mercusuar', 'Pendidikan', 'Universitas', 'Jatiwaringin 144, Pondokgede, Kota Bekasi, Jawa Barat 17411, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(403, 'Kampus B STID Mohammad Natsir', 'Pendidikan', 'Universitas', 'Jalan Kampung Bulu No.4, Tambun Selatan, Setiamekar, Tambun Sel., Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(404, 'STIE Pertiwi', 'Pendidikan', 'Universitas', 'Jalan Ir. Haji Juanda No.133, Bekasi Timur, Bekasi Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(405, 'Universitas Gunadarma Kampus J2', 'Pendidikan', 'Universitas', 'Jalan Cemara Raya No.57, Jakasampurna, Bekasi Barat, Kota Bks, Jawa Barat 17145, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(406, 'Institut Agama Islam Shalahuddin Al-Ayyubi (INISA)', 'Pendidikan', 'Universitas', 'Jl. Sultan Hasanudin No.203, Tambun, Tambun Sel., Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png'),
(407, 'Grand Icon Caman', 'Pemukiman', 'Apartemen', 'Jl. Caman Raya Utara II No.45, Jakasampurna, Bekasi Bar., Kota Bks, Jawa Barat 17145, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(408, 'Trivium Terrace Apartment', 'Pemukiman', 'Apartemen', 'Jalan Industri Selatan Blok Hh No.1, Cikarang Selatan, Sukaresmi, Cikarang Sel., Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(409, 'Apartemen Prima Orchard Bekasi', 'Pemukiman', 'Apartemen', 'Jl. Prima Harapan Regensi, Harapan Baru, Bekasi Utara, Kota Bks, Jawa Barat 17123, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(410, 'Tamansari Iswara Apartment', 'Pemukiman', 'Apartemen', 'Jl. Cut Mutia Raya No.2, Sepanjang Jaya, Rawalumbu, Kota Bks, Jawa Barat 17114, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(411, 'Chadstone Cikarang', 'Pemukiman', 'Apartemen', 'Ruko Cikarang Squar Blok B No. 12, Jl. Raya Cibarusa, Cikarang, Pasirsari, Cikarang Sel., Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(412, 'Apartemen Pondok Indah', 'Pemukiman', 'Apartemen', 'Jl. Taman Duta 1%2F15 Harapan Baru Bekasi Utara Bekasi Jawa Barat, Bahagia, Babelan, Bekasi, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(413, 'ISABELLA TOWER', 'Pemukiman', 'Apartemen', 'Bekasi, Bekasi City, West Java, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(414, 'Lagoon Resort Apartemen', 'Pemukiman', 'Apartemen', 'Bekasi City, West Java, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(415, 'Apartemen Kota Swarnabumi - Marketing Gallery', 'Pemukiman', 'Apartemen', 'Jl.Wibawa Mukti II No.73 0812-8906-6555 Lokasi depan Mc.Donald Komsen Jatiasih, Jatiasih, Kota Bks, Jawa Barat 17423, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(416, 'Hero''s Apartemen', 'Pemukiman', 'Apartemen', 'Jl. Pemuda Gg. Assalam Rt. 3/13 No. 44 Kranji, Kranji, Bekasi Bar., Kota Bks, Jawa Barat 17135, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(417, 'Mardhika Park', 'Pemukiman', 'Apartemen', 'Jl. Kebon Kelapa, Tambun, Tambun Sel., Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(418, 'Apartemen City Terrace', 'Pemukiman', 'Apartemen', 'Jl. Ratna-Jatibening No.48D, Jatibening, Pondokgede, Kota Bks, Jawa Barat 17412, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(419, 'Apartemen Gangnam Bekasi Tower A', 'Pemukiman', 'Apartemen', 'Jl. Siliwangi No.88B, Sepanjang Jaya, Rawalumbu, Kota Bks, Jawa Barat 17114, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(420, 'Mustika Golf Residence', 'Pemukiman', 'Apartemen', 'Jl. Arifin C. Noor Kav. A3A, Movieland, Jababeka City, Mekarmukti, Cikarang, Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(421, 'Guest House di Bekasi', 'Pemukiman', 'Apartemen', 'Jalan Raya Jati Asih, Kampung Poncol, RT 04 RW 01 No.73, Kelurahan Jakasetia, Kecamatan Bekasi Selatan, Kota Bekasi, Jaka Setia, Bekasi, Kota Bks, Jawa Barat 17147, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/lodging-71.png'),
(422, 'Riverview Apartment', 'Pemukiman', 'Apartemen', 'Wangunharja, North Cikarang, Bekasi, West Java 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(423, 'Grand Dhika City Jatiwarna', 'Pemukiman', 'Apartemen', 'Jl. Raya Hankam, Jatiranggon, Jatisampurna, Kota Bks, Jawa Barat, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(424, 'Apartement Mutiara Bekasi', 'Pemukiman', 'Apartemen', 'Jl. Jend. Ahmad Yani, Marga Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17144, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(425, 'Low Rise Summarecon Bekasi', 'Pemukiman', 'Apartemen', 'Harapan Mulya, Medan Satria, Bekasi City, West Java 17143, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(426, 'GANGNAM DISTRICT RESIDENCE', 'Pemukiman', 'Apartemen', 'Jl. Siliwangi, Sepanjang Jaya, Rawalumbu, Kota Bks, Jawa Barat, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(427, 'Apartemen Mutiara', 'Pemukiman', 'Apartemen', 'Jalan Jendral Ahmad Yani No. 8, Pekayon Jaya, Bekasi Selatan, Kota Bks, Jawa Barat 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(428, 'The SpringLake', 'Pemukiman', 'Apartemen', 'Plaza Summarecon Bekasi, Jl. Bulevar Ahmad Yani, Summarecon Bekasi, Marga Mulya, Bekasi Utara, Kota Bks, Jawa Barat 17143, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(429, 'Apartment Centerpoint- Kota Bekasi', 'Pemukiman', 'Apartemen', 'Jl. Jenderal Achmad Yani Kav. 20, Marga Jaya, Bekasi Selatan, Kota Bks, Jawa Barat 17141, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(430, 'Thamrin District Apartemen Bekasi', 'Pemukiman', 'Apartemen', 'Jalan Jend Ahmad Yani No. 78-79, Bekasi, Marga Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17141, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(431, 'Grand Kamala Lagoon', 'Pemukiman', 'Apartemen', 'Marketing Gallery Grand Kamala Lagoon, Jalan KH Noer Ali No. 3A, Pekayon Jaya, Bekasi Selatan, Pekayon Jaya, Bekasi Sel., Kota Bks, DKI Jakarta 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(432, 'Metropolitan Park Apartment', 'Pemukiman', 'Apartemen', 'Jl. Lkr. Utara, Tlk. Pucung, Bekasi Utara, Kota Bks, Jawa Barat 17121, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(433, 'Grand Dhika City - Bekasi Timur', 'Pemukiman', 'Apartemen', 'Jalan Haji Mulyadi Joyomartono No. 47, Margahayu, Bekasi Timur, Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png');
INSERT INTO `m_bisnis` (`id_bisnis`, `nama_bisnis`, `jenis`, `tipe`, `alamat`, `map_icon`) VALUES
(434, 'WISMAYA RESIDENCE', 'Pemukiman', 'Apartemen', 'Jalan Muhammad Hasibuan No. 52, Margahayu, Bekasi Timur, Margahayu, Bekasi, Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(435, 'Apartment Tamansari Urbano', 'Pemukiman', 'Apartemen', 'Jalan Pintu Air No.11A, Marga Mulya, Bekasi Utara, Marga Mulya, Bekasi, Kota Bks, Jawa Barat 17143, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(436, 'Grand Cut Meutia', 'Pemukiman', 'Apartemen', 'Jalan Cut Mutia No. 9, Sepanjang Jaya, Kota Bks, Jawa Barat 17114, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(437, 'Indigo Apartemen Bekasi', 'Pemukiman', 'Apartemen', 'Jalan Siliwangi Raya, Sepanjang Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17116, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(438, 'City Terrace Apartment', 'Pemukiman', 'Apartemen', 'Jalan Jati Kramat Baru No.34, Jatikramat, Jatiasih, Kota Bks, Jawa Barat 17421, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(439, 'Bintara Residence', 'Pemukiman', 'Apartemen', 'Jl. Bintara Raya, Bintara, Bekasi Bar., Kota Bks, Jawa Barat 17134, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(440, 'Metro Galaxy Park Apartment And Hotel', 'Pemukiman', 'Apartemen', 'Pekayon Jaya, South Bekasi, Bekasi City, West Java 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(441, 'Victoria Tower', 'Pemukiman', 'Apartemen', 'Jalan Haji Nur Ali No. 27, Pekayon Jaya, Bekasi Selatan, Kota Bks, Jawa Barat 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(442, 'cityland', 'Pemukiman', 'Apartemen', 'Jl. Caman No.75, Jatibening, Pondokgede, Kota Bks, Jawa Barat 17412, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(443, 'SENTRALAND BEKASI', 'Pemukiman', 'Apartemen', 'Bojong Rawalumbu, Bekasi City, West Java 17116, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(444, 'Apartemen Grand ICON', 'Pemukiman', 'Apartemen', 'Jl. Caman No.1, Jatibening, Pondokgede, Kota Bks, Jawa Barat 17412, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(445, 'Mont Blanc Apartment', 'Pemukiman', 'Apartemen', 'BTC City Jalan HM Joyomartono, Bekasi Jaya, Bekasi Timur, Margahayu, Bekasi Tim., Kota Bks, Jawa Barat 17112, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(446, 'Green Loft Apartment', 'Pemukiman', 'Apartemen', 'Jalan Pengasinan-Bojong Menteng No.21, Pengasinan, Rawalumbu, Jatimulya, Tambun Sel., Kota Bks, Jawa Barat 17115, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(447, 'Bumi Satria Kencana', 'Pemukiman', 'Perumahan', 'Jalan Satria Raya, Kayuringin Jaya, Bekasi Selatan, Kayuringin Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17144, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(448, 'Rumah Minimalis Bekasi', 'Pemukiman', 'Perumahan', 'Villa Mutiara Gading 3 / Taman Kebalen Indah, Blok O3, Cluster Oregon, Nomor 79, Bekasi Utara, Kebalen, Babelan, Bekasi, Jawa Barat 17610, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/civic_building-71.png'),
(449, 'Perumahan Permata Bekasi II', 'Pemukiman', 'Perumahan', 'Jl. Permata Permai II Blok J No.18, Duren Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(450, 'Perumahan Subsidi', 'Pemukiman', 'Perumahan', 'Jl. Raya Cibarusah Cikarang, Bekasi, Jawa Barat, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(451, 'Perumahan Griya Mustika Sari', 'Pemukiman', 'Perumahan', 'Jl. Raya Cipete No.36, Mustikasari, Mustikajaya, Kota Bks, Jawa Barat 17157, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(452, 'Perumahan Bekasi Griya Pratama', 'Pemukiman', 'Perumahan', 'Jalan Raya Sumber Jaya, Sumberjaya, Tambun Selatan, Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(453, 'Kantor Pemasaran Tre Vista Residence Bekasi', 'Pemukiman', 'Perumahan', 'Jalan Perjuangan KM. 7 No. 99, Kebalen, Babelan, Bekasi, Jawa Barat 17610, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(454, 'J.Properti', 'Pemukiman', 'Perumahan', 'Jl. Pd. Ungu Permai, Kaliabang Tengah, Bekasi Utara, Bekasi, Jawa Barat 17125, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(455, 'Wahana Pondok Gede', 'Pemukiman', 'Perumahan', 'Jalan Raya Mess Al Blok B No. 8, Jatiranggon, Jatisampurna, Kota Bks, Jawa Barat 17432, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(456, 'Perumahan Violet Garden', 'Pemukiman', 'Perumahan', 'Jalan Terusan I Gusti Ngurah Rai, Kranji, Bekasi Barat, Kota Bks, Jawa Barat 17135, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(457, 'Perumahan Graha Satria Mandiri : Dini', 'Pemukiman', 'Perumahan', 'Jalan Satria Jaya, Tambun Utara, Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(458, 'Perumahan Jatibening II', 'Pemukiman', 'Perumahan', 'Jalan Jati Utama Raya, Jatibening Baru, Pondokgede, Jatibening Baru, Pondokgede, Kota Bks, Jawa Barat 17412, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(459, 'Golden City Bekasi', 'Pemukiman', 'Perumahan', 'Jl. Kaliabang Villa Indah Permai, RT. 01 / RW. 02, Teluk Pucung, Bekasi Utara, Kota Bks, Jawa Barat 17121, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(460, 'Perumahan Pondok Cipta', 'Pemukiman', 'Perumahan', 'Jalan Raya Pondok Cipta, Bintara, Bekasi Barat, Kota Bks, Jawa Barat 17134, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(461, 'PERUMAHAN CAHAYA DARUSSALAM 2', 'Pemukiman', 'Perumahan', 'Jalan Raya Jejalen Jaya, Jejalenjaya, Tambun Utara, Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(462, 'Rumah Subsidi Cikarang Bekasi', 'Pemukiman', 'Perumahan', 'Jl. Raya Cikarang-Sukatani, Karangsetia, Karangbahagia, Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(463, 'The Palm Residence', 'Pemukiman', 'Perumahan', 'Jl. H. Nausan, Sriamur, Tambun Utara, Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(464, 'Pondok Gede Permai', 'Pemukiman', 'Perumahan', 'Jl. Pondok Gede Per, Jatirasa, Jati Asih, Kota Bks, Jawa Barat 17424, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(465, 'Perumahan Batu Air Narogong', 'Pemukiman', 'Perumahan', 'Jalan Horizon Jaya, Pengasinan, Rawalumbu, Pengasinan, Bekasi, Kota Bks, Jawa Barat 17115, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(466, 'Perumahan Murah Cikarang', 'Pemukiman', 'Perumahan', '-21116, 16947, Jl. Sel. 6 No.107, Jatimekar, Jatiasih, Bekasi, Jawa Barat 17422, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(467, 'Perumahan Royal Cikunir', 'Pemukiman', 'Perumahan', 'Jalan Cikunir Raya, Jaka Mulya, Bekasi Selatan, Jaka Mulya, Bekasi Sel., Kota Bks, Jawa Barat 17146, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(468, 'Perumahan Taman Kota Bekasi', 'Pemukiman', 'Perumahan', 'Jalan Ki Mangun Sarkoro, Bekasi Jaya, Bekasi Timur, Kota Bks, Jawa Barat 17112, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(469, 'Perumahan Sahara Indah Permai', 'Pemukiman', 'Perumahan', 'Jl.Kaliabang Tengah, Kaliabang Tengah, Bekasi Utara, Bekasi, Jawa Barat 17125, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(470, 'Perumahan Vila Jaka Setia', 'Pemukiman', 'Perumahan', 'Jl. Villa Jaka Setia Blok G No.11, Jaka Setia, Bekasi Sel., Kota Bks, Jawa Barat 17147, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(471, 'Perumahan Bintara Estate', 'Pemukiman', 'Perumahan', 'Jalan Bintara Raya, Bintara, Bekasi Barat, Jakasampurna, Bekasi Bar., Kota Bks, Jawa Barat 17134, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(472, 'Perumahan Griya Sakinah 2 Babelan - Bekasi', 'Pemukiman', 'Perumahan', 'Jl. Ujung Harapan Bahagia, Babelan Kota, Babelan, Bekasi, Jawa Barat 17610, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(473, 'Perumahan villa Bekasi Indah 2', 'Pemukiman', 'Perumahan', 'Jl. Villa Bekasi Indah 2 Blok E4 No.12A, Sumberjaya, Tambun Sel., Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(474, 'Perumahan Puri Kencana Bekasi', 'Pemukiman', 'Perumahan', 'Jalan Mustika Sari, Pengasinan, Rawalumbu, Pengasinan, Kota Bks, Jawa Barat 17157, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(475, 'Perumahan Irigasi Danita', 'Pemukiman', 'Perumahan', 'Jalan Mekar Sari, Bekasi Jaya, Bekasi Timur, Bekasi Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(476, 'Perumahan Taman Cikas', 'Pemukiman', 'Perumahan', 'Jl. Raya Cikas Boulevard, Pekayon Jaya, Bekasi Selatan, Kota Bks, Jawa Barat 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(477, 'Perumahan Vila Setia Mekar Bekasi', 'Pemukiman', 'Perumahan', 'FL. 1, Blue Mall Bekasi, JL. Chairil Anwar, Margahayu, 17113 Bekasi, Indonesia, Margahayu, East Bekasi, Bekasi City, West Java 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(478, 'Perumahan Mulya Puri', 'Pemukiman', 'Perumahan', 'Jalan Karang Satria, Bekasi Timur, Duren Jaya, Bekasi Timur, Duren Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(479, 'PERUMAHAN RSI JAKARTA 2 BEKASI UTARA', 'Pemukiman', 'Perumahan', 'Jalan Tomat Raya, Harapan Jaya, Bekasi Utara, Harapan Jaya, Bekasi Utara, Kota Bks, Jawa Barat 17124, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/lodging-71.png'),
(480, 'Perumahan Harapan Baru I', 'Pemukiman', 'Perumahan', 'Jl. Harapan Baru Barat, RW.09, Kota Baru, Bekasi Barat, Kota Bks, Jawa Barat 17133, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(481, 'Perumahan Pulo Permatasari', 'Pemukiman', 'Perumahan', 'Jl. Zamrud 4, Bekasi Selatan, Pekayon Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(482, 'Perumahan Griya Pratama Mas Setu Bekasi', 'Pemukiman', 'Perumahan', 'Jl. Batas Desa, Taman Rahayu, Setu, Bekasi, Jawa Barat 17320, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/civic_building-71.png'),
(483, 'Perumahan Harapan Jaya', 'Pemukiman', 'Perumahan', 'Jalan Cemara Permai, Harapan Jaya, Bekasi Utara, Kota Bks, Jawa Barat 17124, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/civic_building-71.png'),
(484, 'Perumahan Pejuang Jaya', 'Pemukiman', 'Perumahan', 'Jalan Dewi Sartika II, Pejuang, Medan Satria, Pejuang, Bekasi, Kota Bks, Jawa Barat 17131, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(485, 'PREMIER SAVANNA at VIDA BEKASI', 'Pemukiman', 'Perumahan', 'Jalan Tirtha Utama, Vida Bekasi, Bekasi Kota, Jawa Barat 17151, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(486, 'Perumahan Wisma Jaya', 'Pemukiman', 'Perumahan', 'Jalan Kusuma Raya, Duren Jaya, Bekasi Timur, Kota Bks, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(487, 'Perumahan Sapta Pesona', 'Pemukiman', 'Perumahan', 'Jalan Sapta Pesona, Jatiluhur, Jatiasih, Kota Bks, Jawa Barat 17425, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(488, 'Mutiara Residence', 'Pemukiman', 'Perumahan', 'No.10, Jalan Pedurenan No.21, Jatiasih, Jatiluhur, Bekasi, Kota Bks, Jawa Barat 17425, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(489, 'Perumahan Graha Cipta Sumberjaya Dan Pesona Bumi H', 'Pemukiman', 'Perumahan', 'Jl. Arjuna - Kp. Pulo No.62, Sumberjaya, Tambun Sel., Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(490, 'Bekasi Green City', 'Pemukiman', 'Perumahan', 'Sriamur, North Tambun, Bekasi, West Java 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(491, 'Perumahan Bumi Bekasi Baru IV Bojong Menteng', 'Pemukiman', 'Perumahan', 'Jalan Jati Kramat Baru, Bojong Menteng, Rawalumbu, Bojong Menteng, Kota Bks, Jawa Barat 17421, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(492, 'Perumahan Bekasi Elok 1', 'Pemukiman', 'Perumahan', 'Jl. Perum Bekasi Elok 1, Jejalenjaya, Tambun Utara, Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(493, 'Perumahan Panorama Bekasi', 'Pemukiman', 'Perumahan', 'Panorama, Perwira, Bekasi Utara, Kota Bks, Jawa Barat 17124, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(494, 'Senopati Estate Bekasi', 'Pemukiman', 'Perumahan', 'Jalan Pangkalan 2, Sumur Batu, Bantargebang, Kota Bekasi, Jawa Barat, Jawa Barat 17154, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(495, 'Perumahan Duren Jaya', 'Pemukiman', 'Perumahan', 'Jalan Professor Muhammad Yamin, Duren Jaya, Bekasi Timur, Duren Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(496, 'Rumah Murah Tambun Bekasi', 'Pemukiman', 'Perumahan', 'Jalan Raya Villa Bekasi Indah No. 2, Jalenjaya, Tambun Utara, Jejalenjaya, Tambun Utara, Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(497, 'Kantor Pemasaran Bekasi Timur Regensi', 'Pemukiman', 'Perumahan', 'Jalan Bawang Ruko C7 No.9, Padurenan, Mustikajaya, Burangkeng, Setu, Kota Bks, Jawa Barat 17155, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(498, 'Perumahan Griya Jatisari', 'Pemukiman', 'Perumahan', 'Jalan Jatisari Raya, Jakasampurna, Bekasi Barat, Kota Bks, Jawa Barat 17145, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(499, 'BEKASI JAYA INDAH', 'Pemukiman', 'Perumahan', 'Jalan Teluk Angsan Permai, Bekasi Jaya, Bekasi Timur, Kota Bks, Jawa Barat 17112, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(500, 'Perumahan Mutiara Bekasi Jaya', 'Pemukiman', 'Perumahan', 'Perumahan Mutiara Bekasi Jaya, Ruko Pelangi Blok P4 No. 7, Jl. Raya Cikarang – Cibarusah, Sindangmulya, Cibarusah, Bekasi, Jawa Barat 17340, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(501, 'Perumahan Bekasi Elok 2', 'Pemukiman', 'Perumahan', 'Jl. Villa Bekasi 2 No.2, Sumberjaya, Tambun Utara, Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(502, 'Perumahan Taman Wisma Asri', 'Pemukiman', 'Perumahan', 'Jl. Taman Wisma Asri Raya, Teluk Pucung, Bekasi Utara, Kota Bks, Jawa Barat 17121, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(503, 'Pop Es Mama Adit & Rumah Makayaki', 'Pemukiman', 'Perumahan', 'Bekasi Timur Permai, Jalan Kalimusada Raya Blok C5 No. 29, Setiamekar, Tambun Selatan, Setiamekar, Tambun Sel., Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/restaurant-71.png'),
(504, 'Perumahan Tambun Bekasi', 'Pemukiman', 'Perumahan', 'Jl. Kali Busa, Karangsatria, Tambun Utara, Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(505, 'Perumahan Darmawangsa Residence', 'Pemukiman', 'Perumahan', 'Jalan Pisangan, Satriamekar, Tambun Utara, Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(506, 'Prima Harapan Regency', 'Pemukiman', 'Perumahan', 'Jalan Prima Harapan Regency, Harapan Baru, Tambun Utara, Kota Bks, Jawa Barat 17123, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(507, 'Puskesmas Tambelang', 'Faskes', 'Puskes', 'Sukarapih, Tambelang, Bekasi, West Java 17620, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(508, 'Apotek K24', 'Faskes', 'apotek', 'Jl. Raya Pekayon, Pekayon Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(509, 'Puskesmas Jatiasih', 'Faskes', 'Puskes', 'Jalan Swatantra 4 No.1, Jatirasa, Jatiasih, Kota Bks, Jawa Barat 17423, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/civic_building-71.png'),
(510, 'Klinik Umum Pratama Berkat Agung', 'Faskes', 'Klinik', 'Jaticempaka, Pondokgede, Bekasi City, West Java 13620, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(511, 'Kartika Husada Hospital', 'Faskes', 'Rumah Sakit', 'Jalan Raya Jati Asih No. 72, Jatiasih, Kota Bks, Jawa Barat 17423, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(512, 'Rumah Sakit Umum Kabupaten Bekasi', 'Faskes', 'Rumah Sakit', 'Jl. Teuku Umar Km 43 Desa Wanasari, Cibitung, Wanasari, Cibitung, Bekasi, Jawa Barat 17520, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(513, 'RS Masmitra', 'Faskes', 'Rumah Sakit', 'Jalan Jati Makmur No. 40, Jatimakmur, Pondokgede, Kota Bks, Jawa Barat 17413, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(514, 'Rumah Sakit Graha Juanda', 'Faskes', 'Rumah Sakit', 'Jl. Ir. H. Juanda No.326, Margahayu, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(515, 'RS. Taman Harapan Baru', 'Faskes', 'Rumah Sakit', 'Jalan Raya Kaliabang Tengah No.1, Kaliabang Tengah, Bekasi Utara, Kaliabang Tengah, Bekasi Utara, Kota Bks, Jawa Barat 17125, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(516, 'Rumah Sakit Tiara Bekasi', 'Faskes', 'Rumah Sakit', 'Jl. Raya Babelan No.63, Kebalen, Babelan, Bekasi, Jawa Barat 17160, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(517, 'Rumah Sakit Bella', 'Faskes', 'Rumah Sakit', 'Jalan Ir. Haji Juanda No. 141, Duren Jaya, Bekasi Timur, Kota Bks, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(518, 'Hosana Medica Hospital', 'Faskes', 'Rumah Sakit', 'Thamrin Square C3, Lippo CIkarang, Jalan Utama No.BIIE No. 01, Cibatu, Cikarang, Bekasi, Jawa Barat • 17550, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(519, 'Multazam Hospital', 'Faskes', 'Rumah Sakit', 'Jl. Raya Perumahan Jatimulya No. 1, Tambun Selatan, Bekasi Timur, Jatimulya, Tambun Sel., Bekasi, Jawa Barat 17150, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(520, 'RS Aprilia Medika', 'Faskes', 'Rumah Sakit', 'Jl. Raya Setu No. 99, Lubang Buaya, Setu, Lubangbuaya, Setu, Bekasi, Jawa Barat 13880, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(521, 'RS Kartika Husada Setu Bekasi', 'Faskes', 'Rumah Sakit', 'Jalan MT. Haryono, RT. 01/06, Kelurahan Burangkeng, Kecamatan Setu, Burangkeng, Setu, Bekasi, Jawa Barat 17320, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(522, 'Mitra Keluarga Cikarang', 'Faskes', 'Rumah Sakit', 'Jalan Industri Raya, Cikarang, Mekarmukti, Cikarang Utara, Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(523, 'RS Harapan Keluarga - Rumah Sakit Harapan Keluarga', 'Faskes', 'Rumah Sakit', 'Kawasan Industri Jababeka, Jalan Kasuari Raya Kav. 1A & 1B, Cikarang Baru, Mekarmukti, Cikarang Utara, Mekarmukti, Cikarang Utara, Bekasi, Jawa Barat 17550, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(524, 'Rumah Sakit Jatisampurna', 'Faskes', 'Rumah Sakit', 'Jl. Studio ANTV, Jatiraden, Jatisampurna, Kota Bks, Jawa Barat 17433, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(525, 'Mitra Keluarga Cibubur Hospital', 'Faskes', 'Rumah Sakit', 'Jl. Transyogi, Cibbubur, Jatisampurna, Bekasi, Jawa Barat 17435, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(526, 'Rumah Sakit Zainuttaqwa', 'Faskes', 'Rumah Sakit', 'Jalan Kaliabang Rorotan, Kaliabang Tengah, Bekasi Utara, Bekasi, Jawa Barat 17131, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(527, 'RS. Rawa Lumbu', 'Faskes', 'Rumah Sakit', 'Jalan Dasa Darma Kav. 20 - 23, Rawa Lumbu, Bojong Rawalumbu, Kota Bks, Jawa Barat 17116, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(528, 'RS Permata Cibubur', 'Faskes', 'Rumah Sakit', 'Jl. Raya Alternatif Cibubur No. 6A, Jatikarya, Jatisampurna, Cibubur, Kota Bks, Jawa Barat 17435, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(529, 'RS.Satria Medika', 'Faskes', 'Rumah Sakit', 'Jalan Raya Bantar Gebang - Setu No. 119, Padurenan, Mustikajaya, Kota Bks, Jawa Barat 16340, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(530, 'Rumah Sakit Dokter Adam Talib', 'Faskes', 'Rumah Sakit', 'Jl. Teuku Umar No. 25, Cikarang Barat, Telaga Asih, Bekasi, Jawa Barat, 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(531, 'Kartika Husada Hospital', 'Faskes', 'Rumah Sakit', 'Jalan Raya Jati Asih No. 72, Jatiasih, Kota Bks, Jawa Barat 17423, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(532, 'Rumah Sakit Umum Kabupaten Bekasi', 'Faskes', 'Rumah Sakit', 'Jl. Teuku Umar Km 43 Desa Wanasari, Cibitung, Wanasari, Cibitung, Bekasi, Jawa Barat 17520, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(533, 'RS Masmitra', 'Faskes', 'Rumah Sakit', 'Jalan Jati Makmur No. 40, Jatimakmur, Pondokgede, Kota Bks, Jawa Barat 17413, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(534, 'Rumah Sakit Graha Juanda', 'Faskes', 'Rumah Sakit', 'Jl. Ir. H. Juanda No.326, Margahayu, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(535, 'RS. Taman Harapan Baru', 'Faskes', 'Rumah Sakit', 'Jalan Raya Kaliabang Tengah No.1, Kaliabang Tengah, Bekasi Utara, Kaliabang Tengah, Bekasi Utara, Kota Bks, Jawa Barat 17125, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(536, 'Rumah Sakit Tiara Bekasi', 'Faskes', 'Rumah Sakit', 'Jl. Raya Babelan No.63, Kebalen, Babelan, Bekasi, Jawa Barat 17160, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(537, 'Rumah Sakit Bella', 'Faskes', 'Rumah Sakit', 'Jalan Ir. Haji Juanda No. 141, Duren Jaya, Bekasi Timur, Kota Bks, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(538, 'Hosana Medica Hospital', 'Faskes', 'Rumah Sakit', 'Thamrin Square C3, Lippo CIkarang, Jalan Utama No.BIIE No. 01, Cibatu, Cikarang, Bekasi, Jawa Barat • 17550, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(539, 'Multazam Hospital', 'Faskes', 'Rumah Sakit', 'Jl. Raya Perumahan Jatimulya No. 1, Tambun Selatan, Bekasi Timur, Jatimulya, Tambun Sel., Bekasi, Jawa Barat 17150, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(540, 'RS Aprilia Medika', 'Faskes', 'Rumah Sakit', 'Jl. Raya Setu No. 99, Lubang Buaya, Setu, Lubangbuaya, Setu, Bekasi, Jawa Barat 13880, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(541, 'RS Kartika Husada Setu Bekasi', 'Faskes', 'Rumah Sakit', 'Jalan MT. Haryono, RT. 01/06, Kelurahan Burangkeng, Kecamatan Setu, Burangkeng, Setu, Bekasi, Jawa Barat 17320, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(542, 'Mitra Keluarga Cikarang', 'Faskes', 'Rumah Sakit', 'Jalan Industri Raya, Cikarang, Mekarmukti, Cikarang Utara, Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(543, 'RS Harapan Keluarga - Rumah Sakit Harapan Keluarga', 'Faskes', 'Rumah Sakit', 'Kawasan Industri Jababeka, Jalan Kasuari Raya Kav. 1A & 1B, Cikarang Baru, Mekarmukti, Cikarang Utara, Mekarmukti, Cikarang Utara, Bekasi, Jawa Barat 17550, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(544, 'Rumah Sakit Jatisampurna', 'Faskes', 'Rumah Sakit', 'Jl. Studio ANTV, Jatiraden, Jatisampurna, Kota Bks, Jawa Barat 17433, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(545, 'Mitra Keluarga Cibubur Hospital', 'Faskes', 'Rumah Sakit', 'Jl. Transyogi, Cibbubur, Jatisampurna, Bekasi, Jawa Barat 17435, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(546, 'Rumah Sakit Zainuttaqwa', 'Faskes', 'Rumah Sakit', 'Jalan Kaliabang Rorotan, Kaliabang Tengah, Bekasi Utara, Bekasi, Jawa Barat 17131, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(547, 'RS. Rawa Lumbu', 'Faskes', 'Rumah Sakit', 'Jalan Dasa Darma Kav. 20 - 23, Rawa Lumbu, Bojong Rawalumbu, Kota Bks, Jawa Barat 17116, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(548, 'RS Permata Cibubur', 'Faskes', 'Rumah Sakit', 'Jl. Raya Alternatif Cibubur No. 6A, Jatikarya, Jatisampurna, Cibubur, Kota Bks, Jawa Barat 17435, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(549, 'RS.Satria Medika', 'Faskes', 'Rumah Sakit', 'Jalan Raya Bantar Gebang - Setu No. 119, Padurenan, Mustikajaya, Kota Bks, Jawa Barat 16340, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(550, 'Rumah Sakit Dokter Adam Talib', 'Faskes', 'Rumah Sakit', 'Jl. Teuku Umar No. 25, Cikarang Barat, Telaga Asih, Bekasi, Jawa Barat, 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(551, 'Siloam Hospitals', 'Faskes', 'Rumah Sakit', 'Jl. MH. Thamrin kav 105, Lippo Cikarang, Cikarang, Jl. Moh. H. Thamrin, Cibatu, Bekasi, Jawa Barat 17550, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(552, 'Proteindo Karyasehat. PT', 'Faskes', 'Rumah Sakit', 'JL. Jend. A. Yani, 17144, Kayuringin Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17144, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(553, 'RS Persada Medika Jatirahayu', 'Faskes', 'Rumah Sakit', 'Jalan Hankam Raya No. 17, Jatirahayu, Pondo Gede, Jatirahayu, Pondokmelati, Kota Bks, Jawa Barat 17414, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(554, 'Rs Ananda', 'Faskes', 'Rumah Sakit', 'Jl. Masjid Jammi At'' Taqwa No.62, Kota Baru, Bekasi Bar., Kota Bks, Jawa Barat 17132, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(555, 'RS Hosana Cikarang Baru', 'Faskes', 'Rumah Sakit', 'Jalan Anggrek I B2/2, Cikarang Baru, Desa Mekar Mukti, Kec. Cikarang Utara, Mekarmukti, Cikarang Utara, Bekasi, Jawa Barat 17550, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(556, 'Rumah Sakit Bunda Mulia', 'Faskes', 'Rumah Sakit', 'Jl. Imam Bonjol No. 80, Sukadanau, Cikarang Barat, Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(557, 'RS. Annisa Cikarang', 'Faskes', 'Rumah Sakit', 'Jl. Raya Lemah Abang, Simpangan, Cikarang Utara, Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(558, 'RS Hermina Grand Wisata', 'Faskes', 'Rumah Sakit', 'Grand Wisata, Jl. Festival Boulevard Blok JA No. 1, Lambangsari, Tambun Selatan, Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(559, 'RSIA Selasih Medika', 'Faskes', 'Rumah Sakit', 'Jl. Bintara Raya No.5, Bintara, Bekasi Bar., Kota Bks, Jawa Barat 17134, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(560, 'Rumah Sakit Bhakti Husada', 'Faskes', 'Rumah Sakit', 'Jl. RE. Martadinata Bypass Cikarang, Karangbaru, Cikarang Utara, Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(561, 'Rs Bella', 'Faskes', 'Rumah Sakit', 'Jl. Prof. Muhamad Yamin No.45, Duren Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(562, 'Rsia Rinova Intan', 'Faskes', 'Rumah Sakit', 'Jl. Harapan Jaya, Harapan Jaya, Bekasi Utara, Kota Bks, Jawa Barat 17124, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(563, 'Rumah Sakit Amanda', 'Faskes', 'Rumah Sakit', 'Jl. Raya Serang - Cibarusah No.83, Serang, Cikarang Sel., Bekasi, Jawa Barat 17330, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(564, 'RS Harapan Mulia', 'Faskes', 'Rumah Sakit', 'Jl. Raya Cibarusah No. 5, Kebon Kopi, Cibarusah Jaya, Cibarusahjaya, Cibarusah, Bekasi, Jawa Barat 17340, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(565, 'Rumah Sakit Karya Medika II', 'Faskes', 'Rumah Sakit', 'Jl. Sultan Hasanudin No. 63, Tambun Selatan, Tambun, Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(566, 'RS.Medirossa', 'Faskes', 'Rumah Sakit', 'Jl. Tegal Gede, Pasirsari, Cikarang Sel., Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(567, 'Rumah Sakit Sentosa', 'Faskes', 'Rumah Sakit', 'Jl. P.Flores 2, Aren Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(568, 'RS Permata Keluarga', 'Faskes', 'Rumah Sakit', 'Jl. M.H. Thamrin Kav.129, Lippo Cikarang, Cibatu, Cikarang Sel., Bekasi, Jawa Barat 17550, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(569, 'Harapan Jayakarta Hospital', 'Faskes', 'Rumah Sakit', 'Jl. Bekasi Timur KM. 18 No. 6, RT.7/RW.11, Jatinegara, Cakung, Kota Jakarta Timur, DKI Jakarta 13930, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(570, 'RS. Permata Keluarga - Jababeka', 'Faskes', 'Rumah Sakit', 'Jalan Dr. Satrio, Cikarang Utara, Simpangan, Cikarang Utara, Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(571, 'RS Mitra Keluarga Bekasi Timur', 'Faskes', 'Rumah Sakit', 'Jl. Pengasinan, Rawa Semut, Margahayu, Bekasi Timur, Bekasi, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(572, 'Hermina Hospital', 'Faskes', 'Rumah Sakit', 'Jl. Kemakmuran No. 39, Marga Jaya, Bekasi Selatan, Kota Bks, Jawa Barat 17141, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(573, 'Rumah Sakit Mitra Keluarga', 'Faskes', 'Rumah Sakit', 'Jalan Jenderal Ahmad YaniBekasi, Kayuringin Jaya, Bekasi Selatan, Kota Bks, Jawa Barat 17144, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(574, 'Rumah Sakit Permata Bekasi', 'Faskes', 'Rumah Sakit', 'Jl. Legenda Raya No. 9, Mustikajaya, Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(575, 'Awal Bros Hospital Bekasi', 'Faskes', 'Rumah Sakit', 'Jalan KH. Noer Ali Kav. 17-18, Kalimalang, Kota Bks, Jawa Barat 17144, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(576, 'Rumah Sakit Hosana Medica Bekasi', 'Faskes', 'Rumah Sakit', 'Jl. Pramuka No.12, Sepanjang Jaya, Rawalumbu, Kota Bks, Jawa Barat 17114, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(577, 'St. Elisabeth Hospital', 'Faskes', 'Rumah Sakit', 'Jalan Raya Narogong No. 202, Kemang Pratama, Bojong Rawalumbu, Kota Bekasi, Jawa Barat 17116, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(578, 'Anna Medika Hospital', 'Faskes', 'Rumah Sakit', 'Jalan Raya Perjuangan No. 45, Harapan Baru, Bekasi Utara, Kota Bks, Jawa Barat 17123, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(579, 'Rumah Sakit Mekar Sari', 'Faskes', 'Rumah Sakit', 'Jl. Mekar Sari No.1, Bekasi Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17112, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(580, 'Budi Lestari', 'Faskes', 'Rumah Sakit', 'Jalan Kyai Haji Noer Alie No. 2, Kayuringin Jaya, Bekasi Selatan, Kayuringin Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17144, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(581, 'Rumah Sakit Bhakti Kartini', 'Faskes', 'Rumah Sakit', 'Jalan RA. Kartini No. 11, Margahayu, Bekasi Timur, Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(582, 'RS Citra Harapan', 'Faskes', 'Rumah Sakit', 'Kawasan Sentra Niaga No. 3-5, Jl. Raya Harapan Indah, Kota Harapan Indah, Pejuang, Medan Satria, Pejuang, Medan Satria, Kota Bks, Jawa Barat 17131, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(583, 'Juwita Hospital', 'Faskes', 'Rumah Sakit', 'Jalan M. Hasibuan No. 78, Margahayu, Bekasi Timur, Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(584, 'Rumah Sakit Hermina Galaxy', 'Faskes', 'Rumah Sakit', 'Ruko Grand Galaxy City, Jl. Pulo Sirih Bar. Raya, Jaka Setia, Bekasi Sel., Kota Bks, Jawa Barat 17147, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(585, 'RSIA Seto Hasbadi', 'Faskes', 'Rumah Sakit', 'Jalan Raya Seroja No.19, Harapan Jaya, Bekasi Utara, Harapan Jaya, Bekasi Utara, Kota Bks, Jawa Barat 17124, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(586, 'Rs Ananda', 'Faskes', 'Rumah Sakit', 'Jl. Sultan Agung No.173, Medan Satria, Kota Bks, Jawa Barat 17132, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(587, 'Rumah Sakit Anna', 'Faskes', 'Rumah Sakit', 'Jalan Pekayon Raya No. 36, Bekasi Selatan, Jaka Setia, Bekasi Sel., Kota Bks, Jawa Barat 17147, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(588, 'Rumah Sakit Umum Puspa Husada', 'Faskes', 'Rumah Sakit', 'Jl. Pd. Timur Indah No.27, Jatimulya, Tambun Sel., Bekasi, Jawa Barat 17157, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(589, 'Rumah Sakit Bersalin THB', 'Faskes', 'Rumah Sakit', 'Jalan Taman Harapan Raya Baru Blok R1 No. 20, Pejuang, Medan Satria, Pejuang, Medan Satria, Kota Bks, Jawa Barat 17131, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(590, 'Rumah Sakit Umum Sentosa', 'Faskes', 'Rumah Sakit', 'Jalan Pahlawan No. 60, Duren Jaya, Bekasi Timur, Kota Bks, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(591, 'Puskesmas Jati Sampurna', 'Faskes', 'Puskes', 'Jati Sampurna Jl. Raya Kranggan No.26, Jatisampurna, Kota Bks, Jawa Barat 17433, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(592, 'Puskesmas Seroja " Edelweis "', 'Faskes', 'Puskes', 'Jl. Intan Perum Harapan Jaya, RW.013, Harapan Jaya, Bekasi Utara, Bekasi, Jawa Barat 17124, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(593, 'Puskesmas Setu II', 'Faskes', 'Puskes', 'Jl. Raya Setu Cibitung - Bekasi, Lubangbuaya, Setu, Bekasi, Jawa Barat 17320, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(594, 'Dinas Kesehatan Puskesmas Kedungwaringin', 'Faskes', 'Puskes', 'Jl. Kedung Gede Jl. Kedung Waringin No.57, Kedungwaringin, Bekasi, Jawa Barat 17540, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(595, 'Puskesmas Telagamurni', 'Faskes', 'Puskes', 'Jl. Raya Imam Bonjol, Cikarang Barat-Bekasi, Telagamurni, Cikarang Bar., Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(596, 'Puskesmas Teluk Pucung', 'Faskes', 'Puskes', 'Jl. Raya Perjuangan No. 1, Teluk Pucung, Bekasi Utara, Kota Bks, Jawa Barat, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(597, 'Puskesmas Cikarang', 'Faskes', 'Puskes', 'Jl. Ki Hajar Dewantara No.24, Karangasih, Cikarang Utara, Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(598, 'Puskesmas Pondok Gede', 'Faskes', 'Puskes', 'Jl. Raya Jati Waringin, Jati Waringin, Pondok Gede, Jatiwaringin, Bekasi, Kota Bks, Jawa Barat 17411, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(599, 'Puskesmas Marga Jaya', 'Faskes', 'Puskes', 'JL. Rawatembaga IV No.2, Marga Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17141, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(600, 'Puskesmas Pembantu', 'Faskes', 'Puskes', 'Jl. Narogong Raya, Bojong Menteng, Kota Bks, Jawa Barat 17117, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(601, 'Puskesmas Perumnas 1 Bekasi', 'Faskes', 'Puskes', 'Jl. Utama Raya, Kayuringin Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17144, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(602, 'Uptd Puskesmas Seroja', 'Faskes', 'Puskes', 'Jl. Harapan Jaya No.21, Harapan Jaya, Bekasi Utara, Kota Bks, Jawa Barat 17124, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/civic_building-71.png'),
(603, 'Puskesmas Kelurahan Jatinegara Kaum', 'Faskes', 'Puskes', 'JL Tengku Badarudin, RT 01 RW 05, Jatinegara Kaum Pulo Gadung, Marga Mulya, Bekasi Utara, Kota Bks, Jawa Barat 13250, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(604, 'Puskesmas Sukadami', 'Faskes', 'Puskes', 'Jl. Raya Serang - Cibarusah, Sukadami, Cikarang Sel., Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(605, 'Puskesmas Kranji', 'Faskes', 'Puskes', 'Perum Duta, Jalan Sakura, Kranji, Bekasi Barat, Kranji, Bekasi Bar., Kota Bks, Jawa Barat 17135, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(606, 'Puskesmas Mustikajaya', 'Faskes', 'Puskes', 'Jl. Raya Mutiara Gading Timur No.2, Mustika Jaya, Mustikajaya, Kota Bks, Jawa Barat 17158, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(607, 'Puskesmas Karang Sambung', 'Faskes', 'Puskes', 'Karang Sambung, Kedung Waringin, Karangsambung, Kedungwaringin, Bekasi, Jawa Barat 17540, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(608, 'Puskesmas', 'Faskes', 'Puskes', 'Jl. Kh. Muktar Tabrani, Perwira, Bekasi Utara, Kota Bks, Jawa Barat 17142, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(609, 'Puskesmas Pembantu', 'Faskes', 'Puskes', 'Jl. Muranda Desa Segera Makmur Kec. Taruma Jaya Bekasi, Sagara Makmur, Tarumajaya, Bekasi, Jawa Barat 17211, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(610, 'Puskesmas Sukatenang', 'Faskes', 'Puskes', 'Jl. Raya Cabang Ampat, Sukatenang, Sukawangi, Bekasi, Jawa Barat 17620, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(611, 'Puskesmas Pembantu Jati Luhur Bekasi', 'Faskes', 'Puskes', 'Jl. Jati Sari Raya, Jatisari, Jatiasih, Kota Bks, Jawa Barat 17426, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(612, 'Puskesmas Bojong Rawalumbu', 'Faskes', 'Puskes', 'Perum Bumi Bekasi Baru, Jl. Trisatya Raya Jembatan No. 4-5, Bojong Rawalumbu, Rawa Lumbu, Bojong Rawalumbu, Kota Bks, Jawa Barat 17116, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(613, 'UPTD Puskesmas Jakamulya', 'Faskes', 'Puskes', 'Perum Pondok Surya Mandala, Jalan Surya Utama No.1, Jakamulya, Jaka Mulya, Bekasi Sel., Bekasi Selatan, Jawa Barat 17146, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(614, 'Puskesmas Teluk Pucung', 'Faskes', 'Puskes', 'JL. Perjuangan, Teluk Pucung, Bekasi, Harapan Baru, North Bekasi, Bekasi City, West Java 17123, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(615, 'Puskesmas Perumnas II', 'Faskes', 'Puskes', 'Jl. Belut Raya No. 1, Kayuringin Jaya, Bekasi Selatan, Kayuringin Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17144, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(616, 'UPTD Puskesmas Jatibening', 'Faskes', 'Puskes', 'Jalan Amarilis, RT. 2 / RW. 12, Pondok Gede, Jatibening, Pondokgede, Kota Bks, Jawa Barat 17412, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(617, 'UPT Puskesmas Marga Mulya', 'Faskes', 'Puskes', 'JL Perjuangan, No 1, Marga Mulya, Marga Mulya, Bekasi Utara, Kota Bks, Jawa Barat 17143, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(618, 'Puskesmas jatirahayu', 'Faskes', 'Puskes', 'Jl. Poris Raya, Jatirahayu, Pondokmelati, Kota Bks, Jawa Barat 17414, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(619, 'Dinas KEsehatan Kota Bekasi Upto Puskesmas Pengasi', 'Faskes', 'Puskes', 'Jl. Narogong Jaya Raya, Pengasinan, Kota Bks, Jawa Barat 17115, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/civic_building-71.png'),
(620, 'Puskesmas Lambang Sari', 'Faskes', 'Puskes', 'Kota Legenda, Jl. Raya Mustika Jaya, Lambangsari, Tambun Sel., Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(621, 'Puskesmas Setia Mekar', 'Faskes', 'Puskes', 'Jl. Setia Mekar No.1, Setiamekar, Tambun Sel., Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(622, 'Kantor Kelurahan Margamulya', 'Faskes', 'Puskes', 'Jl Perjuangan No 1 Margamulya Bekasi Utara, Tlp 021-8841757, Marga Mulya, North Bekasi, Bekasi City, West Java 17143, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/civic_building-71.png'),
(623, 'puskesmas jatiluhur', 'Faskes', 'Puskes', 'Jl. Haji Dehir No.39, Jatiluhur, Jatiasih, Kota Bks, Jawa Barat 17425, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(624, 'Kantor Kelurahan Jati Makmur', 'Faskes', 'Puskes', 'Jl Jatimakmur No 21 Jati Makmur Bekasi, Tlp 021-8475338, Jatimakmur, Pondokgede, Bekasi City, West Java 17413, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/civic_building-71.png'),
(625, 'PUSKESMAS Jatimakmur', 'Faskes', 'Puskes', 'Jl. Klayan Blok H No.Nk, RT.4/RW.17, Jatimakmur, Pondokgede, Kota Bks, Jawa Barat 17413, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(626, 'Puskesmas Setu 1', 'Faskes', 'Puskes', 'Jl. Wage Rudolf Supratman, Lubangbuaya, Cibitung, Bekasi, Jawa Barat 17320, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(627, 'Puskesmas Jatirahayu', 'Faskes', 'Puskes', 'Jl. Rawa Bacang RT 006 RW 13 Jatirahayu Pondok Gede Bekasi Jawa Barat, RT.2/RW.1, Halim Perdana Kusumah, Makasar, Kota Jakarta Timur, DKI Jakarta 17415, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(628, 'Puskesmas Mekarsari', 'Faskes', 'Puskes', 'Desa Mekarsari Tambun Selatan Bekasi, Tlp 021-88334541, Mekarsari, South Tambun, Bekasi, West Java 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(629, 'Puskesmas Sukajaya', 'Faskes', 'Puskes', 'Desa Sukajaya Bekasi, Tlp 021-89107119, Sukajaya, Cibitung, Bekasi, West Java 17520, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(630, 'Puskesmas Pekayon Jaya', 'Faskes', 'Puskes', 'Jalan Pulo Ribung Raya No. 2 RT 04 / RW 13, Pekayon, Bekasi Selatan, Pekayon Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(631, 'Puskesmas Karang Kitri', 'Faskes', 'Puskes', 'Jl. Chairil Anwar No.111, Margahayu, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(632, 'Puskesmas Pejuang', 'Faskes', 'Puskes', 'JL. Kaliabang Bungur Raya, No. 11, Pejuang, Jl. Raya Kaliabang, Kaliabang Tengah, Bekasi Utara, Kota Bks, Jawa Barat 17131, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(633, 'Uptd Puskesmas Bintara', 'Faskes', 'Puskes', 'Jl. Bintara VII, Bintara, Bekasi Bar., Kota Bks, Jawa Barat 17134, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(634, 'Puskesmas Aren Jaya', 'Faskes', 'Puskes', 'JL. Pulo Jawa Raya, Kel. Aren Jaya Kec. Bekasi Timur, Perumnas III, Aren Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(635, 'Puskesmas Rawa Tembaga', 'Faskes', 'Puskes', 'Jl. Komodo Raya Bekasi, Kayuringin Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17144, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(636, 'Updt Puskesmas Kota Baru', 'Faskes', 'Puskes', 'Jl. Melinjo No.13, Kota Baru, Bekasi Bar., Kota Bks, Jawa Barat 17133, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(637, 'Puskesmas Mustika Jaya', 'Faskes', 'Puskes', 'Jl. Mutiara Gading Timur Raya Bekasi, Mustika Jaya, Mustikajaya, Kota Bks, Jawa Barat 17158, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(638, 'Puskesmas Duren Jaya', 'Faskes', 'Puskes', 'JL. Anyer 3, Blok D, Duren Jaya, Perum Duren Jaya, Duren Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(639, 'Puskesmas Jatimulya', 'Faskes', 'Puskes', 'Jl. Jatimulya Raya, Jatimulya, Tambun Sel., Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(640, 'Puskesmas Jati Makmur', 'Faskes', 'Puskes', 'JL. Raya Klayan, Kel. Jati Makmur Kec. Pondok Gede, Komplek Jatiwaringin Asri, Jatimakmur, Pondokgede, Kota Bks, Jawa Barat 17413, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(641, 'Puskesmas Bintara Jaya', 'Faskes', 'Puskes', 'JL. Tambora, No. 3, Bintara Jaya, Harapan Jaya, Bekasi Utara, Kota Bks, Jawa Barat 17124, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(642, 'Puskesmas Jati Warna', 'Faskes', 'Puskes', 'JL. Pelita Utama, Kel. Jati Warna, Komp. PMI Ps. Kecapi, Jatiwarna, Pondokmelati, Kota Bks, Jawa Barat 17415, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(643, 'Puskesmas Karang Satria', 'Faskes', 'Puskes', 'Jl. Karang Satria Raya, Karangsatria, Tambun Utara, Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(644, 'Puskesmas Karang Kitri', 'Faskes', 'Puskes', 'JL. Cut. Mutiah Dalam, No. 51, Kel. Margahayu Kec. Bekasi Timur, Margahayu, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(645, 'Puskesmas Babelan 1', 'Faskes', 'Puskes', 'Jl. Teluk Pucung, Babelan Kota, Babelan, Bekasi, Jawa Barat 17610, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(646, 'Puskesmas Medan Satria', 'Faskes', 'Puskes', 'Jl. Sultan Agung, RT.7/RW.5, Medan Satria, Kota Bks, Jawa Barat 17132, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(647, 'Puskesmas Kaliabang Tengah', 'Faskes', 'Puskes', 'JL. Pondok Ungu Permai II No.1, Kaliabang Tengah, Bekasi Utara, Kota Bks, Jawa Barat 17125, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(648, 'Puskesmas Padurenan', 'Faskes', 'Puskes', 'Padurenan, Mustikajaya, Bekasi City, West Java 16340, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(649, 'Praktek Dokter Gigi', 'Faskes', 'Klinik gigi', 'Komplek East Point Ruko No.3, Jl. Caman, Jatibening, Pondokgede, Kota Bks, Jawa Barat 17412, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(650, 'Praktek Dokter Gigi Drg Rika Noviantini, Mars', 'Faskes', 'Klinik gigi', 'Jl. Jatiwaringin Raya No.305, Jaticempaka, Pondokgede, Kota Bks, Jawa Barat 17411, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png');
INSERT INTO `m_bisnis` (`id_bisnis`, `nama_bisnis`, `jenis`, `tipe`, `alamat`, `map_icon`) VALUES
(651, 'Praktek Dokter Hewan Prambanan', 'Faskes', 'Klinik', 'JL Prambanan, RT 1 RW 2, Perumnas Rawa Lumbu Utara, Sepanjang Jaya, Kota Bks, Jawa Barat 17114, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(652, 'Praktek Dokter Hewan Drh. Norma', 'Faskes', 'Klinik', 'Jl Harapan Indah Boulevard, Ruko Cemara Blok U7 No 19, Kota Harapan Indah, RT.10/RW.8, Pusaka Rakyat, Tarumajaya, Kota Bks, Jawa Barat 17214, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(653, 'Praktek Dokter Gigi', 'Faskes', 'Klinik gigi', 'Jl. Alternatif Cibubur, Harjamukti, Cimanggis, Kota Bks, Jawa Barat 17435, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(654, 'Praktek Dr. Albert DSOG', 'Faskes', 'Dokter Umum', 'JL Pulau Maluku, Blok C3 No. 6, Perumahan Nasional (Perumnas) 3, Aren Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(655, 'Praktek Akupuntur dr Susan Emitia', 'Faskes', 'Dokter Umum', 'Klinik Ruko Simpang 3, Jalan Raya Ratna No.1A, Jatikramat, Jatiasih, Kota Bks, Jawa Barat 17421, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(656, 'Praktek Dokter Gigi', 'Faskes', 'Rumah Sakit', 'Jl. Dukuh Zamrud UTARA, Bekasi Timur Blok S2 No.69, Padurenan, Mustikajaya, Kota Bks, Jawa Barat 16340, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(657, 'Praktek Dokter Gigi', 'Faskes', 'Klinik gigi', 'Jl. Guntur Raya, Kayuringin Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17144, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(658, 'Praktek Dokter Umum Dr Ririn Purwati', 'Faskes', 'Dokter Umum', 'Ruko Palazzo, Jl. Mutiara Gading Timur, Mustika Jaya, Bekasi Timur, Bekasi, Jawa Barat 17158, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(659, 'Praktek Dokter 24 Jam " Almira "', 'Faskes', 'Klinik gigi', 'Perumahan Pondok Timur Indah, Jl. Pd. Timur Indah Blok E No.15, Mustika Jaya, Bekasi Timur, Bekasi, Jawa Barat 17157, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(660, 'Praktek Dokter', 'Faskes', 'Dokter Umum', 'Jl. Taman Wisma Asri Raya, Tlk. Pucung, Bekasi Utara, Kota Bks, Jawa Barat 17123, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(661, 'Praktek Dokter', 'Faskes', 'Dokter Umum', 'Jl. Melon Raya, Tlk. Pucung, Bekasi Utara, Kota Bks, Jawa Barat 17121, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(662, 'Praktek Dokter Umum & Gigi', 'Faskes', 'Dokter Umum', 'Jl. Pejuang, Harapan Jaya, Bekasi Utara, Bekasi, Jawa Barat 17124, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(663, 'Praktek Dokter', 'Faskes', 'Rumah Sakit', 'Jl. Raya Bayan Kp. Cikeuting Bekasi, Mustika Jaya, Mustikajaya, Kota Bks, Jawa Barat 17158, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(664, 'Praktek Dokter Bersama', 'Faskes', 'Dokter Umum', 'Jl. Bintara Raya, Bintara, Bekasi Bar., Kota Bks, Jawa Barat 17134, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(665, 'Praktek Dokter Umum', 'Faskes', 'Dokter Umum', 'Jl. KH. Noer Ali, Kayuringin Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(666, 'Praktek Dokter Oase Partner Sehat Anda', 'Faskes', 'Dokter Umum', 'Ruko Perum Nas, Jl. Jend. Sudirman Blok 2 No.9, Kayuringin Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17135, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(667, 'Praktek Bidan & Dokter', 'Faskes', 'Rumah Sakit', 'Jl. Raya Cikunir, Jaka Mulya, Bekasi Sel., Kota Bks, Jawa Barat 17146, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(668, 'Alamat Praktek Dr. A. Bamby Sutrisno Sp. M', 'Faskes', 'Dokter Umum', 'RS. Awal Bros Bekasi, JL. K. H. Noer Alie Kav. 17-18, Jakasampurna, Bekasi Bar., Kota Bks, Jawa Barat 17145, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(669, 'Praktek Dokter Gigi Amelia Damanik', 'Faskes', 'Klinik gigi', 'Jl. Raya Pekayon No.123D, Jaka Setia, Bekasi Sel., Kota Bks, Jawa Barat 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(670, 'Drg. Nina Anisah Dokter Gigi', 'Faskes', 'Klinik gigi', 'Komplek Ruko Sakura Regency, Jl. Wibawa Mukti II, Jatiasih, Kota Bks, Jawa Barat 17423, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(671, 'Gigi Dental Klinik', 'Faskes', 'Klinik gigi', 'Jalan Raya Kalimalang, Jakasampurna, Bekasi Bar., Kota Bks, Jawa Barat 17145, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(672, 'Praktek Dokter Gigi Drg Rika Noviantini, Mars', 'Faskes', 'Klinik gigi', 'Jl. Jatiwaringin Raya No.305, Jaticempaka, Pondokgede, Kota Bks, Jawa Barat 17411, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(673, 'Dokter Gigi Lenny Herawati', 'Faskes', 'Klinik gigi', 'Jl. Bintara Raya, Bintara, Bekasi Bar., Kota Bks, Jawa Barat 17134, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(674, 'Praktek Dokter Gigi', 'Faskes', 'Klinik gigi', 'Jl. Pulo Ribung, Jaka Setia, Bekasi Sel., Kota Bks, Jawa Barat 17116, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(675, 'O-Smile Dental Center', 'Faskes', 'Klinik gigi', 'Jl. KH. Noer Ali No.27A-28B, Kayuringin, Bekasi Sel., Kota Bks, Jawa Barat 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(676, 'Drg. Murthi Yuwono', 'Faskes', 'Klinik gigi', 'Raya A6/, Jalan Raya Taman Narogong Blok A18 No.8, Pengasinan, Rawalumbu, Pengasinan, Bekasi, Kota Bks, Jawa Barat 17116, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(677, 'Rumah Gigi Ayu (BEKASI)', 'Faskes', 'Klinik gigi', 'Jalan Raya Karang Satria Ruko Villa Mutiara Gading 2 Blok D2 No 3a Tambun Utara, Karangsatria, Tambun Utara, Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(678, 'Dokter Gigi Eka Saptawati', 'Faskes', 'Klinik gigi', 'Jl. Ujung Harapan, Bahagia, Babelan, Bekasi, Jawa Barat 17162, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(679, 'Klinik Gigi SENYUM CERIA Mall Revo Town', 'Faskes', 'Klinik gigi', 'Mall Revo Town Lt. LG Unit Pintu Orange, Jalan Jendral Ahmad Yani, Pekayon Jaya, Bekasi Selatan, Kota Bks, Jawa Barat 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(680, 'Klinik Gigi Family Dental Cosmetic', 'Faskes', 'Klinik gigi', 'Jl. Raya Jatiwaringin No.192, Jaticempaka, Pondokgede, Kota Bks, DKI Jakarta 17411, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(681, 'PRaktek Dokter Gigi. Drg Katarina L. Sihotang', 'Faskes', 'Klinik gigi', 'Taman Kebalen Indah, Jalan Mawar Raya Blok M 6 No.17, Kebalen, Babelan, Bekasi, Jawa Barat 17610, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(682, 'Rumah Gigi Sehat', 'Faskes', 'Klinik gigi', 'Jl. Setia Darma 2 No.100, Setiadarma, Tambun Sel., Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(683, 'Dokter Gigi Afrizal Usasra', 'Faskes', 'Klinik gigi', 'Jl. Raya Mangun Jaya, Mangunjaya, Bekasi Timur, Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(684, 'Klinik Gigi Salsabila', 'Faskes', 'Klinik gigi', 'Jl. Pahlawan No.35, Duren Jaya, Bekasi Tim., Bekasi, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(685, 'Dokter Gigi Rosida Surya Permana', 'Faskes', 'Klinik gigi', 'Jl. Wijaya Kusuma, Jakasampurna, Bekasi Bar., Kota Bks, Jawa Barat 17145, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(686, 'Dokter Gigi Ny Ua Srimulyati', 'Faskes', 'Klinik gigi', 'Jl. Singosari, Bintara, Bekasi Bar., Kota Bks, Jawa Barat 17134, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(687, 'Dokter Gigi Lusiana', 'Faskes', 'Klinik gigi', 'Jl. Harkit Raya, Harapan Jaya, Bekasi Utara, Bekasi, Jawa Barat 17124, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(688, 'Dokter Gigi Laniwati Setiadi', 'Faskes', 'Klinik gigi', 'Jalan Patriot Raya No.88C, Jakasampurna, Bekasi Bar., Kota Bks, Jawa Barat 17145, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(689, 'Praktek Dokter Gigi drg Sri Maryati', 'Faskes', 'Klinik gigi', 'Jalan Patriot Raya, Jakasampurna, Bekasi Bar., Kota Bks, Jawa Barat 17145, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(690, 'Praktek Dokter Gigi', 'Faskes', 'Klinik gigi', 'Jl. Alternatif Cibubur, Harjamukti, Cimanggis, Kota Bks, Jawa Barat 17435, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(691, 'Praktek Dokter Gigi Drg. Yulita Afianti', 'Faskes', 'Klinik gigi', 'Jl. Alexindo, Harapan Jaya, Bekasi Utara, Kota Bks, Jawa Barat 17124, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(692, 'KLinik Gigi Senyum Ceria', 'Faskes', 'Klinik gigi', 'Ruko Boulevard Grand Wisata Bekasi Blok AA 9 No.25, Mustika Jaya, Lambangjaya, Bekasi, Jawa Barat 17158, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(693, 'Dokter Gigi Drg. Yaya Aria Santosa. Mars. Av', 'Faskes', 'Klinik gigi', 'Ruko Sentra Niaga Kalimalang, Talenta Center, Jl. Burangrang Raya, Kayuringin Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17144, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(694, 'Klinik Ku', 'Faskes', 'Klinik gigi', 'Jl. Dr. Ratna, Jatikramat, Jatiasih, Kota Bks, Jawa Barat 17421, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(695, 'Praktek Dokter Gigi Rani', 'Faskes', 'Klinik gigi', 'Raya Blok C26 No., Jl. Delima 1 Blok P No.4, Duren Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(696, 'Praktek Dr Mira Roziati Dahlan. Mars', 'Faskes', 'Dokter Umum', 'Jl. Bintara Raya, Bintara, Bekasi Bar., Kota Bks, Jawa Barat 17134, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(697, 'Praktek Dokter Gigi', 'Faskes', 'Klinik gigi', 'Jl. Raya Taman Narogong Indah, Pengasinan, Kota Bks, Jawa Barat 17116, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(698, 'My Dental', 'Faskes', 'Klinik gigi', 'Jl. Pasar Kecapi No.16, Jatiwarna, Bekasi, Kota Bks, Jawa Barat 17415, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(699, 'Prodentist 2 (Klinik Dokter Gigi)', 'Faskes', 'Klinik gigi', 'no, Jl. Ratna-Jatibening No.34, Jatibening, Pondokgede, Kota Bks, Jawa Barat 17412, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(700, 'Klinik dokter gigi Linda Kisman', 'Faskes', 'Klinik gigi', 'Jl. Dukuh Zamrud Blok U16 No.126, Cimuning, Mustikajaya, Kota Bks, Jawa Barat 17155, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(701, 'Rise and Shine Dental Care', 'Faskes', 'Klinik gigi', 'Summarecon Mal Bekasi No.5, Marga Mulya, Bekasi Utara, Kota Bks, Jawa Barat 17143, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(702, 'KLINIK GIGI SENYUM CERIA', 'Faskes', 'Klinik gigi', 'Ruko Menteng Blok A No. 5, Jl. M. H. Thamrin, Cibatu, Cikarang Selatan, Cibatu, Cikarang Sel., Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(703, 'Klinik Gigiku Sehat', 'Faskes', 'Klinik gigi', 'Jl. Raya Hankam POS 3 No. 18, Jati Murni, Pondok Gede, Jatimurni, Pondokmelati, Kota Bks, Jawa Barat 17414, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(704, 'Praktek Dokter Gigi : Drg. Evira Saraswati', 'Faskes', 'Klinik gigi', 'Jl. Beruang Raya, Jayamukti, Cikarang Pusat, Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(705, 'Dokter Gigi Liza', 'Faskes', 'Klinik gigi', 'Rukan Grand Galaxy City, Jalan Pulo Ribung Raya, Jaka Setia, Bekasi Sel., Kota Bks, Jawa Barat 17147, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(706, 'Praktek Dokter Gigi', 'Faskes', 'Klinik gigi', 'Jl. Guntur Raya, Kayuringin Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17144, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(707, 'Klinik Gigi Mitra Kita', 'Faskes', 'Klinik gigi', 'Jalan Sultan Hasanuddin No. 123, Tambun, Tambun Selatan, Tambun, Tambun Sel., Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(708, 'Drg.Lily Sunaryo', 'Faskes', 'Klinik gigi', 'Jl. Raya Pekayon, Pekayon Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(709, 'Audy Dental Bekasi', 'Faskes', 'Klinik gigi', 'Ruko Grand Galaxy City Blok RGG No.26 Galaxi, Bekasi, Jaka Setia, Bekasi Sel., Kota Bks, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(710, 'Praktek Dokter Gigi', 'Faskes', 'Klinik gigi', 'Jl. RA. Kartini, Margahayu, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(711, 'JB Dental Clinic', 'Faskes', 'Klinik gigi', 'Ruko Sentra Niaga, Jl. Boulevard Hijau Raya Blok B1 No.31, Pejuang, Bekasi Barat, Bekasi, Jawa Barat 17131, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(712, 'Dokter Gigi', 'Faskes', 'Klinik gigi', 'Jl. Harapan Indah Raya Blok BB No.5, Pejuang, Medan Satria, Bekasi, Jawa Barat 17131, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(713, 'Luna Dental Rehabilitation', 'Faskes', 'Klinik gigi', 'Perumnas II Jl. Gurame Raya No.28, Kayuringin Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17144, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(714, 'Klinik Gigi', 'Faskes', 'Klinik gigi', 'Jl. Ir. H. Juanda No.195, Duren Jaya, Bekasi Tim., Bekasi, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(715, 'Praktek Dokter Gigi', 'Faskes', 'Klinik gigi', 'Jl. Bintara Raya No.27, Bintara, Bekasi Bar., Kota Bks, Jawa Barat 17134, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(716, 'Dokter Gigi Mumasni', 'Faskes', 'Klinik gigi', 'Jl. Dasa Darma, Pengasinan, Rawalumbu, Kota Bks, Jawa Barat 17115, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(717, 'Dokter Gigi Veronica', 'Faskes', 'Klinik gigi', 'Jl. Taman Aster No.36, Jaka Setia, Bekasi Sel., Kota Bks, Jawa Barat 17125, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(718, 'Bethesda Medical & Dental Care', 'Faskes', 'Klinik gigi', 'Jl Jend Ahmad Yani No 1 bekasi selatan, Mega bekasi hyper mall lt 1 no 179, Marga Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17144, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(719, 'Praktek Dokter Gigi Heriani Furkan', 'Faskes', 'Klinik gigi', 'Jl. Raya Pengasinan, Jatimulya, Bekasi Tim., Bekasi, Jawa Barat 17115, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(720, 'Klinik Gigi Pasadena', 'Faskes', 'Klinik gigi', 'Blok F No Bekasi, Jl. Duta Boulevard Barat No.9, Harapan Baru, Bekasi Utara, Kota Bks, Jawa Barat 17121, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(721, 'Dokter Gigi Deny Indra Permana', 'Faskes', 'Klinik gigi', 'Jl. Bima Raya Blok A10 No.15, Harapan Jaya, Bekasi Utara, Kota Bks, Jawa Barat 17124, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(722, 'Praktek Dokter Gigi DRG. Ratna Ningsih', 'Faskes', 'Klinik gigi', 'Jl. Caman, Jatibening, Pondokgede, Kota Bks, Jawa Barat 17412, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(723, 'Praktek Dokter Gigi Bersama', 'Faskes', 'Klinik gigi', 'Jl. Kalibaru Timur Bekasi, Kali Baru, Bekasi Bar., Kota Bks, Jawa Barat 17183, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(724, 'Praktek Dokter Gigi Drg, Yumelia Ernita', 'Faskes', 'Klinik gigi', 'Ruko Palazzo, Mutiara Gading Tim. Raya, Mustika Jaya, Bekasi Timur, Bekasi, Jawa Barat 17158, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(725, 'Hoslab Laboratorium Klinik Utama', 'Faskes', 'Klinik', 'Jalan Pekayon Raya, Jatirasa, Jatiasih, Kota Bks, Jawa Barat 17147, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(726, 'My Dentist', 'Faskes', 'Klinik gigi', 'Jl. Taman Galaxi Raya Blok A No.17-18, Jaka Setia, Bekasi Sel., Kota Bks, Jawa Barat 17147, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(727, 'Praktek Dokter Gigi', 'Faskes', 'Klinik gigi', 'Komplek East Point Ruko No.3, Jl. Caman, Jatibening, Pondokgede, Kota Bks, Jawa Barat 17412, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(728, 'Praktek Dokter Gigi', 'Faskes', 'Klinik gigi', 'Jl. Sultan Agung, Medan Satria, Bekasi Bar., Kota Bks, Jawa Barat 17132, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(729, 'Klinik Gigi Dentaris', 'Faskes', 'Klinik gigi', 'Jalan Boulevar Hijau Raya Ruko Sentra Niaga Blok B8 No 50 Kota Harapan Indah Medan Satria, Pejuang, Medan Satria, Kota Bks, Jawa Barat 17131, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(730, 'Praktek Dokter Spesialis', 'Faskes', 'Dokter Umum', 'Ruko Puri Bintara Regency 5 - 7, Jl. Bintara Raya, Bintara, Bekasi Bar., Kota Bks, Jawa Barat 17134, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(731, 'Praktek Dokter Gigi', 'Faskes', 'Dokter Umum', 'Rukan Grand Galaxy City, Jalan Pulo Ribung Raya, Jaka Setia, Bekasi Sel., Kota Bks, Jawa Barat 17147, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(732, 'Praktek Dr. Jabat', 'Faskes', 'Dokter Umum', 'Bekasi Medical Centre, Jl. Ir. H. Juanda No.195, Duren Jaya, Bekasi Tim., Bekasi, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(733, 'Praktek Dokter Umum & Akupuntur', 'Faskes', 'Dokter Umum', 'Jl. Raya Hankam, Jatiwarna, Pondokmelati, Kota Bks, Jawa Barat 17415, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(734, 'Hermina Hospital', 'Faskes', 'Rumah Sakit', 'Jl. Kemakmuran No. 39, Marga Jaya, Bekasi Selatan, Kota Bks, Jawa Barat 17141, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(735, 'Praktek Dokter Gigi', 'Faskes', 'Klinik gigi', 'Jl. RA. Kartini, Margahayu, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(736, 'Praktek dokter Spesialis Mata Dr. Zamril Daya', 'Faskes', 'Dokter Umum', 'No. 50JL K.H Agus Salim, Bekasi Jaya, Bekas Timur, Kota Bks, Jawa Barat 17112, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(737, 'Praktek Dokter Gigi Bersama', 'Faskes', 'Klinik gigi', 'Jl. Kalibaru Timur Bekasi, Kali Baru, Bekasi Bar., Kota Bks, Jawa Barat 17183, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(738, 'Praktek Dokter Gigi Drg, Yumelia Ernita', 'Faskes', 'Klinik gigi', 'Ruko Palazzo, Mutiara Gading Tim. Raya, Mustika Jaya, Bekasi Timur, Bekasi, Jawa Barat 17158, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(739, 'Alamat Praktek Dr. Abdullah Basalamah Sp.OG', 'Faskes', 'Dokter Umum', 'Permata Bekasi, RS, JL. Legenda Raya 9, Mustika Jaya, Mustikajaya, Kota Bks, Jawa Barat 17145, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(740, 'Dr. Syarif Alwi Praktek Umum', 'Faskes', 'Dokter Umum', 'Perumnas 3, Jl. Nusantara Raya Blok A3 No.22, Aren Jaya, Bekasi Tim., Bekasi, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(741, 'Praktek Dokter Gigi', 'Faskes', 'Klinik gigi', 'Jl. Sultan Agung, Medan Satria, Bekasi Bar., Kota Bks, Jawa Barat 17132, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(742, 'Praktek Dokter Cynthia Jayanto', 'Faskes', 'Dokter Umum', 'JL Perjuangan, No. 32, Bekasi Utara, 17143, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(743, 'Praktek Dokter Spesialis Paru & Saluran Pernapasan', 'Faskes', 'Dokter Umum', 'Jl. Raya Kodau V No.25, Jatimekar, Jatiasih, Kota Bks, Jawa Barat 17415, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(744, 'Praktek Dokter Gigi Heriani Furkan', 'Faskes', 'Klinik gigi', 'Jl. Raya Pengasinan, Jatimulya, Bekasi Tim., Bekasi, Jawa Barat 17115, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(745, 'Praktek Dokter', 'Faskes', 'Dokter Umum', 'Perumnas 1, Jl. Nangka Raya No.9A, Kayuringin Jaya, Bekasi Bar., Kota Bks, Jawa Barat 17144, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(746, 'Praktek Dokter Hewan Drh.Nalia Putriyanda', 'Faskes', 'Rumah Sakit', 'no 17422, Jl. Rambutan No.42, RT.1/RW.11, Jatimekar, Jatiasih, Kota Bks, Jawa Barat 17422, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(747, 'Praktek Dokter Gigi DRG. Ratna Ningsih', 'Faskes', 'Klinik gigi', 'Jl. Caman, Jatibening, Pondokgede, Kota Bks, Jawa Barat 17412, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(748, 'Praktek Dokter Gigi Amelia Damanik', 'Faskes', 'Klinik gigi', 'Jl. Raya Pekayon No.123D, Jaka Setia, Bekasi Sel., Kota Bks, Jawa Barat 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(749, 'Praktek Dokter Gigi Keluarga', 'Faskes', 'Klinik gigi', 'JL. Pondok Ungu Permai, Blok AD 1, No. 11, Kaliabang Tengah, Bekasi Utara, Kota Bks, Jawa Barat 17125, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(750, 'Laboratorium Klinik Prodia - Bekasi', 'Faskes', 'Klinik', 'Jalan KH. Noer Alie No. 90, Kayuringin Jaya, Bekasi Selatan, Kayuringin Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17144, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(751, 'Klinik Cahaya Asypa', 'Faskes', 'Klinik', 'Jalan Raya Narogong Indah, Bojong Rawalumbu, Bekasi, Jawa Barat 17116, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(752, 'Klinik Gigi', 'Faskes', 'Klinik', 'Jl. Ir. H. Juanda No.195, Duren Jaya, Bekasi Tim., Bekasi, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(753, 'Audy Dental Bekasi', 'Faskes', 'Klinik', 'Ruko Grand Galaxy City Blok RGG No.26 Galaxi, Bekasi, Jaka Setia, Bekasi Sel., Kota Bks, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(754, 'Klinik dan Rumah Bersalin 24 Jam Bekasi – Bunda Ne', 'Faskes', 'Klinik', 'JL. Dahlia Indah Raya, Blok GB No. 01, Perumahan Harapan Indah, Pejuang, Medan Satria, Kota Bks, Jawa Barat 17132, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(755, 'Klinik Melviana', 'Faskes', 'Klinik', 'Perumnas 3, Jl. Pulau Saparua Raya No.239-240, Aren Jaya, Bekasi Tim., Bekasi, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(756, 'Klinik & RB Tiara Bunda', 'Faskes', 'Klinik', 'Jl. Raya Perjuangan No.1, Teluk Pucung, Tlk. Pucung, Bekasi Utara, Kota Bks, Jawa Barat 17121, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(757, 'Laboratorium Klinik Biomedika', 'Faskes', 'Klinik', 'JL. Ir H Juanda 141 RT 001/08, Duren Jaya, Bekasi Timur - West Java 17111, Margahayu, East Bekasi, Bekasi City, West Java 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(758, 'Klinik Fajar Medika', 'Faskes', 'Klinik', 'Kawasan Industri MM 2100, Ruko Mall Bekasi Fajar Blok D No. 5, Wanajaya, Cibitung, Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(759, 'Klinik Dr Rahman Medical Center', 'Faskes', 'Klinik', 'Jalan Kemandoran No. 37, Pekayon Jaya, Bekasi Selatan, Pekayon Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(760, 'Klinik & Rumah Bersalin Cahaya Amalia', 'Faskes', 'Klinik', 'Jalan K. Haji Mochtar Thabrani No.5, Perwira, Bekasi Utara, Karangsatria, Tambun Utara, Kota Bks, Jawa Barat 17124, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(761, 'Klinik Kecantikan Kusuma kalimalang bekasi', 'Faskes', 'Klinik', 'Bekasi Square Ruko No. 43, Jl. Jend. Ahmad Yani, Pekayon Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(762, 'Klinik Melviana', 'Faskes', 'Klinik', 'Jl. Saparua Raya No.239, Bekasi Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17421, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(763, 'Klinik Hewan THB Vet Bekasi', 'Faskes', 'Klinik', 'Jl Taman Harapan Baru Raya, Blok W1, No. 12A, Pejuang, Kota Harapan Indah, Medan Satria, Kota Bekasi, Jawa Barat 17131, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(764, 'KLINIK MATA BEKASI', 'Faskes', 'Klinik', 'Lantai 2, Jl. Raya Tlk. Pucung Bahagia Blok DD No.2, Tlk. Pucung, Bekasi Utara, Bekasi, Jawa Barat 17612, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(765, 'Klinik Tumbuh Kembang', 'Faskes', 'Klinik', 'Jl. Kusuma Timur Raya Blok C5 No.2, Aren Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(766, 'Klinik Yakri', 'Faskes', 'Klinik', 'Central Kaliabang, North Bekasi, Bekasi City, West Java 17125, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(767, 'Klinik Permata Harapan', 'Faskes', 'Klinik', 'Jl. Durian, RW.1, Kota Baru, Bekasi Bar., Kota Bks, Jawa Barat 17133, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(768, 'Klinik Bina Husada Bakti Bekasi', 'Faskes', 'Klinik', 'JL. Mustika Jaya, No. 70, Bekasi Timur, 17211, Mustika Jaya, Mustikajaya, Kota Bks, Jawa Barat 17158, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(769, 'Klinik Trisna Ananda', 'Faskes', 'Klinik', 'Raya Blok N No 2, Jl. Taman Wisma Asri No.1, Tlk. Pucung, Bekasi Utara, Kota Bks, Jawa Barat 17121, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(770, 'Klinik Viva Medika Bekasi', 'Faskes', 'Klinik', 'Jl. Pulo Ribung Raya No.5, Pekayon Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(771, 'Klinik Mawar 24 Jam (Klinik Dr. Wirda Saleh): Mene', 'Faskes', 'Klinik', 'Komplek Pemda, Jalan Yudistira Blok A1 No. 4, Jatiasih, Kecamatan Jatiasih, Kota Bekasi, Jawa Barat 17423, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(772, 'Klinik Khitan', 'Faskes', 'Klinik', 'Jl. Raya Jati Asih, Jatirasa, Jatiasih, Kota Bks, Jawa Barat 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(773, 'Klinik Elisabeth Bekasi', 'Faskes', 'Klinik', 'JL. Raya Narogong 202, Bekasi, 17310, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(774, 'Klinik Dr. Rocky', 'Faskes', 'Klinik', 'Jl. Bintara Raya No.11, 13, Bekasi Bar., Bekasi, Jawa Barat 17134, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(775, 'Relof Clinic', 'Faskes', 'Klinik', 'Perumahan Jatibening Permai, Jl. Soka Blok B No. 203A, Kota Bks, Jawa Barat 17412, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(776, 'Klinik Khitan Bekasi (Klinik Pemuda Medical Centre', 'Faskes', 'Klinik', 'Jl. Pemuda Kranji No.30, RT.2/RW.14, Kranji, Bekasi Bar., Kota Bks, Jawa Barat 17135, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(777, 'Klinik Dr. Novita', 'Faskes', 'Klinik', 'Perumnas 3, Jl. Nusantara Raya Blok A 3 No.18, Aren Jaya, Bekasi Tim., Bekasi, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(778, 'Klinik Bekasi Elok Medika', 'Faskes', 'Klinik', 'JL. Bekasi Elok Raya 2, Blok F1 No. 3, Tambun, Jejalenjaya, Tambun Utara, Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(779, 'Klinik Sadrina Medika', 'Faskes', 'Klinik', 'Jl. Mutiara Gading Timur, Mustika Jaya, Mustikajaya, Kota Bks, Jawa Barat 17158, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(780, 'Klinik Yakesti', 'Faskes', 'Klinik', 'JL. Raya Narogong, Km. 7, No. 45, Bojong Menteng, Bojong Menteng, Kota Bks, Jawa Barat 17151, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(781, 'Klinik Duplomat', 'Faskes', 'Klinik', 'Jl. Ir. H. Juanda No.20, Marga Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17141, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(782, 'Klinik Yuliarpan Medika', 'Faskes', 'Klinik', 'Jalan Raya Setu Km. 3 No.149, Cibuntu, Cibitung, Cibuntu, Bekasi, Jawa Barat 17520, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(783, 'KLINIK WAMIA HUSADA Bekasi', 'Faskes', 'Klinik', 'Jalan Kasuari Blok E2 No 109 Komplek Inkoppol Jakasampurna, Jakasampurna, Bekasi Bar., Kota Bks, Jawa Barat 17145, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(784, 'Klinik Nayaka Husada 03 Bekasi', 'Faskes', 'Klinik', 'No. Cikarang, Jl. Raya Cikarang Cibarusah No.2, Sukaresmi, Cikarang Sel., Bekasi, Jawa Barat 17340, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(785, 'Klinik Estetika Semarang', 'Faskes', 'Klinik', 'Jl. Alternatif Cibubur, Jatikarya, Jatisampurna, Kota Bks, Jawa Barat 17435, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(786, 'Klinik Permata Bunda', 'Faskes', 'Klinik', 'Perum Kartika Wanasari, Jl. Bosih Raya, Desa Wanasari, Wanasari, Cibitung - Bekasi, Bekasi, West Java 17520, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(787, 'Klinik Gigiku Sehat', 'Faskes', 'Klinik', 'Jl. Raya Hankam POS 3 No. 18, Jati Murni, Pondok Gede, Jatimurni, Pondokmelati, Kota Bks, Jawa Barat 17414, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(788, 'KLINIK SETIAMEKAR', 'Faskes', 'Klinik', 'Perumnas 3, Jalan Nusantara Raya No. 23, Aren Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(789, 'Apotek dan Klinik Kimia Farma', 'Faskes', 'Klinik', 'Jl. Jati Mekar No. 3A, Jati Asih, Jatimekar, Jatiasih, Kota Bks, Jawa Barat 17423, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(790, 'Klinik Pratama', 'Faskes', 'Klinik', 'JL Rawa Dollar, No. 46 RT 001 RW 05, Bekasi Selatan, Jatiraden, Jatisampurna, Kota Bks, Jawa Barat 17434, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(791, 'Klinik Pratama Dharma Medika', 'Faskes', 'Klinik', 'No, Jl. Pemuda Kranji No.33, Kranji, Bekasi Bar., Kota Bks, Jawa Barat 17135, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(792, 'Klinik Pratama MutiaraMedika', 'Faskes', 'Klinik', 'Jl. Raya Hankam No.397, RW.4, Jatimurni, Pondokmelati, Kota Bks, Jawa Barat 17431, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(793, 'Klinik Pratama Bintara Medika', 'Faskes', 'Klinik', 'Jl. Bintara Jaya No.5B, RT.6/RW.7, Pd. Kopi, Bekasi Bar., Kota Bks, Jawa Barat 17136, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(794, 'Laboratorium Klinik Pratama', 'Faskes', 'Klinik', 'JL Swatantra 4, No. 35, Jatirasa, Jatiasih, Jatiasih, Kota Bks, Jawa Barat 17424, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(795, 'Klinik Pratama', 'Faskes', 'Klinik', 'Jalan Bekasi Timur, RT.5/RW.3, Jatinegara, Cakung, Kota Jakarta Timur, DKI Jakarta 13930, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(796, 'Klinik Pratama Esa', 'Faskes', 'Klinik', 'Jl. Ir. H. Juanda No.109, RT.7/RW.1, Duren Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(797, 'Klinik Pratama "YUNDA"', 'Faskes', 'Klinik', 'Jalan Raya Pondok Cipta Blok B3 No. 37, Bintara, Bekasi Barat, Bekasi, Jawa Barat 17134, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(798, 'Klinik Pratama H.sholihin', 'Faskes', 'Klinik', 'kampung mede, Jl. Kh. MAS. Mansyur, Bekasi Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17112, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(799, 'Klinik Pratama Bhakti Medika', 'Faskes', 'Klinik', 'rt 04 rw 11, Jl. Rw. Semut, Margahayu, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(800, 'Klinik PRATAMA SIRANDY MEDIKA DAN Drg BUNGSU S', 'Faskes', 'Klinik', 'Jl. Raya Setu Bantar Gebang No.28, Padurenan, Mustikajaya, Kota Bks, Jawa Barat 16340, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(801, 'KLINIK PRATAMA SETO HASBADI 01', 'Faskes', 'Klinik', 'Jl. Raya Seroja No.10, Harapan Jaya, Bekasi Utara, Kota Bks, Jawa Barat 17124, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(802, 'KLINIK PRATAMA PAPAN MAS', 'Faskes', 'Klinik', 'Jalan Papan Mas Blok F37 No.16, Mangunjaya, Tambun Selatan, Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(803, 'Klinik Gigi', 'Faskes', 'Klinik', 'Jl. Raya Hankam No.226, Jatiwarna, Pondokmelati, Kota Bks, Jawa Barat 17415, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(804, 'Rumah Bekam Al-Kautsar', 'Faskes', 'Klinik', 'JL. Duta Utama I Blok AB, No. 4, Harapan Baru, Bekasi, Kota Bks, Jawa Barat 17123, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(805, 'Klinik Gigi', 'Faskes', 'Klinik', 'Jl. Ir. H. Juanda No.195, Duren Jaya, Bekasi Tim., Bekasi, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(806, 'Klinik Estetika Semarang', 'Faskes', 'Klinik', 'Jl. Alternatif Cibubur, Jatikarya, Jatisampurna, Kota Bks, Jawa Barat 17435, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(807, 'Dokter Gigi Eva Malik', 'Faskes', 'Klinik', 'Jl. Taman Lotus Utama Blok N2 No.4, Pejuang, Bekasi Utara, Bekasi, Jawa Barat 17125, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(808, 'Tukang Gigi Ilma', 'Faskes', 'Klinik', 'JL Pejuang Jaya Utama, RT 002 RW 013, Pejuang jaya, Bekasi Barat, Perumahan Pejuang Jaya, Bintara, Bekasi Bar., Kota Bks, Jawa Barat 17134, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(809, 'Laboratorium Klinik Prodia - Bekasi', 'Faskes', 'Klinik', 'Jalan KH. Noer Alie No. 90, Kayuringin Jaya, Bekasi Selatan, Kayuringin Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17144, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(810, 'Klinik Duplomat', 'Faskes', 'Klinik', 'Jl. Ir. H. Juanda No.20, Marga Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17141, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(811, 'Klinik Mitra Sehat', 'Faskes', 'Klinik', 'Jl. Raya Jara Kosta RT.2 / RW.1, Danau Indah, Cikarang Barat, Bekasi, Danau Indah, Cikarang Bar., Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(812, 'Klinik dan Rumah Bersalin Tabina', 'Faskes', 'Klinik', 'Jl. Bintara Utama, Sukaraya, Karangbahagia, Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(813, 'Aira Dental Care', 'Faskes', 'Klinik', 'Perum Duta Bumi III Blok F No.9, Jl. Duta Permai Utama, Pejuang, Medan Satria, Kota Bks, Jawa Barat 17131, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(814, 'Laboratorium Klinik & Kesehatan Kerja Cakra Medika', 'Faskes', 'Klinik', 'Kawasan Niaga Kalimas, Blok D 26-27, Jl. Cempaka (Inspeksi Kalimalang), Tambun, South Tambun, Jatimulya, Tambun Sel., Kota Bks, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(815, 'Klinik Graha Mitra', 'Faskes', 'Klinik', 'Jl. Raya Hankam, RT.3/RW.1, Jatimurni, Pondokmelati, Kota Bks, Jawa Barat 17415, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(816, 'Klinik Hewan Awal Care (Jatibening, Bekasi)', 'Faskes', 'Klinik', 'Komplek Ruko Jatibening Plaza No. 7-8 Jalan Caman Raya No.117 Simpang 5 Jatibeni, Kota Bekasi, Jawa Barat 17412, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(817, 'Klinik Kecantikan', 'Faskes', 'Klinik', 'Jl. Raya Hankam, Jatirahayu, Pondokmelati, Kota Bks, Jawa Barat 17414, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(818, 'Klinik Gigi Dentaris', 'Faskes', 'Klinik', 'Jalan Boulevar Hijau Raya Ruko Sentra Niaga Blok B8 No 50 Kota Harapan Indah Medan Satria, Pejuang, Medan Satria, Kota Bks, Jawa Barat 17131, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(819, 'Klinik Erni', 'Faskes', 'Klinik', 'Jatisampurna, Bekasi City, West Java 17433, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(820, 'Klinik Mitra Setia Medika', 'Faskes', 'Klinik', 'Jl. Harapan Indah Raya Ruko Harapan Indah Blk. AA No.3A, Pejuang, Medan Satria, Kota Bks, Jawa Barat 17132, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(821, 'Klinik Natural Aesthetic - Klinik Kecantikan Bekas', 'Faskes', 'Klinik', 'Jalan Pemuda Kranji No.30, Bekasi Barat, Kranji, Bekasi Bar., Kota Bks, Jawa Barat 17135, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(822, 'Klinik Yakesti', 'Faskes', 'Klinik', 'JL. Raya Narogong, Km. 7, No. 45, Bojong Menteng, Bojong Menteng, Kota Bks, Jawa Barat 17151, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(823, 'Klinik Ku', 'Faskes', 'Klinik', 'Jl. Dr. Ratna, Jatikramat, Jatiasih, Kota Bks, Jawa Barat 17421, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(824, 'Klinik Gigiku Sehat', 'Faskes', 'Klinik', 'Jl. Raya Hankam POS 3 No. 18, Jati Murni, Pondok Gede, Jatimurni, Pondokmelati, Kota Bks, Jawa Barat 17414, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(825, 'Cipta Penta Utama', 'Faskes', 'Klinik', 'Kompl Pondok Gede Asri Jati Waringin Pondok Gede Bekasi Jawa Barat, Jatimakmur, Pondokgede, Kota Bks, Jawa Barat 17141, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(826, 'Garden Petshop & Klinik Hewan', 'Faskes', 'Klinik', 'Jl. Raya Hankam No.85, RT.8/RW.3, Jatirahayu, Pondokmelati, Kota Bks, Jawa Barat 17414, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(827, 'Klinik Bersalin Umi Rahma', 'Faskes', 'Klinik', 'No.,,, Jl. Asem Raya Mustika Jaya No.20, Mustika Jaya, Mustikajaya, Kota Bks, Jawa Barat 16340, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(828, 'Klinik Cava Medika', 'Faskes', 'Klinik', 'JL. Raya Bekasi, Km. 26 RT. 001 RW. 01, Ujung Menteng, Cakung, RT.1/RW.4, Cakung Tim., Cakung, Kota Jakarta Timur, DKI Jakarta 13910, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(829, 'Klinik Putra Medika 1', 'Faskes', 'Klinik', 'JL. Raya Cibarusah, Perumahan Villa Mutiara Cikarang, Sukaresmi, Cikarang Sel., Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(830, 'Klinik Gigi Salsabila Drg. Apriyani Florinda', 'Faskes', 'Klinik', 'Jl. Pahlawan, Aren Jaya, Bekasi Tim., Bekasi, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(831, 'Klinik Citra Medika Pekayon', 'Faskes', 'Klinik', 'Jl. Raya Pekayon No.6, Jaka Setia, Bekasi Sel., Kota Bks, Jawa Barat 17147, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(832, 'Klinik Dokter Umum', 'Faskes', 'Klinik', 'Jl. Kemandoran, Pekayon Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(833, 'KLINIK MATA BEKASI', 'Faskes', 'Klinik', 'Lantai 2, Jl. Raya Tlk. Pucung Bahagia Blok DD No.2, Tlk. Pucung, Bekasi Utara, Bekasi, Jawa Barat 17612, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(834, 'PT Bukaka Teknik Utama TBK - Unit Usaha RCE', 'Faskes', 'Klinik', 'Jalan Raya Narogong Bekasi Km 19.5 Bukaka Industrial Complex,, Limus Nunggal, Cileungsi, Bogor, Jawa Barat 16820, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(835, 'Medistira Utama', 'Faskes', 'Klinik', 'JL Senam, No. 2, Poncol Baru, Jakasampurna, Bekasi Bar., Kota Bks, Jawa Barat 17145, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(836, 'Klinik Legenda Sehat', 'Faskes', 'Klinik', 'Perumahan Kota Legenda, JL. Zamrud Utara Blok U.16, No. 100, Cimuning, Mustika Jaya, Padurenan, Mustikajaya, Kota Bks, Jawa Barat 16340, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(837, 'Pelangi Buana Utama. PT', 'Faskes', 'Klinik', 'Jl. Caman Perumahan Villa Jatibening Blk. A No.2, Jatibening, Pondokgede, Kota Bks, Jawa Barat 17412, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(838, 'Terapi Ozon (DokterKamu.com)', 'Faskes', 'Klinik', 'Jalan Taman Aster Blok N4 No. 18, Taman Galaxy Indah, Jaka Setia, Bekasi Sel., Kota Bks, Jawa Barat 17147, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(839, 'Klinik Estetika dr. Affandi - Bekasi', 'Faskes', 'Klinik', 'Suncity Square blok A No.23, Jl. M. Hasibuan, Marga Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17141, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(840, 'Klinik', 'Faskes', 'Klinik', 'Jl. Pejuang, Kaliabang Tengah, Bekasi Utara, Kota Bks, Jawa Barat 17122, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(841, 'Klinik Nayaka Husada 04 Bekasi', 'Faskes', 'Klinik', 'JL. Raya Perjuangan, No. 26, Bekasi Utara, Teluk Pucung, 17211, Harapan Baru, Bekasi Utara, Kota Bks, Jawa Barat 17121, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(842, 'Klinik Garuda Sentra Medika Satelit Bekasi', 'Faskes', 'Klinik', 'Bekasi Square, Jl. Jend. Ahmad Yani, Pekayon Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(843, 'KLINIK UTAMA RAWAT INAP MITRA HARAPAN BEKASI', 'Faskes', 'Klinik', 'Bekasi, Bekasi City, West Java, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(844, 'Klinik Rawat Inap Utama Ridho', 'Faskes', 'Klinik', 'Kecamatan Cibitung, Jl. Raya H. Bosih No.18, Wanasari, Kabupaten Bekasi, Bekasi, Jawa Barat 17520, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(845, 'Klinik Wasir dan Klinik Utama Prabeswari', 'Faskes', 'Klinik', 'Jl.Caman Raya Kav. 3a-5, Kota Bks, Jawa Barat 13450, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(846, 'Klinik Mata Utama JEC@Cibubur', 'Faskes', 'Klinik', 'Jl. Alternatif Cibubur No.1, Jatisampurna, Kota Bks, Jawa Barat 17435, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(847, 'Klinik Medis Sehat Utama', 'Faskes', 'Klinik', 'Jalan Raya Cibarusah No 12A (Seberang Pasar Cibarusah), Cibarusah, Kabupaten Bekasi, Cibarusahkota, Cibarusah, Bekasi, Jawa Barat 17340, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(848, 'Klinik Mitra Utama Medika', 'Faskes', 'Klinik', 'Kebon Singkong, Jl. Raya Pisangan, Tambun Utara, Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(849, 'Rumah Bersalin dan Klinik Wahyuni Mediak Utama', 'Faskes', 'Klinik', 'JL. Telaga Said, Blok R No. 1-4, Jatiwaringin Asri II, Jatiwaringin, Pondokgede, Kota Bks, Jawa Barat 17411, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(850, 'GLOSKIN BEKASI - KLINIK KECANTIKAN', 'Faskes', 'Klinik', 'Grand Galaxy, Ruko Sporadis JL Pulo Sirih Utama, Blok EB141B, Pekayon Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(851, 'ATM BNI KLINIK UTAMA RIDHO', 'Faskes', 'Klinik', 'Jl. Raya Hm Bosih, Wanajaya, Cibitung, Bekasi, Jawa Barat 17520, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/bank_dollar-71.png'),
(852, 'Klinik Kulit', 'Faskes', 'Klinik', 'Jl. Puri Gading Utama No.188a, Jatimelati, Pondokmelati, Kota Bks, Jawa Barat 17415, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(853, 'CDM CIMB NIAGA (Klinik 24 Jam Utama Ridho)', 'Faskes', 'Klinik', 'Jl. Bosih No.18, Wanasari, Cibitung, Bekasi, Indonesia 17520, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(854, 'Klinik Isykarima', 'Faskes', 'Klinik', 'Ruko Sentra Niaga Square Jababeka Cikarang No 37_39, Simpangan, Cikarang Utara, Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(855, 'Erha Apotechary', 'Faskes', 'Klinik', 'Grand Galaxy Park Mall, Jl. Pulo Sirih Utama, Jaka Setia, Bekasi Sel., Kota Bks, Jawa Barat 17147, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(856, 'Puskesmas Jati Warna', 'Faskes', 'Klinik', 'JL. Pelita Utama, Kel. Jati Warna, Komp. PMI Ps. Kecapi, Jatiwarna, Pondokmelati, Kota Bks, Jawa Barat 17415, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(857, 'Klinik Nusantara', 'Faskes', 'Klinik', 'Jl. Jati Utama Raya, Jatibening Baru, Pondokgede, Kota Bks, Jawa Barat 13440, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(858, 'LiderLab Klinik', 'Faskes', 'Klinik', 'Jl. A. Yani No.21, Kayuringin Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17144, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(859, 'Klinik Umum Marcel', 'Faskes', 'Klinik', 'Jl. Pondok Hijau Utama, Pengasinan, Rawalumbu, Bekasi, Jawa Barat 17115, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(860, 'Puskesmas Perumnas 1 Bekasi', 'Faskes', 'Klinik', 'Jl. Utama Raya, Kayuringin Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17144, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(861, 'Klinik Bidan Yuliani', 'Faskes', 'Klinik', 'perum griya utama,karang, Jl. Satria Raya, Karangsatria, Tambun Utara, Kota Bks, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png');
INSERT INTO `m_bisnis` (`id_bisnis`, `nama_bisnis`, `jenis`, `tipe`, `alamat`, `map_icon`) VALUES
(862, 'Klinik Mitra Medika', 'Faskes', 'Klinik', 'Jalan Agus Salim No. 173, Bekasi Jaya, Bekasi Timur, Bekasi Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17112, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(863, 'Klinik Mulia Medika', 'Faskes', 'Klinik', 'Jl. Kaliabang Tengah Pejuang No.1 A, Perwira, Bekasi Utara, Kota Bks, Jawa Barat 17124, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png'),
(864, 'Klinik Karya Medika I', 'Faskes', 'Klinik', 'Jalan Ir H Juanda, No. 38C, Margahayu, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(865, 'Klinik DK', 'Faskes', 'Klinik', 'Jalan KH Noer Alie Ruko Bumi Satria Kencana Blok C Nomer 4 Jakasampurna, Kayuringin Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17144, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(866, 'Klinik Sehat Sejahtera', 'Faskes', 'Klinik', 'Jl. Nusantara Raya, Aren Jaya, Bekasi Tim., Bekasi, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(867, 'Klinik Citra Sehat', 'Faskes', 'Klinik', 'Jalan Cendrawasih Raya No. 38 Kav. 2, Kayuringin Jaya, Bekasi Selatan, Kayuringin Jaya, Bekasi Selatan, Kayuringin Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17144, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(868, 'Klinik Medika Mulia Bekasi', 'Faskes', 'Klinik', 'Ruko Mutiara Center Blok A, No. 1, Jl. Jend. Ahmad Yani, Kayuringin Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17144, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(869, 'Klinik Bersalin Umi Rahma', 'Faskes', 'Klinik', 'No.,,, Jl. Asem Raya Mustika Jaya No.20, Mustika Jaya, Mustikajaya, Kota Bks, Jawa Barat 16340, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(870, 'Klinik Mulya Medika', 'Faskes', 'Klinik', 'Jalan Jatimulya Raya No. 1, Jatimulya, Tambun Selatan, Jatimulya, Tambun Sel., Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(871, 'Klinik Nayaka Husada 04 Bekasi', 'Faskes', 'Klinik', 'JL. Raya Perjuangan, No. 26, Bekasi Utara, Teluk Pucung, 17211, Harapan Baru, Bekasi Utara, Kota Bks, Jawa Barat 17121, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(872, 'GLOSKIN BEKASI - KLINIK KECANTIKAN', 'Faskes', 'Klinik', 'Grand Galaxy, Ruko Sporadis JL Pulo Sirih Utama, Blok EB141B, Pekayon Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(873, 'Klinik Estetika dr. Affandi - Bekasi', 'Faskes', 'Klinik', 'Suncity Square blok A No.23, Jl. M. Hasibuan, Marga Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17141, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(874, 'Klinik Graha Mitra', 'Faskes', 'Klinik', 'Jl. Raya Hankam, RT.3/RW.1, Jatimurni, Pondokmelati, Kota Bks, Jawa Barat 17415, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(875, 'Klinik Garuda Sentra Medika Satelit Bekasi', 'Faskes', 'Klinik', 'Bekasi Square, Jl. Jend. Ahmad Yani, Pekayon Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(876, 'Balai Pengobatan Narni', 'Faskes', 'Klinik', 'Jl. Pondok Ungu Permai Blok EE4 No.29, Kaliabang Tengah, Bekasi Utara, Bekasi, Jawa Barat 17125, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(877, 'Klinik Natural Aesthetic - Klinik Kecantikan Bekas', 'Faskes', 'Klinik', 'Jalan Pemuda Kranji No.30, Bekasi Barat, Kranji, Bekasi Bar., Kota Bks, Jawa Barat 17135, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(878, 'Klinik Hipnoterapi Jakarta Bekasi', 'Faskes', 'Klinik', 'Jln. Harapan Indah, Ruko Harapan Indah Blok EB-35, Harapan Indah-Medan Satria, Pejuang, Medan Satria, Kota Bks, Jawa Barat 17131, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(879, 'Klinik Mulya Medika II', 'Faskes', 'Klinik', 'JL. Bosih Perkampungan, Cibitung, Perumahan Gramapuri Tamansari Blok D1, No. 5, Wanasari, Cibitung, Bekasi, Jawa Barat 17520, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(880, 'Klinik', 'Faskes', 'Klinik', 'Duren Jaya, East Bekasi, Bekasi City, West Java 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(881, 'Klinik Hewan Awal Care (Jatibening, Bekasi)', 'Faskes', 'Klinik', 'Komplek Ruko Jatibening Plaza No. 7-8 Jalan Caman Raya No.117 Simpang 5 Jatibeni, Kota Bekasi, Jawa Barat 17412, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(882, 'Duta Jaya Pharmacy', 'Faskes', 'apotek', 'Jl. Raya Pekayon, Pekayon Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(883, 'APOTEK ROXY Pahlawan', 'Faskes', 'apotek', 'Jl. Pahlawan No.16, Aren Jaya, Bekasi Tim., Bekasi, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(884, 'Apotek Roxy', 'Faskes', 'apotek', 'Jl. Patriot Raya, RT.006/RW.003, Jakasampurna, Bekasi Bar., Kota Bks, Jawa Barat 17145, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(885, 'Apotek Roxy Galaxy', 'Faskes', 'apotek', 'Jl. Taman Galaxi Raya Blok A No.17-18, Jakasetia, Bekasi Selatan, Jaka Setia, Bekasi Sel., Kota Bks, Jawa Barat 17147, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(886, 'Apotek Mitra', 'Faskes', 'apotek', 'Jl. Jend. Ahmad Yani, Marga Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17141, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(887, 'Apotik Rizal', 'Faskes', 'apotek', 'Jl. Mayor Oking No. 15, Margahayu, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(888, 'Apotik K-24 - Hankam Raya', 'Faskes', 'apotek', 'Jl. Raya Hankam No.380, RW.4, Jatimurni, Pondokmelati, Kota Bks, Jawa Barat 17431, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(889, 'Apotik K-24 - Bintara jaya', 'Faskes', 'apotek', 'Jl. Raya Bintara Jaya RT. 002 RW. 009, Bintara Jaya, Bekasi Barat, RW.2, Bekasi Barat, Bintara Jaya, Bekasi Bar., Kota Bks, Jawa Barat 17136, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(890, 'Apotik K-24 - Pulo Ribung', 'Faskes', 'apotek', 'JL. Pulo Ribung Blok BB 46 No. 17,, Bekasi Selatan, Jaka Setia, South Bekasi, Bekasi City, West Java 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(891, 'Apotek K-24 Bintang Farma', 'Faskes', 'apotek', 'Jl. Jatibening II No. 17-C (Kincan) Jatibening, Pondok Gede, RW.12, Jatibening, Pondokgede, Bekasi City, West Java 17412, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(892, 'Apotek Kimia Farma - Siliwangi', 'Faskes', 'apotek', 'Jl. Siliwangi No. 45-45A, Sepanjang Jaya, Rawalumbu, Bojong Menteng, Kota Bks, Jawa Barat 17114, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(893, 'Apotek 24 Jam', 'Faskes', 'apotek', 'Jl. Pondok Ungu Permai Blok BB2 No.15, Kaliabang Tengah, Bekasi Utara, Bekasi, Jawa Barat 17125, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(894, 'Apotek Roxy', 'Faskes', 'apotek', 'Jl. Raya Seroja, Harapan Jaya, Bekasi Utara, Kota Bks, Jawa Barat 17124, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(895, 'Apotek K-24 Pekayon', 'Faskes', 'apotek', 'Jl. Raya Pekayon No.55B, Marga Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17143, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(896, 'Apotik K-24 - Pemuda Kranji', 'Faskes', 'apotek', 'Jl. Pemuda Raya Bekasi, Kranji, Bekasi Bar., Kota Bks, Jawa Barat 17135, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(897, 'Apotek Kimia Farma Grand Galaxy City', 'Faskes', 'apotek', 'Jalan Boulevar Raya Timur Blok RGF No.11, Jaka Setia, Bekasi Selatan, Kota Bks, Jawa Barat 17147, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(898, 'Apotek dan Klinik Kimia Farma', 'Faskes', 'apotek', 'Jl. Jati Mekar No. 3A, Jati Asih, Jatimekar, Jatiasih, Kota Bks, Jawa Barat 17423, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(899, 'Apotik K-24 - Veteran', 'Faskes', 'apotek', 'Jl. Pramuka No.17, Marga Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17141, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(900, 'Apotek Kimia Farma Grand Galaxy 400', 'Faskes', 'apotek', 'Jl. Taman Galaxi Raya Blok A3, Jaka Setia, Bekasi Sel., Kota Bks, Jawa Barat 17147, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(901, 'Apotek Roxy', 'Faskes', 'apotek', 'Jl. Mekar Sari No.35, RT.3/RW.3, Bekasi Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17112, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(902, 'Apotik Hadi Farma', 'Faskes', 'apotek', 'Jl. Bintara Raya, Bintara, Bekasi Bar., Kota Bks, Jawa Barat 17134, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(903, 'Apotek Generik', 'Faskes', 'apotek', 'Ruko Sentra Niaga, Jl. Boulevard Hijau Raya Blok SN 1 No.18, Pejuang, Bekasi Barat, Bekasi, Jawa Barat 17131, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(904, 'Apotek K-24', 'Faskes', 'apotek', 'Jl. Jatiwaringin Raya No.227, Jaticempaka, Pondokgede, Kota Bks, Jawa Barat 17411, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(905, 'Apotek K 24', 'Faskes', 'apotek', 'Perumnas 3, Jalan Nusantara Raya No.7, Aren Jaya, Bekasi Timur, Aren Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(906, 'Apotek Generik', 'Faskes', 'apotek', 'JL. KH. Agus Salim, RT. 08 RW. 07, Kelurahan Bekasi Jaya, Kecamatan Bekasi Timur, Bekasi, Bekasi Jaya, East Bekasi, Bekasi City, West Java 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(907, 'Apotek K-24 Jatirasa', 'Faskes', 'apotek', 'Jl. Wibawa Mukti II, Jatiasih, Kota Bks, Jawa Barat 17423, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(908, 'GUARDIAN - Mega Bekasi', 'Faskes', 'apotek', 'Gd. Giant Mega Bekasi, Jl. Ahmad Yani no. 1 Bekasi, MARGAJAYA, BEKASI SELATAN ,JAWA BARAT, BEKASI, Jawa Barat 17141, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(909, 'Apotek K-24 Cikarang-Cibarusah', 'Faskes', 'apotek', 'Jalan Industri No.19, Pasir Sari, Cikarang Selatan, Jatireja, Cikarang Tim., Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(910, 'Apotek', 'Faskes', 'apotek', 'No.8, Jl. Lampiri No.7, RT.4/RW.12, Jatibening Baru, Pondokgede, Kota Bks, Jawa Barat 17412, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(911, 'Apotek Generik', 'Faskes', 'apotek', 'Jl. KH. Agus Salim, Bekasi Jaya, Bekasi Tim., Kota Bks, Jawa Barat 17122, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(912, 'Apotek Daun Mas', 'Faskes', 'apotek', 'Jalan Jatimulya, Jatimulya, Bekasi Tim., Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(913, 'Apotek K 24', 'Faskes', 'apotek', 'Perumahan Villa Mutiara Cikarang, Ruko Cifest, Jl. Villa Mutiara Cikarang, Sukadami, Cikarang Sel., Bekasi, Jawa Barat 17550, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(914, 'Apotek Malaka Jatiwaringin', 'Faskes', 'apotek', 'Jl. Raya Jatiwaringin No.192, RW.9, Jaticempaka, Pondokgede, Kota Bks, Jawa Barat 17411, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(915, 'Apotik Century', 'Faskes', 'apotek', 'Jl. Pulo Ribung, Jaka Setia, Bekasi Sel., Kota Bks, Jawa Barat 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(916, '0857-1619-4600 (Tsel), Foredi Bekasi, Apotek Agen ', 'Faskes', 'apotek', 'JL. Pahlawan Kp. Rawa Aren, Gg. LP Bekasi Rt. 02/01 No. 75, Kel. Bekasi Timurt, Aren Jaya, Bekasi, Kota Bks, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png'),
(917, 'Apotek K24 Jatiasih', 'Faskes', 'apotek', 'Jalan Raya Jatiasih No. 1, Jatiasih, Jatirasa, Jatiasih, Kota Bks, Jawa Barat 17424, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(918, 'Apotek Kimia Farma No. 486 Jatimulya', 'Faskes', 'apotek', 'Komplek Ruko Jatimulya No.10, Kayuringin Jaya, Bekasi Selatan, Bekasi, Jawa Barat 17144, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(919, 'Apotek Kimia Farma 552 Pilar Mas', 'Faskes', 'apotek', 'Jl. Ki Hajar Dewantara, Karangasih, Cikarang Utara, Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(920, 'Apotek Kimia Farma No. 330 THI', 'Faskes', 'apotek', 'Jl. Boulevard Hijau Raya, Pejuang, Medan Satria, Kota Bks, Jawa Barat 17131, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(921, 'Apotik Kimia Farma Jatimekar', 'Faskes', 'apotek', 'Jalan Raya Kodau No.39, Jatimekar, Jatiasih, Jatimekar, Jatiasih, Kota Bks, Jawa Barat 17413, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(922, 'Apotek Kimia Farma Boulevard Hijau Raya', 'Faskes', 'apotek', 'Jl. Boulevard Hijau Raya, Kota Harapan Indah, Jawa Barat 17132, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(923, 'Apotek Kimia Farma', 'Faskes', 'apotek', 'Jl. Raya Jatiwaringin No. 5, Pondok Gede, Jatiwaringin, Pondokgede, Kota Bks, Jawa Barat 17411, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(924, 'Apotik K-24 - Perjuangan', 'Faskes', 'apotek', 'Jl. Perjuangan, Harapan Baru, Bekasi Utara, Bekasi, Jawa Barat 17123, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(925, 'Apotek Generik', 'Faskes', 'apotek', 'Jl. Pondok Hijau Utama, Pengasinan, Rawalumbu, Bekasi, Jawa Barat 17115, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(926, 'Apotek Generik', 'Faskes', 'apotek', 'Jl. Nusantara Raya, Aren Jaya, Bekasi Tim., Bekasi, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(927, 'Apotik Farmasi', 'Faskes', 'apotek', 'Jl. Alexindo, Medan Satria, Bekasi Bar., Kota Bks, Jawa Barat 17132, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(928, 'K-24 PEKAYON', 'Faskes', 'apotek', 'Jl. Raya Pekayon No.55, Pekayon Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17148, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(929, 'Apotek 24', 'Faskes', 'apotek', 'Jl. Raya Kalimalang No.18, Jakasampurna, Bekasi Bar., Kota Bks, Jawa Barat 17145, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(930, 'Apotek Kimia Farma Galuh', 'Faskes', 'apotek', 'Jl. Ir. H. Juanda No.11, Marga Jaya, Bekasi Sel., Kota Bks, Jawa Barat 17141, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(931, 'Apotek Kimia Farma Grand wisata', 'Faskes', 'apotek', 'Ruko Plaza Celebration, Jalan Celebration Boulevard Blok. AA 9 No. 51, Lambangsari, Tambun Selatan, Lambangjaya, Tambun Sel., Bekasi, Jawa Barat 17510, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(932, 'Apotek Roxy', 'Faskes', 'apotek', 'Jl. Setia Mekar, Setiamekar, Bekasi Tim., Bekasi, Jawa Barat 17111, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(933, 'Apotik K-24 - Pengasinan', 'Faskes', 'apotek', 'Ruko Raflesia Jl. Pengasinan Raya No.43, Jatimulya, Bekasi Tim., Kota Bks, Jawa Barat 17115, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(934, 'Kimia Farma Apotik', 'Faskes', 'apotek', 'Jl. Pondok Hijau Utama B-1%2F18 Bojong Rawalumbu Rawa Lumbu Bekasi Jawa Barat, Jaticempaka, Pondokgede, Kota Bks, Jawa Barat 13620, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(935, 'Apotek Generik', 'Faskes', 'apotek', 'Jalan Pasar Kincan, RW.12, Jatibening, Pondokgede, Kota Bks, Jawa Barat 13450, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(936, 'Apotik Prima Jaya', 'Faskes', 'apotek', 'Jl. Mayor Oking, Margahayu, Bekasi Tim., Kota Bks, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(937, 'Roxy Pharmacy', 'Faskes', 'apotek', 'Jl. Raya Jatikramat No. 14, Jatikramat, Jatiasih, Kota Bks, Jawa Barat, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(938, 'Apotik Murni Farma', 'Faskes', 'apotek', 'Jl. Ir. H. Juanda, Duren Jaya, Bekasi Tim., Bekasi, Jawa Barat 17113, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(939, 'Apotek Arnika', 'Faskes', 'apotek', 'Jl. Patriot No.32, Jakasampurna, Bekasi Bar., Kota Bks, Jawa Barat 17145, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png'),
(940, 'Apotik Duta Jaya Cikarang', 'Faskes', 'apotek', 'Ruko Mega Surya No. 16E, Jalan Raya Cikarang Cibarusah, Cikarang, Sukaresmi, Cikarang Sel., Bekasi, Jawa Barat 17530, Indonesia', 'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_cctv`
--

CREATE TABLE `m_cctv` (
  `id_cctv` varchar(10) NOT NULL,
  `lokasicctv` varchar(50) DEFAULT NULL,
  `urlcctv` varchar(100) DEFAULT NULL,
  `jns_cctv` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_grup_hakakses`
--

CREATE TABLE `m_grup_hakakses` (
  `id_grup_hakakses` int(11) NOT NULL,
  `nama_grup_hakakses` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_grup_wewenang`
--

CREATE TABLE `m_grup_wewenang` (
  `id_grup_hakakses` int(11) DEFAULT NULL,
  `akses_simpan` bit(1) DEFAULT NULL,
  `akses_ubah` bit(1) DEFAULT NULL,
  `akses_tampilkan` bit(1) DEFAULT NULL,
  `akses_hapus` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_hakakses`
--

CREATE TABLE `m_hakakses` (
  `id_hakakses` int(11) NOT NULL DEFAULT '0',
  `nama_hakakses` varchar(20) DEFAULT NULL,
  `id_grup_hakakses` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_jabatan`
--

CREATE TABLE `m_jabatan` (
  `id` int(11) NOT NULL,
  `nama_jabatan` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_jabatan`
--

INSERT INTO `m_jabatan` (`id`, `nama_jabatan`) VALUES
(1, 'Operator'),
(2, 'SVC');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_karyawan`
--

CREATE TABLE `m_karyawan` (
  `nik` varchar(20) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `id_jabatan` varchar(10) DEFAULT NULL,
  `id_bagian` varchar(10) DEFAULT NULL,
  `type_karyawan` varchar(20) DEFAULT NULL,
  `lokasi` varchar(10) DEFAULT NULL,
  `tgl_bergabung` date DEFAULT NULL,
  `jns_kelamin` varchar(10) DEFAULT NULL,
  `tmp_lahir` varchar(20) DEFAULT NULL,
  `tgl_lahit` date DEFAULT NULL,
  `gol_darah` varchar(2) DEFAULT NULL,
  `id_agama` varchar(10) DEFAULT NULL,
  `id_status` varchar(10) DEFAULT NULL,
  `tinggi` int(11) DEFAULT NULL,
  `berat` double DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `no_telepon` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_karyawan`
--

INSERT INTO `m_karyawan` (`nik`, `nama`, `id_jabatan`, `id_bagian`, `type_karyawan`, `lokasi`, `tgl_bergabung`, `jns_kelamin`, `tmp_lahir`, `tgl_lahit`, `gol_darah`, `id_agama`, `id_status`, `tinggi`, `berat`, `alamat`, `no_telepon`, `email`) VALUES
('12', 'sss', NULL, NULL, NULL, NULL, NULL, 'pria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sfsf', '45325743754', NULL),
('jtyuj', 'uytu', NULL, NULL, NULL, NULL, NULL, 'pria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ytuty', 'tyuty', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_kendaraan`
--

CREATE TABLE `m_kendaraan` (
  `vhcId` int(11) NOT NULL,
  `plateNumber` varchar(10) DEFAULT NULL,
  `vhcName` varchar(20) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `vhcTypeId` int(11) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `img` text,
  `gps_device_id` varchar(20) DEFAULT NULL,
  `accountId` int(11) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `vehicle_brand_id` int(11) DEFAULT '0',
  `Jenis` varchar(20) DEFAULT NULL,
  `vehicle_model_id` int(11) DEFAULT '0',
  `TahunPembuatan` int(11) DEFAULT NULL,
  `IsiSilinder` int(11) DEFAULT NULL,
  `NoRangka` varchar(50) DEFAULT NULL,
  `NoMesin` varchar(50) DEFAULT NULL,
  `Warna` varchar(20) DEFAULT NULL,
  `BahanBakar` varchar(10) DEFAULT NULL,
  `KapasitasOliMesin` int(11) DEFAULT NULL,
  `KapasitasBahanBakar` int(11) DEFAULT NULL,
  `TahunRegistrasi` int(11) DEFAULT NULL,
  `NoBPKB` varchar(50) DEFAULT NULL,
  `MasaBerlakuBPKB` datetime DEFAULT NULL,
  `fuelKm` double DEFAULT '0',
  `vehicle_use_type_id` int(11) DEFAULT '0',
  `vhcStatus` int(11) DEFAULT '1' COMMENT '1=Aktif, 2=Non Aktif',
  `CreateBy` int(11) DEFAULT NULL,
  `CreateTime` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT CURRENT_TIMESTAMP,
  `NoSTNK` varchar(20) DEFAULT NULL,
  `masaBerlakuSTNK` date DEFAULT NULL,
  `NoPajak` varchar(20) DEFAULT NULL,
  `masaBerlakuPajak` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_kendaraan`
--

INSERT INTO `m_kendaraan` (`vhcId`, `plateNumber`, `vhcName`, `year`, `vhcTypeId`, `icon`, `img`, `gps_device_id`, `accountId`, `company_id`, `vehicle_brand_id`, `Jenis`, `vehicle_model_id`, `TahunPembuatan`, `IsiSilinder`, `NoRangka`, `NoMesin`, `Warna`, `BahanBakar`, `KapasitasOliMesin`, `KapasitasBahanBakar`, `TahunRegistrasi`, `NoBPKB`, `MasaBerlakuBPKB`, `fuelKm`, `vehicle_use_type_id`, `vhcStatus`, `CreateBy`, `CreateTime`, `UpdateBy`, `UpdateTime`, `NoSTNK`, `masaBerlakuSTNK`, `NoPajak`, `masaBerlakuPajak`) VALUES
(19, 'B 9175 KOQ', 'Unit Mustika Jaya 1', NULL, 3, 'icon-truck', NULL, '351608080935492', 9, 9, 3, NULL, 11, 0, 0, '', '', '', '', 0, 0, 0, '', '0000-11-30 00:00:00', 12, 16, 1, 1, '2016-10-13 22:02:35', 9, '2016-12-20 13:14:43', NULL, NULL, NULL, NULL),
(32, 'B 9138 KOQ', 'UPTD Bantar Gebang 1', NULL, 3, 'icon-truck', NULL, '351608081424140', 9, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 7, 1, 16, '2016-12-19 11:42:39', 16, '2016-12-19 11:43:04', NULL, NULL, NULL, NULL),
(33, 'B 9197 KOQ', 'UPTD Kontainer', NULL, 3, 'icon-truck', NULL, '351608081415817', 17, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 17, '2016-12-19 14:08:29', 17, '2016-12-19 14:08:38', NULL, NULL, NULL, NULL),
(34, 'B 9168 KOQ', 'Unit Bekasi Timur 1', NULL, 3, 'icon-truck', NULL, '351608081422235', 18, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 18, '2016-12-19 14:48:17', 18, '2016-12-19 14:48:30', NULL, NULL, NULL, NULL),
(35, 'B 9127 KOQ', 'Unit Mustika Jaya 1', NULL, 3, 'icon-truck', NULL, '351608081416872', 19, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 19, '2016-12-19 18:41:45', 19, '2016-12-19 18:41:55', NULL, NULL, NULL, NULL),
(36, 'B 9132 KOQ', 'Unit Protokol 1', NULL, 3, 'icon-truck', NULL, '351608081308574', 20, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 20, '2016-12-19 18:49:02', 20, '2016-12-19 18:53:48', NULL, NULL, NULL, NULL),
(61, 'B 9151 KOQ', 'unit bekasi utara', NULL, 3, 'icon-truck', NULL, '351608081420072', 21, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 21, '2017-01-06 17:45:32', 21, '2017-01-06 17:45:40', NULL, NULL, NULL, NULL),
(62, 'B 9146 KOQ', 'Unit Pondok Gede', NULL, 3, 'icon-truck', NULL, '351608081418365', 24, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 24, '2017-01-06 17:47:59', 24, '2017-01-06 17:48:06', NULL, NULL, NULL, NULL),
(63, 'B 9181 KOQ', 'Unit Pondok Melati', NULL, 3, 'icon-truck', NULL, '351608081417318', 23, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 23, '2017-01-06 17:51:44', 23, '2017-01-06 17:51:51', NULL, NULL, NULL, NULL),
(64, 'B 9173 KOQ', 'Unit Bekasi Barat', NULL, 3, 'icon-truck', NULL, '351608081422490', 22, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 22, '2017-01-06 17:53:47', 22, '2017-01-06 17:54:08', NULL, NULL, NULL, NULL),
(65, 'B 9137 KOQ', 'Unit Medan Satria', NULL, 3, 'icon-truck', NULL, '351608081420288', 25, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 25, '2017-01-06 17:55:43', 9, '2017-01-07 10:29:06', NULL, NULL, NULL, NULL),
(66, 'B 9176 KOQ', 'Unit Bantar Gebang', NULL, 3, 'icon-truck', NULL, '351608081424306', 16, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 16, '2017-01-07 23:14:56', 16, '2017-01-07 23:15:05', NULL, NULL, NULL, NULL),
(67, 'B 9162 KOQ', 'Unit Bekasi Timur', NULL, 3, 'icon-truck', NULL, '351608081307493', 18, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 18, '2017-01-07 23:17:20', 18, '2017-01-07 23:17:26', NULL, NULL, NULL, NULL),
(68, 'B 9158 KOQ', 'Unit Pondok Melat', NULL, 3, 'icon-truck', NULL, '351608081307626', 23, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 23, '2017-01-07 23:19:06', 23, '2017-01-07 23:19:14', NULL, NULL, NULL, NULL),
(69, 'B 9183 KOQ', 'Unit Kontainer', NULL, 3, 'icon-truck', NULL, '351608081415593', 17, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 17, '2017-01-07 23:21:31', 17, '2017-01-07 23:21:39', NULL, NULL, NULL, NULL),
(70, 'B 9159 KOQ', 'Unit Pondok Gede', NULL, 3, 'icon-truck', NULL, '351608081420932', 24, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 24, '2017-01-07 23:23:47', 24, '2017-01-07 23:23:58', NULL, NULL, NULL, NULL),
(71, 'B 9171 KOQ', 'Unit Jati Asih', NULL, 3, 'icon-truck', NULL, '351608081421203', 28, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 28, '2017-01-07 23:35:01', 28, '2017-01-07 23:35:08', NULL, NULL, NULL, NULL),
(72, 'B 9148 KOQ', 'Unit Medan Satria', NULL, 3, 'icon-truck', NULL, '351608081416229', 25, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 25, '2017-01-07 23:36:28', 25, '2017-01-07 23:38:48', NULL, NULL, NULL, NULL),
(73, 'B 9117 KOQ', 'Unit Bekasi Barat', NULL, 3, 'icon-truck', NULL, '351608081413432', 22, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 22, '2017-01-08 21:00:24', 22, '2017-01-08 21:00:44', NULL, NULL, NULL, NULL),
(74, 'B 9172 KOQ', 'Unit Bekasi Barat', NULL, 3, 'icon-truck', NULL, '351608081432275', 22, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 22, '2017-01-08 21:02:13', 22, '2017-01-08 21:02:22', NULL, NULL, NULL, NULL),
(75, 'B 9142 KOQ', 'Unit Bekasi Selatan', NULL, 3, 'icon-truck', NULL, '351608081432598', 29, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 29, '2017-01-08 21:13:52', 29, '2017-01-08 21:14:19', NULL, NULL, NULL, NULL),
(76, 'B 9143 KOQ', 'Unit Bekasi Selatan', NULL, 3, 'icon-truck', NULL, '351608081428604', 29, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 29, '2017-01-08 21:15:06', 29, '2017-01-08 21:15:28', NULL, NULL, NULL, NULL),
(77, 'B 9169 KOQ', 'Unit Bekasi Timur', NULL, 3, 'icon-truck', NULL, '351608081428976', 18, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 18, '2017-01-08 21:16:57', 18, '2017-01-08 21:17:16', NULL, NULL, NULL, NULL),
(78, 'B 9152 KOQ', 'Unit Bekasi Utara', NULL, 3, 'icon-truck', NULL, '351608081428646', 21, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 21, '2017-01-08 21:18:09', 21, '2017-01-08 21:18:31', NULL, NULL, NULL, NULL),
(79, 'B 9153 KOQ', 'Unit Bekasi Utara', NULL, 3, 'icon-truck', NULL, '351608081430329', 21, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 21, '2017-01-08 21:19:22', 21, '2017-01-08 21:19:42', NULL, NULL, NULL, NULL),
(80, 'B 9184 KOQ', 'Unit Jalur Kontainer', NULL, 3, 'icon-truck', NULL, '351608081432325', 17, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 17, '2017-01-08 21:20:50', 17, '2017-01-08 21:21:15', NULL, NULL, NULL, NULL),
(81, 'B 9139 KOQ', 'Unit Jati Asih', NULL, 3, 'icon-truck', NULL, '351608081421260', 28, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 28, '2017-01-08 21:22:08', 28, '2017-01-08 21:22:35', NULL, NULL, NULL, NULL),
(82, 'B 9149 KOQ', 'Unit Medan Satria', NULL, 3, 'icon-truck', NULL, '351608081427333', 25, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 25, '2017-01-08 21:23:32', 25, '2017-01-08 21:23:51', NULL, NULL, NULL, NULL),
(83, 'B 9163 KOQ', 'Unit Pondok Gede', NULL, 3, 'icon-truck', NULL, '351608081432234', 24, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 24, '2017-01-08 21:24:57', 24, '2017-01-08 21:25:11', NULL, NULL, NULL, NULL),
(84, 'B 9179 KOQ', 'Unit Bekasi Timur', NULL, 3, 'icon-truck', NULL, '351608081310356', 18, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 18, '2017-01-09 10:56:34', 18, '2017-01-09 10:56:46', NULL, NULL, NULL, NULL),
(85, 'B 9164 KOQ', 'Unit JatiSampurna', NULL, 3, 'icon-truck', NULL, '351608081419967', 26, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 26, '2017-01-09 10:57:48', 26, '2017-01-09 10:58:04', NULL, NULL, NULL, NULL),
(86, 'B 9131 KOQ', 'Unit Bekasi Barat', NULL, 3, 'icon-truck', NULL, '351608081306677', 22, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 22, '2017-01-09 10:59:42', 22, '2017-01-09 10:59:49', NULL, NULL, NULL, NULL),
(87, 'B 9150 KOQ', 'Unit Protokol', NULL, 3, 'icon-truck', NULL, '351608081420577', 20, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 20, '2017-01-09 12:32:38', 20, '2017-01-09 12:32:51', NULL, NULL, NULL, NULL),
(88, 'B 9178 KOQ', 'Unit Pondok Gede', NULL, 3, 'icon-truck', NULL, '351608081429818', 24, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 24, '2017-01-09 12:34:14', 24, '2017-01-09 12:34:27', NULL, NULL, NULL, NULL),
(89, 'B 9144 KOO', 'Unit Rawalumbu', NULL, 3, 'icon-truck', NULL, '351608081419884', 27, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 27, '2017-01-10 21:52:43', 27, '2017-01-10 21:53:11', NULL, NULL, NULL, NULL),
(90, 'B 9180 KOQ', 'Unit Bekasi Timur', NULL, 3, 'icon-truck', NULL, '351608081305521', 18, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 18, '2017-01-10 21:54:46', 18, '2017-01-10 21:55:09', NULL, NULL, NULL, NULL),
(91, 'B 9154 KOQ', 'Unit Bekasi Utara', NULL, 3, 'icon-truck', NULL, '351608081306651', 21, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 21, '2017-01-10 21:57:52', 21, '2017-01-10 21:58:14', NULL, NULL, NULL, NULL),
(92, 'B 9165 KOQ', 'Unit Jatisampurna', NULL, 3, 'icon-truck', NULL, '351608081416617', 26, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 26, '2017-01-10 22:10:35', 26, '2017-01-10 22:11:02', NULL, NULL, NULL, NULL),
(93, 'B 9177 KOQ', 'Unit Pondok Gede', NULL, 3, 'icon-truck', NULL, '351608081418423', 24, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 24, '2017-01-10 22:13:10', 24, '2017-01-10 22:13:42', NULL, NULL, NULL, NULL),
(94, 'B 9128 KOQ', 'Unit Mustika Jaya', NULL, 3, 'icon-truck', NULL, '351608081306271', 19, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 19, '2017-01-12 13:09:01', 19, '2017-01-12 13:09:22', NULL, NULL, NULL, NULL),
(95, 'B 9118 KOQ', 'Unit Mustika jaya', NULL, 3, 'icon-truck', NULL, '351608081420155', 19, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 19, '2017-01-12 13:10:09', 19, '2017-01-12 13:10:35', NULL, NULL, NULL, NULL),
(96, 'B 9166 KOQ', 'Unit Jatisampurna', NULL, 3, 'icon-truck', NULL, '351608081424116', 26, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 26, '2017-01-12 13:12:23', 26, '2017-01-12 13:12:37', NULL, NULL, NULL, NULL),
(97, 'B 9187 KOQ', 'Unit Jatisampurna', NULL, 3, 'icon-truck', NULL, '351608081426871', 26, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 26, '2017-01-12 13:13:25', 26, '2017-01-12 13:13:39', NULL, NULL, NULL, NULL),
(98, 'B 9140 KOQ', 'Unit Bekasi Barat', NULL, 3, 'icon-truck', NULL, '351608081306891', 22, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 22, '2017-01-12 13:14:37', 22, '2017-01-12 13:14:51', NULL, NULL, NULL, NULL),
(99, 'B 9141 KOQ', 'Unit Bekasi Barat', NULL, 3, 'icon-truck', NULL, '351608081423258', 22, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 22, '2017-01-12 13:15:28', 22, '2017-01-12 13:15:48', NULL, NULL, NULL, NULL),
(100, 'B 9174 KOQ', 'Unit Bekasi Barat', NULL, 3, 'icon-truck', NULL, '351608081422391', 22, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 22, '2017-01-12 13:16:37', 22, '2017-01-12 13:16:56', NULL, NULL, NULL, NULL),
(101, 'B 9129 KOQ', 'Unit Protokol', NULL, 3, 'icon-truck', NULL, '351608081430030', 20, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 20, '2017-01-12 13:17:59', 20, '2017-01-12 13:18:11', NULL, NULL, NULL, NULL),
(102, 'B 9145 KOQ', 'Unit Pondok Gede', NULL, 3, 'icon-truck', NULL, '351608081425626', 24, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 24, '2017-01-12 13:19:15', 24, '2017-01-12 13:19:54', NULL, NULL, NULL, NULL),
(103, 'B 9147 KOQ', 'Unit Medan Satria', NULL, 3, 'icon-truck', NULL, '351608081419801', 25, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 25, '2017-01-12 13:21:02', 25, '2017-01-12 13:21:15', NULL, NULL, NULL, NULL),
(104, 'B 9133 KOQ', 'Unit Bekasi utara', NULL, 3, 'icon-truck', NULL, '351608081418225', 21, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 21, '2017-01-12 13:22:25', 21, '2017-01-12 13:22:38', NULL, NULL, NULL, NULL),
(105, 'B 9120 KOQ', 'Unit Bekasi Selatan', NULL, 3, 'icon-truck', NULL, '351608081308004', 29, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 29, '2017-01-12 13:29:30', 29, '2017-01-12 13:29:42', NULL, NULL, NULL, NULL),
(106, 'B 9182 KOQ', 'Unit Mustika jaya', NULL, 3, 'icon-truck', NULL, '351608081431889', 19, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 19, '2017-01-12 13:31:10', 19, '2017-01-12 13:31:21', NULL, NULL, NULL, NULL),
(107, ' B 9121 KO', 'Unit Bekasi Selatan', NULL, 3, 'icon-truck', NULL, '351608081305695', 9, 9, 3, NULL, 11, 0, 0, '', '', '', '', 0, 0, 0, '', '0000-11-30 00:00:00', 0, 7, 1, 29, '2017-01-12 13:32:37', 1, '2017-04-24 10:02:29', '', '0000-00-00', '', '0000-00-00'),
(108, 'B 9134 KOQ', 'Unit Bekasi Utara', NULL, 3, 'icon-truck', NULL, '351608081420304', 21, 9, 3, NULL, 11, 0, 0, '', '', '', '', 0, 0, 0, '', '0000-11-30 00:00:00', 0, 16, 1, 18, '2017-01-12 13:33:42', 21, '2017-01-13 14:38:57', NULL, NULL, NULL, NULL),
(109, 'B 9136 KOQ', 'Unit Bekasi Timur', NULL, 3, 'icon-truck', NULL, '351608081426897', 18, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 18, '2017-01-12 13:36:39', 18, '2017-01-12 13:36:51', NULL, NULL, NULL, NULL),
(110, 'B 9161 KOQ', 'Unit Rawalumbu', NULL, 3, 'icon-truck', NULL, '351608081302395', 27, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 27, '2017-01-12 13:38:48', 27, '2017-01-12 13:41:44', NULL, NULL, NULL, NULL),
(111, 'B 9126 KOQ', 'Unit Rawalumbu', NULL, 3, 'icon-truck', NULL, '351608081414836', 27, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 27, '2017-01-12 13:39:54', 27, '2017-01-12 13:40:11', NULL, NULL, NULL, NULL),
(112, 'B 9167 KOQ', 'Unit Jati Asih', NULL, 3, 'icon-truck', NULL, '351608081309085', 28, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 28, '2017-01-12 13:43:50', 28, '2017-01-12 13:44:00', NULL, NULL, NULL, NULL),
(113, 'B 9123 KOQ', 'Unit Rawalumbu', NULL, 3, 'icon-truck', NULL, '351608081429180', 27, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 27, '2017-01-12 14:10:23', 27, '2017-01-12 14:10:34', NULL, NULL, NULL, NULL),
(114, 'B 9160 KOQ', 'Unit Protokol', NULL, 3, 'icon-truck', NULL, '351608081432291', 20, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 20, '2017-01-12 14:11:35', 20, '2017-01-12 14:11:47', NULL, NULL, NULL, NULL),
(115, 'B 9185 KOQ', 'Unit Bekasi Timur', NULL, 3, 'icon-truck', NULL, '351608081310406', 18, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 18, '2017-01-12 14:13:08', 18, '2017-01-12 14:13:21', NULL, NULL, NULL, NULL),
(116, 'B 9156 KOQ', 'Unit Pondok Melati', NULL, 3, 'icon-truck', NULL, '351608081308244', 23, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 23, '2017-01-12 14:14:42', 23, '2017-01-12 14:14:51', NULL, NULL, NULL, NULL),
(117, 'B 9130 KOQ', 'Unit Bekasi Selatan', NULL, 3, 'icon-truck', NULL, '351608081416906', 29, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 29, '2017-01-12 16:13:52', 29, '2017-01-12 16:13:58', NULL, NULL, NULL, NULL),
(118, 'B 9125 KOQ', 'Unit Rawalumbu', NULL, 3, 'icon-truck', NULL, '351608081432226', 27, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 27, '2017-01-12 16:25:07', 27, '2017-01-12 16:25:15', NULL, NULL, NULL, NULL),
(119, 'B 9155 KOQ', 'Unit Rawalumbu', NULL, 3, 'icon-truck', NULL, '351608081419454', 27, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 27, '2017-01-12 19:19:12', 27, '2017-01-12 19:19:29', NULL, NULL, NULL, NULL),
(120, 'B 9122 KOQ', 'Unit Bekasi Selatan', NULL, 3, 'icon-truck', NULL, '351608081427358', 29, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 29, '2017-01-12 19:21:31', 29, '2017-01-12 19:21:51', NULL, NULL, NULL, NULL),
(128, 'B 9135 KOQ', 'Unit Bekasi Utara', NULL, 3, 'icon-truck', NULL, '351608081416880', 21, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 21, '2017-01-13 14:40:02', 21, '2017-01-13 14:40:26', NULL, NULL, NULL, NULL),
(129, 'B 9157 KOQ', 'Unit Pondok Melati', NULL, 3, 'icon-truck', NULL, '351608081416526', 23, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 23, '2017-01-13 14:42:11', 23, '2017-01-13 14:42:24', NULL, NULL, NULL, NULL),
(130, 'B 9124 KOQ', 'Unit Bekasi Timur', NULL, 3, 'icon-truck', NULL, '351608081427242', 18, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 18, '2017-01-13 16:07:55', 18, '2017-01-13 16:08:01', NULL, NULL, NULL, NULL),
(131, 'B 9170 KOQ', 'Unit Jati Asih', NULL, 3, 'icon-truck', NULL, '351608081429354', 28, 9, 3, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 16, 1, 28, '2017-01-16 12:38:30', 28, '2017-01-16 12:38:37', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_kendaraan_merek`
--

CREATE TABLE `m_kendaraan_merek` (
  `id` int(11) NOT NULL,
  `brandName` varchar(20) NOT NULL,
  `brandDesc` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_kendaraan_merek`
--

INSERT INTO `m_kendaraan_merek` (`id`, `brandName`, `brandDesc`) VALUES
(1, 'Toyota', NULL),
(2, 'Honda', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_kendaraan_model`
--

CREATE TABLE `m_kendaraan_model` (
  `id` int(11) NOT NULL,
  `modelName` varchar(20) NOT NULL,
  `vehicle_brand_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_kendaraan_model`
--

INSERT INTO `m_kendaraan_model` (`id`, `modelName`, `vehicle_brand_id`) VALUES
(1, 'Inova', 1),
(2, 'Avanza', 1),
(3, 'H-RV', 2),
(4, 'B-RV', 2),
(5, 'C-RV', 2),
(6, 'Jazz', 2),
(7, 'Fortuner', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_kendaraan_tipe`
--

CREATE TABLE `m_kendaraan_tipe` (
  `vhcTypeId` int(11) NOT NULL,
  `vhcTypeName` varchar(10) DEFAULT NULL,
  `mapIconOff` varchar(100) NOT NULL,
  `mapIconOn` varchar(100) NOT NULL,
  `mapIconAlarm` varchar(100) NOT NULL,
  `defaultOption` int(11) DEFAULT '0',
  `listIcon` varchar(20) DEFAULT 'icon-motor'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_kendaraan_tipe`
--

INSERT INTO `m_kendaraan_tipe` (`vhcTypeId`, `vhcTypeName`, `mapIconOff`, `mapIconOn`, `mapIconAlarm`, `defaultOption`, `listIcon`) VALUES
(1, 'Motorcycle', '/images/marker/motorOff.png', '/images/marker/motorOn.png', '/images/marker/motorOn.png', 0, 'icon-motor'),
(2, 'Car', '/images/marker/carOff.png', '/images/marker/carOn.png', '/images/marker/carOn.png', 0, 'icon-car'),
(3, 'Truck', '/images/marker/carOff.png', '/images/marker/carOn.png', '/images/marker/carOn.png', 1, 'icon-truckicon-truck');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_komplen`
--

CREATE TABLE `m_komplen` (
  `id_komplen` int(11) NOT NULL,
  `id_lokasi` varchar(10) NOT NULL,
  `judul` varchar(20) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_komplen`
--

INSERT INTO `m_komplen` (`id_komplen`, `id_lokasi`, `judul`, `keterangan`) VALUES
(1, '1', 'wew', 'wew'),
(2, '2', 'dfe', 'fsdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_lokasi_baksampah`
--

CREATE TABLE `m_lokasi_baksampah` (
  `id_lokasi` int(11) NOT NULL,
  `nama_lokasi` varchar(50) DEFAULT NULL,
  `id_bisnis` int(10) DEFAULT NULL,
  `id_cctv` varchar(10) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `id_wilayah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_lokasi_baksampah`
--

INSERT INTO `m_lokasi_baksampah` (`id_lokasi`, `nama_lokasi`, `id_bisnis`, `id_cctv`, `lat`, `lng`, `id_wilayah`) VALUES
(1, 'SMA Negeri 1 Setu', 1, NULL, -6.320849, 107.0470545, NULL),
(2, 'SD Kids School', 2, NULL, -6.195, 106.97947, NULL),
(3, 'Sekolah Dasar 5 Bani Saleh', 3, NULL, -6.24377, 107.004899399999, NULL),
(4, 'SD Batutis Al-ilmi', 4, NULL, -6.267427, 106.9801872, NULL),
(5, 'Sekolah Dasar Maria Fransiska', 5, NULL, -6.2547119, 106.9691222, NULL),
(6, 'Sekolah Dasar Al Hanief', 6, NULL, -6.2732135, 106.994881899999, NULL),
(7, 'KB-TK-SD Immanuel', 7, NULL, -6.1804042, 106.996255, NULL),
(8, 'Sekolah Dasar Strada Nawar', 8, NULL, -6.3366605, 106.9243151, NULL),
(9, 'Sekolah Tahfizh Plus HSG SD Khoiru Ummah 25 Cibubu', 9, NULL, -6.368191, 106.914344, NULL),
(10, 'Uptd Pembinaan SD', 10, NULL, -6.3199858, 107.0323529, NULL),
(11, 'Sekolah Walisongo Bekasi', 11, NULL, -6.3397094, 106.923237499999, NULL),
(12, 'SD MARSUDIRINI', 12, NULL, -6.2674639, 106.9861566, NULL),
(13, 'Sekolah Dasar Negeri Bekasi Jaya IX', 13, NULL, -6.2282191, 107.019904299999, NULL),
(14, 'Royal Wells School', 14, NULL, -6.2524587, 106.961592499999, NULL),
(15, 'Sekolah Dasar 4 Bani Saleh', 15, NULL, -6.2041625, 106.986615599999, NULL),
(16, 'Sekolah Dasar Nur Hikmah', 16, NULL, -6.3092254, 106.937251599999, NULL),
(17, 'SD Cenderawasih Jaya', 17, NULL, -6.227635, 107.016790999999, NULL),
(18, 'SD Nasional Satu - Bekasi', 18, NULL, -6.2930305, 106.920006799999, NULL),
(19, 'Sekolah Dasar Cahaya Harapan', 19, NULL, -6.1842245, 106.9790572, NULL),
(20, 'Sekolah Dasar Harapan Indonesia', 20, NULL, -6.2160288, 106.987752, NULL),
(21, 'TK, SD, SMP, SMA Galatia Bekasi', 21, NULL, -6.1862804, 106.984088799999, NULL),
(22, 'Sekolah Dasar Strada Kampung Sawah', 22, NULL, -6.3212262, 106.937602799999, NULL),
(23, 'SD Ar-Rayhan', 23, NULL, -6.2904728, 106.954865499999, NULL),
(24, 'SD Bekasi Jaya XIII', 24, NULL, -6.295416, 106.99675, NULL),
(25, 'SD Santa Maria Monica', 25, NULL, -6.2594451, 107.019382199999, NULL),
(26, 'Sekolah Dasar Martha', 26, NULL, -6.2782211, 106.9186707, NULL),
(27, 'Sekolah Dasar Citta Bangsa', 27, NULL, -6.2797275, 106.9524612, NULL),
(28, 'UPTD Pembinaan SD Kecamatan Bekasi Barat', 28, NULL, -6.23262, 106.9642869, NULL),
(29, 'SD Strada Bhakti Wiyata 1', 29, NULL, -6.2324547, 106.969782199999, NULL),
(30, 'SD Cendrawasih Jaya', 30, NULL, -6.23762, 107.017099999999, NULL),
(31, 'SD Islam Syafiul Ikhwan', 31, NULL, -6.2561235, 106.9258812, NULL),
(32, 'SD Negeri Bahagia 06', 32, NULL, -6.1964624, 107.0246889, NULL),
(33, 'SD ISLAM AL-AZHAR 9', 33, NULL, -6.2749093, 106.9894701, NULL),
(34, 'SD Pangudi Luhur Bernardus', 34, NULL, -6.3582672, 107.186274699999, NULL),
(35, 'SD Al - Muslim', 35, NULL, -6.2691122, 107.0745328, NULL),
(36, 'Sekolah Dasar Miftahul Jannah', 36, NULL, -6.2718456, 106.9141537, NULL),
(37, 'SD Islam Al Amal', 37, NULL, -6.25418, 107.007869999999, NULL),
(38, 'Sekolah Dasar Widya Bhakti', 38, NULL, -6.2773003, 107.004012399999, NULL),
(39, 'Sekolah Dasar Advent XIV Bekasi', 39, NULL, -6.2479624, 107.0093324, NULL),
(40, 'Sekolah Dasar Dian Karunia', 40, NULL, -6.2530738, 106.9681889, NULL),
(41, 'SD HARAPAN MULIA', 41, NULL, -6.2674698, 106.9734397, NULL),
(42, 'SD Kasih Bunda', 42, NULL, -6.243847, 107.006657, NULL),
(43, 'Sekolah Dasar Kristen Penabur Bekasi', 43, NULL, -6.227616, 107.0146308, NULL),
(44, 'SDN Bekasi Jaya', 44, NULL, -6.23461, 107.008254199999, NULL),
(45, 'SD Islam Al - Fajar', 45, NULL, -6.304493, 106.969257999999, NULL),
(46, 'SD Negeri Nusantara', 46, NULL, -6.24534, 107.010955999999, NULL),
(47, 'Sekolah Dasar Islam Terpadu Widya Duta', 47, NULL, -6.2025715, 107.0063418, NULL),
(48, 'Sekolah Dasar Maria Fransiska', 48, NULL, -6.2547119, 106.9691222, NULL),
(49, 'Sekolah Dasar Strada Budi Luhur 2', 49, NULL, -6.2495125, 107.012557799999, NULL),
(50, 'Sekolah Dasar Mandalahayu', 50, NULL, -6.2583164, 107.015994599999, NULL),
(51, 'Sekolah Dasar Islam Al-Husna', 51, NULL, -6.2133045, 107.027415399999, NULL),
(52, 'Sekolah Dasar Negeri Kayuringin Jaya 17', 52, NULL, -6.2369238, 106.9823056, NULL),
(53, 'Sekolah Dasar Mentari Indonesia', 53, NULL, -6.1759793, 106.999365299999, NULL),
(54, 'SD Maria Fransiska', 54, NULL, -6.2237102, 107.0218054, NULL),
(55, 'Sekolah Dasar Islam Terpadu Lab School ISTEC', 55, NULL, -6.2922412, 106.989211699999, NULL),
(56, 'Sekolah Dasar Negeri Kota Baru II', 56, NULL, -6.2161779, 106.9751327, NULL),
(57, 'Sekolah Dasar Marsudirini Bekasi', 57, NULL, -6.2764458, 106.9902629, NULL),
(58, 'Sekolah Dasar Harapan Indonesia', 58, NULL, -6.2160288, 106.987752, NULL),
(59, 'Sekolah Dasar Islam Terpadu Riyadh El Jannah Islam', 59, NULL, -6.2886979, 107.035213999999, NULL),
(60, 'SD ISLAM AL FAJRI', 60, NULL, -6.2488112, 106.968064699999, NULL),
(61, 'Sekolah Dasar Islam Terpadu Thariq Bin Ziyad', 61, NULL, -6.2655545, 107.012291399999, NULL),
(62, 'Sekolah Dasar Islam Terpadu Salsabila', 62, NULL, -6.2384127, 107.007396499999, NULL),
(63, 'SD Bekasi Jaya XIII', 63, NULL, -6.295416, 106.99675, NULL),
(64, 'Sekolah Dasar Strada Nawar', 64, NULL, -6.3366605, 106.9243151, NULL),
(65, 'Sekolah Dasar Islam Al-Azhar 6 Jakapermai', 65, NULL, -6.2447548, 106.975382699999, NULL),
(66, 'Sekolah Dasar Islam Terpadu Ar Rahmah', 66, NULL, -6.3217833, 107.0182577, NULL),
(67, 'Sekolah SD Islam', 67, NULL, -6.2491502, 106.9682027, NULL),
(68, 'Sekolah Dasar Negeri Bintara V', 68, NULL, -6.2296178, 106.9564976, NULL),
(69, 'Sekolah Dasar Negeri Bekasi Jaya IX', 69, NULL, -6.2282191, 107.019904299999, NULL),
(70, 'Sekolah Dasar Alam Pertiwi', 70, NULL, -6.3074851, 107.0299056, NULL),
(71, 'Sekolah Dasar Citta Bangsa', 71, NULL, -6.2797275, 106.9524612, NULL),
(72, 'Sekolah Dasar Negeri Padurenan VI', 72, NULL, -6.3148771, 107.020914, NULL),
(73, 'Sekolah Dasar Islam Terpadu IQRO', 73, NULL, -6.2811311, 106.9264603, NULL),
(74, 'Sekolah Dasar Strada Kampung Sawah', 74, NULL, -6.3212262, 106.937602799999, NULL),
(75, 'Sekolah Dasar Islam Al-Husna', 75, NULL, -6.2367542, 106.990357299999, NULL),
(76, 'Sekolah Tahfizh Plus HSG SD Khoiru Ummah 25 Cibubu', 76, NULL, -6.368191, 106.914344, NULL),
(77, 'Sekolah Dasar Muhammadiyah 47 Bekasi', 77, NULL, -6.2366016, 107.0078563, NULL),
(78, 'Sekolah Dasar Islam Darussalam', 78, NULL, -6.2570906, 106.976236799999, NULL),
(79, 'Sekolah Dasar Santa Lusia', 79, NULL, -6.3033416, 106.989162699999, NULL),
(80, 'SD Cenderawasih Jaya', 80, NULL, -6.227635, 107.016790999999, NULL),
(81, 'Sekolah Dasar Islam Terpadu Yayasan Pendidikan Isl', 81, NULL, -6.2592962, 107.0099045, NULL),
(82, 'Sekolah Dasar Kristen Penabur Harapan Indah', 82, NULL, -6.1787196, 106.973529299999, NULL),
(83, 'Sekolah Dasar Cahaya Harapan', 83, NULL, -6.1842245, 106.9790572, NULL),
(84, 'Sekolah Dasar Islam Terpadu (SDIT) Nurul Falah', 84, NULL, -6.2466203, 107.0784594, NULL),
(85, 'Sekolah Dasar 5 Bani Saleh', 85, NULL, -6.24377, 107.004899399999, NULL),
(86, 'SD Negeri Bekasi Jaya 2', 86, NULL, -6.218975, 107.027607, NULL),
(87, 'SD Mutiara 17 Agustus', 87, NULL, -6.2182179, 107.024726599999, NULL),
(88, 'Sekolah Dasar Advent XIV Bekasi', 88, NULL, -6.2479624, 107.0093324, NULL),
(89, 'SD Negeri Bahagia 06', 89, NULL, -6.1964624, 107.0246889, NULL),
(90, 'SD Islam Terpadu YPI 45', 90, NULL, -6.239709, 107.020482999999, NULL),
(91, 'SD Al Azhar Syifa Budi Jatibening', 91, NULL, -6.2566344, 106.940567599999, NULL),
(92, 'Uptd Pembinaan SD', 92, NULL, -6.3199858, 107.0323529, NULL),
(93, 'Sekolah Dasar Alodia', 93, NULL, -6.1746117, 106.993899999999, NULL),
(94, 'SD ISLAM AL-AZHAR 9', 94, NULL, -6.2749093, 106.9894701, NULL),
(95, 'Sekolah Dasar Islam Terpadu Al-Izzah', 95, NULL, -6.2552034, 106.983109299999, NULL),
(96, 'Sekolah Dasar Islam Al-Anshar', 96, NULL, -6.2666778, 106.974601, NULL),
(97, 'Sekolah Dasar Negeri Teluk Pucung VII', 97, NULL, -6.2100264, 107.029100499999, NULL),
(98, 'Sekolah Dasar Al Hanief', 98, NULL, -6.2732135, 106.994881899999, NULL),
(99, 'SD Negeri Bekasi Jaya 2', 99, NULL, -6.238791, 107.01269, NULL),
(100, 'Sekolah Dasar Islam Terpadu Al-Muhajirin', 100, NULL, -6.2240993, 106.970520699999, NULL),
(101, 'Sekolah Dasar Negeri Pekayon Jaya VI', 101, NULL, -6.2656485, 106.9857367, NULL),
(102, 'SDN Bekasi Jaya', 102, NULL, -6.23461, 107.008254199999, NULL),
(103, 'Sekolah SD Islam', 103, NULL, -6.2491502, 106.9682027, NULL),
(104, 'Sekolah Dasar Marsudirini Bekasi', 104, NULL, -6.2764458, 106.9902629, NULL),
(105, 'SD Islam Riyadhus Shalihin Bekasi', 105, NULL, -6.311952, 107.012451999999, NULL),
(106, 'SD Negeri Nusantara', 106, NULL, -6.24534, 107.010955999999, NULL),
(107, 'SD ISLAM AL FAJRI', 107, NULL, -6.2488112, 106.968064699999, NULL),
(108, 'SD Islam Al - Fajar', 108, NULL, -6.304493, 106.969257999999, NULL),
(109, 'Sekolah Dasar Strada Budi Luhur 2', 109, NULL, -6.2495125, 107.012557799999, NULL),
(110, 'Sekolah Dasar Mentari Indonesia', 110, NULL, -6.1759793, 106.999365299999, NULL),
(111, 'Sekolah Dasar Islam Al-Husna', 111, NULL, -6.2133045, 107.027415399999, NULL),
(112, 'Sekolah Dasar Mandalahayu', 112, NULL, -6.2583164, 107.015994599999, NULL),
(113, 'Sekolah Dasar Santa Lusia', 113, NULL, -6.3033416, 106.989162699999, NULL),
(114, 'Sekolah Dasar Islam Terpadu IQRO', 114, NULL, -6.2811311, 106.9264603, NULL),
(115, 'Sd Setia Bekasi Timur', 115, NULL, -6.2388155, 107.0378199, NULL),
(116, 'Sekolah Dasar Muhammadiyah 47 Bekasi', 116, NULL, -6.2366016, 107.0078563, NULL),
(117, 'Sekolah Dasar Kristen Penabur Bekasi', 117, NULL, -6.227616, 107.0146308, NULL),
(118, 'Sekolah Dasar Islam Al-Husna', 118, NULL, -6.2367542, 106.990357299999, NULL),
(119, 'Sekolah Dasar Strada Cakung', 119, NULL, -6.3397202, 106.944656499999, NULL),
(120, 'SD Muhammadiyah 47', 120, NULL, -6.238381, 107.007428, NULL),
(121, 'Sekolah Dasar Islam Darussalam', 121, NULL, -6.2570906, 106.976236799999, NULL),
(122, 'Sekolah Menengah Pertama Mutiara 17 Agustus 1', 122, NULL, -6.2195408, 107.0245368, NULL),
(123, 'SMPN 23 Bekasi', 123, NULL, -6.2768055, 106.9444914, NULL),
(124, 'SMP Negri 3 Bekasi', 124, NULL, -6.268819, 106.952208999999, NULL),
(125, 'Sekolah Menengah Pertama Bani Taqwa Bekasi', 125, NULL, -6.2671577, 107.012361299999, NULL),
(126, 'SMPN 1 Bekasi', 126, NULL, -6.2332833, 107.0090964, NULL),
(127, 'SMA PGRI 1 Bekasi', 127, NULL, -6.2340362, 107.020372399999, NULL),
(128, 'SMP Tashfia', 128, NULL, -6.2762862, 106.951481799999, NULL),
(129, 'Sekolah Menengah Pertama Negeri 2 Kota Bekasi', 129, NULL, -6.2554222, 107.0047469, NULL),
(130, 'SMP Negeri 40 Bekasi', 130, NULL, -6.3042058, 107.0200595, NULL),
(131, 'Sekolah Menengah Pertama Malidar', 131, NULL, -6.2949345, 106.9675655, NULL),
(132, 'SMPN 18 Bekasi', 132, NULL, -6.2318118, 107.0102092, NULL),
(133, 'SMPN Negeri 11 Kota Bekasi', 133, NULL, -6.2430811, 107.029192499999, NULL),
(134, 'SMPN 17 Bekasi', 134, NULL, -6.2658965, 106.924828399999, NULL),
(135, 'SMP Strada Budi Luhur', 135, NULL, -6.249505, 107.012518999999, NULL),
(136, 'Junior High School 32 Bekasi', 136, NULL, -6.2339093, 107.0361699, NULL),
(137, 'Sekolah Menengah Pertama Negeri 14 Kota Bekasi', 137, NULL, -6.2267808, 106.9582781, NULL),
(138, 'Sekolah Menengah Pertama Negeri 38 Bekasi', 138, NULL, -6.2059902, 107.0110044, NULL),
(139, 'Sekolah Menengah Pertama Negeri 22 Bekasi', 139, NULL, -6.2361343, 106.9597092, NULL),
(140, 'SMPN 31 Bekasi', 140, NULL, -6.3623634, 106.9875724, NULL),
(141, 'Sekolah Menengah Atas Marsudirini Bekasi', 141, NULL, -6.2769484, 106.9902756, NULL),
(142, 'Sekolah Menengah Pertama Negeri 40 Kota Bekasi', 142, NULL, -6.2946079, 107.0222573, NULL),
(143, 'Sekolah Menengah Pertama Negeri 19 Bekasi', 143, NULL, -6.175487, 106.981243, NULL),
(144, 'SMP Negeri 36 Bekasi', 144, NULL, -6.3084017, 107.0168577, NULL),
(145, 'SMP Negeri 25', 145, NULL, -6.214243, 106.9892724, NULL),
(146, 'Sekolah Menengah Pertama Sejahtera Bekasi', 146, NULL, -6.2322499, 107.01464, NULL),
(147, 'Sekolah Menengah Pertama Tamansiswa Bekasi', 147, NULL, -6.2636494, 107.0054989, NULL),
(148, 'Sekolah Menengah Pertama 27 Bekasi', 148, NULL, -6.3475038, 107.011899299999, NULL),
(149, 'Sekolah Menengah Pertama Patriot Bekasi', 149, NULL, -6.2209053, 106.9765524, NULL),
(150, 'Sekolah Menengah Pertama Negeri 30 Bekasi', 150, NULL, -6.3096748, 106.9602978, NULL),
(151, 'SMP Negeri 36 Bekasi', 151, NULL, -6.3106191, 107.016649599999, NULL),
(152, 'SMP Muhammadiyah 28 Bekasi', 152, NULL, -6.23905, 107.00627, NULL),
(153, 'SMP PGRI 3', 153, NULL, -6.2292113, 106.9567282, NULL),
(154, 'SMP Sumber Daya Bekasi', 154, NULL, -6.295867, 107.000596, NULL),
(155, 'Sekolah Menengah Pertama Santo Bellarminus Bekasi', 155, NULL, -6.2704746, 106.9330977, NULL),
(156, 'SMP Negeri 29 Bekasi', 156, NULL, -6.2693548, 106.963704699999, NULL),
(157, 'Sekolah Menengah Pertama Gelora Bekasi', 157, NULL, -6.2190049, 106.970127, NULL),
(158, 'Sekolah Menengah Pertama Advent XIV Bekasi', 158, NULL, -6.2479624, 107.0093324, NULL),
(159, 'SMP PGRI 1 Bekasi', 159, NULL, -6.22447, 107.0343199, NULL),
(160, 'SMP Galatia', 160, NULL, -6.1808962, 106.9882341, NULL),
(161, 'Sekolah Menengah Pertama Sandikta', 161, NULL, -6.3000219, 106.923811499999, NULL),
(162, 'SMP Negeri 5', 162, NULL, -6.2048892, 106.988452699999, NULL),
(163, 'Sekolah Menengah Pertama Negeri 8 Bekasi', 163, NULL, -6.2987428, 106.988681, NULL),
(164, 'SMP Negeri 12 Bekasi', 164, NULL, -6.2661774, 106.9745173, NULL),
(165, 'Sekolah Menengah Pertama Negeri 13 Kota Bekasi', 165, NULL, -6.2148125, 106.964894299999, NULL),
(166, 'SMP Negeri 24 Kota Bekasi', 166, NULL, -6.3432371, 106.9500392, NULL),
(167, 'SMP Negeri 7 Bekasi', 167, NULL, -6.2449208, 106.9826381, NULL),
(168, 'Sekolah Menengah Pertama Negeri 21 Bekasi', 168, NULL, -6.1997189, 107.021770099999, NULL),
(169, 'Sekolah Menengah Pertama Negeri 37 Bekasi', 169, NULL, -6.174627, 107.003168, NULL),
(170, 'SMPN 3 Bekasi', 170, NULL, -6.2346827, 107.007656699999, NULL),
(171, 'SMP Negeri 20 Bekasi', 171, NULL, -6.259716, 106.936261, NULL),
(172, 'SMP Negeri 16 Bekasi', 172, NULL, -6.2773036, 107.010154799999, NULL),
(173, 'SMP Darma Patria', 173, NULL, -6.2319332, 106.984250099999, NULL),
(174, 'SMP Negeri 6 Bekasi', 174, NULL, -6.2832952, 106.910060099999, NULL),
(175, 'Sekolah Menengah Pertama Negeri 6 Bekasi', 175, NULL, -6.2825259, 106.9126344, NULL),
(176, 'SMP Negeri 9 Bekasi', 176, NULL, -6.2918242, 106.9646422, NULL),
(177, 'SMP Widya Nusantara Bekasi', 177, NULL, -6.276892, 106.999336099999, NULL),
(178, 'SMP Negeri 39 Bekasi', 178, NULL, -6.3261038, 106.949692099999, NULL),
(179, 'SMP Strada Bhakti Wiyata', 179, NULL, -6.2317261, 106.9699126, NULL),
(180, 'SMP Negeri 41 Kota Bekasi', 180, NULL, -6.2938573, 106.9965155, NULL),
(181, 'SMP Negeri 15 Bekasi', 181, NULL, -6.2601678, 106.9230387, NULL),
(182, 'SMA Al Muhadjirin Bekasi', 182, NULL, -6.29723, 106.93214, NULL),
(183, 'SMA Negeri 17 Bekasi', 183, NULL, -6.2705013, 106.9640487, NULL),
(184, 'SMA YPI 45 Bekasi', 184, NULL, -6.259817, 107.010519, NULL),
(185, 'SMA Islam PB Soedirman 1 Bekasi', 185, NULL, -6.2589383, 106.9725717, NULL),
(186, 'SMA Future Gate', 186, NULL, -6.2850479, 106.966610599999, NULL),
(187, 'SMA Negeri 12 Bekasi', 187, NULL, -6.2224972, 106.9728534, NULL),
(188, 'SMAN 5 Tambun Selatan', 188, NULL, -6.2852606, 107.0388709, NULL),
(189, 'Sekolah Menengah Atas Sandikta', 189, NULL, -6.2999922, 106.923519799999, NULL),
(190, 'SMA Muhammadiyah 9 Bekasi', 190, NULL, -6.236614, 107.007910999999, NULL),
(191, 'Alexandria Islamic Senior High School', 191, NULL, -6.2683297, 107.006246899999, NULL),
(192, 'SMA Negeri 17 Bekasi', 192, NULL, -6.2618305, 106.961940499999, NULL),
(193, 'Sekolah Menengah Atas Dan SMK Al - Muhadjirin', 193, NULL, -6.2499676, 107.030045799999, NULL),
(194, 'Sekolah Menengah Atas Yasfi', 194, NULL, -6.3250924, 106.9382954, NULL),
(195, 'SMA Yadika 11 Jatirangga', 195, NULL, -6.3692489, 106.9358875, NULL),
(196, 'SMA Malidar', 196, NULL, -6.2584799, 106.99093, NULL),
(197, 'SMA PANGUDI LUHUR 2', 197, NULL, -6.3330533, 106.936914599999, NULL),
(198, 'SMAN 18 Bekasi', 198, NULL, -6.237646, 107.036063999999, NULL),
(199, 'SMA Sulthon Aulia Boarding School Bekasi', 199, NULL, -6.2617548, 106.9048037, NULL),
(200, 'SMA Nasional 1', 200, NULL, -6.2931892, 106.9168013, NULL),
(201, 'Sekolah Menengah Atas Tamansiswa Bekasi', 201, NULL, -6.2636949, 107.005536399999, NULL),
(202, 'SMA Al-Muslim Bekasi', 202, NULL, -6.2692284, 107.0745869, NULL),
(203, 'SMA Daya Utama', 203, NULL, -6.2961625, 107.0301651, NULL),
(204, 'Sekolah Menengah Atas Pax Patriae', 204, NULL, -6.2691539, 106.9734186, NULL),
(205, 'Sekolah Menengah Atas Pangeran Jayakarta', 205, NULL, -6.2254204, 106.9865529, NULL),
(206, 'Mutiara Baru Senior High School', 206, NULL, -6.2689322, 106.999282199999, NULL),
(207, 'Sekolah Menengah Umum Toga Terang', 207, NULL, -6.2418767, 106.9475398, NULL),
(208, 'KB-TK-SD-SMP-SMA-SMK GALAJUARA KOTA BEKASI', 208, NULL, -6.1790289, 106.9996246, NULL),
(209, 'SMA Bina Siswa Utama Bekasi', 209, NULL, -6.2816857, 106.971925999999, NULL),
(210, 'Sekolah Menengah Atas Global Prestasi', 210, NULL, -6.2490386, 106.9621637, NULL),
(211, 'SMA Taman Harapan 2', 211, NULL, -6.1965899, 106.987539999999, NULL),
(212, 'Sekolah Menengah Atas (SMA) SR Bekasi', 212, NULL, -6.1877692, 107.038843799999, NULL),
(213, 'SMA Tunas Jakasampurna', 213, NULL, -6.2582894, 106.966529399999, NULL),
(214, 'Sekolah Menengah Atas Persada Plus Galajuara', 214, NULL, -6.1789957, 106.999714699999, NULL),
(215, 'TK-SD-SMP-SMA-SMK Travina Prima', 215, NULL, -6.2064531, 107.008326499999, NULL),
(216, 'SMA Hutama', 216, NULL, -6.2892757, 106.9156586, NULL),
(217, 'Sekolah Menengah Atas Al-Ihsan', 217, NULL, -6.246314, 106.986725, NULL),
(218, 'SMA Strada', 218, NULL, -6.2290711, 106.966530399999, NULL),
(219, 'SMAN 3 Bekasi', 219, NULL, -6.2663419, 106.975194, NULL),
(220, 'Sekolah Menengah Umum Galatia', 220, NULL, -6.1863144, 106.984342999999, NULL),
(221, 'Sekolah Menengah Atas Negeri 13 Bekasi', 221, NULL, -6.268382, 107.004821899999, NULL),
(222, 'Sekolah Menengah Atas Marsudirini Bekasi', 222, NULL, -6.2769484, 106.9902756, NULL),
(223, 'SMA Negeri 11 Bekasi', 223, NULL, -6.343362, 106.940483099999, NULL),
(224, 'SMA Negeri 8 Bekasi', 224, NULL, -6.266106, 106.9824406, NULL),
(225, 'SMA Patriot', 225, NULL, -6.220926, 106.976643899999, NULL),
(226, 'SMA Negeri 16 Bekasi', 226, NULL, -6.3107248, 106.931544299999, NULL),
(227, 'SMA Korpri Bekasi', 227, NULL, -6.2318832, 107.011891599999, NULL),
(228, 'SMA PGRI 1 Bekasi', 228, NULL, -6.2340362, 107.020372399999, NULL),
(229, 'SMA Negeri 7 Bekasi', 229, NULL, -6.3698596, 106.9213107, NULL),
(230, 'SMA Negeri 10 Bekasi', 230, NULL, -6.1760823, 106.981118899999, NULL),
(231, 'Sekolah Menengah Atas Negeri 6 Kota Bekasi', 231, NULL, -6.2811248, 106.9737542, NULL),
(232, 'SMA Bani Saleh Kota Bekasi', 232, NULL, -6.2458774, 107.011838299999, NULL),
(233, 'SMAN 14 KOTA BEKASI', 233, NULL, -6.1970616, 107.008568699999, NULL),
(234, 'Sekolah Menengah Atas Santo Bellarminus Bekasi', 234, NULL, -6.2711088, 106.9323399, NULL),
(235, 'Sekolah Menengah Atas PGRI 2 Kota Bekasi', 235, NULL, -6.2223012, 107.003485499999, NULL),
(236, 'SMA Martia Bhakti', 236, NULL, -6.2326664, 106.9875069, NULL),
(237, 'SMP/SMA/SMK Yadika 9 Bintara Jaya', 237, NULL, -6.2398785, 106.9450546, NULL),
(238, 'Sekolah Menengah Atas Widya Nusantara', 238, NULL, -6.2771523, 106.998943499999, NULL),
(239, 'Sekolah Menengah Atas Negeri 2 Kota Bekasi', 239, NULL, -6.2404366, 106.990959899999, NULL),
(240, 'SMA ANANDA BEKASI', 240, NULL, -6.2330816, 107.0231337, NULL),
(241, 'Akademi Kebidanan Kartika Mitra Husada', 241, NULL, -6.2186127, 106.876948999999, NULL),
(242, 'Akademi Keperawatan (Akper) Royhan', 242, NULL, -6.363786, 106.918444399999, NULL),
(243, 'Akademi Kebidanan Kartika Mitra Husada', 243, NULL, -6.216572, 106.875401999999, NULL),
(244, 'Akademi Kebidanan Bhakti Husada', 244, NULL, -6.2563974, 107.1568295, NULL),
(245, 'Akademi Keperawatan Bhakti Husada Cikarang', 245, NULL, -6.2594177, 107.145063699999, NULL),
(246, 'Komplek Akademi TNI', 246, NULL, -6.1881844, 106.9623636, NULL),
(247, 'Komplek Mako Akademi TNI', 247, NULL, -6.2003912, 106.9036631, NULL),
(248, 'Akademi Keperawatan Mitra Keluarga', 248, NULL, -6.209949, 106.892094, NULL),
(249, 'Akademi Teknik Otomotive', 249, NULL, -6.2811575, 106.9163489, NULL),
(250, 'Akademi Keperawatan Antariksa Jakarta', 250, NULL, -6.294397, 106.92014, NULL),
(251, 'Akademi Alkautsar', 251, NULL, -6.2669292, 106.974519299999, NULL),
(252, 'Akademi Teknik Patriot', 252, NULL, -6.2209618, 106.9771135, NULL),
(253, 'Sekolah Tinggi Ilmu Kesehatan Mitra Keluarga', 253, NULL, -6.2608233, 107.013668699999, NULL),
(254, 'Akademi Radiognostik Dan Radioterapi Yapenpernus', 254, NULL, -6.268675, 107.006424999999, NULL),
(255, 'Akademi Manajemen Informatika dan Komputer (AMIK) ', 255, NULL, -6.2691842, 107.0742321, NULL),
(256, 'Akademi Koluchstyl Indonesia', 256, NULL, -6.292845, 106.959869299999, NULL),
(257, 'Akademi Bahasa Asing Borobudur', 257, NULL, -6.263793, 106.935135, NULL),
(258, 'STBA JIA (Sekolah Tinggi Bahasa Asing JIA)', 258, NULL, -6.2519947, 107.012184399999, NULL),
(259, 'ATMI Cikarang', 259, NULL, -6.280709, 107.171834, NULL),
(260, 'Akademi Manajemen Informatika Komputer Cikarang', 260, NULL, -6.257285, 107.147101, NULL),
(261, 'Akademi Komunitas Presiden', 261, NULL, -6.2462947, 107.159291199999, NULL),
(262, 'Bina Sarana Informatika (BSI)', 262, NULL, -6.2598405, 107.0032089, NULL),
(263, 'Akademi Kebidanan Farama Mulya', 263, NULL, -6.308959, 106.924438499999, NULL),
(264, 'Perguruan Tinggi Bina Insani', 264, NULL, -6.2597694, 106.9945277, NULL),
(265, 'Akademi Kebidanan Gema Nusantara Bekasi', 265, NULL, -6.2782374, 107.0149396, NULL),
(266, 'Akademi Kebidanan Suka Wangi Bekasi', 266, NULL, -6.2290305, 106.976718, NULL),
(267, 'Akademi Bina Insani', 267, NULL, -6.227593, 106.9907, NULL),
(268, 'Akademi Kebidanan Prima Indonesia', 268, NULL, -6.2326084, 106.9651293, NULL),
(269, 'Akademi Perdagangan Bandung', 269, NULL, -6.2368866, 106.9455344, NULL),
(270, 'Akademi Keuangan Dan Perbankan Indonesia', 270, NULL, -6.2381066, 107.022147599999, NULL),
(271, 'Akademi Kebidanan Bhakti Pertiwi Indonesia', 271, NULL, -6.211226, 106.964663999999, NULL),
(272, 'Akademi Perawat Bani Saleh', 272, NULL, -6.246662, 107.002887999999, NULL),
(273, 'Akademi Keuangan Dan Perbankan Indonesia', 273, NULL, -6.249025, 107.016110999999, NULL),
(274, 'Akademi Manajemen Informatika Dan Komputer Sultan ', 274, NULL, -6.218975, 107.027607, NULL),
(275, 'Akademi Teknologi Patriot', 275, NULL, -6.2287416, 106.9923823, NULL),
(276, 'Akademi Komunikasi Radio Dan Televisi Hutama', 276, NULL, -6.28649, 106.914, NULL),
(277, 'Akademi Sekretari Dan Manajemen Insulindo', 277, NULL, -6.24551, 107.008037999999, NULL),
(278, 'Akademi Rontgen (ATRO) Persada Nusantara Bekasi', 278, NULL, -6.2772771, 107.0127827, NULL),
(279, 'Akademi Keperawatan As-Syafi''Iyah', 279, NULL, -6.27327, 106.912289999999, NULL),
(280, 'Akademi Keperawatan', 280, NULL, -6.2621641, 106.9104528, NULL),
(281, 'Akademi Keperawatan Mitra Keluarga', 281, NULL, -6.2167436, 106.8705314, NULL),
(282, 'Akademi Rontgen', 282, NULL, -6.2660467, 107.0084734, NULL),
(283, 'Institut Teknologi dan Sains Bandung', 283, NULL, -6.354277, 107.198848999999, NULL),
(284, 'STIAMI Bekasi', 284, NULL, -6.2320588, 106.988754099999, NULL),
(285, 'Institut Bisnis Muhammadiyah Bekasi', 285, NULL, -6.245756, 106.991725, NULL),
(286, 'Institut Agama Islam Shalahuddin Al-Ayyubi (INISA)', 286, NULL, -6.2614272, 107.0607868, NULL),
(287, 'Institut Jepang Indonesia Amerika', 287, NULL, -6.239709, 107.020482999999, NULL),
(288, 'Institut Ilmu Sosial dan Manajemen STIAMI, Kampus ', 288, NULL, -6.2660584, 107.1472705, NULL),
(289, 'institut carrefour indonesia juanda Bekasi', 289, NULL, -6.248128, 107.020409299999, NULL),
(290, 'Institut Hypnotis Hypnotherapi Indonesia', 290, NULL, -6.254703, 107.004164, NULL),
(291, 'LBH Institut Trias Politika RI', 291, NULL, -6.2177269, 107.0591759, NULL),
(292, 'English Club Institut Empowfring Community', 292, NULL, -6.2428228, 106.9873309, NULL),
(293, 'Politeknik Gunakarya Indonesia', 293, NULL, -6.2518011, 107.012801499999, NULL),
(294, 'Politeknik Gunakarya Indonesia', 294, NULL, -6.3188865, 107.136227, NULL),
(295, 'Politeknik LP3I Jakarta Kampus Bekasi | LP3I Bekas', 295, NULL, -6.227951, 106.982758, NULL),
(296, 'Politeknik Kelapa Sawit Citra Widya Edukasi', 296, NULL, -6.30179, 107.065337999999, NULL),
(297, 'Sekolah Tinggi Duta Bangsa', 297, NULL, -6.2212314, 106.977238499999, NULL),
(298, 'STEI Sekolah Tinggi Ilmu Ekonomi Indonesia', 298, NULL, -6.238937, 107.000459699999, NULL),
(299, 'Sekolah Tinggi Teologi Harapan Indah', 299, NULL, -6.1809583, 106.9839278, NULL),
(300, 'Sekolah Tinggi Agama Islam Nur El-Ghazy', 300, NULL, -6.2572089, 107.0166044, NULL),
(301, 'Sekolah Tinggi Bahasa Asing Intensive English Cour', 301, NULL, -6.2480288, 107.018616199999, NULL),
(302, 'stt bina tunggal', 302, NULL, -6.2097022, 106.9772568, NULL),
(303, 'STIKES Abdi Nusantara', 303, NULL, -6.2509253, 106.947258, NULL),
(304, 'STIE Bisnis Internasional Indonesia', 304, NULL, -6.2612146, 107.0589137, NULL),
(305, 'Sekolah Tinggi Ilmu Kesehatan Medika Cikarang', 305, NULL, -6.3026729, 107.1472408, NULL),
(306, 'STMIK Pranata Indonesia', 306, NULL, -6.2517618, 107.0128109, NULL),
(307, 'STTJ', 307, NULL, -6.262846, 106.9152021, NULL),
(308, 'Sekolah Tinggi Ilmu Ekonomi Indoneisa (Kamus D)', 308, NULL, -6.248049, 106.995408999999, NULL),
(309, 'Sekolah Tinggi Manajemen Informatika dan Komputer ', 309, NULL, -6.223838, 107.025962, NULL),
(310, 'Sekolah Tinggi Manajemen T. Malahayati', 310, NULL, -6.2472446, 106.994472799999, NULL),
(311, 'Gedung Pusat Belajar Kh.noer Alie Sekolah Tinggi A', 311, NULL, -6.1903596, 107.0209604, NULL),
(312, 'Sekolah Tinggi Ilmu Ekonomi (STIE) Tri Buana', 312, NULL, -6.363795, 106.918443699999, NULL),
(313, 'Akademik dan Sekolah Tinggi Galajuara', 313, NULL, -6.1789957, 106.999714699999, NULL),
(314, 'Sekolah Tinggi Ingress Yanto Terbuka', 314, NULL, -6.24867, 106.967118099999, NULL),
(315, 'Sekolah Tinggi Management IMMI S1', 315, NULL, -6.3761558, 106.916072299999, NULL),
(316, 'Sekolah Tinggi Ilmu Ekonomi DWIPA Wacana', 316, NULL, -6.1828905, 106.9918494, NULL),
(317, 'Sekolah Tinggi Ilmu Ekonomi " Kalpataru"', 317, NULL, -6.2695831, 106.9994427, NULL),
(318, 'Sekolah Tinggi Bahasa Asing Intensive English Cour', 318, NULL, -6.2117821, 106.893867999999, NULL),
(319, 'Sekolah Tinggi Teknologi Jakarta (STTJ)', 319, NULL, -6.2701563, 106.9120369, NULL),
(320, 'Sekolah Tinggi Agama Islam Nur El-Ghazy', 320, NULL, -6.2684046, 107.075286199999, NULL),
(321, 'Sekolah Tinggi Ilmu Ekonomi Dwipawacana', 321, NULL, -6.2780681, 107.088720699999, NULL),
(322, 'Sekolah Tinggi Ilmu Da''wah Muhammad Natsir', 322, NULL, -6.2540489, 107.0500023, NULL),
(323, 'SMPN 3 Bekasi', 323, NULL, -6.2346827, 107.007656699999, NULL),
(324, 'Sekolah Menengah Pertama Negeri (SMPN) 36 Bekasi', 324, NULL, -6.3004544, 106.9906354, NULL),
(325, 'Sekolah Tinggi Teknik Texmaco', 325, NULL, -6.3185842, 107.136319499999, NULL),
(326, 'Sekolah Tinggi Dariwisata Sahid', 326, NULL, -6.331885, 107.1318184, NULL),
(327, 'Sekolah Tinggi Ilmu Ekonomi Paripurna', 327, NULL, -6.1941665, 106.5461813, NULL),
(328, 'Koperasi Pegawai Sekolah Tinggi Ilmu Pelayaran', 328, NULL, -6.102514, 106.986344, NULL),
(329, 'STKIP Panca Sakti Program Studi Pendidikan Ekonomi', 329, NULL, -6.287935, 106.914615999999, NULL),
(330, 'LP3T Nurul Fikri', 330, NULL, -6.2432614, 106.991291899999, NULL),
(331, 'Sekolah Tinggi Teknologi Informatika', 331, NULL, -6.2629475, 107.1470845, NULL),
(332, 'Sekolah Menengah Pertama Terbuka (SMPIT) AS Suadah', 332, NULL, -6.175988, 107.002703999999, NULL),
(333, 'Pendidikan Guru Sekolah Dasar Yayasan Pendidikan I', 333, NULL, -6.2593642, 107.0099081, NULL),
(334, 'STIE Pertiwi', 334, NULL, -6.2461386, 107.0089066, NULL),
(335, 'STKIP Panca Sakti', 335, NULL, -6.2517848, 107.0128411, NULL),
(336, 'Universitas Muhammadiyah', 336, NULL, -6.2366536, 107.0079621, NULL),
(337, 'STBA JIA (Sekolah Tinggi Bahasa Asing JIA)', 337, NULL, -6.2519947, 107.012184399999, NULL),
(338, 'Perguruan Tinggi Bina Insani', 338, NULL, -6.2597694, 106.9945277, NULL),
(339, 'Sekolah Tinggi Transportasi Darat', 339, NULL, -6.2959845, 107.068974699999, NULL),
(340, 'Sekolah Tinggi Pelita Bangsa', 340, NULL, -6.3240986, 107.169670199999, NULL),
(341, 'STIE Mulia Pratama', 341, NULL, -6.2604168, 107.019210999999, NULL),
(342, 'STT LETS (Sekolah Tinggi Teologi LETS)', 342, NULL, -6.2485688, 106.970281999999, NULL),
(343, 'SEKOLAH TINGGI TEKNIK DUTA BANGSA', 343, NULL, -6.2991101, 107.1480502, NULL),
(344, 'Sekolah Tinggi Ilmu Kesehatan Mitra Keluarga', 344, NULL, -6.2608233, 107.013668699999, NULL),
(345, 'Sekolah Tinggi Ilmu Kesehatan Persada Husada Indon', 345, NULL, -6.336182, 106.950642999999, NULL),
(346, 'Sekolah Tinggi Ilmu Administrasi Sandikta', 346, NULL, -6.2999825, 106.9236958, NULL),
(347, 'STMIK MIKAR', 347, NULL, -6.2543163, 107.0033602, NULL),
(348, 'Sekolah Tinggi Agama Islam Bani Saleh', 348, NULL, -6.2633887, 107.1379749, NULL),
(349, 'STMIK Mercusuar', 349, NULL, -6.281635, 106.913844999999, NULL),
(350, 'Sekolah Tinggi Ilmu Manajemen (STIM) Budi Bakti', 350, NULL, -6.232919, 106.991212, NULL),
(351, 'Trisakti School of Management - Bekasi', 351, NULL, -6.2734234, 106.9925616, NULL),
(352, 'STKIP Kusuma Negara, Kampus B', 352, NULL, -6.2283794, 106.9533657, NULL),
(353, 'Sekolah Tinggi Ilmu Kesehatan Medistra Indonesia', 353, NULL, -6.2619818, 107.0014206, NULL),
(354, 'Sekolah Tinggi Ilmu Manajemen Budi Bakti', 354, NULL, -6.2339623, 107.020854999999, NULL),
(355, 'Sekolah Tinggi Manajemen Informatika Dan Komputer ', 355, NULL, -6.24534, 107.010955999999, NULL),
(356, 'Sekolah Tinggi Teologi Bethesda', 356, NULL, -6.1657744, 106.973971599999, NULL),
(357, 'Universitas Mercusuar', 357, NULL, -6.274689, 106.928901999999, NULL),
(358, 'STIAMI Bekasi', 358, NULL, -6.2320588, 106.988754099999, NULL),
(359, 'Kampus 2, Fakultas Ekonomi UIA', 359, NULL, -6.2604513, 106.910884699999, NULL),
(360, 'Assyafi''iyah Kampus Jatiwaringin', 360, NULL, -6.2621417, 106.910546699999, NULL),
(361, 'Universitas Mercubuana Gedung 2 Kampus Bekasi', 361, NULL, -6.3468815, 106.924813, NULL),
(362, 'Universitas Islam As-Syafiiyah', 362, NULL, -6.4169587, 107.087969799999, NULL),
(363, 'UNIVERSITAS ISLAM "45" BEKASI', 363, NULL, -6.2575622, 107.007236599999, NULL),
(364, 'Universitas Kristen Krida Wacana (UKRIDA) Kampus I', 364, NULL, -6.331763, 107.135302999999, NULL),
(365, 'Politeknik Kelapa Sawit Citra Widya Edukasi', 365, NULL, -6.30179, 107.065337999999, NULL),
(366, 'STMIK Bina Insani', 366, NULL, -6.2598955, 106.9948377, NULL),
(367, 'Politeknik Gunakarya Indonesia', 367, NULL, -6.2518011, 107.012801499999, NULL),
(368, 'STIE Tribuana', 368, NULL, -6.2567644, 107.022305599999, NULL),
(369, 'Bina Sarana Informatika (BSI)', 369, NULL, -6.2598405, 107.0032089, NULL),
(370, 'Trisakti School of Management - Bekasi', 370, NULL, -6.2734234, 106.9925616, NULL),
(371, 'Universitas', 371, NULL, -6.2841817, 106.911082399999, NULL),
(372, 'Universitas Mercubuana', 372, NULL, -6.346634, 106.922444299999, NULL),
(373, 'Fakultas Ekonomi Unisma Bekasi', 373, NULL, -6.2579885, 107.0065117, NULL),
(374, 'Stima Immi', 374, NULL, -6.3761489, 106.9160911, NULL),
(375, 'Institut Teknologi dan Sains Bandung', 375, NULL, -6.354277, 107.198848999999, NULL),
(376, 'Bina Sarana Informatika', 376, NULL, -6.2619315, 106.9077226, NULL),
(377, 'STKIP Titian Ilmu Bekasi', 377, NULL, -6.3007053, 106.9892681, NULL),
(378, 'Sekolah Tinggi Ilmu Manajemen (STIM) Budi Bakti', 378, NULL, -6.232919, 106.991212, NULL),
(379, 'Binus University Bekasi', 379, NULL, -6.2194491, 106.9987682, NULL),
(380, 'Universitas Negeri Jakarta', 380, NULL, -6.1488715, 106.993780999999, NULL),
(381, 'STTJ', 381, NULL, -6.2704413, 106.9121037, NULL),
(382, 'Jurusan Teknik Komputer', 382, NULL, -6.2141708, 107.030760299999, NULL),
(383, 'Mercu Buana', 383, NULL, -6.2093646, 106.7384856, NULL),
(384, 'STKIP Kusuma Negara, Kampus B', 384, NULL, -6.2283794, 106.9533657, NULL),
(385, 'UNIVERSITAS GUNA DARMA J4', 385, NULL, -6.1935917, 106.846609, NULL),
(386, 'Fakultas Hubungan Masyarakat', 386, NULL, -6.287438, 106.915183999999, NULL),
(387, 'STIU Darul Hikmah', 387, NULL, -6.3304808, 106.944891999999, NULL),
(388, 'Universitas Muhammadiyah', 388, NULL, -6.2366536, 107.0079621, NULL),
(389, 'Universitas Bhayangkara Jakarta Raya Kampus II', 389, NULL, -6.2235531, 107.008993799999, NULL),
(390, 'President University', 390, NULL, -6.2847198, 107.17071, NULL),
(391, 'University Esa Unggul Bekasi Harapan Indah', 391, NULL, -6.1797933, 106.9738126, NULL),
(392, 'Universitas Islam As-Syafi''iyah', 392, NULL, -6.2621045, 106.9106737, NULL),
(393, 'Universitas Satya Negara Indonesia - Kampus B', 393, NULL, -6.273082, 107.019485, NULL),
(394, 'Gunadarma J1 Kalimalang', 394, NULL, -6.2492015, 106.970476199999, NULL),
(395, 'Sekolah Tinggi Pelita Bangsa', 395, NULL, -6.3240986, 107.169670199999, NULL),
(396, 'Fakultas Sastra', 396, NULL, -6.2487905, 106.970473499999, NULL),
(397, 'MERCU BUANA UNIVERSITY', 397, NULL, -6.3464196, 106.922147899999, NULL),
(398, 'Universitas Bhayangkara', 398, NULL, -6.2318438, 106.9848207, NULL),
(399, 'STBA JIA (Sekolah Tinggi Bahasa Asing JIA)', 399, NULL, -6.2519947, 107.012184399999, NULL),
(400, 'STIE Tri Bhakti', 400, NULL, -6.2600464, 106.9992648, NULL),
(401, 'Sekolah Tinggi Ilmu Kesehatan Mitra Keluarga', 401, NULL, -6.2608233, 107.013668699999, NULL),
(402, 'STMIK Mercusuar', 402, NULL, -6.281635, 106.913844999999, NULL),
(403, 'Kampus B STID Mohammad Natsir', 403, NULL, -6.2539052, 107.050178099999, NULL),
(404, 'STIE Pertiwi', 404, NULL, -6.2461386, 107.0089066, NULL),
(405, 'Universitas Gunadarma Kampus J2', 405, NULL, -6.2472318, 106.975583499999, NULL),
(406, 'Institut Agama Islam Shalahuddin Al-Ayyubi (INISA)', 406, NULL, -6.2614272, 107.0607868, NULL),
(407, 'Grand Icon Caman', 407, NULL, -6.248389, 106.9537741, NULL),
(408, 'Trivium Terrace Apartment', 408, NULL, -6.3308179, 107.129107899999, NULL),
(409, 'Apartemen Prima Orchard Bekasi', 409, NULL, -6.2200431, 107.015015, NULL),
(410, 'Tamansari Iswara Apartment', 410, NULL, -6.260851, 106.9966636, NULL),
(411, 'Chadstone Cikarang', 411, NULL, -6.3124407, 107.1416045, NULL),
(412, 'Apartemen Pondok Indah', 412, NULL, -6.180492, 107.011471, NULL),
(413, 'ISABELLA TOWER', 413, NULL, -6.2575786, 106.980441999999, NULL),
(414, 'Lagoon Resort Apartemen', 414, NULL, -6.2562501, 107.010506199999, NULL),
(415, 'Apartemen Kota Swarnabumi - Marketing Gallery', 415, NULL, -6.295909, 106.959434, NULL),
(416, 'Hero''s Apartemen', 416, NULL, -6.2262398, 106.9782258, NULL),
(417, 'Mardhika Park', 417, NULL, -6.2678159, 107.0662243, NULL),
(418, 'Apartemen City Terrace', 418, NULL, -6.2664474, 106.9502334, NULL),
(419, 'Apartemen Gangnam Bekasi Tower A', 419, NULL, -6.2714088, 106.995944699999, NULL),
(420, 'Mustika Golf Residence', 420, NULL, -6.297883, 107.1658718, NULL),
(421, 'Guest House di Bekasi', 421, NULL, -6.275084, 106.977348, NULL),
(422, 'Riverview Apartment', 422, NULL, -6.2946282, 107.1335301, NULL),
(423, 'Grand Dhika City Jatiwarna', 423, NULL, -6.3114103, 106.9234072, NULL),
(424, 'Apartement Mutiara Bekasi', 424, NULL, -6.2767551, 107.0028659, NULL),
(425, 'Low Rise Summarecon Bekasi', 425, NULL, -6.2233794, 106.989304, NULL),
(426, 'GANGNAM DISTRICT RESIDENCE', 426, NULL, -6.26661, 106.9952707, NULL),
(427, 'Apartemen Mutiara', 427, NULL, -6.2517765, 106.990967299999, NULL),
(428, 'The SpringLake', 428, NULL, -6.2224038, 106.999112499999, NULL),
(429, 'Apartment Centerpoint- Kota Bekasi', 429, NULL, -6.2438176, 106.993375299999, NULL),
(430, 'Thamrin District Apartemen Bekasi', 430, NULL, -6.256478, 106.991350999999, NULL),
(431, 'Grand Kamala Lagoon', 431, NULL, -6.251078, 106.978675999999, NULL),
(432, 'Metropolitan Park Apartment', 432, NULL, -6.2097769, 107.023988, NULL),
(433, 'Grand Dhika City - Bekasi Timur', 433, NULL, -6.2627043, 107.0194369, NULL),
(434, 'WISMAYA RESIDENCE', 434, NULL, -6.251717, 107.001957, NULL),
(435, 'Apartment Tamansari Urbano', 435, NULL, -6.2344769, 106.9986016, NULL),
(436, 'Grand Cut Meutia', 436, NULL, -6.260546, 106.9972453, NULL),
(437, 'Indigo Apartemen Bekasi', 437, NULL, -6.2626216, 106.9956068, NULL),
(438, 'City Terrace Apartment', 438, NULL, -6.2701307, 106.943766499999, NULL),
(439, 'Bintara Residence', 439, NULL, -6.2328994, 106.9660315, NULL),
(440, 'Metro Galaxy Park Apartment And Hotel', 440, NULL, -6.2479694, 106.976840499999, NULL),
(441, 'Victoria Tower', 441, NULL, -6.2545244, 106.9770208, NULL),
(442, 'cityland', 442, NULL, -6.260907, 106.9475668, NULL),
(443, 'SENTRALAND BEKASI', 443, NULL, -6.2916718, 106.9852374, NULL),
(444, 'Apartemen Grand ICON', 444, NULL, -6.2521344, 106.9525225, NULL),
(445, 'Mont Blanc Apartment', 445, NULL, -6.259775, 107.020538, NULL),
(446, 'Green Loft Apartment', 446, NULL, -6.2678666, 107.017156499999, NULL),
(447, 'Bumi Satria Kencana', 447, NULL, -6.2430944, 106.978246299999, NULL),
(448, 'Rumah Minimalis Bekasi', 448, NULL, -6.19017, 107.031692, NULL),
(449, 'Perumahan Permata Bekasi II', 449, NULL, -6.232905, 107.0251494, NULL),
(450, 'Perumahan Subsidi', 450, NULL, -6.389996, 107.1037007, NULL),
(451, 'Perumahan Griya Mustika Sari', 451, NULL, -6.282929, 107.016366, NULL),
(452, 'Perumahan Bekasi Griya Pratama', 452, NULL, -6.2286372, 107.084662199999, NULL),
(453, 'Kantor Pemasaran Tre Vista Residence Bekasi', 453, NULL, -6.204092, 107.036852499999, NULL),
(454, 'J.Properti', 454, NULL, -6.1762196, 107.001183499999, NULL),
(455, 'Wahana Pondok Gede', 455, NULL, -6.3476509, 106.934663299999, NULL),
(456, 'Perumahan Violet Garden', 456, NULL, -6.2229784, 106.9745958, NULL),
(457, 'Perumahan Graha Satria Mandiri : Dini', 457, NULL, -6.2122553, 107.048010599999, NULL),
(458, 'Perumahan Jatibening II', 458, NULL, -6.2606227, 106.9393076, NULL),
(459, 'Golden City Bekasi', 459, NULL, -6.2073413, 107.0205238, NULL),
(460, 'Perumahan Pondok Cipta', 460, NULL, -6.2292595, 106.960464999999, NULL),
(461, 'PERUMAHAN CAHAYA DARUSSALAM 2', 461, NULL, -6.2009585, 107.074749199999, NULL),
(462, 'Rumah Subsidi Cikarang Bekasi', 462, NULL, -6.2130607, 107.1683696, NULL),
(463, 'The Palm Residence', 463, NULL, -6.1905503, 107.0497479, NULL),
(464, 'Pondok Gede Permai', 464, NULL, -6.3028708, 106.9724571, NULL),
(465, 'Perumahan Batu Air Narogong', 465, NULL, -6.2763632, 107.0099227, NULL),
(466, 'Perumahan Murah Cikarang', 466, NULL, -6.21116, 107.16947, NULL),
(467, 'Perumahan Royal Cikunir', 467, NULL, -6.2737122, 106.962072, NULL),
(468, 'Perumahan Taman Kota Bekasi', 468, NULL, -6.2399525, 107.008488799999, NULL),
(469, 'Perumahan Sahara Indah Permai', 469, NULL, -6.1913926, 107.003198499999, NULL),
(470, 'Perumahan Vila Jaka Setia', 470, NULL, -6.2553559, 106.9705624, NULL),
(471, 'Perumahan Bintara Estate', 471, NULL, -6.2351841, 106.9660965, NULL),
(472, 'Perumahan Griya Sakinah 2 Babelan - Bekasi', 472, NULL, -6.1686557, 107.0292998, NULL),
(473, 'Perumahan villa Bekasi Indah 2', 473, NULL, -6.2227485, 107.0689468, NULL),
(474, 'Perumahan Puri Kencana Bekasi', 474, NULL, -6.282125, 107.010733299999, NULL),
(475, 'Perumahan Irigasi Danita', 475, NULL, -6.2304007, 107.0187061, NULL),
(476, 'Perumahan Taman Cikas', 476, NULL, -6.2529233, 106.977874799999, NULL),
(477, 'Perumahan Vila Setia Mekar Bekasi', 477, NULL, -6.25649, 107.00811, NULL),
(478, 'Perumahan Mulya Puri', 478, NULL, -6.2313749, 107.028216499999, NULL),
(479, 'PERUMAHAN RSI JAKARTA 2 BEKASI UTARA', 479, NULL, -6.2074444, 106.9843335, NULL),
(480, 'Perumahan Harapan Baru I', 480, NULL, -6.2145702, 106.963870999999, NULL),
(481, 'Perumahan Pulo Permatasari', 481, NULL, -6.2533042, 106.9752382, NULL),
(482, 'Perumahan Griya Pratama Mas Setu Bekasi', 482, NULL, -6.373094, 107.0064081, NULL),
(483, 'Perumahan Harapan Jaya', 483, NULL, -6.2139243, 106.9833938, NULL),
(484, 'Perumahan Pejuang Jaya', 484, NULL, -6.181643, 106.9863133, NULL),
(485, 'PREMIER SAVANNA at VIDA BEKASI', 485, NULL, -6.321029, 106.98711, NULL),
(486, 'Perumahan Wisma Jaya', 486, NULL, -6.2396995, 107.0268073, NULL),
(487, 'Perumahan Sapta Pesona', 487, NULL, -6.3151326, 106.9580174, NULL),
(488, 'Mutiara Residence', 488, NULL, -6.3107422, 106.948395899999, NULL),
(489, 'Perumahan Graha Cipta Sumberjaya Dan Pesona Bumi H', 489, NULL, -6.22437, 107.073585399999, NULL),
(490, 'Bekasi Green City', 490, NULL, -6.169883, 107.0534075, NULL),
(491, 'Perumahan Bumi Bekasi Baru IV Bojong Menteng', 491, NULL, -6.2982836, 106.9923188, NULL),
(492, 'Perumahan Bekasi Elok 1', 492, NULL, -6.2094013, 107.0709327, NULL),
(493, 'Perumahan Panorama Bekasi', 493, NULL, -6.2053295, 107.0058204, NULL),
(494, 'Senopati Estate Bekasi', 494, NULL, -6.345777, 107.009463999999, NULL),
(495, 'Perumahan Duren Jaya', 495, NULL, -6.2375668, 107.0206071, NULL),
(496, 'Rumah Murah Tambun Bekasi', 496, NULL, -6.2254775, 107.0664387, NULL),
(497, 'Kantor Pemasaran Bekasi Timur Regensi', 497, NULL, -6.3329221, 107.017265399999, NULL),
(498, 'Perumahan Griya Jatisari', 498, NULL, -6.2418262, 106.968943999999, NULL),
(499, 'BEKASI JAYA INDAH', 499, NULL, -6.2297087, 107.019213699999, NULL),
(500, 'Perumahan Mutiara Bekasi Jaya', 500, NULL, -6.4093539, 107.0930261, NULL),
(501, 'Perumahan Bekasi Elok 2', 501, NULL, -6.2105882, 107.070582999999, NULL),
(502, 'Perumahan Taman Wisma Asri', 502, NULL, -6.2206061, 107.024501, NULL),
(503, 'Pop Es Mama Adit & Rumah Makayaki', 503, NULL, -6.2386003, 107.046537299999, NULL),
(504, 'Perumahan Tambun Bekasi', 504, NULL, -6.2200051, 107.051212899999, NULL),
(505, 'Perumahan Darmawangsa Residence', 505, NULL, -6.2038086, 107.0537736, NULL),
(506, 'Prima Harapan Regency', 506, NULL, -6.2166697, 107.0142653, NULL),
(507, 'Puskesmas Tambelang', 507, NULL, -6.185718, 107.123136, NULL),
(508, 'Apotek K24', 508, NULL, -6.2631506, 106.9867354, NULL),
(509, 'Puskesmas Jatiasih', 509, NULL, -6.2930908, 106.9647132, NULL),
(510, 'Klinik Umum Pratama Berkat Agung', 510, NULL, -6.2592895, 106.9219415, NULL),
(511, 'Kartika Husada Hospital', 511, NULL, -6.2946178, 106.963463599999, NULL),
(512, 'Rumah Sakit Umum Kabupaten Bekasi', 512, NULL, -6.2616675, 107.083462999999, NULL),
(513, 'RS Masmitra', 513, NULL, -6.2821, 106.929980599999, NULL),
(514, 'Rumah Sakit Graha Juanda', 514, NULL, -6.2518687, 107.029828199999, NULL),
(515, 'RS. Taman Harapan Baru', 515, NULL, -6.1765676, 106.9987907, NULL),
(516, 'Rumah Sakit Tiara Bekasi', 516, NULL, -6.1917683, 107.0381823, NULL),
(517, 'Rumah Sakit Bella', 517, NULL, -6.2440363, 107.0143589, NULL),
(518, 'Hosana Medica Hospital', 518, NULL, -6.3307169, 107.130580699999, NULL),
(519, 'Multazam Hospital', 519, NULL, -6.2712761, 107.026105299999, NULL),
(520, 'RS Aprilia Medika', 520, NULL, -6.3316954, 107.048258599999, NULL),
(521, 'RS Kartika Husada Setu Bekasi', 521, NULL, -6.3404232, 107.038646, NULL),
(522, 'Mitra Keluarga Cikarang', 522, NULL, -6.2923266, 107.150404899999, NULL),
(523, 'RS Harapan Keluarga - Rumah Sakit Harapan Keluarga', 523, NULL, -6.2995759, 107.1597064, NULL),
(524, 'Rumah Sakit Jatisampurna', 524, NULL, -6.3565349, 106.9222287, NULL),
(525, 'Mitra Keluarga Cibubur Hospital', 525, NULL, -6.3758573, 106.9182945, NULL),
(526, 'Rumah Sakit Zainuttaqwa', 526, NULL, -6.1860775, 106.9990801, NULL),
(527, 'RS. Rawa Lumbu', 527, NULL, -6.2806352, 106.998788, NULL),
(528, 'RS Permata Cibubur', 528, NULL, -6.3758684, 106.911998299999, NULL),
(529, 'RS.Satria Medika', 529, NULL, -6.3181243, 107.012264799999, NULL),
(530, 'Rumah Sakit Dokter Adam Talib', 530, NULL, -6.2708799, 107.091813, NULL),
(531, 'Kartika Husada Hospital', 531, NULL, -6.2946178, 106.963463599999, NULL),
(532, 'Rumah Sakit Umum Kabupaten Bekasi', 532, NULL, -6.2616675, 107.083462999999, NULL),
(533, 'RS Masmitra', 533, NULL, -6.2821, 106.929980599999, NULL),
(534, 'Rumah Sakit Graha Juanda', 534, NULL, -6.2518687, 107.029828199999, NULL),
(535, 'RS. Taman Harapan Baru', 535, NULL, -6.1765676, 106.9987907, NULL),
(536, 'Rumah Sakit Tiara Bekasi', 536, NULL, -6.1917683, 107.0381823, NULL),
(537, 'Rumah Sakit Bella', 537, NULL, -6.2440363, 107.0143589, NULL),
(538, 'Hosana Medica Hospital', 538, NULL, -6.3307169, 107.130580699999, NULL),
(539, 'Multazam Hospital', 539, NULL, -6.2712761, 107.026105299999, NULL),
(540, 'RS Aprilia Medika', 540, NULL, -6.3316954, 107.048258599999, NULL),
(541, 'RS Kartika Husada Setu Bekasi', 541, NULL, -6.3404232, 107.038646, NULL),
(542, 'Mitra Keluarga Cikarang', 542, NULL, -6.2923266, 107.150404899999, NULL),
(543, 'RS Harapan Keluarga - Rumah Sakit Harapan Keluarga', 543, NULL, -6.2995759, 107.1597064, NULL),
(544, 'Rumah Sakit Jatisampurna', 544, NULL, -6.3565349, 106.9222287, NULL),
(545, 'Mitra Keluarga Cibubur Hospital', 545, NULL, -6.3758573, 106.9182945, NULL),
(546, 'Rumah Sakit Zainuttaqwa', 546, NULL, -6.1860775, 106.9990801, NULL),
(547, 'RS. Rawa Lumbu', 547, NULL, -6.2806352, 106.998788, NULL),
(548, 'RS Permata Cibubur', 548, NULL, -6.3758684, 106.911998299999, NULL),
(549, 'RS.Satria Medika', 549, NULL, -6.3181243, 107.012264799999, NULL),
(550, 'Rumah Sakit Dokter Adam Talib', 550, NULL, -6.2708799, 107.091813, NULL),
(551, 'Siloam Hospitals', 551, NULL, -6.3315072, 107.135040099999, NULL),
(552, 'Proteindo Karyasehat. PT', 552, NULL, -6.245361, 106.992202, NULL),
(553, 'RS Persada Medika Jatirahayu', 553, NULL, -6.2962259, 106.9210321, NULL),
(554, 'Rs Ananda', 554, NULL, -6.2109382, 106.977230399999, NULL),
(555, 'RS Hosana Cikarang Baru', 555, NULL, -6.299568, 107.167349, NULL),
(556, 'Rumah Sakit Bunda Mulia', 556, NULL, -6.2708442, 107.114872899999, NULL),
(557, 'RS. Annisa Cikarang', 557, NULL, -6.2731244, 107.1741655, NULL),
(558, 'RS Hermina Grand Wisata', 558, NULL, -6.2765058, 107.047609199999, NULL),
(559, 'RSIA Selasih Medika', 559, NULL, -6.2312118, 106.9584586, NULL),
(560, 'Rumah Sakit Bhakti Husada', 560, NULL, -6.2625967, 107.140561399999, NULL),
(561, 'Rs Bella', 561, NULL, -6.2434864, 107.015114199999, NULL),
(562, 'Rsia Rinova Intan', 562, NULL, -6.2044863, 106.9887102, NULL),
(563, 'Rumah Sakit Amanda', 563, NULL, -6.3569084, 107.118879899999, NULL),
(564, 'RS Harapan Mulia', 564, NULL, -6.4347494, 107.0690838, NULL),
(565, 'Rumah Sakit Karya Medika II', 565, NULL, -6.2645154, 107.067317099999, NULL),
(566, 'RS.Medirossa', 566, NULL, -6.2992846, 107.145030899999, NULL),
(567, 'Rumah Sakit Sentosa', 567, NULL, -6.244225, 107.037006, NULL),
(568, 'RS Permata Keluarga', 568, NULL, -6.3316401, 107.143439499999, NULL),
(569, 'Harapan Jayakarta Hospital', 569, NULL, -6.1948775, 106.905742, NULL),
(570, 'RS. Permata Keluarga - Jababeka', 570, NULL, -6.2848845, 107.1735125, NULL),
(571, 'RS Mitra Keluarga Bekasi Timur', 571, NULL, -6.260328, 107.013021199999, NULL),
(572, 'Hermina Hospital', 572, NULL, -6.2416041, 106.994856999999, NULL),
(573, 'Rumah Sakit Mitra Keluarga', 573, NULL, -6.241044, 106.992631599999, NULL),
(574, 'Rumah Sakit Permata Bekasi', 574, NULL, -6.2911681, 107.031559099999, NULL),
(575, 'Awal Bros Hospital Bekasi', 575, NULL, -6.2477634, 106.983742199999, NULL),
(576, 'Rumah Sakit Hosana Medica Bekasi', 576, NULL, -6.2719457, 106.996929899999, NULL),
(577, 'St. Elisabeth Hospital', 577, NULL, -6.2761962, 106.991532, NULL),
(578, 'Anna Medika Hospital', 578, NULL, -6.2224688, 107.0220065, NULL),
(579, 'Rumah Sakit Mekar Sari', 579, NULL, -6.2325834, 107.010701299999, NULL),
(580, 'Budi Lestari', 580, NULL, -6.2475824, 106.9812497, NULL),
(581, 'Rumah Sakit Bhakti Kartini', 581, NULL, -6.247987, 107.0015862, NULL),
(582, 'RS Citra Harapan', 582, NULL, -6.1851137, 106.977501099999, NULL),
(583, 'Juwita Hospital', 583, NULL, -6.2518918, 107.0009311, NULL),
(584, 'Rumah Sakit Hermina Galaxy', 584, NULL, -6.2687516, 106.9722747, NULL),
(585, 'RSIA Seto Hasbadi', 585, NULL, -6.2020498, 106.9889443, NULL),
(586, 'Rs Ananda', 586, NULL, -6.2108762, 106.9772277, NULL),
(587, 'Rumah Sakit Anna', 587, NULL, -6.2748688, 106.976630599999, NULL),
(588, 'Rumah Sakit Umum Puspa Husada', 588, NULL, -6.276789, 107.0197038, NULL),
(589, 'Rumah Sakit Bersalin THB', 589, NULL, -6.1808649, 106.995706999999, NULL),
(590, 'Rumah Sakit Umum Sentosa', 590, NULL, -6.2426748, 107.026517999999, NULL),
(591, 'Puskesmas Jati Sampurna', 591, NULL, -6.363107, 106.921409999999, NULL),
(592, 'Puskesmas Seroja " Edelweis "', 592, NULL, -6.2116047, 106.989542299999, NULL),
(593, 'Puskesmas Setu II', 593, NULL, -6.3308317, 107.0493067, NULL),
(594, 'Dinas Kesehatan Puskesmas Kedungwaringin', 594, NULL, -6.2693545, 107.268994699999, NULL),
(595, 'Puskesmas Telagamurni', 595, NULL, -6.270403, 107.114698, NULL),
(596, 'Puskesmas Teluk Pucung', 596, NULL, -6.2186389, 107.0303787, NULL),
(597, 'Puskesmas Cikarang', 597, NULL, -6.2565748, 107.1565216, NULL),
(598, 'Puskesmas Pondok Gede', 598, NULL, -6.2828701, 106.9136486, NULL),
(599, 'Puskesmas Marga Jaya', 599, NULL, -6.2372495, 106.9943164, NULL),
(600, 'Puskesmas Pembantu', 600, NULL, -6.29682, 106.9845969, NULL),
(601, 'Puskesmas Perumnas 1 Bekasi', 601, NULL, -6.2318828, 106.9848857, NULL),
(602, 'Uptd Puskesmas Seroja', 602, NULL, -6.20545, 106.98914, NULL),
(603, 'Puskesmas Kelurahan Jatinegara Kaum', 603, NULL, -6.21922, 107.004913999999, NULL),
(604, 'Puskesmas Sukadami', 604, NULL, -6.3596155, 107.118412599999, NULL),
(605, 'Puskesmas Kranji', 605, NULL, -6.2261458, 106.970776299999, NULL),
(606, 'Puskesmas Mustikajaya', 606, NULL, -6.289346, 107.0271738, NULL),
(607, 'Puskesmas Karang Sambung', 607, NULL, -6.263671, 107.222582799999, NULL),
(608, 'Puskesmas', 608, NULL, -6.206613, 107.003411999999, NULL),
(609, 'Puskesmas Pembantu', 609, NULL, -6.10181, 106.977, NULL),
(610, 'Puskesmas Sukatenang', 610, NULL, -6.10581, 107.066069999999, NULL),
(611, 'Puskesmas Pembantu Jati Luhur Bekasi', 611, NULL, -6.3512387, 106.940131699999, NULL),
(612, 'Puskesmas Bojong Rawalumbu', 612, NULL, -6.2775942, 106.998931499999, NULL),
(613, 'UPTD Puskesmas Jakamulya', 613, NULL, -6.280252, 106.965627799999, NULL),
(614, 'Puskesmas Teluk Pucung', 614, NULL, -6.221809, 107.015597999999, NULL),
(615, 'Puskesmas Perumnas II', 615, NULL, -6.2458174, 106.9891401, NULL),
(616, 'UPTD Puskesmas Jatibening', 616, NULL, -6.2617237, 106.956234499999, NULL),
(617, 'UPT Puskesmas Marga Mulya', 617, NULL, -6.2282472, 107.006716699999, NULL),
(618, 'Puskesmas jatirahayu', 618, NULL, -6.2945485, 106.925236799999, NULL),
(619, 'Dinas KEsehatan Kota Bekasi Upto Puskesmas Pengasi', 619, NULL, -6.277828, 107.0100062, NULL),
(620, 'Puskesmas Lambang Sari', 620, NULL, -6.2808875, 107.0382982, NULL),
(621, 'Puskesmas Setia Mekar', 621, NULL, -6.2478833, 107.0413599, NULL),
(622, 'Kantor Kelurahan Margamulya', 622, NULL, -6.2299654, 107.004696499999, NULL),
(623, 'puskesmas jatiluhur', 623, NULL, -6.3200959, 106.9499919, NULL),
(624, 'Kantor Kelurahan Jati Makmur', 624, NULL, -6.2807622, 106.931170199999, NULL),
(625, 'PUSKESMAS Jatimakmur', 625, NULL, -6.2842488, 106.923814899999, NULL);
INSERT INTO `m_lokasi_baksampah` (`id_lokasi`, `nama_lokasi`, `id_bisnis`, `id_cctv`, `lat`, `lng`, `id_wilayah`) VALUES
(626, 'Puskesmas Setu 1', 626, NULL, -6.3350776, 107.045492499999, NULL),
(627, 'Puskesmas Jatirahayu', 627, NULL, -6.289918, 106.891865999999, NULL),
(628, 'Puskesmas Mekarsari', 628, NULL, -6.25707, 107.070999999999, NULL),
(629, 'Puskesmas Sukajaya', 629, NULL, -6.2403474, 107.1482373, NULL),
(630, 'Puskesmas Pekayon Jaya', 630, NULL, -6.2668905, 106.974678999999, NULL),
(631, 'Puskesmas Karang Kitri', 631, NULL, -6.257767, 107.011106999999, NULL),
(632, 'Puskesmas Pejuang', 632, NULL, -6.1985677, 106.993364, NULL),
(633, 'Uptd Puskesmas Bintara', 633, NULL, -6.2277157, 106.9568691, NULL),
(634, 'Puskesmas Aren Jaya', 634, NULL, -6.248667, 107.029356, NULL),
(635, 'Puskesmas Rawa Tembaga', 635, NULL, -6.233202, 106.979924999999, NULL),
(636, 'Updt Puskesmas Kota Baru', 636, NULL, -6.214404, 106.968157, NULL),
(637, 'Puskesmas Mustika Jaya', 637, NULL, -6.2892547, 107.0271678, NULL),
(638, 'Puskesmas Duren Jaya', 638, NULL, -6.236914, 107.0224, NULL),
(639, 'Puskesmas Jatimulya', 639, NULL, -6.268894, 107.022666, NULL),
(640, 'Puskesmas Jati Makmur', 640, NULL, -6.2751457, 106.925303499999, NULL),
(641, 'Puskesmas Bintara Jaya', 641, NULL, -6.211263, 106.985756899999, NULL),
(642, 'Puskesmas Jati Warna', 642, NULL, -6.305019, 106.932136, NULL),
(643, 'Puskesmas Karang Satria', 643, NULL, -6.2228269, 107.0360888, NULL),
(644, 'Puskesmas Karang Kitri', 644, NULL, -6.253808, 107.008680999999, NULL),
(645, 'Puskesmas Babelan 1', 645, NULL, -6.171063, 107.045979, NULL),
(646, 'Puskesmas Medan Satria', 646, NULL, -6.1967903, 106.973063199999, NULL),
(647, 'Puskesmas Kaliabang Tengah', 647, NULL, -6.1760486, 107.000120699999, NULL),
(648, 'Puskesmas Padurenan', 648, NULL, -6.3155683, 107.008594299999, NULL),
(649, 'Praktek Dokter Gigi', 649, NULL, -6.2537241, 106.952166399999, NULL),
(650, 'Praktek Dokter Gigi Drg Rika Noviantini, Mars', 650, NULL, -6.2681373, 106.9116922, NULL),
(651, 'Praktek Dokter Hewan Prambanan', 651, NULL, -6.2631278, 107.0040556, NULL),
(652, 'Praktek Dokter Hewan Drh. Norma', 652, NULL, -6.169217, 106.97476, NULL),
(653, 'Praktek Dokter Gigi', 653, NULL, -6.3758373, 106.9011253, NULL),
(654, 'Praktek Dr. Albert DSOG', 654, NULL, -6.2418737, 107.0386948, NULL),
(655, 'Praktek Akupuntur dr Susan Emitia', 655, NULL, -6.286129, 106.9489813, NULL),
(656, 'Praktek Dokter Gigi', 656, NULL, -6.308849, 107.024281999999, NULL),
(657, 'Praktek Dokter Gigi', 657, NULL, -6.2386204, 106.9905835, NULL),
(658, 'Praktek Dokter Umum Dr Ririn Purwati', 658, NULL, -6.2853799, 107.027967, NULL),
(659, 'Praktek Dokter 24 Jam " Almira "', 659, NULL, -6.2830924, 107.0207314, NULL),
(660, 'Praktek Dokter', 660, NULL, -6.205322, 107.0288939, NULL),
(661, 'Praktek Dokter', 661, NULL, -6.2056043, 107.026350399999, NULL),
(662, 'Praktek Dokter Umum & Gigi', 662, NULL, -6.1980956, 106.9893375, NULL),
(663, 'Praktek Dokter', 663, NULL, -6.296079, 107.025617999999, NULL),
(664, 'Praktek Dokter Bersama', 664, NULL, -6.2313842, 106.961413699999, NULL),
(665, 'Praktek Dokter Umum', 665, NULL, -6.2476654, 106.989026699999, NULL),
(666, 'Praktek Dokter Oase Partner Sehat Anda', 666, NULL, -6.2295879, 106.9844865, NULL),
(667, 'Praktek Bidan & Dokter', 667, NULL, -6.2695266, 106.960699, NULL),
(668, 'Alamat Praktek Dr. A. Bamby Sutrisno Sp. M', 668, NULL, -6.248881, 106.962153999999, NULL),
(669, 'Praktek Dokter Gigi Amelia Damanik', 669, NULL, -6.2713324, 106.980266599999, NULL),
(670, 'Drg. Nina Anisah Dokter Gigi', 670, NULL, -6.3087189, 106.955290199999, NULL),
(671, 'Gigi Dental Klinik', 671, NULL, -6.2491362, 106.966366699999, NULL),
(672, 'Praktek Dokter Gigi Drg Rika Noviantini, Mars', 672, NULL, -6.2681373, 106.9116922, NULL),
(673, 'Dokter Gigi Lenny Herawati', 673, NULL, -6.2252882, 106.9483168, NULL),
(674, 'Praktek Dokter Gigi', 674, NULL, -6.2692247, 106.980005199999, NULL),
(675, 'O-Smile Dental Center', 675, NULL, -6.248112, 106.986673699999, NULL),
(676, 'Drg. Murthi Yuwono', 676, NULL, -6.275194, 107.008324999999, NULL),
(677, 'Rumah Gigi Ayu (BEKASI)', 677, NULL, -6.216544, 107.033090999999, NULL),
(678, 'Dokter Gigi Eka Saptawati', 678, NULL, -6.1904023, 107.016987999999, NULL),
(679, 'Klinik Gigi SENYUM CERIA Mall Revo Town', 679, NULL, -6.2540571, 106.989679499999, NULL),
(680, 'Klinik Gigi Family Dental Cosmetic', 680, NULL, -6.2793191, 106.913387, NULL),
(681, 'PRaktek Dokter Gigi. Drg Katarina L. Sihotang', 681, NULL, -6.1905509, 107.033115499999, NULL),
(682, 'Rumah Gigi Sehat', 682, NULL, -6.2654722, 107.050996799999, NULL),
(683, 'Dokter Gigi Afrizal Usasra', 683, NULL, -6.2514028, 107.059222399999, NULL),
(684, 'Klinik Gigi Salsabila', 684, NULL, -6.2451437, 107.025768299999, NULL),
(685, 'Dokter Gigi Rosida Surya Permana', 685, NULL, -6.237963, 106.978621, NULL),
(686, 'Dokter Gigi Ny Ua Srimulyati', 686, NULL, -6.231464, 106.966162999999, NULL),
(687, 'Dokter Gigi Lusiana', 687, NULL, -6.2029936, 106.992677499999, NULL),
(688, 'Dokter Gigi Laniwati Setiadi', 688, NULL, -6.238531, 106.971145399999, NULL),
(689, 'Praktek Dokter Gigi drg Sri Maryati', 689, NULL, -6.2349007, 106.9729482, NULL),
(690, 'Praktek Dokter Gigi', 690, NULL, -6.3758373, 106.9011253, NULL),
(691, 'Praktek Dokter Gigi Drg. Yulita Afianti', 691, NULL, -6.2098592, 106.9824834, NULL),
(692, 'KLinik Gigi Senyum Ceria', 692, NULL, -6.2816874, 107.0474161, NULL),
(693, 'Dokter Gigi Drg. Yaya Aria Santosa. Mars. Av', 693, NULL, -6.2443902, 106.9917575, NULL),
(694, 'Klinik Ku', 694, NULL, -6.2839255, 106.950139399999, NULL),
(695, 'Praktek Dokter Gigi Rani', 695, NULL, -6.2322371, 107.024782299999, NULL),
(696, 'Praktek Dr Mira Roziati Dahlan. Mars', 696, NULL, -6.2313882, 106.961392599999, NULL),
(697, 'Praktek Dokter Gigi', 697, NULL, -6.2758459, 107.008475, NULL),
(698, 'My Dental', 698, NULL, -6.3015711, 106.930260799999, NULL),
(699, 'Prodentist 2 (Klinik Dokter Gigi)', 699, NULL, -6.2692928, 106.9500268, NULL),
(700, 'Klinik dokter gigi Linda Kisman', 700, NULL, -6.3083784, 107.027499, NULL),
(701, 'Rise and Shine Dental Care', 701, NULL, -6.2275213, 107.003629399999, NULL),
(702, 'KLINIK GIGI SENYUM CERIA', 702, NULL, -6.3325158, 107.143167399999, NULL),
(703, 'Klinik Gigiku Sehat', 703, NULL, -6.3226354, 106.923632299999, NULL),
(704, 'Praktek Dokter Gigi : Drg. Evira Saraswati', 704, NULL, -6.3179644, 107.167753399999, NULL),
(705, 'Dokter Gigi Liza', 705, NULL, -6.2658961, 106.9707283, NULL),
(706, 'Praktek Dokter Gigi', 706, NULL, -6.2386204, 106.9905835, NULL),
(707, 'Klinik Gigi Mitra Kita', 707, NULL, -6.2619621, 107.0599919, NULL),
(708, 'Drg.Lily Sunaryo', 708, NULL, -6.2693568, 106.9816919, NULL),
(709, 'Audy Dental Bekasi', 709, NULL, -6.273007, 106.972868, NULL),
(710, 'Praktek Dokter Gigi', 710, NULL, -6.2442059, 107.004800399999, NULL),
(711, 'JB Dental Clinic', 711, NULL, -6.1861737, 106.9837018, NULL),
(712, 'Dokter Gigi', 712, NULL, -6.1811465, 106.978321199999, NULL),
(713, 'Luna Dental Rehabilitation', 713, NULL, -6.2467722, 106.9845222, NULL),
(714, 'Klinik Gigi', 714, NULL, -6.2490888, 107.0152262, NULL),
(715, 'Praktek Dokter Gigi', 715, NULL, -6.2292984, 106.954897299999, NULL),
(716, 'Dokter Gigi Mumasni', 716, NULL, -6.2748474, 107.0005163, NULL),
(717, 'Dokter Gigi Veronica', 717, NULL, -6.259428, 106.969841, NULL),
(718, 'Bethesda Medical & Dental Care', 718, NULL, -6.2497354, 106.9932727, NULL),
(719, 'Praktek Dokter Gigi Heriani Furkan', 719, NULL, -6.2681357, 107.020817899999, NULL),
(720, 'Klinik Gigi Pasadena', 720, NULL, -6.216221, 107.020594, NULL),
(721, 'Dokter Gigi Deny Indra Permana', 721, NULL, -6.2126113, 106.984960799999, NULL),
(722, 'Praktek Dokter Gigi DRG. Ratna Ningsih', 722, NULL, -6.2638848, 106.9454472, NULL),
(723, 'Praktek Dokter Gigi Bersama', 723, NULL, -6.2236143, 106.9813536, NULL),
(724, 'Praktek Dokter Gigi Drg, Yumelia Ernita', 724, NULL, -6.2830067, 107.0275969, NULL),
(725, 'Hoslab Laboratorium Klinik Utama', 725, NULL, -6.2868459, 106.968109499999, NULL),
(726, 'My Dentist', 726, NULL, -6.256858, 106.968363299999, NULL),
(727, 'Praktek Dokter Gigi', 727, NULL, -6.2537241, 106.952166399999, NULL),
(728, 'Praktek Dokter Gigi', 728, NULL, -6.2110311, 106.977873099999, NULL),
(729, 'Klinik Gigi Dentaris', 729, NULL, -6.186261, 106.980718999999, NULL),
(730, 'Praktek Dokter Spesialis', 730, NULL, -6.2289044, 106.9536829, NULL),
(731, 'Praktek Dokter Gigi', 731, NULL, -6.2659277, 106.9707944, NULL),
(732, 'Praktek Dr. Jabat', 732, NULL, -6.2491558, 107.015257399999, NULL),
(733, 'Praktek Dokter Umum & Akupuntur', 733, NULL, -6.3018737, 106.923912, NULL),
(734, 'Hermina Hospital', 734, NULL, -6.2416041, 106.994856999999, NULL),
(735, 'Praktek Dokter Gigi', 735, NULL, -6.2442059, 107.004800399999, NULL),
(736, 'Praktek dokter Spesialis Mata Dr. Zamril Daya', 736, NULL, -6.2363667, 107.006524999999, NULL),
(737, 'Praktek Dokter Gigi Bersama', 737, NULL, -6.2236143, 106.9813536, NULL),
(738, 'Praktek Dokter Gigi Drg, Yumelia Ernita', 738, NULL, -6.2830067, 107.0275969, NULL),
(739, 'Alamat Praktek Dr. Abdullah Basalamah Sp.OG', 739, NULL, -6.291134, 107.031509, NULL),
(740, 'Dr. Syarif Alwi Praktek Umum', 740, NULL, -6.2438332, 107.0381078, NULL),
(741, 'Praktek Dokter Gigi', 741, NULL, -6.2110311, 106.977873099999, NULL),
(742, 'Praktek Dokter Cynthia Jayanto', 742, NULL, -6.3762639, 107.0017306, NULL),
(743, 'Praktek Dokter Spesialis Paru & Saluran Pernapasan', 743, NULL, -6.304916, 106.9387896, NULL),
(744, 'Praktek Dokter Gigi Heriani Furkan', 744, NULL, -6.2681357, 107.020817899999, NULL),
(745, 'Praktek Dokter', 745, NULL, -6.2315738, 106.982791599999, NULL),
(746, 'Praktek Dokter Hewan Drh.Nalia Putriyanda', 746, NULL, -6.2885212, 106.9573733, NULL),
(747, 'Praktek Dokter Gigi DRG. Ratna Ningsih', 747, NULL, -6.2638848, 106.9454472, NULL),
(748, 'Praktek Dokter Gigi Amelia Damanik', 748, NULL, -6.2713324, 106.980266599999, NULL),
(749, 'Praktek Dokter Gigi Keluarga', 749, NULL, -6.1765136, 107.004187599999, NULL),
(750, 'Laboratorium Klinik Prodia - Bekasi', 750, NULL, -6.2477887, 106.980831899999, NULL),
(751, 'Klinik Cahaya Asypa', 751, NULL, -6.2855732, 107.0033255, NULL),
(752, 'Klinik Gigi', 752, NULL, -6.2490888, 107.0152262, NULL),
(753, 'Audy Dental Bekasi', 753, NULL, -6.273007, 106.972868, NULL),
(754, 'Klinik dan Rumah Bersalin 24 Jam Bekasi – Bunda Ne', 754, NULL, -6.177494, 106.98188, NULL),
(755, 'Klinik Melviana', 755, NULL, -6.2423943, 107.041674499999, NULL),
(756, 'Klinik & RB Tiara Bunda', 756, NULL, -6.2113669, 107.0306231, NULL),
(757, 'Laboratorium Klinik Biomedika', 757, NULL, -6.248369, 107.017730999999, NULL),
(758, 'Klinik Fajar Medika', 758, NULL, -6.28802, 107.086636999999, NULL),
(759, 'Klinik Dr Rahman Medical Center', 759, NULL, -6.2590673, 106.9854597, NULL),
(760, 'Klinik & Rumah Bersalin Cahaya Amalia', 760, NULL, -6.2359724, 107.048092299999, NULL),
(761, 'Klinik Kecantikan Kusuma kalimalang bekasi', 761, NULL, -6.2538824, 106.989531999999, NULL),
(762, 'Klinik Melviana', 762, NULL, -6.2331806, 107.0102021, NULL),
(763, 'Klinik Hewan THB Vet Bekasi', 763, NULL, -6.182865, 106.995283, NULL),
(764, 'KLINIK MATA BEKASI', 764, NULL, -6.200861, 107.028672, NULL),
(765, 'Klinik Tumbuh Kembang', 765, NULL, -6.2357954, 107.032676899999, NULL),
(766, 'Klinik Yakri', 766, NULL, -6.176165, 107.003726999999, NULL),
(767, 'Klinik Permata Harapan', 767, NULL, -6.2101988, 106.9660479, NULL),
(768, 'Klinik Bina Husada Bakti Bekasi', 768, NULL, -6.299985, 107.029661, NULL),
(769, 'Klinik Trisna Ananda', 769, NULL, -6.221361, 107.024711999999, NULL),
(770, 'Klinik Viva Medika Bekasi', 770, NULL, -6.266947, 106.9743452, NULL),
(771, 'Klinik Mawar 24 Jam (Klinik Dr. Wirda Saleh): Mene', 771, NULL, -6.283668, 106.967521, NULL),
(772, 'Klinik Khitan', 772, NULL, -6.2929152, 106.9655781, NULL),
(773, 'Klinik Elisabeth Bekasi', 773, NULL, -6.262077, 106.994894, NULL),
(774, 'Klinik Dr. Rocky', 774, NULL, -6.2334392, 106.967121899999, NULL),
(775, 'Relof Clinic', 775, NULL, -6.2588499, 106.9499146, NULL),
(776, 'Klinik Khitan Bekasi (Klinik Pemuda Medical Centre', 776, NULL, -6.2327198, 106.9707209, NULL),
(777, 'Klinik Dr. Novita', 777, NULL, -6.2436082, 107.037872699999, NULL),
(778, 'Klinik Bekasi Elok Medika', 778, NULL, -6.209386, 107.070007, NULL),
(779, 'Klinik Sadrina Medika', 779, NULL, -6.278846, 107.027298999999, NULL),
(780, 'Klinik Yakesti', 780, NULL, -6.3058645, 106.9832727, NULL),
(781, 'Klinik Duplomat', 781, NULL, -6.2377344, 106.9998283, NULL),
(782, 'Klinik Yuliarpan Medika', 782, NULL, -6.3001384, 107.066659599999, NULL),
(783, 'KLINIK WAMIA HUSADA Bekasi', 783, NULL, -6.241789, 106.968677, NULL),
(784, 'Klinik Nayaka Husada 03 Bekasi', 784, NULL, -6.321476, 107.13066, NULL),
(785, 'Klinik Estetika Semarang', 785, NULL, -6.3776405, 106.9195605, NULL),
(786, 'Klinik Permata Bunda', 786, NULL, -6.2555029, 107.0860768, NULL),
(787, 'Klinik Gigiku Sehat', 787, NULL, -6.3226354, 106.923632299999, NULL),
(788, 'KLINIK SETIAMEKAR', 788, NULL, -6.2430625, 107.032392099999, NULL),
(789, 'Apotek dan Klinik Kimia Farma', 789, NULL, -6.2875254, 106.9529966, NULL),
(790, 'Klinik Pratama', 790, NULL, -6.3444611, 106.9277694, NULL),
(791, 'Klinik Pratama Dharma Medika', 791, NULL, -6.227868, 106.978187, NULL),
(792, 'Klinik Pratama MutiaraMedika', 792, NULL, -6.3226815, 106.9238715, NULL),
(793, 'Klinik Pratama Bintara Medika', 793, NULL, -6.2279745, 106.946789899999, NULL),
(794, 'Laboratorium Klinik Pratama', 794, NULL, -6.292536, 106.964145, NULL),
(795, 'Klinik Pratama', 795, NULL, -6.2036483, 106.904149899999, NULL),
(796, 'Klinik Pratama Esa', 796, NULL, -6.2481146, 107.020914, NULL),
(797, 'Klinik Pratama "YUNDA"', 797, NULL, -6.22704, 106.961102999999, NULL),
(798, 'Klinik Pratama H.sholihin', 798, NULL, -6.2399508, 107.012489, NULL),
(799, 'Klinik Pratama Bhakti Medika', 799, NULL, -6.2529596, 107.017338499999, NULL),
(800, 'Klinik PRATAMA SIRANDY MEDIKA DAN Drg BUNGSU S', 800, NULL, -6.3147544, 107.005247699999, NULL),
(801, 'KLINIK PRATAMA SETO HASBADI 01', 801, NULL, -6.2018098, 106.989063599999, NULL),
(802, 'KLINIK PRATAMA PAPAN MAS', 802, NULL, -6.2470325, 107.0510357, NULL),
(803, 'Klinik Gigi', 803, NULL, -6.3018993, 106.9239586, NULL),
(804, 'Rumah Bekam Al-Kautsar', 804, NULL, -6.2179399, 107.019632, NULL),
(805, 'Klinik Gigi', 805, NULL, -6.2490888, 107.0152262, NULL),
(806, 'Klinik Estetika Semarang', 806, NULL, -6.3776405, 106.9195605, NULL),
(807, 'Dokter Gigi Eva Malik', 807, NULL, -6.1752556, 106.998306799999, NULL),
(808, 'Tukang Gigi Ilma', 808, NULL, -6.2278905, 106.9604369, NULL),
(809, 'Laboratorium Klinik Prodia - Bekasi', 809, NULL, -6.2477887, 106.980831899999, NULL),
(810, 'Klinik Duplomat', 810, NULL, -6.2377344, 106.9998283, NULL),
(811, 'Klinik Mitra Sehat', 811, NULL, -6.302644, 107.107633, NULL),
(812, 'Klinik dan Rumah Bersalin Tabina', 812, NULL, -6.218419, 107.169365499999, NULL),
(813, 'Aira Dental Care', 813, NULL, -6.1904726, 106.9868857, NULL),
(814, 'Laboratorium Klinik & Kesehatan Kerja Cakra Medika', 814, NULL, -6.261557, 107.021237999999, NULL),
(815, 'Klinik Graha Mitra', 815, NULL, -6.330893, 106.923818199999, NULL),
(816, 'Klinik Hewan Awal Care (Jatibening, Bekasi)', 816, NULL, -6.257881, 106.950222999999, NULL),
(817, 'Klinik Kecantikan', 817, NULL, -6.2941553, 106.9197924, NULL),
(818, 'Klinik Gigi Dentaris', 818, NULL, -6.186261, 106.980718999999, NULL),
(819, 'Klinik Erni', 819, NULL, -6.372407, 106.9179086, NULL),
(820, 'Klinik Mitra Setia Medika', 820, NULL, -6.1806563, 106.977739, NULL),
(821, 'Klinik Natural Aesthetic - Klinik Kecantikan Bekas', 821, NULL, -6.2324694, 106.974583899999, NULL),
(822, 'Klinik Yakesti', 822, NULL, -6.3058645, 106.9832727, NULL),
(823, 'Klinik Ku', 823, NULL, -6.2839255, 106.950139399999, NULL),
(824, 'Klinik Gigiku Sehat', 824, NULL, -6.3226354, 106.923632299999, NULL),
(825, 'Cipta Penta Utama', 825, NULL, -6.274689, 106.928901999999, NULL),
(826, 'Garden Petshop & Klinik Hewan', 826, NULL, -6.2906021, 106.9169394, NULL),
(827, 'Klinik Bersalin Umi Rahma', 827, NULL, -6.3055518, 107.017909399999, NULL),
(828, 'Klinik Cava Medika', 828, NULL, -6.185739, 106.953355999999, NULL),
(829, 'Klinik Putra Medika 1', 829, NULL, -6.335879, 107.120153999999, NULL),
(830, 'Klinik Gigi Salsabila Drg. Apriyani Florinda', 830, NULL, -6.2451011, 107.025816899999, NULL),
(831, 'Klinik Citra Medika Pekayon', 831, NULL, -6.273699, 106.978216799999, NULL),
(832, 'Klinik Dokter Umum', 832, NULL, -6.2580863, 106.985785899999, NULL),
(833, 'KLINIK MATA BEKASI', 833, NULL, -6.200861, 107.028672, NULL),
(834, 'PT Bukaka Teknik Utama TBK - Unit Usaha RCE', 834, NULL, -6.386801, 106.967629, NULL),
(835, 'Medistira Utama', 835, NULL, -6.235368, 106.969208399999, NULL),
(836, 'Klinik Legenda Sehat', 836, NULL, -6.3086447, 107.025007299999, NULL),
(837, 'Pelangi Buana Utama. PT', 837, NULL, -6.2591723, 106.9489539, NULL),
(838, 'Terapi Ozon (DokterKamu.com)', 838, NULL, -6.259491, 106.971611999999, NULL),
(839, 'Klinik Estetika dr. Affandi - Bekasi', 839, NULL, -6.2475841, 106.994963799999, NULL),
(840, 'Klinik', 840, NULL, -6.197191, 107.010532999999, NULL),
(841, 'Klinik Nayaka Husada 04 Bekasi', 841, NULL, -6.221279, 107.017067999999, NULL),
(842, 'Klinik Garuda Sentra Medika Satelit Bekasi', 842, NULL, -6.254556, 106.989388, NULL),
(843, 'KLINIK UTAMA RAWAT INAP MITRA HARAPAN BEKASI', 843, NULL, -6.3073433, 107.031205799999, NULL),
(844, 'Klinik Rawat Inap Utama Ridho', 844, NULL, -6.250761, 107.087393, NULL),
(845, 'Klinik Wasir dan Klinik Utama Prabeswari', 845, NULL, -6.2560634, 106.9509039, NULL),
(846, 'Klinik Mata Utama JEC@Cibubur', 846, NULL, -6.3830004, 106.932344999999, NULL),
(847, 'Klinik Medis Sehat Utama', 847, NULL, -6.437806, 107.07577, NULL),
(848, 'Klinik Mitra Utama Medika', 848, NULL, -6.2063178, 107.0402083, NULL),
(849, 'Rumah Bersalin dan Klinik Wahyuni Mediak Utama', 849, NULL, -6.271383, 106.920529999999, NULL),
(850, 'GLOSKIN BEKASI - KLINIK KECANTIKAN', 850, NULL, -6.260029, 106.972785, NULL),
(851, 'ATM BNI KLINIK UTAMA RIDHO', 851, NULL, -6.233513, 107.1071, NULL),
(852, 'Klinik Kulit', 852, NULL, -6.3211702, 106.941119799999, NULL),
(853, 'CDM CIMB NIAGA (Klinik 24 Jam Utama Ridho)', 853, NULL, -6.2566341, 107.0838538, NULL),
(854, 'Klinik Isykarima', 854, NULL, -6.2771033, 107.179151099999, NULL),
(855, 'Erha Apotechary', 855, NULL, -6.2694434, 106.971916199999, NULL),
(856, 'Puskesmas Jati Warna', 856, NULL, -6.305019, 106.932136, NULL),
(857, 'Klinik Nusantara', 857, NULL, -6.260668, 106.940984999999, NULL),
(858, 'LiderLab Klinik', 858, NULL, -6.2438976, 106.991819, NULL),
(859, 'Klinik Umum Marcel', 859, NULL, -6.2653755, 107.010034099999, NULL),
(860, 'Puskesmas Perumnas 1 Bekasi', 860, NULL, -6.2318828, 106.9848857, NULL),
(861, 'Klinik Bidan Yuliani', 861, NULL, -6.2262744, 107.039062, NULL),
(862, 'Klinik Mitra Medika', 862, NULL, -6.228927, 107.011207999999, NULL),
(863, 'Klinik Mulia Medika', 863, NULL, -6.2024084, 107.0015319, NULL),
(864, 'Klinik Karya Medika I', 864, NULL, -6.2395535, 107.0024868, NULL),
(865, 'Klinik DK', 865, NULL, -6.2475218, 106.9780082, NULL),
(866, 'Klinik Sehat Sejahtera', 866, NULL, -6.2439219, 107.0288555, NULL),
(867, 'Klinik Citra Sehat', 867, NULL, -6.2369325, 106.9826601, NULL),
(868, 'Klinik Medika Mulia Bekasi', 868, NULL, -6.2440882, 106.991959399999, NULL),
(869, 'Klinik Bersalin Umi Rahma', 869, NULL, -6.3055518, 107.017909399999, NULL),
(870, 'Klinik Mulya Medika', 870, NULL, -6.2645352, 107.017162099999, NULL),
(871, 'Klinik Nayaka Husada 04 Bekasi', 871, NULL, -6.221279, 107.017067999999, NULL),
(872, 'GLOSKIN BEKASI - KLINIK KECANTIKAN', 872, NULL, -6.260029, 106.972785, NULL),
(873, 'Klinik Estetika dr. Affandi - Bekasi', 873, NULL, -6.2475841, 106.994963799999, NULL),
(874, 'Klinik Graha Mitra', 874, NULL, -6.330893, 106.923818199999, NULL),
(875, 'Klinik Garuda Sentra Medika Satelit Bekasi', 875, NULL, -6.254556, 106.989388, NULL),
(876, 'Balai Pengobatan Narni', 876, NULL, -6.1800399, 107.0023895, NULL),
(877, 'Klinik Natural Aesthetic - Klinik Kecantikan Bekas', 877, NULL, -6.2324694, 106.974583899999, NULL),
(878, 'Klinik Hipnoterapi Jakarta Bekasi', 878, NULL, -6.18127, 106.981172, NULL),
(879, 'Klinik Mulya Medika II', 879, NULL, -6.256527, 107.083873999999, NULL),
(880, 'Klinik', 880, NULL, -6.238668, 107.022689999999, NULL),
(881, 'Klinik Hewan Awal Care (Jatibening, Bekasi)', 881, NULL, -6.257881, 106.950222999999, NULL),
(882, 'Duta Jaya Pharmacy', 882, NULL, -6.262286, 106.987395599999, NULL),
(883, 'APOTEK ROXY Pahlawan', 883, NULL, -6.2438166, 107.026579999999, NULL),
(884, 'Apotek Roxy', 884, NULL, -6.2438871, 106.967499099999, NULL),
(885, 'Apotek Roxy Galaxy', 885, NULL, -6.2568139, 106.968432199999, NULL),
(886, 'Apotek Mitra', 886, NULL, -6.241393, 106.9934652, NULL),
(887, 'Apotik Rizal', 887, NULL, -6.2419242, 107.003453699999, NULL),
(888, 'Apotik K-24 - Hankam Raya', 888, NULL, -6.324066, 106.9237877, NULL),
(889, 'Apotik K-24 - Bintara jaya', 889, NULL, -6.2396831, 106.9458675, NULL),
(890, 'Apotik K-24 - Pulo Ribung', 890, NULL, -6.2676428, 106.976123, NULL),
(891, 'Apotek K-24 Bintang Farma', 891, NULL, -6.254321, 106.944207, NULL),
(892, 'Apotek Kimia Farma - Siliwangi', 892, NULL, -6.2651903, 106.995444599999, NULL),
(893, 'Apotek 24 Jam', 893, NULL, -6.1794099, 107.000924999999, NULL),
(894, 'Apotek Roxy', 894, NULL, -6.2035623, 106.988907699999, NULL),
(895, 'Apotek K-24 Pekayon', 895, NULL, -6.2523907, 107.0057493, NULL),
(896, 'Apotik K-24 - Pemuda Kranji', 896, NULL, -6.23213, 106.974705, NULL),
(897, 'Apotek Kimia Farma Grand Galaxy City', 897, NULL, -6.2727658, 106.973521899999, NULL),
(898, 'Apotek dan Klinik Kimia Farma', 898, NULL, -6.2875254, 106.9529966, NULL),
(899, 'Apotik K-24 - Veteran', 899, NULL, -6.2399745, 106.9996449, NULL),
(900, 'Apotek Kimia Farma Grand Galaxy 400', 900, NULL, -6.254319, 106.968304, NULL),
(901, 'Apotek Roxy', 901, NULL, -6.2319285, 107.013747699999, NULL),
(902, 'Apotik Hadi Farma', 902, NULL, -6.2315971, 106.9603948, NULL),
(903, 'Apotek Generik', 903, NULL, -6.1858761, 106.977898199999, NULL),
(904, 'Apotek K-24', 904, NULL, -6.2631093, 106.9107958, NULL),
(905, 'Apotek K 24', 905, NULL, -6.2436606, 107.0284166, NULL),
(906, 'Apotek Generik', 906, NULL, -6.224217, 107.019497999999, NULL),
(907, 'Apotek K-24 Jatirasa', 907, NULL, -6.3166005, 106.959288799999, NULL),
(908, 'GUARDIAN - Mega Bekasi', 908, NULL, -6.249563, 106.992844, NULL),
(909, 'Apotek K-24 Cikarang-Cibarusah', 909, NULL, -6.289364, 107.185364, NULL),
(910, 'Apotek', 910, NULL, -6.2534422, 106.940045999999, NULL),
(911, 'Apotek Generik', 911, NULL, -6.2311283, 107.010274699999, NULL),
(912, 'Apotek Daun Mas', 912, NULL, -6.2675314, 107.019136799999, NULL),
(913, 'Apotek K 24', 913, NULL, -6.3430361, 107.119638199999, NULL),
(914, 'Apotek Malaka Jatiwaringin', 914, NULL, -6.25974, 106.910355999999, NULL),
(915, 'Apotik Century', 915, NULL, -6.2670588, 106.972627299999, NULL),
(916, '0857-1619-4600 (Tsel), Foredi Bekasi, Apotek Agen ', 916, NULL, -6.245304, 107.026107999999, NULL),
(917, 'Apotek K24 Jatiasih', 917, NULL, -6.2934441, 106.965612399999, NULL),
(918, 'Apotek Kimia Farma No. 486 Jatimulya', 918, NULL, -6.2693516, 107.0169922, NULL),
(919, 'Apotek Kimia Farma 552 Pilar Mas', 919, NULL, -6.2516805, 107.1578709, NULL),
(920, 'Apotek Kimia Farma No. 330 THI', 920, NULL, -6.1863603, 106.981015099999, NULL),
(921, 'Apotik Kimia Farma Jatimekar', 921, NULL, -6.2925616, 106.9397459, NULL),
(922, 'Apotek Kimia Farma Boulevard Hijau Raya', 922, NULL, -6.1926113, 106.9766541, NULL),
(923, 'Apotek Kimia Farma', 923, NULL, -6.2767647, 106.912861699999, NULL),
(924, 'Apotik K-24 - Perjuangan', 924, NULL, -6.2209606, 107.019138799999, NULL),
(925, 'Apotek Generik', 925, NULL, -6.264284, 107.0123099, NULL),
(926, 'Apotek Generik', 926, NULL, -6.2437463, 107.0315496, NULL),
(927, 'Apotik Farmasi', 927, NULL, -6.2105211, 106.978411199999, NULL),
(928, 'K-24 PEKAYON', 928, NULL, -6.2573253, 106.9878778, NULL),
(929, 'Apotek 24', 929, NULL, -6.249314, 106.954509, NULL),
(930, 'Apotek Kimia Farma Galuh', 930, NULL, -6.2394816, 107.0024616, NULL),
(931, 'Apotek Kimia Farma Grand wisata', 931, NULL, -6.2821677, 107.046342499999, NULL),
(932, 'Apotek Roxy', 932, NULL, -6.2443009, 107.042264599999, NULL),
(933, 'Apotik K-24 - Pengasinan', 933, NULL, -6.2679065, 107.006728699999, NULL),
(934, 'Kimia Farma Apotik', 934, NULL, -6.2608247, 106.9248998, NULL),
(935, 'Apotek Generik', 935, NULL, -6.2523753, 106.9440715, NULL),
(936, 'Apotik Prima Jaya', 936, NULL, -6.2444508, 107.0030976, NULL),
(937, 'Roxy Pharmacy', 937, NULL, -6.286154, 106.948123499999, NULL),
(938, 'Apotik Murni Farma', 938, NULL, -6.2485809, 107.022126499999, NULL),
(939, 'Apotek Arnika', 939, NULL, -6.2365529, 106.971922, NULL),
(940, 'Apotik Duta Jaya Cikarang', 940, NULL, -6.3180938, 107.1354881, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_masyatrakat`
--

CREATE TABLE `m_masyatrakat` (
  `no_kk` varchar(50) NOT NULL,
  `no_ktp` varchar(20) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `lokasi` varchar(10) DEFAULT NULL,
  `rt` varchar(3) DEFAULT NULL,
  `rw` varchar(3) DEFAULT NULL,
  `kec` varchar(30) DEFAULT NULL,
  `kab` varchar(30) DEFAULT NULL,
  `kode_pos` varchar(10) DEFAULT NULL,
  `id_rumah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_masyatrakat`
--

INSERT INTO `m_masyatrakat` (`no_kk`, `no_ktp`, `nama`, `lokasi`, `rt`, `rw`, `kec`, `kab`, `kode_pos`, `id_rumah`) VALUES
('1', '1', 'sa', 'ta', '1', '2', 'ta', 'se', '155', 1),
('2', '2', 'ss', '1', '3', '2', 'tes', 'coba', '1111', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_mobil`
--

CREATE TABLE `m_mobil` (
  `id_mobil` int(11) UNSIGNED NOT NULL,
  `nopol` varchar(10) NOT NULL,
  `merek` varchar(20) DEFAULT NULL,
  `jenis` varchar(20) DEFAULT NULL,
  `thn_produksi` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_mobil`
--

INSERT INTO `m_mobil` (`id_mobil`, `nopol`, `merek`, `jenis`, `thn_produksi`) VALUES
(6, 'B 708', '1', 'truck', '2017'),
(7, 'B 4001', '2', 'truck', '1990'),
(8, 'B 1231', '2', 'motor', '2009'),
(9, 'B 111 AA', '1', 'motor', '12'),
(11, 'B 1113', '1', 'motor', '2111');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_mobil_merek`
--

CREATE TABLE `m_mobil_merek` (
  `id_merek` int(11) NOT NULL,
  `nama_merek` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_mobil_merek`
--

INSERT INTO `m_mobil_merek` (`id_merek`, `nama_merek`) VALUES
(1, 'Toyota'),
(2, 'Honda');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_pemungut`
--

CREATE TABLE `m_pemungut` (
  `userid` varchar(20) DEFAULT NULL,
  `no_kk` varchar(50) DEFAULT NULL,
  `no_ktp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_perawatan`
--

CREATE TABLE `m_perawatan` (
  `id_perawatan` int(11) NOT NULL,
  `tgl_perawatan` date DEFAULT NULL,
  `nopol` varchar(10) DEFAULT NULL,
  `kilometers` varchar(50) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `nominal` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_perawatan`
--

INSERT INTO `m_perawatan` (`id_perawatan`, `tgl_perawatan`, `nopol`, `kilometers`, `keterangan`, `type`, `nominal`) VALUES
(1, '2017-08-16', '255', '10', 'wwww', 'honda', 50000),
(2, '2017-08-19', '233', '15', 'sss', 'yamaha', 1000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_perencanaan`
--

CREATE TABLE `m_perencanaan` (
  `id_ren` int(11) NOT NULL,
  `tgl_ren` date DEFAULT NULL,
  `id_lokasi` varchar(10) DEFAULT NULL,
  `LEVEL` int(11) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_perencanaan`
--

INSERT INTO `m_perencanaan` (`id_ren`, `tgl_ren`, `id_lokasi`, `LEVEL`, `keterangan`) VALUES
(1, '2017-08-02', '2', 1, '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_rumah`
--

CREATE TABLE `m_rumah` (
  `id_rumah` int(11) NOT NULL,
  `no_rumah` varchar(11) NOT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `id_wilayah` int(11) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_rumah`
--

INSERT INTO `m_rumah` (`id_rumah`, `no_rumah`, `alamat`, `id_wilayah`, `type`) VALUES
(1, '1', 'kp subur', 1, '36'),
(6, '2', 'tr', 1, '72'),
(13, '3', 'mggtt', 2, '603700');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_status`
--

CREATE TABLE `m_status` (
  `id_status` int(11) NOT NULL,
  `nama_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_wilayah`
--

CREATE TABLE `m_wilayah` (
  `id_wilayah` int(11) NOT NULL,
  `nama_wilayah` varchar(50) DEFAULT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `radius` int(11) DEFAULT '1000'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_wilayah`
--

INSERT INTO `m_wilayah` (`id_wilayah`, `nama_wilayah`, `alamat`, `lat`, `lng`, `radius`) VALUES
(51, 'Tes2222', 'Unnamed Road, Pakuhaji, Tangerang, Banten 15570, Indonesia', -6.052137069088576, 106.57748937606812, 100),
(52, 'asdfasdfad', 'Jl. Paku H., Buaran Bambu, Pakuhaji, Tangerang, Banten 15570, Indonesia', -6.067329564693822, 106.59705233600107, 100),
(53, 'asdfasdfad', 'Jl. Paku H., Buaran Bambu, Pakuhaji, Tangerang, Banten 15570, Indonesia', -6.067329564693822, 106.59705233600107, 100),
(54, 'asdfasdfad', 'Jl. Paku H., Buaran Bambu, Pakuhaji, Tangerang, Banten 15570, Indonesia', -6.067329564693822, 106.59705233600107, 100),
(55, 'fgghdghdgh', 'Unnamed Road, Laksana, Pakuhaji, Tangerang, Banten 15570, Indonesia', -6.076205880877554, 106.61421847369638, 1000),
(56, 'tes33333', 'Jl. Pribadi, Buaran Bambu, Pakuhaji, Tangerang, Banten 15570, Indonesia', -6.059648019241745, 106.5984256270167, 100),
(57, 'ffdagfdgfdg', 'Jl. Raya Pakuhaji No.10, Pakuhaji, Tangerang, Banten 15570, Indonesia', -6.0855941329315995, 106.58281087875366, 100),
(58, 'adfsdgfgdfg', 'Unnamed Road, Sukawali, Pakuhaji, Tangerang, Banten 15570, Indonesia', -6.048381554855985, 106.58624410629272, 100),
(59, 'asdfsadfsf', 'Jl. Raya Cirarab, Sukadiri, Tangerang, Banten 15330, Indonesia', -6.043260357053212, 106.56083822250366, 100),
(60, 'asfdasdfsdgggg', 'Unnamed Road, Sukawali, Pakuhaji, Tangerang, Banten 15570, Indonesia', -6.054526928194479, 106.58847570419312, 100),
(61, '3dddddddd', 'Unnamed Road, Pekayon, Sukadiri, Tangerang, Banten 15330, Indonesia', -6.050259315233615, 106.55277013778687, 100),
(62, 'rrrrrrr', 'Jl. Raya Rawakidang - Pakuhaji, Rw. Kidang, Sukadiri, Tangerang, Banten 15330, Indonesia', -6.065793264356151, 106.56787633895874, 100),
(63, 'asdfasdfdf', 'Jl. Raya Rawakidang - Pakuhaji, Pakuhaji, Tangerang, Banten 15570, Indonesia', -6.068695161318188, 106.57782626178232, 100),
(64, '3333444', 'Jl. Raya Pakuhaji, Kramat, Pakuhaji, Tangerang, Banten 15570, Indonesia', -6.059135912322894, 106.59173727035522, 100),
(65, 'BBBBBBB', 'Jl. Raya Rawakidang - Pakuhaji, Pakuhaji, Tangerang, Banten 15570, Indonesia', -6.063232754066206, 106.57491445541382, 100),
(66, 'BBBBBBB', 'Jl. Raya Rawakidang - Pakuhaji, Pakuhaji, Tangerang, Banten 15570, Indonesia', -6.063232754066206, 106.57491445541382, 100),
(67, 'BBBBBBB', 'Jl. Raya Rawakidang - Pakuhaji, Pakuhaji, Tangerang, Banten 15570, Indonesia', -6.063232754066206, 106.57491445541382, 100),
(68, 'TTTTTTT', 'Unnamed Road, Laksana, Pakuhaji, Tangerang, Banten 15570, Indonesia', -6.062037845104363, 106.62692785263062, 100),
(69, 'TTTTTTT', 'Unnamed Road, Laksana, Pakuhaji, Tangerang, Banten 15570, Indonesia', -6.062037845104363, 106.62692785263062, 100),
(70, 'asddasdsd', 'Jl. Raya Pakuhaji No.10, Pakuhaji, Tangerang, Banten 15570, Indonesia', -6.080131897126769, 106.58899068832397, 100),
(71, 'AVVVVVV', 'Jl. Raya Pakuhaji, Kramat, Pakuhaji, Tangerang, Banten 15570, Indonesia', -6.061867143608044, 106.5932822227478, 1000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbluser`
--

CREATE TABLE `tbluser` (
  `userid` varchar(20) NOT NULL DEFAULT '',
  `username` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `id_hakakses` int(11) DEFAULT NULL,
  `STATUS` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_iuran`
--

CREATE TABLE `t_iuran` (
  `id_iuran` int(11) NOT NULL,
  `tgl_iuran` date DEFAULT NULL,
  `id_bisnis` varchar(10) DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL,
  `periode` varchar(10) DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `id_rumah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_jadwal_dk`
--

CREATE TABLE `t_jadwal_dk` (
  `id_jadwal_dk` int(11) DEFAULT NULL,
  `id_jadwal` int(11) DEFAULT NULL,
  `nik` varchar(20) DEFAULT NULL,
  `jns_jabatan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_jadwal_drute`
--

CREATE TABLE `t_jadwal_drute` (
  `id_rute` int(11) DEFAULT NULL,
  `id_jadwal` int(11) DEFAULT NULL,
  `id_lokasi` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_jadwal_h`
--

CREATE TABLE `t_jadwal_h` (
  `id_jadwal` int(11) NOT NULL,
  `tgl_jadwal` date DEFAULT NULL,
  `nopol` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_operasional`
--

CREATE TABLE `t_operasional` (
  `id_op` int(11) NOT NULL,
  `id_jadwal` int(11) DEFAULT NULL,
  `nominal` float DEFAULT NULL,
  `jns_operasional` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_setor_iuran`
--

CREATE TABLE `t_setor_iuran` (
  `id_setor` int(11) NOT NULL,
  `id_iuran` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `nik` varchar(20) DEFAULT NULL,
  `userid` int(20) DEFAULT NULL,
  `fileupload` varchar(300) DEFAULT NULL,
  `nominal` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_daftar_group`
--

CREATE TABLE `user_daftar_group` (
  `id_group` int(11) UNSIGNED NOT NULL,
  `nama_group` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_daftar_group`
--

INSERT INTO `user_daftar_group` (`id_group`, `nama_group`) VALUES
(1, 'Admin'),
(2, 'Kades'),
(3, 'Driver');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_daftar_user_group`
--

CREATE TABLE `user_daftar_user_group` (
  `id_user` varchar(15) NOT NULL DEFAULT '',
  `id_group` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_daftar_user_group`
--

INSERT INTO `user_daftar_user_group` (`id_user`, `id_group`) VALUES
('admin', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_hak_akses_group`
--

CREATE TABLE `user_hak_akses_group` (
  `id_group` int(11) DEFAULT NULL,
  `id_modul` int(11) DEFAULT NULL,
  `add` tinyint(1) DEFAULT '0',
  `edit` tinyint(1) DEFAULT '0',
  `delete` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_hak_akses_group`
--

INSERT INTO `user_hak_akses_group` (`id_group`, `id_modul`, `add`, `edit`, `delete`) VALUES
(1, 2, 1, 1, 1),
(1, 3, 1, 1, 1),
(1, 4, 1, 1, 1),
(1, 5, 1, 1, 1),
(1, 6, 1, 1, 1),
(1, 7, 1, 1, 1),
(1, 8, 1, 1, 1),
(1, 9, 1, 1, 1),
(1, 10, 1, 1, 1),
(1, 11, 1, 1, 1),
(1, 12, 1, 1, 1),
(1, 13, 1, 1, 1),
(1, 14, 1, 1, 1),
(1, 15, 1, 1, 1),
(1, 16, 1, 1, 1),
(1, 17, 1, 1, 1),
(1, 18, 1, 1, 1),
(1, 19, 1, 1, 1),
(1, 20, 1, 1, 1),
(1, 21, 1, 1, 1),
(1, 22, 1, 1, 1),
(1, 23, 1, 1, 1),
(1, 24, 1, 1, 1),
(1, 25, 1, 1, 1),
(1, 26, 1, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_list`
--

CREATE TABLE `user_list` (
  `id_user` varchar(15) NOT NULL DEFAULT '',
  `password` varchar(15) DEFAULT NULL,
  `nama_lengkap` varchar(30) DEFAULT NULL,
  `foto` varchar(15) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_list`
--

INSERT INTO `user_list` (`id_user`, `password`, `nama_lengkap`, `foto`, `status`) VALUES
('admin', '31fee07cabc93c5', 'Administrator', 'admin.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login_history`
--
ALTER TABLE `login_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `m_agama`
--
ALTER TABLE `m_agama`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_bagian`
--
ALTER TABLE `m_bagian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_bisnis`
--
ALTER TABLE `m_bisnis`
  ADD PRIMARY KEY (`id_bisnis`);

--
-- Indexes for table `m_cctv`
--
ALTER TABLE `m_cctv`
  ADD PRIMARY KEY (`id_cctv`);

--
-- Indexes for table `m_grup_hakakses`
--
ALTER TABLE `m_grup_hakakses`
  ADD PRIMARY KEY (`id_grup_hakakses`);

--
-- Indexes for table `m_hakakses`
--
ALTER TABLE `m_hakakses`
  ADD PRIMARY KEY (`id_hakakses`);

--
-- Indexes for table `m_jabatan`
--
ALTER TABLE `m_jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_karyawan`
--
ALTER TABLE `m_karyawan`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `m_kendaraan`
--
ALTER TABLE `m_kendaraan`
  ADD PRIMARY KEY (`vhcId`);

--
-- Indexes for table `m_kendaraan_merek`
--
ALTER TABLE `m_kendaraan_merek`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_kendaraan_model`
--
ALTER TABLE `m_kendaraan_model`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_kendaraan_tipe`
--
ALTER TABLE `m_kendaraan_tipe`
  ADD PRIMARY KEY (`vhcTypeId`);

--
-- Indexes for table `m_komplen`
--
ALTER TABLE `m_komplen`
  ADD PRIMARY KEY (`id_komplen`);

--
-- Indexes for table `m_lokasi_baksampah`
--
ALTER TABLE `m_lokasi_baksampah`
  ADD PRIMARY KEY (`id_lokasi`);

--
-- Indexes for table `m_masyatrakat`
--
ALTER TABLE `m_masyatrakat`
  ADD PRIMARY KEY (`no_kk`,`no_ktp`);

--
-- Indexes for table `m_mobil`
--
ALTER TABLE `m_mobil`
  ADD PRIMARY KEY (`id_mobil`),
  ADD UNIQUE KEY `nopol` (`nopol`);

--
-- Indexes for table `m_mobil_merek`
--
ALTER TABLE `m_mobil_merek`
  ADD PRIMARY KEY (`id_merek`);

--
-- Indexes for table `m_perawatan`
--
ALTER TABLE `m_perawatan`
  ADD PRIMARY KEY (`id_perawatan`);

--
-- Indexes for table `m_perencanaan`
--
ALTER TABLE `m_perencanaan`
  ADD PRIMARY KEY (`id_ren`);

--
-- Indexes for table `m_rumah`
--
ALTER TABLE `m_rumah`
  ADD PRIMARY KEY (`id_rumah`);

--
-- Indexes for table `m_status`
--
ALTER TABLE `m_status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `m_wilayah`
--
ALTER TABLE `m_wilayah`
  ADD PRIMARY KEY (`id_wilayah`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `t_iuran`
--
ALTER TABLE `t_iuran`
  ADD PRIMARY KEY (`id_iuran`);

--
-- Indexes for table `t_jadwal_h`
--
ALTER TABLE `t_jadwal_h`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `t_operasional`
--
ALTER TABLE `t_operasional`
  ADD PRIMARY KEY (`id_op`);

--
-- Indexes for table `t_setor_iuran`
--
ALTER TABLE `t_setor_iuran`
  ADD PRIMARY KEY (`id_setor`);

--
-- Indexes for table `user_daftar_group`
--
ALTER TABLE `user_daftar_group`
  ADD PRIMARY KEY (`id_group`);

--
-- Indexes for table `user_daftar_user_group`
--
ALTER TABLE `user_daftar_user_group`
  ADD PRIMARY KEY (`id_group`,`id_user`);

--
-- Indexes for table `user_hak_akses_group`
--
ALTER TABLE `user_hak_akses_group`
  ADD UNIQUE KEY `group_modul` (`id_group`,`id_modul`);

--
-- Indexes for table `user_list`
--
ALTER TABLE `user_list`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login_history`
--
ALTER TABLE `login_history`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `m_agama`
--
ALTER TABLE `m_agama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `m_bagian`
--
ALTER TABLE `m_bagian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `m_bisnis`
--
ALTER TABLE `m_bisnis`
  MODIFY `id_bisnis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=941;
--
-- AUTO_INCREMENT for table `m_jabatan`
--
ALTER TABLE `m_jabatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `m_kendaraan`
--
ALTER TABLE `m_kendaraan`
  MODIFY `vhcId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;
--
-- AUTO_INCREMENT for table `m_kendaraan_merek`
--
ALTER TABLE `m_kendaraan_merek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `m_kendaraan_model`
--
ALTER TABLE `m_kendaraan_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `m_kendaraan_tipe`
--
ALTER TABLE `m_kendaraan_tipe`
  MODIFY `vhcTypeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `m_komplen`
--
ALTER TABLE `m_komplen`
  MODIFY `id_komplen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `m_lokasi_baksampah`
--
ALTER TABLE `m_lokasi_baksampah`
  MODIFY `id_lokasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=941;
--
-- AUTO_INCREMENT for table `m_mobil`
--
ALTER TABLE `m_mobil`
  MODIFY `id_mobil` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `m_mobil_merek`
--
ALTER TABLE `m_mobil_merek`
  MODIFY `id_merek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `m_perawatan`
--
ALTER TABLE `m_perawatan`
  MODIFY `id_perawatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `m_perencanaan`
--
ALTER TABLE `m_perencanaan`
  MODIFY `id_ren` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `m_rumah`
--
ALTER TABLE `m_rumah`
  MODIFY `id_rumah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `m_status`
--
ALTER TABLE `m_status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `m_wilayah`
--
ALTER TABLE `m_wilayah`
  MODIFY `id_wilayah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `user_daftar_group`
--
ALTER TABLE `user_daftar_group`
  MODIFY `id_group` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
