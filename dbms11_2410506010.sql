-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2025 at 05:52 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbms11_2410506010`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbgaji`
--

CREATE TABLE `tbgaji` (
  `golongan` int(1) NOT NULL,
  `gaji_pokok` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbgaji`
--

INSERT INTO `tbgaji` (`golongan`, `gaji_pokok`) VALUES
(1, 1500000),
(2, 2000000),
(3, 3500000),
(4, 5000000);

-- --------------------------------------------------------

--
-- Table structure for table `tbpegawai`
--

CREATE TABLE `tbpegawai` (
  `nip` varchar(5) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `kota` varchar(15) NOT NULL,
  `tahun_masuk` year(4) NOT NULL,
  `golongan` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbpegawai`
--

INSERT INTO `tbpegawai` (`nip`, `nama`, `tgl_lahir`, `kota`, `tahun_masuk`, `golongan`) VALUES
('001', 'ahmad burhanudin', '1990-12-12', 'bandung', '2010', 3),
('002', 'amin imsyorry', '1989-12-02', 'ciamis', '2009', 2),
('003', 'budhy bungaox', '1989-01-20', 'tasikmalaya', '2011', 4),
('004', 'zulkarnaen', '1991-02-20', 'bandung', '2009', 1),
('005', 'dewi sudewa', '1990-12-02', 'bogor', '2009', 1),
('006', 'ina nnurlian', '1993-08-09', 'sumedang', '2011', 4),
('007', 'cheppy chardut', '1991-07-09', 'garut', '2011', 4),
('008', 'dodong m', '1990-07-10', 'bandung', '2010', 3),
('009', 'gandung p', '1990-06-25', 'bogor', '2009', 2),
('010', 'agus wisman', '1993-10-17', 'garut', '2010', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbgaji`
--
ALTER TABLE `tbgaji`
  ADD PRIMARY KEY (`golongan`);

--
-- Indexes for table `tbpegawai`
--
ALTER TABLE `tbpegawai`
  ADD PRIMARY KEY (`nip`),
  ADD KEY `fk_golongan` (`golongan`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbpegawai`
--
ALTER TABLE `tbpegawai`
  ADD CONSTRAINT `fk_golongan` FOREIGN KEY (`golongan`) REFERENCES `tbgaji` (`golongan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
