-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2019 at 06:05 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sidapen`
--

-- --------------------------------------------------------

--
-- Table structure for table `sarana_kesehatan`
--

CREATE TABLE `sarana_kesehatan` (
  `id_kesehatan` int(10) NOT NULL,
  `puskesmas` int(20) NOT NULL,
  `posyandu` int(20) NOT NULL,
  `praktek_bidan` int(20) NOT NULL,
  `rt` varchar(5) NOT NULL,
  `rw` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sarana_kesehatan`
--

INSERT INTO `sarana_kesehatan` (`id_kesehatan`, `puskesmas`, `posyandu`, `praktek_bidan`, `rt`, `rw`) VALUES
(6, 0, 0, 0, '01', '05');

-- --------------------------------------------------------

--
-- Table structure for table `sarana_olahraga`
--

CREATE TABLE `sarana_olahraga` (
  `id_olahraga` int(5) NOT NULL,
  `lapangan_bola` int(20) NOT NULL,
  `lapangan_basket` int(20) NOT NULL,
  `lapangan_volly` int(20) NOT NULL,
  `lapangan_badminton` int(20) NOT NULL,
  `lapangan_futsal` int(20) NOT NULL,
  `rt` varchar(5) NOT NULL,
  `rw` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sarana_olahraga`
--

INSERT INTO `sarana_olahraga` (`id_olahraga`, `lapangan_bola`, `lapangan_basket`, `lapangan_volly`, `lapangan_badminton`, `lapangan_futsal`, `rt`, `rw`) VALUES
(3, 5, 3, 3, 5, 5, '01', '05'),
(4, 5, 5, 5, 1, 1, '05', '05'),
(11, 0, 1, 2, 3, 5, '06', '07'),
(59, 1, 2, 3, 4, 5, '3', '5'),
(58, 2, 2, 2, 2, 2, '02', '05'),
(57, 0, 0, 0, 0, 0, 'rt', 'rw');

-- --------------------------------------------------------

--
-- Table structure for table `sarana_pemerintah`
--

CREATE TABLE `sarana_pemerintah` (
  `id_pemerintah` int(5) NOT NULL,
  `kantor_lurah` int(20) NOT NULL,
  `balai_pertemuan` int(20) NOT NULL,
  `pos_rw` int(20) NOT NULL,
  `rt` varchar(5) NOT NULL,
  `rw` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sarana_pemerintah`
--

INSERT INTO `sarana_pemerintah` (`id_pemerintah`, `kantor_lurah`, `balai_pertemuan`, `pos_rw`, `rt`, `rw`) VALUES
(4, 1, 3, 9, '01', '05');

-- --------------------------------------------------------

--
-- Table structure for table `sarana_pendidikan`
--

CREATE TABLE `sarana_pendidikan` (
  `id_pendidikan` int(5) NOT NULL,
  `paud` int(20) NOT NULL,
  `sd_negeri` int(20) NOT NULL,
  `sd_swasta` int(20) NOT NULL,
  `madrasah_ibridaiyah` int(20) NOT NULL,
  `sltp_negeri` int(20) NOT NULL,
  `sltp_swasta` int(20) NOT NULL,
  `madrasah_tsanawiyah` int(20) NOT NULL,
  `slta_negeri` int(20) NOT NULL,
  `slta_swasta` int(20) NOT NULL,
  `madrasah_aliyah` int(20) NOT NULL,
  `pt_negeri` int(20) NOT NULL,
  `pt_swasta` int(20) NOT NULL,
  `pesantren` int(20) NOT NULL,
  `rt` varchar(5) NOT NULL,
  `rw` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sarana_pendidikan`
--

INSERT INTO `sarana_pendidikan` (`id_pendidikan`, `paud`, `sd_negeri`, `sd_swasta`, `madrasah_ibridaiyah`, `sltp_negeri`, `sltp_swasta`, `madrasah_tsanawiyah`, `slta_negeri`, `slta_swasta`, `madrasah_aliyah`, `pt_negeri`, `pt_swasta`, `pesantren`, `rt`, `rw`) VALUES
(2, 5, 2, 3, 2, 7, 8, 9, 3, 8, 4, 3, 2, 7, '01', '05');

-- --------------------------------------------------------

--
-- Table structure for table `sarana_perekonomian`
--

CREATE TABLE `sarana_perekonomian` (
  `id_perekonomian` int(5) NOT NULL,
  `pasar` int(20) NOT NULL,
  `wartel_warnet` int(20) NOT NULL,
  `warung_kelontong` int(20) NOT NULL,
  `toko_material` int(20) NOT NULL,
  `indomart` int(20) NOT NULL,
  `rumah_kost` int(20) NOT NULL,
  `rumah_makan` int(20) NOT NULL,
  `rt` varchar(5) NOT NULL,
  `rw` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sarana_perekonomian`
--

INSERT INTO `sarana_perekonomian` (`id_perekonomian`, `pasar`, `wartel_warnet`, `warung_kelontong`, `toko_material`, `indomart`, `rumah_kost`, `rumah_makan`, `rt`, `rw`) VALUES
(3, 2, 3, 4, 6, 8, 5, 3, '01', '05');

-- --------------------------------------------------------

--
-- Table structure for table `sarana_peribadatan`
--

CREATE TABLE `sarana_peribadatan` (
  `id_peribadatan` int(5) NOT NULL,
  `masjid` int(20) NOT NULL,
  `mushollah` int(20) NOT NULL,
  `gereja` int(20) NOT NULL,
  `vihara` int(20) NOT NULL,
  `pure` int(20) NOT NULL,
  `rt` varchar(5) NOT NULL,
  `rw` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sarana_peribadatan`
--

INSERT INTO `sarana_peribadatan` (`id_peribadatan`, `masjid`, `mushollah`, `gereja`, `vihara`, `pure`, `rt`, `rw`) VALUES
(4, 2, 3, 1, 6, 9, '01', '05');

-- --------------------------------------------------------

--
-- Table structure for table `sarana_sosial`
--

CREATE TABLE `sarana_sosial` (
  `id_sosial` int(5) NOT NULL,
  `pkk` int(20) NOT NULL,
  `karang_taruna` int(20) NOT NULL,
  `lsm` int(20) NOT NULL,
  `satgas_rt` int(20) NOT NULL,
  `pos_kamling` int(20) NOT NULL,
  `gerobak_sampah` int(20) NOT NULL,
  `rt` varchar(5) NOT NULL,
  `rw` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sarana_sosial`
--

INSERT INTO `sarana_sosial` (`id_sosial`, `pkk`, `karang_taruna`, `lsm`, `satgas_rt`, `pos_kamling`, `gerobak_sampah`, `rt`, `rw`) VALUES
(2, 7, 5, 4, 3, 4, 8, '01', '05'),
(3, 0, 0, 0, 0, 0, 0, '', ''),
(4, 0, 0, 0, 0, 0, 0, '', ''),
(5, 0, 0, 0, 0, 0, 0, '', ''),
(6, 0, 0, 0, 0, 0, 0, '', ''),
(7, 0, 0, 0, 0, 0, 0, 'No Re', 'Reken'),
(8, 0, 0, 0, 0, 0, 0, '', ''),
(9, 0, 0, 0, 0, 0, 0, '', ''),
(10, 0, 1, 2, 3, 5, 6, '7', '8'),
(11, 1, 12001, 0, 2, 0, 2147483647, '006-0', '4506.'),
(12, 0, 12002, 0, 2, 0, 2147483647, '', ''),
(13, 2, 12003, 0, 2, 0, 2147483647, '157-0', '4506.'),
(14, 3, 12009, 0, 14, 0, 2147483647, '900 0', ''),
(15, 4, 12014, 0, 3, 0, 2147483647, '132 0', ''),
(16, 5, 12017, 0, 1, 0, 2147483647, '900-0', ''),
(17, 6, 13045, 0, 29, 0, 2147483647, '123-0', '4506.'),
(18, 7, 13048, 0, 2, 0, 2147483647, '006-0', ''),
(19, 8, 13049, 0, 2, 0, 2147483647, '900-0', ''),
(20, 9, 13054, 0, 1, 0, 2147483647, '121-0', ''),
(21, 10, 13056, 0, 1, 0, 2147483647, '121-0', ''),
(22, 11, 13057, 0, 1, 0, 2147483647, '157-0', ''),
(23, 12, 13058, 0, 1, 0, 2147483647, '121-0', ''),
(24, 13, 13064, 0, 1, 0, 2147483647, '101-0', ''),
(25, 14, 14069, 0, 3, 0, 0, '900-0', ''),
(26, 15, 14072, 0, 17, 0, 857, '166-0', ''),
(27, 16, 14073, 0, 17, 0, 857, '127-0', ''),
(28, 17, 14076, 0, 17, 0, 857, '006-0', ''),
(29, 18, 14077, 0, 17, 0, 857, '900-0', ''),
(30, 19, 14079, 0, 17, 0, 857, '166-0', ''),
(31, 20, 14087, 0, 21, 0, 2147483647, '157-0', ''),
(32, 21, 14090, 0, 1, 0, 2147483647, '006-0', ''),
(33, 22, 14091, 0, 3, 0, 2147483647, '900-0', ''),
(34, 23, 15093, 0, 1, 0, 856, '900-0', ''),
(35, 24, 15094, 0, 1, 0, 856, '900-0', ''),
(36, 25, 15095, 0, 1, 0, 822, '167-0', ''),
(37, 26, 15096, 0, 1, 0, 858, '006-0', ''),
(38, 27, 15097, 0, 1, 0, 857, '166-0', ''),
(39, 28, 15098, 0, 1, 0, 896, '006-0', ''),
(40, 29, 15099, 0, 1, 0, 858, '166-0', ''),
(41, 30, 15100, 0, 1, 0, 857, '900-0', ''),
(42, 31, 15102, 0, 1, 0, 857, '006-0', ''),
(43, 32, 15103, 0, 1, 0, 856, '900-0', ''),
(44, 33, 15107, 0, 5, 0, 2147483647, '900-0', ''),
(45, 34, 15112, 0, 10, 0, 2147483647, '900-0', ''),
(46, 35, 15113, 0, 10, 0, 0, '117-0', ''),
(47, 36, 15115, 0, 10, 0, 2147483647, '118-0', ''),
(48, 37, 15116, 0, 11, 0, 2147483647, '157-0', ''),
(49, 38, 15117, 0, 0, 0, 0, '', ''),
(50, 39, 15121, 0, 7, 0, 2147483647, 'bukop', '450-6'),
(51, 40, 15122, 0, 7, 0, 0, 'bukop', '450-6'),
(52, 41, 15124, 0, 20, 0, 2147483647, 'bukop', '45060'),
(53, 42, 16127, 0, 1, 0, 2147483647, '006-0', '450-6'),
(54, 43, 16128, 0, 1, 0, 2147483647, 'bukop', '450-6'),
(55, 44, 16129, 0, 13, 0, 2147483647, '157-0', ''),
(56, 1, 2, 4, 1, 2, 4, '1', '5');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_foto`
--

CREATE TABLE `tbl_foto` (
  `id_foto` int(11) NOT NULL,
  `no_penduduk` varchar(100) NOT NULL,
  `foto_ktp` varchar(100) NOT NULL,
  `foto_akta` varchar(100) NOT NULL,
  `foto_kk` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori_pelayanan`
--

CREATE TABLE `tbl_kategori_pelayanan` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_m_agama`
--

CREATE TABLE `tbl_m_agama` (
  `id_agama` int(11) NOT NULL,
  `nama_agama` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_m_agama`
--

INSERT INTO `tbl_m_agama` (`id_agama`, `nama_agama`) VALUES
(1, 'ISLAM'),
(2, 'KRISTEN'),
(3, 'BUDDHA'),
(4, 'HINDU'),
(5, 'KONGHUCU');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_m_golongan_darah`
--

CREATE TABLE `tbl_m_golongan_darah` (
  `id_gol_darah` int(11) NOT NULL,
  `jenis_gol_darah` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_m_golongan_darah`
--

INSERT INTO `tbl_m_golongan_darah` (`id_gol_darah`, `jenis_gol_darah`) VALUES
(1, 'O'),
(2, 'A'),
(3, 'B'),
(4, 'AB');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_m_imunisasi`
--

CREATE TABLE `tbl_m_imunisasi` (
  `id_imunisasi` int(11) NOT NULL,
  `nm_imunisasi` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_m_imunisasi`
--

INSERT INTO `tbl_m_imunisasi` (`id_imunisasi`, `nm_imunisasi`) VALUES
(1, 'BCG'),
(2, 'HEPATITIS B'),
(3, 'POLIO'),
(4, 'DTP'),
(5, 'CAMPAK'),
(6, 'BELUM'),
(7, 'TIDAK');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_m_jenis_kelamin`
--

CREATE TABLE `tbl_m_jenis_kelamin` (
  `id_jenis_kelamin` int(11) NOT NULL,
  `jenis_kelamin` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_m_jenis_kelamin`
--

INSERT INTO `tbl_m_jenis_kelamin` (`id_jenis_kelamin`, `jenis_kelamin`) VALUES
(1, 'LK'),
(2, 'P');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_m_kontrasepsi`
--

CREATE TABLE `tbl_m_kontrasepsi` (
  `id_kontrasepsi` int(11) NOT NULL,
  `nm_kontrasepsi` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_m_kontrasepsi`
--

INSERT INTO `tbl_m_kontrasepsi` (`id_kontrasepsi`, `nm_kontrasepsi`) VALUES
(1, 'IUD'),
(2, 'MOW'),
(3, 'MOP'),
(4, 'KONDOM'),
(5, 'IMPLANT'),
(6, 'SUNTIKAN'),
(7, 'PIL'),
(8, 'BELUM'),
(9, 'TIDAK');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_m_pendidikan`
--

CREATE TABLE `tbl_m_pendidikan` (
  `id_nama_pendidikan` int(11) NOT NULL,
  `jenis_pendidikan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_m_pendidikan`
--

INSERT INTO `tbl_m_pendidikan` (`id_nama_pendidikan`, `jenis_pendidikan`) VALUES
(1, 'SD'),
(2, 'SMP'),
(3, 'SMA'),
(4, 'SMU'),
(5, 'STM'),
(6, 'SMK'),
(7, 'D3'),
(8, 'S1'),
(9, 'S2'),
(10, 'S3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_m_status_keluarga`
--

CREATE TABLE `tbl_m_status_keluarga` (
  `id_status` int(11) NOT NULL,
  `nama_status` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_m_status_keluarga`
--

INSERT INTO `tbl_m_status_keluarga` (`id_status`, `nama_status`) VALUES
(1, 'KK'),
(2, 'ISTRI'),
(3, 'ANAK'),
(4, 'LL');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_m_status_pernikahan`
--

CREATE TABLE `tbl_m_status_pernikahan` (
  `id_status_pernikahan` int(11) NOT NULL,
  `status_pernikahan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_m_status_pernikahan`
--

INSERT INTO `tbl_m_status_pernikahan` (`id_status_pernikahan`, `status_pernikahan`) VALUES
(1, 'BK'),
(2, 'K'),
(3, 'D/J/C');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_m_status_sosial`
--

CREATE TABLE `tbl_m_status_sosial` (
  `id_status_sosial` int(11) NOT NULL,
  `status_sosial` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_m_status_sosial`
--

INSERT INTO `tbl_m_status_sosial` (`id_status_sosial`, `status_sosial`) VALUES
(1, 'KURANG'),
(2, 'MAMPU'),
(3, 'SANGAT');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_m_user`
--

CREATE TABLE `tbl_m_user` (
  `user_id` int(11) NOT NULL,
  `user_name` text NOT NULL,
  `user_password` text CHARACTER SET macce COLLATE macce_bin NOT NULL,
  `user_role` int(11) NOT NULL,
  `user_nama` text NOT NULL,
  `Jabatan` text,
  `Alamat` text,
  `no_telpon` text,
  `rt` text NOT NULL,
  `rw` text NOT NULL,
  `tanggal_input` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_m_user`
--

INSERT INTO `tbl_m_user` (`user_id`, `user_name`, `user_password`, `user_role`, `user_nama`, `Jabatan`, `Alamat`, `no_telpon`, `rt`, `rw`, `tanggal_input`) VALUES
(5, 'admin', 'admin123', 3, 'Administrator', NULL, NULL, NULL, '', '', '0000-00-00'),
(12, 'lurah', '0102667', 2, 'LURAH', NULL, NULL, NULL, '', '', '0000-00-00'),
(13, 'dundey', '1234567', 1, 'DUNDEY', NULL, NULL, NULL, '01', '05', '2015-03-02'),
(14, 'indarto', 'cendrawasih', 1, 'INDARTO', NULL, NULL, NULL, '02', '05', '2015-03-02'),
(15, 'imam', 'rajawali', 1, 'IMAM', NULL, NULL, NULL, '03', '05', '2015-03-02'),
(16, 'sumadji', 'kucica', 1, 'SUMADJI', NULL, NULL, NULL, '04', '05', '2015-03-02'),
(17, 'bagyo', 'baygons', 1, 'BAGYO', NULL, NULL, NULL, '05', '05', '2015-03-02'),
(18, 'erlan', 'camar01', 4, 'ERLAN', NULL, NULL, NULL, '', '05', '2015-03-02'),
(19, 'Bokir', 'bokir123', 4, 'Bokir', NULL, NULL, NULL, '', '01', '2017-02-08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_m_warga_negara`
--

CREATE TABLE `tbl_m_warga_negara` (
  `id_warga_negara` int(11) NOT NULL,
  `warga_negara` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_m_warga_negara`
--

INSERT INTO `tbl_m_warga_negara` (`id_warga_negara`, `warga_negara`) VALUES
(1, 'WNI'),
(2, 'WNA');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelayanan`
--

CREATE TABLE `tbl_pelayanan` (
  `id` int(11) NOT NULL,
  `no_surat` varchar(30) NOT NULL,
  `rt` varchar(5) NOT NULL,
  `rw` varchar(5) NOT NULL,
  `keperluan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_t_keluarga`
--

CREATE TABLE `tbl_t_keluarga` (
  `id_kk` int(11) NOT NULL,
  `id_status_penduduk` int(11) NOT NULL DEFAULT '1',
  `kk_nama` text NOT NULL,
  `kki` text NOT NULL,
  `kk_provinsi` text NOT NULL,
  `kk_kab` text NOT NULL,
  `kk_kec` text NOT NULL,
  `kk_kel` text NOT NULL,
  `kk_rw` text NOT NULL,
  `kk_rt` text NOT NULL,
  `kk_jalan` longtext NOT NULL,
  `kk_komplek` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_t_keluarga`
--

INSERT INTO `tbl_t_keluarga` (`id_kk`, `id_status_penduduk`, `kk_nama`, `kki`, `kk_provinsi`, `kk_kab`, `kk_kec`, `kk_kel`, `kk_rw`, `kk_rt`, `kk_jalan`, `kk_komplek`) VALUES
(3, 1, 'H. SUNARYO', '05', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '03', 'JATAYU BLOK I NO.3', 'PONDOK KELAPA DUA'),
(19, 1, 'AGUS HARYANTO', '32 76 02 2310 090115', 'Jawa Barat', 'Depok', 'Cimanggis', 'PGS', '05', '01', 'Garuda', 'Pondok Kelapa Dua'),
(20, 1, 'MASYUDI ADIANTO', '03', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '03', 'JL JATAYU BLOK I NO.3', 'HANKAM, PONDOK KELAPA DUA'),
(21, 1, 'WIROSO WIYONO', '32 76 02 0710 070258', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PGS', '05', '01', 'GARUDA', 'PONDOK KELAPA DUA'),
(22, 1, 'KOEN TJAHAJONO', '3276022204090031', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '03', 'JL JATAYU I/4', 'PONDOK KELAPA DUA'),
(23, 1, 'PAQIT NURYAM TANJUNG', '32 76 02 0803 110006', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PGS', '05', '01', 'GARUDA A-2', '-'),
(24, 1, 'ALIMUDDIN PASSIMA', '3276022601100042', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PGS', '05', '01', 'GARUDA A-6', 'PONDOK KELAPA DUA'),
(25, 1, 'SUTANTO', '3276022610090328', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '03', 'JL JATAYU BLOK I NO.5', 'BTN HANKAM ,PONDOK KELAPA DUA'),
(26, 1, 'GUNARTO ', '3276022310090115', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PGS', '05', '01', 'GARUDA A-7', 'PONDOK KELAPA DUA'),
(27, 1, 'SRI S.SULAWATI', '32760208010070201', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '03', 'JL JATAYU I/7', 'BTN HANKAM ,PONDOK KELAPA DUA'),
(28, 1, 'SAUR HELENA TOBING', '3276022310090101', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PGS', '05', '01', 'GARUDA A-8', 'PONDOK KELAPA DUA'),
(29, 1, 'SRI SUPRIYATI', '3276020408090086', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG S', '05', '01', 'KEBAHAGIAAN A-10', 'PONDOK KELAPA DUA'),
(30, 1, 'BUDI DWISAKTI', '3174020501095070', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '03', 'JL JATAYU BLOK I NO.8', 'BTN,HANKAM PONDOK KELAPA DUA'),
(31, 1, 'SAPRINA NUSA PUTRA', '3276020710', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG S', '05', '01', 'KEBAHAGIAAN A-10', 'PONDOK KELAPA DUA'),
(32, 1, 'ASEP MUHARAM', '08', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '03', 'JL JATAYU BLOK I NO.9', 'BTN,HANKAM PONDOK KELAPA DUA'),
(33, 1, 'DUNDEY HANDIARTO', '3276020710070270', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG S', '05', '01', 'KEBAHAGIAAN A-10', 'PONDOK KELAPA DUA'),
(34, 1, 'MOCHAMAD ABBAS', '3276020810070209', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '03', 'JL JATAYU I/11', 'PONDOK KELAPA DUA'),
(35, 1, 'YENNY TECI WOWOR', '3276020710070259 ', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG S', '05', '01', 'KEBAHAGIAAN A-11', 'PONDOK KELAPA DUA'),
(36, 1, 'VERONICA ANDARI HARATHAWATI', '3276020710070287', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PSIR GUNUNG S ', '05', '01', 'KEBAHAGIAAN A-12', 'PONDOK KELAPA DUA'),
(37, 1, 'JOHN .C. LINTING', '10', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '03', 'JL RAJAWALI BLOK I/12', 'PONDOK KELAPA DUA'),
(38, 1, 'YOHANES FRIDA YULIFAR G. P', '3276021412090025', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG S', '05', '01', 'KEBAHAGIAAN A-12', 'PONDOK KELAPA DUA'),
(39, 1, 'MADAH PUTRA', '3276020810070193', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '03', 'JL RAJAWALI BLOK I/13', 'BTN,HANKAM PONDOK KELAPA DUA'),
(40, 1, 'NGATIRAN DJOKO', '013460110112005', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '03', 'JL RAJAWALI', 'BTN,HANKAM PONDOK KELAPA DUA'),
(41, 1, 'ANTONIUS CATUR NUGROHO', '3276020109100019', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG S', '05', '01', 'KEBAHAGIAAN A-12', 'PONDOK KELAPA DUA'),
(42, 1, 'WAHYU DIJANTO', '327602810070206', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '03', 'JL RAJAWALI', 'BTN,HANKAM PONDOK KELAPA DUA'),
(43, 1, 'RM. DANANG JOKO ISMOYO', '14', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '03', 'JL RAJAWALI BLOK I/19', 'BTN,HANKAM PONDOK KELAPA DUA'),
(44, 1, 'ARDEN ERLANGGA', '3276020202090010', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG S', '05', '01', 'KEBAHAGIAAN A-13', 'PONDOK KELAPA DUA'),
(46, 1, 'SUHATI SETYANINGSIH', '3276020710070268', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PGS', '05', '01', 'KEBAHAGIAAN A-14', 'PONDOK KELAPA DUA'),
(47, 1, 'ASRIC AGIN', '317404190109042', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '03', 'JL RAJAWALI BLOK J-1', 'PONDOK KELAPA DUA'),
(48, 1, 'IDA MURNI IDIASIH', '3276020710070279', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG S', '05', '01', 'KEBAHAGIAAN A-15', 'PONDOK KELAPA DUA'),
(49, 1, 'EDDY ZAHARI', '3276020810070222', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '03', 'JL RAJAWALI BLOK J-2', 'PONDOK KELAPA DUA'),
(50, 1, 'DEVY DAYAN', '3276022709110021', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PGS', '05', '01', 'KEBAHAGIAAN A-15', 'PONDOK KELAPA DUA'),
(51, 1, 'V.GATOT SUPARNADY', '3276020810070202', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '03', 'JL RAJAWALI BLOK J-4', 'PONDOK KELAPA DUA'),
(52, 1, 'MUAMMAD AZLI', '3276020710070269', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PGS', '05', '01', 'NUSANTARA A-18', 'PONDOK KELAPA DUA'),
(53, 1, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(54, 1, 'TRIYANTO', '3276020710070285', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG S', '05', '01', 'NUSANTARA A-19', '-'),
(55, 1, 'BAYU PRASETYO', '3276020810070226', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '03', 'JL RAJAWALI J-5', 'BTN, PONDOK KELAPA DUA'),
(56, 1, 'AYUB MUIN ', '3276020710070260', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PGS', '05', '01', 'GARUDA B-3', 'PONDOK KELAPA DUA'),
(57, 1, 'Ir.BAMBANG HARIYADI. MM', '3276020810070203', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '03', 'JL RAJAWALI J-6', 'PONDOK KELAPA DUA'),
(58, 1, 'P. N. SOENARSO', '3276020710070288', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG S', '05', '01', 'GARUDA B-5', 'PONDOK KELAPA DUA'),
(59, 1, 'DONNY CHRISDIANTO', '3276020110070187', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '03', 'JL RAJAWALI BLOK J-7', 'BTN,HANKAM PONDOK KELAPA DUA'),
(60, 1, 'MARCUS ANTHONIUS SEDIONO', '3276020710070282', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PGS', '05', '01', 'KEBAHAGIAAN B-7', 'PONDOK KELAPA DUA'),
(61, 1, 'SRI ANTONAH', '21', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '03', 'JL RAJAWALI BLOK J-8', 'BTN HANKAM ,PONDOK KELAPA DUA'),
(62, 1, 'GEORGE I. K. MOCHTAR', '3276020302120002', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PGS', '05', '01', 'KEBAHAGIAAN B-7', '-'),
(63, 1, 'RENDRA IRAWAN', '22', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '03', 'JL RAJAWALI J-8', 'BTN, PONDOK KELAPA DUA'),
(66, 1, 'INDRA IZARDI', '3276022202120019', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG S', '05', '01', 'KEBAHAGIAAN H-1', 'PONDOK KELAPA DUA'),
(68, 1, 'OKY NASTRIOMAN NURMANSYAH', '23', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '03', 'JL JATAYU BLOK I NO.8', 'BTN,HANKAM PONDOK KELAPA DUA'),
(69, 1, 'NENENG TATI', '3276020710079270', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '03', 'KEBAHAGIAAN H-1', 'PONDOK KELAPA DUA'),
(70, 1, 'INDRA JAYA SEMBIRING', '0101', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PAL SIGUNUNG', '05', '02', 'MERPATI NO. E 10', 'PONDOK KELAPA 2'),
(71, 1, 'ISHARDI BP', '3276023004120042', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PGS', '05', '02', 'GARUDA C 1', 'PONDOK KELAPA DUA'),
(72, 1, 'GEMBIRA PUTRA AGAM', '0102', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PGS', '05', '02', 'GARUDA C 1', 'PINDOK KELAPA DUA'),
(73, 1, 'MURJANI TRISNOWATI', '0201', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '02', 'MERAK E 13', 'BTN'),
(74, 1, 'R. SUMAR DJOKO', '3276021304450005', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '02', 'MERAK BLOK C NO 5', 'KELAPA DUA'),
(75, 1, 'SUGENG BUDIARTO', '3276020508090053', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '02', 'MERAK C 6', 'PONDOK KELAPA DUA'),
(76, 1, 'ROHANI VINCER HAREFA', '327602212090031', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '02', 'MERAK BLOK C. NO. 7', 'HANKAM'),
(77, 1, 'DAVID HADIYANTO', '3276021204110050', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '02', 'MERAK BLOK C NO. 7', 'HANKAM'),
(78, 1, 'BAMBANG HERIYANTO', '327602270208290', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '02', 'CENDRAWASIH BLOK C NO.12', 'KELAPA  DUA HANKAM'),
(79, 1, 'ABDUL CHOTIB', '3276022702080273', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '02', 'CENDRAWASIH BLOK D NO.7', 'HANKAM PONDOK KELAPA DUA'),
(80, 1, 'YUNAN SURYANA', '02003', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '02', 'CENDRAWASI BLOK C NO. 09', 'PONDOK KELAPA DUA'),
(81, 1, 'IRHAMNA ILHAM MUAZ', '3276022509120029', 'JAWA BARAT ', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '02', 'CENDRAWASIHBLOK D NO. 7', 'HANKAM PONDOK KELAPA DUA'),
(82, 1, 'INDRAYANTO', '32760227002080294', 'JAWA BARAT ', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '02', 'CENDRAWASI BLOK C NO. 10', 'BTN HANKAM PONDOK KELAPA DUA'),
(83, 1, 'SOEMARSONO RM.', '3276022702080292', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '02', 'CENDRAWASIH BLOK C NO. 11', 'PONDOK KELAPA DUA'),
(85, 1, 'TATANG IDRIS', '3276022702080252', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '02', 'MERPATI BLOK E 1', 'BTN PONDOK KELAPA DUA '),
(87, 1, 'EDI FERNANDI', '3276022702080289', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '02', 'CENDRAWASI NO. 13 BLOK C', 'PONDOK KELAPA DUA'),
(88, 1, 'TESTING 123', '102', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PGS', '05', '03', 'JL. GARUDA', 'PONDOK KELAPA DUA'),
(89, 1, 'TESTING 123', '00000', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PGS', '05', '03', 'JL. GARUDA', 'PONDOK KELAPA DUA'),
(90, 1, 'RUSMINI', '3276022702080257', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '02', 'CENDRAWSI BLOK E NO. 15', 'BTN PONDOK KELAPA DUA'),
(91, 1, 'JOHAN HENDRIK', '3276022702080256', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '02', 'CENDRAWASIH BLOK D NO. 1', 'PONDOK KELAPA DUA'),
(92, 1, 'SYARIFUDIN PODUNGGE', '3276022702080284', 'JAWABARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '02', 'CENDRAWASIH BLOK D NO. 3', 'PONDOK KELAPA DUA'),
(93, 1, 'RIAN PRAWIRA SUFANI', '3276020510100013', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN ', '05', '02', 'CENDRAWASIH BLOK D NO.3', 'PONDOK KELAPA DUA'),
(94, 1, 'B. BOEDHIYONO', '3276022707090091', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELTAN', '05', '02', 'MERPATI BLOK D NO. 18', 'PONDOK KELAPA DUA'),
(95, 1, 'RANGGA RAHMANA DWI', '0104', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '02', 'MERPATI BLOK D-14', 'HNKAM PONDOK KELAPA DUA'),
(96, 1, 'ANDAN BAYU WISNU AJI', '0101010101010101', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '02', 'MERPATI BLOK E-2', 'HANKAM'),
(97, 1, 'SRI ISDARDI YARSITO , SH', '3276022301130002', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '02', 'MERPATI BLOOK E-3', 'PONDOK KELAPA DUA'),
(98, 1, 'SOEDJARWOTO', '09090909', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '02', 'MERPATI BLOK E NO. 5 PONDOK KELAPA DUA', 'PONDOK KELAPA DUA'),
(99, 1, 'DWI UTOMO ENDRIASWORO', '3276021911090198', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '02', 'MERPATI BLOK E/8', 'PONDOK KELAPA DUA'),
(100, 1, 'SRI SARDIYANTI', '3276027110500002', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '03', 'MERPATI BLOK E NO.8', 'PONDOK KELAPA DUA'),
(101, 1, 'SUGENG BUDIJONO', '3276022702080243', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '02', 'MERPATI E-7', 'PONDOK KELAPA DUA'),
(102, 1, 'ERRY BUDI HARTANTO', '3276021910090003', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '02', 'MERPATI E-7', 'PONDOK KELAPA DUA'),
(103, 1, 'SLAMET IBRAHIM', '000001', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '02', 'MERAK C2', 'PONDOK KELAPA DUA'),
(104, 1, 'I MADE ARDITA', '3276022702080283', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '02', 'CENDRAWASIH D4', 'PONDOK KELAPA DUA'),
(105, 1, 'HARTO, ST', '3276022702080281', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '02', 'CENDRAWASIH BLOK D NO.4', 'PONDOK KELAPA DUA'),
(106, 1, 'B. CATUR HARRYANTO', '3276022702080277', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '02', 'CENDRAWASIH BLOK D/5', 'PONDOK KELAPA DUA'),
(107, 1, 'ROESBAGYO DWI SUTARTO', '000002', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '02', 'MERPATI D11', 'PONDOK KELAPA DUA'),
(108, 1, 'HARI AGUS PRASTOWO', '000003', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '02', 'MERPATI D II', 'PONDOK KELAPA DUA'),
(109, 1, 'MM SUDARINI UTAMI', '3276022702080265', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '02', 'MERPATI BLOK D 12', 'PONDOK KELAPA DUA'),
(110, 1, 'IIQ AZHAR NUR CAHYO', '3276020912090293', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '02', 'MERPATI D-13', 'PONDOK KELAPA DUA'),
(111, 1, 'SARONI', '3276021107120008', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '03', 'MERPATI BLOK D NO.14', 'PONDOK KELPA DUA'),
(112, 1, 'ADE RU\'YATUL MUTTAQIN', '000007', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '02', 'MERPATI BLOK D-14', 'PONDOK KELAPA DUA'),
(113, 1, 'WIDAGDO WIYONO', '3276023012130015', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '02', 'MERPATI NO. D15', 'PONDOK KELAPA DUA'),
(114, 1, 'SRI SARJANTI', '3276020608140023', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASAR GUNUNG SELATAN', '05', '02', 'MERPATI D16', 'PONDOK KELAPA DUA'),
(115, 1, 'MOH. ANSHARY ATJO', '3276022702080254', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '02', 'MERPATI D-17', 'PONDOK KELAPA DUA'),
(116, 1, 'ARIE HANGGA FITRIANSYAH', '3276022603120101', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '02', 'MERPATI D-17', 'PONDOK KELAPA DUA'),
(117, 1, 'I. DEWA MADE MARDIKA', '3276020710070281', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '01', 'KEBAHAGIAAN H-2', 'PONDOK KELAPA DUA'),
(118, 1, 'BAMBANG PRAYITNO', '3276020710070291', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '01', 'KEBAHAGIAAN H-3', 'PONDOK KELAPA DUA'),
(119, 1, 'ABDILLAH ZAINAL', '3276022310090094', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '01', 'KEBAHAGIAAN H-3', 'PONDOK KELAPA DUA'),
(120, 1, 'FEBRY NASTRIOMAN NURMANDA', '00000256', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '005', '003', 'RAJAWALI BLOK J NO 8 KELAPA DUA', 'BTN HANKAM PONDOK KELAPA DUA'),
(121, 1, 'KUSLAN BUDIMAN', '3276020710070273', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASAR GUNUNG SELATAN', '05', '01', 'KEBAHAGIAAN', 'PONDOK KELAPA DUA'),
(122, 1, 'H. IMAM ROSIDI', '3276022209070061', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '005', '003', 'RAJAWALI BLOK J NO 10', 'BTN HANKAM PONDOK KELAPA DUA'),
(123, 1, 'PRAYOGA TRESNA CITRAYADI', '3276020712090452', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '01', 'KEBAHAGIAAN', 'PONDOK KELAPA DUA'),
(124, 1, 'HIDAYAT', '317505051092322', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '005', '003', 'RAJAWALI BLOK J NO 11', 'BTN PONDOK KELAPA DUA'),
(125, 1, 'DARWANTO', '3276020710070276', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '01', 'KEBAHAGIAAN', 'PONDOK KELAPA DUA'),
(126, 1, 'NURHAYATI', '3276020710070264', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '01', 'GARUDA H-8', 'PONDOK KELAPA DUA'),
(127, 1, 'APRIYADI FAHRI AHYANI', '3276020710070265', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '01', 'GARUDA H-8', 'PONDOK KELAPA DUA'),
(128, 1, 'H. ABDUL RACHMAN', '32760661011100022', 'JAWA BARAT', 'DEPOK', 'CIMANGGIS', 'PASIR GUNUNG SELATAN', '05', '03', 'RAJAWALI ', 'PONDOK KELAPA DUA');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_t_keluarga_get_modal`
--

CREATE TABLE `tbl_t_keluarga_get_modal` (
  `id_kgm` int(11) NOT NULL,
  `id_kk` int(11) NOT NULL,
  `dapat_modal` text NOT NULL,
  `ikut_uppks` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_t_keluarga_get_modal`
--

INSERT INTO `tbl_t_keluarga_get_modal` (`id_kgm`, `id_kk`, `dapat_modal`, `ikut_uppks`) VALUES
(1, 1, 'TIDAK', 'TIDAK'),
(2, 2, 'TIDAK', 'TIDAK'),
(3, 0, 'TIDAK', 'TIDAK'),
(4, 3, 'TIDAK', 'TIDAK'),
(11, 0, '', ''),
(14, 0, '', ''),
(16, 18, '', ''),
(17, 19, 'TIDAK', 'TIDAK'),
(18, 20, 'TIDAK', 'TIDAK'),
(19, 21, 'TIDAK', 'TIDAK'),
(20, 22, 'TIDAK', 'TIDAK'),
(21, 23, '', ''),
(22, 24, 'TIDAK', 'TIDAK'),
(23, 25, 'TIDAK', 'TIDAK'),
(24, 26, 'TIDAK', 'TIDAK'),
(25, 27, 'TIDAK', 'TIDAK'),
(26, 28, 'TIDAK', 'TIDAK'),
(27, 29, 'TIDAK', 'TIDAK'),
(28, 30, 'TIDAK', 'TIDAK'),
(29, 31, 'TIDAK', 'TIDAK'),
(30, 32, 'TIDAK', 'TIDAK'),
(31, 33, 'TIDAK', 'TIDAK'),
(32, 34, 'TIDAK', 'TIDAK'),
(33, 35, 'TIDAK', 'TIDAK'),
(34, 36, 'TIDAK', 'TIDAK'),
(35, 37, 'TIDAK', 'TIDAK'),
(36, 38, 'TIDAK', 'TIDAK'),
(37, 39, 'TIDAK', 'TIDAK'),
(38, 40, 'TIDAK', 'TIDAK'),
(39, 41, 'TIDAK', 'TIDAK'),
(40, 42, 'TIDAK', 'TIDAK'),
(41, 43, 'TIDAK', 'TIDAK'),
(42, 44, 'TIDAK', 'TIDAK'),
(44, 46, 'TIDAK', 'TIDAK'),
(45, 47, 'TIDAK', 'TIDAK'),
(46, 48, 'TIDAK', 'TIDAK'),
(47, 49, 'TIDAK', 'TIDAK'),
(48, 50, 'TIDAK', 'TIDAK'),
(49, 51, 'TIDAK', 'TIDAK'),
(50, 52, 'TIDAK', 'TIDAK'),
(51, 53, '0', '0'),
(52, 54, 'TIDAK', 'TIDAK'),
(53, 55, 'TIDAK', 'TIDAK'),
(54, 56, 'TIDAK', 'TIDAK'),
(55, 57, 'TIDAK', 'TIDAK'),
(56, 58, 'TIDAK', 'TIDAK'),
(57, 59, '-', '-'),
(58, 60, 'TIDAK', 'TIDAK'),
(59, 61, 'TIDAK', 'TIDAK'),
(60, 62, 'TIDAK', 'TIDAK'),
(61, 0, 'TIDAK', 'TIDAK'),
(62, 63, 'TIDAK', 'TIDAK'),
(63, 0, 'TIDAK', 'TIDAK'),
(64, 0, 'TIDAK', 'TIDAK'),
(67, 66, 'TIDAK', 'TIDAK'),
(69, 0, 'TIDAK', 'TIDAK'),
(70, 68, 'TIDAK', 'TIDAK'),
(71, 69, 'TIDAK', 'TIDAK'),
(72, 70, 'TIDAK', ''),
(73, 71, 'TIDAK', 'TIDAK'),
(74, 72, 'TIDAK', 'TIDAK'),
(75, 73, 'TIDAK', 'TIDAK'),
(76, 74, 'TIDAK', 'TIDAK'),
(77, 75, 'TIDAK', 'TIDAK'),
(78, 76, 'TIDAK', '-'),
(79, 77, 'TIDAK', 'TIDAK'),
(80, 78, 'TIDAK', 'TIDAK'),
(81, 79, 'TIDAK', 'TIDAK'),
(82, 80, '-', '-'),
(83, 81, 'TIDAK', 'TIDAK'),
(84, 82, 'TIDAK', 'TIDAK'),
(85, 83, 'TIDAK', 'TIDAK'),
(86, 0, 'TIDAK', 'TIDAK'),
(88, 85, 'TIDAK', 'TIDAK'),
(89, 86, '', ''),
(90, 87, 'TIDAK', 'TIDAK'),
(91, 88, '', ''),
(92, 89, '', ''),
(93, 90, 'TIDAK', 'TIDAK'),
(94, 91, 'TIDAK', 'TIDAK'),
(95, 92, 'TIDAK', 'TIDAK'),
(96, 93, 'TIDAK', 'TIDAK'),
(97, 94, 'TIDAK', 'TIDAK'),
(98, 95, 'TIDAK', 'TIDAK'),
(99, 96, 'TIDAK', 'TIDAK'),
(100, 97, 'TIDAK', 'TIDAK'),
(101, 98, 'TIDAK', 'TIDAK'),
(102, 0, '0', '0'),
(103, 99, 'TIDAK', 'TIDAK'),
(104, 100, 'TIDAK', 'TIDAK'),
(105, 101, 'TIDAK', 'TIDAK'),
(106, 102, 'TIDAK', 'TIDAK'),
(107, 103, 'TIDAK', 'TIDAK'),
(108, 104, 'TIDAK', 'TIDAK'),
(109, 105, 'TIDAK', 'TIDAK'),
(110, 106, 'TIDAK', 'TIDAK'),
(111, 107, 'TIDAK', 'TIDAK'),
(112, 108, 'TIDAK', 'TIDAK'),
(113, 109, 'TIDAK', 'TIDAK'),
(114, 110, 'TIDAK', 'TIDAK'),
(115, 111, 'TIDAK', 'TIDAK'),
(116, 112, 'TIDAK', 'TIDAK'),
(117, 113, 'TIDAK', 'TIDAK'),
(118, 114, 'TIDAK', 'TIDAK'),
(119, 115, 'TIDAK', 'TIDAK'),
(120, 116, 'TIDAK', 'TIDAK'),
(121, 117, 'TIDAK', 'TIDAK'),
(122, 0, '0', '0'),
(123, 0, '0', '0'),
(124, 0, 'TIDAK', 'TIDAK'),
(125, 118, 'TIDAK', 'TIDAK'),
(126, 119, 'TIDAK', 'TIDAK'),
(127, 0, 'TIDAK', 'TIDAK'),
(128, 120, 'TIDAK', 'TIDAK'),
(129, 121, 'TIDAK', 'TIDAK'),
(130, 122, 'TIDAK', 'TIDAK'),
(131, 123, 'TIDAK', 'TIDAK'),
(132, 124, 'TIDAK', 'TIDAK'),
(133, 125, 'TIDAK', 'TIDAK'),
(134, 126, 'TIDAK', 'TIDAK'),
(135, 127, 'TIDAK', 'TIDAK'),
(136, 128, 'TIDAK', 'TIDAK'),
(137, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_t_keluarga_meninggal`
--

CREATE TABLE `tbl_t_keluarga_meninggal` (
  `id_km` int(11) NOT NULL,
  `id_kk` int(11) NOT NULL,
  `ada_meninggal` text NOT NULL,
  `umur_saat_meninggal` text NOT NULL,
  `jenis_kelamin` text NOT NULL,
  `ibu_meninggal` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_t_keluarga_meninggal`
--

INSERT INTO `tbl_t_keluarga_meninggal` (`id_km`, `id_kk`, `ada_meninggal`, `umur_saat_meninggal`, `jenis_kelamin`, `ibu_meninggal`) VALUES
(1, 1, '', '', '-', ''),
(2, 2, '', '', '-', ''),
(3, 0, 'TIDAK', '', '-', 'TIDAK'),
(4, 3, 'TIDAK', '', '-', 'TIDAK'),
(11, 0, '', '', '-', ''),
(14, 0, '', '', '-', ''),
(16, 18, '', '', '-', ''),
(17, 19, 'TIDAK', '', '-', ''),
(18, 20, 'TIDAK', '', '-', ''),
(19, 21, 'TIDAK', '', '-', ''),
(20, 22, 'TIDAK', '', '-', 'TIDAK'),
(21, 23, '', '', '-', ''),
(22, 24, 'TIDAK', '', '-', ''),
(23, 25, 'TIDAK', '', '-', 'TIDAK'),
(24, 26, 'TIDAK', '', '-', ''),
(25, 27, 'TIDAK', '', '-', 'TIDAK'),
(26, 28, 'TIDAK', '', '-', 'TIDAK'),
(27, 29, 'TIDAK', '', '-', 'TIDAK'),
(28, 30, 'TIDAK', '', '-', 'TIDAK'),
(29, 31, 'TIDAK', '', '-', 'TIDAK'),
(30, 32, 'TIDAK', '', '-', 'TIDAK'),
(31, 33, 'TIDAK', '', '-', 'TIDAK'),
(32, 34, 'TIDAK', '', '-', 'TIDAK'),
(33, 35, 'TIDAK', '', '-', 'TIDAK'),
(34, 36, 'TIDAK', '', '-', 'TIDAK'),
(35, 37, 'TIDAK', '', '-', 'TIDAK'),
(36, 38, 'TIDAK', '', '-', 'TIDAK'),
(37, 39, 'TIDAK', '', '-', 'TIDAK'),
(38, 40, 'TIDAK', '', '-', 'TIDAK'),
(39, 41, 'TIDAK', '', '-', 'TIDAK'),
(40, 42, 'TIDAK', '', '-', 'TIDAK'),
(41, 43, 'TIDAK', '', '-', 'TIDAK'),
(42, 44, 'TIDAK', '', '-', 'TIDAK'),
(44, 46, 'TIDAK', '', '-', 'TIDAK'),
(45, 47, 'TIDAK', '', '-', 'TIDAK'),
(46, 48, 'TIDAK', '', '-', 'TIDAK'),
(47, 49, 'TIDAK', '', '-', 'TIDAK'),
(48, 50, 'TIDAK', '', '-', 'TIDAK'),
(49, 51, 'YA', '53 TAHUN 2 BULAN', 'P', 'TIDAK'),
(50, 52, 'TIDAK', '', '-', 'TIDAK'),
(51, 53, '0', '0', '0', '0'),
(52, 54, 'TIDAK', '', '-', 'TIDAK'),
(53, 55, 'TIDAK', '', '-', 'TIDAK'),
(54, 56, 'TIDAK', '', '-', 'TIDAK'),
(55, 57, 'TIDAK', '', '-', 'TIDAK'),
(56, 58, 'TIDAK', '', '-', 'TIDAK'),
(57, 59, 'TIDAK', '', '-', 'TIDAK'),
(58, 60, 'TIDAK', '', '-', 'TIDAK'),
(59, 61, 'TIDAK', '', '-', 'TIDAK'),
(60, 62, 'TIDAK', '', '-', 'TIDAK'),
(61, 0, 'TIDAK', '', '-', 'TIDAK'),
(62, 63, 'TIDAK', '', '-', 'TIDAK'),
(63, 0, 'TIDAK', '', '-', 'TIDAK'),
(64, 0, 'TIDAK', '', '-', 'TIDAK'),
(67, 66, 'TIDAK', '', '-', 'TIDAK'),
(69, 0, 'TIDAK', '', '-', 'TIDAK'),
(70, 68, 'TIDAK', '', '-', 'TIDAK'),
(71, 69, 'TIDAK', '', '-', 'TIDAK'),
(72, 70, 'TIDAK', '', '-', 'TIDAK'),
(73, 71, 'TIDAK', '', '-', 'TIDAK'),
(74, 72, 'TIDAK', '', '-', 'TIDAK'),
(75, 73, 'TIDAK', '', '-', 'TIDAK'),
(76, 74, 'TIDAK', '', '-', 'TIDAK'),
(77, 75, 'TIDAK', '', '-', 'TIDAK'),
(78, 76, 'TIDAK', '', '-', 'TIDAK'),
(79, 77, 'TIDAK', '', '-', 'TIDAK'),
(80, 78, 'TIDAK', '', '-', 'TIDAK'),
(81, 79, 'TIDAK', '', '-', 'TIDAK'),
(82, 80, 'TIDAK', '', '-', 'TIDAK'),
(83, 81, 'TIDAK', '', '-', 'TIDAK'),
(84, 82, 'TIDAK', '', '-', 'TIDAK'),
(85, 83, 'TIDAK', '', '-', 'TIDAK'),
(86, 0, 'TIDAK', '', '-', 'TIDAK'),
(88, 85, 'TIDAK', '', '-', 'TIDAK'),
(89, 86, '', '', '-', ''),
(90, 87, 'TIDAK', '', '-', 'TIDAK'),
(91, 88, '', '', '-', ''),
(92, 89, '', '', '-', ''),
(93, 90, 'TIDAK', 'tidak', '-', 'TIDAK'),
(94, 91, 'TIDAK', '', '-', 'TIDAK'),
(95, 92, 'TIDAK', '', '-', 'TIDAK'),
(96, 93, 'TIDAK', '', '-', 'TIDAK'),
(97, 94, 'TIDAK', '', '-', 'TIDAK'),
(98, 95, 'TIDAK', '', '-', 'TIDAK'),
(99, 96, 'TIDAK', '', '-', 'TIDAK'),
(100, 97, 'TIDAK', '', '-', 'TIDAK'),
(101, 98, 'TIDAK', '', '-', 'TIDAK'),
(102, 0, '0', '0', '0', '0'),
(103, 99, 'TIDAK', '', '-', 'TIDAK'),
(104, 100, 'TIDAK', '', '-', 'TIDAK'),
(105, 101, 'TIDAK', '', '-', 'TIDAK'),
(106, 102, 'TIDAK', '', '-', 'TIDAK'),
(107, 103, 'TIDAK', '', '-', 'TIDAK'),
(108, 104, 'TIDAK', '', '-', 'TIDAK'),
(109, 105, 'TIDAK', '', '-', 'TIDAK'),
(110, 106, 'TIDAK', '', '-', 'TIDAK'),
(111, 107, 'TIDAK', '', '-', 'TIDAK'),
(112, 108, 'TIDAK', '', '-', 'TIDAK'),
(113, 109, 'YA', '66 TAHUN 10 BULAN', 'LK', 'TIDAK'),
(114, 110, 'TIDAK', '', '-', 'TIDAK'),
(115, 111, 'TIDAK', '', '-', 'TIDAK'),
(116, 112, 'TIDAK', '', '-', 'TIDAK'),
(117, 113, 'TIDAK', '', '-', 'TIDAK'),
(118, 114, 'YA', '89 TAHUN 07 BULAN', 'PR', ''),
(119, 115, 'TIDAK', '', '-', 'TIDAK'),
(120, 116, 'TIDAK', '', '-', 'TIDAK'),
(121, 117, 'TIDAK', '', '-', 'TIDAK'),
(122, 0, '0', '0', '0', '0'),
(123, 0, '0', '0', '0', '0'),
(124, 0, '', '', '-', ''),
(125, 118, 'TIDAK', '', '-', 'TIDAK'),
(126, 119, 'TIDAK', '', '-', 'TIDAK'),
(127, 0, '', '', '-', ''),
(128, 120, '', '', '-', ''),
(129, 121, 'TIDAK', '', '-', 'TIDAK'),
(130, 122, '', '', '-', ''),
(131, 123, 'TIDAK', '', '-', 'TIDAK'),
(132, 124, 'TIDAK', '', '-', 'TIDAK'),
(133, 125, 'TIDAK', '', '-', 'TIDAK'),
(134, 126, 'TIDAK', '', '-', 'TIDAK'),
(135, 127, 'TIDAK', '', '-', 'TIDAK'),
(136, 128, 'TIDAK', '', '-', 'TIDAK'),
(137, 0, '', '', '-', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_t_keluarga_sejahtera`
--

CREATE TABLE `tbl_t_keluarga_sejahtera` (
  `id_ks` int(11) NOT NULL,
  `id_kk` int(11) NOT NULL,
  `status_tahapan` text NOT NULL,
  `alasan` text NOT NULL,
  `fasilitas_kakus` text NOT NULL,
  `fasilitas_listrik` text NOT NULL,
  `fasilitas_airminum` text NOT NULL,
  `fasilitas_memasak` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_t_keluarga_sejahtera`
--

INSERT INTO `tbl_t_keluarga_sejahtera` (`id_ks`, `id_kk`, `status_tahapan`, `alasan`, `fasilitas_kakus`, `fasilitas_listrik`, `fasilitas_airminum`, `fasilitas_memasak`) VALUES
(1, 1, '', '-', 'YA', 'YA', 'YA', 'YA'),
(2, 2, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(3, 0, 'KS II', '-', 'YA', 'YA', 'YA', 'YA'),
(4, 3, 'KS II', '-', 'YA', 'YA', 'YA', 'YA'),
(11, 0, '', '-', '', '', '', ''),
(14, 0, '', '-', '', '', '', ''),
(16, 18, '', '-', '', '', '', ''),
(17, 19, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(18, 20, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(19, 21, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(20, 22, 'KS III+', '-', 'YA', 'YA', 'YA', 'YA'),
(21, 23, '', '-', 'YA', 'YA', 'YA', 'YA'),
(22, 24, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(23, 25, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(24, 26, 'KS III+', '-', 'YA', 'YA', 'YA', 'YA'),
(25, 27, 'KS III+', '-', 'YA', 'YA', 'YA', 'YA'),
(26, 28, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(27, 29, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(28, 30, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(29, 31, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(30, 32, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(31, 33, 'KS III+', '-', 'YA', 'YA', 'YA', 'YA'),
(32, 34, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(33, 35, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(34, 36, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(35, 37, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(36, 38, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(37, 39, 'KS III+', '-', 'YA', 'YA', 'YA', 'YA'),
(38, 40, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(39, 41, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(40, 42, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(41, 43, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(42, 44, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(44, 46, 'KS III+', '-', 'YA', 'YA', 'YA', 'YA'),
(45, 47, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(46, 48, 'KS III+', '-', 'YA', 'YA', 'YA', 'YA'),
(47, 49, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(48, 50, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(49, 51, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(50, 52, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(51, 53, '0', '0', '0', '0', '0', '0'),
(52, 54, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(53, 55, 'KS III+', '-', 'YA', 'YA', 'YA', 'YA'),
(54, 56, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(55, 57, 'KS III+', '-', 'YA', 'YA', 'YA', 'YA'),
(56, 58, 'KS III+', '-', 'YA', 'YA', 'YA', 'YA'),
(57, 59, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(58, 60, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(59, 61, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(60, 62, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(61, 0, 'KS III+', '-', 'YA', 'YA', 'YA', 'YA'),
(62, 63, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(63, 0, 'KS III+', '-', 'YA', 'YA', 'YA', 'YA'),
(64, 0, 'KS III+', '-', 'YA', 'YA', 'YA', 'YA'),
(67, 66, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(69, 0, 'KS III+', '-', 'YA', 'YA', 'YA', 'YA'),
(70, 68, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(71, 69, 'KS III+', '-', 'YA', 'YA', 'YA', 'YA'),
(72, 70, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(73, 71, 'KS III+', '-', 'YA', 'YA', 'YA', 'YA'),
(74, 72, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(75, 73, '-', '-', 'YA', 'YA', 'YA', 'YA'),
(76, 74, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(77, 75, 'KS III+', '-', 'YA', 'YA', 'YA', 'YA'),
(78, 76, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(79, 77, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(80, 78, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(81, 79, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(82, 80, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(83, 81, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(84, 82, 'KS III+', '-', 'YA', 'YA', 'YA', 'YA'),
(85, 83, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(86, 0, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(88, 85, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(89, 86, '', '-', '', '', '', ''),
(90, 87, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(91, 88, '', '-', '', '', '', ''),
(92, 89, '', '-', '', '', '', ''),
(93, 90, '-', '-', 'YA', 'YA', 'YA', 'YA'),
(94, 91, '', '-', 'YA', 'YA', 'YA', 'YA'),
(95, 92, '', '-', 'YA', 'YA', 'YA', 'YA'),
(96, 93, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(97, 94, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(98, 95, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(99, 96, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(100, 97, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(101, 98, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(102, 0, '0', '0', '0', '0', '0', '0'),
(103, 99, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(104, 100, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(105, 101, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(106, 102, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(107, 103, 'KS III+', '-', 'YA', 'YA', 'YA', 'YA'),
(108, 104, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(109, 105, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(110, 106, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(111, 107, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(112, 108, 'KS III+', '-', 'YA', 'YA', 'YA', 'YA'),
(113, 109, 'KS III+', '-', 'YA', 'YA', 'YA', 'YA'),
(114, 110, 'KS III+', '-', 'YA', 'YA', 'YA', 'YA'),
(115, 111, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(116, 112, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(117, 113, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(118, 114, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(119, 115, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(120, 116, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(121, 117, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(122, 0, '0', '0', '0', '0', '0', '0'),
(123, 0, '0', '0', '0', '0', '0', '0'),
(124, 0, '', '-', 'YA', 'YA', 'YA', 'YA'),
(125, 118, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(126, 119, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(127, 0, '', '-', 'YA', 'YA', 'YA', 'YA'),
(128, 120, '', '-', 'YA', 'YA', 'YA', 'YA'),
(129, 121, 'KS III', '-', '', '', '', ''),
(130, 122, '', '-', 'YA', 'YA', 'YA', 'YA'),
(131, 123, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(132, 124, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(133, 125, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(134, 126, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(135, 127, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(136, 128, 'KS III', '-', 'YA', 'YA', 'YA', 'YA'),
(137, 0, '', '-', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_t_keluarga_status_dan_kb`
--

CREATE TABLE `tbl_t_keluarga_status_dan_kb` (
  `id_ksb` int(11) NOT NULL,
  `id_kk` int(11) NOT NULL,
  `jamkesnas` text NOT NULL,
  `metode_kb` text NOT NULL,
  `sebab_non_kb` text NOT NULL,
  `kapan_kb` date NOT NULL,
  `tempat_kb` text NOT NULL,
  `ikut_posyandu` text NOT NULL,
  `ikut_bkb` text NOT NULL,
  `remaja_bkr` text NOT NULL,
  `remaja_pik` text NOT NULL,
  `lansia_bkl` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_t_keluarga_status_dan_kb`
--

INSERT INTO `tbl_t_keluarga_status_dan_kb` (`id_ksb`, `id_kk`, `jamkesnas`, `metode_kb`, `sebab_non_kb`, `kapan_kb`, `tempat_kb`, `ikut_posyandu`, `ikut_bkb`, `remaja_bkr`, `remaja_pik`, `lansia_bkl`) VALUES
(1, 1, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(2, 2, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(3, 0, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(4, 3, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(11, 0, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(14, 0, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(16, 18, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(17, 19, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(18, 20, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(19, 21, '', '', 'HAMIL', '0000-00-00', '', '-', '-', 'TIDAK', 'TIDAK', 'TIDAK'),
(20, 22, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(21, 23, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(22, 24, '', '', '-', '0000-00-00', '', '-', '-', '-', 'TIDAK', 'TIDAK'),
(23, 25, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(24, 26, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(25, 27, 'NON PBI', '', '-', '0000-00-00', '', 'YA', '-', 'TIDAK', 'TIDAK', 'TIDAK'),
(26, 28, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(27, 29, '', '', '-', '0000-00-00', '', '-', '-', '-', 'TIDAK', 'YA'),
(28, 30, '', 'KONDOM', '-', '0000-00-00', 'SWASTA', 'TIDAK', 'TIDAK', 'TIDAK', 'TIDAK', 'TIDAK'),
(29, 31, '', '', '-', '0000-00-00', '', '-', '-', 'TIDAK', 'TIDAK', 'YA'),
(30, 32, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(31, 33, '', '', '-', '0000-00-00', '', 'YA', '-', 'YA', 'TIDAK', 'YA'),
(32, 34, '', '', '-', '0000-00-00', '', '-', '-', 'TIDAK', 'TIDAK', 'TIDAK'),
(33, 35, '', '', '-', '0000-00-00', '', '-', '-', '-', 'TIDAK', 'TIDAK'),
(34, 36, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', 'TIDAK'),
(35, 37, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(36, 38, '', '', '-', '0000-00-00', '', '-', '-', '-', 'TIDAK', '-'),
(37, 39, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(38, 40, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(39, 41, '', 'IUD', '-', '0000-00-00', 'SWASTA', 'YA', '-', '-', '-', 'TIDAK'),
(40, 42, '', 'KONDOM', '-', '0000-00-00', '', 'YA', 'TIDAK', 'TIDAK', 'TIDAK', 'TIDAK'),
(41, 43, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(42, 44, '', 'IUD', '-', '0000-00-00', 'SWASTA', 'TIDAK', '-', '-', '-', 'TIDAK'),
(44, 46, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', 'YA'),
(45, 47, '', '', '-', '0000-00-00', '', 'TIDAK', 'TIDAK', 'TIDAK', 'TIDAK', 'YA'),
(46, 48, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', 'TIDAK'),
(47, 49, '', '', '-', '0000-00-00', '', 'TIDAK', '-', '-', 'YA', 'TIDAK'),
(48, 50, '', '', '-', '0000-00-00', '', '-', '-', 'TIDAK', 'TIDAK', 'TIDAK'),
(49, 51, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(50, 52, '', '', '-', '0000-00-00', '', '-', '-', '-', 'TIDAK', 'TIDAK'),
(51, 53, '0', '0', '0', '0000-00-00', '0', '0', '0', '0', '0', '0'),
(52, 54, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', 'TIDAK'),
(53, 55, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(54, 56, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', 'TIDAK'),
(55, 57, '', '', '-', '0000-00-00', '', '-', '-', 'TIDAK', 'TIDAK', '-'),
(56, 58, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', 'TIDAK'),
(57, 59, '', '', '-', '0000-00-00', '', 'TIDAK', '-', '-', '-', 'TIDAK'),
(58, 60, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(59, 61, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', 'YA'),
(60, 62, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', 'TIDAK'),
(61, 0, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', 'TIDAK'),
(62, 63, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(63, 0, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', 'TIDAK'),
(64, 0, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', 'TIDAK'),
(67, 66, '', '', '-', '0000-00-00', 'SWASTA', 'TIDAK', '-', '-', '-', 'TIDAK'),
(69, 0, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', 'TIDAK'),
(70, 68, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(71, 69, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(72, 70, 'PBI', 'KONDOM', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(73, 71, '', '', '-', '0000-00-00', '', 'TIDAK', '-', 'TIDAK', 'TIDAK', 'YA'),
(74, 72, '', '', '-', '0001-00-00', '', 'TIDAK', 'TIDAK', '-', '-', '-'),
(75, 73, '', '', 'TIAL', '0000-00-00', '', '-', '-', '-', 'YA', 'YA'),
(76, 74, '', '', '-', '0000-00-00', '', 'TIDAK', 'TIDAK', 'TIDAK', 'YA', 'YA'),
(77, 75, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(78, 76, 'NON PBI', '', 'TIAL', '0000-00-00', '', 'TIDAK', 'TIDAK', 'TIDAK', 'TIDAK', 'TIDAK'),
(79, 77, 'NON PBI', '', 'TIAL', '0000-00-00', '', 'TIDAK', 'TIDAK', 'TIDAK', 'TIDAK', 'TIDAK'),
(80, 78, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(81, 79, '', '', '-', '0000-00-00', '', 'TIDAK', 'TIDAK', 'TIDAK', 'TIDAK', 'TIDAK'),
(82, 80, '', '', '-', '0000-00-00', '', '-', '-', 'YA', '-', '-'),
(83, 81, '', 'IUD', '-', '0000-00-00', 'SWASTA', 'YA', 'TIDAK', 'TIDAK', 'TIDAK', 'TIDAK'),
(84, 82, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(85, 83, 'NON JKN', '', 'TIAL', '0000-00-00', 'SWASTA', 'TIDAK', 'TIDAK', 'TIDAK', 'TIDAK', 'TIDAK'),
(86, 0, '', '', '-', '0000-00-00', '', '-', '-', 'TIDAK', 'TIDAK', 'TIDAK'),
(88, 85, '', '', '-', '0000-00-00', '', 'TIDAK', 'TIDAK', 'TIDAK', 'TIDAK', 'TIDAK'),
(89, 86, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(90, 87, '', '', '-', '0000-00-00', '', 'TIDAK', 'TIDAK', 'TIDAK', 'TIDAK', 'TIDAK'),
(91, 88, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(92, 89, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(93, 90, '', '', '-', '1981-08-15', 'PEMERINTAH', 'TIDAK', 'TIDAK', 'TIDAK', 'YA', 'YA'),
(94, 91, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(95, 92, '', '', '-', '1981-04-17', 'PEMERINTAH', 'TIDAK', 'TIDAK', 'TIDAK', 'YA', 'YA'),
(96, 93, '', '', 'HAMIL', '0001-00-02', 'PEMERINTAH', 'TIDAK', 'TIDAK', 'TIDAK', 'TIDAK', 'TIDAK'),
(97, 94, '', '', '-', '0000-00-00', '', 'YA', '-', '-', '-', '-'),
(98, 95, 'NON JKN', 'IUD', '-', '2013-12-01', 'SWASTA', 'YA', '-', 'TIDAK', 'TIDAK', 'TIDAK'),
(99, 96, 'NON PBI', '', 'HAMIL', '0000-00-00', '', 'TIDAK', '-', 'TIDAK', 'TIDAK', 'TIDAK'),
(100, 97, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(101, 98, 'NON PBI', '', '-', '0000-00-00', '', 'TIDAK', 'YA', 'TIDAK', 'TIDAK', 'YA'),
(102, 0, '0', '0', '0', '0000-00-00', '0', '0', '0', '0', '0', '0'),
(103, 99, 'NON PBI', '', 'IAS', '0000-00-00', '', 'YA', '-', '-', '-', '-'),
(104, 100, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(105, 101, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(106, 102, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(107, 103, '', '', '-', '0000-00-00', '', '-', '-', 'TIDAK', 'TIDAK', 'TIDAK'),
(108, 104, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(109, 105, 'NON PBI', '', 'IAT', '2012-05-30', 'SWASTA', 'TIDAK', 'TIDAK', 'TIDAK', 'TIDAK', 'TIDAK'),
(110, 106, '', '', '-', '2008-01-05', 'SWASTA', '-', '-', '-', 'TIDAK', 'YA'),
(111, 107, 'PBI', '', '-', '0000-00-00', '', '-', '-', '-', 'TIDAK', 'TIDAK'),
(112, 108, 'NON PBI', '', 'TIAL', '0000-00-00', '', 'YA', 'YA', '-', '-', '-'),
(113, 109, 'NON PBI', '', '-', '0000-00-00', '', '-', '-', '-', '-', 'YA'),
(114, 110, 'NON JKN', '', '-', '0000-00-00', '', '-', '-', '-', '-', 'YA'),
(115, 111, 'PBI', '', '-', '0000-00-00', '', 'TIDAK', 'TIDAK', '-', '-', '-'),
(116, 112, 'NON PBI', '', '-', '0000-00-00', 'SWASTA', 'TIDAK', 'TIDAK', 'TIDAK', 'TIDAK', 'TIDAK'),
(117, 113, 'PBI', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(118, 114, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', 'YA'),
(119, 115, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', 'YA'),
(120, 116, 'NON PBI', '', 'IAT', '0000-00-00', '', 'YA', '-', '-', '-', '-'),
(121, 117, '', '', 'HAMIL', '0000-00-00', '', '-', '-', '-', '-', '-'),
(122, 0, '0', '0', '0', '0000-00-00', '0', '0', '0', '0', '0', '0'),
(123, 0, '0', '0', '0', '0000-00-00', '0', '0', '0', '0', '0', '0'),
(124, 0, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(125, 118, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(126, 119, '', '', '-', '0000-00-00', 'SWASTA', 'TIDAK', '-', '-', '-', '-'),
(127, 0, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(128, 120, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(129, 121, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(130, 122, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(131, 123, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(132, 124, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(133, 125, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(134, 126, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(135, 127, '', '', '-', '0000-00-00', 'PEMERINTAH', 'YA', '-', '-', '-', '-'),
(136, 128, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-'),
(137, 0, '', '', '-', '0000-00-00', '', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_t_penduduk`
--

CREATE TABLE `tbl_t_penduduk` (
  `id_penduduk` int(11) NOT NULL,
  `id_kk` int(11) NOT NULL,
  `id_status_penduduk` int(11) DEFAULT NULL,
  `nama` text NOT NULL,
  `no_penduduk` text NOT NULL,
  `agama` text NOT NULL,
  `tmpt_lahir` text NOT NULL,
  `tgl_lahir` date NOT NULL,
  `rt` text NOT NULL,
  `rw` text NOT NULL,
  `jenis_kelamin` text NOT NULL,
  `usia` text NOT NULL,
  `gol_darah` text NOT NULL,
  `pendidikan` text NOT NULL,
  `status_pernikahan` text NOT NULL,
  `status_sosial` text NOT NULL,
  `pekerjaan` text NOT NULL,
  `status_dalam_keluarga` text NOT NULL,
  `tanggal_input` date NOT NULL,
  `akte` text NOT NULL,
  `usia_kawin_pertama` int(11) NOT NULL,
  `tempat_tinggal` text NOT NULL,
  `tgl_kematian` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_t_penduduk`
--

INSERT INTO `tbl_t_penduduk` (`id_penduduk`, `id_kk`, `id_status_penduduk`, `nama`, `no_penduduk`, `agama`, `tmpt_lahir`, `tgl_lahir`, `rt`, `rw`, `jenis_kelamin`, `usia`, `gol_darah`, `pendidikan`, `status_pernikahan`, `status_sosial`, `pekerjaan`, `status_dalam_keluarga`, `tanggal_input`, `akte`, `usia_kawin_pertama`, `tempat_tinggal`, `tgl_kematian`) VALUES
(1, 1, 1, 'ARIEF DAUD S', '3276020305510001', '', 'BUKITTINGGI', '1951-05-03', '03', '05', 'LK', '64', '', 'AKAD', 'K', '', 'SWASTA', 'KK', '2015-03-02', 'TIDAK', 27, '-', '0000-00-00'),
(2, 1, 1, 'WENNY BAHAR', '3276025111510001', '', 'BUKITTINGGI', '1951-11-11', '03', '05', 'PR', '63', '', 'SLA', 'K', '', 'PENSIUN', 'ISTRI', '2015-03-02', 'TIDAK', 27, '-', '0000-00-00'),
(6, 3, 1, 'H. SUNARYO', '32760222105800002', '', 'CIMAHI', '1958-10-22', '03', '05', 'LK', '56', '', 'SLTA', 'K', '', 'PNS', 'KK', '2015-03-02', 'YA', 0, '-', '0000-00-00'),
(7, 3, 1, 'SUTINI', '3276026104600003', '', 'YOGYAKARTA', '1960-04-21', '03', '05', 'PR', '54', '', 'SLTA', 'K', '', 'SWASTA', 'ISTRI', '2015-03-02', 'YA', 0, 'JATAYU BLOK I NO.3', '0000-00-00'),
(14, 18, 1, 'SAD', '1', '', 'CIMANGGIS', '1990-02-20', '03', '05', 'LK', '20', '', 'S3', 'BK', '', '4', 'KK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(15, 19, 1, 'AGUS HARYANTO', '32766022808580008', 'ISLAM', 'Banyumas', '1958-08-28', '01', '05', 'LK', '56', '', '10', 'K', '', '4', 'KK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(16, 19, 1, 'DIAH SRI HANDAYANI', '3276026804710013', 'ISLAM', 'Madiun', '1971-04-28', '01', '05', 'PR', '43', '', '10', 'K', '', '6', 'ISTRI', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(17, 19, 1, 'RAIZA FARZANA', '3276025500040012', 'ISLAM', 'Jakarta', '2004-08-16', '01', '05', 'PR', '10', '', '3', 'BK', '', '0', 'ANAK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(18, 19, 1, 'AMIRUDIN', '3276022309920015', 'ISLAM', 'Purworejo', '1992-09-23', '01', '05', 'LK', '22', '', '8', 'BK', '', '0', 'LL', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(19, 20, 1, 'MASYUDI ADIANTO', '3321102712840003', '', 'DEMAK', '1984-12-27', '03', '05', 'LK', '30', '', 'D3', 'K', '', 'SWASTA', 'KK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(20, 20, 1, 'FENTY ELUITA SUNARYO', '3276026310870002', '', 'JAKARTA', '1987-10-23', '03', '05', 'PR', '27', '', 'S1', 'K', '', 'SWASTA', 'ISTRI', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(21, 20, 1, 'YUDHA PRATAMA  ADIANTO', '3276021812130003', '', 'DEPOK', '2013-12-18', '03', '05', 'LK', '11 BULAN', '', '-', 'BK', '', '-', 'ANAK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(22, 21, 1, 'WIROSO WIYONO', '3276021702500002', 'ISLAM', 'TULUNG AGUNG', '1950-02-17', '01', '05', 'LK', '64', '', '10', 'K', '', '8', 'KK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(23, 21, 1, 'AGMINI BAINAR', '3276025108500001', 'ISLAM', 'PADANG', '1950-08-11', '01', '05', 'PR', '64', '', '8', 'K', '', '0', 'ISTRI', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(24, 21, 1, 'AMITHYA PRANISWIKA', '3276026912800001', 'ISLAM', 'JAKARTA', '1980-12-29', '01', '05', 'PR', '34', '', '10', 'K', '', '6', 'ANAK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(25, 21, 1, 'MARA PRANISBHATA', '3276022003820001', 'ISLAM', 'JAKARTA', '1982-03-20', '01', '05', 'LK', '32', '', '10', 'K', '', '6', 'ANAK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(26, 22, 1, 'KOEN TJAHAJONO', '3276020906680010', '', 'SIDOARJO', '1968-06-09', '03', '05', 'LK', '47', '', 'SMA', 'K', '', '-', 'KK', '2015-03-03', 'YA', 30, '-', '0000-00-00'),
(27, 22, 1, 'IKA USTYANINGTYAS', '3276025510690010', '', 'YOGYAKARTA', '1969-10-15', '03', '05', 'PR', '46', '', 'S1', 'K', '', '-', 'ISTRI', '2015-03-03', 'YA', 29, '-', '0000-00-00'),
(28, 22, 1, 'PUTRI CAHYANINGTYAS INDRIATI', '3276026807990005', '', 'JAKARTA', '1999-07-28', '03', '05', 'PR', '16', '', 'PELAJAR', 'BK', '', '-', 'ANAK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(29, 23, 1, 'PAQIT NURYAM TANJUNG', '3276021903810006', 'ISLAM', 'BOGOR', '1981-03-19', '01', '05', 'LK', '33', '', '10', 'K', '', '6', 'KK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(30, 23, 1, 'RIESKY SEPYIORINI', '3276026209850007', 'ISLAM', 'CIANJUR', '1985-09-22', '01', '05', 'PR', '29', '', '10', 'K', '', '6', 'ISTRI', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(31, 24, 1, 'ALIMUDDIN PASSIMA', '3276021402610008', 'ISLAM', 'PANGKEP', '1961-02-14', '01', '05', 'LK', '53', '', '10', 'K', '', '6', 'KK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(32, 24, 1, 'NOVIE KRISLYANTY', '327602911640005', 'ISLAM', 'JAKARTA', '1964-11-19', '01', '05', 'PR', '50', '', '10', 'K', '', '4', 'ISTRI', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(33, 24, 1, 'JUMIATY OCLIVINDA', '3276025210850018', 'ISLAM', 'JAKARTA', '1985-10-12', '01', '05', 'PR', '29', '', '10', 'K', '', '0', 'ANAK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(34, 24, 1, 'DEVANA ARDIATY', '3276026212860016', 'ISLAM', 'JAKARTA', '1986-12-22', '01', '05', 'PR', '28', '', '10', 'K', '', '4', 'ANAK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(35, 25, 1, 'SUTANTO', '3276021407470002', '', 'TULUNG AGUNG', '1947-07-14', '03', '05', 'LK', '68', '', 'D3', 'D/J/C', '', '-', 'KK', '2015-03-03', 'TIDAK', 28, '-', '0000-00-00'),
(36, 25, 1, 'DIDIEK YUDIANTO', '327602 712750002', '', 'JAKARTA', '1975-12-17', '03', '05', 'LK', '39', '', 'S1', 'D/J/C', '', '-', 'ANAK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(37, 26, 1, 'GUNARTO', '3276021804500004', 'ISLAM', 'SURAKARTA', '1950-04-18', '01', '05', 'LK', '64', '', '10', 'K', '', '6', 'KK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(38, 26, 1, 'IRENE WIENDARTI. N.', '3276026712520005', 'ISLAM', 'MAGELANG', '1952-12-27', '01', '05', 'PR', '62', '', '10', 'K', '', '0', 'ISTRI', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(39, 26, 1, 'LIEKE VERIMITA', '3276025407850017', 'ISLAM', 'JAKARTA', '1985-07-14', '01', '05', 'PR', '29', '', '10', 'BK', '', '6', 'ANAK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(40, 26, 1, 'BRIAN HANDOYO', '3276020611920009', 'ISLAM', 'JAKARTA', '1992-11-06', '01', '05', 'LK', '22', '', '9', 'BK', '', '9', 'ANAK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(41, 27, 1, 'SRI S.SULAWATI', '3276026309530002', '', 'KUDUS', '1953-09-23', '03', '05', 'PR', '61', '', 'S1', 'D/J/C', '', '-', 'ISTRI', '2015-03-03', 'TIDAK', 25, '-', '0000-00-00'),
(42, 27, 1, 'NUCKY INDRA PRAJA', '3276021709780003', '', 'JAKARTA', '1978-09-17', '03', '05', 'LK', '36', '', 'S2', 'K', '', '-', 'ANAK', '2015-03-03', 'TIDAK', 28, '-', '0000-00-00'),
(43, 27, 1, 'NICO INDRAPRAKOSO', '3276021605800005', '', 'JAKARTA', '1980-05-16', '03', '05', 'LK', '34', '', 'S1', 'K', '', '-', 'ANAK', '2015-03-03', 'TIDAK', 30, '-', '0000-00-00'),
(44, 28, 1, 'SAUR HELENA TOBING', '3276025809740003', 'ISLAM', 'JAKARTA', '1974-09-18', '01', '05', 'PR', '40', '', '10', 'K', '', '6', 'KK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(45, 28, 1, 'ROBERT CIPTO TOBING', '3276021912760006', 'ISLAM', 'JAKARTA', '1976-12-19', '01', '05', 'LK', '38', '', '10', 'BK', '', '6', 'LL', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(46, 29, 1, 'SRI SUPRIYATI', '3276026706420001', '', 'PURWOREJO', '1942-06-27', '01', '05', 'PR', '72', '', '8', 'D/J/C', '', '0', 'KK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(47, 29, 1, 'BONDAN TRIASIH', '3276026303700004', '', 'SURABAYA', '1970-03-23', '01', '05', 'PR', '44', '', '10', 'BK', '', '9', 'ANAK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(48, 30, 1, 'BUDI DWISAKTI', '3174020110680004', '', 'JAKARTA', '1968-10-01', '03', '05', 'LK', '46', '', 'S3', 'K', '', 'SWASTA', 'KK', '2015-03-03', 'YA', 28, '-', '0000-00-00'),
(49, 30, 1, 'IDA FESTIAWATY', '3174026007710007', '', 'JAKARTA', '1971-07-20', '03', '05', 'PR', '43', '', 'S1', 'K', '', 'IRT', 'ISTRI', '2015-03-03', 'YA', 25, '-', '0000-00-00'),
(50, 30, 1, 'DENISA NURUL ATIKAH', '3174025712970005', '', 'NEWCASTLE', '1997-12-17', '03', '05', 'PR', '17', '', 'SMA', 'BK', '', '-', 'ANAK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(51, 30, 1, 'TSANIYA NURUL ISMA', '3174026501010003', '', 'NEWCASTLE', '2001-01-25', '03', '05', 'PR', '13', '', 'SMP', 'BK', '', '-', 'ANAK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(52, 30, 1, 'M.HARITS AL GHIFARI', '3174021212070002', '', 'JAKARTA', '2007-12-12', '03', '05', 'LK', '6', '', 'SD', 'BK', '', '-', 'ANAK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(53, 31, 1, 'SAPRINA NUSA PUTRA', '3276021508670001', '', 'SURABAYA', '1967-08-15', '01', '05', 'LK', '47', '', '10', 'K', '', '6', 'KK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(54, 31, 1, 'LIS TIYOWATI', '3276024202680004', '', 'CILACAP', '1968-02-02', '01', '05', 'PR', '46', '', '8', 'K', '', '0', 'ISTRI', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(55, 32, 1, 'ASEP MUHARAM', '3276021203700002', '', 'CIAMIS', '1970-03-12', '03', '05', 'LK', '45', '', 'D3', 'K', '', '-', 'KK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(56, 32, 1, 'YANTI DAMAYANTI', '3276025212700002', '', 'CIAMIS', '1970-12-12', '03', '05', 'PR', '44', '', 'D3', 'K', '', '-', 'ISTRI', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(57, 32, 1, 'SABILA NADHIRAH', '3276026402910011', '', 'BANDUNG', '1991-02-24', '03', '05', 'PR', '24', '', 'S1', 'BK', '', '-', 'LL', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(58, 32, 1, 'ANNISA NUR ILHAM', '3276025511890015', '', 'BANDUNG', '1989-11-15', '03', '05', 'PR', '25', '', 'D3', 'BK', '', '-', 'LL', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(59, 33, 1, 'DUNDEY HANDIARTO', '3276021907710003', '', 'SURABAYA', '1971-07-19', '01', '05', 'LK', '43', '', '10', 'K', '', '0', 'KK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(60, 33, 1, 'DEASY ANINDITYASARI', '3276026012740001', '', 'JAKARTA', '1974-12-20', '01', '05', 'PR', '40', '', '8', 'K', '', '0', 'ISTRI', '2015-03-03', '-', 0, '-', '0000-00-00'),
(61, 33, 1, 'DEA RACHMAYATI. H.', '3276024305 60003', '', 'BOGOR', '1986-05-03', '01', '05', 'PR', '18', '', '9', 'BK', '', '0', 'ANAK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(62, 33, 1, 'DENISHAQUEEN. R. H', '3276025911090001', '', 'DEPOK', '2009-11-19', '01', '05', 'PR', '5', '', '1', 'BK', '', '0', 'ANAK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(63, 34, 1, 'MOCHAMAD ABBAS', '3276020906700002', '', 'JAKARTA', '1970-06-09', '03', '05', 'LK', '44', '', 'S2', 'K', '', 'PNS', 'KK', '2015-03-03', 'YA', 27, '-', '0000-00-00'),
(64, 34, 1, 'LOLA ELVERA', '3276024607720001', '', 'JAKARTA', '1972-07-06', '03', '05', 'PR', '42', '', 'D3', 'K', '', 'IRT', 'ISTRI', '2015-03-03', 'YA', 25, '-', '0000-00-00'),
(65, 34, 1, 'MAULINDIRA ELRIZQI', '3276024607720001', '', 'JAKARTA', '1998-07-18', '03', '05', 'PR', '16', '', 'SMA', 'BK', '', 'PELAJAR', 'ANAK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(66, 34, 1, 'ANUGRAH WIBAWA', '3276020603040012', '', 'JAKARTA', '2004-03-06', '03', '05', 'LK', '10', '', 'SD', 'BK', '', 'PELAJAR', 'ANAK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(67, 35, 1, 'YENNY TECI WOWOR', '3276045095100001', '', 'SEMARANG', '1951-09-05', '01', '05', 'PR', '63', '', '8', 'D/J/C', '', '0', 'KK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(68, 35, 1, 'MEILANNY DYAN T', '3276025705760012', '', 'BOGOR', '1976-05-17', '01', '05', 'PR', '38', '', '10', 'D/J/C', '', '6', 'ANAK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(69, 35, 1, 'KEVINJONATHAN', '3276020804020005', '', 'JAKARTA', '2002-04-06', '01', '05', 'LK', '12', '', '5', 'BK', '', '0', 'LL', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(70, 35, 1, 'DANIELLA PUTRI SHALOMITA', '3175054503030002', '', 'JAKARTA', '2003-03-05', '01', '05', 'PR', '11', '', '3', 'BK', '', '0', 'LL', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(71, 36, 1, 'VERONICA ANDARI H', '3276024110550002', 'ISLAM', 'AMBARAWA', '1955-10-01', '01', '05', 'PR', '59', '', '10', 'D/J/C', '', '6', 'KK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(72, 37, 1, 'JOHN .C. LINTING', '-', '', 'MAKALE', '1948-10-05', '03', '05', 'LK', '66', '', 'AKADEMI', 'K', '', 'SWASTA', 'KK', '2015-03-03', 'TIDAK', 0, '-', '0000-00-00'),
(73, 37, 1, 'SUNARTINI', '-', '', 'JAKARTA', '1953-11-12', '03', '05', 'PR', '61', '', 'SMU', 'K', '', '-', 'ISTRI', '2015-03-03', 'TIDAK', 0, '-', '0000-00-00'),
(74, 37, 1, 'FRILLA.P.A.', '-', '', 'JAKARTA', '1979-10-25', '03', '05', 'PR', '35', '', 'S1', 'BK', '', 'SWASTA', 'ANAK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(75, 37, 1, 'MELISSA.K.K', '-', '', 'JAKARTA', '1982-09-21', '03', '05', 'PR', '32', '', 'S1', 'BK', '', 'PNS', 'ANAK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(76, 38, 1, 'YOHANES FRIDA Y. G. P', '3276022807780013', '', 'SURABAYA', '1978-07-28', '01', '05', 'LK', '36', '', '10', 'K', '', '6', 'KK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(77, 38, 1, 'AURELIA EKARESTI .W', '3276025510810002', '', 'JAKARTA', '1981-10-15', '01', '05', 'PR', '33', '', '10', 'K', '', '6', 'ISTRI', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(78, 38, 1, 'DAVID RASTA GANTENG .W', '3276020612030004', '', 'MALANG', '2003-12-06', '01', '05', 'LK', '11', '', '3', 'BK', '', '9', 'ANAK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(79, 39, 1, 'MADAH PUTRA', '3276022411540002', 'ISLAM', 'JAKARTA', '1954-11-24', '03', '05', 'LK', '59', '', 'AKADEMI', 'K', '', 'PENSIUN', 'KK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(80, 39, 1, 'LILY ROOSDIATI', '3276026710590002', 'ISLAM', 'BANDUNG', '1959-10-27', '03', '05', 'PR', '55', '', 'AKADEMI', 'K', '', 'PENSIUN', 'ISTRI', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(81, 39, 1, 'EKA NURAINI MP', '3276024808820003', 'ISLAM', 'JAKARTA', '1982-08-08', '03', '05', 'PR', '32', '', 'SARJANA', 'BK', '', 'SWASTA', 'ANAK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(82, 39, 1, 'AMAL FIRDAUS MP', '3276020203670002', 'ISLAM', 'JAKARTA', '1987-03-02', '03', '05', 'LK', '27', '', 'SARJANA', 'BK', '', 'SWASTA', 'ANAK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(83, 39, 1, 'INNA RAHMAANI MP', '3276025602940001', 'ISLAM', 'JAKARTA', '1994-02-16', '03', '05', 'PR', '20', '', 'KULIAH', 'BK', '', 'PELAJAR', 'ANAK', '2015-03-03', 'YA', 0, '-', '0000-00-00'),
(84, 40, 1, 'NGATIRAN DJOKO', '3366297', 'ISLAM', 'JOMBANG', '1945-12-29', '03', '05', 'LK', '69', '', 'SLTA', 'D/J/C', '', '-', 'KK', '2015-03-04', 'YA', 29, '-', '0000-00-00'),
(85, 41, 1, 'ANTONIUS CATUR NUGROHO', '3276022709810010', '', 'BOGOR', '1981-09-27', '01', '05', 'LK', '33', '', '10', 'K', '', '5', 'KK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(86, 41, 1, 'ODILIA DIKARESTI .W', '3276025312840001', '', 'JAKARTA', '1984-12-13', '01', '05', 'PR', '30', '', '10', 'K', '', '6', 'ISTRI', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(87, 41, 1, 'URSULA CALLISTA WIDIAH', '3276024910120001', '', 'JAKARTA', '2012-10-09', '01', '05', 'PR', '2', '', '1', 'BK', '', '0', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(88, 42, 1, 'WAHYU DIJANTO', '3276022906770002', 'ISLAM', 'JAKARTA', '1977-06-29', '03', '05', 'LK', '37', '', 'S1', 'K', '', 'KARYWAN SWASTA', 'KK', '2015-03-04', 'YA', 29, '-', '0000-00-00'),
(89, 42, 1, 'RIKA ROSTIKA DEWI', '3276026609850006', 'ISLAM', 'GARUT', '1985-09-26', '03', '05', 'PR', '29', '', 'SLTA', 'K', '', 'IRT', 'ISTRI', '2015-03-04', 'YA', 21, '-', '0000-00-00'),
(90, 42, 1, 'NADYA RAMADHANI AZZAHRA', '3276026409070004', 'ISLAM', 'JAKARTA', '2007-09-24', '03', '05', 'PR', '7', '', '-', 'BK', '', 'PELAJAR', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(91, 42, 1, 'NAURA AQILA FITRIA', '3276025603130001', 'ISLAM', 'JAKARTA', '2013-03-16', '03', '05', 'PR', '1', '', '-', 'BK', '', '-', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(92, 43, 1, 'RM. DANANG JOKO ISMOYO', '3175052108680003', 'ISLAM', 'JAKARTA', '1968-08-21', '03', '05', 'LK', '46', '', 'S1', 'K', '', '-', 'KK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(93, 43, 1, 'HERNING KUNCORO RINI', '3175056112660001', 'ISLAM', 'MALANG', '1966-12-21', '03', '05', 'PR', '48', '', 'S1', 'K', '', '-', 'ISTRI', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(94, 43, 1, 'MARSHA PRAMESTY AYUWANDHIRA', '3175056308030001', 'ISLAM', 'JAKARTA', '2003-08-23', '03', '05', 'PR', '11', '', 'SD', 'BK', '', '-', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(95, 44, 1, 'ARDEN ELANGGA', '3276022606780013', '', 'MEDAN', '1978-06-06', '01', '05', 'LK', '36', '', '10', 'K', '', '4', 'KK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(96, 44, 1, 'OLIVIA RINNY SUSILOWATI', '3276024804820009', '', 'UJUNG PANDANG', '1982-04-08', '01', '05', 'PR', '32', '', '10', 'K', '', '6', 'ISTRI', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(97, 44, 1, 'CLARISSA ADINE SALSABILA', '3276025802090004', '', 'DEPOK', '2009-02-18', '01', '05', 'PR', '5', '', '1', 'BK', '', '0', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(98, 44, 1, 'CALISSTA AYUDYA CANDRASA', '3276025308140002', '', 'DEPOK', '2014-08-13', '01', '05', 'PR', '3 BULAN', '', '1', 'BK', '', '0', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(99, 46, 1, 'SUHATI SETYANINGSIH', '3276026505519001', '', 'BANDUNG', '1951-05-25', '01', '05', 'PR', '63', '', '8', 'D/J/C', '', '0', 'KK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(100, 46, 1, 'MIN MULJATIE', '3276026610690004', '', 'PALANGKA RAYA', '1969-10-26', '01', '05', 'PR', '45', '', '10', 'BK', '', '0', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(101, 46, 1, 'RITAWATI SAMOPRA', '3276025505740004', '', 'JAKARTA', '1974-05-15', '01', '05', 'PR', '40', '', '10', 'BK', '', '6', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(102, 46, 1, 'YULI DIRGANTARA', '3276024807770003', '', 'BOGOR', '1977-07-08', '01', '05', 'PR', '37', '', '10', 'K', '', '6', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(103, 47, 1, 'ASRIL AGIN', '000000000010', 'ISLAM', 'BUKITTINGGI', '1948-04-11', '03', '05', 'LK', '66', '', 'S1', 'K', '', '-', 'KK', '2015-03-04', 'YA', 38, '-', '0000-00-00'),
(104, 47, 1, 'EVITA ELEONORE LIANDO', ' ', 'ISLAM', 'MINAHASA', '1953-10-03', '03', '05', 'PR', '61', '', 'S1', 'K', '', '-', 'ISTRI', '2015-03-04', 'YA', 33, '-', '0000-00-00'),
(105, 47, 1, 'SABRINA ASRIL', ' ', 'ISLAM', 'JAKARTA', '1988-03-29', '03', '05', 'PR', '26', '', 'SM', 'BK', '', '-', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(106, 47, 1, 'AGATHON ASRIL', ' ', 'ISLAM', 'JAKARTA', '1989-12-10', '03', '05', 'LK', '25', '', 'SM', 'BK', '', '-', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(107, 48, 1, 'IDA MURNI IDIASIH', '3276024112480001', '', 'KEBUMEN', '1948-12-01', '01', '05', 'PR', '66', '', '8', 'D/J/C', '', '0', 'KK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(108, 49, 1, 'EDDY ZAHARI', '3276022305550002', 'ISLAM', 'JAKARTA', '1955-05-23', '03', '05', 'LK', '59', '', 'S1', 'K', '', '-', 'KK', '2015-03-04', 'YA', 34, '-', '0000-00-00'),
(109, 49, 1, 'VITRI SUSAN INDRIANA', '3276024802580006', 'ISLAM', 'PURWOKERTO', '1958-02-08', '03', '05', 'PR', '56', '', 'D3', 'K', '', '-', 'ISTRI', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(110, 49, 1, 'METRIDA ANANDA VIDIARSI', '3276024305950001', 'ISLAM', 'JAKARTA', '1955-05-03', '03', '05', 'PR', '19', '', 'SLTA', 'BK', '', '-', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(111, 50, 1, 'DEVY DAYAH', '3276022712680013', '', 'JAKARTA', '1968-12-27', '01', '05', 'LK', '46', '', '10', 'K', '', '6', 'KK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(112, 50, 1, 'RITA ANDRIANI', '3276025812670010', '', 'CILACAP', '1967-12-18', '01', '05', 'PR', '47', '', '10', 'K', '', '6', 'ISTRI', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(113, 50, 1, 'BAGUS RYAN SADEWO', '3276022009940010', '', 'BOGOR', '1994-09-20', '01', '05', 'LK', '20', '', '9', 'BK', '', '0', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(114, 50, 1, 'NAJMA AYU TANIA', '3276024710960006', '', 'JAKARTA', '1996-10-07', '01', '05', 'PR', '18', '', '9', 'BK', '', '0', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(115, 50, 1, 'REYHAN EROS DERYAN', '3276021106070017', '', 'JAKARTA', '2007-06-15', '01', '05', 'LK', '7', '', '1', 'BK', '', '0', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(116, 50, 1, 'ANITA ANDRIANIE', '3276026303690017', '', 'SOLO', '1996-03-23', '01', '05', 'PR', '45', '', '10', 'K', '', '6', 'LL', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(117, 51, 1, 'V. GATOT SUPARNADY', '3276022001520001', 'ISLAM', 'PROBOLINGGO', '1952-01-20', '03', '05', 'LK', '62', '', 'S1', 'D/J/C', '', 'PENSIUN PNS', 'KK', '2015-03-04', 'TIDAK', 33, '-', '0000-00-00'),
(118, 51, 1, 'DIEGO KRISTA MAHARDHIKA', '3276022706860007', 'ISLAM', 'JAKARTA', '1986-06-27', '03', '05', 'LK', '28', '', 'S1', 'BK', '', 'KARYAWAN', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(119, 51, 1, 'JOKLIF KRIST MAHARLHIKA', '3276020509870002', 'ISLAM', 'JAKARTA', '1987-09-05', '03', '05', 'LK', '27', '', 'S1', 'BK', '', 'KARYAWAN', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(120, 51, 1, 'MARVILE KRIS MAHARESHI', '3276021303950004', 'ISLAM', 'BOGOR', '1995-03-13', '03', '05', 'LK', '19', '', 'MHS', 'BK', '', 'MHS', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(121, 52, 1, 'MUHAMMAD AZLI', '3276021705640001', '', 'TAPAK TUAH', '1964-05-17', '01', '05', 'LK', '50', '', '10', 'K', '', '6', 'KK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(122, 52, 1, 'LAILATI DAUD', '3276024604650002', '', 'BLANGME', '1965-04-06', '01', '05', 'PR', '49', '', '10', 'K', '', '0', 'ISTRI', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(123, 52, 1, 'FINI PERTIWI', '3276026702930004', '', 'JAKARTA', '1993-02-27', '01', '05', 'PR', '21', '', '9', 'BK', '', '0', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(124, 52, 1, 'MUHAMMAD FIRLY ZERMIYAH', '3276021806990011', '', 'JAKARTA', '1999-06-18', '01', '05', 'LK', '15', '', '7', 'BK', '', '0', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(125, 52, 1, 'FIDYNI FELIZA', '3276026012020002', '', 'JAKARTA', '2002-12-20', '01', '05', 'PR', '12', '', '3', 'BK', '', '0', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(126, 52, 1, 'FIRA FIRI', '3276024406050019', '', 'JAKARTA', '2005-06-04', '01', '05', 'PR', '9', '', '3', 'BK', '', '0', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(127, 52, 1, 'ANDI SUPRATMAN', '1174051709900003', '', 'LANGSA', '1980-09-17', '01', '05', 'LK', '34', '', '10', 'BK', '', '0', 'LL', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(128, 54, 1, 'TRIYANTO', '3276032007460001', '', 'KRADENAN', '1946-07-30', '01', '05', 'LK', '68', '', '10', 'D/J/C', '', '6', 'KK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(129, 55, 1, 'BAYU PRASETYO', '3276023012750001', 'ISLAM', 'BANDUNG', '1975-12-30', '03', '05', 'LK', '39', '', 'S1', 'K', '', 'SWASTA', 'KK', '2015-03-04', '-', 0, '-', '0000-00-00'),
(130, 55, 1, 'MERRY DESWITA', '3276026906770002', 'ISLAM', 'SOLOK', '1977-06-29', '03', '05', 'PR', '38', '', 'D3', 'K', '', 'RT', 'ISTRI', '2015-03-04', '-', 0, '-', '0000-00-00'),
(131, 55, 1, 'YOGA ADITAMA', '3276020903970016', '', 'JAKARTA', '0000-00-00', '03', '05', 'LK', '-', '', '-', 'BK', '', '-', 'LL', '2015-03-04', '-', 0, '-', '0000-00-00'),
(132, 56, 1, 'AYUB MUIN', '3276022711380001', '', 'JAMBI', '1938-11-27', '01', '05', 'LK', '76', '', '10', 'K', '', '8', 'KK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(133, 56, 1, 'SYAMSIDAR SYAM', '3276024111400001', '', 'TANJUNG PURA', '1940-11-01', '01', '05', 'PR', '74', '', '8', 'K', '', '0', 'ISTRI', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(134, 57, 1, 'Ir.BAMBANG HARIYADI. MM', '3276020105560002', 'ISLAM', 'SOLO', '1956-05-01', '03', '05', 'LK', '58', '', 'SARJANA', 'K', '', 'PNS', 'KK', '2015-03-04', 'YA', 27, '-', '0000-00-00'),
(135, 57, 1, 'NUNUK SUHARTI', '3276024205560002', 'ISLAM', 'SOLO', '1956-05-02', '03', '05', 'PR', '58', '', 'AKADEMI', 'K', '', '-', 'ISTRI', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(136, 57, 1, 'MANGGALA WIDA S. S.COM', '3276020703850001', 'ISLAM', 'SOLO', '1985-03-07', '03', '05', 'LK', '29', '', 'SARJANA', 'BK', '', 'SWASTA', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(137, 57, 1, 'DITA PRAMESTI S.COM', '3276026004900002', 'ISLAM', 'JAKARTA', '1990-04-20', '03', '05', 'PR', '24', '', 'SARJANA', 'BK', '', 'SWASTA', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(138, 58, 1, 'P.N. SOENARSO', '3276020812480001', '', 'SURAKARTA', '1948-12-08', '01', '05', 'LK', '66', '', '10', 'K', '', '8', 'KK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(139, 58, 1, 'SITI RACHAYU ASTUTI', '3276026803540001', '', 'MALANG', '1954-03-28', '01', '05', 'PR', '60', '', '8', 'K', '', '0', 'ISTRI', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(140, 58, 1, 'SONY ADITYA C', '3276020105840002', '', 'JAKARTA', '1984-05-01', '01', '05', 'LK', '30', '', '8', 'K', '', '9', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(141, 58, 1, 'SARJONO', '3276022010740008', '', 'SUKOHARJO', '1974-10-20', '01', '05', 'LK', '40', '', '5', 'K', '', '9', 'LL', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(142, 59, 1, 'DONNY CHRISDIANTO', '3276020812700002', 'ISLAM', 'BANDUNG', '1970-12-08', '03', '05', 'LK', '44', '', 'S2', 'K', '', 'SWASTA', 'KK', '2015-03-04', 'YA', 28, '-', '0000-00-00'),
(143, 59, 1, 'JOSEPHINE DEVITHA SEPTIRIANA', '3276026609710002', 'ISLAM', 'BIAK', '1971-09-26', '03', '05', 'PR', '43', '', 'S1', 'K', '', 'IRT', 'ISTRI', '2015-03-04', 'YA', 27, '-', '0000-00-00'),
(144, 59, 1, 'BIMO DEVIANTOPUTRA', '3276021603000001', 'ISLAM', 'SAMARINDA', '2000-03-16', '03', '05', 'LK', '14', '', 'SMP', 'BK', '', 'PELAJAR', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(145, 60, 1, 'MARCUS ANTHONIUS SEDIONO', '3276021408380001', '', 'MAGETAN', '1938-08-14', '01', '05', 'LK', '76', '', '10', 'K', '', '8', 'KK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(146, 60, 1, 'MARIA CICILIA VIJAYANTIA .A', '3276024810470001', '', 'SURABAYA', '1947-10-08', '01', '05', 'PR', '67', '', '8', 'K', '', '0', 'ISTRI', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(147, 60, 1, 'ALOYSIUS MEGANANDA .S', '3276022701710010', '', 'SURABAYA', '1971-01-27', '01', '05', 'LK', '43', '', '10', 'K', '', '9', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(148, 61, 1, 'SRI ANTONAH', '3276025707340001', 'ISLAM', 'PURWOKERTO', '1984-07-17', '03', '05', 'PR', '80', '', '-', 'D/J/C', '', '-', 'KK', '2015-03-04', 'TIDAK', 0, '-', '0000-00-00'),
(149, 62, 1, 'GEORGE I. K. MOCHTAR', '3276021011530006', '', 'JAKARTA', '1953-11-10', '01', '05', 'LK', '61', '', '10', 'K', '', '6', 'KK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(150, 62, 1, 'MARIA A. APRIMA V.', '3276024210690006', '', 'SURABAYA', '1969-10-02', '01', '05', 'PR', '45', '', '10', 'K', '', '0', 'ISTRI', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(151, 62, 1, 'MARIA CLAUDIA VANESSA', '3276024611920006', '', 'JAKARTA', '1992-11-06', '01', '05', 'PR', '22', '', '10', 'BK', '', '6', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(152, 62, 1, 'ANASTASYA YUSTISI U.', '3276025611960005', '', 'JAKARTA', '1996-11-16', '01', '05', 'PR', '18', '', '9', 'BK', '', '0', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(153, 63, 1, 'RENDRA IRAWAN', '3276020710660002', 'ISLAM', 'UJUNG PANDANG', '1966-10-01', '03', '05', 'LK', '48', '', 'D3', 'K', '', '-', 'KK', '2015-03-04', 'TIDAK', 0, '-', '0000-00-00'),
(154, 63, 1, 'IKA SUSAN NURIANA', '3276024605600007', 'ISLAM', '-', '1960-05-06', '03', '05', 'PR', '54', '', 'SMK', 'K', '', '-', 'ISTRI', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(155, 66, 1, 'INDRA IZARDI', '3271020909830010', '', 'WONOSOBO', '1983-09-09', '01', '05', 'LK', '31', '', '10', 'K', '', '6', 'KK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(156, 66, 1, 'RATIHN DEWI LESTARI', '3276026105820002', '', 'JAKARTA', '1982-05-21', '01', '05', 'PR', '32', '', '10', 'K', '', '10', 'ISTRI', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(157, 66, 1, 'TALITA ANINDYA IZARDI', '3276025407140001', '', 'JAKARTA', '2014-07-14', '01', '05', 'PR', '4 BULAN', '', '1', 'BK', '', '10', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(158, 68, 1, 'OKY NASTRIOMAN NURMANSYAH', '--', 'ISLAM', 'JAKARTA', '1986-10-09', '03', '05', 'LK', '28', '', 'SMA', 'D/J/C', '', 'PEGAWAI SWASTA', 'KK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(159, 68, 1, 'ANNABELLA ALISIA NASTRIOMAN', '---', 'ISLAM', 'DEPOK', '2010-12-15', '03', '05', 'PR', '4', '', 'TK', 'BK', '', 'SISWA', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(160, 68, 1, 'AZRIEL NAUFAL NASTRIOMAN', '----', 'ISLAM', 'BOGOR', '2012-04-01', '03', '05', 'LK', '2', '', '-', 'BK', '', '-', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(161, 69, 1, 'NENENG TATI ', '3276025309610001', '', 'JAKARTA', '1961-09-13', '03', '05', 'PR', '53', '', '8', 'D/J/C', '', '9', 'KK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(162, 70, 1, 'INDRA JAYA SEMBIRING', '3171032805630003', '', 'MEDAN', '1963-05-28', '02', '05', 'LK', '51', '', 'S1', 'K', '', '7', 'KK', '2015-03-04', 'YA', 18, '-', '0000-00-00'),
(163, 70, 1, 'NUR RIAHNA', '3171036909650005', '', 'TANGGERANG', '1965-09-29', '02', '05', 'PR', '49', '', 'S1', 'K', '', '0', 'ISTRI', '2015-03-04', 'YA', 18, '-', '0000-00-00'),
(164, 70, 1, 'JOSHUA NIVHOLASH ARAPENTA', '3171030206970006', '', 'JAKARTA', '1997-06-02', '02', '05', 'LK', '17', '', 'SMA', 'BK', '', '0', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(165, 70, 1, 'KEZIA FEBRIANANA', '0102', '', 'JAKARTA', '2000-02-08', '02', '05', 'PR', '14', '', 'SMA', 'BK', '', '0', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(166, 71, 1, 'ISRAHADI BP', '3276023005510002', '', 'MEDAN ', '1951-05-30', '02', '05', 'LK', '63', '', 'S1', 'K', '', 'PNS', 'ISTRI', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(167, 71, 1, 'RAHMATIN AL QOROROH', '3276024106600052', '', 'ZOMBANG', '1960-06-01', '02', '05', 'PR', '54', '', 'S1', 'K', '', 'PNS', 'ISTRI', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(168, 71, 1, 'NIK HIDAYATI', '3276025703660008', '', 'LAMONGAN', '1966-03-17', '02', '05', 'PR', '48', '', 'S1', 'K', '', 'SWASTA', 'LL', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(169, 72, 1, 'GEMBIRA PUTRA AGAM ', '3175021201840008', '', 'JAKARTA', '1984-01-12', '02', '05', 'LK', '30', '', 'S1', 'K', '', 'SWASTA', 'KK', '2015-03-04', 'YA', 27, '-', '0000-00-00'),
(170, 72, 1, 'RAHMANY MAULIDYA', '3276025311860006', '', 'JAKARTA', '1986-11-13', '02', '05', 'PR', '28', '', 'S2', 'K', '', '0', 'ISTRI', '2015-03-04', 'YA', 25, '-', '0000-00-00'),
(171, 72, 1, 'ESHAN CYRIL FATH', '0102', '', 'JAKARTA', '2013-07-01', '02', '05', 'LK', '1', '', '0', 'BK', '', '0', 'ANAK', '2015-03-04', '-', 0, '-', '0000-00-00'),
(172, 73, 1, 'MURJANI TRISNOWATI', '3276025912520006', '', 'JAKARTA', '1952-12-19', '02', '05', 'PR', '62', '', 'SMEA', 'K', '', '-', 'ISTRI', '2015-03-04', 'TIDAK', 34, '-', '0000-00-00'),
(173, 73, 1, 'MARTHA SARAVI JEANETTE', '3276024504890022', '', 'JAKARTA', '1989-04-05', '02', '05', 'PR', '25', '', 'S1', 'BK', '', '-', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(174, 73, 1, 'LEO KEVIN', '3276021508940012', '', 'JAKARTA', '1994-08-15', '02', '05', 'LK', '20', '', 'SMK', 'BK', '', '-', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(175, 74, 1, 'R. SUMARDJOKO', '3276021304450005', '', 'PROBOLINGGO', '1945-04-13', '02', '05', 'LK', '69', '', 'S1', 'K', '', '-', 'KK', '2015-03-04', 'YA', 37, '-', '0000-00-00'),
(176, 74, 1, 'HARINDAH', '327602460530006', '', 'SEMARANG', '1953-06-06', '02', '05', 'PR', '61', '', 'DIII', 'K', '', '-', 'ISTRI', '2015-03-04', '-', 29, '-', '0000-00-00'),
(177, 74, 1, 'PUSPITA ANDRAGINA', '3276026608930006', '', 'JAKARTA', '1993-08-26', '02', '05', 'PR', '21', '', 'SMA', 'BK', '', '-', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(178, 75, 1, 'SUGENG BUDIARTO', '3276021606570008', '', 'YOGYAKARTA', '1957-06-16', '02', '05', 'LK', '57', '', '10', 'K', '', '8', 'KK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(179, 75, 1, 'HENNY POSTYATI', '3276026101580005', '', 'BANDUNG', '1958-01-21', '02', '05', 'PR', '56', '', '8', 'K', '', '8', 'ISTRI', '2015-03-04', '-', 0, '-', '0000-00-00'),
(180, 75, 1, 'AGENG TANTULAR', '32762021811840008', '', 'JAKARTA', '1984-11-18', '02', '05', 'LK', '30', '', '10', 'BK', '', '7', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(181, 75, 1, 'ADI WUNDRI', '3276021009870015', '', 'JAKARTA', '1987-09-10', '02', '05', 'LK', '27', '', '10', 'BK', '', '7', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(182, 75, 1, 'PINKA ANJANI', '3276026103940011', '', 'BOGOR', '1994-03-21', '02', '05', 'PR', '20', '', '9', 'BK', '', '-', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(183, 76, 1, 'ROHANI VINCER HAREFA', '3276025904460002', '', 'GUNUNG SITOLI', '1946-04-19', '02', '05', 'PR', '68', '', 'PT/10', 'D/J/C', '', '-', 'KK', '2015-03-04', 'YA', 22, '-', '0000-00-00'),
(184, 76, 1, 'TUMBURSINTONG DEUBLES SIREGAR', '3276021512680015', '', 'GUNUNG SITOLI', '1968-12-15', '02', '05', 'LK', '46', '', 'PT/10', 'BK', '', '7', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(185, 76, 1, 'DEWI UDUR MEINA KURNIASIH SIREGAR', '3276027005780010', '', 'SIBOLGA', '1978-05-30', '02', '05', 'PR', '36', '', 'PT/10', 'D/J/C', '', 'PNS 6', 'ANAK', '2015-03-04', 'YA', 30, '-', '0000-00-00'),
(186, 77, 1, 'DAVID HADIYANOTO', '327602102730015', '', 'BOGOR', '1973-02-21', '02', '05', 'LK', '41', '', 'PT/10', 'K', '', 'WIRASWASTA', 'KK', '2015-03-04', 'YA', 29, '-', '0000-00-00'),
(187, 77, 1, 'NOVITA VENTIO T.S', '3276024311720004', '', 'BALIGE', '1972-11-03', '02', '05', 'PR', '42', '', 'PT/10', 'K', '', '-', 'ISTRI', '2015-03-04', 'YA', 30, '-', '0000-00-00'),
(188, 77, 1, 'SAMANTHA AMERYS M.D', '3276026812050013', '', 'JAKARTA', '2005-12-28', '02', '05', 'PR', '9', '', 'SD', 'BK', '', '-', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(189, 77, 1, 'SABRINA AUDREY M.D', '276024709070004', '', 'JAKARTA', '2007-09-07', '02', '05', 'PR', '7', '', 'SD', 'BK', '', '-', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(190, 78, 1, 'BAMBANG HERIYANTO', '3276021203570009', '', 'JAKARTA', '1957-03-12', '02', '05', 'LK', '57', '', '10', 'D/J/C', '', '8', 'KK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(191, 78, 1, 'DWIRAMA RADITYANTO', '3276021806920008', '', 'JAKARTA', '1992-06-18', '02', '05', 'LK', '22', '', '9', 'BK', '', '-', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(192, 79, 1, 'ABDUL CHOTIB', '3276021112550008', '', 'JAKARTA', '1955-12-11', '02', '05', 'LK', '59', '', 'STM', 'K', '', '-', 'KK', '2015-03-04', 'YA', 25, '-', '0000-00-00'),
(193, 79, 1, 'SRI SUNARTI', '3276024505570012', '', 'JAKARTA', '1957-05-05', '02', '05', 'PR', '57', '', 'SMA', 'K', '', 'RT', 'ISTRI', '2015-03-04', '-', 23, '-', '0000-00-00'),
(194, 79, 1, 'NISA WULANDARI', '3276026601820002', '', 'JAKARTA', '1982-01-26', '02', '05', 'PR', '32', '', 'S1', 'K', '', 'SWASTA', 'ANAK', '2015-03-04', 'YA', 27, '-', '0000-00-00'),
(195, 79, 1, 'DINDA BESTARI', '3276026608890010', '', 'JAKARTA', '1989-06-26', '02', '05', 'PR', '25', '', 'SLTA', 'K', '', 'SWASTA', 'ANAK', '2015-03-04', 'YA', 25, '-', '0000-00-00'),
(196, 80, 1, 'YUNAN SURYANA', '3276020504650012', '', 'CIREBON', '1965-04-05', '02', '05', 'LK', '49', '', '10', 'K', '', 'SWASTA', 'KK', '2015-03-04', '-', 0, '-', '0000-00-00'),
(197, 80, 1, 'SRI INDRAYATI', '3276024708640010', '', 'JAKARTA', '1964-08-07', '02', '05', 'PR', '50', '', '10', 'K', '', '-', 'ISTRI', '2015-03-04', '-', 26, '-', '0000-00-00'),
(198, 80, 1, 'YUANDHA INDRA KUSUMAH', '3276022105910005', '', 'JAKARTA', '1991-05-21', '02', '05', 'LK', '23', '', '10', 'BK', '', 'SWASTA', 'ANAK', '2015-03-04', '-', 0, '-', '0000-00-00'),
(199, 80, 1, 'YUNINDERA PUSPASARI', '3276024406940007', '', 'JAKARTA', '1994-06-04', '02', '05', 'PR', '20', '', '9', 'BK', '', '-', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(200, 80, 1, 'YUNINDA RISKA RAMDAH', '3276024402960006', '', 'JAKARTA', '1996-02-04', '02', '05', 'PR', '18', '', '9', 'BK', '', '-', 'ANAK', '2015-03-04', '-', 0, '-', '0000-00-00'),
(201, 80, 1, 'YUNITA SORAYA OKTARIANI', '3276025210010013', '', 'JAKARTA', '2001-10-12', '02', '05', 'PR', '13', '', '5', 'BK', '', '-', 'ANAK', '2015-03-04', '-', 0, '-', '0000-00-00'),
(202, 81, 1, 'IRHAMNA ILHAM MUAZ', '3276021008840015', '', 'JAKARTA', '1984-06-10', '02', '05', 'LK', '30', '', 'S1', 'K', '', 'PNS', 'KK', '2015-03-04', 'YA', 28, '-', '0000-00-00'),
(203, 81, 1, 'STELLA MOUDY WARROUW', '321606651850014', '', 'JAKARTA', '1985-11-25', '02', '05', 'PR', '29', '', 'S1', 'K', '', 'SWASTA', 'ISTRI', '2015-03-04', 'YA', 27, '-', '0000-00-00'),
(204, 81, 1, 'KIRANA FEMINIEE MUAZ', '3276024710130001', '', 'DEPOK', '2013-10-07', '02', '05', 'PR', '1', '', '-', 'BK', '', '-', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(205, 82, 1, 'INDRAYANTO', '3276020812480003', '', 'KLATEN', '1948-12-08', '02', '05', 'LK', '66', '', 'DIII', 'K', '', 'PENSIUN', 'KK', '2015-03-04', '-', 0, '-', '0000-00-00'),
(206, 82, 1, 'PRAPTINI DEWI', '3276026007580006', '', 'YOGYAKARTA', '1958-07-20', '02', '05', 'PR', '56', '', 'DIII', 'K', '', 'PENSIUN', 'ISTRI', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(207, 82, 1, 'ARGA DRAVIDIADI', '3276021309840005', '', 'JAKARTA', '1984-09-13', '02', '05', 'LK', '30', '', 'SLA', 'BK', '', 'SWASTA', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(208, 82, 1, 'SHITA TRISTANI', '3276026807860004', '', 'JAKARTA', '1986-07-28', '02', '05', 'PR', '28', '', 'S1', 'BK', '', 'SWASTA', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(209, 83, 1, 'SOEMARSONO RM', '3276023004490001', '', 'TANGGERANG', '1949-04-30', '02', '05', 'LK', '65', '', '10', 'K', '', '-', 'KK', '2015-03-04', 'TIDAK', 35, '-', '0000-00-00'),
(210, 83, 1, 'WIYULIANI KS', '3276024907590005', '', 'JAKARTA', '1959-07-08', '02', '05', 'PR', '55', '', '10', 'K', '', '-', 'ISTRI', '2015-03-04', 'TIDAK', 25, '-', '0000-00-00'),
(211, 83, 1, 'PERDHANA RACHMAT DEWAJI', '327602403860010', '', 'JAKARTA', '1986-03-24', '02', '05', 'LK', '28', '', '10', 'BK', '', '6', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(212, 83, 1, 'GILANG KRISNA SATRIA', '3276022605870005', '', 'JAKARTA', '1987-05-26', '02', '05', 'LK', '27', '', '10', 'BK', '', '6', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(213, 85, 1, 'TATANG IDRIS', '3276020109440004', '', 'JAKARTA', '1944-09-01', '02', '05', 'LK', '20', '', '8', 'K', '', '8', 'KK', '2015-03-04', '-', 28, '-', '0000-00-00'),
(214, 85, 1, 'ERMA YENTI', '3276025102530002', '', 'PADANG', '1953-02-11', '02', '05', 'PR', '61', '', '6', 'K', '', '-', 'ISTRI', '2015-03-04', '-', 19, '-', '0000-00-00'),
(215, 85, 1, 'FITRIA INDRIYANTI', '3276025510740006', '', 'JAKARTA', '1974-10-15', '02', '05', 'PR', '40', '', '8', 'D/J/C', '', '-', 'ANAK', '2015-03-04', '-', 23, '-', '0000-00-00'),
(216, 85, 1, 'PUTRI C. INDRIYANTI', '3276026321910007', '', 'JAKARTA', '1991-12-23', '02', '05', 'PR', '23', '', '8', 'BK', '', '-', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(217, 85, 1, 'MOH. ADNA RESPATI', '3276020200930005', '', 'JAKARTA', '1993-06-02', '02', '05', 'LK', '21', '', '8', 'BK', '', '-', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(218, 85, 1, 'HUGO ANTONIO WILEM', '3276020605980006', '', 'JAYAPURA', '1998-05-06', '02', '05', 'LK', '16', '', '7', 'BK', '', '-', 'LL', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(219, 85, 1, 'CLARISSA DAMAYANTI I', '327602550030014', '', 'JAKARTA', '2003-06-15', '02', '05', 'PR', '11', '', '3', 'BK', '', '-', 'LL', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(221, 87, 1, 'EDI FERNANDI', '3276022701580003', '', 'MANINJAU', '1958-01-27', '02', '05', 'LK', '', '', 'S1', 'K', '', 'SWASTA', 'KK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(222, 87, 1, 'EFA SUSANTI', '3276024208650007', '', 'BUKIT TINGGI', '1965-08-02', '02', '05', 'PR', '', '', 'S1', 'K', '', 'SWASTA', 'ISTRI', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(223, 87, 1, 'WENU ELSEFADIANTI', '3276024304880013', '', 'JAKARTA', '1988-04-03', '02', '05', 'PR', '', '', 'S1', 'BK', '', 'SWASTA', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(224, 87, 1, 'M. BAYU MARADIFA', '3276022903940007', '', 'JAKARTA', '1994-03-29', '02', '05', 'LK', '', '', 'SLTA', 'BK', '', '-', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(226, 89, 1, 'AGUS HARYANTO', '111', 'ISLAM', 'BANYUMAS', '1990-02-20', '03', '05', 'LK', '', '', '9', 'BK', '', '4', 'KK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(227, 90, 1, 'RUSMINI', '01', 'ISLAM', 'GOMBONG', '1949-08-13', '02', '05', 'PR', '', '', '6', 'D/J/C', '', '-', 'KK', '2015-03-04', 'TIDAK', 0, '-', '0000-00-00'),
(228, 90, 1, 'BUDI ROSANTO', '01', 'ISLAM', 'BOGOR', '1968-07-30', '02', '05', 'PR', '', '', '1', 'BK', '', '-', 'ANAK', '2015-03-04', 'YA', 0, '-', '0000-00-00'),
(229, 91, 1, 'JOHAN HENDRIK', '3276021003530005', 'ISLAM', 'JAKARTA', '1953-03-10', '02', '05', 'LK', '', '', '8', 'K', '', '-', 'KK', '2015-03-05', '-', 0, '-', '0000-00-00'),
(230, 91, 1, 'RUSTIATI', '3276025001550004', 'ISLAM', 'MEDAN', '1955-01-10', '02', '05', 'PR', '', '', '8', 'K', '', '8', 'ISTRI', '2015-03-05', '-', 0, '-', '0000-00-00'),
(231, 91, 1, 'RINALDI ANGGORO', '3276022711810005', 'ISLAM', 'JAKARTA', '1981-11-27', '02', '05', 'LK', '', '', '8', 'BK', '', '6', 'ANAK', '2015-03-05', '-', 0, '-', '0000-00-00'),
(232, 91, 1, 'RIFKI ANGGRAENI', '32760226902870009', 'ISLAM', 'JAKARTA', '1984-07-29', '02', '05', 'PR', '', '', '10', 'K', '', '6', 'ANAK', '2015-03-05', '-', 0, '-', '0000-00-00'),
(233, 91, 1, 'RULI ALFARIS', '3276020902870009', 'ISLAM', 'JAKARTA', '1987-02-09', '02', '05', 'LK', '', '', '8', 'BK', '', '6', 'ANAK', '2015-03-05', '-', 0, '-', '0000-00-00'),
(234, 91, 1, 'LAKEYSHA ZHAFIRA A', '3276024110090002', 'ISLAM', 'JAKARTA', '2009-10-01', '02', '05', 'PR', '', '', '-', 'BK', '', '-', 'LL', '2015-03-05', '-', 0, '-', '0000-00-00'),
(235, 92, 1, 'SYARIFUDIN PODUNGGE', '3276021405480002', 'ISLAM', 'GORONTALO', '1948-05-14', '02', '05', 'LK', '', '', '10', 'K', '', '8', 'KK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(236, 92, 1, 'NURAINI DUNDA', '3276024105540007', 'ISLAM', 'GORONTALO', '1954-05-01', '02', '05', 'PR', '', '', '4', 'K', '', '-', 'ISTRI', '2015-03-05', 'TIDAK', 0, '-', '0000-00-00'),
(237, 92, 1, 'SUSANA', '3276021211960009', 'ISLAM', 'JAKARTA', '1996-11-12', '02', '05', 'PR', '', '', '9', 'BK', '', '-', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(238, 93, 1, 'RIAN PRAWIRA SUFANI', '3276022603810010', 'ISLAM', 'SORONG', '1981-03-26', '02', '05', 'LK', '', '', '10', 'K', '', '6', 'KK', '2015-03-05', 'YA', 24, '-', '0000-00-00'),
(239, 93, 1, 'KARTINI PODUNGGE', '3276025704810012', 'ISLAM', 'JAKARTA', '0000-00-00', '02', '05', 'PR', '', '', '10', 'K', '', '4', 'ISTRI', '2015-03-05', 'YA', 24, '-', '0000-00-00'),
(240, 93, 1, 'BILQIS FELITA RASYA', '3276026108070002', 'ISLAM', 'JAKARTA', '2007-07-21', '02', '05', 'PR', '', '', '3', 'BK', '', '-', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(241, 93, 1, 'JIHAN DZAKIYAH RASYA', '3276025005090005', 'ISLAM', 'JAKARTA', '2009-05-10', '02', '05', 'PR', '', '', '3', 'BK', '', '-', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(242, 94, 1, 'B. BOEDHIYONO', '3276020808520011', 'ISLAM', 'JAKARTA', '1952-08-08', '02', '05', 'LK', '', '', '10', 'K', '', '8', 'KK', '2015-03-05', 'TIDAK', 32, '-', '0000-00-00'),
(243, 94, 1, 'SUPRIYATI', '3276026808580012', 'ISLAM', 'JAKARTA', '1958-08-28', '02', '05', 'PR', '', '', '10', 'K', '', '8', 'ISTRI', '2015-03-05', 'TIDAK', 26, '-', '0000-00-00'),
(244, 94, 1, 'RIZKA PRISTANTI B', '3276027110840014', 'ISLAM', 'JAKARTA', '1984-10-31', '02', '05', 'PR', '', '', '10', 'K', '', '6', 'ANAK', '2015-03-05', 'YA', 25, '-', '0000-00-00'),
(245, 94, 1, 'JASON SATRIO', '327602102110003', 'ISLAM', 'ROYAI INFIRMARY EDINBURGH', '2011-02-21', '02', '05', 'LK', '', '', '1', 'BK', '', '-', 'LL', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(246, 95, 1, 'RANGGA RAHMANA DWI', '3276021212860020', 'ISLAM', 'BOGOR', '1986-12-12', '02', '05', 'LK', '', '', '10', 'K', '', '6', 'KK', '2015-03-05', 'YA', 25, '-', '0000-00-00'),
(247, 95, 1, 'DEWI PUSPITA SARI', '3276024603870013', 'ISLAM', 'JAKARTA', '1987-03-06', '02', '05', 'PR', '', '', '10', 'K', '', '-', 'ISTRI', '2015-03-05', 'YA', 25, '-', '0000-00-00'),
(248, 95, 1, 'ALISHATARA SAFIA RAHMA', '3276026209130010', 'ISLAM', 'DEPOK', '2013-09-22', '02', '05', 'PR', '', '', '1', 'BK', '', '-', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(249, 96, 1, 'ANDAN BAYU WISNU AJI', '0101010', 'ISLAM', 'KEBUMEN', '1974-09-13', '02', '05', 'LK', '', '', '10', 'K', '', '7', 'KK', '2015-03-05', 'YA', 29, '-', '0000-00-00'),
(250, 96, 1, 'HICHMAH MELINI', '011010', 'ISLAM', 'JAKARTA', '1983-06-15', '02', '05', 'PR', '', '', '8', 'K', '', '-', 'ISTRI', '2015-03-05', 'YA', 21, '-', '0000-00-00'),
(251, 96, 1, 'HENESSYA NATHALINE W.', '080808', 'ISLAM', 'JAKARTA', '2006-09-01', '02', '05', 'PR', '', '', '3', 'BK', '', '-', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(252, 96, 1, 'HAGIA KIRANA W.', '0808086', 'ISLAM', 'DEPOK', '2011-04-30', '02', '05', 'PR', '', '', '1', 'BK', '', '-', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(253, 97, 1, 'SRI ISDARDI YARSITO , SH', '327602312710002', 'ISLAM', 'JAKARTA', '1971-12-23', '02', '05', 'LK', '', '', 'PT', 'BK', '', 'ADVOKET', 'KK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(254, 98, 1, 'SOEDJARWOTO', '3276022702080246', 'ISLAM', 'PALEMBANG', '1946-06-16', '02', '05', 'LK', '', '', '8', 'K', '', '-', 'KK', '2015-03-05', '-', 25, '-', '0000-00-00'),
(255, 98, 1, 'YULIATI', '08080', 'ISLAM', 'YOGYAKARTAYOGYAKARTA', '1948-07-05', '02', '05', 'PR', '', '', '8', 'K', '', '-', 'ISTRI', '2015-03-05', '-', 27, '-', '0000-00-00'),
(256, 98, 1, 'OKA BUDI PRASTAMA', '07070', 'ISLAM', 'YOGYAKARTA', '1975-10-28', '02', '05', 'LK', '', '', '9', 'BK', '', '6', 'ANAK', '2015-03-05', '-', 0, '-', '0000-00-00'),
(257, 98, 1, 'RENY DINDA HAPSARI', '070755', 'ISLAM', 'BALIKPAPAN', '1980-07-23', '02', '05', 'PR', '', '', '8', 'BK', '', '-', 'LL', '2015-03-05', '-', 0, '-', '0000-00-00'),
(258, 99, 1, 'DWI UTOMO ENDRIASWORO', '3276020403800009', 'ISLAM', 'JAKARTA', '1980-03-04', '02', '05', 'LK', '', '', '10', 'K', '', '6', 'KK', '2015-03-05', 'YA', 6, '-', '0000-00-00'),
(259, 99, 1, 'SOFIA WARDHANI', '3276026306820014', 'ISLAM', 'MERAUKE', '1982-06-23', '02', '05', 'PR', '', '', '10', 'K', '', '6', 'ISTRI', '2015-03-05', 'YA', 6, '-', '0000-00-00'),
(260, 99, 1, 'MUHAMMAD AZKA ALFATIH', '000001', 'ISLAM', 'JAKARTA', '2014-04-14', '02', '05', 'LK', '', '', '-', 'BK', '', '-', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(261, 100, 1, 'SRI SARDIYANTI', '3276027110500002', 'ISLAM', 'SOLO', '1950-10-31', '03', '05', 'PR', '', '', '8', 'D/J/C', '', '7', 'KK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(262, 101, 1, 'SUGENG BUDIJONO', '3276021803530006', 'ISLAM', 'KEDIRI', '1953-03-18', '02', '05', 'LK', '', '', 'S1', 'K', '', 'PENSIUN', 'KK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(263, 101, 1, 'SITI HAMIDAH', '3276026001580007', 'ISLAM', 'JAKARTA', '1958-10-20', '02', '05', 'PR', '', '', 'SLTA', 'K', '', 'IRT', 'ISTRI', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(264, 101, 1, 'RISCA DWI AMBARSARI', '3276025711800014', 'ISLAM', 'JAKARTA', '1980-11-17', '02', '05', 'PR', '', '', 'S1', 'D/J/C', '', 'SWASTA', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(265, 101, 1, 'RENDIECA TRI BUDIDHARMA', '3276021707860011', 'ISLAM', 'BOGOR', '1986-07-17', '02', '05', 'LK', '', '', 'S1', 'BK', '', 'SWASTA', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(266, 101, 1, 'TREDIVO BUDI MAURETTO', '3276021606020001', 'ISLAM', 'JAKARTA', '2002-06-16', '02', '05', 'LK', '', '', 'SMP', 'BK', '', '-', 'LL', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(267, 101, 1, 'DAFADHILA BUDI ZELANG R', '3276020810040001', 'ISLAM', 'JAKARTA', '2004-10-08', '02', '05', 'LK', '', '', 'SD', 'BK', '', '-', 'LL', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(268, 102, 1, 'ERRY BUDI HARTANTO', '3276022504780005', 'ISLAM', 'JAKARTA', '1978-04-25', '02', '05', 'LK', '', '', 'S1', 'K', '', 'SWASTA', 'KK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(269, 102, 1, 'MAYA UIDIANA', '3276024106820044', 'ISLAM', 'SURABAYA', '1982-06-01', '02', '05', 'PR', '', '', 'SLTA', 'K', '', 'IRT', 'ISTRI', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(270, 102, 1, 'KAI KALA KALANI', '3276026708020012', 'ISLAM', 'JAKARTA', '2002-08-27', '02', '05', 'PR', '', '', 'SMP', 'BK', '', '-', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(271, 102, 1, 'NABEEL DWIPUTRA BUDI F.', '3276021509050014', 'ISLAM', 'JAKARTA', '2005-09-15', '02', '05', 'LK', '', '', 'SD', 'BK', '', '-', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(272, 102, 1, 'GIOPARUES ANDRYUI BUDI Z.', '3276021105070005', 'ISLAM', 'JAKARTA', '2007-05-11', '02', '05', 'LK', '', '', 'SD', 'BK', '', '-', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(273, 102, 1, 'ZAFIRA RAISA NAYYARA PR.', '3276024712090002', 'ISLAM', 'BEKASI', '2009-12-07', '02', '05', 'PR', '', '', 'TK', 'BK', '', '-', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(274, 102, 1, 'SETYO PUGUH PRIYO UTOMO', '3276021405670003', 'ISLAM', 'KEDIRI', '1967-05-14', '02', '05', 'LK', '', '', 'SLTA', 'BK', '', 'SWASTA', 'LL', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(275, 103, 1, 'SLAMET IBRAHIM', '3276021302480001', 'ISLAM', 'SOLO', '1948-02-13', '02', '05', 'LK', '', '', '10', 'K', '', '8', 'KK', '2015-03-05', 'YA', 25, '-', '0000-00-00'),
(276, 103, 1, 'SILFIAH', '3276026108490003', 'ISLAM', 'BANDUNG', '1949-08-21', '02', '05', 'PR', '', '', '10', 'K', '', '8', 'ISTRI', '2015-03-05', 'YA', 23, '-', '0000-00-00'),
(277, 103, 1, 'FITRIASARI', '3276024412780009', 'ISLAM', 'BANDUNG', '1978-12-04', '02', '05', 'PR', '', '', '10', 'D/J/C', '', '6', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(278, 103, 1, 'RYUKA ZELIA BATRESYA', '000003', 'ISLAM', 'DEPOK', '2010-07-06', '02', '05', 'PR', '', '', '-', 'BK', '', '-', 'LL', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(279, 104, 1, 'I MADE ARDITA', '3276020907530006', 'ISLAM', 'BALI', '1953-07-09', '02', '05', 'LK', '', '', 'S1', 'K', '', 'PENSIUN', 'KK', '2015-03-05', 'YA', 36, '-', '0000-00-00'),
(280, 104, 1, 'YETTY SAID', '3276026810580011', 'ISLAM', 'CILACAP', '1958-10-28', '02', '05', 'PR', '', '', 'S1', 'K', '', 'SWASTA', 'ISTRI', '2015-03-05', 'YA', 36, '-', '0000-00-00'),
(281, 104, 1, 'ANDRE T.B. SIANIPAR', '3276021209840010', 'ISLAM', 'SLEMAN', '1984-12-09', '02', '05', 'LK', '', '', 'S1', 'BK', '', 'KKY SWT', 'LL', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(282, 105, 1, 'HARTO, ST', '3276020709780009', 'ISLAM', 'CILACAP', '1978-09-07', '02', '05', 'LK', '', '', '10', 'K', '', '6', 'KK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(283, 105, 1, 'MADE GITHA MALVINA', '3276026905820010', 'ISLAM', 'JAKARTA', '1982-05-29', '02', '05', 'PR', '', '', '10', 'K', '', '6', 'ISTRI', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(284, 105, 1, 'HADE RIZKI ABIYAN', '000004', 'ISLAM', 'JAKARTA', '2007-08-26', '02', '05', 'LK', '', '', '3', 'BK', '', '-', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00');
INSERT INTO `tbl_t_penduduk` (`id_penduduk`, `id_kk`, `id_status_penduduk`, `nama`, `no_penduduk`, `agama`, `tmpt_lahir`, `tgl_lahir`, `rt`, `rw`, `jenis_kelamin`, `usia`, `gol_darah`, `pendidikan`, `status_pernikahan`, `status_sosial`, `pekerjaan`, `status_dalam_keluarga`, `tanggal_input`, `akte`, `usia_kawin_pertama`, `tempat_tinggal`, `tgl_kematian`) VALUES
(285, 106, 1, 'B. CATUR HARRYANTO', '3276020508640007', 'ISLAM', 'JAKARTA', '1964-08-05', '02', '05', 'LK', '', '', '10', 'K', '', '7', 'KK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(286, 106, 1, 'DEWI MUNINGGAR', '3276024810670008', 'ISLAM', 'JAKARTA', '1967-10-08', '02', '05', 'PR', '', '', '10', 'K', '', '0', 'ISTRI', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(287, 106, 1, 'NADIFA DEWINTA DANASTRI', '3276026604930009', 'ISLAM', 'JAKARTA', '1993-04-26', '02', '05', 'PR', '', '', '9', 'BK', '', '-', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(288, 106, 1, 'ALDI RAFLI NURACHMAN', '3276022906980007', 'ISLAM', 'JAKARTA', '1998-06-29', '02', '05', 'LK', '', '', '7', 'BK', '', '-', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(289, 106, 1, 'RETNO ASTUTI', '3276026903410001', 'ISLAM', 'NGAWI', '1941-03-29', '02', '05', 'PR', '', '', '-', 'D/J/C', '', '-', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(290, 107, 1, 'ROESBAGYO DWI SUTARTO', '3276020209550006', 'ISLAM', 'SOLO', '1955-09-02', '02', '05', 'LK', '', '', 'D4', 'K', '', 'PENSIUN', 'KK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(291, 107, 1, 'RICESTARI', '3276025905550008', 'ISLAM', 'NGAWI', '1955-05-19', '02', '05', 'PR', '', '', 'D3', 'K', '', 'PENSIUN', 'ISTRI', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(292, 107, 1, 'RIYO DWIPONUGROHO', '3276022811870008', 'ISLAM', 'JAKARTA', '1987-11-28', '02', '05', 'LK', '', '', 'S1', 'BK', '', 'WIRAUSAHA', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(293, 107, 1, 'DANDUNG TRIHATMOJO', '3276020409890007', 'ISLAM', 'JAKARTA', '1989-09-04', '02', '05', 'LK', '', '', 'D3', 'BK', '', 'SWASTA', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(294, 108, 1, 'HARI AGUS PRASTOWO', '3521091108680003', 'ISLAM', 'NGAWI', '1968-08-11', '02', '05', 'LK', '', '', '10', 'K', '', '7', 'KK', '2015-03-05', 'TIDAK', 0, '-', '0000-00-00'),
(295, 108, 1, 'ENDANG PUJI ASTUTI', '3276026201690003', 'ISLAM', 'NGAWI', '1969-01-22', '02', '05', 'PR', '', '', '10', 'K', '', '6', 'ISTRI', '2015-03-05', 'TIDAK', 0, '-', '0000-00-00'),
(296, 108, 1, 'AUGIE NAURAH YUMNA PRASTUTI', '3276026107060012', 'ISLAM', 'JAKARTA', '2006-07-21', '02', '05', 'PR', '', '', '3', 'BK', '', '-', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(297, 108, 1, 'ABRAR SARDY WIROYUDHO', '3276020108090002', 'ISLAM', 'JAKARTA', '2009-08-01', '02', '05', 'LK', '', '', '1', 'BK', '', '-', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(298, 109, 1, 'MM SUDARINI UTAMI', '3276025707480002', 'ISLAM', 'SOLO', '1948-07-17', '02', '05', 'PR', '', '', 'SLTA', 'D/J/C', '', '-', 'KK', '2015-03-05', 'YA', 28, '-', '0000-00-00'),
(299, 109, 1, 'FX BIMOSUHARYANTO', '3276020509780010', 'ISLAM', 'JAKARTA', '1978-09-05', '02', '05', 'LK', '', '', 'S2', 'BK', '', '-', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(300, 109, 1, 'TH ENDANG T', '3276026205830012', 'ISLAM', 'JAKARTA', '1983-05-22', '02', '05', 'PR', '', '', 'D3', 'BK', '', 'SWASTA', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(301, 109, 1, 'ME RINI P', '3276026409860008', 'ISLAM', 'BOGOR', '1986-09-24', '02', '05', 'PR', '', '', 'D3', 'BK', '', 'SWASTA', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(302, 110, 1, 'IIQ AZHAR NUR CAHYO', '3276020412760014', 'ISLAM', 'TUBAN', '1976-12-04', '02', '05', 'LK', '', '', '10', 'K', '', '6', 'KK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(303, 110, 1, 'ZAKIAH HARIS K', '3276026907800011', 'ISLAM', 'MAGETAN', '1980-07-29', '02', '05', 'PR', '', '', '10', 'K', '', '6', 'ISTRI', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(304, 110, 1, 'NAN AKHLA', '3276026307070010', 'ISLAM', 'ABHA', '2007-07-23', '02', '05', 'PR', '', '', '3', 'BK', '', '-', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(305, 110, 1, 'SALMAN', '3276020910080007', 'ISLAM', 'MAGETAN', '2008-10-09', '02', '05', 'LK', '', '', '3', 'BK', '', '-', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(306, 110, 1, 'HISYAM', '000006', 'ISLAM', 'DEPOK', '2014-10-23', '02', '05', 'LK', '', '', '-', 'BK', '', '-', 'ANAK', '2015-03-05', 'TIDAK', 0, '-', '0000-00-00'),
(307, 110, 1, 'NURHAYATI', '000007', 'ISLAM', 'MAGETAN', '0000-00-00', '02', '05', 'PR', '', '', '-', 'D/J/C', '', '-', 'LL', '2015-03-05', 'TIDAK', 0, '-', '0000-00-00'),
(308, 111, 1, 'SARONI', '3276025503600018', 'ISLAM', 'GORONTALO', '1960-03-15', '03', '05', 'LK', '', '', '10', 'K', '', '0', 'KK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(309, 111, 1, 'RAMADHAN TRI PUTRA H.', '3276022103910017', 'ISLAM', 'JAKARTA', '1991-03-21', '03', '05', 'LK', '', '', '10', 'BK', '', '6', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(310, 112, 1, 'ADE RU\'YATUL MUTTAQIN', '1809012803830003', 'ISLAM', 'LAMPUNG', '1983-03-28', '02', '05', 'LK', '', '', '10', 'K', '', '6', 'KK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(311, 112, 1, 'MARIYANI MARHARETTA', '3276024403850008', 'ISLAM', 'JAKARTA', '1985-03-04', '02', '05', 'PR', '', '', '10', 'K', '', '6', 'ISTRI', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(312, 112, 1, 'KHANSA ADHWA ZHAFIRA', '000008', 'ISLAM', 'JAKARTA', '2014-03-14', '02', '05', 'PR', '', '', '-', 'BK', '', '-', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(313, 113, 1, 'WIDAGDO WIYONO', '3275041807560012', 'ISLAM', 'SURABAYA', '1956-06-18', '02', '05', 'LK', '', '', '10', 'D/J/C', '', '4', 'KK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(314, 113, 1, 'RAHAJENG AMITHA', '3275044610880018', 'ISLAM', 'JAKARTA', '1988-10-06', '02', '05', 'PR', '', '', '10', 'BK', '', '7', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(315, 113, 1, 'GANENDRAJATI', '3275044020490016', 'ISLAM', 'JAKARTA', '1990-02-04', '02', '05', 'LK', '', '', '10', 'BK', '', '6', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(316, 114, 1, 'SRI SARJANTI', '3276025102440001', 'ISLAM', 'WONOGIRI', '1944-02-11', '02', '05', 'PR', '', '', '10', 'BK', '', '0', 'KK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(317, 114, 1, 'RUKINAH', '3276026705560004', 'ISLAM', 'WONOSARI', '1956-05-27', '02', '05', 'PR', '', '', '2', 'BK', '', '-', 'LL', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(318, 115, 1, 'MOH. ANSHARY ATJO', '3276022907540005', 'ISLAM', 'SENGKANG', '1954-07-29', '02', '05', 'LK', '', '', '10', 'K', '', '8', 'KK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(319, 115, 1, 'SRI SAMWIDARWATI', '3276024108510005', 'ISLAM', 'PACITAN', '1951-08-01', '02', '05', 'PR', '', '', '10', 'K', '', '8', 'ISTRI', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(320, 116, 1, 'ARIE HANGGA FITRIANSYAH', '1671100906850004', 'ISLAM', 'PALEMBANG', '1985-06-09', '02', '05', 'LK', '', '', '10', 'K', '', '4', 'KK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(321, 116, 1, 'RUNI ASTARI', '3276027101860009', 'ISLAM', 'JAKARTA', '1986-01-31', '02', '05', 'PR', '', '', '10', 'K', '', '4', 'ISTRI', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(322, 116, 1, 'ARKIANA VADYASHAKI', '3276026710120005', 'ISLAM', 'DEPOK', '2012-10-27', '02', '05', 'PR', '', '', '1', 'BK', '', '0', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(323, 117, 1, 'I. DEWA MADE MARDIKA', '3276021408490002', 'ISLAM', 'TABANAN', '1949-08-14', '01', '05', 'LK', '', '', '8', 'K', '', '10', 'KK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(324, 117, 1, 'A.A. ISTRI WIDYASTUTI S.', '3276024802610002', 'ISLAM', 'BALI', '1961-02-08', '01', '05', 'PR', '', '', '10', 'K', '', '4', 'ISTRI', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(325, 117, 1, 'DESAK PUTU RISTAMI P.', '3276027103860001', 'ISLAM', 'BOGOR', '1986-03-31', '01', '05', 'PR', '', '', '10', 'K', '', '4', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(326, 117, 1, 'DEWA MADE YOGA', '3276020507930011', 'ISLAM', 'JAKARTA', '1993-07-05', '01', '05', 'LK', '', '', '9', 'BK', '', '9', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(327, 118, 1, 'BAMBANG PRAYITNO', '3276021003550002', 'ISLAM', 'GOMBONG', '1955-03-10', '01', '05', 'LK', '', '', '10', 'K', '', '6', 'KK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(328, 118, 1, 'ENDANG SRI SISWANTI', '3276024310580001', 'ISLAM', 'PONOROGO', '1958-10-03', '01', '05', 'PR', '', '', '10', 'K', '', '4', 'ISTRI', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(329, 118, 1, 'HAYATUN NA\'IMAH', '3276027108800003', 'ISLAM', 'PONOROGO', '1980-08-31', '01', '05', 'PR', '', '', '10', 'K', '', '9', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(330, 118, 1, 'BAYU SATWIKO PRAYITNO', '3276021710830002', 'ISLAM', 'JAKARTA', '1983-10-17', '01', '05', 'LK', '', '', '10', 'BK', '', '6', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(331, 119, 1, 'ABDILLAH ZAINAL', '3276020511810019', 'ISLAM', 'JAKARTA', '1981-11-05', '01', '05', 'LK', '', '', '10', 'K', '', '06', 'KK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(332, 119, 1, 'PENI PANTURA', '3276026508820013', 'ISLAM', 'BANGKA', '1982-08-25', '01', '05', 'PR', '', '', '10', 'K', '', '6', 'ISTRI', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(333, 119, 1, 'RAYASYA FATIHAH A.', '3276025210070002', 'ISLAM', 'JAKARTA', '2007-10-12', '01', '05', 'PR', '', '', '3', 'BK', '', '0', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(334, 119, 1, 'RUMAISYA FAAIZAH A.', '3276024705130003', 'ISLAM', 'JAKARTA', '2013-05-07', '01', '05', 'PR', '', '', '1', 'BK', '', '0', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(335, 120, 1, 'FEBRY N NURMANDA', '3276022002820002', 'ISLAM', 'JAKARTA', '1982-02-20', '003', '005', 'LK', '', '', 'S1', 'K', '', '-', 'KK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(336, 120, 1, 'RENI MARDHIANI', '3276026802800016', 'ISLAM', 'SUKABUMI', '1980-02-28', '003', '005', 'PR', '', '', 'S1', 'K', '', '-', 'ISTRI', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(337, 120, 1, 'JASMINE LATIFAH N', '3276025911100009', 'ISLAM', 'TANGERANG', '2010-11-19', '003', '005', 'PR', '', '', 'TK', 'BK', '', '-', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(338, 120, 1, 'FAKHRI HASAN ALTAMIS', '3276020803140001', 'ISLAM', 'TANGERANG', '2014-03-08', '003', '005', 'LK', '', '', '-', 'BK', '', '-', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(339, 121, 1, 'KUSLAN BUDIMAN', '3276020508600002', 'ISLAM', 'GOMBONG', '1960-08-05', '01', '05', 'LK', '', '', '10', 'K', '', '5', 'KK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(340, 121, 1, 'RESTUTI', '3276024707600001', 'ISLAM', 'PEKANBARU', '1960-07-07', '01', '05', 'PR', '', '', '10', 'K', '', '8', 'ISTRI', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(341, 121, 1, 'PUJI IRAWADI', '3276021006840001', 'ISLAM', 'PEKANBARU', '1984-06-10', '01', '05', 'LK', '', '', '10', 'BK', '', '6', 'LL', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(342, 121, 1, 'NUNGKY RACHMA', '3276024201860002', 'ISLAM', 'JAKARTA', '1986-01-02', '01', '05', 'PR', '', '', '10', 'K', '', '6', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(343, 121, 1, 'WIDYA TRI UTAMI', '3276026910910001', 'ISLAM', 'JAKARTA', '1991-10-29', '01', '05', 'PR', '', '', '10', 'BK', '', '6', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(344, 121, 1, 'PUTRI MERIANA', '1471115405920001', 'ISLAM', 'PEKANBARU', '1992-05-14', '01', '05', 'PR', '', '', '10', 'BK', '', '9', 'LL', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(345, 122, 1, 'IMAM ROSIDI', '3276021909680001', 'ISLAM', 'BREBES', '1968-09-19', '003', '005', 'LK', '', '', 'S2', 'K', '', 'PNS', 'KK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(346, 122, 1, 'ELIS HIDAYAWATI', '3276024602730003', 'ISLAM', 'TASIKMALAYA', '1973-02-06', '003', '005', 'PR', '', '', 'S1', 'K', '', 'IRT', 'ISTRI', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(347, 122, 1, 'SYIFA MAULIDA', '3276025906990002', 'ISLAM', 'JAKARTA', '1999-06-19', '003', '005', 'PR', '', '', 'SMA', 'BK', '', 'PELAJAR', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(348, 122, 1, 'M. HAEKAL KHOWARIZMI', '3276020107000001', 'ISLAM', 'JAKARTA', '2000-07-01', '003', '005', 'LK', '', '', 'SMP', 'BK', '', 'PELAJAR', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(349, 122, 1, 'KHANSA KHAIRUNNISA', '3276026906060002', 'ISLAM', 'JAKARTA', '2006-06-29', '003', '005', 'PR', '', '', 'SD', 'BK', '', 'PELAJAR', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(350, 123, 1, 'PRAYOGA TRESNA CITRAYADI', '3276022405810018', 'ISLAM', 'MAJALENGKA', '1981-05-24', '01', '05', 'LK', '', '', '10', 'K', '', '6', 'KK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(351, 123, 1, 'INDAH BESTARI', '3276025009840001', 'ISLAM', 'JAKARTA', '1984-09-10', '01', '05', 'PR', '', '', '10', 'K', '', '4', 'ISTRI', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(352, 124, 1, 'HIDAYAT', '3175051104490001', 'ISLAM', 'YOGYAKARTA', '1949-04-11', '003', '005', 'LK', '', '', 'SMA', 'K', '', 'SWASTA', 'KK', '2015-03-05', 'TIDAK', 0, '-', '0000-00-00'),
(353, 124, 1, 'POPPY INDRAWATI', '3175057103540001', 'ISLAM', 'MADIUN', '1954-03-31', '003', '005', 'PR', '', '', 'D4', 'K', '', 'IRT', 'ISTRI', '2015-03-05', 'TIDAK', 0, '-', '0000-00-00'),
(354, 124, 1, 'NOOR HINDRAWATI', '3175050512830005', 'ISLAM', 'JAKARTA', '1983-12-05', '003', '005', 'PR', '', '', 'D4', 'K', '', 'PNS', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(355, 124, 1, 'NOOR JAYANTI', '3175056807860005', 'ISLAM', 'JAKARTA', '1986-07-28', '003', '005', 'LK', '', '', 'S1', 'BK', '', 'SWASTA', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(356, 125, 1, 'DARWANTO', '3276022812490001', 'ISLAM', 'SOLO', '1949-12-28', '01', '05', 'LK', '', '', '8', 'D/J/C', '', '0', 'KK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(357, 125, 1, 'UR SUSILO WIBOWO', '3276020905700012', 'ISLAM', 'SOLO', '1970-05-09', '01', '05', 'LK', '', '', '10', 'K', '', '9', 'LL', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(358, 125, 1, 'TJAHYO ADI WIBOWO', '3276021204720022', 'ISLAM', 'SOLO', '1972-04-12', '01', '05', 'LK', '', '', '10', 'K', '', '9', 'LL', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(359, 125, 1, 'KURNIASIH DEWANTI', '3276025012870002', 'ISLAM', 'JAKARTA', '1987-12-10', '01', '05', 'PR', '', '', '10', 'BK', '', '9', 'ANAK', '2015-03-05', 'YA', 0, '-', '0000-00-00'),
(360, 126, 1, 'NURHAYATI', '3276027101500004', 'ISLAM', 'JAKARTA', '1950-01-31', '01', '05', 'PR', '', '', '10', 'D/J/C', '', '0', 'KK', '2015-03-06', 'YA', 0, '-', '0000-00-00'),
(361, 126, 1, 'ULLI MAULIANA HARUN', '3276025401800011', 'ISLAM', 'JAKARTA', '1980-01-14', '01', '05', 'PR', '', '', '10', 'D/J/C', '', '0', 'ANAK', '2015-03-06', 'YA', 0, '-', '0000-00-00'),
(362, 126, 1, 'M. RAFLI RASJID', '3276022707010001', 'ISLAM', 'JAKARTA', '2001-07-27', '01', '05', 'LK', '', '', '5', 'BK', '', '0', 'LL', '2015-03-06', 'YA', 0, '-', '0000-00-00'),
(363, 126, 1, 'M. REZA PAHLEVI', '3276022406030002', 'ISLAM', 'JAKARTA', '2003-06-24', '01', '05', 'LK', '', '', '3', 'BK', '', '0', 'LL', '2015-03-06', 'YA', 0, '-', '0000-00-00'),
(364, 127, 1, 'APRIYADI FAHRI AHYANI', '3276020804780001', 'ISLAM', 'JAKARTA', '1978-04-08', '01', '05', 'LK', '', '', '10', 'K', '', '6', 'KK', '2015-03-06', 'YA', 0, '-', '0000-00-00'),
(365, 127, 1, 'NADIA DEWI SARAH', '3276024711780003', 'ISLAM', 'JAKARTA', '1978-11-07', '01', '05', 'PR', '', '', '10', 'K', '', '6', 'ISTRI', '2015-03-06', 'YA', 0, '-', '0000-00-00'),
(366, 127, 1, 'SYAFIA AZZAHRA AHYANI P.', '3276026301070014', 'ISLAM', 'JAKARTA', '2007-01-23', '01', '05', 'PR', '', '', '3', 'BK', '', '0', 'ANAK', '2015-03-06', 'YA', 0, '-', '0000-00-00'),
(367, 127, 1, 'RAYHAN AL GAZHALI A.P.', '3276021410110001', 'ISLAM', 'JAKARTA', '2011-10-14', '01', '05', 'LK', '', '', '0', 'BK', '', '0', 'ANAK', '2015-03-06', 'YA', 0, '-', '0000-00-00'),
(368, 128, 1, 'H.ABDUL RACHMAN', '3276061011500005', 'ISLAM', 'JAKARTA', '1950-11-10', '03', '05', 'LK', '', '', '-', 'K', '', '-', 'KK', '2015-03-06', 'YA', 0, '-', '0000-00-00'),
(369, 128, 1, 'NYINAS ZAENAB', '3276065406430003', 'ISLAM', 'JAKARTA', '1943-06-14', '03', '05', 'PR', '', '', '-', 'K', '', '-', 'ISTRI', '2015-03-06', 'YA', 0, '-', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_upload`
--

CREATE TABLE `tbl_upload` (
  `no_penduduk` int(25) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `foto_ktp` varchar(100) NOT NULL,
  `foto_akta` varchar(100) NOT NULL,
  `foto_kk` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_upload`
--

INSERT INTO `tbl_upload` (`no_penduduk`, `nama`, `foto_ktp`, `foto_akta`, `foto_kk`) VALUES
(1, 'a', '1.png', '', ''),
(2, 'wsw', '1.png', '', '2.png'),
(3, 'dsd', '1.png', 'beli.jpg', '2.png'),
(4, 'sss', '1.png', 'beli.jpg', ''),
(5, 'maulina', '', 'beli.jpg', '2.png'),
(8, 'vvv', 'IMG_20150806_102125.jpg', '', ''),
(829, 'Rivan', '', '', '2.png'),
(3333, 'rr', 'IMG_20150806_102125.jpg', 'IMG_20150806_102125.jpg', 'IMG_20150806_102125.jpg'),
(45433, 'andi', '', 'beli.jpg', ''),
(1234567890, 'Andi Riant for de ex', 'bbm-logo.jpg', '2.png', '1.png'),
(2147483647, 'Andi Riant for de ex', 'IMG_20150806_110256.jpg', 'IMG_20150806_125650.jpg', 'IMG_20150806_110937.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sarana_kesehatan`
--
ALTER TABLE `sarana_kesehatan`
  ADD PRIMARY KEY (`id_kesehatan`);

--
-- Indexes for table `sarana_olahraga`
--
ALTER TABLE `sarana_olahraga`
  ADD PRIMARY KEY (`id_olahraga`);

--
-- Indexes for table `sarana_pemerintah`
--
ALTER TABLE `sarana_pemerintah`
  ADD PRIMARY KEY (`id_pemerintah`);

--
-- Indexes for table `sarana_pendidikan`
--
ALTER TABLE `sarana_pendidikan`
  ADD PRIMARY KEY (`id_pendidikan`);

--
-- Indexes for table `sarana_perekonomian`
--
ALTER TABLE `sarana_perekonomian`
  ADD PRIMARY KEY (`id_perekonomian`);

--
-- Indexes for table `sarana_peribadatan`
--
ALTER TABLE `sarana_peribadatan`
  ADD PRIMARY KEY (`id_peribadatan`);

--
-- Indexes for table `sarana_sosial`
--
ALTER TABLE `sarana_sosial`
  ADD PRIMARY KEY (`id_sosial`);

--
-- Indexes for table `tbl_foto`
--
ALTER TABLE `tbl_foto`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indexes for table `tbl_kategori_pelayanan`
--
ALTER TABLE `tbl_kategori_pelayanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_m_agama`
--
ALTER TABLE `tbl_m_agama`
  ADD PRIMARY KEY (`id_agama`);

--
-- Indexes for table `tbl_m_golongan_darah`
--
ALTER TABLE `tbl_m_golongan_darah`
  ADD PRIMARY KEY (`id_gol_darah`);

--
-- Indexes for table `tbl_m_imunisasi`
--
ALTER TABLE `tbl_m_imunisasi`
  ADD PRIMARY KEY (`id_imunisasi`);

--
-- Indexes for table `tbl_m_jenis_kelamin`
--
ALTER TABLE `tbl_m_jenis_kelamin`
  ADD PRIMARY KEY (`id_jenis_kelamin`);

--
-- Indexes for table `tbl_m_kontrasepsi`
--
ALTER TABLE `tbl_m_kontrasepsi`
  ADD PRIMARY KEY (`id_kontrasepsi`);

--
-- Indexes for table `tbl_m_pendidikan`
--
ALTER TABLE `tbl_m_pendidikan`
  ADD PRIMARY KEY (`id_nama_pendidikan`);

--
-- Indexes for table `tbl_m_status_keluarga`
--
ALTER TABLE `tbl_m_status_keluarga`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `tbl_m_status_pernikahan`
--
ALTER TABLE `tbl_m_status_pernikahan`
  ADD PRIMARY KEY (`id_status_pernikahan`);

--
-- Indexes for table `tbl_m_status_sosial`
--
ALTER TABLE `tbl_m_status_sosial`
  ADD PRIMARY KEY (`id_status_sosial`);

--
-- Indexes for table `tbl_m_user`
--
ALTER TABLE `tbl_m_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_m_warga_negara`
--
ALTER TABLE `tbl_m_warga_negara`
  ADD PRIMARY KEY (`id_warga_negara`);

--
-- Indexes for table `tbl_pelayanan`
--
ALTER TABLE `tbl_pelayanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_t_keluarga`
--
ALTER TABLE `tbl_t_keluarga`
  ADD PRIMARY KEY (`id_kk`);

--
-- Indexes for table `tbl_t_keluarga_get_modal`
--
ALTER TABLE `tbl_t_keluarga_get_modal`
  ADD PRIMARY KEY (`id_kgm`);

--
-- Indexes for table `tbl_t_keluarga_meninggal`
--
ALTER TABLE `tbl_t_keluarga_meninggal`
  ADD PRIMARY KEY (`id_km`);

--
-- Indexes for table `tbl_t_keluarga_sejahtera`
--
ALTER TABLE `tbl_t_keluarga_sejahtera`
  ADD PRIMARY KEY (`id_ks`);

--
-- Indexes for table `tbl_t_keluarga_status_dan_kb`
--
ALTER TABLE `tbl_t_keluarga_status_dan_kb`
  ADD PRIMARY KEY (`id_ksb`);

--
-- Indexes for table `tbl_t_penduduk`
--
ALTER TABLE `tbl_t_penduduk`
  ADD PRIMARY KEY (`id_penduduk`);

--
-- Indexes for table `tbl_upload`
--
ALTER TABLE `tbl_upload`
  ADD PRIMARY KEY (`no_penduduk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sarana_kesehatan`
--
ALTER TABLE `sarana_kesehatan`
  MODIFY `id_kesehatan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sarana_olahraga`
--
ALTER TABLE `sarana_olahraga`
  MODIFY `id_olahraga` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `sarana_pemerintah`
--
ALTER TABLE `sarana_pemerintah`
  MODIFY `id_pemerintah` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sarana_pendidikan`
--
ALTER TABLE `sarana_pendidikan`
  MODIFY `id_pendidikan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sarana_perekonomian`
--
ALTER TABLE `sarana_perekonomian`
  MODIFY `id_perekonomian` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sarana_peribadatan`
--
ALTER TABLE `sarana_peribadatan`
  MODIFY `id_peribadatan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sarana_sosial`
--
ALTER TABLE `sarana_sosial`
  MODIFY `id_sosial` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tbl_foto`
--
ALTER TABLE `tbl_foto`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_kategori_pelayanan`
--
ALTER TABLE `tbl_kategori_pelayanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_m_agama`
--
ALTER TABLE `tbl_m_agama`
  MODIFY `id_agama` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_m_golongan_darah`
--
ALTER TABLE `tbl_m_golongan_darah`
  MODIFY `id_gol_darah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_m_imunisasi`
--
ALTER TABLE `tbl_m_imunisasi`
  MODIFY `id_imunisasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_m_jenis_kelamin`
--
ALTER TABLE `tbl_m_jenis_kelamin`
  MODIFY `id_jenis_kelamin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_m_kontrasepsi`
--
ALTER TABLE `tbl_m_kontrasepsi`
  MODIFY `id_kontrasepsi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_m_status_keluarga`
--
ALTER TABLE `tbl_m_status_keluarga`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_m_status_pernikahan`
--
ALTER TABLE `tbl_m_status_pernikahan`
  MODIFY `id_status_pernikahan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_m_status_sosial`
--
ALTER TABLE `tbl_m_status_sosial`
  MODIFY `id_status_sosial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_m_user`
--
ALTER TABLE `tbl_m_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_m_warga_negara`
--
ALTER TABLE `tbl_m_warga_negara`
  MODIFY `id_warga_negara` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_t_keluarga`
--
ALTER TABLE `tbl_t_keluarga`
  MODIFY `id_kk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `tbl_t_keluarga_get_modal`
--
ALTER TABLE `tbl_t_keluarga_get_modal`
  MODIFY `id_kgm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `tbl_t_keluarga_meninggal`
--
ALTER TABLE `tbl_t_keluarga_meninggal`
  MODIFY `id_km` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `tbl_t_keluarga_sejahtera`
--
ALTER TABLE `tbl_t_keluarga_sejahtera`
  MODIFY `id_ks` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `tbl_t_keluarga_status_dan_kb`
--
ALTER TABLE `tbl_t_keluarga_status_dan_kb`
  MODIFY `id_ksb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `tbl_t_penduduk`
--
ALTER TABLE `tbl_t_penduduk`
  MODIFY `id_penduduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=403316;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
