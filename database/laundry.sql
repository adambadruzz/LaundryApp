-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2020 at 03:58 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laundry`
--

-- --------------------------------------------------------

--
-- Table structure for table `laundry`
--

CREATE TABLE `laundry` (
  `kode_pelanggan` varchar(10) NOT NULL,
  `tanggal` date NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `berat_pakaian` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `total_bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `laundry`
--

INSERT INTO `laundry` (`kode_pelanggan`, `tanggal`, `nama_pelanggan`, `no_telp`, `alamat`, `berat_pakaian`, `harga`, `total_bayar`) VALUES
('A10', '2020-11-11', 'Johan', '081187119119', 'Malang', 2, 6000, 12000),
('A11', '2020-12-10', 'Jun', '081223447899', 'Bandung', 3, 6000, 18000),
('A14', '2020-12-02', 'Mimin', '081134255987', 'Malang', 2, 6000, 12000),
('A20', '2020-12-01', 'Siti', '081223546789', 'Bandung', 1, 15000, 15000);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(10) NOT NULL,
  `password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `laundry`
--
ALTER TABLE `laundry`
  ADD PRIMARY KEY (`kode_pelanggan`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
