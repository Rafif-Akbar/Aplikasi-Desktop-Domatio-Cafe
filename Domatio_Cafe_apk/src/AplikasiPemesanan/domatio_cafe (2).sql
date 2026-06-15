-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2025 at 01:02 PM
-- Server version: 11.7.2-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `domatio_cafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `meja`
--

CREATE TABLE `meja` (
  `id_meja` int(11) NOT NULL,
  `no_meja` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meja`
--

INSERT INTO `meja` (`id_meja`, `no_meja`, `status`) VALUES
(1, 'meja 1', 'kosong'),
(2, 'meja 2', 'kosong'),
(3, 'meja 3', 'kosong'),
(4, 'meja 4', 'kosong'),
(5, 'meja 5', 'kosong'),
(6, 'meja 6', 'kosong'),
(7, 'meja 7', 'kosong'),
(8, 'meja 8', 'kosong'),
(9, 'meja 9', 'kosong'),
(10, 'meja 10', 'kosong'),
(11, 'meja 11', 'kosong'),
(12, 'meja 12', 'kosong'),
(13, 'meja 13', 'kosong'),
(14, 'meja 14', 'kosong'),
(15, 'meja 15', 'kosong'),
(16, 'meja 16', 'kosong'),
(17, 'meja 17', 'kosong'),
(18, 'meja 18', 'kosong');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` double NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `nama`, `harga`, `stok`) VALUES
(1, 'Domatio Pasta', 30000, 50),
(2, 'Chicken Rice Bowl', 27000, 50),
(3, 'French Fries', 12000, 50),
(4, 'Classic Caesar Salad', 22000, 50),
(5, 'Green Tea Latte', 10000, 50),
(6, 'Millo Coffee', 17000, 50),
(7, 'Thai Tea', 11000, 50),
(8, 'Kopi Susu Aren Cheese Cream', 15000, 50),
(9, 'Hojicha Tea', 15000, 50),
(10, 'Kopi Susu Aren', 12000, 50),
(11, 'Crispy Mushroom', 19000, 50),
(12, 'Chicken Wings BBQ', 25000, 50);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(127) NOT NULL,
  `email` varchar(127) NOT NULL,
  `password` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`) VALUES
(1, 'gilang', 'gilang@gmail.com', '12345'),
(4, 'Mulyono', 'mulyono@gmail.com', '12345'),
(6, 'Raga', 'raga@gmail.com', '12345'),
(9, 'Ronaldo', 'ronaldo@gmail.com', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `meja`
--
ALTER TABLE `meja`
  ADD PRIMARY KEY (`id_meja`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `meja`
--
ALTER TABLE `meja`
  MODIFY `id_meja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
