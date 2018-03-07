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
-- Table structure for table `nalozi_digitab`
--

CREATE TABLE `nalozi_digitab` (
  `id` int(11) NOT NULL,
  `id_Rnalog` int(8) NOT NULL,
  `PAP_gram` varchar(10) DEFAULT NULL,
  `PAP_tekstura` enum('mat','sjaj','ofset') DEFAULT NULL,
  `PAP_format` varchar(20) DEFAULT NULL,
  `br_klik` int(4) DEFAULT NULL,
  `br_tab` int(4) DEFAULT NULL,
  `PAP_A` int(1) DEFAULT NULL,
  `PAP_B` int(1) DEFAULT NULL,
  `jedin_tab` decimal(13,4) DEFAULT NULL,
  `opis_dorade` varchar(100) DEFAULT NULL,
  `napomena` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nalozi_digitab`
--

INSERT INTO `nalozi_digitab` (`id`, `id_Rnalog`, `PAP_gram`, `PAP_tekstura`, `PAP_format`, `br_klik`, `br_tab`, `PAP_A`, `PAP_B`, `jedin_tab`, `opis_dorade`, `napomena`) VALUES
(1, 201801002, 'muflon', 'sjaj', 'B', 112, 112, 1, 0, '0.0000', '', ''),
(2, 201801010, '300', 'mat', 'B', 100, 100, 4, 0, '6.0000', 'sjajna plastika 1/0, stancovanje, wobblerovanje', ''),
(3, 201801011, '300', 'mat', 'B', 90, 45, 4, 4, '2.0000', 'mat plastika 1/1, opsecanje', ''),
(4, 201801015, '300', 'mat', 'B', 50, 50, 4, 0, '6.0000', 'sjajna plastika 1/0, stancovanje, wobblerovanje', ''),
(5, 201801016, '300', 'mat', 'B', 60, 30, 4, 4, '2.0000', 'mat plastika 1/1, opsecanje', ''),
(6, 201801020, '350', 'mat', 'B', 4, 4, 4, 0, '25.0000', 'opsecanje', ''),
(7, 201801031, '300', 'mat', 'B', 50, 25, 4, 4, '0.0000', '', ''),
(8, 201801032, '300', 'mat', 'B', 17, 17, 4, 0, '30.0000', 'opsecanje', ''),
(9, 201801036, '300', 'mat', 'B', 8, 4, 4, 4, '25.0000', 'opsecanje', ''),
(10, 201801037, '150', 'mat', 'B', 55, 55, 4, 0, '1.0000', 'opsecanje', ''),
(11, 201801038, '300', 'mat', 'B', 56, 28, 4, 4, '0.0000', 'nema', ''),
(12, 201801040, '300', 'mat', 'B', 34, 34, 4, 0, '5.0000', 'stancovanje, opsecanje', 'STANCNA: 046-01-18'),
(13, 201801043, '300', 'mat', 'B', 43, 43, 4, 0, '5.0000', 'stancovanje, opsecanje', 'STANCNA: 046-01-18'),
(14, 201801047, '300', 'mat', 'B', 209, 209, 4, 0, '12.0000', 'stancovanje, wobblerovanje', 'STANCNA wobbler 10cm'),
(15, 201801061, '300', 'mat', 'B', 86, 43, 4, 4, '0.0000', 'opsecanje', '4 x 300 kom'),
(16, 201801062, '170', 'mat', '50x23', 40, 20, 4, 4, '1.0000', 'secenje, klamovanje', ''),
(17, 201801063, '170', 'mat', '50x23', 40, 20, 4, 4, '1.0000', 'secenje, klamovanje', ''),
(18, 201801064, '170', 'mat', '50x23', 40, 20, 4, 4, '1.0000', 'secenje, klamovanje', ''),
(19, 201801065, '250', 'mat', '50x23', 40, 20, 4, 4, '1.0000', 'plastika sjaj 1/0, secenje, klamovanje', ''),
(20, 201801066, '250', 'mat', '50x23', 40, 20, 4, 4, '1.0000', 'plastika sjaj 1/0, secenje, klamovanje', ''),
(21, 201801067, '250', 'mat', '50x23', 40, 20, 4, 4, '1.0000', 'plastika sjaj 1/0, secenje, klamovanje', ''),
(22, 201801071, 'muflon', 'mat', 'B', 7, 7, 4, 0, '8.0000', 'opsecanje', ''),
(23, 201801077, '300', 'mat', 'B', 200, 100, 4, 4, '1.0000', 'plastika mat 1/1, secenje, bigovanje klamovanje', ''),
(24, 201801078, '300', 'mat', 'B', 34, 17, 4, 4, '6.0000', 'plastika mat 1/1, secenje', ''),
(25, 201801091, '300', 'mat', 'B', 25, 25, 4, 0, '0.0000', '', ''),
(26, 201801097, '300', 'mat', 'B', 28, 14, 4, 4, '30.0000', 'opsecanje', ''),
(27, 201801104, '150', 'mat', '33x120', 80, 80, 4, 0, '0.5000', 'secenje, coskiranje gornja 2 coska', '1 set = 2 crownera+ 1 bok'),
(28, 201801105, '150', 'mat', '33x120', 80, 80, 4, 0, '0.5000', 'secenje, coskiranje gornja 2 coska', '1 set = 2 TOP-a + 1 bok'),
(29, 201801106, '150', 'mat', '33x120', 76, 76, 4, 0, '0.5000', 'secenje, coskiranje gornja 2 coska', '1 set = 2 TOP-a + 1 bok'),
(30, 201801107, '300', 'mat', 'B', 34, 34, 4, 0, '0.0000', 'stancovanje, stancna 107-08-16', ''),
(31, 201801109, '150', 'mat', 'B', 225, 225, 4, 0, '8.0000', 'secenje', 'Pakovanje po 100 kom'),
(32, 201801119, '250', 'mat', 'B', 70, 35, 4, 4, '0.0000', '', ''),
(33, 201801121, '300', 'mat', 'B', 34, 34, 4, 0, '0.0000', 'plastifikacija sjaj 1/0', ''),
(34, 201801122, '300', 'mat', 'B', 34, 34, 4, 0, '0.0000', 'plastifikacija sjajna 1/0, stancovanje', 'STANCNA: 218-10-17 Krug R13'),
(35, 201801125, '300', 'mat', 'B', 7, 7, 4, 0, '0.0000', '', ''),
(36, 201801126, '150', 'mat', 'B', 70, 35, 4, 4, '0.0000', '', ''),
(37, 201801141, 'specijalac', '', 'B', 7, 7, 4, 0, '0.0000', 'opsecanje', 'Iceblink Bianco 300g'),
(38, 201801142, '250', 'mat', 'B', 10, 5, 4, 4, '0.0000', 'opsecanje', ''),
(39, 201801143, 'specijalac', '', 'B', 20, 0, 4, 4, '0.0000', 'nema', 'dostavljen papir'),
(40, 201801157, 'specijalac', '', 'B', 68, 34, 4, 4, '0.0000', 'opsecanje', 'stardream quartz'),
(41, 201801158, '300', 'mat', 'B', 100, 50, 4, 4, '0.0000', 'nema', ''),
(42, 201801175, 'specijalac', '', 'B', 1, 1, 4, 0, '0.0000', 'PVC TERMOSTABILNA FOLIJA', ''),
(43, 201801183, '130', 'mat', 'B', 200, 100, 4, 4, '0.0000', 'Savijanje na tri dela.', ''),
(44, 201802050, '300', 'mat', 'B', 20, 20, 4, 0, '0.0000', 'opsecanje', ''),
(45, 201802051, '300', 'mat', 'B', 50, 50, 4, 0, '0.0000', '', ''),
(46, 201802052, '250', 'mat', 'B', 40, 20, 4, 4, '0.0000', 'bigovanje na pola', ''),
(47, 201802053, '250', 'mat', 'B', 120, 60, 4, 4, '0.0000', 'bigovanje na pola', ''),
(48, 201802054, 'specijalac', '', 'B', 8, 4, 4, 4, '25.0000', 'opsecanje', 'Dali kandido new 285g'),
(49, 201802060, 'muflon', '', '33x50', 80, 80, 1, 0, '0.0000', 'secenje', ''),
(50, 201802061, '350', 'mat', 'B', 150, 150, 4, 0, '0.0000', 'opsecanje', ''),
(51, 201802098, '300', 'mat', 'B', 9, 9, 4, 0, '0.0000', 'formiranje wobblera', ''),
(52, 201802099, '300', 'mat', 'ostalo', 100, 100, 4, 0, '0.0000', 'sjajna plastika 1/0, kasiranje 300 na 300. bigovanje', ''),
(53, 201802100, '300', 'mat', '33x35', 75, 75, 4, 0, '0.0000', 'sjajna plastika 1/0', ''),
(54, 201802101, '300', 'mat', 'B', 90, 45, 4, 4, '2.0000', 'mat plastika 1/1, opsecanje', ''),
(55, 201802102, '150', 'mat', 'B', 80, 40, 4, 4, '0.0000', 'opsecanje', ''),
(56, 201802108, '300', 'mat', 'B', 16, 8, 4, 4, '0.0000', 'opsecanje', ''),
(57, 201802109, 'specijalac', '', 'B', 15, 15, 4, 0, '0.0000', 'Veza nalog 117-05-17', 'Antique White wsa perm. green tac+kraft special 90 score printed'),
(58, 201802110, '350', 'mat', 'B', 34, 34, 4, 0, '0.0000', 'opsecanje', ''),
(59, 201802111, '350', 'mat', 'B', 84, 42, 4, 4, '0.0000', 'mat plastika 1/1', ''),
(60, 201802116, '250', 'mat', 'B', 225, 225, 4, 0, '0.0000', '', ''),
(61, 201802121, '300', 'mat', 'B', 100, 100, 4, 0, '0.0000', '', ''),
(62, 201802122, '300', 'mat', 'B', 18, 9, 4, 4, '0.0000', 'opsecanje', ''),
(63, 201802126, '130', 'mat', 'B', 140, 140, 4, 0, '0.0000', '', ''),
(64, 201802129, '130', 'mat', 'B', 210, 105, 4, 4, '0.0000', '', ''),
(65, 201802132, '130', 'mat', 'B', 90, 90, 4, 0, '0.0000', '', ''),
(66, 201802142, '250', 'mat', 'B', 20, 10, 4, 4, '0.0000', 'busenje rupe u gornjem uglu', ''),
(67, 201802146, 'muflon', 'mat', 'B', 223, 223, 4, 0, '0.0000', 'ricobanie', ''),
(68, 201802154, '130', 'mat', 'B', 322, 161, 4, 4, '0.0000', '', ''),
(69, 201802162, '150', 'mat', 'B', 50, 25, 4, 1, '0.0000', '', ''),
(70, 201802165, '130', 'mat', 'B', 300, 150, 4, 4, '0.0000', '', ''),
(71, 201802180, '250', 'mat', 'B', 20, 10, 4, 4, '0.0000', 'busenje rupe u gornjem uglu', ''),
(72, 201802185, '300', 'mat', 'B', 30, 30, 4, 0, '0.0000', 'stancovanje, stancna 107-08-16', ''),
(73, 201802186, '300', 'mat', 'B', 30, 30, 4, 0, '0.0000', '', ''),
(74, 201802187, 'muflon', 'mat', 'ostalo', 90, 90, 4, 0, '0.0000', 'kasiranje na lepenku 1.9mm', ''),
(75, 201802194, 'specijalac', '', 'B', 16, 8, 4, 4, '25.0000', 'opsecanje', 'Dali kandido new 285g'),
(76, 201802197, '300', 'mat', 'B', 35, 35, 4, 0, '0.0000', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nalozi_digitab`
--
ALTER TABLE `nalozi_digitab`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_Rnalog_sa_DIGITAB` (`id_Rnalog`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nalozi_digitab`
--
ALTER TABLE `nalozi_digitab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `nalozi_digitab`
--
ALTER TABLE `nalozi_digitab`
  ADD CONSTRAINT `id_Rnalog_sa_DIGITAB` FOREIGN KEY (`id_Rnalog`) REFERENCES `nalozi_2018` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
