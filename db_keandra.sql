-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jan 2021 pada 06.24
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_keandra`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_marketing`
--

CREATE TABLE `t_marketing` (
  `id_marketing` int(11) NOT NULL,
  `nama_mar` varchar(30) NOT NULL,
  `jk` char(2) NOT NULL,
  `agama` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_marketing`
--

INSERT INTO `t_marketing` (`id_marketing`, `nama_mar`, `jk`, `agama`, `email`, `alamat`) VALUES
(1, 'Bagus Riadi', 'L', 'Islam', 'bagus@gmail.com', 'Bandung'),
(2, 'Indah Puspita', 'P', 'Katolik', 'indah@yahoo.com', 'Jakarta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pembeli`
--

CREATE TABLE `t_pembeli` (
  `id_pembeli` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jk` char(2) NOT NULL,
  `agama` varchar(30) NOT NULL,
  `no_hp` varchar(30) NOT NULL,
  `gaji` varchar(30) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_pembeli`
--

INSERT INTO `t_pembeli` (`id_pembeli`, `nama`, `jk`, `agama`, `no_hp`, `gaji`, `alamat`) VALUES
(1, 'M. Nasihul Umam', 'L', 'Islam', '0881023340491', '>= 5 Juta', 'Cirebon'),
(2, 'Farid Dama', 'L', 'Kristen', '0881023340491', '> 1 Juta < 5 Juta', 'Tangerang'),
(3, 'Lidiya Septiyani', 'P', 'Budha', '083823045047', '<= 1 Juta', 'Kuningan'),
(4, 'Irvan', 'L', 'Budha', '0881023340491', '> 1 Juta < 5 Juta', 'Majalengka');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pembelian`
--

CREATE TABLE `t_pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `id_pembeli` int(11) NOT NULL,
  `no_rumah` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `bayar` varchar(30) NOT NULL,
  `id_marketing` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_pembelian`
--

INSERT INTO `t_pembelian` (`id_pembelian`, `id_pembeli`, `no_rumah`, `tanggal`, `bayar`, `id_marketing`) VALUES
(1, 1, 1, '2021-01-04', 'Cash', 2),
(2, 3, 2, '2021-01-16', 'Kredit 5 Tahun', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_rumah`
--

CREATE TABLE `t_rumah` (
  `no_rumah` int(11) NOT NULL,
  `tipe` char(5) NOT NULL,
  `lokasi` varchar(30) NOT NULL,
  `tahun` varchar(30) NOT NULL,
  `harga` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_rumah`
--

INSERT INTO `t_rumah` (`no_rumah`, `tipe`, `lokasi`, `tahun`, `harga`) VALUES
(1, 'A', 'Sektor 1', '2015', '250000000'),
(2, 'D', 'Sektor 6', '2019', '350000000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `username`, `password`) VALUES
(1, 'admin', 'admin', 'admin'),
(2, 'user', 'user', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `t_marketing`
--
ALTER TABLE `t_marketing`
  ADD PRIMARY KEY (`id_marketing`);

--
-- Indeks untuk tabel `t_pembeli`
--
ALTER TABLE `t_pembeli`
  ADD PRIMARY KEY (`id_pembeli`);

--
-- Indeks untuk tabel `t_pembelian`
--
ALTER TABLE `t_pembelian`
  ADD PRIMARY KEY (`id_pembelian`),
  ADD KEY `id_pembeli` (`id_pembeli`),
  ADD KEY `no_rumah` (`no_rumah`),
  ADD KEY `id_marketing` (`id_marketing`);

--
-- Indeks untuk tabel `t_rumah`
--
ALTER TABLE `t_rumah`
  ADD PRIMARY KEY (`no_rumah`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `t_marketing`
--
ALTER TABLE `t_marketing`
  MODIFY `id_marketing` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `t_pembeli`
--
ALTER TABLE `t_pembeli`
  MODIFY `id_pembeli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `t_pembelian`
--
ALTER TABLE `t_pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `t_rumah`
--
ALTER TABLE `t_rumah`
  MODIFY `no_rumah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `t_pembelian`
--
ALTER TABLE `t_pembelian`
  ADD CONSTRAINT `r_marketing` FOREIGN KEY (`id_marketing`) REFERENCES `t_marketing` (`id_marketing`),
  ADD CONSTRAINT `r_pembeli` FOREIGN KEY (`id_pembeli`) REFERENCES `t_pembeli` (`id_pembeli`),
  ADD CONSTRAINT `r_rumah` FOREIGN KEY (`no_rumah`) REFERENCES `t_rumah` (`no_rumah`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
