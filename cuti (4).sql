-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 06, 2025 at 06:04 AM
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
  `username` varchar(30) NOT NULL,
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
(1, 'mayang', 4);

-- --------------------------------------------------------

--
-- Table structure for table `cuti`
--

CREATE TABLE `cuti` (
  `id_cuti` int NOT NULL,
  `npm` int DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `tgl_pengajuan` timestamp NOT NULL,
  `semester` int NOT NULL,
  `dokumen_pendukung` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dosen_wali`
--

CREATE TABLE `dosen_wali` (
  `id_dosen` int NOT NULL,
  `nama_dosen` varchar(50) NOT NULL,
  `nidn` varchar(20) NOT NULL,
  `id_user` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dosen_wali`
--

INSERT INTO `dosen_wali` (`id_dosen`, `nama_dosen`, `nidn`, `id_user`) VALUES
(1, 'hana', '2654970840', 2),
(2, 'raya', '2782862663', 3),
(4, 'hana', '5949401106', 2),
(5, 'raya', '1398417848', 3);

-- --------------------------------------------------------

--
-- Table structure for table `kajur`
--

CREATE TABLE `kajur` (
  `id_kajur` int NOT NULL,
  `nama_kajur` varchar(50) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama_jurusan` varchar(30) NOT NULL,
  `id_user` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kajur`
--

INSERT INTO `kajur` (`id_kajur`, `nama_kajur`, `nip`, `nama_jurusan`, `id_user`) VALUES
(1, 'Windy', '123456789', 'JKB', 5);

-- --------------------------------------------------------

--
-- Table structure for table `koor_perpus`
--

CREATE TABLE `koor_perpus` (
  `id_koor` int NOT NULL,
  `nama_koor_perpus` varchar(50) NOT NULL,
  `id_user` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `npm` int NOT NULL,
  `id_user` int DEFAULT NULL,
  `id_dosen` int DEFAULT NULL,
  `id_kajur` int DEFAULT NULL,
  `nama_mahasiswa` varchar(50) NOT NULL,
  `tempat_tanggal_lahir` varchar(100) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `angkatan` varchar(10) NOT NULL,
  `program_studi` varchar(50) NOT NULL,
  `semester` int NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`npm`, `id_user`, `id_dosen`, `id_kajur`, `nama_mahasiswa`, `tempat_tanggal_lahir`, `jenis_kelamin`, `alamat`, `agama`, `angkatan`, `program_studi`, `semester`, `no_hp`, `email`) VALUES
(230102051, 7, 1, 1, 'nana', 'Jakarta, 01-01-2000', 'Laki-laki', 'Jl. Merdeka No. 1', 'Islam', '2023', 'Teknik Informatika', 2, '081234567890', 'nana@gmail.com'),
(230102052, 8, 1, 1, 'fijar', 'Jakarta, 01-01-2000', 'Laki-laki', 'Jl. Merdeka No. 1', 'Islam', '2023', 'Teknik Informatika', 2, '081234567890', 'fijar@gmail.com'),
(230102053, 9, 1, 1, 'rara', 'Jakarta, 01-01-2000', 'Laki-laki', 'Jl. Merdeka No. 1', 'Islam', '2023', 'Teknik Informatika', 2, '081234567890', 'rara@gmail.com'),
(230102055, 7, 1, 1, 'Nana', 'Jakarta, 12-05-2003', 'Perempuan', 'Jl. Mawar No. 1', 'Islam', '2023', 'Teknik Informatika', 2, '081234567891', 'nana@gmail.com'),
(230102056, 8, 1, 1, 'Fijar', 'Bandung, 20-07-2004', 'Laki-laki', 'Jl. Melati No. 5', 'Kristen', '2023', 'Teknik Informatika', 2, '081234567892', 'fijar@gmail.com'),
(230102057, 9, 1, 1, 'Rara', 'Surabaya, 15-03-2003', 'Perempuan', 'Jl. Kenanga No. 3', 'Hindu', '2023', 'Teknik Informatika', 2, '081234567893', 'rara@gmail.com');

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
(3, 'raya', 'passdosen123', 'dosen'),
(4, 'mayang', 'passbaup123', 'baup'),
(5, 'windy', 'passkajur123', 'kajur'),
(6, 'manda', 'passperpus123', 'perpus'),
(7, 'nana', 'mhs1', 'mahasiswa'),
(8, 'fijar', 'mhs2', 'mahasiswa'),
(9, 'rara', 'mhs3', 'mahasiswa');

--
-- Triggers `user`
--
DELIMITER $$
CREATE TRIGGER `after_user_insert` AFTER INSERT ON `user` FOR EACH ROW BEGIN
    IF NEW.level = 'mahasiswa' THEN
        -- Pastikan NPM tidak duplikat
        IF (SELECT COUNT(*) FROM mahasiswa WHERE npm = (SELECT COALESCE(MAX(npm), 230102050) + 1 FROM mahasiswa)) = 0 THEN
            INSERT INTO mahasiswa (npm, id_user, id_dosen, id_kajur, nama_mahasiswa, tempat_tanggal_lahir, jenis_kelamin, alamat, agama, angkatan, program_studi, semester, no_hp, email)
            VALUES (
                (SELECT COALESCE(MAX(npm), 230102050) + 1 FROM mahasiswa), -- NPM otomatis bertambah
                NEW.id_user, 
                1, -- ID Dosen Wali (Sesuaikan dengan dosen default)
                1, -- ID Kajur (Sesuaikan dengan kajur default)
                NEW.username, 
                'Jakarta, 01-01-2000', -- Default tempat tanggal lahir
                'Laki-laki', -- Default jenis kelamin
                'Jl. Merdeka No. 1', -- Default alamat
                'Islam', -- Default agama
                '2023', -- Default angkatan
                'Teknik Informatika', -- Default program studi
                2, -- Default semester
                '081234567890', -- Default no HP
                CONCAT(NEW.username, '@gmail.com') -- Email otomatis dibuat dari username
            );
        ELSE
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'NPM sudah ada, harap periksa kembali!';
        END IF;
    END IF;
END
$$
DELIMITER ;

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
-- Indexes for table `dosen_wali`
--
ALTER TABLE `dosen_wali`
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
  MODIFY `id_cuti` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dosen_wali`
--
ALTER TABLE `dosen_wali`
  MODIFY `id_dosen` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kajur`
--
ALTER TABLE `kajur`
  MODIFY `id_kajur` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `koor_perpus`
--
ALTER TABLE `koor_perpus`
  MODIFY `id_koor` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
-- Constraints for table `dosen_wali`
--
ALTER TABLE `dosen_wali`
  ADD CONSTRAINT `dosen_wali_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `mahasiswa_ibfk_2` FOREIGN KEY (`id_dosen`) REFERENCES `dosen_wali` (`id_dosen`) ON DELETE CASCADE ON UPDATE CASCADE,
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
