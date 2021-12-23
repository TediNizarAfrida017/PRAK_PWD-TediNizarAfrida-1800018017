-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Des 2021 pada 13.06
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `khs`
--

CREATE TABLE `khs` (
  `NIM` varchar(10) NOT NULL,
  `KodeMK` varchar(10) NOT NULL,
  `Nilai` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `khs`
--

INSERT INTO `khs` (`NIM`, `KodeMK`, `Nilai`) VALUES
('1800018001', '1', '90'),
('1800018002', '2', '85'),
('1800018003', '3', '80'),
('1800018004', '4', '78'),
('1800018005', '5', '70');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(5) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jkel` varchar(1) DEFAULT NULL,
  `alamat` text,
  `tgllhr` date DEFAULT NULL,
  `prodi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `jkel`, `alamat`, `tgllhr`, `prodi`) VALUES
('MHS1', 'Tedi Nizar Afrida', 'L', 'Bandung', '2021-12-01', 'Teknik Informatika'),
('MHS2', 'Yola Andaresta', 'P', 'Majalengka', '2021-12-03', 'Kimia'),
('MHS3', 'Moh Saputra', 'P', 'Sulawesi', '2021-12-04', 'Elektro');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode` varchar(10) NOT NULL,
  `namamatkul` varchar(100) NOT NULL,
  `sks` int(10) NOT NULL,
  `semester` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`kode`, `namamatkul`, `sks`, `semester`) VALUES
('01', 'Pemrograman Web Dinamis', 3, 7),
('02', 'Penambangan Data', 3, 7),
('03', 'Forensik Digital', 3, 7),
('04', 'Sistem Temu Balik Informasi', 3, 7),
('05', 'Pemrograman Pararel', 3, 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `level` varchar(100) NOT NULL,
  `agama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `password`, `nama`, `email`, `level`, `agama`) VALUES
('admin1', 'e00cf25ad42683b3df678c61f42c6bda', 'Tedi Nizar Afrida', 'teddinizzar18@gmail.com', '', ''),
('bayulut', '8769c52ab09471cb34b174bbfb599c4c', 'Bayu Luthfi Putera Arief', 'bayuluthfi18@gmail.com', '0', 'Islam'),
('tedi', '2a538e39af8b0e6bae990110ed2534a8', 'Tedi Nizar Afrida', 'teddinizzar18@gmail.com', '', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `khs`
--
ALTER TABLE `khs`
  ADD UNIQUE KEY `NIM` (`NIM`),
  ADD UNIQUE KEY `KodeMK` (`KodeMK`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kode`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
