-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2021 at 07:27 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webhosting`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `data_users`
--

CREATE TABLE `data_users` (
  `idcard` varchar(15) DEFAULT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `address` text DEFAULT NULL,
  `province` varchar(20) DEFAULT NULL,
  `lastname` varchar(30) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `amphoe` varchar(20) DEFAULT NULL,
  `district` varchar(10) DEFAULT NULL,
  `postalcode` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_users`
--

INSERT INTO `data_users` (`idcard`, `username`, `password`, `name`, `email`, `address`, `province`, `lastname`, `phone`, `amphoe`, `district`, `postalcode`) VALUES
(NULL, 'coco@gmail.com', '01c8291e6e9483376662acc8e40e88f5', NULL, 'coco@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(NULL, 'khogmail.com', 'b9a88fbe31952468b6c02cdfa4ed6fbb', NULL, 'kho@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1759900274111', 'khoranis20@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'กรณิศ ', 'khoranis20@gmail.com', '227 ม.5 ', 'สมุทรสงคราม', 'เปรุนาวิน', '0980966894', 'เมืองสมุทรสงคราม', 'บางจะเกร็ง', '75000'),
(NULL, 'minimacha69@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', NULL, 'minimacha69@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('nu1759900247113', 'pakpak11@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'ผักกาด', 'pakpak11@gmail.com', '228 ม.5', 'สมุทรสงคราม', 'ซน', '0982784496', 'เมืองสมุทรสงคราม', 'บางจะเกร็ง', '75000'),
(NULL, 'test4@gmail.com', '4c7ea4e77bdb13cf5da854c16f78ecc1', NULL, 'test4@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(NULL, 'testpak1@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', NULL, 'testpak1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(NULL, 'testpak@gmail.com', '942e50e3f28800a0245096346241a9b5', NULL, 'testpak@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `domain`
--

CREATE TABLE `domain` (
  `username` varchar(30) NOT NULL,
  `domain_name` varchar(30) NOT NULL,
  `main` tinyint(1) NOT NULL,
  `accept` enum('0','1') DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `domain`
--

INSERT INTO `domain` (`username`, `domain_name`, `main`, `accept`) VALUES
('coco@gmail.com', 'COCOTAM.com', 1, '1'),
('kho@gmail.com', 'kho.com', 1, '0'),
('khoranis20@gmail.com', 'khoranis.com', 1, '1'),
('minimacha69@gmail.com', 'banja.com', 1, '1'),
('pakpak11@gmail.com', 'pakkad.com', 1, '1'),
('test4@gmail.com', 'COCOTAM.com', 0, '1'),
('testpak1@gmail.com', 'pakkad.com', 0, '0'),
('testpak@gmail.com', 'pakkad.com', 0, '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_users`
--
ALTER TABLE `data_users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `domain`
--
ALTER TABLE `domain`
  ADD PRIMARY KEY (`username`,`domain_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
