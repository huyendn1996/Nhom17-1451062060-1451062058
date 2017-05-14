-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2017 at 06:59 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tintuc`
--

-- --------------------------------------------------------

--
-- Table structure for table `baiviet`
--

CREATE TABLE `baiviet` (
  `maBV` int(10) NOT NULL,
  `tenBV` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `tieudeBV` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `tomtatBV` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hinhanhBV` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `machude` int(10) NOT NULL,
  `idUser` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chude`
--

CREATE TABLE `chude` (
  `machude` int(11) NOT NULL,
  `tenchude` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quangcao`
--

CREATE TABLE `quangcao` (
  `maQC` int(10) NOT NULL,
  `motaQC` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `hinhQC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkQC` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ngaydangQC` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trang`
--

CREATE TABLE `trang` (
  `matrang` int(10) NOT NULL,
  `tentrang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `linktrang` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `tieudetrang` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `idUser` int(10) NOT NULL,
  `pass` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ngaydangnhap` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`maBV`),
  ADD UNIQUE KEY `machude` (`machude`),
  ADD KEY `idUser` (`idUser`);

--
-- Indexes for table `chude`
--
ALTER TABLE `chude`
  ADD PRIMARY KEY (`machude`);

--
-- Indexes for table `quangcao`
--
ALTER TABLE `quangcao`
  ADD PRIMARY KEY (`maQC`);

--
-- Indexes for table `trang`
--
ALTER TABLE `trang`
  ADD PRIMARY KEY (`matrang`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `maBV` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chude`
--
ALTER TABLE `chude`
  MODIFY `machude` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `quangcao`
--
ALTER TABLE `quangcao`
  MODIFY `maQC` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `trang`
--
ALTER TABLE `trang`
  MODIFY `matrang` int(10) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `baiviet`
--
ALTER TABLE `baiviet`
  ADD CONSTRAINT `baiviet_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`),
  ADD CONSTRAINT `baiviet_ibfk_2` FOREIGN KEY (`machude`) REFERENCES `chude` (`machude`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
