-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 31 Jul 2015 pada 06.29
-- Versi Server: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tutorial`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `evenement`
--

CREATE TABLE IF NOT EXISTS `evenement` (
`id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_bin NOT NULL,
  `allDay` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `images`
--

CREATE TABLE IF NOT EXISTS `images` (
`id` int(10) NOT NULL,
  `title` text NOT NULL,
  `desc` text NOT NULL,
  `image` text NOT NULL,
  `url` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data untuk tabel `images`
--

INSERT INTO `images` (`id`, `title`, `desc`, `image`, `url`, `date`) VALUES
(1, 'Statistik Pendaftar', 'Membuat Statistik Pendaftar dengan Php bootstrap & mysqli', 'statistik.png', 'statistik.php', '2014-01-22 23:53:13'),
(2, 'Backup Restore', 'Membuat backup restore di php', 'backuprestore.png', '', '2014-01-22 23:53:13'),
(3, 'Pencarian Alamat', 'Membuat form pencarian alamat Autocomplete mengunakan Geocoder Google Maps', 'alamat.png', '', '2014-01-22 23:54:40'),
(4, 'Mp3 Player Bootstrap ', 'Membuat MP3 Player dengan Bootstrap', 'mp3.png', '', '2014-01-22 23:54:40'),
(5, 'Jquery DataTable ', 'Membuat Searching Sorting Pagging Mengunakan JqueryDataTables Php Bootstrap Mysqli', 'jquerydatatables.png', '', '2014-01-22 23:56:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master`
--

CREATE TABLE IF NOT EXISTS `master` (
`id_daftar` int(5) NOT NULL,
  `s_nama` varchar(150) NOT NULL,
  `s_jk` int(1) NOT NULL,
  `s_agama` int(1) NOT NULL,
  `s_tmp_lahir` varchar(100) NOT NULL,
  `s_tgl_lahir` date NOT NULL,
  `jrsn_pil1` int(4) NOT NULL,
  `jrsn_pil2` int(4) NOT NULL,
  `tgl_daftar` date NOT NULL,
  `nisn` varchar(15) NOT NULL,
  `noreg` varchar(10) NOT NULL,
  `Alamat` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=172 ;

--
-- Dumping data untuk tabel `master`
--

INSERT INTO `master` (`id_daftar`, `s_nama`, `s_jk`, `s_agama`, `s_tmp_lahir`, `s_tgl_lahir`, `jrsn_pil1`, `jrsn_pil2`, `tgl_daftar`, `nisn`, `noreg`, `Alamat`) VALUES
(30, 'GUSTI SUMAINDRA', 1, 1, 'sadadad', '2009-03-01', 1103, 1254, '2015-04-08', '0001', '0001', ''),
(31, 'AFIF PRASETYA', 1, 0, '', '0000-00-00', 0, 0, '2015-04-08', '0002', '0002', ''),
(32, 'RIO RIVALDO', 1, 1, 'BEKASI', '1999-06-19', 1289, 1103, '2015-04-08', '9994256564', '0003', ''),
(33, 'MITA OKTAVIANI', 2, 1, 'JAKARTA', '2000-10-16', 2063, 1174, '2015-04-09', '0004', '0004', ''),
(34, 'MUHAMMAD NAJRI ALGHIFARI', 1, 0, '', '0000-00-00', 0, 0, '2015-04-11', '0005', '0005', ''),
(35, 'MUHAMAD YUSUP', 1, 1, 'JAKARTA', '2000-04-01', 1254, 1289, '2015-04-13', '0006', '0006', ''),
(39, 'RIZKI RAHMAN', 1, 1, 'Jakarta', '2000-01-06', 1289, 1254, '2015-04-14', '0008', '0008', ''),
(40, 'MIZAM FADHLAN ANANDA', 1, 1, 'Jakarta', '2000-08-24', 2063, 1289, '2015-04-15', '0009', '0009', ''),
(41, 'AZKIYAI FAIZIN', 1, 1, 'JAKARTA', '1999-12-29', 2063, 1289, '2015-04-15', '0010', '0010', ''),
(42, 'ANDIKA FEBRIANA', 1, 1, '04', '2000-02-04', 2063, 1174, '2015-04-15', '0011', '0011', ''),
(43, 'ANAK ANUNG ANINDITO', 1, 1, 'JAKARTA', '2000-06-04', 2063, 1174, '2015-04-15', '0012', '0012', ''),
(44, 'RIZKY APRIANTO', 1, 1, 'Bekasi', '2000-04-15', 2063, 1174, '2015-04-15', '0013', '0013', ''),
(45, 'AVREDHO OZA YAMADHA', 1, 1, 'ngawi', '2000-03-25', 1289, 1103, '2015-04-15', '0014', '0014', ''),
(46, 'SAYYID MUHAMMAD', 1, 1, 'BEKASI', '2000-08-25', 1289, 1174, '2015-04-16', '0015', '0015', ''),
(47, 'ABDUL WAHAB', 1, 0, '', '0000-00-00', 0, 0, '2015-04-17', '0016', '0016', ''),
(48, 'ADE AGIL BUDI PRASETYO', 1, 1, 'BEKASI', '2000-05-12', 1289, 2063, '2015-04-18', '0018', '0018', ''),
(49, 'MUHAMMAD RIAN HASANI', 1, 0, '', '0000-00-00', 0, 0, '2015-04-18', '0019', '0019', ''),
(50, 'FATURRAHMAN', 1, 1, 'jakarta', '2000-09-18', 1289, 1103, '2015-04-18', '0020', '0020', ''),
(51, 'M. YUSUF EKO PRASETYO', 1, 1, 'SEMARANG', '2000-11-06', 1289, 2063, '2015-04-20', '0021', '0021', ''),
(52, 'M. DINA FRIZA', 1, 0, '', '0000-00-00', 0, 0, '2015-04-20', '0022', '0022', ''),
(53, 'M. FAHRI', 1, 1, 'jakarta', '2000-01-18', 1254, 1174, '2015-04-20', '0023', '0023', ''),
(54, 'AHMAD LATHOIFUL AWARIF', 1, 1, 'bekasi', '2000-09-07', 1254, 1174, '2015-04-20', '0024', '0024', ''),
(55, 'MUHAMMAD FAJAR', 1, 1, 'jakarta', '2001-01-01', 1289, 1174, '2015-04-20', '0011312741', '0025', ''),
(57, 'DAFIN NOUVAL ARIEF', 1, 1, 'bekasi', '2000-05-08', 1289, 2063, '2015-04-20', '0007', '0007', ''),
(58, 'RIFALDI PRATAMA', 1, 1, 'bekasi', '2000-07-05', 1289, 1254, '2015-04-20', '0026', '0026', ''),
(59, 'RISKY ANTONIO', 1, 0, '', '0000-00-00', 0, 0, '2015-04-21', '0028', '0028', ''),
(60, 'AGUS SETIAWAN', 1, 1, 'JAKARTA', '2000-08-02', 1289, 1254, '2015-04-21', '0029', '0029', ''),
(61, 'MUHAMMAD KHARRIS AMBIEYA', 1, 1, 'Jakarta', '2000-03-03', 1289, 1103, '2015-04-21', '0030', '0030', ''),
(62, 'DIMAS ARYA PRASETYO', 1, 1, 'jakarta', '2000-06-23', 1289, 1103, '2015-04-21', '0031', '0031', ''),
(64, 'MUHAMMAD JOUNAIDI K', 1, 1, 'JAKARTA', '2000-06-07', 1254, 2063, '2015-04-22', '0032', '0032', ''),
(65, 'FIRMAN MAULANA', 1, 1, 'JAKARTA', '2000-12-29', 1289, 2063, '2015-04-22', '0017', '0017', ''),
(66, 'ASEP HERMANSYAH', 1, 1, 'jakarta', '2000-05-26', 1103, 2063, '2015-04-22', '0027', '0027', ''),
(67, 'SETYO ADJIE WIBOWO', 1, 1, 'Kebumen', '1999-10-25', 1254, 1289, '2015-04-22', '0033', '0033', ''),
(68, 'ACHMAD RIZAL NOVRIANTO', 1, 1, 'jakarta', '1999-11-16', 1254, 1289, '2015-04-22', '9995637039', '0034', ''),
(71, 'NAFIS NURPAUZAN', 1, 1, 'Jakarta', '2000-06-30', 1103, 1289, '2015-04-22', '0035', '0035', ''),
(72, 'M.JANUAR SN', 1, 1, 'BEKASI', '2000-01-28', 1289, 1254, '2015-04-22', '0036', '0036', ''),
(76, 'M. SYAIPUL ROZAK NOER', 1, 0, '', '0000-00-00', 0, 0, '2015-04-23', '0037', '0037', ''),
(77, 'TRY SEPTYAN S', 1, 1, 'BEKASI', '2000-09-29', 1103, 1254, '2015-04-23', '0038', '0038', ''),
(78, 'AFIF NANDA RIZKILLAH', 1, 1, 'JAKARTA', '2000-03-09', 1289, 1254, '2015-04-24', '0039', '0039', ''),
(79, 'RACHMAT WAHYU RIFAI', 1, 1, 'JAKARTA', '2000-07-17', 1103, 1289, '2015-04-24', '0040', '0040', ''),
(80, 'SADAM BILAGUNA', 1, 1, 'Jakarta', '2000-02-20', 1289, 1103, '2015-04-25', '0041', '0041', ''),
(81, 'MUHAMMAD RIAN AZHIM', 1, 1, 'BEKASI', '2000-05-14', 1289, 1103, '2015-04-25', '0007014806', '0042', ''),
(82, 'DWI PRAYUDI', 1, 1, 'magelang ', '2000-07-11', 1289, 1254, '2015-04-27', '0043', '0043', ''),
(83, 'MUHAMMAD AKROM FAHMI', 1, 1, 'JAKARTA', '2001-02-04', 2063, 1289, '2015-04-27', '0044', '0044', ''),
(84, 'ACHMAD FAOZI', 1, 1, 'Brebes', '2000-03-29', 1103, 1289, '2015-04-27', '0045', '0045', ''),
(85, 'MUHAMMAD RIESKY PUTRA', 1, 1, 'Jakarta', '2000-06-08', 1103, 1289, '2015-04-27', '0046', '0046', ''),
(86, 'RIZKI MAULANA', 1, 1, 'JAKARTA', '1999-08-21', 1103, 1289, '2015-04-27', '0047', '0047', ''),
(87, 'IRFAN MULYANA', 1, 1, 'pandeglang', '2000-06-14', 1289, 1103, '2015-04-28', '0048', '0048', ''),
(88, 'MOHAMAD BAHRUDIN', 1, 1, 'JAKARTA', '2000-07-24', 2063, 1174, '2015-04-28', '0049', '0049', ''),
(89, 'RAIHANSYAH', 1, 1, 'jakrta ', '1999-08-25', 1289, 1174, '2015-04-28', '0050', '0050', ''),
(90, 'HERMAWAN', 1, 1, 'JAKARTA', '2000-01-10', 2063, 1103, '2015-04-28', '0051', '0051', ''),
(91, 'RUDI SALAM', 1, 1, 'JAKARTA', '2000-07-03', 1174, 2063, '2015-04-29', '0052', '0052', ''),
(92, 'KUAT FEBRIYANTO', 1, 1, 'JAKARTA', '2000-02-21', 1289, 1103, '2015-04-30', '0053', '0053', ''),
(93, 'LUTFI LUPIK HIDAY', 1, 1, 'PURWORJO', '2000-02-21', 1289, 1254, '2015-04-30', '0054', '0054', ''),
(94, 'FACHMI TRI PRASOJO', 1, 1, 'JAKARTA', '2000-02-22', 1254, 1289, '2015-04-30', '0055', '0055', ''),
(95, 'OKY SAPUTRA', 1, 1, 'JAKARTA', '1999-10-04', 1254, 1289, '2015-04-30', '0056', '0056', ''),
(96, 'NIKELSON', 1, 3, 'SUMATERA UTARA', '2000-05-20', 2063, 1289, '2015-04-30', '0057', '0057', ''),
(97, 'ALDI TAUFIQURRAHMAN', 1, 1, 'JAKARTA', '2000-03-29', 2063, 1289, '2015-04-30', '0058', '0058', ''),
(99, 'RIYADI ANDY SAPUTRA', 1, 1, 'PURWOREJO', '2000-01-08', 2063, 1174, '2015-04-30', '0059', '0059', ''),
(101, 'REZA RIZKI ISHIKAWA', 1, 1, 'JAKARTA', '1998-08-12', 1103, 1289, '2015-04-30', '9980907262', '0060', ''),
(102, 'MUHAMMAD RIZKI SETIAWAN', 1, 1, 'sragen', '2000-03-09', 1289, 2063, '2015-05-02', '0061', '0061', ''),
(103, 'MUHAMMAD DAVID FEBRIANSYAH JIBRAN', 1, 1, 'Jakarta', '2001-02-02', 1289, 2063, '2015-05-02', '0062', '0062', ''),
(104, 'PRAMUDYA CHANDRA UMBARAN', 1, 1, 'JAKARTA', '2000-07-07', 1289, 1103, '2015-05-02', '0063', '0063', ''),
(105, 'AHMAD BAGUS SATRIO', 1, 1, 'JAKARTA', '2000-07-14', 2063, 1174, '2015-05-02', '0064', '0064', ''),
(106, 'MUHAMMAD HAEDAR', 1, 1, 'BEKASI', '1999-04-02', 1254, 1289, '2015-05-02', '0065', '0065', ''),
(107, 'PAJAR BAHARI', 1, 1, 'JAKARTA', '1998-10-21', 1289, 1254, '2015-05-04', '0066', '0066', ''),
(108, 'EKANTO PRASETYO ADI', 1, 1, 'JAKARTA', '2000-05-04', 1289, 1254, '2015-05-04', '0067', '0067', ''),
(109, 'TEGUH PRAYOGA', 1, 1, 'KEBUMEN', '1999-06-05', 1289, 1254, '2015-05-04', '0068', '0068', ''),
(110, 'MUHAMMAD DZAKY FADILLAH YAHYA', 1, 1, 'JAKARTA', '2000-03-26', 2063, 1289, '2015-05-04', '0069', '0069', ''),
(111, 'AJI PAMUNGKAS', 1, 0, '', '0000-00-00', 0, 0, '2015-05-05', '0070', '0070', ''),
(112, 'GALIH MAULANA', 1, 1, 'BEKASI', '2000-06-09', 1289, 1254, '2015-05-05', '0071', '0071', ''),
(113, 'HILMI YAHYA', 1, 1, 'Garut', '2000-05-15', 1289, 1174, '2015-05-05', '0072', '0072', ''),
(114, 'AKMAL HAFIDH', 1, 0, '', '0000-00-00', 0, 0, '2015-05-05', '0073', '0073', ''),
(115, 'MUHAMMAD RAFLIANA', 1, 1, 'jakrta', '2000-05-26', 1289, 1103, '2015-05-06', '0074', '0074', ''),
(116, 'TIO LUTFI HAMBALI', 1, 1, 'BEKASI', '1999-10-30', 2063, 1254, '2015-05-06', '0075', '0075', ''),
(117, 'MUHAMMAD ANDI LALA', 1, 0, '', '0000-00-00', 0, 0, '2015-05-06', '0076', '0076', ''),
(118, 'DWI YULIANTO WIBOWO', 1, 1, 'Jakarta', '2000-03-27', 1254, 1103, '2015-05-07', '0078', '0078', ''),
(119, 'M. RIZKY', 1, 1, 'jakarta', '2000-06-16', 1289, 2063, '2015-05-07', '0002291391', '0077', ''),
(120, 'KUSNO HENDRAWAN S', 1, 1, 'JAKARTA', '1999-12-12', 2063, 1289, '2015-05-07', '0079', '0079', ''),
(121, 'EKO SAPTO PUTRA', 1, 1, 'jakarta', '1998-04-08', 1289, 2063, '2015-05-07', '0080', '0080', ''),
(122, 'WISNU SAPUTRA', 1, 1, 'JAKARTA', '1999-11-17', 1289, 1254, '2015-05-08', '0081', '0081', ''),
(123, 'M. NUR ZULFIANDA', 1, 1, 'JAKARTA', '2000-03-31', 1289, 1254, '2015-05-08', '0082', '0082', ''),
(124, 'INDRA PURNOMO', 1, 1, 'JAKARTA', '1999-12-05', 1289, 1254, '2015-05-08', '0083', '0083', ''),
(125, 'UZZI MUZHOFFAR', 1, 1, 'JAKARTA', '2000-03-11', 1254, 2063, '2015-05-08', '0084', '0084', ''),
(126, 'DAVIT SAN HAM', 1, 1, 'JAKARTA', '2000-06-12', 1103, 2063, '2015-05-08', '0085', '0085', ''),
(127, 'BAHRUL HAYAT', 1, 1, 'purwakarta', '2000-11-18', 2063, 1289, '2015-05-08', '0086', '0086', ''),
(128, 'ACHMAD AMRI', 1, 0, '', '0000-00-00', 0, 0, '2015-05-08', '0087', '0087', ''),
(129, 'FAJRUL FALAH', 1, 0, '', '0000-00-00', 0, 0, '2015-05-09', '0088', '0088', ''),
(130, 'ACHMAD FAUZI', 1, 1, 'JAKARTA', '2000-01-29', 1254, 1289, '2015-05-09', '0089', '0089', ''),
(131, 'ANNISA TULJANNAH', 2, 1, 'Jakarta', '1999-08-02', 2063, 1174, '2015-05-09', '0090', '0090', ''),
(132, 'DIKI MAULANA YUSUF', 1, 1, 'JAKARTA', '1999-07-23', 2063, 1103, '2015-05-09', '0091', '0091', ''),
(133, 'MUHAMAD DJIO NOVI YANTO', 1, 1, 'Jakarta', '1999-11-29', 1289, 1174, '2015-05-09', '0092', '0092', ''),
(134, 'MUHAMMAD ADI SYAHPUTRO', 1, 1, 'BOYOLALI', '1999-03-21', 1289, 1174, '2015-05-09', '0093', '0093', ''),
(135, 'DICKY AGUS SETIAWAN', 1, 1, 'KEBUMEN', '1999-08-13', 1289, 1174, '2015-05-09', '0094', '0094', ''),
(136, 'SURYA NANDA IBRAHIM', 1, 1, 'JAKARTA', '2000-06-24', 1289, 1254, '2015-05-09', '0095', '0095', ''),
(137, 'AGUNG PANGESTU', 1, 1, 'JAKARTA', '1999-06-24', 1103, 1289, '2015-05-09', '0096', '0096', ''),
(138, 'FAJAR SURYANA', 1, 1, 'jakarta', '2000-06-11', 1289, 1103, '2015-05-09', '0097', '0097', ''),
(139, 'RIZKI DWI HAMZAH', 1, 1, 'JAKARTA', '1999-11-03', 1289, 1254, '2015-05-09', '0098', '0098', ''),
(140, 'MUHAMMAD FAKHRIF', 1, 1, 'Jakarta', '2000-02-19', 1254, 1289, '2015-05-11', '0099', '0099', ''),
(141, 'ADITYAPERMANA', 1, 1, 'JAKARTA', '2000-08-08', 2063, 1103, '2015-05-11', '0100', '0100', ''),
(142, 'NUR ARIFFIN', 1, 1, 'BEKASI', '1999-11-13', 1254, 1103, '2015-05-11', '0101', '0101', ''),
(143, 'IQWANUL HAKIKI', 1, 1, 'jakarta ', '2000-08-21', 1254, 1103, '2015-05-11', '0102', '0102', ''),
(144, 'MAULANA BAGUS FEBRIYANTO', 1, 1, 'tegal', '2000-02-06', 1289, 1254, '2015-05-11', '0103', '0103', ''),
(145, 'ADITYA KUSUMA ROWI', 1, 1, 'JAKARTA', '1999-04-19', 1289, 1254, '2015-05-11', '0104', '0104', ''),
(147, 'ALDINUGROHO', 1, 0, '', '0000-00-00', 0, 0, '2015-05-11', '0105', '0105', ''),
(148, 'JEFRY PRASETYO', 1, 0, '', '0000-00-00', 0, 0, '2015-05-11', '0106', '0106', ''),
(149, 'MUHAMMAD ARMAN FIRDAUS', 1, 1, 'JAKARTA', '2000-04-05', 1254, 2063, '2015-05-11', '0107', '0107', ''),
(150, 'ROLIN YUSTRIA', 1, 1, 'JAKARTA', '2000-07-27', 1254, 1174, '2015-05-11', '0108', '0108', ''),
(151, 'NAUFAL MUHAMMAD T', 1, 1, 'KLATEN', '2000-04-22', 1289, 2063, '2015-05-11', '0109', '0109', ''),
(152, 'MUHAMMAD FATHUL', 1, 1, 'JAKARTA', '2000-03-25', 1289, 1254, '2015-05-11', '0110', '0110', ''),
(153, 'RENDI MAULANA', 1, 1, 'JAKARTA', '2000-02-20', 2063, 1289, '2015-05-11', '0111', '0111', ''),
(154, 'RIZKI ARDIANSYAH PUTRA', 1, 1, 'jakarta timur', '1999-10-13', 2063, 1289, '2015-05-11', '0112', '0112', ''),
(155, 'ARIF SETIAWAN', 1, 1, 'JAKARTA', '2000-03-07', 1289, 1254, '2015-05-11', '0113', '0113', ''),
(156, 'RIDWAN ARDIANSYAH', 1, 1, 'JAKARTA', '2000-08-07', 2063, 1254, '2015-05-11', '0114', '0114', ''),
(157, 'YULISTIYANA', 2, 1, 'JAKARTA', '1999-04-26', 1174, 2063, '2015-05-11', '0115', '0115', ''),
(158, 'YOSEF YONANDA', 1, 1, 'indramayu', '1999-11-27', 1254, 1289, '2015-05-11', '0116', '0116', ''),
(159, 'MUHAMMAD DWI CAHYO', 1, 1, 'JAKARTA', '2000-06-10', 1289, 1103, '2015-05-11', '0117', '0117', ''),
(160, 'AGUNG HENDRAWAN', 1, 1, 'magelang', '2000-03-13', 1254, 1174, '2015-05-11', '0118', '0118', ''),
(161, 'RIZKINUGROHO', 1, 1, 'JAKARTA', '1999-12-18', 1289, 1103, '2015-05-12', '0', '0119', ''),
(162, 'FAUZAN ALFIANSYAH', 1, 1, 'JAKARTA', '1999-11-07', 1254, 1289, '2015-05-12', '0120', '0120', ''),
(163, 'AHMAD JAIS', 1, 0, '', '0000-00-00', 0, 0, '2015-05-12', '0121', '0121', ''),
(164, 'HAROM', 1, 1, 'JAKARTA', '2000-03-12', 1289, 1103, '2015-05-12', '0122', '0122', ''),
(165, 'PUTRA TRI PRASTYO', 1, 1, 'BEKASI', '2000-07-16', 1103, 1174, '2015-05-12', '0123', '0123', ''),
(166, 'ABDUL AZIZ', 1, 1, 'JAKARTA', '1999-05-07', 1289, 1103, '2015-05-12', '0124', '0124', ''),
(168, 'MUHAMAD FACHRI SYAHPUTRA', 1, 0, '', '0000-00-00', 0, 0, '2015-05-12', '0126', '0126', ''),
(169, 'RIZQY DANENDRA', 1, 1, 'JAKARTA', '2001-02-08', 1254, 1174, '2015-05-12', '0011173783', '0127', ''),
(170, 'EGI ROHMAN', 1, 0, '', '0000-00-00', 0, 0, '2015-05-12', '0128', '0128', ''),
(171, 'tes', 0, 0, 'sdad', '0000-00-00', 0, 0, '0000-00-00', '', '09090', 'sdsadsad');

-- --------------------------------------------------------

--
-- Struktur dari tabel `multiupload`
--

CREATE TABLE IF NOT EXISTS `multiupload` (
`id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `size` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `dir` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `multiupload`
--

INSERT INTO `multiupload` (`id`, `nama`, `size`, `type`, `dir`) VALUES
(1, '2015-05-21 13.16.08.jpg', '293566', 'image/jpeg', 'upload/2015-05-21 13.16.08.jpg'),
(2, '2015-05-21 13.22.11.jpg', '326486', 'image/jpeg', 'upload/2015-05-21 13.22.11.jpg'),
(3, '11188473_690890801034110_552921107037786929_n.jpg', '19935', 'image/jpeg', 'upload/11188473_690890801034110_552921107037786929_n.jpg'),
(4, 'alldebrid30_3.png', '145640', 'image/png', 'upload/alldebrid30_3.png'),
(5, 'aska.jpg', '141976', 'image/jpeg', 'upload/aska.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `post`
--

CREATE TABLE IF NOT EXISTS `post` (
`id` int(11) NOT NULL,
  `image` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
`id_user` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `level_user` int(5) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nip` varchar(5) NOT NULL,
  `status` int(5) NOT NULL,
  `w_login` datetime NOT NULL,
  `w_daftar` datetime NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `pass`, `level_user`, `email`, `nip`, `status`, `w_login`, `w_daftar`, `photo`) VALUES
(6, 'andez', 'e10adc3949ba59abbe56e057f20f883e', 1, 'andeztea@gmail.com', '', 1, '2015-06-14 20:21:08', '2015-06-14 20:20:58', ''),
(7, 'andez', '827ccb0eea8a706c4c34a16891f84e7b', 1, 'andeztea@gmail.com', '', 1, '2015-07-09 18:04:58', '2015-06-15 16:51:42', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_jurusan`
--

CREATE TABLE IF NOT EXISTS `t_jurusan` (
`id_jur` int(5) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `jur_ket` varchar(10) NOT NULL,
  `kdjur` varchar(10) NOT NULL,
  `quota` varchar(5) NOT NULL,
  `kelas` varchar(5) NOT NULL,
  `bayar` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2064 ;

--
-- Dumping data untuk tabel `t_jurusan`
--

INSERT INTO `t_jurusan` (`id_jur`, `jurusan`, `jur_ket`, `kdjur`, `quota`, `kelas`, `bayar`) VALUES
(0, 'Kosong', '', '', '', '', ''),
(1103, 'TITL', '', '', '160', '4', '3400000'),
(1174, 'TAV', '', '', '120', '2', '3400000'),
(1254, 'TP', '', '', '160', '4', '3400000'),
(1289, 'TKR', '', '', '160', '4', '3400000'),
(2063, 'TKJ', '', '', '160', '4', '4045000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `evenement`
--
ALTER TABLE `evenement`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master`
--
ALTER TABLE `master`
 ADD PRIMARY KEY (`id_daftar`);

--
-- Indexes for table `multiupload`
--
ALTER TABLE `multiupload`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
 ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `t_jurusan`
--
ALTER TABLE `t_jurusan`
 ADD PRIMARY KEY (`id_jur`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `evenement`
--
ALTER TABLE `evenement`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `master`
--
ALTER TABLE `master`
MODIFY `id_daftar` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=172;
--
-- AUTO_INCREMENT for table `multiupload`
--
ALTER TABLE `multiupload`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `t_jurusan`
--
ALTER TABLE `t_jurusan`
MODIFY `id_jur` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2064;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
