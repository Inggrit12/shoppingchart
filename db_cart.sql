-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2021 at 07:31 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cart`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_pembelian`
--

CREATE TABLE `detail_pembelian` (
  `iddetail` int(11) NOT NULL,
  `idpembelian` int(100) DEFAULT NULL,
  `produk_id` int(10) DEFAULT NULL,
  `produk_harga` int(10) NOT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_pembelian`
--

INSERT INTO `detail_pembelian` (`iddetail`, `idpembelian`, `produk_id`, `produk_harga`, `qty`) VALUES
(25, 1621831625, 2, 1000000, 1),
(26, 1621831637, 2, 1000000, 1),
(27, 1621831637, 1, 720000, 1),
(28, 1621832354, 3, 2000000, 1),
(29, 1621832367, 3, 2000000, 1),
(30, 1621832382, 3, 2000000, 1),
(31, 1621832392, 5, 500000, 1),
(32, 1621832405, 5, 500000, 1),
(33, 1621832475, 6, 1200000, 2),
(34, 1621832515, 3, 2000000, 1),
(35, 1621832524, 5, 500000, 1),
(36, 1621832630, 3, 2000000, 1),
(37, 1621832932, 6, 1200000, 1),
(38, 1621833156, 5, 500000, 1),
(39, 1621833469, 5, 500000, 1),
(40, 1621833508, 1, 2000000, 1),
(41, 1621833704, 5, 500000, 3),
(42, 1621833978, 5, 500000, 1),
(43, 1621834207, 5, 525000, 4),
(44, 1621834219, 5, 525000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `idpembelian` int(100) NOT NULL,
  `waktu` timestamp NULL DEFAULT current_timestamp(),
  `pembeli` varchar(10) DEFAULT 'paijo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`idpembelian`, `waktu`, `pembeli`) VALUES
(1621831625, '2021-05-24 04:47:05', 'jesyca'),
(1621831637, '2021-05-24 04:47:17', 'jesyca'),
(1621832354, '2021-05-24 04:59:14', 'jesyca'),
(1621832367, '2021-05-24 04:59:27', 'jesyca'),
(1621832382, '2021-05-24 04:59:42', 'jesyca'),
(1621832385, '2021-05-24 04:59:45', 'jesyca'),
(1621832392, '2021-05-24 04:59:52', 'jesyca'),
(1621832405, '2021-05-24 05:00:05', 'jesyca'),
(1621832475, '2021-05-24 05:01:15', 'jesyca'),
(1621832515, '2021-05-24 05:01:55', 'jesyca'),
(1621832524, '2021-05-24 05:02:04', 'jesyca'),
(1621832630, '2021-05-24 05:03:50', 'jesyca'),
(1621832932, '2021-05-24 05:08:52', 'jesyca'),
(1621833156, '2021-05-24 05:12:36', 'jesyca'),
(1621833469, '2021-05-24 05:17:49', 'jesyca'),
(1621833508, '2021-05-24 05:18:28', 'jesyca'),
(1621833704, '2021-05-24 05:21:44', 'jesyca'),
(1621833978, '2021-05-24 05:26:18', 'jesyca'),
(1621834207, '2021-05-24 05:30:07', 'jesyca'),
(1621834219, '2021-05-24 05:30:19', 'jesyca');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produk`
--

CREATE TABLE `tbl_produk` (
  `produk_id` int(11) NOT NULL,
  `produk_nama` varchar(255) NOT NULL,
  `produk_harga` double NOT NULL,
  `produk_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_produk`
--

INSERT INTO `tbl_produk` (`produk_id`, `produk_nama`, `produk_harga`, `produk_image`) VALUES
(1, 'Large Room', 2000000, '1.jpg'),
(2, 'Small Room', 1000000, '2.jpg'),
(3, 'Extra Room', 2000000, '3.jpg'),
(4, 'Medium Room', 1500000, '4.jpg'),
(5, 'Down Room', 525000, '5.jpg'),
(6, 'Standart Room', 1200000, '6.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_pembelian`
--
ALTER TABLE `detail_pembelian`
  ADD PRIMARY KEY (`iddetail`),
  ADD KEY `idpembelian` (`idpembelian`),
  ADD KEY `produk_id` (`produk_id`) USING BTREE;

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`idpembelian`);

--
-- Indexes for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD PRIMARY KEY (`produk_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_pembelian`
--
ALTER TABLE `detail_pembelian`
  MODIFY `iddetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  MODIFY `produk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_pembelian`
--
ALTER TABLE `detail_pembelian`
  ADD CONSTRAINT `detail_pembelian_ibfk_1` FOREIGN KEY (`produk_id`) REFERENCES `tbl_produk` (`produk_id`),
  ADD CONSTRAINT `detail_pembelian_ibfk_2` FOREIGN KEY (`idpembelian`) REFERENCES `pembelian` (`idpembelian`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
