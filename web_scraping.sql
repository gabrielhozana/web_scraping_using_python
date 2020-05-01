-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2020 at 02:22 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_harvesting`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `gambar` text NOT NULL,
  `sumber` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `ket_waktu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `date`, `judul`, `isi`, `gambar`, `sumber`, `link`, `ket_waktu`) VALUES
(1, '2020-04-23 19:41:12', 'Nestapa Ibu Pemulung di Makassar, Tak Dapat Bansos Jelang PSBB', 'Junaisa (28), seorang pemulung di Kota Makassar, Sulawesi Selatan, harus berjibaku mengais rejeki untuk bertahan hidup.', 'https://asset.kompas.com/crops/nfSSQy9RJHkGXSPENyedxXFSReM=/0x0:0x0/483x327/data/photo/2020/04/23/5ea119800cde5.jpg', 'Kompas', 'http://makassar.kompas.com/read/2020/04/23/14330641/nestapa-ibu-pemulung-di-makassar-tak-dapat-bansos-jelang-psbb', '23/04/2020, 14:33 WIB'),
(3, '2020-04-23 19:41:12', 'Pegawai Kelurahan di Makassar Meninggal Mendadak Usai Bangun Posko Covid-19', 'Pegawai kantor Kelurahan Mandala, Kota Makassar, Sulawesi Selatan, meninggal mendadak usai membangun posko Covid-19.', 'https://asset.kompas.com/crops/UsgZkt2K6lCkfl5WNJjdzfGnoHA=/0x1:999x667/226x153/data/photo/2020/04/21/5e9ea48b70457.jpg', 'Kompas', 'http://makassar.kompas.com/read/2020/04/23/14073131/pegawai-kelurahan-di-makassar-meninggal-mendadak-usai-bangun-posko-covid-19', '23/04/2020, 14:07 WIB'),
(5, '2020-04-23 19:41:12', 'Baru Keluar dari Penjara, Begal di Makassar Kembali Berulah', 'Ketika korban berjalan sendirian di tempat yang sepi, kedua pelaku dengan menggunakan motor menghampiri korban lalu menodongkan pisau ke perut korban.', 'https://asset.kompas.com/crops/xuGDqE0WUUZj7ijDoI0FSXhzcbI=/0x0:0x0/226x153/data/photo/2020/03/11/5e6884e7590ab.jpeg', 'Kompas', 'http://makassar.kompas.com/read/2020/04/23/12483161/baru-keluar-dari-penjara-begal-di-makassar-kembali-berulah', '23/04/2020, 12:48 WIB'),
(7, '2020-04-23 19:41:12', 'Jalankan Bisnis dari Rumah Semakin Mudah dengan Layanan MCM dan MIB Mandiri', '', 'https://tpc.googlesyndication.com/pagead/imgad?id=CICAgKDn_vzWVBDkBRj0AygBMgiIMtWIqh9TSg&b2s=false', 'Kompas', 'https://pubads.g.doubleclick.net/gampad/jump?iu=/31800665/KOMPAS.COM/news&sz=740x500&t=Pos=HL4&c=20191223', ''),
(9, '2020-04-23 19:41:12', 'Wagub Sulsel Pastikan Kebutuhan Sembako Mahasiswa Tak Mudik Terpenuhi', 'Andi Sudirman membawakan bantuan sembako untuk para mahasiswa, mengingat Kota Makassar akan menerapkan kebijakan PSBB.', 'https://asset.kompas.com/crops/woJQL8NnA6a8FH1_nl823l6atrQ=/0x0:0x0/226x153/data/photo/2020/04/22/5ea046a7cedc4.jpg', 'Kompas', 'http://makassar.kompas.com/read/2020/04/22/22004751/wagub-sulsel-pastikan-kebutuhan-sembako-mahasiswa-tak-mudik-terpenuhi', '22/04/2020, 22:00 WIB'),
(10, '2020-04-24 08:19:48', 'Jadwal Imsak dan Buka Puasa di Makassar Hari Ini, 24 April 2020', 'Berikut jadwal imsakiyah dan buka puasa bagi Anda yang berada di Kota Makassar dan sekitarnya.', 'https://asset.kompas.com/crops/Avr3QSNv76aCgWou882kyTOFPGk=/0x0:1875x1250/483x327/data/photo/2020/04/23/5ea1608e95369.jpg', 'Kompas', 'http://makassar.kompas.com/read/2020/04/24/02400061/jadwal-imsak-dan-buka-puasa-di-makassar-hari-ini-24-april-2020', '24/04/2020, 02:40 WIB'),
(12, '2020-04-24 08:19:49', 'Peserta Ijtima Gowa yang Diisolasi di Bulukumba Dipindah ke Swiss-Belhotel Makassar', 'Para peserta ijtima tersebut bakal dikarantina di Swiss-Belhotel Makassar', 'https://asset.kompas.com/crops/8JELTR60XhWO0GlSjLTN0ClVzbs=/0x0:0x0/226x153/data/photo/2020/04/23/5ea182671ccc4.jpg', 'Kompas', 'http://makassar.kompas.com/read/2020/04/23/21415921/peserta-ijtima-gowa-yang-diisolasi-di-bulukumba-dipindah-ke-swiss-belhotel', '23/04/2020, 21:41 WIB'),
(14, '2020-04-24 08:19:49', 'Bebas karena Dapat Asimilasi, Pria di Makassar Malah Jadi Begal Ponsel', 'Dua mantan narapidana kasus pencurian yang bebas karena asimilasi kembali ditangkap polisi karena jadi membegal ponsel warga.', 'https://asset.kompas.com/crops/TagHwIoDbxEKALTu5biTAZc2IF0=/0x0:900x600/226x153/data/photo/2019/01/22/4091862233.jpg', 'Kompas', 'http://makassar.kompas.com/read/2020/04/23/18474641/bebas-karena-dapat-asimilasi-pria-di-makassar-malah-jadi-begal-ponsel', '23/04/2020, 18:47 WIB'),
(16, '2020-04-24 08:19:49', 'Nestapa Ibu Pemulung di Makassar, Tak Dapat Bansos Jelang PSBB', 'Junaisa (28), seorang pemulung di Kota Makassar, Sulawesi Selatan, harus berjibaku mengais rejeki untuk bertahan hidup.', 'https://asset.kompas.com/crops/T8OvHc4ioQliL5OaZx8Fgy5Xb2Y=/0x0:0x0/226x153/data/photo/2020/04/23/5ea119800cde5.jpg', 'Kompas', 'http://makassar.kompas.com/read/2020/04/23/14330641/nestapa-ibu-pemulung-di-makassar-tak-dapat-bansos-jelang-psbb', '23/04/2020, 14:33 WIB'),
(18, '2020-04-24 08:19:49', 'Pegawai Kelurahan di Makassar Meninggal Mendadak Usai Bangun Posko Covid-19', 'Pegawai kantor Kelurahan Mandala, Kota Makassar, Sulawesi Selatan, meninggal mendadak usai membangun posko Covid-19.', 'https://asset.kompas.com/crops/UsgZkt2K6lCkfl5WNJjdzfGnoHA=/0x1:999x667/226x153/data/photo/2020/04/21/5e9ea48b70457.jpg', 'Kompas', 'http://makassar.kompas.com/read/2020/04/23/14073131/pegawai-kelurahan-di-makassar-meninggal-mendadak-usai-bangun-posko-covid-19', '23/04/2020, 14:07 WIB');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
