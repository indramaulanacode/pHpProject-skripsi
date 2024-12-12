-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 12, 2024 at 07:29 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_skripsi`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `id` int(100) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `admpassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`id`, `nama`, `email`, `admpassword`) VALUES
(1, 'administrator', 'administrator', 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `notifikasi`
--

CREATE TABLE `notifikasi` (
  `id` int(100) NOT NULL,
  `nim` varchar(100) NOT NULL,
  `nama_mahasiswa` varchar(100) NOT NULL,
  `notifikasi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifikasi`
--

INSERT INTO `notifikasi` (`id`, `nim`, `nama_mahasiswa`, `notifikasi`) VALUES
(3, '18110032', 'Muhammad Fadhil ', 'Mengajukan Skripsi'),
(4, '18110037', 'Indra Maulana Agung', 'Mengajukan Judul'),
(6, '18110032', 'Muhammad Fadhil ', 'Mengajukan Proposal'),
(7, '18110147', 'MULYADI', 'Mengajukan Judul'),
(8, '18110146', 'MAIMUN', 'Mengajukan Judul'),
(9, '18110145', 'MELIZA', 'Mengajukan Judul'),
(10, '18110144', 'ELFIANTI', 'Mengajukan Judul'),
(11, '18110143', 'SAFRINA', 'Mengajukan Judul'),
(12, '18110142', 'IRVAN MIRZA', 'Mengajukan Judul'),
(13, '18110141', 'ERIRINALDI', 'Mengajukan Judul'),
(14, '18110140', 'ERMAWATI', 'Mengajukan Judul'),
(15, '18110140', 'ERMAWATI', 'Mengajukan Proposal'),
(16, '18110140', 'ERMAWATI', 'Mengajukan Proposal'),
(17, '18110037', 'Indra Maulana Agung', 'Mengajukan Proposal'),
(18, '18110037', 'Indra Maulana Agung', 'Mengajukan Proposal'),
(19, '18110037', 'Indra Maulana Agung', 'Mengajukan Skripsi'),
(20, '18110037', 'Indra Maulana Agung', 'Mengajukan Skripsi'),
(21, '18110037', 'Indra Maulana Agung', 'Mengajukan Skripsi'),
(22, '18110037', 'Indra Maulana Agung', 'Mengajukan Skripsi'),
(23, '18110143', 'SAFRINA', 'Mengajukan Skripsi'),
(24, '18110143', 'SAFRINA', 'Mengajukan Skripsi'),
(25, '18110143', 'SAFRINA', 'Mengajukan Skripsi'),
(26, '18110139', 'YUNITA ARDINA', 'Mengajukan Judul'),
(27, '18110138', 'CUT RAHMAWATI', 'Mengajukan Judul'),
(28, '18110137', 'MASRUL', 'Mengajukan Judul'),
(29, '18110143', 'SAFRINA', 'Mengajukan Proposal'),
(30, '18110143', 'SAFRINA', 'Mengajukan Proposal'),
(31, '18110143', 'SAFRINA', 'Mengajukan Skripsi'),
(32, '18110143', 'SAFRINA', 'Mengajukan Judul'),
(33, '18110134', 'SRI MULIATI', 'Mengajukan Judul');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dosen`
--

CREATE TABLE `tbl_dosen` (
  `id_dosen` int(20) NOT NULL,
  `nama_dosen` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dpassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_dosen`
--

INSERT INTO `tbl_dosen` (`id_dosen`, `nama_dosen`, `email`, `dpassword`) VALUES
(1, '1', '1', '1'),
(2, 'admin dosen', 'admindosen@gmail.com', 'admin'),
(3, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jadwal`
--

CREATE TABLE `tbl_jadwal` (
  `id` int(10) NOT NULL,
  `jadwal_seminar` varchar(50) NOT NULL,
  `jadwal_sidang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_jadwal`
--

INSERT INTO `tbl_jadwal` (`id`, `jadwal_seminar`, `jadwal_sidang`) VALUES
(13, '', '2022-08-19'),
(14, '2022-08-19', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_judul`
--

CREATE TABLE `tbl_judul` (
  `id` int(100) NOT NULL,
  `id_mahasiswa` int(100) NOT NULL,
  `nim` int(20) NOT NULL,
  `nama_mahasiswa` varchar(20) NOT NULL,
  `judul1` varchar(100) NOT NULL,
  `judul2` varchar(100) NOT NULL,
  `judul3` varchar(100) NOT NULL,
  `acc` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_judul`
--

INSERT INTO `tbl_judul` (`id`, `id_mahasiswa`, `nim`, `nama_mahasiswa`, `judul1`, `judul2`, `judul3`, `acc`, `keterangan`) VALUES
(1, 5, 18110034, 'Aulia', 'Aplikasi Agenda Berbasis Android Dengan Fitur Push Notification Dan Reminder (Studi Kasus: Ukm Infor', '  Sistem Pendukung Keputusan Penilaian Kesehatan Tanah Dengan Metode Simple Additive Weighting', 'Pengembangan Aplikasi Modul Pembelajaran Desain Grafis Berbasis Android', 'Pengembangan Aplikasi Modul Pembelajaran Desain Grafis Berbasis Android', ''),
(2, 3, 18110032, 'Muhammad Fadhil ', 'Sisitem Informasi Manajemen Tugas Skripsi Berbasis Web', ' Rancang Bangun Aplikasi Rumah Sakit Berbasis Android ', 'Sisitem Informasi Khas Mesjid', 'Rancang Bangun Aplikasi Rumah Sakit Berbasis Android ', ''),
(6, 2, 18110037, 'Indra Maulana Agung', 'APLIKASI MANAJEMEN TUGAS AKHIR DI FAKULTAS KOMPUTER MULTIMEDIA UNIVERSITAS ISLAM KEBANGSAAN INDONESI', '  APLIKASI MANAJEMEN TUGAS AKHIR DI FAKULTAS KOMPUTER MULTIMEDIA UNIVERSITAS ISLAM KEBANGSAAN INDONE', 'APLIKASI MANAJEMEN TUGAS AKHIR DI FAKULTAS KOMPUTER MULTIMEDIA UNIVERSITAS ISLAM KEBANGSAAN INDONESI', 'APLIKASI MANAJEMEN TUGAS AKHIR DI FAKULTAS KOMPUTER MULTIMEDIA UNIVERSITAS ISLAM KEBANGSAAN INDONESI', ''),
(8, 7, 18110147, 'MULYADI', 'Pengembangan Bahan Ajar Pengantar Teknologi Informasi Berbasis Contextual Teaching and Learning', '   Rancang Bangun Game 2d Shooter Pltformer Menggunakan Metode Finite State Machine', 'Sistem Pendukung Keputusan Penentuan Dosen Pembimbing Skripsi Menggunakan Metode Profile Matching', 'Tidak Diterima', ''),
(9, 8, 18110146, 'MAIMUN', 'Pengembangan Sistem Informasi Presensi Kuliah Berbasis NFC di Program Studi Pendidikan Teknik Inform', ' Pengembangan Aplikasi Managemen Tugas Skripsi (Studi Kasus: Program Studi Teknik Informatika', 'engembangan Bahan Ajar Pengantar Teknologi Informasi Berbasis Contextual Teaching and Learning ', 'Pengembangan Aplikasi Managemen Tugas Skripsi (Studi Kasus: Program Studi Teknik Informatika', 'Harap tambahkan metode\r\n'),
(10, 9, 18110145, 'MELIZA', 'Pengembangan Sistem Informasi Presensi Kuliah Berbasis NFC di Program Studi Pendidikan Teknik Inform', ' Pengembangan Aplikasi Managemen Tugas Skripsi (Studi Kasus: Program Studi Teknik Informatika', 'Implementasi Aplikasi Mobile Water Drinking Assistant CV. Gama Putra Santosa', 'Pengembangan Aplikasi Managemen Tugas Skripsi (Studi Kasus: Program Studi Teknik Informatika', 'Tolong Tambahkan Metode'),
(11, 10, 18110144, 'ELFIANTI', 'Prediksi Permintaan Mata Kuliah Pada Semester Padat Dengan Menggunakan Teknik Association Rule Denga', ' Rancang Bangun Sistem Parkir Otomatis Pada Kampus Ii Itn Malang Menggunakan Minimum Sistem Arduino ', 'Analisis Perbandingan Framework Codeigniter Dan Framework Laravel (Studi Kasus Inventaris Hmj Ti', 'Tidak Diterima', 'Harap Menunggu Ke tahap berikutnya'),
(13, 12, 18110142, 'IRVAN MIRZA', 'Rekomendasi Grup Pada Website Alumni Teknik Informatika', 'Perancangan Aplikasi Human Resource Information System (HRIS) Berbasis Website Pada PT. Super Tata R', 'Group Decision Support System (GDSS) untuk Pemilihan Konsentrasi Studi Mahasiswa Menggunakan Ahp dan', 'Masih Dalam Proses', ''),
(14, 13, 18110141, 'ERIRINALDI', 'Video Company Profile LIVE Kota Tangerang Dengan Teknik Editing Menggunakan Adobe Premier Pro', ' Mendeteksi Keakuratan Metode Noise Salt And Pepper Dengan Median Filter', 'Sistem Monitoring Keadaan Ruang Laboratorium Fakultas Komunikasi Dan Informatika', 'Video Company Profile LIVE Kota Tangerang Dengan Teknik Editing Menggunakan Adobe Premier Pro', ''),
(15, 14, 18110140, 'ERMAWATI', 'Prediksi Jumlah Lulusan Mahasiswa Stmik Dumai Menggunakan Jaringan Syaraf Tiruan', 'Game Petualangan’trapped Miners’dengan Metode Fintite State Machine', 'Pengembangan Media Pembelajaran Interaktif Berbasis Mobile Bermuatan Problem Based Learning Mata Pel', 'Masih Dalam Proses', ''),
(16, 15, 18110139, 'YUNITA ARDINA', 'Sistem Pendukung Keputusan Penilaian Kesehatan Tanah Dengan Metode Simple Additive Weighting', ' Pengembangan Aplikasi Modul Pembelajaran Desain Grafis Berbasis Android', 'Pengembangan Media Pembelajaran Berbasis Web Untuk Sekolah Menengah Pertama (Smp)', 'Sistem Pendukung Keputusan Penilaian Kesehatan Tanah Dengan Metode Simple Additive Weighting', ''),
(17, 16, 18110138, 'CUT RAHMAWATI', 'Sistem Informasi Profil Mahasiswa Pada Penilaian Penguji Pessta+ Di Perguruan Tinggi', ' Penerapan Metode Jaringan Syaraf Tiruan Pada Sistem Deteksi Citra Darah Manusia', 'Perancangan Digitalisasi Pelayanan Administrasi Akademik Jurusan Teknik Elektronika Berbasis Android', 'Penerapan Metode Jaringan Syaraf Tiruan Pada Sistem Deteksi Citra Darah Manusia', ''),
(18, 17, 18110137, 'MASRUL', 'Analisis Tingkat Kepuasan Mahasiswa Terhadap Kinerja Sistem Informasi Akademik', ' Sistem Penentuan Jarak Terdekat Dalam Pengiriman Darah Di Pmi Kota Semarang Dengan Metode Algoritma', 'Sistem Penunjang Keputusan Pencarian Jarak Terpendek Menuju Rumah Sakit Dan Puskesmas Dengan Metode ', 'Cari Judul Baru', ''),
(19, 11, 18110143, 'SAFRINA', 'Judul 1', ' Judul 2', 'Judul 3', 'Judul 2', ''),
(20, 20, 18110134, 'SRI MULIATI', 'sistem Informasi', 'sistem Informasi', 'sistem Informasi', 'Masih Dalam Proses', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_judul_acc`
--

CREATE TABLE `tbl_judul_acc` (
  `id` int(50) NOT NULL,
  `nim` int(50) NOT NULL,
  `nama_mahasiswa` varchar(100) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `diterima` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_judul_acc`
--

INSERT INTO `tbl_judul_acc` (`id`, `nim`, `nama_mahasiswa`, `judul`, `diterima`) VALUES
(11, 18110037, 'Indra Maulana Agung', 'APLIKASI MANAJEMEN TUGAS AKHIR DI FAKULTAS KOMPUTER MULTIMEDIA UNIVERSITAS ISLAM KEBANGSAAN INDONESI', 'Tidak Diterima'),
(16, 18110139, 'YUNITA ARDINA', 'Sistem Pendukung Keputusan Penilaian Kesehatan Tanah Dengan Metode Simple Additive Weighting', 'Diterima'),
(17, 18110141, 'ERIRINALDI', 'Video Company Profile LIVE Kota Tangerang Dengan Teknik Editing Menggunakan Adobe Premier Pro', 'Diterima'),
(18, 18110146, 'MAIMUN', 'Pengembangan Aplikasi Managemen Tugas Skripsi (Studi Kasus: Program Studi Teknik Informatika', 'Diterima'),
(19, 18110145, 'MELIZA', 'Pengembangan Aplikasi Managemen Tugas Skripsi (Studi Kasus: Program Studi Teknik Informatika', 'Diterima'),
(20, 18110144, 'ELFIANTI', 'Tidak Diterima', 'Tidak Diterima'),
(21, 18110137, 'MASRUL', 'Cari Judul Baru', 'Tidak Diterima');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mahasiswa`
--

CREATE TABLE `tbl_mahasiswa` (
  `id_mahasiswa` int(100) NOT NULL,
  `nama_mahasiswa` varchar(100) NOT NULL,
  `nim` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mpassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_mahasiswa`
--

INSERT INTO `tbl_mahasiswa` (`id_mahasiswa`, `nama_mahasiswa`, `nim`, `email`, `mpassword`) VALUES
(2, 'Indra Maulana Agung', 18110037, 'indramaulanaagung@gmail.com', 'kampus'),
(4, 'Muhammad Aziz', 18110033, 'muhammadaziz@gmail.com', 'kampus'),
(5, 'Aulia', 18110034, 'aulia@gmail.com', 'kampus'),
(6, 'M. TONI', 18110148, 'M. TONI@gmail.com', 'kampus'),
(7, 'MULYADI', 18110147, 'MULYADI@gmail.com', 'kampus'),
(8, 'MAIMUN', 18110146, 'MAIMUN@gmail.com', 'kampus'),
(9, 'MELIZA', 18110145, 'MELIZA@gmail.com', 'kampus'),
(10, 'ELFIANTI', 18110144, 'ELFIANTI@gmail.com', 'kampus'),
(11, 'SAFRINA', 18110143, 'SAFRINA@gmail.com', 'kampus'),
(12, 'IRVAN MIRZA', 18110142, 'IRVAN MIRZA@gmail.com', 'kampus'),
(13, 'ERIRINALDI', 18110141, 'ERIRINALDI@gmail.com', 'kampus'),
(14, 'ERMAWATI', 18110140, 'ERMAWATI@gmail.com', 'kampus'),
(15, 'YUNITA ARDINA', 18110139, 'YUNITA ARDINA@gmail.com', 'kampus'),
(16, 'CUT RAHMAWATI', 18110138, 'CUT RAHMAWATI@gmail.com', 'kampus'),
(17, 'MASRUL', 18110137, 'MASRUL@gmail.com', 'kampus'),
(18, 'MUHAMMAD', 18110136, 'MUHAMMAD@gmail.com', 'kampus'),
(19, 'FARIDAHANUM', 18110135, 'FARIDAHANUM@gmail.com', 'kampus'),
(20, 'SRI MULIATI', 18110134, 'SRI MULIATI@gmail.com', 'kampus'),
(21, 'PUTRIANA', 18110133, 'PUTRIANA@gmail.com', 'kampus'),
(22, 'NURHAYATI', 18110132, 'NURHAYATI@gmail.com', 'kampus'),
(23, 'ELYANA', 18110131, 'ELYANA@gmail.com', 'kampus'),
(24, 'JULIANTI', 18110130, 'JULIANTI@gmail.com', 'kampus'),
(25, 'NISRINA', 18110129, 'NISRINA@gmail.com', 'kampus'),
(26, 'KHAIRUNNISAK', 18110128, 'KHAIRUNNISAK@gmail.com', 'kampus'),
(27, 'ZULFAHANUM', 18110127, 'ZULFAHANUM@gmail.com', 'kampus'),
(28, 'SULAIMAN', 18110126, 'SULAIMAN@gmail.com', 'kampus'),
(29, 'ZULFIKAR', 18110125, 'ZULFIKAR@gmail.com', 'kampus'),
(30, 'UKHRA RAMADHANI', 18110124, 'UKHRA RAMADHANI@gmail.com', 'kampus'),
(31, 'KHAIRIANA', 18110123, 'KHAIRIANA@gmail.com', 'kampus'),
(32, 'ZULFIKAR', 18110122, 'ZULFIKAR@gmail.com', 'kampus'),
(33, 'REZA RAMADHANA', 18110121, 'REZA RAMADHANA@gmail.com', 'kampus'),
(34, 'ZULFIKAR', 18110120, 'ZULFIKAR@gmail.com', 'kampus'),
(35, 'MUHAMMAD HAIKAL RIZKI', 18110119, 'MUHAMMAD HAIKAL RIZKI@gmail.com', 'kampus'),
(36, 'NURSEHA', 18110117, 'NURSEHA@gmail.com', 'kampus'),
(37, 'RISKA RAHMAH', 18110116, 'RISKA RAHMAH@gmail.com', 'kampus'),
(38, 'NURUL HADI', 18110115, 'NURUL HADI@gmail.com', 'kampus'),
(39, 'MUHARRIR', 18110114, 'MUHARRIR@gmail.com', 'kampus'),
(40, 'TEUKU DENI SAPUTRA', 18110113, 'TEUKU DENI SAPUTRA@gmail.com', 'kampus'),
(41, 'M. RIZKY WAHYUDI', 18110112, 'M. RIZKY WAHYUDI@gmail.com', 'kampus'),
(42, 'ADLI', 18110110, 'ADLI@gmail.com', 'kampus'),
(43, 'RAIHAN FAHLAVI', 18110109, 'RAIHAN FAHLAVI@gmail.com', 'kampus'),
(44, 'MUHAMMAD IRWANDA', 18110108, 'MUHAMMAD IRWANDA@gmail.com', 'kampus'),
(45, 'LAMKARUNA PUTRA', 18110107, 'LAMKARUNA PUTRA@gmail.com', 'kampus'),
(46, 'ODI OKTARI', 18110106, 'ODI OKTARI@gmail.com', 'kampus'),
(47, 'MUHAMMAD AL AZIZ SAPUTRA', 18110105, 'MUHAMMAD AL AZIZ SAPUTRA@gmail.com', 'kampus'),
(48, 'RAHMAWATI', 18110104, 'RAHMAWATI@gmail.com', 'kampus'),
(49, 'MARATUT THOYYIBA', 18110102, 'MARATUT THOYYIBA@gmail.com', 'kampus'),
(50, 'JAUHAR', 18110101, 'JAUHAR@gmail.com', 'kampus'),
(51, 'SYAHRUL RIDHA', 18110100, 'SYAHRUL RIDHA@gmail.com', 'kampus'),
(52, 'RIZKY CAHAYANDA', 18110099, 'RIZKY CAHAYANDA@gmail.com', 'kampus'),
(53, 'MUHAMMAD ARIF MUNANDAR', 18110098, 'MUHAMMAD ARIF MUNANDAR@gmail.com', 'kampus'),
(54, 'BAIHAQI', 18110097, 'BAIHAQI@gmail.com', 'kampus'),
(55, 'MINA AULIZA', 18110096, 'MINA AULIZA@gmail.com', 'kampus'),
(56, 'MUHAMMAD SAZALI', 18110095, 'MUHAMMAD SAZALI@gmail.com', 'kampus'),
(57, 'SUCI AULIA SARI', 18110094, 'SUCI AULIA SARI@gmail.com', 'kampus'),
(58, 'RICKA DELVITA PUSPITA DEWI', 18110091, 'RICKA DELVITA PUSPITA DEWI@gmail.com', 'kampus'),
(59, 'RISKA DEWI', 18110089, 'RISKA DEWI@gmail.com', 'kampus'),
(60, 'MAHYUDDIN', 18110088, 'MAHYUDDIN@gmail.com', 'kampus'),
(61, 'JULIANI.R', 18110086, 'JULIANI.R@gmail.com', 'kampus'),
(62, 'ZAKI ALFIKRI', 18110085, 'ZAKI ALFIKRI@gmail.com', 'kampus'),
(63, 'AGUS MAULIDA', 18110082, 'AGUS MAULIDA@gmail.com', 'kampus'),
(64, 'FARAIZA AULIA', 18110081, 'FARAIZA AULIA@gmail.com', 'kampus'),
(65, 'NADIA ULFA', 18110080, 'NADIA ULFA@gmail.com', 'kampus'),
(66, 'TAUFIKUR RAHMAN', 18110079, 'TAUFIKUR RAHMAN@gmail.com', 'kampus'),
(67, 'AULIA FAQRUR RAZI', 18110078, 'AULIA FAQRUR RAZI@gmail.com', 'kampus'),
(68, 'SYAHREL', 18110077, 'SYAHREL@gmail.com', 'kampus'),
(69, 'TAIBATUL AINI', 18110076, 'TAIBATUL AINI@gmail.com', 'kampus'),
(70, 'INE SANTIANUR', 18110075, 'INE SANTIANUR@gmail.com', 'kampus'),
(71, 'SITI NURMASYITAH', 18110073, 'SITI NURMASYITAH@gmail.com', 'kampus'),
(72, 'ULFA RAHMI', 18110072, 'ULFA RAHMI@gmail.com', 'kampus'),
(73, 'KANIA MAULIZA', 18110071, 'KANIA MAULIZA@gmail.com', 'kampus'),
(74, 'USWATUL HASANAH', 18110070, 'USWATUL HASANAH@gmail.com', 'kampus'),
(75, 'FAJRUL SYAKBAN', 18110069, 'FAJRUL SYAKBAN@gmail.com', 'kampus'),
(76, 'CUT PUTRI SAFINA ISMAWATI', 18110068, 'CUT PUTRI SAFINA ISMAWATI@gmail.com', 'kampus'),
(77, 'EPA YANTI', 18110067, 'EPA YANTI@gmail.com', 'kampus'),
(78, 'RAHMAH', 18110066, 'RAHMAH@gmail.com', 'kampus'),
(79, 'RAHUL MAHFUD', 18110065, 'RAHUL MAHFUD@gmail.com', 'kampus'),
(80, 'KULBAHRI', 18110064, 'KULBAHRI@gmail.com', 'kampus'),
(81, 'M.FAUZAN', 18110063, 'M.FAUZAN@gmail.com', 'kampus'),
(82, 'HAYATUN NUFUS', 18110062, 'HAYATUN NUFUS@gmail.com', 'kampus'),
(83, 'OYA MONICA', 18110061, 'OYA MONICA@gmail.com', 'kampus'),
(84, 'NURUL IZZATI', 18110060, 'NURUL IZZATI@gmail.com', 'kampus'),
(85, 'NURUL ULYA', 18110059, 'NURUL ULYA@gmail.com', 'kampus'),
(86, 'T.KHAIRUL AJRIL', 18110058, 'T.KHAIRUL AJRIL@gmail.com', 'kampus'),
(87, 'YOULANUR', 18110057, 'YOULANUR@gmail.com', 'kampus'),
(88, 'RIVA ZAURA', 18110056, 'RIVA ZAURA@gmail.com', 'kampus'),
(89, 'RITA RISKILA', 18110055, 'RITA RISKILA@gmail.com', 'kampus'),
(90, 'MISRATUL JANNAH', 18110054, 'MISRATUL JANNAH@gmail.com', 'kampus'),
(91, 'HUMAIRA FITRI', 18110053, 'HUMAIRA FITRI@gmail.com', 'kampus'),
(92, 'NURUL FAUZIAH', 18110052, 'NURUL FAUZIAH@gmail.com', 'kampus'),
(93, 'MONICA SARI', 18110051, 'MONICA SARI@gmail.com', 'kampus'),
(94, 'HENDRA WIJAYA', 18110050, 'HENDRA WIJAYA@gmail.com', 'kampus'),
(95, 'FITTRIANI', 18110049, 'FITTRIANI@gmail.com', 'kampus'),
(96, 'M. KHALIQ FAZILAH', 18110048, 'M. KHALIQ FAZILAH@gmail.com', 'kampus'),
(97, 'AZWIN SUMIRZA', 18110047, 'AZWIN SUMIRZA@gmail.com', 'kampus'),
(98, 'TONI ARIGA', 18110046, 'TONI ARIGA@gmail.com', 'kampus'),
(99, 'ABDURRAHMAN', 18110045, 'ABDURRAHMAN@gmail.com', 'kampus'),
(100, 'T. WALI ABDAL SATTAR', 18110044, 'T. WALI ABDAL SATTAR@gmail.com', 'kampus'),
(101, 'MUKHLISIN', 18110043, 'MUKHLISIN@gmail.com', 'kampus'),
(102, 'HUWAINA AWANIS', 18110041, 'HUWAINA AWANIS@gmail.com', 'kampus'),
(103, 'INTAN RAUZANI', 18110040, 'INTAN RAUZANI@gmail.com', 'kampus'),
(104, 'MUHAMMAD NAUFAL ZHAFAN', 18110039, 'MUHAMMAD NAUFAL ZHAFAN@gmail.com', 'kampus'),
(105, 'T. RAJULULQARI', 18110038, 'T. RAJULULQARI@gmail.com', 'kampus'),
(106, 'INDRA MAULANA AGUNG', 18110037, 'INDRA MAULANA AGUNG@gmail.com', 'kampus'),
(107, 'AHMAD SURYADI', 18110036, 'AHMAD SURYADI@gmail.com', 'kampus'),
(108, 'MUHAMMAD ALFAZZIR', 18110035, 'MUHAMMAD ALFAZZIR@gmail.com', 'kampus'),
(109, 'ALFANDI', 18110034, 'ALFANDI@gmail.com', 'kampus'),
(110, 'MUHAMMAD CHAIRUL RIZAL', 18110033, 'MUHAMMAD CHAIRUL RIZAL@gmail.com', 'kampus'),
(111, 'MUHARRIR AL AMINI', 18110032, 'MUHARRIR AL AMINI@gmail.com', 'kampus'),
(112, 'SYAHRUL RAMADHAN', 18110031, 'SYAHRUL RAMADHAN@gmail.com', 'kampus'),
(113, 'KHAYRA ROSMITA', 18110030, 'KHAYRA ROSMITA@gmail.com', 'kampus'),
(114, 'RAFARANIATI', 18110029, 'RAFARANIATI@gmail.com', 'kampus'),
(115, 'M. FAHLEVI', 18110028, 'M. FAHLEVI@gmail.com', 'kampus'),
(116, 'MUHAMMAD REZA', 18110027, 'MUHAMMAD REZA@gmail.com', 'kampus'),
(117, 'ULFI KHAIRATI', 18110026, 'ULFI KHAIRATI@gmail.com', 'kampus'),
(118, 'NURIL KHAIRA', 18110025, 'NURIL KHAIRA@gmail.com', 'kampus'),
(119, 'M. RIZKI', 18110024, 'M. RIZKI@gmail.com', 'kampus'),
(120, 'NURIANSYAH PUTRA', 18110023, 'NURIANSYAH PUTRA@gmail.com', 'kampus'),
(121, 'RIZKIANA', 18110022, 'RIZKIANA@gmail.com', 'kampus'),
(122, 'MAULIDAL HAFDHA', 18110021, 'MAULIDAL HAFDHA@gmail.com', 'kampus'),
(123, 'ASRUL AIDIL', 18110020, 'ASRUL AIDIL@gmail.com', 'kampus'),
(124, 'ARWIS', 18110019, 'ARWIS@gmail.com', 'kampus'),
(125, 'PUTRI MUSTIA', 18110018, 'PUTRI MUSTIA@gmail.com', 'kampus'),
(126, 'ZAHRATUL ANNISA ZUHRA', 18110017, 'ZAHRATUL ANNISA ZUHRA@gmail.com', 'kampus'),
(127, 'TARAL FAUZUL', 18110015, 'TARAL FAUZUL@gmail.com', 'kampus'),
(128, 'BUDI SAPUTRA', 18110014, 'BUDI SAPUTRA@gmail.com', 'kampus'),
(129, 'PUTRI NAHRISA', 18110013, 'PUTRI NAHRISA@gmail.com', 'kampus'),
(130, 'MARDHIAH', 18110012, 'MARDHIAH@gmail.com', 'kampus'),
(131, 'ZULMIYATI', 18110011, 'ZULMIYATI@gmail.com', 'kampus'),
(132, 'AULIA', 18110010, 'AULIA@gmail.com', 'kampus'),
(133, 'NUR AHMAD PRADILA', 18110009, 'NUR AHMAD PRADILA@gmail.com', 'kampus'),
(134, 'ABDUL AZIZ', 18110008, 'ABDUL AZIZ@gmail.com', 'kampus'),
(135, 'CUT NANDA RIHAL', 18110007, 'CUT NANDA RIHAL@gmail.com', 'kampus'),
(136, 'MUHAMMAD AULIA RAMADHAN', 18110006, 'MUHAMMAD AULIA RAMADHAN@gmail.com', 'kampus'),
(137, 'YUSNI FEBRIANA', 18110005, 'YUSNI FEBRIANA@gmail.com', 'kampus'),
(138, 'MUHAMMA FAZIL', 18110004, 'MUHAMMA FAZIL@gmail.com', 'kampus'),
(139, 'MUHAMMAD RISKI', 18110003, 'MUHAMMAD RISKI@gmail.com', 'kampus'),
(140, 'AZHAR', 18110002, 'AZHAR@gmail.com', 'kampus'),
(141, 'FARHAN SUANDA', 18110001, 'FARHAN SUANDA@gmail.com', 'kampus'),
(142, 'Nama', 2147483647, 'Email@gmail.com', 'kampus');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_proposal`
--

CREATE TABLE `tbl_proposal` (
  `id` int(50) NOT NULL,
  `nim` int(100) NOT NULL,
  `nama_mahasiswa` varchar(100) NOT NULL,
  `nama_file` varchar(100) NOT NULL,
  `revisi` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_proposal`
--

INSERT INTO `tbl_proposal` (`id`, `nim`, `nama_mahasiswa`, `nama_file`, `revisi`, `keterangan`) VALUES
(1, 18110032, 'Muhammad Fadhil ', '1406914530_Muhammad_ Fadhil_Aplikasi_marketplace_alat_rumah_tangga_berbasis_an.docx', 'Masih Dalam Proses', ''),
(2, 18110032, 'Muhammad Fadhil ', '1025091126_1406914530_Muhammad_ Fadhil_Aplikasi_marketplace_alat_rumah_tangga_berbasis_an.docx', 'Masih Dalam Proses', ''),
(3, 18110140, 'ERMAWATI', '2117277745_Proposal Skripsi.docx', 'Masih Dalam Proses', ''),
(4, 18110140, 'ERMAWATI', '1013518902_Proposal Skripsi 2.docx', 'Masih Dalam Proses', ''),
(5, 18110037, 'Indra Maulana Agung', '827882050_Proposal Skripsi.docx', 'Masih Dalam Proses', ''),
(6, 18110037, 'Indra Maulana Agung', '428315228_Proposal Skripsi 2.docx', 'Masih Dalam Proses', ''),
(7, 18110143, 'SAFRINA', '635814576_Proposal Skripsi 2.docx', 'YA', ''),
(8, 18110143, 'SAFRINA', '985098336_Proposal Skripsi 2.docx', 'Masih Dalam Proses', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_skripsi`
--

CREATE TABLE `tbl_skripsi` (
  `id` int(100) NOT NULL,
  `nim` int(100) NOT NULL,
  `nama_mahasiswa` varchar(100) NOT NULL,
  `nama_file` varchar(100) NOT NULL,
  `revisi` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_skripsi`
--

INSERT INTO `tbl_skripsi` (`id`, `nim`, `nama_mahasiswa`, `nama_file`, `revisi`, `keterangan`) VALUES
(2, 18110032, 'Muhammad Fadhil ', '33006788_Muhammad_ Fadhil_Aplikasi_marketplace_alat_rumah_tangga_berbasis_an.docx', 'Masih Dalam Proses', ''),
(3, 18110037, 'Indra Maulana Agung', '1082719087_Skripsi file.docx', 'Masih Dalam Proses', ''),
(4, 18110037, 'Indra Maulana Agung', '1337197568_Skripsi.docx', 'Masih Dalam Proses', ''),
(5, 18110037, 'Indra Maulana Agung', '845694912_Skripsi.pdf', 'Masih Dalam Proses', ''),
(6, 18110037, 'Indra Maulana Agung', '465959588_Skripsi file.docx', 'Masih Dalam Proses', ''),
(7, 18110143, 'SAFRINA', '1927478964_Skripsi file.docx', 'Masih Dalam Proses', ''),
(8, 18110143, 'SAFRINA', '1783129029_Skripsi file.docx', 'Masih Dalam Proses', ''),
(9, 18110143, 'SAFRINA', '244342838_Skripsi.docx', 'Masih Dalam Proses', ''),
(10, 18110143, 'SAFRINA', '608887941_Skripsi file.docx', 'Masih Dalam Proses', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_dosen`
--
ALTER TABLE `tbl_dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indexes for table `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_judul`
--
ALTER TABLE `tbl_judul`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_mahasiswa_2` (`id_mahasiswa`),
  ADD KEY `id_mahasiswa` (`id_mahasiswa`);

--
-- Indexes for table `tbl_judul_acc`
--
ALTER TABLE `tbl_judul_acc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_mahasiswa`
--
ALTER TABLE `tbl_mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- Indexes for table `tbl_proposal`
--
ALTER TABLE `tbl_proposal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_skripsi`
--
ALTER TABLE `tbl_skripsi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notifikasi`
--
ALTER TABLE `notifikasi`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_dosen`
--
ALTER TABLE `tbl_dosen`
  MODIFY `id_dosen` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_judul`
--
ALTER TABLE `tbl_judul`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_judul_acc`
--
ALTER TABLE `tbl_judul_acc`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_mahasiswa`
--
ALTER TABLE `tbl_mahasiswa`
  MODIFY `id_mahasiswa` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `tbl_proposal`
--
ALTER TABLE `tbl_proposal`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_skripsi`
--
ALTER TABLE `tbl_skripsi`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
