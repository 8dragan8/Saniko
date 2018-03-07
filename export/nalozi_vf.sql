-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2018 at 02:12 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saniko`
--

-- --------------------------------------------------------

--
-- Table structure for table `nalozi_vf`
--

CREATE TABLE `nalozi_vf` (
  `id` int(11) NOT NULL,
  `id_Rnalog` int(8) NOT NULL,
  `materijal` varchar(50) DEFAULT NULL,
  `PAP_tekstura` enum('mat','sjaj','ofset') DEFAULT NULL,
  `debljina` int(1) DEFAULT NULL,
  `element_kom` int(4) DEFAULT NULL,
  `element_x_mm` int(6) DEFAULT NULL,
  `element_y_mm` int(6) DEFAULT NULL,
  `element_kom_m2` decimal(13,4) DEFAULT NULL,
  `element_ukup_m2` decimal(13,4) DEFAULT NULL,
  `opis_dorade` varchar(100) DEFAULT NULL,
  `napomena` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nalozi_vf`
--

INSERT INTO `nalozi_vf` (`id`, `id_Rnalog`, `materijal`, `PAP_tekstura`, `debljina`, `element_kom`, `element_x_mm`, `element_y_mm`, `element_kom_m2`, `element_ukup_m2`, `opis_dorade`, `napomena`) VALUES
(1, 201801004, 'forex+PVC', '', 3, 5, 1200, 800, '0.9600', '4.8000', '', 'Koristi se stari fajl 170-09-16'),
(2, 201801005, 'forex+PVC', '', 3, 1, 1520, 1960, '2.9800', '2.9800', '', 'Koristi se stari fajl 108-07-16'),
(3, 201801006, 'forex+PVC', '', 3, 2, 892, 602, '0.5400', '1.0700', '', 'Koristi se stari fajl 276-10-16'),
(4, 201801033, 'PVC', 'mat', 0, 1000, 90, 50, '0.0000', '4.5000', 'opsecanje', ''),
(5, 201801054, 'PVC sivi lepak', 'mat', 0, 1, 1900, 1900, '3.6100', '3.6100', '', ''),
(6, 201801055, 'papir', '', 0, 1, 1000, 700, '0.7000', '0.7000', '', ''),
(7, 201801056, 'papir', '', 0, 6, 670, 970, '0.6500', '3.9000', 'opsecanje', ''),
(8, 201801076, 'PVC', 'sjaj', 0, 2, 650, 300, '0.2000', '0.3900', 'nema', ''),
(9, 201801086, 'PVC', '', 0, 137, 1155, 1472, '1.7000', '232.9200', '', ''),
(10, 201801089, 'PVC', '', 0, 9, 1300, 470, '0.6100', '5.5000', '', ''),
(11, 201801092, 'papir', '', 0, 30, 1208, 798, '0.9600', '0.0000', '', '1 set 2 + 2 kom'),
(12, 201801096, 'papir', '', 0, 1, 1170, 1660, '1.9400', '0.0000', '', ''),
(13, 201801144, 'PVC sivi lepak', 'sjaj', 0, 1, 907, 3007, '2.7300', '0.0000', 'nema', ''),
(14, 201801174, 'mesh', '', 0, 1, 12000, 1460, '17.5200', '17.5200', '', ''),
(15, 201801004, 'forex+PVC', '', 3, 1, 0, 0, '0.0000', '0.0000', '', 'Koristi se stari fajl 170-09-16'),
(16, 201801005, 'forex+PVC', '', 3, 0, 0, 0, '0.0000', '0.0000', '', 'Koristi se stari fajl 108-07-16'),
(17, 201801006, 'forex+PVC', '', 3, 0, 0, 0, '0.0000', '0.0000', '', 'Koristi se stari fajl 276-10-16'),
(18, 201801076, 'PVC', 'sjaj', 0, 2, 350, 200, '0.0700', '0.1400', 'nema', ''),
(19, 201801089, 'PVC', '', 0, 10, 1200, 350, '0.4200', '4.2000', '', ''),
(20, 201801092, 'papir', '', 0, 30, 855, 798, '0.6800', '20.4700', '', '1 set 2 + 2 kom'),
(21, 201801096, 'papir', '', 0, 1, 1140, 1680, '1.9200', '1.9200', '', ''),
(22, 201801174, 'mesh', '', 0, 1, 10000, 1450, '14.5000', '14.5000', '', ''),
(23, 201801004, 'forex+PVC', '', 3, 0, 0, 0, '0.0000', '0.0000', '', 'Koristi se stari fajl 170-09-16'),
(24, 201801076, 'PVC', 'sjaj', 0, 3, 350, 200, '0.0700', '0.2100', 'nema', ''),
(25, 201801089, 'PVC', '', 0, 8, 1200, 260, '0.3100', '2.5000', '', ''),
(26, 201801092, 'papir', '', 0, 0, 0, 0, '0.0000', '0.0000', '', '1 set 2 + 2 kom'),
(27, 201801096, 'papir', '', 0, 1, 1080, 1620, '1.7500', '1.7500', '', ''),
(28, 201801174, 'mesh', '', 0, 1, 9300, 1450, '13.4900', '13.4900', '', ''),
(29, 201801096, 'papir', '', 0, 1, 1720, 2180, '3.7500', '3.7500', '', ''),
(30, 201801174, 'mesh', '', 0, 1, 6000, 1950, '11.7000', '11.7000', '', ''),
(31, 201802136, 'PVC', '', 0, 8900, 71, 130, '0.0100', '82.1500', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nalozi_vf`
--
ALTER TABLE `nalozi_vf`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_Rnalog_sa_VF` (`id_Rnalog`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nalozi_vf`
--
ALTER TABLE `nalozi_vf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `nalozi_vf`
--
ALTER TABLE `nalozi_vf`
  ADD CONSTRAINT `id_Rnalog_sa_VF` FOREIGN KEY (`id_Rnalog`) REFERENCES `nalozi_2018` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
