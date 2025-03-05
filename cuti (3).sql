-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 05, 2025 at 12:46 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cuti`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `id_user` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `id_user`) VALUES
(1, 'andin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `baup`
--

CREATE TABLE `baup` (
  `id_baup` int NOT NULL,
  `nama_baup` varchar(50) NOT NULL,
  `id_user` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `baup`
--

INSERT INTO `baup` (`id_baup`, `nama_baup`, `id_user`) VALUES
(1, 'mayang', 3);

-- --------------------------------------------------------

--
-- Table structure for table `cuti`
--

CREATE TABLE `cuti` (
  `id_cuti` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  `tgl_pengajuan` timestamp NOT NULL,
  `semester` int NOT NULL,
  `semester_cuti` int NOT NULL,
  `tahun_akademik` int NOT NULL,
  `alasan` varchar(200) NOT NULL,
  `dokumen_pendukung` blob NOT NULL,
  `npm` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cuti`
--

INSERT INTO `cuti` (`id_cuti`, `status`, `tgl_pengajuan`, `semester`, `semester_cuti`, `tahun_akademik`, `alasan`, `dokumen_pendukung`, `npm`) VALUES
(1, 1, '2025-03-04 06:57:40', 2, 0, 0, 'sakit', '', 230102050),
(2, 0, '2025-03-03 02:00:00', 4, 0, 0, '', '', 230102051),
(3, 1, '2025-03-02 01:00:00', 2, 0, 0, '', '', 230102052),
(4, 0, '2025-03-01 03:00:00', 4, 0, 0, '', '', 230102053),
(5, 1, '2025-03-04 02:00:00', 5, 0, 0, '', '', 230102054);

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` int NOT NULL,
  `nama_dosen` varchar(50) NOT NULL,
  `nidn` varchar(20) NOT NULL,
  `id_user` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nama_dosen`, `nidn`, `id_user`) VALUES
(1, 'hana', '0123456789', 2),
(2, 'hana', '0123456789', 2),
(3, 'bara', '223456789', 19),
(4, 'rafi', '323456789', 20),
(5, 'akbar', '423456789', 21);

-- --------------------------------------------------------

--
-- Table structure for table `kajur`
--

