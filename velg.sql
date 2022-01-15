-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Jan 2022 pada 23.25
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
-- Database: `velg`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_barang`
--

CREATE TABLE `data_barang` (
  `id_barang` varchar(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `harga_barang` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `diameter_velg` varchar(20) NOT NULL,
  `merk_velg` varchar(20) NOT NULL,
  `warna_velg` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_barang`
--

INSERT INTO `data_barang` (`id_barang`, `nama_barang`, `harga_barang`, `keterangan`, `diameter_velg`, `merk_velg`, `warna_velg`) VALUES
('100', 'Velg Yamaha', '2000', 'Bekas', '14', 'Vossen', 'Orange'),
('B1', 'Velg Honda', '1000', 'Baru', '15', 'Enkei', 'Biru'),
('B10', 'Kawasaki', '1000', 'Baru', '13', 'Enkei', 'Emas'),
('B100', 'Velg Honda', '1000', 'Baru', '14', 'HRE', 'Silver'),
('B12', 'Velg Volvo', '2000', 'Bekas', '16', 'Vossen', 'Biru'),
('B15', 'Velg Suzuki', '2000', 'Baru', '14', 'Auto Speed', 'Emas'),
('B2', 'Honda', '1000', 'Baru', '14', 'Vossen', 'Silver'),
('B3', 'Velg Yamaha', '1000', 'Baru', '14', 'Zen', 'Silver'),
('B4', 'Velg Kawasaki', '1000', 'Baru', '16', 'Honda', 'Merah'),
('B5', 'velg ABS', '1000', 'Baru', '13', 'BBS', 'Merah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_karyawan`
--

CREATE TABLE `data_karyawan` (
  `id_karyawan` varchar(10) NOT NULL,
  `nama_karyawan` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(2) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `jabatan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_karyawan`
--

INSERT INTO `data_karyawan` (`id_karyawan`, `nama_karyawan`, `jenis_kelamin`, `no_hp`, `alamat`, `jabatan`) VALUES
('K-001', 'Awaludin', 'la', '082331564778', 'Riau', 'kasir'),
('K-002', 'jamal', 'la', '082334445667', 'Kalimantan', 'supir'),
('K-003', 'kabur', 'la', '087232663987', 'Jogja', 'supir'),
('K-004', 'Udin', 'la', '081223567881', 'Jambi', 'costumer service'),
('K-005', 'tono', 'la', '086554887954', 'Sleman', 'kasir'),
('K-006', 'sunardi', 'pe', '082555666777', 'Kalimantan', 'costumer service'),
('K-007', 'jamal', 'pe', '0819987567723', 'Sumatera', 'kasir'),
('K-008', 'Mamas', 'pe', '083667987654', 'Majalengka', 'costumer service'),
('K-009', 'Stevan', 'pe', '087727774778', 'Magelang', 'kasir'),
('K-010', 'jamal', 'pe', '087889965334', 'Cirebon', 'supir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pembeli`
--

CREATE TABLE `data_pembeli` (
  `id_pembeli` varchar(10) NOT NULL,
  `nama_pembeli` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `id_karyawan` varchar(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_pembeli`
--

INSERT INTO `data_pembeli` (`id_pembeli`, `nama_pembeli`, `alamat`, `no_hp`, `id_karyawan`, `username`, `password`) VALUES
('A001', 'Tono', 'Wonogiri', '082111222337', 'K-001', 'user5', '0a791842f52a0acfbb3a783378c066b8'),
('A002', 'Sunardi', 'Banguntapan', '008911144455', 'K-002', 'user6', 'affec3b64cf90492377a8114c86fc093'),
('A003', 'Fany', 'Gunung Kidul', '083444555666', 'K-003', 'user7', '3e0469fb134991f8f75a2760e409c6ed'),
('A004', 'Lugas', 'Sleman', '082666777888', 'K-004', 'user8', '7668f673d5669995175ef91b5d171945'),
('A005', 'Muhammad Reza', 'Kulon progo', '085111444333', 'K-005', 'user9', '8808a13b854c2563da1a5f6cb2130868'),
('A006', 'Fikri', 'Wonosari', '087777888999', 'K-006', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
('A007', 'Nizar', 'Jogja Kota', '082999888777', 'K-007', 'user11', '03aa1a0b0375b0461c1b8f35b234e67a'),
('A008', 'Iwan', 'Magelang', '089234567888', 'K-008', 'user12', 'd781eaae8248db6ce1a7b82e58e60435'),
('A009', 'Mirza', 'Klaten', '083333777666', 'K-009', 'user13', 'd09979d794a6ee60d836f884739f7196'),
('A010', 'Taher', 'Kaliurang', '089555444555', 'K-010', 'user14', 'ef06d5cbf35386ff2203d186eeff7923'),
('A011', 'Afgan', 'Jakarta', '098222333444', 'K-001', '', ''),
('A012', 'Gala', 'Jaksel', '098222777888', 'K-001', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pembelian`
--

CREATE TABLE `data_pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `id_barang` varchar(11) NOT NULL,
  `jumlah_pembelian` int(50) NOT NULL,
  `total_bayar` int(50) NOT NULL,
  `metode_bayar` varchar(50) NOT NULL,
  `id_pembeli` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_pembelian`
--

INSERT INTO `data_pembelian` (`id_pembelian`, `id_barang`, `jumlah_pembelian`, `total_bayar`, `metode_bayar`, `id_pembeli`) VALUES
(1, '100', 3, 6000, 'Tunai', 'A001'),
(2, 'B1', 10, 10000, 'Tunai', 'A001');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_barang`
--
ALTER TABLE `data_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `data_karyawan`
--
ALTER TABLE `data_karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indeks untuk tabel `data_pembeli`
--
ALTER TABLE `data_pembeli`
  ADD PRIMARY KEY (`id_pembeli`),
  ADD KEY `id_karyawan` (`id_karyawan`);

--
-- Indeks untuk tabel `data_pembelian`
--
ALTER TABLE `data_pembelian`
  ADD PRIMARY KEY (`id_pembelian`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_pembeli` (`id_pembeli`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_pembelian`
--
ALTER TABLE `data_pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `data_pembeli`
--
ALTER TABLE `data_pembeli`
  ADD CONSTRAINT `data_pembeli_ibfk_1` FOREIGN KEY (`id_karyawan`) REFERENCES `data_karyawan` (`id_karyawan`);

--
-- Ketidakleluasaan untuk tabel `data_pembelian`
--
ALTER TABLE `data_pembelian`
  ADD CONSTRAINT `data_pembelian_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `data_barang` (`id_barang`),
  ADD CONSTRAINT `data_pembelian_ibfk_2` FOREIGN KEY (`id_pembeli`) REFERENCES `data_pembeli` (`id_pembeli`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
