-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Okt 2020 pada 14.54
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasi_stok`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `nopenjualan` varchar(20) NOT NULL,
  `tglpenjualan` date NOT NULL,
  `id_produk` int(11) NOT NULL,
  `itemterjual` int(11) NOT NULL,
  `total_penjualan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`nopenjualan`, `tglpenjualan`, `id_produk`, `itemterjual`, `total_penjualan`) VALUES
('PJLN2016110001', '2017-02-08', 16, 8, 160000),
('PJLN2016110008', '2017-02-01', 16, 9, 180000),
('PJLN2018060003', '2018-06-16', 23, 2, 6000),
('PJLN2018060004', '2018-06-16', 25, 2, 60000),
('PJLN2018060005', '2018-06-24', 18, 2, 60000),
('PJLN2018060006', '2018-06-25', 26, 2, 40000),
('PJLN2018060007', '2018-06-26', 16, 1, 20000),
('PJLN2018060008', '2018-06-26', 16, 2, 40000),
('PJLN2020100009', '2020-10-28', 16, 2, 40000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `stokproduk` int(11) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `tglmasuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga`, `stokproduk`, `satuan`, `tglmasuk`) VALUES
(16, 'Baju lengan Panjang', 20000, 62, 'buah', '2018-02-13'),
(17, 'topia', 50001, 18, 'buah', '2018-06-16'),
(18, 'Jaket Kulit', 30000, 10, 'pick', '2018-06-12'),
(23, 'Kapsul Gingin', 3000, 10, 'pick', '2018-06-16'),
(24, 'Kapsul Ratenggorok', 3000, 12, 'pick', '2018-06-16'),
(25, 'Kapsul Fitogura', 30000, 6, 'buah', '2018-06-16'),
(26, 'Susu Kambing Etawa Gomars ', 20000, 10, 'pick', '2018-06-24'),
(30, 'aa', 100, 6, 'pcs', '2020-10-28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(80) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level_user` enum('admin','user') NOT NULL DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `nama`, `username`, `password`, `level_user`) VALUES
(1, 'Aziz', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(8, 'Achmad Iqsan', 'iqsan', '48fc7460870ea32550ced6ebb10fb972', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`nopenjualan`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