CREATE TABLE `kajur` (
  `id_kajur` int NOT NULL,
  `nama_kajur` varchar(50) NOT NULL,
  `nidn` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nama_jurusan` varchar(30) NOT NULL,
  `id_user` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kajur`
--

INSERT INTO `kajur` (`id_kajur`, `nama_kajur`, `nidn`, `nama_jurusan`, `id_user`) VALUES
(1, 'windy', '0234567891', 'JKB', 4),
(2, 'Rivat', '23456789', 'JREM', 22);

-- --------------------------------------------------------

--
-- Table structure for table `koor_perpus`
--

CREATE TABLE `koor_perpus` (
  `id_koor` int NOT NULL,
  `nama_koor_perpus` varchar(50) NOT NULL,
  `id_user` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `koor_perpus`
--

INSERT INTO `koor_perpus` (`id_koor`, `nama_koor_perpus`, `id_user`) VALUES
(1, 'manda', 5);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `npm` int NOT NULL,
  `nama_mahasiswa` varchar(50) NOT NULL,
  `tempat_tanggal_lahir` varchar(150) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `agama` varchar(20) NOT NULL,
  `angkatan` year NOT NULL,
  `program_studi` varchar(100) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `semester` int NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `id_user` int DEFAULT NULL,
  `id_dosen` int DEFAULT NULL,
  `id_kajur` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`npm`, `nama_mahasiswa`, `tempat_tanggal_lahir`, `jenis_kelamin`, `agama`, `angkatan`, `program_studi`, `jurusan`, `semester`, `alamat`, `no_hp`, `email`, `kelas`, `id_user`, `id_dosen`, `id_kajur`) VALUES
(230102050, 'nana', 'Bandung, 01-01-2006', 'L', 'Islam', 2024, 'Teknik Elektro', 'JREM', 2, 'Cilacap', '822345678', 'nana@gmail.com', 'TI 2C', 6, 1, 2),
(230102051, 'fijar', 'Jakarta, 15-05-2005', 'L', 'Islam', 2023, 'Teknik Listrik', 'JREM', 4, 'Banyumas', '823345678', 'fijar@gmail.com', 'TI 2C', 7, 1, 1),
(230102052, 'rara', 'Surabaya, 20-08-2005', 'L', 'Kristen', 2023, 'Teknik Informatika', 'JKB', 4, 'Purwokerto', '823455678', 'rara@gmail.com', 'TI 2C', 8, 1, 1),
(230102053, 'rere', 'Yogyakarta, 10-12-2004', 'L', 'Hindu', 2022, 'Teknik Mesin', 'JRMIP', 6, 'Banyumas', '823445678', 'rere@gmail.com', 'TI 2C', 9, 1, 1),
(230102054, 'riri', 'Bali, 05-07-2005', 'L', 'Buddha', 2023, 'Rekayasa Keamanan Syber', '', 0, '', '', 'riri@gmail.com', 'TI 2C', 10, 1, 1),
(230102055, 'Brian', 'Jakarta, 12-06-2003', 'L', 'Islam', 2023, 'Teknik Informatika', 'Informatika', 4, 'Jl. Merdeka No. 45, Jakarta', '081234567890', 'brian@gmail.com', 'TI 2B', 23, 4, 1),
(230102056, 'Naysila', 'Bandung, 25-08-2004', 'P', 'Kristen', 2024, 'Teknik Informatika', 'Informatika', 5, 'Jl. Dipatiukur No. 10, Bandung', '081298765432', 'naysila@gmail.com', 'TI 2A', 24, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `level`) VALUES
(1, 'andin', 'passadmin123', 'admin'),
(2, 'hana', 'passdosen123', 'dosen'),
(3, 'mayang', 'passbaup123', 'baup'),
(4, 'windy', 'passkajur123', 'kajur'),
(5, 'manda', 'passperpus123', 'perpus'),
(6, 'nana', 'mhs1', 'mahasiswa'),
(7, 'fijar', 'mhs2', 'mahasiswa'),
(8, 'rara', 'mhs3', 'mahasiswa'),
(9, 'rere', 'mhs4', 'mahasiswa'),
(10, 'riri', 'mhs5', 'mahasiswa'),
(11, 'bara', 'passdosen123', 'dosen'),
(12, 'rafi', 'passdosen123', 'dosen'),
(13, 'akbar', 'passdosen123', 'dosen'),
(14, 'rivat', 'passkajur123', 'kajur'),
(15, 'bara', 'passdosen123', 'dosen'),
(16, 'rafi', 'passdosen123', 'dosen'),
(17, 'akbar', 'passdosen123', 'dosen'),
(18, 'rivat', 'passkajur123', 'kajur'),
(19, 'bara', 'passdosen123', 'dosen'),
(20, 'rafi', 'passdosen123', 'dosen'),
(21, 'akbar', 'passdosen123', 'dosen'),
(22, 'rivat', 'passkajur123', 'kajur'),
(23, 'brian', 'passmhs123', 'mahasiswa'),
(24, 'naysila', 'passmhs123', 'mahasiswa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `baup`
--
ALTER TABLE `baup`
  ADD PRIMARY KEY (`id_baup`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `cuti`
--
ALTER TABLE `cuti`
  ADD PRIMARY KEY (`id_cuti`),
  ADD UNIQUE KEY `unique_cuti` (`npm`,`semester`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `kajur`
--
ALTER TABLE `kajur`
  ADD PRIMARY KEY (`id_kajur`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `koor_perpus`
--
ALTER TABLE `koor_perpus`
  ADD PRIMARY KEY (`id_koor`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`npm`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_dosen` (`id_dosen`),
  ADD KEY `id_kajur` (`id_kajur`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `baup`
--
ALTER TABLE `baup`
  MODIFY `id_baup` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cuti`
--
ALTER TABLE `cuti`
  MODIFY `id_cuti` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id_dosen` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kajur`
--
ALTER TABLE `kajur`
  MODIFY `id_kajur` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `koor_perpus`
--
ALTER TABLE `koor_perpus`
  MODIFY `id_koor` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `baup`
--
ALTER TABLE `baup`
  ADD CONSTRAINT `baup_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cuti`
--
ALTER TABLE `cuti`
  ADD CONSTRAINT `cuti_ibfk_1` FOREIGN KEY (`npm`) REFERENCES `mahasiswa` (`npm`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dosen`
--
ALTER TABLE `dosen`
  ADD CONSTRAINT `dosen_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kajur`
--
ALTER TABLE `kajur`
  ADD CONSTRAINT `kajur_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `koor_perpus`
--
ALTER TABLE `koor_perpus`
  ADD CONSTRAINT `koor_perpus_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mahasiswa_ibfk_2` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id_dosen`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mahasiswa_ibfk_3` FOREIGN KEY (`id_kajur`) REFERENCES `kajur` (`id_kajur`) ON DELETE CASCADE ON UPDATE CASCADE;

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `auto_insert_dosen` ON SCHEDULE EVERY 1 MINUTE STARTS '2025-03-04 10:15:26' ON COMPLETION NOT PRESERVE ENABLE DO INSERT INTO dosen (nama_dosen, nidn, id_user)
SELECT username, '0000000000', id_user 
FROM user 
WHERE role = 'dosen' AND id_user NOT IN (SELECT id_user FROM dosen)$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
