-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Nov 2020 pada 11.37
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ujian`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `nama`, `username`, `password`) VALUES
(1, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_bank_soal`
--

CREATE TABLE `tbl_bank_soal` (
  `id` int(5) NOT NULL,
  `soal` varchar(100) NOT NULL,
  `jawaban_a` varchar(100) NOT NULL,
  `jawaban_b` varchar(100) NOT NULL,
  `jawaban_c` varchar(100) NOT NULL,
  `jawaban_d` varchar(100) NOT NULL,
  `jawaban_e` varchar(100) NOT NULL,
  `jawaban` varchar(100) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_bank_soal`
--

INSERT INTO `tbl_bank_soal` (`id`, `soal`, `jawaban_a`, `jawaban_b`, `jawaban_c`, `jawaban_d`, `jawaban_e`, `jawaban`, `kategori`) VALUES
(1, 'SOAL (1).JPG', ' gen', 'jenis', 'ekosistem', 'ekosistem', 'spesies', 'A', 'BIOLOGI'),
(2, 'SOAL (2).JPG', '. spesies sama, genus berbeda', '.genus sama,spesies berbeda', 'genus sama, famili berbeda', 'genus berbeda, famili sama', 'spesies sama, genus dan famili berbeda', 'B', 'BIOLOGI'),
(3, 'SOAL (3).JPG', ' Eukariot', 'Heterotrof', ' Pencernaan ekstraseluler', 'Tidak memiliki klorofil', 'Dinding sel tersusun atas kitin', 'C', 'BIOLOGI'),
(4, 'SOAL (4).JPG', 'Ketika puncak piramid dicapai, jumlah individu menurun tapi jumlah energinya meningkat', 'Ketika puncak piramid dicapai, jumlah individu meningkat, dan jumlah energi sama', 'Pada dasar piramid, jumlah individu dan jumlah energi yang terlibat adalah paling besar', 'Pada dasar piramid, jumlah individu dan jumlah energi yang terlibat adalah paling rendah', 'Pada semua tingkat, jumlah individu dan jumlah energi yang terlibat adalah sama', 'C', 'BIOLOGI'),
(5, 'SOAL (5).JPG', 'mengeringkan dan memadatkannya sebagai bahan bakar', 'menampung dan memprosesnya menjadi biogas', 'mengolahnya menjadi makanan ternak', 'memanfaatkannya untuk industri kertas', 'memprosesnya sebagai bahan campuran industri kayu lapis', 'B', 'BIOLOGI'),
(6, 'SOAL (6).JPG', '625 ml', '750 ml', '1500 ml', '3625  ml', '4625 ml', 'B', 'BIOLOGI'),
(7, 'SOAL (7).JPG', 'pemberian air tidak mempengaruhi proses perkecambahan', 'air yang terlalu banyak tidak akan mempengaruhi proses perkecambahan', 'laju penguapan tanaman pot A lebih tinggi sehingga kecambah dapat tumbuh', 'kadar air yang terlalu banyak pada pot B membuat biji mengalami pembusukan', 'laju penguapan tanaman pot B terlalu rendah sehingga kecambah busuk', 'D', 'BIOLOGI'),
(8, 'SOAL (8).JPG', '1, 2, dan 3', '1, 2, dan 4', '2, 3, dan 4', '1, 4, dan 5', '4, 5, dan 6', 'D', 'BIOLOGI'),
(9, 'SOAL (9).JPG', 'Nitrosomonas', 'Nitrobacter', 'Aztobacter', ' Acetobacter', 'Nitrococcus', 'B', 'BIOLOGI'),
(10, 'SOAL (10).JPG', 'menghasilkan produk yang bersifat alergen', 'merupakan mikroba patogen yang membahayakan', 'tidak menghasilkan racun atau toksin sampingan yang berbahaya', 'memiliki produktivitas yang tinggi serta sifat yang mudah dikendalikan', 'memerlukan persyaratan nutrisi yang tidak rumit', 'D', 'BIOLOGI'),
(11, 'SOAL (11).JPG', 'jenis enzim akan menentukan arah reaksi', 'enzim sangat mempengaruhi kecepatan reaksi', 'enzim akan meningkatkan jumlah energi suatu reaksi', 'kualitas substrat akan lebih baik dengan adanya enzim', 'enzim tidak menentukan arah reaksi', 'B', 'BIOLOGI'),
(12, 'SOAL (12).JPG', '5 – 1 – 4 – 2 – 3', '4 – 5 – 1 – 2 – 3', '3 – 4 – 2 – 5 – 1', '2 – 3 – 5 – 5 – 4', '1 – 2 – 3 – 4 – 5', 'A', 'BIOLOGI'),
(13, 'SOAL (13).JPG', 'pada usia 15 hari tercapai berat tertinggi', 'setelah usia 5 hari, berat buah terus bertambah dengan rata- rata pertambahan 2 kg/hari', 'semakin bertambah usia, berat buah semakin bertambah pula', 'energi dapat tertimbun dalam bentuk jaringan tubuh', 'energi dapat tertimbun dalam bentuk jaringan tubuh', 'B', 'BIOLOGI'),
(14, 'SOAL (14).JPG', 'meneruskan getaran ke jendela oval', 'berperan sebagai reseptor suara', 'meneruskan getaran ke osikula', 'berperan sebagai reseptor gravitasi', 'menjaga keseimbangan udara', 'B', 'BIOLOGI'),
(15, 'SOAL (15).JPG', 'bagian : tubulus proksimal, proses : Filtrasi, Hasil : Urin skunder', 'Bagian : glomerolus, Proses :Filtrasi, Hasil, Urin primer', 'Bagian : tubulus kontortus distal, Proses : Augmentasi, Hasil : urin sesungguhnya', 'Bagian: tubulus kolektivus, Proses : Augmentasi, Proses : Urin sesungguhnya', 'Bagian : Lengkung henle, Proses : reabsorpsi, Hasil : Urin skunder', 'C ', 'BIOLOGI'),
(16, 'SOAL (16).JPG', 'asfiksi', 'TBC', 'asidosis', 'sinusitis', 'emfisema ', 'B', 'BIOLOGI'),
(17, 'SOAL (17).JPG', 'punahnya organisme langka', 'keanekaragaman hayati menurun', 'berkurangnya daya dukung lingkungan', 'hilangnya daya dukung lingkungan', 'biaya rehabilitasi hutan meningkat', 'B ', 'BIOLOGI'),
(18, 'SOAL (18).JPG', 'suhu dan pH', 'banyaknya gelembung', 'potongan hati', 'macam substrat', 'jumlah H2O2', 'A', 'BIOLOGI'),
(19, 'SOAL (19).JPG', '100 % bulat manis', '75 % bulat manis : 25 % lonjong manis', '50 % bulat manis : 50 % lonjong manis', ' 50 % bulat manis : 50 % lonjong pahit', '100 % lonjong manis', 'A ', 'BIOLOGI'),
(20, 'SOAL (20).JPG', 'homefilia', 'buta warna', 'anodontia', 'albino', 'hypertrichosis', 'D', 'BIOLOGI'),
(21, 'SOAL (21).JPG', 'menurunnya kualitas kesuburan tanah', 'banyak mikroogranisme tanah yang mengalami mutasi', 'kecenderungan penggunaan bibit unggul menyingkirkan varietas lokal yang kurang unggul', 'limbah yang berasal dari proses bioteknologi akan mencemari lingkungan', 'polusi gen akan memicu tumbuhnya tanaman liar yang dapat mengganggu keseimbangan lingkungan', 'C', 'BIOLOGI'),
(22, 'SOAL (22).JPG', 'ibu ceria', 'ayah ceria', 'ibu homozigot resesif', 'ibu homozigot dominan', 'ayah homozigot dominan', 'A', 'BIOLOGI'),
(23, 'SOAL (23).JPG', '1.500 gram', '150 gram', '15 gram', '15.000 gram', '1,5 gram', 'B', 'BIOLOGI'),
(24, 'SOAL (24).JPG', '1, 3, dan 4', '2, 4, dan 5', '1, 4, dan 5', '3, 4, dan 5', '2, 3, dan 4', 'C', 'BIOLOGI'),
(25, 'SOAL (25).JPG', '2, 4, dan 6', '1, 4 dan 6', '2, 3 dan 5', '2, 3 dan 6', '2, 3 dan 6', 'D', 'BIOLOGI'),
(26, 'SOAL (26).JPG', 'Asfiksi', 'Laringitis', 'Asma', 'Radang paru-Paru', 'emfisema ', 'D', 'BIOLOGI'),
(27, 'SOAL (27).JPG', 'Mark dan Frans mengalami gangguan ginjal pada bagian tubulus kontortus proksima', 'Marchel dan Filza menderita penyakit ISK karena sifat fisik urinenya yang berwarna bening', 'Daniel dan Filza mengalami gangguan ginjal pada bagian glomerulus', 'Frans memiliki senyawa glukosa di dalam urinnya sehingga Frans menderita penyakit diabetes melitus', 'Samuel memiliki kandungan klorida yang tinggi pada urinenya sehingga Samuel menderita penyakit diabe', 'D', 'BIOLOGI'),
(28, 'SOAL (28).JPG', 'mengubah glikogen menjadi glukosa', 'mematikan bakteri dengan HCl', 'menggumpalkan kasein dari susu', 'memecah protein menjadi pepton', 'membentuk glukosa dan asam amino ', 'D', 'BIOLOGI'),
(29, 'SOAL (29).JPG', 'II dan III', 'I dan IV', 'III dan IV', 'II dan V', 'I dan II ', 'D', 'BIOLOGI'),
(30, 'SOAL (30).JPG', 'Di tempat gelap fitohormon lebih banyak yang terbentuk', 'Auksin yang berada di ujung kecambah bekerja optimal di tempat gelap karena tidak terurai', 'Di tempat gelap lebih banyak makanan untuk proses perkecambahan biji', 'Di tempat terang sel-sel meristem tidak aktif membelah atau sel-selnya mati', 'Di tempat terang terlalu banyak cahaya yang masuk serta berkurang air akibat adanya evaporasi dan tr', 'B', 'BIOLOGI'),
(31, 'SOAL (31).JPG', '3, 5 dan 6', '1, 2 dan 3', '2 ,4 dan 5', '1, 4 dan 6', '2, 5 dan 6', 'D', 'BIOLOGI'),
(32, 'SOAL (32).JPG', 'I dan II', 'I dan IV', ' II dan III', 'II dan IV', 'III dan IV', 'B', 'BIOLOGI'),
(33, 'SOAL (33).JPG', '1 - 2 - 3 - 4', '4 - 2 - 1 - 3', '4 - 1 - 2 - 3', '4 - 1 - 2 - 3', '3 - 2 - 1 - 4 ', 'B', 'BIOLOGI'),
(34, 'SOAL (34).JPG', 'larutan A dan larutan B akan berkurang', 'larutan A dan larutan B akan tetap', 'larutan A dan larutan B akan bertambah', 'larutan A akan bertambah dan larutan B akan berkurang', 'larutan A akan berkurang dan larutan B akan bertambah', 'D', 'BIOLOGI'),
(35, 'SOAL (35).JPG', '2 dan 3', '4 dan 5', '1 dan 2 ', '3 dan 4', '2 dan 4', 'A', 'BIOLOGI'),
(36, 'SOAL (36).JPG', '3', '4', '8', '16', '32', 'C', 'BIOLOGI'),
(37, 'SOAL (37).JPG', '18', '12', '30', '36', '20', 'B', 'BIOLOGI'),
(38, 'SOAL (38).JPG', '0,25', '37,5%', '0,5', '0,75', '12,5%', 'B', 'BIOLOGI'),
(39, 'SOAL (39).JPG', '2 dan 6', '1 dan 5', '4 dan 5', '2 dan 4', '5 dan 6', 'A', 'BIOLOGI'),
(40, 'SOAL (40).JPG', ' Antonie Van Leeuwenhoek', 'Robert Hooke', 'Schwann dan Schleiden', 'Rudolph Virchow', 'Charles Darwin ', 'B', 'BIOLOGI'),
(41, 'SOAL (41).JPG', 'akar epifit', 'akar tunjang', 'akar gantung', 'akar nafas', 'akar banir', 'C', 'BIOLOGI'),
(42, 'SOAL (42).JPG', 'gerak', 'diartrosis', 'amfiartrosis', 'sinartrosis', 'kaku', 'D', 'BIOLOGI'),
(43, 'SOAL (43).JPG', 'menyimpan cadangan makanan dan respirasi seluler untuk menghasilkan ATP', 'b. respirasi seluler untuk menghasilkan ATP dan tempat akumulasi limbah sisa metabolisme sel', 'cadangan makanan dan tempat akumulasi limbah sisa metabolisme sel', 'berperan dalam fotosintesis dan pembelahan sel', 'cadangan makanan dan mengatur seluruh kegiatan sel', 'B', 'BIOLOGI'),
(44, 'SOAL (44).JPG', 'meristem apikal', 'meristem interkalar', 'meristem sekunder ', 'meristem aksilar', 'meristem lateral', 'E', 'BIOLOGI'),
(45, 'SOAL (45).JPG', 'bentuk dan letaknya', 'sifat dan bentuk ', 'protein penyusun dan sifat', 'letaknya dan protein penyusun', 'sifat dan letaknya', 'B', 'BIOLOGI'),
(46, 'SOAL (46).JPG', 'golongan darah B ditransfusikan ke golongan darah B', 'golongan darah O ditransfusikan ke golongan darah O', 'golongan darah AB ditransfusikan ke golongan darah AB', 'golongan darah A ditransfusikan ke golongan darah B', 'golongan darah A ditransfusikan ke golongan darah A', 'D', 'BIOLOGI'),
(47, 'SOAL (47).JPG', 'membukanya stomata pada siang hari bertujuan untuk mencegah terjadinya respirasi', 'membukanya stomata pada siang hari bertujuan untuk meminimalisir laju transpirasi', 'menutupnya stomata pada malam hari bertujuan untuk mempercepat laju transpirasi', 'membukanya stomata pada malam hari bertujuan untuk meminimalisir laju transpirasi', 'menutupnya stomata pada malam hari bertujuan untuk meminimalisir laju transpirasi', 'E', 'BIOLOGI'),
(48, 'SOAL (48).JPG', 'otot trisep', 'otot jantung', 'otot polos', 'otot lurik', 'otot involunter', 'D', 'BIOLOGI'),
(49, 'SOAL (49).JPG', 'golongan darah A dan B dapat menerima darah dari golongan darah O karena tidak mempunyai aglutinin β', 'golongan darah A dan B dapat menerima darah dari golongan darah O karena mempunyai satu aglutinogen ', 'golongan darah O dapat ditransfusikan ke golongan darah A dan B karena tidak mempunyai aglutinin', 'golongan darah A dapat ditransfusikan ke golongan darah B karena tidak mempunyai aglutinogen', 'golongan darah O dapat ditransfusikan ke golongan darah A dan B karena tidak mempunyai agglutinogen', 'E', 'BIOLOGI'),
(50, 'SOAL (50).JPG', 'gunanin', 'sitosin ', 'timin ', 'adenin', 'urasil', 'E', 'BIOLOGI'),
(51, 'SOAL (1)mtk.JPG', 'a>0,b>0,c>0', 'a>0,b>0,c>0', 'a<0,b>0,c<0', 'a>0,b<0,c>0', 'a<0,b<0,c<0', 'A', 'MTK'),
(52, 'SOAL (2)mtk.JPG', '19000', '23000', '25000', '27000', '30000', 'B', 'MTK'),
(53, 'SOAL (3)mtk.JPG', 'I', 'II', 'III', 'IV', 'V', 'B', 'MTK'),
(54, 'SOAL (4)mtk.JPG', '6x+y≤12  5x+4y≥20  x≥0  y≥0', '6x+y≥12  5x+4y≥20  x≥0  y≥0', '6x+y≥12  5x+4y≤20  x≥0  y≥0', 'x+6y≤12  4x+5y≥20  x≥0  y≥0', 'x+6y≥12  4x+5y≤20  x≥0  y≥0', 'A', 'MTK'),
(55, 'SOAL (5)mtk.JPG', '1200000000', '920000000', '840000000', '800000000', '795000000', 'C', 'MTK'),
(56, 'SOAL (6)mtk.JPG', '480', '496', '504', '512', '520', 'C', 'MTK'),
(57, 'SOAL (7)mtk.JPG', '48 bakteri ', '64 bakteri', '96 bakteri ', '128 bakteri ', '192 bakteri', 'C', 'MTK'),
(58, 'SOAL (8)mtk.JPG', '12 m', '14 m ', '16 m', '18 m', '20 m', 'B', 'MTK'),
(59, 'SOAL (9)mtk.JPG', '{x | 1≤x<4, x∈R}A. {x | 1≤x<4, x∈R}', '{x | x≤−1 atau 3≤x<4, x∈R}B. {x | x≤−1 atau 3≤x<4, x∈R}', '{x | x≤−3 atau 1≤x<4, x∈R}', 'x | 1≤x≤3 atau x>4, x∈R}', '{x | −3≤x≤1 atau x>4, x∈R}', 'E', 'MTK'),
(60, 'SOAL (10)mtk.JPG', '-10', '-1', '0', '1', '10', 'C', 'MTK'),
(61, 'SOAL (11)mtk.JPG', '4/3', '2/3', '1/3', '−2/3', '−4/3', 'A', 'MTK'),
(62, 'SOAL (12)mtk.JPG', '18', '16', '14', '10', '6', 'B', 'MTK'),
(63, 'SOAL (13)mtk.JPG', '(−1,1)', '(1,1)', '(1,3)', '(2,-3)', '(2,3)', 'A', 'MTK'),
(64, 'SOAL (14)mtk.JPG', '2X-3', '4X-3', '', '', '', 'B', 'MTK'),
(65, 'SOAL (15)mtk.JPG', '0', '259', '256', '253', '∞', 'B', 'MTK'),
(66, 'SOAL (16)mtk.JPG', '−5/2', '−1/2', '1/2', '3/2', '5/2', 'E', 'MTK'),
(67, 'SOAL (17)mtk.JPG', '2x−y=0B. 2x−y−3=0', '2x−y−3=0', '2x−y+3=0', '2x−y−4=0', '2x−y+4=0', 'A', 'MTK'),
(68, 'SOAL (18)mtk.JPG', '5x−y−14=0', '5x+y−6=0', 'x+5y−27=0', 'x+5y+18=0', 'x−5y−22=0', 'D', 'MTK'),
(69, 'SOAL (19)mtk.JPG', '2.000 cm3', '3.000 cm3', '4.000 cm3', '5.000 cm3', '6.000 cm3', 'A', 'MTK'),
(70, 'SOAL (20)mtk.JPG', '𝑥^3−5/2 𝑥^2+4𝑥+𝑐', '𝑥^3−5/2 𝑥^2+4𝑥+𝑐', '〖3𝑥〗^3−5𝑥^2+4𝑥+𝑐', '〖6𝑥〗^3−5𝑥^2+4𝑥+𝑐', '〖6𝑥〗^3−5/2 𝑥^2+4𝑥+𝑐', 'A', 'MTK'),
(71, 'SOAL (21)mtk.JPG', '1/3 (𝑥^2−𝑥+3)^3+𝑐', '1/4 (𝑥^2−𝑥+3)^3+𝑐', '1/3 (𝑥^2−𝑥+3)^4+𝑐', '1/2 (𝑥^2−𝑥+3)^4+𝑐', '(𝑥^2−𝑥+3)^4+𝑐', 'C', 'MTK'),
(72, 'SOAL (22)mtk.JPG', '1/3 (𝑥^2−𝑥+3)^3+𝑐', '1/4 (𝑥^2−𝑥+3)^3+𝑐', '1/3 (𝑥^2−𝑥+3)^4+𝑐', '1/2 (𝑥^2−𝑥+3)^4+𝑐', '(𝑥^2−𝑥+3)^4+𝑐', 'D', 'MTK'),
(73, 'SOAL (23)mtk.JPG', '0', '11', '21', '37', '49', 'B', 'MTK'),
(74, 'SOAL (24)mtk.JPG', '50√6', '100√3𝑚', '150√2𝑚', '100√6𝑚', '50√6𝑚', 'D', 'MTK'),
(75, 'SOAL (25)mtk.JPG', '3√7 cm', '3√6 cm', '3√5 cm', '3√3 cm', '2√3 cm', 'C', 'MTK'),
(76, 'SOAL (26)mtk.JPG', '2√3 cm', '5/3 √6 𝑐𝑚', '5/3 √5 𝑐𝑚', '5/3 √3 𝑐𝑚', '5/3 √2 𝑐𝑚', 'B', 'MTK'),
(77, 'SOAL (27)mtk.JPG', ' x−y−1=0', 'x−y=0', ' x+y=0', 'x+y−1=0', 'x+y+1=0', 'E', 'MTK'),
(78, 'SOAL (28)mtk.JPG', 'Sumatera Barat', 'Kepulauan Riau', 'Jambi', 'Sumatera Selatan', 'Kepulauan Bangka Belitung', 'D', 'MTK'),
(79, 'SOAL (29)mtk.JPG', '50,5 kg', '51,5 kg', '52,5 kg', '53,5 kg', '54,5 kg', 'B', 'MTK'),
(80, 'SOAL (30)mtk.JPG', '49,5', '50,5', '51,5', '52,5', '53,5', 'C', 'MTK'),
(81, 'SOAL (31)mtk.JPG', '1', '2', '3', '4', '5', 'B', 'MTK'),
(82, 'SOAL (32)mtk.JPG', '7 cara', '9 cara', '12 cara', '18 cara', '21 cara', 'D', 'MTK'),
(83, 'SOAL (33)mtk.JPG', '560 cara', '1.120 cara', '1.560 cara', '1.680 cara', '2.240 cara', 'D', 'MTK'),
(84, 'SOAL (30)mtk.JPG', '49,5', '50,5', '51,5', '52,5', '53,5', 'C', 'MTK'),
(85, 'SOAL (31)mtk.JPG', '1', '2', '3', '4', '5', 'B', 'MTK'),
(86, 'SOAL (32)mtk.JPG', '7 cara', '9 cara', '12 cara', '18 cara', '21 cara', 'D', 'MTK'),
(87, 'SOAL (33)mtk.JPG', '560 cara', '1.120 cara', '1.560 cara', '1.680 cara', '2.240 cara', 'D', 'MTK'),
(88, 'SOAL (30)mtk.JPG', '49,5', '50,5', '51,5', '52,5', '53,5', 'C', 'MTK'),
(89, 'SOAL (31)mtk.JPG', '1', '2', '3', '4', '5', 'B', 'MTK'),
(90, 'SOAL (32)mtk.JPG', '7 cara', '9 cara', '12 cara', '18 cara', '21 cara', 'D', 'MTK'),
(91, 'SOAL (33)mtk.JPG', '560 cara', '1.120 cara', '1.560 cara', '1.680 cara', '2.240 cara', 'D', 'MTK'),
(92, 'SOAL (34)mtk.JPG', '1/132', '1/72', '1/66', '1/36', '1/6', 'C', 'MTK'),
(93, 'SOAL (35)mtk.JPG', '14 kali', '21 kali', '28 kali', '35 kali', '42 kali', 'C', 'MTK'),
(94, 'SOAL (36)mtk.JPG', '5/6', '2/3', '1/2', '2/9', '4/15', 'A', 'MTK'),
(95, 'SOAL (37)mtk.JPG', 'x2 - 6x + 3 = 0', 'x2 + 3x + 6 = 0', 'x2 - 12x + 9 = 0', '2x2 + 15x + 3 = 0', '2x2 - 15x - 9 = 0', 'A', 'MTK'),
(96, 'SOAL (38)mtk.JPG', '112 tahun ', '115 tahun ', '125 tahun', '130 tahun', '160 tahun', 'B', 'MTK'),
(97, 'SOAL (39)mtk.JPG', '(−2𝑥^2+16𝑥+6)/(3𝑥^2+𝑥+5)^2 ', '(2𝑥^2+16𝑥−6)/(3𝑥^2+𝑥+5)^2 ', '(𝑥^2+16𝑥−6)/(3𝑥^2+𝑥+5)^2 ', '(〖−2𝑥〗^2+16−6)/(3𝑥^2+𝑥+5)^2 ', '(−2𝑥^2−16−6)/(3𝑥^2+𝑥+5)^2 ', 'A', 'MTK'),
(98, 'SOAL (40)mtk.JPG', '7/9', '7/3', '49/3', '49/8', '49/9', 'E', 'MTK'),
(99, 'SOAL (41)mtk.JPG', '1 < m < 2', 'm > 3', 'm < 3', '1 < m < 3', '2 < m < 3', 'A', 'MTK'),
(100, 'SOAL (42)mtk.JPG', '3500000', '4000000', 'Rp4.500.000  ', '5000000', '5500000', 'C', 'MTK'),
(101, 'SOAL (43)mtk.JPG', '150 buah tas saja', '100 tas dan 100 sepatu ', '150 buah sepatu saja', '150 tas dan 100 sepatu', '150 tas dan 150 sepatu', 'B', 'MTK'),
(102, 'SOAL (44)mtk.JPG', '60000000', '70000000', '80000000', '85000000', '90000000', 'A', 'MTK'),
(103, 'SOAL (45)mtk.JPG', '– x + 3y = 1', 'x – 3y = 1', '– x – 3y = 1', ' – x – y = 1', '– 3x – y = 1', 'C', 'MTK'),
(104, 'SOAL (46)mtk.JPG', '1/5', '1/4', '1/3', '1/2', '1', 'D', 'MTK'),
(105, 'SOAL (47)mtk.JPG', ' 7/5 𝜋', '81/5 𝜋 ', '75/5 𝜋', '105/5 𝜋', '131/5 𝜋', 'A', 'MTK'),
(106, 'SOAL (48)mtk.JPG', 'Y=-2 sin 2x', 'y = – 2 cos 2x', ' y = – 2 cos 3x', 'y = 2 cos 3x', 'y = 2 sin 3x', 'C', 'MTK'),
(107, 'SOAL (49)mtk.JPG', '70', '71', '72', '73', '74', 'D', 'MTK'),
(108, 'SOAL (50)mtk.JPG', '0,16', '0,20', '0,26', '0,32', '0,36', 'E', 'MTK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_peserta`
--

CREATE TABLE `tbl_peserta` (
  `id` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `asal_sekolah` varchar(100) NOT NULL,
  `skor` int(5) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_peserta`
--

INSERT INTO `tbl_peserta` (`id`, `username`, `password`, `asal_sekolah`, `skor`) VALUES
(1, 'swhiter', '11111', 'SMK NEGERI 2', 3),
(2, 'kumikun', '123456', 'SMK NEGERI 1 ', 3),
(3, 'peserta1', '11111', 'SMK NEGERI 3', 0),
(4, 'peserta2', '11111', 'SMK NEGERI 4', 0),
(5, 'peserta4', '11111', 'SMK NEGERI 5', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_peserta2`
--

CREATE TABLE `tbl_peserta2` (
  `id` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `asal_sekolah` varchar(100) NOT NULL,
  `skor` int(5) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_soal_ujian`
--

CREATE TABLE `tbl_soal_ujian` (
  `id` int(5) NOT NULL,
  `soal` varchar(100) NOT NULL,
  `jawaban_a` varchar(100) NOT NULL,
  `jawaban_b` varchar(100) NOT NULL,
  `jawaban_c` varchar(100) NOT NULL,
  `jawaban_d` varchar(100) NOT NULL,
  `jawaban_e` varchar(100) NOT NULL,
  `jawaban` varchar(100) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_soal_ujian2`
--

CREATE TABLE `tbl_soal_ujian2` (
  `id` int(5) NOT NULL,
  `soal` varchar(100) NOT NULL,
  `jawaban_a` varchar(100) NOT NULL,
  `jawaban_b` varchar(100) NOT NULL,
  `jawaban_c` varchar(100) NOT NULL,
  `jawaban_d` varchar(100) NOT NULL,
  `jawaban_e` varchar(100) NOT NULL,
  `jawaban` varchar(100) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `tbl_bank_soal`
--
ALTER TABLE `tbl_bank_soal`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_peserta`
--
ALTER TABLE `tbl_peserta`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_peserta2`
--
ALTER TABLE `tbl_peserta2`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_soal_ujian`
--
ALTER TABLE `tbl_soal_ujian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_soal_ujian2`
--
ALTER TABLE `tbl_soal_ujian2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_bank_soal`
--
ALTER TABLE `tbl_bank_soal`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT untuk tabel `tbl_peserta`
--
ALTER TABLE `tbl_peserta`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_peserta2`
--
ALTER TABLE `tbl_peserta2`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
