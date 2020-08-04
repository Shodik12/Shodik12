-- phpMyAdmin SQL Dump
-- version 4.1.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 04, 2020 at 08:37 AM
-- Server version: 5.1.67-andiunpam
-- PHP Version: 5.6.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kelas`
--

-- --------------------------------------------------------

--
-- Table structure for table `absen_siswa`
--

CREATE TABLE IF NOT EXISTS `absen_siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `hari` varchar(20) NOT NULL,
  `ket` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absen_siswa`
--

INSERT INTO `absen_siswa` (`id`, `nama`, `hari`, `ket`) VALUES
(0, 'Hhhhzs', '', 'Hadir'),
(1, 'Dwi', 'selasa', 'Sakit'),
(2, 'Fg', 'Ccfff', '');

-- --------------------------------------------------------

--
-- Table structure for table `audio`
--

CREATE TABLE IF NOT EXISTS `audio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mptri` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `audio`
--

INSERT INTO `audio` (`id`, `mptri`) VALUES
(1, 'hadist.mp3'),
(2, 'surah.mp3'),
(3, 'hadist.mp3'),
(4, 'hadist.mp3'),
(5, 'surah.mp3');

-- --------------------------------------------------------

--
-- Table structure for table `calon_siswa`
--

CREATE TABLE IF NOT EXISTS `calon_siswa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `calon_siswa`
--

INSERT INTO `calon_siswa` (`id`, `nama`, `jenis_kelamin`) VALUES
(1, 'Contoh', 'Laki-laki'),
(2, 'Contoh', 'Laki-laki');

-- --------------------------------------------------------

--
-- Table structure for table `edit_article`
--

CREATE TABLE IF NOT EXISTS `edit_article` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `isi` varchar(255) NOT NULL,
  `jenis_article` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `edit_article`
--

INSERT INTO `edit_article` (`id`, `isi`, `jenis_article`) VALUES
(4, 'Click download to get full di sahurnya pesbukers sketsa yang silet', 'Coba'),
(7, 'Untuk anak kelas mohon pembayaran di lunasi', 'Coba'),
(8, 'Tes', 'Test'),
(9, 'Contoh', 'Contoh'),
(10, 'Xxxx', 'Zzz'),
(11, 'Contoh', 'Click'),
(12, 'Contoh', 'Pengumuman');

-- --------------------------------------------------------

--
-- Table structure for table `fotouser`
--

CREATE TABLE IF NOT EXISTS `fotouser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foto` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `fotouser`
--

INSERT INTO `fotouser` (`id`, `foto`) VALUES
(3, '1.jpg'),
(4, 'bg.png'),
(5, 'EOqVzQYUUAAMsdo.jpeg'),
(9, 'bg.png'),
(10, 'bgadmin.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `gambar`
--

CREATE TABLE IF NOT EXISTS `gambar` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) NOT NULL,
  `ukuran` int(200) NOT NULL,
  `tipe` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `gambar`
--

INSERT INTO `gambar` (`id`, `nama`, `ukuran`, `tipe`) VALUES
(2, 'IMG-20200729-WA0004.jpg', 91474, 'image/jpeg'),
(4, 'bg.png', 153065, 'image/png');

-- --------------------------------------------------------

--
-- Table structure for table `gambaruser`
--

CREATE TABLE IF NOT EXISTS `gambaruser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gambaruser` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `gambaruser`
--

INSERT INTO `gambaruser` (`id`, `gambaruser`) VALUES
(2, 'bgadmin.jpg'),
(3, 'bgadmin.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_mapel`
--

CREATE TABLE IF NOT EXISTS `jadwal_mapel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `senin` varchar(20) NOT NULL,
  `selasa` varchar(20) NOT NULL,
  `rabu` varchar(20) NOT NULL,
  `kamis` varchar(20) NOT NULL,
  `jumat` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `jadwal_mapel`
--

INSERT INTO `jadwal_mapel` (`id`, `senin`, `selasa`, `rabu`, `kamis`, `jumat`) VALUES
(4, 'Rff', 'Ggggg', 'Fgg', 'Fffr', 'Ffgg'),
(5, 'Ff', 'Yyg', 'Ggg', 'Vg', 'Gg'),
(6, 'Mat,ipa,pai', 'Ipa,fisika,kimia', 'Pkn agama', 'Olahraga', 'Tik'),
(7, 'Mat,ipa,pai', 'Ipa,fisika,kimia', 'Pkn agama', 'Olahraga', 'Tik'),
(8, 'Rff', 'Ipa,fisika,kimia', 'Pkn agama', 'Olahraga', 'T');

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE IF NOT EXISTS `logins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`id`, `nama`, `password`) VALUES
(1, 'siswa', 'siswa');

