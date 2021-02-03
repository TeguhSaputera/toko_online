-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Feb 2021 pada 02.25
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(1, 'sepatu', 'sapatu merk Ardilas terbaru', 'pakaian pria', 280000, 20, 'sepatu.jpg'),
(2, 'kamera', 'kamera canon EOS 7D', 'elektronik', 3000000, 15, 'kamera.jpg'),
(3, 'hp vivo', 'Handphone Vivo V19', 'elektronik', 2800000, 7, 'hp.jpg'),
(4, 'laptop', 'Laptop Acer Asprine S3', 'elektronik', 4900000, 5, 'laptop.jpg'),
(7, 'mesin cuci', 'mesin cuci LG 15kg', 'elektronik', 6000000, 5, 'mesin_cuci.jpg'),
(8, 'Baju Hem', 'baju hem ukuran S, M, L, XL | Warna biru dan hitam', 'pakaian pria', 380000, 30, 'baju_hem.jpg'),
(9, 'jam tangan pria', 'jam tangan merk SKMEI', 'pakaian pria', 2500000, 10, 'jam_tangan_pria.jpg'),
(10, 'topi pria', 'topi pria dari jepang', 'pakaian pria', 300000, 20, 'topi_pria.jpg'),
(11, 'baju games wanita', 'baju games wanita merk ALESHA GAMES MAXI', 'pakaian wanita', 34000, 50, 'baju_games.jpg'),
(12, 'Kerudung', 'Kerudung Segi Empat Casual Wanita Muslim Plain Bahan Polyspun.', 'pakaian wanita', 69000, 34, 'kerudung_wanita.jpg'),
(13, 'Lip Streck', 'Wardah Exclusive Matte Lip Cream merupakan perona bibir dengan hasil akhir matte yang cocok untuk digunakan sehari-hari.', 'pakaian wanita', 65000, 23, 'lip_steck.jpg'),
(14, 'Bedak Pixy', 'Jual [Refill] PIXY UV Whitening Two Way Cake Perfect Fit / Bedak Padat Pixy - Natural Beige', 'pakaian wanita', 19900, 31, 'bedak.jpg'),
(15, 'Kaus Anak Perempuan', 'Kaos anak - Desain comfy - Round neckline dan cut off shoulder - Nyaman untuk dipakai sehari-hari - Materila \" cotton polyster', 'pakaian anak', 223830, 29, 'kaos_anak_perempuan.jpg'),
(16, 'Sepatu Anak-Anak', 'Sepatu Anak TK/SD Ukuran 28-37 - JP2837 indonesia Murah - Belanja Sepatu Sneaker', 'pakaian anak', 71500, 16, 'sepatu_anak-anak.jpeg'),
(17, ' Mainan Anak Belajar Bahasa Inggris', 'Mainan anak dengan bentuk dan gambar yang lucu, mengeluarkan suara lucu dengan bahasa inggris', 'pakaian anak', 44500, 22, 'mainan_anak-anak.jpg'),
(18, 'Raket Li-Ning', 'Model: A700/A800/A900, Color: Gray Gold, Gray Blue, Gray Green, Material: Carbon fiber, Weight: W3/3U(85-89g), Grip size: S2, Length: 675mm', 'peralatan olahraga', 554780, 12, 'raket.jpg'),
(19, 'Bola Voly', 'Bola Volley Mikasa MV 2200 super GoldBahan super lembut dan Ringan sehingga tidak akan sakit ditangan.Size 5', 'peralatan olahraga', 9, 120000, 'bola_voli.jpg'),
(20, 'Alat Panahan', ' tersedia Jual set alat panahan standart dengan harga Rp250.000 dari toko online rumah as sirja, Kab. Bekasi.', 'peralatan olahraga', 250000, 27, 'alat_panahan.jpg'),
(21, 'Skateboard', 'Jual SKATEBOARD UKURAN BESAR dengan harga Rp140.000 dari toko online ALLTOKO17, Jakarta Pusat.', 'peralatan olahraga', 140000, 24, 'skateboard.jpg');

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
(4, 'budi', 'bekasi', '2020-11-09 18:38:59', '2020-11-10 18:38:59'),
(5, 'Rahmat', 'Bandung', '2020-11-09 18:39:49', '2020-11-10 18:39:49'),
(6, 'Indra', 'Bekasi, Jawa Barat', '2020-11-13 18:53:41', '2020-11-14 18:53:41'),
(7, 'Sheila', 'Malang, Jawa Timur', '2020-11-13 18:56:33', '2020-11-14 18:56:33'),
(8, 'Andi', 'bekasi', '2020-11-14 17:37:52', '2020-11-15 17:37:52');

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
(3, 4, 4, 'laptop', 1, 4900000, ''),
(4, 4, 2, 'kamera', 1, 3000000, ''),
(5, 5, 1, 'sepatu', 1, 280000, ''),
(6, 5, 3, 'hp vivo', 1, 2800000, ''),
(7, 5, 4, 'laptop', 1, 4900000, ''),
(8, 6, 8, 'Baju Hem', 2, 380000, ''),
(9, 6, 10, 'topi pria', 1, 300000, ''),
(10, 7, 11, 'baju games wanita', 1, 34000, ''),
(11, 7, 13, 'Lip Streck', 1, 65000, ''),
(12, 7, 15, 'Kaus Anak Perempuan', 1, 223830, ''),
(13, 8, 3, 'hp vivo', 1, 2800000, '');

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
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '123', 1),
(2, 'user', 'user', '123', 2),
(3, 'dina', 'dina', '123', 2);

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
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
