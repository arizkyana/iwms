-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2017 at 03:14 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `iwwmis`
--

-- --------------------------------------------------------

--
-- Table structure for table `login_history`
--

CREATE TABLE IF NOT EXISTS `login_history` (
`id` int(11) unsigned NOT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_addr` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE IF NOT EXISTS `modul` (
`id_modul` int(11) unsigned NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `nama_modul` varchar(30) DEFAULT NULL,
  `url` varchar(30) DEFAULT NULL,
  `icon` varchar(30) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `modul`
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
-- Table structure for table `m_agama`
--

CREATE TABLE IF NOT EXISTS `m_agama` (
`id` int(11) NOT NULL,
  `nama_agama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `m_agama`
--

INSERT INTO `m_agama` (`id`, `nama_agama`) VALUES
(11, 'Islam'),
(12, 'Kristen'),
(13, 'Budha'),
(14, 'Hindu'),
(15, 'Protestan');

-- --------------------------------------------------------

--
-- Table structure for table `m_bagian`
--

CREATE TABLE IF NOT EXISTS `m_bagian` (
`id` int(11) NOT NULL,
  `nama_bagian` varchar(30) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `m_bagian`
--

INSERT INTO `m_bagian` (`id`, `nama_bagian`) VALUES
(1, 'umum'),
(2, 'staff'),
(4, 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `m_bisnis`
--

CREATE TABLE IF NOT EXISTS `m_bisnis` (
`id_bisnis` int(11) NOT NULL,
  `nama_bisnis` varchar(50) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `m_bisnis`
--

INSERT INTO `m_bisnis` (`id_bisnis`, `nama_bisnis`) VALUES
(1, 'bekasi'),
(2, 'tangerang');

-- --------------------------------------------------------

--
-- Table structure for table `m_cctv`
--

CREATE TABLE IF NOT EXISTS `m_cctv` (
  `id_cctv` varchar(10) NOT NULL,
  `lokasicctv` varchar(50) DEFAULT NULL,
  `urlcctv` varchar(100) DEFAULT NULL,
  `jns_cctv` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_grup_hakakses`
--

CREATE TABLE IF NOT EXISTS `m_grup_hakakses` (
  `id_grup_hakakses` int(11) NOT NULL,
  `nama_grup_hakakses` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_grup_wewenang`
--

CREATE TABLE IF NOT EXISTS `m_grup_wewenang` (
  `id_grup_hakakses` int(11) DEFAULT NULL,
  `akses_simpan` bit(1) DEFAULT NULL,
  `akses_ubah` bit(1) DEFAULT NULL,
  `akses_tampilkan` bit(1) DEFAULT NULL,
  `akses_hapus` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_hakakses`
--

CREATE TABLE IF NOT EXISTS `m_hakakses` (
  `id_hakakses` int(11) NOT NULL DEFAULT '0',
  `nama_hakakses` varchar(20) DEFAULT NULL,
  `id_grup_hakakses` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_jabatan`
--

CREATE TABLE IF NOT EXISTS `m_jabatan` (
`id` int(11) NOT NULL,
  `nama_jabatan` varchar(30) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `m_jabatan`
--

INSERT INTO `m_jabatan` (`id`, `nama_jabatan`) VALUES
(1, 'Operator'),
(2, 'SVC');

-- --------------------------------------------------------

--
-- Table structure for table `m_karyawan`
--

CREATE TABLE IF NOT EXISTS `m_karyawan` (
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
-- Dumping data for table `m_karyawan`
--

INSERT INTO `m_karyawan` (`nik`, `nama`, `id_jabatan`, `id_bagian`, `type_karyawan`, `lokasi`, `tgl_bergabung`, `jns_kelamin`, `tmp_lahir`, `tgl_lahit`, `gol_darah`, `id_agama`, `id_status`, `tinggi`, `berat`, `alamat`, `no_telepon`, `email`) VALUES
('jtyuj', 'uytu', NULL, NULL, NULL, NULL, NULL, 'pria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ytuty', 'tyuty', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_komplen`
--

CREATE TABLE IF NOT EXISTS `m_komplen` (
`id_komplen` int(11) NOT NULL,
  `id_lokasi` varchar(10) NOT NULL,
  `judul` varchar(20) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `m_komplen`
--

INSERT INTO `m_komplen` (`id_komplen`, `id_lokasi`, `judul`, `keterangan`) VALUES
(1, '1', 'wew', 'wew'),
(2, '2', 'dfe', 'fsdf');

-- --------------------------------------------------------

--
-- Table structure for table `m_lokasi_baksampah`
--

CREATE TABLE IF NOT EXISTS `m_lokasi_baksampah` (
`id_lokasi` int(11) NOT NULL,
  `nama_lokasi` varchar(50) DEFAULT NULL,
  `id_bisnis` varchar(10) DEFAULT NULL,
  `id_cctv` varchar(10) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `id_wilayah` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `m_lokasi_baksampah`
--

INSERT INTO `m_lokasi_baksampah` (`id_lokasi`, `nama_lokasi`, `id_bisnis`, `id_cctv`, `lat`, `lng`, `id_wilayah`) VALUES
(1, 'vfvfdbd', NULL, NULL, NULL, NULL, NULL),
(2, 'gfdgdfg', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_masyatrakat`
--

CREATE TABLE IF NOT EXISTS `m_masyatrakat` (
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
-- Dumping data for table `m_masyatrakat`
--

INSERT INTO `m_masyatrakat` (`no_kk`, `no_ktp`, `nama`, `lokasi`, `rt`, `rw`, `kec`, `kab`, `kode_pos`, `id_rumah`) VALUES
('1', '1', 'sa', 'ta', '1', '2', 'ta', 'se', '155', 1),
('2', '2', 'ss', '1', '3', '2', 'tes', 'coba', '1111', 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_mobil`
--

CREATE TABLE IF NOT EXISTS `m_mobil` (
`id_mobil` int(11) unsigned NOT NULL,
  `nopol` varchar(10) NOT NULL,
  `merek` varchar(20) DEFAULT NULL,
  `jenis` varchar(20) DEFAULT NULL,
  `thn_produksi` varchar(4) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `m_mobil`
--

INSERT INTO `m_mobil` (`id_mobil`, `nopol`, `merek`, `jenis`, `thn_produksi`) VALUES
(6, 'B 708', 'destss', 'truck', '2017'),
(7, 'B 4001', 'Hino', 'truck', '1990'),
(8, 'B 1231', 'Kamm', 'motor', '2009'),
(9, 'B 111 AA', 'Dino', 'motor', '12'),
(11, 'B 1113', 'srt', 'motor', '2111');

-- --------------------------------------------------------

--
-- Table structure for table `m_pemungut`
--

CREATE TABLE IF NOT EXISTS `m_pemungut` (
  `userid` varchar(20) DEFAULT NULL,
  `no_kk` varchar(50) DEFAULT NULL,
  `no_ktp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_perawatan`
--

CREATE TABLE IF NOT EXISTS `m_perawatan` (
`id_perawatan` int(11) NOT NULL,
  `tgl_perawatan` date DEFAULT NULL,
  `nopol` varchar(10) DEFAULT NULL,
  `kilometers` varchar(50) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `nominal` float DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `m_perawatan`
--

INSERT INTO `m_perawatan` (`id_perawatan`, `tgl_perawatan`, `nopol`, `kilometers`, `keterangan`, `type`, `nominal`) VALUES
(1, '2017-08-16', '255', '10', 'wwww', 'honda', 50000),
(2, '2017-08-19', '233', '15', 'sss', 'yamaha', 1000000);

-- --------------------------------------------------------

--
-- Table structure for table `m_perencanaan`
--

CREATE TABLE IF NOT EXISTS `m_perencanaan` (
`id_ren` int(11) NOT NULL,
  `tgl_ren` date DEFAULT NULL,
  `id_lokasi` varchar(10) DEFAULT NULL,
  `LEVEL` int(11) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `m_perencanaan`
--

INSERT INTO `m_perencanaan` (`id_ren`, `tgl_ren`, `id_lokasi`, `LEVEL`, `keterangan`) VALUES
(1, '2017-08-02', '2', 1, '2');

-- --------------------------------------------------------

--
-- Table structure for table `m_rumah`
--

CREATE TABLE IF NOT EXISTS `m_rumah` (
`id_rumah` int(11) NOT NULL,
  `no_rumah` varchar(11) NOT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `id_wilayah` int(11) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `m_rumah`
--

INSERT INTO `m_rumah` (`id_rumah`, `no_rumah`, `alamat`, `id_wilayah`, `type`) VALUES
(1, '1', 'kp subur', 1, '36'),
(6, '2', 'tr', 1, '72'),
(13, '3', 'mggtt', 2, '603700');

-- --------------------------------------------------------

--
-- Table structure for table `m_status`
--

CREATE TABLE IF NOT EXISTS `m_status` (
`id_status` int(11) NOT NULL,
  `nama_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `m_wilayah`
--

CREATE TABLE IF NOT EXISTS `m_wilayah` (
`id_wilayah` int(11) NOT NULL,
  `nama_wilayah` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `radius` double DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `m_wilayah`
--

INSERT INTO `m_wilayah` (`id_wilayah`, `nama_wilayah`, `alamat`, `lat`, `lng`, `radius`) VALUES
(1, 'bekasi', 'we', 6.22256, 6.12548, 2555),
(2, 'tangerang', 'htre', 6.156465, 6.254698, 325);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE IF NOT EXISTS `tbluser` (
  `userid` varchar(20) NOT NULL DEFAULT '',
  `username` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `id_hakakses` int(11) DEFAULT NULL,
  `STATUS` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_iuran`
--

CREATE TABLE IF NOT EXISTS `t_iuran` (
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
-- Table structure for table `t_jadwal_dk`
--

CREATE TABLE IF NOT EXISTS `t_jadwal_dk` (
  `id_jadwal_dk` int(11) DEFAULT NULL,
  `id_jadwal` int(11) DEFAULT NULL,
  `nik` varchar(20) DEFAULT NULL,
  `jns_jabatan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_jadwal_drute`
--

CREATE TABLE IF NOT EXISTS `t_jadwal_drute` (
  `id_rute` int(11) DEFAULT NULL,
  `id_jadwal` int(11) DEFAULT NULL,
  `id_lokasi` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_jadwal_h`
--

CREATE TABLE IF NOT EXISTS `t_jadwal_h` (
  `id_jadwal` int(11) NOT NULL,
  `tgl_jadwal` date DEFAULT NULL,
  `nopol` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_operasional`
--

CREATE TABLE IF NOT EXISTS `t_operasional` (
  `id_op` int(11) NOT NULL,
  `id_jadwal` int(11) DEFAULT NULL,
  `nominal` float DEFAULT NULL,
  `jns_operasional` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_setor_iuran`
--

CREATE TABLE IF NOT EXISTS `t_setor_iuran` (
  `id_setor` int(11) NOT NULL,
  `id_iuran` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `nik` varchar(20) DEFAULT NULL,
  `userid` varchar(20) DEFAULT NULL,
  `fileupload` varchar(20) DEFAULT NULL,
  `nominal` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_daftar_group`
--

CREATE TABLE IF NOT EXISTS `user_daftar_group` (
`id_group` int(11) unsigned NOT NULL,
  `nama_group` varchar(15) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user_daftar_group`
--

INSERT INTO `user_daftar_group` (`id_group`, `nama_group`) VALUES
(1, 'Admin'),
(2, 'Kades'),
(3, 'Driver');

-- --------------------------------------------------------

--
-- Table structure for table `user_daftar_user_group`
--

CREATE TABLE IF NOT EXISTS `user_daftar_user_group` (
  `id_user` varchar(15) NOT NULL DEFAULT '',
  `id_group` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_daftar_user_group`
--

INSERT INTO `user_daftar_user_group` (`id_user`, `id_group`) VALUES
('admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_hak_akses_group`
--

CREATE TABLE IF NOT EXISTS `user_hak_akses_group` (
  `id_group` int(11) DEFAULT NULL,
  `id_modul` int(11) DEFAULT NULL,
  `add` tinyint(1) DEFAULT '0',
  `edit` tinyint(1) DEFAULT '0',
  `delete` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_hak_akses_group`
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
-- Table structure for table `user_list`
--

CREATE TABLE IF NOT EXISTS `user_list` (
  `id_user` varchar(15) NOT NULL DEFAULT '',
  `password` varchar(15) DEFAULT NULL,
  `nama_lengkap` varchar(30) DEFAULT NULL,
  `foto` varchar(15) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_list`
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
 ADD PRIMARY KEY (`id_mobil`), ADD UNIQUE KEY `nopol` (`nopol`);

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
 ADD PRIMARY KEY (`id_wilayah`), ADD UNIQUE KEY `radius` (`radius`);

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
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
MODIFY `id_modul` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `m_agama`
--
ALTER TABLE `m_agama`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `m_bagian`
--
ALTER TABLE `m_bagian`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `m_bisnis`
--
ALTER TABLE `m_bisnis`
MODIFY `id_bisnis` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `m_jabatan`
--
ALTER TABLE `m_jabatan`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `m_komplen`
--
ALTER TABLE `m_komplen`
MODIFY `id_komplen` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `m_lokasi_baksampah`
--
ALTER TABLE `m_lokasi_baksampah`
MODIFY `id_lokasi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `m_mobil`
--
ALTER TABLE `m_mobil`
MODIFY `id_mobil` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `m_perawatan`
--
ALTER TABLE `m_perawatan`
MODIFY `id_perawatan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `m_perencanaan`
--
ALTER TABLE `m_perencanaan`
MODIFY `id_ren` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `m_rumah`
--
ALTER TABLE `m_rumah`
MODIFY `id_rumah` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `m_status`
--
ALTER TABLE `m_status`
MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `m_wilayah`
--
ALTER TABLE `m_wilayah`
MODIFY `id_wilayah` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_daftar_group`
--
ALTER TABLE `user_daftar_group`
MODIFY `id_group` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
