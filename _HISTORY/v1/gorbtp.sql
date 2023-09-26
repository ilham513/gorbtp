-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 12 Jul 2022 pada 14.18
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gorbtp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id` int(255) NOT NULL,
  `nama_penyewa` varchar(255) NOT NULL,
  `waktu_sewa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id`, `nama_penyewa`, `waktu_sewa`) VALUES
(1, 'MEDI', 'Jumat, 08:00 - 10:30'),
(2, 'RW', 'Selasa, 09:00 - 10:30'),
(3, 'Bima', 'Senin, 14:00 - 16:30'),
(4, 'Madank', 'Senin, 19:00 - 21:30 '),
(5, 'Susis PBSI', 'Selasa, 15:00 - 16:30'),
(6, 'Bina R. Mom', 'Sabtu, 08:00 - 10:30'),
(7, 'Bina R.', 'Senin, 11:00 - 13:30'),
(8, 'Vortuna', 'Senin, 08:00 - 10:30'),
(9, 'M.U', 'Rabu, 08:00 - 10:30'),
(10, 'Pesona', 'Kamis, 08:00 - 10:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyewa`
--

CREATE TABLE `penyewa` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_telp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyewa`
--

INSERT INTO `penyewa` (`id`, `nama`, `no_telp`) VALUES
(3, 'RW', '089904197640'),
(4, 'Madank', '081354726722'),
(5, 'Bina R.', '081497326218'),
(6, 'Vortuna', '085705665696'),
(7, 'Bima', '089236441689'),
(8, 'M.U', '081552963242'),
(9, 'Pesona', '089967291906'),
(10, 'MEDI', '000'),
(11, 'Bina R. Mom', '000'),
(13, 'Susis PBSI', '087778');

-- --------------------------------------------------------

--
-- Struktur dari tabel `waktu`
--

CREATE TABLE `waktu` (
  `id` int(255) NOT NULL,
  `hari` varchar(255) NOT NULL,
  `jam` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `waktu`
--

INSERT INTO `waktu` (`id`, `hari`, `jam`) VALUES
(1, 'Senin', '08:00 - 10:30'),
(2, 'Senin', '11:00 - 13:30'),
(3, 'Senin', '14:00 - 16:30'),
(4, 'Senin', '19:00 - 21:30 '),
(5, 'Selasa', '08:00 - 10:30'),
(6, 'Rabu', '08:00 - 10:30'),
(7, 'Kamis', '08:00 - 10:30'),
(8, 'Jumat', '08:00 - 10:30'),
(9, 'Sabtu', '08:00 - 10:30'),
(10, 'Selasa', '11:00 - 13:30'),
(11, 'Rabu', '11:00 - 13:30'),
(12, 'Kamis', '11:00 - 13:30'),
(13, 'Jumat', '11:00 - 13:30'),
(14, 'Sabtu', '11:00 - 13:30'),
(15, 'Selasa', '14:00 - 16:30'),
(16, 'Rabu', '14:00 - 16:30'),
(17, 'Kamis', '14:00 - 16:30'),
(18, 'Jumat', '14:00 - 16:30'),
(19, 'Sabtu', '14:00 - 16:30'),
(20, 'Selasa', '19:00 - 21:30'),
(21, 'Rabu', '19:00 - 21:30'),
(22, 'Kamis', '19:00 - 21:30'),
(23, 'Jumat', '19:00 - 21:30'),
(24, 'Sabtu', '19:00 - 21:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penyewa`
--
ALTER TABLE `penyewa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `waktu`
--
ALTER TABLE `waktu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `penyewa`
--
ALTER TABLE `penyewa`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `waktu`
--
ALTER TABLE `waktu`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
