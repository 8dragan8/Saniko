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
-- Table structure for table `nalozi_adast`
--

CREATE TABLE `nalozi_adast` (
  `id` int(11) NOT NULL,
  `id_Rnalog` int(8) NOT NULL,
  `PAP_gram` varchar(10) DEFAULT NULL,
  `PAP_tekstura` enum('mat','sjaj','ofset') DEFAULT NULL,
  `PAP_format` varchar(20) DEFAULT NULL,
  `br_otisaka` int(4) DEFAULT NULL,
  `br_tab` int(4) DEFAULT NULL,
  `br_kolora` int(4) DEFAULT NULL,
  `br_ploca` int(4) DEFAULT NULL,
  `PAP_A` int(1) DEFAULT NULL,
  `PAP_B` int(1) DEFAULT NULL,
  `PAP_nacin_stampe` varchar(100) DEFAULT NULL,
  `jedin_tab` decimal(13,4) DEFAULT NULL,
  `opis_dorade` varchar(100) DEFAULT NULL,
  `napomena` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nalozi_adast`
--

INSERT INTO `nalozi_adast` (`id`, `id_Rnalog`, `PAP_gram`, `PAP_tekstura`, `PAP_format`, `br_otisaka`, `br_tab`, `br_kolora`, `br_ploca`, `PAP_A`, `PAP_B`, `PAP_nacin_stampe`, `jedin_tab`, `opis_dorade`, `napomena`) VALUES
(1, 201801001, '130', 'mat', 'A+', 1000, 1000, 2, 0, 4, 4, ' druga strana druge ploce', '0.0000', 'savijanje', ''),
(2, 201801013, 'muflon', 'mat', 'B', 278, 248, 1, 2, 4, 0, '', '0.0000', 'STANCNA: 033-09-16 ', 'odstampati dupli tiraz'),
(3, 201801017, '300', 'mat', 'B', 125, 125, 1, 1, 4, 0, '', '10.0000', 'plastika sjaj 1/0, kasiranje na 300g papir, duplofan na klapni, bigovanje', ''),
(4, 201801018, '130', 'mat', 'B', 400, 400, 7, 28, 4, 0, '', '1.0000', 'opsecanje, cantragovanje, povezivanje belom spiralom', ''),
(5, 201801019, '170', 'mat', 'B', 400, 200, 7, 28, 4, 4, ' na okretanje', '1.0000', '', ''),
(6, 201801021, '170', 'mat', 'A+', 1000, 500, 1, 0, 4, 4, ' na okretanje', '6.0000', 'opsecanje', 'PLOCE: 236-11-17'),
(7, 201801022, '115', 'mat', 'A+', 1000, 500, 1, 4, 4, 4, '', '6.0000', 'opsecanje na format', ''),
(8, 201801026, 'muflon', 'mat', 'B', 278, 248, 1, 2, 4, 0, '', '0.0000', 'STANCNA: 033-09-16 ', 'odstampati dupli tiraz'),
(9, 201801029, '130', 'mat', 'A+', 400, 200, 0, 1, 1, 1, '', '0.0000', 'savijanje', ''),
(10, 201801034, '200', 'mat', 'A+', 1000, 500, 1, 4, 4, 4, ' na okretanje', '6.0000', '', ''),
(11, 201801035, '80', 'ofset', 'A+', 500, 500, 1, 4, 4, 0, '', '2.0000', '', ''),
(12, 201801039, '130', '', 'A+', 338, 169, 1, 4, 4, 4, ' na okretanje', '2.0000', 'opsecanje', ''),
(13, 201801042, '130', '', 'A+', 428, 214, 1, 4, 4, 4, ' na okretanje', '2.0000', 'opsecanje', ''),
(14, 201801045, '130', '', 'A+', 350, 350, 1, 4, 4, 0, '', '2.0000', 'opsecanje', ''),
(15, 201801046, '250', '', 'B', 402, 402, 1, 4, 4, 0, '', '5.0000', 'stancovanje, secenje', ''),
(16, 201801048, '130', '', 'B', 2010, 2010, 1, 4, 4, 0, '', '1.0000', '', ''),
(17, 201801049, '80', 'ofset', 'A', 15000, 15000, 1, 3, 3, 0, '', '0.0700', 'lajmovanje u glavu, busenje rupa sa stane, odbrojavanje, podloga triplex', '30 listova u bloku, PLOCE: 117-11-16'),
(18, 201801051, '300', '', '33x50', 0, 0, 0, 0, 4, 4, ' druga strana druge ploce', '1.0000', 'mat plastika 1/1, opsecanje', ''),
(19, 201801052, '300', '', '33x50', 0, 0, 0, 0, 4, 4, ' druga strana druge ploce', '0.0000', 'opsecanje', ''),
(20, 201801053, '300', '', '33x50', 600, 600, 2, 8, 4, 4, ' druga strana druge ploce', '5.0000', 'mat plastika 1/1 za 100 tabaka, opsecanje', '500 kom bez plasike, 100 kom sa platikom'),
(21, 201801060, '80', 'ofset', 'A', 2500, 2500, 1, 4, 4, 0, '', '2.0000', 'opsecanje', ''),
(22, 201801069, '90', 'mat', 'A+', 2300, 1150, 1, 4, 4, 4, ' na okretanje', '8.0000', 'stancovanje, secenje', ''),
(23, 201801074, 'muflon', 'mat', '50x23', 556, 556, 1, 2, 2, 0, '', '0.0000', 'sjajna plastifikacija, ricovanje', 'Stancna: 029-09-15'),
(24, 201801079, '130', '', 'A+', 500, 250, 1, 4, 4, 4, ' na okretanje', '2.0000', 'opsecanje', ''),
(25, 201801080, '130', '', 'A+', 4500, 4500, 1, 4, 4, 0, '', '2.0000', 'opsecanje', ''),
(26, 201801081, '130', 'mat', 'B', 8000, 8000, 1, 4, 4, 0, '', '0.5000', 'kasiranje na 1.9mm lepenku, stancovanje', 'STANCNA: 034-08-17'),
(27, 201801082, '250', 'mat', 'B', 0, 0, 0, 0, 4, 0, '', '1.0000', 'bigovanje, opsecanje', ''),
(28, 201801083, '250', 'mat', 'B', 0, 0, 0, 0, 4, 0, '', '1.0000', 'bigovanje, opsecanje', ''),
(29, 201801084, '250', 'mat', '44x21', 3500, 3500, 1, 4, 4, 0, '', '3.0000', 'bigovanje, opsecanje', ''),
(30, 201801085, '250', 'mat', 'B', 0, 0, 0, 0, 4, 0, '', '1.0000', 'stancovanje', 'STANCNA: 061-01-17'),
(31, 201801087, '250', 'mat', '33x35', 360, 360, 1, 4, 4, 0, '', '1.0000', 'sjaj plastika 1/0, stancovanje', 'STANCNA: 072-09-15'),
(32, 201801088, '250', 'mat', 'B', 4000, 4000, 1, 4, 4, 0, '', '0.0000', 'bigovanje, opsecanje', 'Nalozi na tabaku: 082, 085 i 083-01-18'),
(33, 201801103, '250', 'mat', 'A+', 300, 150, 1, 4, 4, 4, ' na okretanje', '2.0000', 'sjajna plastika 1/1', ''),
(34, 201801120, '170', 'mat', 'A+', 334, 167, 1, 4, 4, 4, ' na okretanje', '0.0000', '', ''),
(35, 201801128, '80', 'ofset', 'A', 1000, 1000, 1, 3, 2, 0, '', '0.0000', '', ''),
(36, 201801129, '130', 'mat', 'B', 600, 600, 1, 4, 4, 0, '', '0.0000', 'opsecanje', ''),
(37, 201801130, '130', 'mat', 'B', 1400, 1400, 1, 4, 4, 0, '', '0.0000', 'kasiranje na 1.9mm lepenku, stancovanje', 'STANCNA 034-08-17'),
(38, 201801131, '250', 'mat', '', 0, 0, 0, 0, 4, 0, '', '2.0000', 'bigovanje, opsecanje', ''),
(39, 201801132, '250', 'mat', '', 0, 0, 0, 0, 4, 0, '', '9.0000', 'stancovanje', 'STANCNA: 061-01-17'),
(40, 201801133, '130', 'mat', 'B', 2100, 2100, 1, 4, 4, 0, '', '0.0000', 'opsecanje', ''),
(41, 201801134, '130', 'mat', 'B', 1000, 1000, 1, 4, 4, 0, '', '0.0000', 'kasiranje na 1.9mm lepenku, stancovanje', 'STANCNA 034-08-17'),
(42, 201801135, '250', 'mat', '', 0, 0, 0, 0, 4, 0, '', '1.0000', 'bigovanje, opsecanje', ''),
(43, 201801136, '250', 'mat', '', 0, 0, 0, 0, 4, 0, '', '6.0000', 'stancovanje', 'STANCNA: 061-01-17'),
(44, 201801140, '250', 'mat', 'B', 1000, 1000, 1, 4, 4, 0, '', '1.0000', 'stancovanje', 'STANCNA: 061-01-17'),
(45, 201801159, '115', 'mat', 'B', 1000, 500, 1, 4, 4, 4, ' na okretanje', '4.0000', 'perforacija, secenje', 'STANCNA: 027-01-17'),
(46, 201801160, '250', 'mat', 'B', 300, 150, 1, 4, 4, 4, ' na okretanje', '0.0000', 'bigovanje na pola', ''),
(47, 201801161, '250', 'mat', 'B', 300, 300, 2, 8, 4, 4, ' druga strana druge ploce', '0.0000', 'bigovanje na pola', ''),
(48, 201801163, '150', 'mat', 'B', 0, 0, 0, 0, 4, 0, '', '0.0000', 'opsecanje', ''),
(49, 201801164, '150', 'mat', 'B', 0, 0, 0, 0, 4, 0, '', '0.0000', 'opsecanje', ''),
(50, 201801165, '150', 'mat', 'B', 0, 0, 0, 0, 4, 0, '', '0.0000', 'opsecanje', ''),
(51, 201801166, '150', 'mat', 'B', 0, 0, 0, 0, 4, 0, '', '0.0000', 'opsecanje', ''),
(52, 201801167, '150', 'mat', 'B', 0, 0, 0, 0, 4, 0, '', '0.0000', 'opsecanje', ''),
(53, 201801168, '150', 'mat', 'B', 0, 0, 0, 0, 4, 0, '', '0.0000', 'opsecanje', ''),
(54, 201801169, '150', 'mat', 'B', 0, 0, 0, 0, 4, 0, '', '0.0000', 'opsecanje', ''),
(55, 201801170, '150', 'mat', 'B', 0, 0, 0, 0, 4, 0, '', '0.0000', 'opsecanje', ''),
(56, 201801171, '150', 'mat', 'B', 0, 0, 0, 0, 4, 0, '', '0.0000', 'opsecanje', ''),
(57, 201801172, '150', 'mat', 'B', 2000, 2000, 1, 4, 4, 0, '', '0.0000', 'opsecanje', ''),
(58, 201801173, '150', 'mat', 'B', 300, 300, 1, 4, 4, 0, '', '0.0000', 'opsecanje', ''),
(59, 201801180, '115', 'mat', 'B', 3100, 3100, 1, 4, 4, 0, '', '0.0000', 'opsecanje, postavljanje duplofan trake u cetiri coska', ''),
(60, 201801181, '115', 'mat', 'B', 1200, 1200, 1, 4, 4, 0, '', '0.0000', 'opsecanje, postavljanje duplofan trake u cetiri coska', ''),
(61, 201801182, '115', 'mat', 'B', 405, 405, 1, 4, 4, 0, '', '0.0000', 'lepljenje duplofana u 4 ugla', ''),
(62, 201801184, '130', 'mat', 'A+', 300, 300, 1, 4, 4, 0, '', '0.0000', '', ''),
(63, 201801187, '250', 'mat', '33x35', 1000, 1000, 1, 4, 4, 0, '', '0.0000', 'stancovanje', ''),
(64, 201801189, '250', 'mat', 'A+', 2000, 2000, 1, 4, 4, 0, '', '0.0000', '', ''),
(65, 201802045, 'NCR', '', 'A', 2000, 2000, 1, 4, 4, 0, '', '0.0000', 'Numeracija od PWP 2001 do 3001 UNAPRED u 4 kopije', 'perforacija, 100 lista u bloku,  lajmovanje u glavu'),
(66, 201802046, 'NCR', '', 'A', 2000, 2000, 1, 3, 3, 0, '', '0.0000', 'perforacija, odbrojavanje po 100, lajmovanje u glavu', 'stare ploce 205-11-17'),
(67, 201802048, 'NCR', '', 'A', 2000, 2000, 1, 4, 4, 0, '', '0.0000', 'Numeracija od PE175755 do 176755 UNAPRED u 4 kopije', 'perforacija, 100 lista u bloku,  lajmovanje u glavu'),
(68, 201802049, '80', 'ofset', 'A', 250, 250, 1, 3, 3, 0, '', '0.0000', '', ''),
(69, 201802058, 'NCR', '', 'A', 4000, 4000, 1, 4, 4, 0, '', '0.0000', 'Zbirni tabak - Ugovori PIO i Kes (045 i 048)', ''),
(70, 201802059, '130', 'mat', 'A+', 800, 800, 2, 8, 4, 4, ' druga strana druge ploce', '0.0000', 'savijanje ', ''),
(71, 201802104, '130', 'mat', 'A+', 600, 300, 1, 4, 4, 4, ' na okretanje', '0.0000', '', ''),
(72, 201802105, '130', 'mat', 'B', 0, 0, 1, 4, 4, 0, '', '0.0000', '', ''),
(73, 201802113, '130', 'mat', 'B', 300, 300, 1, 4, 4, 0, '', '0.0000', '', ''),
(74, 201802118, '300', 'mat', 'A+', 334, 167, 1, 4, 4, 4, ' na okretanje', '0.0000', 'sjajna plastika 1/1, secenje', ''),
(75, 201802126, '130', 'mat', 'A+', 280, 140, 1, 4, 4, 4, ' na okretanje', '0.0000', '', ''),
(76, 201802132, '130', 'mat', 'A+', 180, 90, 1, 4, 4, 4, ' na okretanje', '0.0000', '', ''),
(77, 201802133, '130', 'mat', 'B', 4750, 4750, 1, 4, 4, 0, '', '0.0000', '', ''),
(78, 201802137, '130', 'mat', 'A+', 1040, 520, 1, 4, 4, 4, ' na okretanje', '0.0000', '', ''),
(79, 201802139, '250', 'mat', 'B', 550, 550, 1, 4, 4, 0, '', '0.0000', '', ''),
(80, 201802140, '250', 'mat', 'A', 4360, 4360, 1, 4, 4, 0, '', '0.0000', '', ''),
(81, 201802141, 'NCR', '', 'A', 2500, 2500, 1, 3, 3, 0, '', '0.0000', 'cantragovanje, lajmovanje u glavu', 'NCR KARTON, 50 setova od 2 razlicita lista po bloku'),
(82, 201802148, '130', 'mat', 'B', 2500, 2500, 1, 4, 4, 0, '', '0.0000', '', ''),
(83, 201802149, '130', 'mat', 'B', 1200, 1200, 1, 4, 4, 0, '', '0.0000', 'kasiranje na 1.9mm lepenku, stancovanje', 'STANCNA: 034-08-17'),
(84, 201802156, '250', 'mat', '', 2505, 2505, 1, 4, 4, 0, '', '0.0000', '', ''),
(85, 201802159, '250', 'mat', 'A+', 4000, 4000, 1, 4, 4, 0, '', '0.0000', 'stancovanje', ''),
(86, 201802160, '130', 'mat', 'A+', 430, 430, 1, 4, 4, 0, '', '0.0000', '', ''),
(87, 201802167, '250', 'mat', '25x35', 375, 375, 1, 4, 4, 0, '', '0.0000', '', ''),
(88, 201802168, 'muflon', 'mat', 'B', 1525, 1525, 0, 1, 1, 0, '', '0.0000', 'Ricovanje', ''),
(89, 201802172, 'NCR', '', 'A', 2500, 2500, 1, 3, 3, 0, '', '0.0000', 'NCR karton, Mutacija plave boje ', ''),
(90, 201802176, '130', 'mat', 'B', 550, 550, 1, 4, 4, 0, '', '0.0000', '', ''),
(91, 201802177, '130', 'mat', 'B', 1100, 1100, 1, 0, 4, 0, '', '0.0000', 'Stare ploce 034-08-17', ''),
(92, 201802178, '250', 'mat', '50x23', 670, 670, 1, 0, 4, 0, '', '0.0000', 'stare ploce 036-08-17', ''),
(93, 201802179, '115', 'mat', 'A+', 3125, 3125, 1, 0, 4, 0, '', '0.0000', 'stare ploce 035-08-17', ''),
(94, 201802180, '', '', '50x23', 0, 0, 0, 0, 0, 0, '', '0.0000', '', ''),
(95, 201802181, '250', 'mat', '50x23', 749, 749, 1, 4, 4, 0, '', '0.0000', '', ''),
(96, 201802190, '80', 'ofset', 'A', 250, 250, 1, 1, 1, 0, '', '2.0000', 'opsecanje na format', ''),
(97, 201802191, 'NCR', '', 'A', 0, 0, 0, 0, 4, 0, '', '0.0000', 'numeracija, perforacija, cantragovanje, lajmovanje u glavu,', '25 ugovora u 4 kopije u bloku, numeracija LD7500 do LD7600 u 4 primerka'),
(98, 201802192, 'NCR', '', '', 1485, 1485, 1, 4, 4, 0, '', '0.0000', 'perforacija, odbrojavanje po 99, lajmovanje u glavu,', ''),
(99, 201802193, '170', 'mat', 'A+', 1000, 500, 1, 0, 4, 4, ' na okretanje', '0.0000', 'perforacija, bigovanje', ''),
(100, 201802196, '200', 'mat', 'A+', 668, 334, 1, 4, 4, 4, ' na okretanje', '0.0000', '', ''),
(101, 201802461, '130', 'mat', 'A+', 610, 305, 1, 4, 4, 4, '', '0.0000', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nalozi_adast`
--
ALTER TABLE `nalozi_adast`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_Rnalog_sa_ADAST` (`id_Rnalog`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nalozi_adast`
--
ALTER TABLE `nalozi_adast`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `nalozi_adast`
--
ALTER TABLE `nalozi_adast`
  ADD CONSTRAINT `id_Rnalog_sa_ADAST` FOREIGN KEY (`id_Rnalog`) REFERENCES `nalozi_2018` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
