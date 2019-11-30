-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Nov 2019 pada 05.34
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.1.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tiket_travel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` varchar(20) NOT NULL,
  `Nama` varchar(20) NOT NULL,
  `Username` varchar(10) DEFAULT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `Nama`, `Username`, `Password`) VALUES
('1', 'Ryan Pratama', 'ryan', '12345');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `ID_Barang` varchar(20) NOT NULL,
  `Berat_Barang` varchar(20) NOT NULL,
  `Jenis_Barang` varchar(20) NOT NULL,
  `Nama_Pengirim` varchar(20) NOT NULL,
  `No_HP` varchar(15) NOT NULL,
  `Alamat_Penerima` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `Hari` varchar(20) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `ID_Jadwal` varchar(20) NOT NULL,
  `Jam` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`Hari`, `tanggal`, `ID_Jadwal`, `Jam`) VALUES
('Senin', '01/01/2020', '001', '09.00'),
('Senin', '01/01/2020', '002', '11.00'),
('Senin', '01/01/2020', '003', '15.00'),
('Senin', '01/01/2020', '004', '19.00'),
('Selasa', '02/01/2020', '005', '09.00'),
('Selasa', '02/01/2020', '006', '11.00'),
('Selasa', '02/01/2020', '007', '15.00'),
('Selasa', '02/01/2020', '008', '19.00'),
('Rabu', '03/01/2020', '009', '09.00'),
('Rabu', '03/01/2020', '010', '11.00'),
('Rabu', '03/01/2020', '011', '15.00'),
('Rabu', '03/01/2020', '012', '19.00'),
('Kamis', '04/01/2020', '013', '09.00'),
('Kamis', '04/01/2020', '014', '11.00'),
('Kamis', '04/01/2020', '015', '15.00'),
('Kamis', '04/01/2020', '016', '19.00'),
('Jumat', '05/01/2020', '017', '09.00'),
('Jumat', '05/01/2020', '018', '11.00'),
('Jumat', '05/01/2020', '019', '15.00'),
('Jumat', '05/01/2020', '020', '19.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keberangkatan`
--

CREATE TABLE `keberangkatan` (
  `id_keberangkatan` varchar(20) NOT NULL,
  `No_Mobil` varchar(20) DEFAULT NULL,
  `ID_Jadwal` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `keberangkatan`
--

INSERT INTO `keberangkatan` (`id_keberangkatan`, `No_Mobil`, `ID_Jadwal`) VALUES
('', 'D 121 ABA', '001'),
('1', 'D 111 AHA', '001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `Kota_Keberangkatan` varchar(20) NOT NULL,
  `Kota_Tujuan` varchar(20) NOT NULL,
  `No_Mobil` varchar(20) NOT NULL,
  `jumlah_penumpang` int(2) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`Kota_Keberangkatan`, `Kota_Tujuan`, `No_Mobil`, `jumlah_penumpang`, `status`) VALUES
('Bandung', 'Bekasi', 'D 111 AHA', 0, 'Belum Penuh'),
('Bandung', 'Depok', 'D 121 ABA', 0, 'Belum Penuh'),
('Bekasi', 'Depok', 'D 131 ACA', 0, 'Belum Penuh'),
('Bekasi', 'Bandung', 'D 141 ADA', 0, 'Belum Penuh'),
('Bekasi', 'Bandung', 'D 151 AEA', 0, 'Belum Penuh');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `ID_Transaksi` int(20) NOT NULL,
  `nama_customer` varchar(20) NOT NULL,
  `Jumlah` int(7) NOT NULL,
  `Status_Pembayaran` varchar(20) NOT NULL,
  `keberangkatan` varchar(20) NOT NULL,
  `tujuan` varchar(20) NOT NULL,
  `tanggal` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`ID_Transaksi`, `nama_customer`, `Jumlah`, `Status_Pembayaran`, `keberangkatan`, `tujuan`, `tanggal`) VALUES
(5, '3', 4, '5', '4', '1', '2');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`ID_Barang`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`ID_Jadwal`);

--
-- Indeks untuk tabel `keberangkatan`
--
ALTER TABLE `keberangkatan`
  ADD PRIMARY KEY (`id_keberangkatan`),
  ADD KEY `ID_Jadwal` (`ID_Jadwal`),
  ADD KEY `No_Mobil` (`No_Mobil`);

--
-- Indeks untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`No_Mobil`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`ID_Transaksi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `ID_Transaksi` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `keberangkatan`
--
ALTER TABLE `keberangkatan`
  ADD CONSTRAINT `keberangkatan_ibfk_1` FOREIGN KEY (`ID_Jadwal`) REFERENCES `jadwal` (`ID_Jadwal`),
  ADD CONSTRAINT `keberangkatan_ibfk_2` FOREIGN KEY (`No_Mobil`) REFERENCES `mobil` (`No_Mobil`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
