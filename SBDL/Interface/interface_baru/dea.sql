-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 14 Mar 2020 pada 08.58
-- Versi Server: 5.5.27
-- Versi PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `si_aset_bmck`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_admin`
--

CREATE TABLE IF NOT EXISTS `data_admin` (
  `username` varchar(10) NOT NULL,
  `password` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_admin`
--

INSERT INTO `data_admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_barang`
--

CREATE TABLE IF NOT EXISTS `data_barang` (
  `id_baraang` int(5) NOT NULL,
  `kd_brg1` varchar(10) NOT NULL,
  `kd_brg2` varchar(10) NOT NULL,
  `kd_brg4` varchar(4) NOT NULL,
  `kd_gbg` varchar(20) NOT NULL,
  `nama_barang` varchar(200) NOT NULL,
  `merk` varchar(200) NOT NULL,
  `niali_aset` float NOT NULL,
  `letak` int(2) NOT NULL,
  `kondisi` int(1) NOT NULL,
  `asal_perolehan` varchar(100) NOT NULL,
  `thn_dapat` varchar(4) NOT NULL,
  `tgl_buku` date NOT NULL,
  PRIMARY KEY (`id_baraang`),
  UNIQUE KEY `kd_brg1` (`kd_brg1`),
  UNIQUE KEY `kd_brg2` (`kd_brg2`),
  UNIQUE KEY `kd_brg4` (`kd_brg4`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_barang`
--

INSERT INTO `data_barang` (`id_baraang`, `kd_brg1`, `kd_brg2`, `kd_brg4`, `kd_gbg`, `nama_barang`, `merk`, `niali_aset`, `letak`, `kondisi`, `asal_perolehan`, `thn_dapat`, `tgl_buku`) VALUES
(9988, '0011', '1111', '2222', '2233', 'ATK', 'YUPITER', 123, 0, 98, 'sumbangan', '2000', '2012-10-20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_br1`
--

CREATE TABLE IF NOT EXISTS `data_br1` (
  `Kode` varchar(10) NOT NULL,
  `Nama` varchar(150) NOT NULL,
  PRIMARY KEY (`Kode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_br1`
--

INSERT INTO `data_br1` (`Kode`, `Nama`) VALUES
('2222', 'ATK-Bukku');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_br2`
--

CREATE TABLE IF NOT EXISTS `data_br2` (
  `kode1` varchar(10) NOT NULL,
  `kode2` varchar(10) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  PRIMARY KEY (`kode2`),
  UNIQUE KEY `kode2` (`kode2`),
  UNIQUE KEY `kode1` (`kode1`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_br2`
--

INSERT INTO `data_br2` (`kode1`, `kode2`, `Nama`) VALUES
('0011', '1111', 'ATK-alat ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_dinas`
--

CREATE TABLE IF NOT EXISTS `data_dinas` (
  `id_dinas` int(2) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `Logo` varchar(100) NOT NULL,
  PRIMARY KEY (`id_dinas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_dinas`
--

INSERT INTO `data_dinas` (`id_dinas`, `Nama`, `Alamat`, `Logo`) VALUES
(7788, 'husni', 'mjl', 'kemendikbud');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_laporan`
--

CREATE TABLE IF NOT EXISTS `data_laporan` (
  `ID` int(100) NOT NULL,
  `Dinas` varchar(100) NOT NULL,
  `Kabupaten Dinas` varchar(100) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `Web` varchar(100) NOT NULL,
  `Kota` varchar(100) NOT NULL,
  `Tgl` varchar(100) NOT NULL,
  `Nama_ttd` varchar(100) NOT NULL,
  `Nip` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_laporan`
--

INSERT INTO `data_laporan` (`ID`, `Dinas`, `Kabupaten Dinas`, `Alamat`, `Web`, `Kota`, `Tgl`, `Nama_ttd`, `Nip`) VALUES
(7788, 'pendidikan', 'majalengka', 'majalengka', 'bmck.id', 'majalengka', '15-10-20', 'husni', '3451626567');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_ruang`
--

CREATE TABLE IF NOT EXISTS `data_ruang` (
  `id_ruang` int(3) NOT NULL,
  `nama_ruang` varchar(150) NOT NULL,
  `kondisi` int(3) NOT NULL,
  `luas` float NOT NULL,
  `ttg_jb` varchar(100) NOT NULL,
  PRIMARY KEY (`id_ruang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_ruang`
--

INSERT INTO `data_ruang` (`id_ruang`, `nama_ruang`, `kondisi`, `luas`, `ttg_jb`) VALUES
(9988, 'ruang dinas', 98, 22, 'husni');

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `data_br1`
--
ALTER TABLE `data_br1`
  ADD CONSTRAINT `data_br1_ibfk_1` FOREIGN KEY (`Kode`) REFERENCES `data_barang` (`kd_brg4`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `data_br2`
--
ALTER TABLE `data_br2`
  ADD CONSTRAINT `data_br2_ibfk_2` FOREIGN KEY (`kode2`) REFERENCES `data_barang` (`kd_brg2`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `data_br2_ibfk_1` FOREIGN KEY (`kode1`) REFERENCES `data_barang` (`kd_brg1`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `data_laporan`
--
ALTER TABLE `data_laporan`
  ADD CONSTRAINT `data_laporan_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `data_dinas` (`id_dinas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `data_ruang`
--
ALTER TABLE `data_ruang`
  ADD CONSTRAINT `data_ruang_ibfk_1` FOREIGN KEY (`id_ruang`) REFERENCES `data_barang` (`id_baraang`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
