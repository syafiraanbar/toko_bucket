-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Des 2021 pada 14.57
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_bucket`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) CHARACTER SET latin1 NOT NULL,
  `keterangan` varchar(225) CHARACTER SET latin1 NOT NULL,
  `kategori` varchar(60) CHARACTER SET latin1 NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(1, 'Promo Buket Bunga ', 'Buket Bunga Ukuran Besar', 'Buket Bunga', 17000, 6, 'bunga besar.jpg'),
(2, 'Buket Bunga', 'Buket Bunga Ukuran Kecil', 'Buket Bunga', 150000, 5, 'bunga kecil.jpg'),
(3, 'Buket Bunga', 'Buket Bunga Ukuran Sedang', 'Buket Bunga', 150000, 7, 'bunga sedang.jpg'),
(4, 'Buket Snack', 'Buket Snack Ukuran Kecil', 'Buket Makanan', 150000, 9, 'snack kecil.jpg'),
(5, 'Cake Uang', 'Cake Uang Kecil', 'Cake Uang', 150000, 10, 'cake uang.jpg'),
(6, 'Cake Uang', 'Cake Uang Besar', 'Cake Uang', 150000, 10, 'cake uang besar.jpg'),
(7, 'Buket Uang', 'Buket Uang', 'Buket Uang', 150000, 10, 'buket uang.jpg'),
(8, 'Hampers Scarlet', 'Hampers Scarlet Whitening 1 Paket', 'Hampers', 150000, 10, 'hampers body.jpg'),
(10, 'Hampers Bayi', 'Hampers Bayi ukuran Sedang', 'Hampers', 150000, 10, 'hampers bayi.jpg'),
(11, 'Hampers Hijab', 'Hampers Hijab Satu Paket', 'Hampers', 150000, 10, 'hampers hijab.jpg'),
(12, 'Buket Snack', 'Buket Snack Sedang', 'Buket Makanan', 150000, 10, 'snack sedang.jpg'),
(19, 'Hampers Baby', 'Hampers Baby  Peralatan Mandi', 'Hampers', 1500000, 5, '??-02.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(1, 'SYAFIRA ANBAR ROSWITA', 'Perum Quanta 5', '2021-12-21 00:33:03', '2021-12-22 00:33:03'),
(2, 'aidwi', 'condong', '2021-12-21 00:46:27', '2021-12-22 00:46:27'),
(3, '', '', '2021-12-23 00:10:18', '2021-12-24 00:10:18'),
(4, '', '', '2021-12-26 00:56:46', '2021-12-27 00:56:46'),
(5, '', '', '2021-12-26 20:21:25', '2021-12-27 20:21:25'),
(6, '', '', '2021-12-26 20:29:59', '2021-12-27 20:29:59'),
(7, 'SYAFIRA ANBAR ROSWITA', 'Perum Quanta 5', '2021-12-27 09:40:19', '2021-12-28 09:40:19'),
(8, 'SYAFIRA ANBAR ROSWITA', 'Perum Quanta 5', '2021-12-28 14:37:56', '2021-12-29 14:37:56'),
(9, '', '', '2021-12-30 09:03:38', '2021-12-31 09:03:38'),
(10, '', '', '2021-12-30 09:04:21', '2021-12-31 09:04:21'),
(11, 'Rayna Putra', 'Perum Kertasari Ciamis', '2021-12-30 13:07:10', '2021-12-31 13:07:10'),
(12, 'Wiki Saefulloh', 'Pangandaran RT 2', '2021-12-30 14:22:19', '2021-12-31 14:22:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 1, 1, 'Promo Buket Bunga ', 1, 17000, ''),
(2, 1, 2, 'Buket Bunga', 1, 150000, ''),
(3, 2, 2, 'Buket Bunga', 1, 150000, ''),
(4, 2, 9, 'Hampers Pria', 1, 150000, ''),
(5, 3, 3, 'Buket Bunga', 1, 150000, ''),
(6, 3, 4, 'Buket Snack', 1, 150000, ''),
(7, 4, 2, 'Buket Bunga', 1, 150000, ''),
(8, 4, 1, 'Promo Buket Bunga ', 1, 17000, ''),
(9, 5, 2, 'Buket Bunga', 1, 150000, ''),
(10, 6, 3, 'Buket Bunga', 1, 150000, ''),
(11, 7, 2, 'Buket Bunga', 1, 150000, ''),
(12, 7, 3, 'Buket Bunga', 1, 150000, ''),
(13, 8, 3, 'Buket Bunga', 1, 150000, ''),
(14, 9, 1, 'Promo Buket Bunga ', 1, 17000, ''),
(15, 10, 2, 'Buket Bunga', 1, 150000, ''),
(16, 11, 1, 'Promo Buket Bunga ', 1, 17000, ''),
(17, 11, 2, 'Buket Bunga', 1, 150000, ''),
(18, 12, 1, 'Promo Buket Bunga ', 1, 17000, ''),
(19, 12, 4, 'Buket Snack', 1, 150000, '');

--
-- Trigger `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
	UPDATE tb_barang SET stok = stok-NEW.jumlah
    WHERE id_brg = NEW.id_brg;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) CHARACTER SET latin1 NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 NOT NULL,
  `password` varchar(50) CHARACTER SET latin1 NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama`, `username`, `password`, `role_id`) VALUES
(12192871, 'admin', 'admin', '123456', 1),
(12192872, 'user', 'user', '123456', 2),
(12192873, 'nineu', 'nineuagustineu', '123', 2),
(12192874, 'Syafira Anbar Roswita', 'syafira', '123', 2),
(12192875, 'rayna putra', 'rayna', '123', 2),
(12192876, 'wiki', 'wiki', '123', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indeks untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12192877;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
