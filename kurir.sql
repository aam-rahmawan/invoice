-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 09 Apr 2021 pada 06.00
-- Versi Server: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kurir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `courier`
--

CREATE TABLE `courier` (
  `id_k` int(11) NOT NULL,
  `nama` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `courier`
--

INSERT INTO `courier` (`id_k`, `nama`) VALUES
(1, 'jnt'),
(2, 'jne');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_p` int(11) NOT NULL,
  `invoice` date NOT NULL,
  `to` text NOT NULL,
  `nama_s` varchar(120) NOT NULL,
  `nama_k` varchar(120) NOT NULL,
  `ship` varchar(120) NOT NULL,
  `paymen` varchar(120) NOT NULL,
  `item` int(120) NOT NULL,
  `weight` int(120) NOT NULL,
  `qty` int(120) NOT NULL,
  `unit` int(120) NOT NULL,
  `total` int(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_p`, `invoice`, `to`, `nama_s`, `nama_k`, `ship`, `paymen`, `item`, `weight`, `qty`, `unit`, `total`) VALUES
(1, '2021-04-09', 'doni', 'andi', 'jnt', 'siang', 'cash', 200, 100, 300, 20, 50000),
(2, '2021-04-09', 'sarif', 'putra', 'jne', 'malam', 'pay later', 2, 1000, 200, 10, 40000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sales`
--

INSERT INTO `sales` (`id`, `name`) VALUES
(1, 'andi'),
(2, 'putra');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courier`
--
ALTER TABLE `courier`
  ADD PRIMARY KEY (`id_k`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_p`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courier`
--
ALTER TABLE `courier`
  MODIFY `id_k` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_p` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
