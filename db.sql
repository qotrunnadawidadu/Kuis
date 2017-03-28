-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 14, 2017 at 02:21 PM
-- Server version: 5.6.35
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `kuis_beta`
--

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `id` int(11) NOT NULL,
  `namaLokasi` varchar(255) NOT NULL,
  `tanggalBerdiri` date NOT NULL,
  `fk_perusahaan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`id`, `namaLokasi`, `tanggalBerdiri`, `fk_perusahaan`) VALUES
(1, 'Pabrik Lamongan', '2017-01-01', 1),
(2, 'Pabrik Kao Malang', '2017-01-01', 2);

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan`
--

CREATE TABLE `perusahaan` (
  `id` int(11) NOT NULL,
  `namaPerusahaan` varchar(255) NOT NULL,
  `nomorIjinProduksi` varchar(255) NOT NULL,
  `tanggalBerdiri` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `perusahaan`
--

INSERT INTO `perusahaan` (`id`, `namaPerusahaan`, `nomorIjinProduksi`, `tanggalBerdiri`) VALUES
(1, 'Unilever', '1389180975', '1989-01-01'),
(2, 'Kao', '89787618131', '1987-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `namaProduk` varchar(255) NOT NULL,
  `tanggalProduksi` date NOT NULL,
  `tanggalKadaluarsa` date NOT NULL,
  `fk_perusahaan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `namaProduk`, `tanggalProduksi`, `tanggalKadaluarsa`, `fk_perusahaan`) VALUES
(1, 'Lifebuoy', '2017-01-01', '2017-05-05', 1),
(2, 'Vape', '2017-01-01', '2017-05-05', 1),
(3, 'Axe', '2017-01-01', '2017-05-05', 2),
(4, 'Biore', '2017-01-01', '2017-05-05', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `perusahaan_lokasi` (`fk_perusahaan`);

--
-- Indexes for table `perusahaan`
--
ALTER TABLE `perusahaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `perusahaan`
--
ALTER TABLE `perusahaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD CONSTRAINT `perusahaan_lokasi` FOREIGN KEY (`fk_perusahaan`) REFERENCES `perusahaan` (`id`);
