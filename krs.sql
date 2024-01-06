-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2024 at 02:35 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `krs`
--

-- --------------------------------------------------------

--
-- Table structure for table `dtkrs`
--

CREATE TABLE `dtkrs` (
  `npm` int(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `Kelas` varchar(50) NOT NULL,
  `Jurusan` varchar(20) NOT NULL,
  `semester` varchar(25) NOT NULL,
  `dosen` varchar(50) NOT NULL,
  `matkul` varchar(20) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dtkrs`
--

INSERT INTO `dtkrs` (`npm`, `nama`, `Kelas`, `Jurusan`, `semester`, `dosen`, `matkul`, `status`) VALUES
(1212, 'sela', 'KELAS A BJB PAGI', 'SI', 'SEMESTER 1', 'RAMA', 'VISUAL 1', 'MAHASISWA AKTIF');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `npm` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `Kelas` varchar(25) NOT NULL,
  `Jurusan` varchar(30) NOT NULL,
  `semester` varchar(30) NOT NULL,
  `matkul` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`npm`, `nama`, `Kelas`, `Jurusan`, `semester`, `matkul`) VALUES
('1111', 'rena', 'KELAS C BJM MALAM', 'SI', 'SEMESTER 8', 'VISUAL 1'),
('21001199', 'riski', 'KELAS A BJB MALAM', 'TI', 'SEMESTER 2', 'SBD'),
('2110010233', 'ridwan', '5B BJB REG PAGI', 'TI', 'semester 5', 'pbo2');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `npm` int(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `semester` varchar(25) NOT NULL,
  `pembayaran` varchar(2000) NOT NULL,
  `bayar` int(100) NOT NULL,
  `setatus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`npm`, `nama`, `semester`, `pembayaran`, `bayar`, `setatus`) VALUES
(23231, 'asaasa', 'SEMESTER 2', '1000000', 15000, 'Cicil'),
(2110010233, 'ridwan', 'semester 5', '10000000', 5000000, 'CICIL'),
(2110010444, 'rusmin', 'SEMESTER 6', '1000000', 1000000, 'Lunas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dtkrs`
--
ALTER TABLE `dtkrs`
  ADD PRIMARY KEY (`npm`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`npm`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`npm`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