-- --------------------------------------------------------

--
-- Table structure for table `login_siswa`
--

CREATE TABLE IF NOT EXISTS `login_siswa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `level` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `login_siswa`
--

INSERT INTO `login_siswa` (`id`, `nama`, `password`, `level`) VALUES
(1, 'shodik', 'shodik', 'admin'),
(2, 'user', 'user', 'siswa');

-- --------------------------------------------------------

--
-- Table structure for table `pdf`
--

CREATE TABLE IF NOT EXISTS `pdf` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `nama_pdf` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `pdf`
--

INSERT INTO `pdf` (`id`, `nama_pdf`) VALUES
(5, 'CETAK_TAHAP_1-40.pdf'),
(6, 'halo.pdf'),
(7, 'CETAK_TAHAP_1-40.pdf'),
(8, 'cek.pdf'),
(9, 'poster_listrik_1584791001.docx');

-- --------------------------------------------------------

--
-- Table structure for table `pdfuser`
--

CREATE TABLE IF NOT EXISTS `pdfuser` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `userpdf` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `pdfuser`
--

INSERT INTO `pdfuser` (`id`, `userpdf`) VALUES
(1, 'cek.pdf'),
(2, 'CETAK_TAHAP_1-40.pdf'),
(3, 'cek.pdf'),
(4, 'cek.pdf'),
(5, 'cek.pdf'),
(6, 'cek.pdf'),
(7, 'cek.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `serahaudio`
--

CREATE TABLE IF NOT EXISTS `serahaudio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `serahaudio`
--

INSERT INTO `serahaudio` (`id`, `nama`) VALUES
(2, 'Contoh'),
(3, 'siswa');

-- --------------------------------------------------------

--
-- Table structure for table `serahgambar`
--

CREATE TABLE IF NOT EXISTS `serahgambar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `serahgambar`
--

INSERT INTO `serahgambar` (`id`, `nama`) VALUES
(1, 'Click'),
(2, 'Shodik');

-- --------------------------------------------------------

--
-- Table structure for table `serahpdf`
--

CREATE TABLE IF NOT EXISTS `serahpdf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `serahpdf`
--

INSERT INTO `serahpdf` (`id`, `nama`) VALUES
(3, 'Shodik'),
(4, 'Ojan'),
(5, 'Ngurah nanak'),
(6, 'Hhh'),
(8, 'Click'),
(9, 'Hss');

-- --------------------------------------------------------

--
-- Table structure for table `tugas`
--

CREATE TABLE IF NOT EXISTS `tugas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mapel` varchar(1000) DEFAULT NULL,
  `materi` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tugas`
--

INSERT INTO `tugas` (`id`, `mapel`, `materi`) VALUES
(2, 'Matematik', 'Kerjakan statistik');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  `hari` varchar(100) DEFAULT NULL,
  `ket` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `hari`, `ket`) VALUES
(9, 'tukimin', '2020-07-30', 'Hadir'),
(10, 'Shodik', '2020-07-31', 'Hadir'),
(11, 'tukimin', '2020-08-01', 'Gshs'),
(12, 'Hahah', '2020-08-02', 'Hadir'),
(13, '', '', ''),
(14, 'Gg', '2020-08-03', 'Hh'),
(15, 'Tukimim', '2020-08-03', 'Hadir'),
(16, 'shodik', '2020-08-03', 'Hadir');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE IF NOT EXISTS `video` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `nama_video` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `nama_video`) VALUES
(3, 'video.mp4'),
(4, 'video.mp4');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
