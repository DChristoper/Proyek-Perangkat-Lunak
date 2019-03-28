-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Mar 2019 pada 16.44
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_mkg`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pressure`
--

CREATE TABLE `pressure` (
  `id_pressure` varchar(11) NOT NULL,
  `nilai_pressure` int(11) NOT NULL,
  `id_waktu` varchar(11) NOT NULL,
  `id_tanggal` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rain_rate`
--

CREATE TABLE `rain_rate` (
  `id_rain_rate` varchar(11) NOT NULL,
  `nilai_rain_rate` int(11) NOT NULL,
  `id_waktu` varchar(11) NOT NULL,
  `id_tanggal` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `relative_humidity`
--

CREATE TABLE `relative_humidity` (
  `id_rh` varchar(11) NOT NULL,
  `nilai_rh` int(11) NOT NULL,
  `id_waktu` varchar(11) NOT NULL,
  `id_tanggal` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sun_radiation`
--

CREATE TABLE `sun_radiation` (
  `id_sun_r` varchar(11) NOT NULL,
  `nilai_sun_r` int(11) NOT NULL,
  `id_waktu` varchar(11) NOT NULL,
  `id_tanggal` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanggal`
--

CREATE TABLE `tanggal` (
  `id_tanggal` varchar(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `temperature`
--

CREATE TABLE `temperature` (
  `id_temperature` varchar(11) NOT NULL,
  `nilai_temperature` int(11) NOT NULL,
  `id_waktu` varchar(11) NOT NULL,
  `id_tanggal` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `waktu`
--

CREATE TABLE `waktu` (
  `id_waktu` varchar(11) NOT NULL,
  `jam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wind_direction`
--

CREATE TABLE `wind_direction` (
  `id_wind_d` varchar(11) NOT NULL,
  `nilai_wind_d` int(11) NOT NULL,
  `id_waktu` varchar(11) NOT NULL,
  `id_tanggal` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wind_speed`
--

CREATE TABLE `wind_speed` (
  `id_wind_s` varchar(11) NOT NULL,
  `nilai_wind_s` int(11) NOT NULL,
  `id_waktu` varchar(11) NOT NULL,
  `id_tanggal` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pressure`
--
ALTER TABLE `pressure`
  ADD PRIMARY KEY (`id_pressure`),
  ADD KEY `id_waktu` (`id_waktu`,`id_tanggal`),
  ADD KEY `id_tanggal` (`id_tanggal`);

--
-- Indeks untuk tabel `rain_rate`
--
ALTER TABLE `rain_rate`
  ADD PRIMARY KEY (`id_rain_rate`),
  ADD KEY `id_waktu` (`id_waktu`,`id_tanggal`),
  ADD KEY `id_tanggal` (`id_tanggal`);

--
-- Indeks untuk tabel `relative_humidity`
--
ALTER TABLE `relative_humidity`
  ADD PRIMARY KEY (`id_rh`),
  ADD KEY `id_waktu` (`id_waktu`,`id_tanggal`),
  ADD KEY `id_tanggal` (`id_tanggal`);

--
-- Indeks untuk tabel `sun_radiation`
--
ALTER TABLE `sun_radiation`
  ADD PRIMARY KEY (`id_sun_r`),
  ADD KEY `id_waktu` (`id_waktu`,`id_tanggal`),
  ADD KEY `id_tanggal` (`id_tanggal`);

--
-- Indeks untuk tabel `tanggal`
--
ALTER TABLE `tanggal`
  ADD PRIMARY KEY (`id_tanggal`);

--
-- Indeks untuk tabel `temperature`
--
ALTER TABLE `temperature`
  ADD PRIMARY KEY (`id_temperature`),
  ADD KEY `id_waktu` (`id_waktu`,`id_tanggal`),
  ADD KEY `id_tanggal` (`id_tanggal`);

--
-- Indeks untuk tabel `waktu`
--
ALTER TABLE `waktu`
  ADD PRIMARY KEY (`id_waktu`);

--
-- Indeks untuk tabel `wind_direction`
--
ALTER TABLE `wind_direction`
  ADD PRIMARY KEY (`id_wind_d`),
  ADD KEY `id_waktu` (`id_waktu`,`id_tanggal`),
  ADD KEY `id_tanggal` (`id_tanggal`);

--
-- Indeks untuk tabel `wind_speed`
--
ALTER TABLE `wind_speed`
  ADD PRIMARY KEY (`id_wind_s`),
  ADD KEY `id_waktu` (`id_waktu`,`id_tanggal`),
  ADD KEY `id_tanggal` (`id_tanggal`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pressure`
--
ALTER TABLE `pressure`
  ADD CONSTRAINT `pressure_ibfk_1` FOREIGN KEY (`id_waktu`) REFERENCES `waktu` (`id_waktu`),
  ADD CONSTRAINT `pressure_ibfk_2` FOREIGN KEY (`id_tanggal`) REFERENCES `tanggal` (`id_tanggal`);

--
-- Ketidakleluasaan untuk tabel `rain_rate`
--
ALTER TABLE `rain_rate`
  ADD CONSTRAINT `rain_rate_ibfk_1` FOREIGN KEY (`id_waktu`) REFERENCES `waktu` (`id_waktu`),
  ADD CONSTRAINT `rain_rate_ibfk_2` FOREIGN KEY (`id_tanggal`) REFERENCES `tanggal` (`id_tanggal`);

--
-- Ketidakleluasaan untuk tabel `relative_humidity`
--
ALTER TABLE `relative_humidity`
  ADD CONSTRAINT `relative_humidity_ibfk_1` FOREIGN KEY (`id_waktu`) REFERENCES `waktu` (`id_waktu`),
  ADD CONSTRAINT `relative_humidity_ibfk_2` FOREIGN KEY (`id_tanggal`) REFERENCES `tanggal` (`id_tanggal`);

--
-- Ketidakleluasaan untuk tabel `sun_radiation`
--
ALTER TABLE `sun_radiation`
  ADD CONSTRAINT `sun_radiation_ibfk_1` FOREIGN KEY (`id_waktu`) REFERENCES `waktu` (`id_waktu`),
  ADD CONSTRAINT `sun_radiation_ibfk_2` FOREIGN KEY (`id_tanggal`) REFERENCES `tanggal` (`id_tanggal`);

--
-- Ketidakleluasaan untuk tabel `temperature`
--
ALTER TABLE `temperature`
  ADD CONSTRAINT `temperature_ibfk_1` FOREIGN KEY (`id_waktu`) REFERENCES `waktu` (`id_waktu`),
  ADD CONSTRAINT `temperature_ibfk_2` FOREIGN KEY (`id_tanggal`) REFERENCES `tanggal` (`id_tanggal`);

--
-- Ketidakleluasaan untuk tabel `wind_direction`
--
ALTER TABLE `wind_direction`
  ADD CONSTRAINT `wind_direction_ibfk_1` FOREIGN KEY (`id_waktu`) REFERENCES `waktu` (`id_waktu`),
  ADD CONSTRAINT `wind_direction_ibfk_2` FOREIGN KEY (`id_tanggal`) REFERENCES `tanggal` (`id_tanggal`);

--
-- Ketidakleluasaan untuk tabel `wind_speed`
--
ALTER TABLE `wind_speed`
  ADD CONSTRAINT `wind_speed_ibfk_1` FOREIGN KEY (`id_waktu`) REFERENCES `waktu` (`id_waktu`),
  ADD CONSTRAINT `wind_speed_ibfk_2` FOREIGN KEY (`id_tanggal`) REFERENCES `tanggal` (`id_tanggal`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
