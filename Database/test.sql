-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2021 at 11:38 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id`, `username`, `password`, `nama`, `email`) VALUES
(1, 'jack', 'fasilkom', 'jacky', 'jacky@gmail.com'),
(2, 'jauza', 'lalala', 'uja', 'jauza@gmail.com'),
(3, 'jae', 'xixixi', 'jepri', 'jaehyun@gmail.com'),
(4, 'helmi', 'wiuwiuwiu', 'emi', 'helmy@gmail.com'),
(5, 'tralala', 'wawawa', 'lala', 'lalai@gmail.com'),
(6, 'jauza', 'jojajaj', 'jauzaa', 'jauza@gmail.com'),
(7, 'jauza', 'jojajaj', 'jauzaa', 'jauza@gmail.com'),
(8, 'Jauza', 'ujajajja', 'jaojao', 'jauza@gmail.com'),
(9, 'Jauza', 'ujajajja', 'jaojao', 'jauza@gmail.com'),
(10, 'Jauza', 'ujajajja', 'jaojao', 'jauza@gmail.com'),
(11, 'Jauza', 'jaojaoa', 'jaojao', 'jauza@gmail.com'),
(12, 'Jauza', 'jaojaoa', 'jaojao', 'jauza@gmail.com'),
(13, 'Jauza', 'jaojaoa', 'jaojao', 'jauza@gmail.com'),
(14, 'Jauza', 'sffssf', 'jaojao', 'jauza@gmail.com'),
(15, 'Jauza', 'sffssf', 'jaojao', 'jauza@gmail.com'),
(16, 'Jauza', 'efs', 'jaojao', 'jauza@gmail.com'),
(17, 'Jauza', 'efs', 'jaojao', 'jauza@gmail.com'),
(18, 'jauza', 'affff', 'uja', 'jauza@gmail.com'),
(19, 'jauza', 'affff', 'uja', 'jauza@gmail.com'),
(20, 'jauza', 'affff', 'uja', 'jauza@gmail.com'),
(21, 'jauza', 'affff', 'uja', 'jauza@gmail.com'),
(22, 'jeje', 'ujauja', 'jejep', 'jepri11@gmail.com'),
(23, 'jeje', 'ujauja', 'jejep', 'jepri11@gmail.com'),
(25, 'lukes', 'cascas', 'lucas', 'luca@gmail.com'),
(26, 'lukes', 'cascas', 'lucas', 'luca@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `benar`
--

CREATE TABLE `benar` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `NIM` varchar(100) DEFAULT NULL,
  `hobi` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `benar`
--

INSERT INTO `benar` (`id`, `nama`, `NIM`, `hobi`, `password`) VALUES
(1, 'Peniel Sitepu', '2117081', 'mendengarkan musik', 'penruto345');

-- --------------------------------------------------------

--
-- Table structure for table `brite`
--

CREATE TABLE `brite` (
  `judul` varchar(200) NOT NULL,
  `penulis` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `first`
--

CREATE TABLE `first` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `first`
--

INSERT INTO `first` (`id`, `username`, `password`, `nama`, `email`) VALUES
(1, 'yea', 'benar', 'apakah', 'tentu saja');

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `id` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `tanggal` varchar(200) NOT NULL,
  `konten` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`id`, `judul`, `tanggal`, `konten`) VALUES
(4, 'peniel b', '5 desember 2002', '<p><strong><h1>Hasil Liga Inggris: Penalti Ronaldo Menangkan Manchester United</h1></strong><br />\r\nManchester United&nbsp;meraih kemenangan tipis 1-0 atas Norwich City lewat gol penalti Cristiano Ronaldo&nbsp;pada pekan ke-16&nbsp;Liga Inggris di Carrow Road, Minggu (12/12) dini hari WIB.<br />\r\nHasil ini membuat Man Utd kini menempati posisi kelima klasemen. Man Utd mengoleksi 27 poin atau hanya kalah selisih gol dari posisi keempat yang ditempati West Ham United.<br />\r\n<br />\r\nMan United mendapatkan peluang pertama untuk mencetak gol pada menit ke-14. Tendangan bebas Alex Telles yang mengenai pagar hidup masih mampu diselamatkan kiper Norwich, Tim Krul.<br />\r\n<br />\r\nSelepas tekanan itu Man Utd tidak lagi jadi tim yang dominan. Norwich yang bermain di hadapan publik sendiri tampil percaya diri meladeni Man Utd yang unggul secara kualitas individu.<br />\r\nMan Utd baru kembali mendapatkan peluang di pertengahan babak pertama. Diogo Dalot yang naik membantu serangan melepaskan tembakan kaki kiri dari dalam kotak penalti yang masih bisa dijinakkan Krul.</p>\r\n\r\n<p><br />\r\nJelang akhir babak pertama giliran Harry Maguire yang punya peluang menempatkan nama di papan skor. Namun, sundulan Harry Maguire yang mengarah ke gawang masih bisa digagalkan Krul yang bermain apik di bawah mistar Norwich.<br />\r\nDi babak kedua, De Gea membuat penyelamatan gemilang untuk menjaga gawang Man Utd aman dari kebobolan. Kiper asal Spanyol itu mampu mengagalkan peluang emas yang didapatkan Teemu Pukki.</p>\r\n\r\n<p><br />\r\nPada menit ke-74, Man Utd mendapatkan hadiah penalti setelah Max Aarons dianggap wasit melanggar Ronaldo di kotak penalti. Ronaldo yang maju sebagai eksekutor menjalankan tugas dengan sempurna untuk membuat skor jadi 1-0.<br />\r\nTiga menit berselang, Norwich memiliki peluang untuk menyamakan kedudukan. Namun, sundulan Ozan Kabak yang mengarah ke pojok kanan gawang bisa digagalkan secara gemilang oleh De Gea.</p>\r\n\r\n<p><br />\r\nJelang akhir babak kedua, Ronaldo membuang peluang emas untuk memperbesar skor jadi 2-0. Sontekan Ronaldo dari jarak dekat memanfaatkan umpan mendatar Marcus Rashford justru melambung di atas mistar gawang The Canaries.<br />\r\nSetelah itu tidak ada gol tambahan yang tercipta. Skor 1-0 untuk kemenangan Man Utd atas Norwich menjadi akhir dari pertandingan.<br />\r\nSusunan pemain<br />\r\nNorwich (4-3-2-1): Tim Krul; Max Aarons, Grant Hanley, Ozan Kabak, Dimitrios Giannoulis; Lukas Rupp, Billy Gilmour, Kenny McLean; Joshua Sargent, Przemyslaw Placheta; Teemu Pukki<br />\r\nManchester United (4-2-2-2): David De Gea; Diogo Dalot, Victor Lindelof, Harry Maguire, Alex Telles; Scott McTominay, Fred, Jadon Sancho, Bruno Fernandes; Cristiano Ronaldo, Marcus Rashford.</p>\r\n'),
(5, 'peniel b', '5 desember 2002', '<p><strong><h1>Hasil Liga Inggris: Penalti Ronaldo Menangkan Manchester United</h1></strong><br />\r\nManchester United&nbsp;meraih kemenangan tipis 1-0 atas Norwich City lewat gol penalti Cristiano Ronaldo&nbsp;pada pekan ke-16&nbsp;Liga Inggris di Carrow Road, Minggu (12/12) dini hari WIB.<br />\r\nHasil ini membuat Man Utd kini menempati posisi kelima klasemen. Man Utd mengoleksi 27 poin atau hanya kalah selisih gol dari posisi keempat yang ditempati West Ham United.<br />\r\n<br />\r\nMan United mendapatkan peluang pertama untuk mencetak gol pada menit ke-14. Tendangan bebas Alex Telles yang mengenai pagar hidup masih mampu diselamatkan kiper Norwich, Tim Krul.<br />\r\n<br />\r\nSelepas tekanan itu Man Utd tidak lagi jadi tim yang dominan. Norwich yang bermain di hadapan publik sendiri tampil percaya diri meladeni Man Utd yang unggul secara kualitas individu.<br />\r\nMan Utd baru kembali mendapatkan peluang di pertengahan babak pertama. Diogo Dalot yang naik membantu serangan melepaskan tembakan kaki kiri dari dalam kotak penalti yang masih bisa dijinakkan Krul.</p>\r\n\r\n<p><br />\r\nJelang akhir babak pertama giliran Harry Maguire yang punya peluang menempatkan nama di papan skor. Namun, sundulan Harry Maguire yang mengarah ke gawang masih bisa digagalkan Krul yang bermain apik di bawah mistar Norwich.<br />\r\nDi babak kedua, De Gea membuat penyelamatan gemilang untuk menjaga gawang Man Utd aman dari kebobolan. Kiper asal Spanyol itu mampu mengagalkan peluang emas yang didapatkan Teemu Pukki.</p>\r\n\r\n<p><br />\r\nPada menit ke-74, Man Utd mendapatkan hadiah penalti setelah Max Aarons dianggap wasit melanggar Ronaldo di kotak penalti. Ronaldo yang maju sebagai eksekutor menjalankan tugas dengan sempurna untuk membuat skor jadi 1-0.<br />\r\nTiga menit berselang, Norwich memiliki peluang untuk menyamakan kedudukan. Namun, sundulan Ozan Kabak yang mengarah ke pojok kanan gawang bisa digagalkan secara gemilang oleh De Gea.</p>\r\n\r\n<p><br />\r\nJelang akhir babak kedua, Ronaldo membuang peluang emas untuk memperbesar skor jadi 2-0. Sontekan Ronaldo dari jarak dekat memanfaatkan umpan mendatar Marcus Rashford justru melambung di atas mistar gawang The Canaries.<br />\r\nSetelah itu tidak ada gol tambahan yang tercipta. Skor 1-0 untuk kemenangan Man Utd atas Norwich menjadi akhir dari pertandingan.<br />\r\nSusunan pemain<br />\r\nNorwich (4-3-2-1): Tim Krul; Max Aarons, Grant Hanley, Ozan Kabak, Dimitrios Giannoulis; Lukas Rupp, Billy Gilmour, Kenny McLean; Joshua Sargent, Przemyslaw Placheta; Teemu Pukki<br />\r\nManchester United (4-2-2-2): David De Gea; Diogo Dalot, Victor Lindelof, Harry Maguire, Alex Telles; Scott McTominay, Fred, Jadon Sancho, Bruno Fernandes; Cristiano Ronaldo, Marcus Rashford.</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `sumber` varchar(200) NOT NULL,
  `tanggal` varchar(200) NOT NULL,
  `konten` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `sumber`, `tanggal`, `konten`) VALUES
(4, 'https://www.liputan6.com/tekno/read/4733033/garena-kembali-kolaborasi-dengan-money-heist-cek-event-dan-item-hadiahnya', '10 Desember 2021', '<h1><strong>Garena Kembali Kolaborasi dengan Money Heist, Cek Event dan Item Hadiahnya</strong></h1>\r\n\r\n<p>Misi&nbsp;<a href=\"https://www.liputan6.com/tag/free-fire\">Free Fire</a>&nbsp;x Money Heist Final Episode: Raid and Run akan selesai sebentar lagi, tepatnya 16 Desember 2021. Salah satu kesempatan untuk mendapatkan lebih banyak koleksi item eksklusif dapat dilakukan para&nbsp;<em>survivors</em>&nbsp;dengan melakukan&nbsp;<em>login</em>&nbsp;pada 11 Desember.</p>\r\n\r\n<p>&quot;<em>Survivors</em>&nbsp;di seluruh dunia telah telah ikut berpartisipasi dalam berbagai misi, sendirian maupun bersama tim untuk membantu Profesor membebaskan Free Fire Squad sejak 3 Desember,&quot; tulis Garena Free Fire dalam keterangan resmi yang diterima, Jumat&nbsp;(10/12/2021).</p>\r\n\r\n<p>Dengan waktu misi yang semakin mendekat akhir, Garena pun mengajak para survivors menyelesaikan seluruh misi dan mengumpulkan hadiahnya. Deretan misi dan item yang bisa diperoleh para pemain dalam eventi ini sebagai berikut :</p>\r\n\r\n<p>Selesaikan misi Let&#39;s Plan Again Web Event pada 7-16 Desember untuk mendapatkan Backpack Team Heist</p>\r\n\r\n<p>Selesaikan misi Web Event Reload Target Down pada 8-15 Desember untuk mendapatkan Gun Skin Woodpecker Red Robster dan Vector Red Robster</p>\r\n\r\n<p>Main bersama teman 8 game pada 9-16 Desember untuk mendapatkan Chill on Bills skyboard</p>\r\n\r\n<p>Selesaikan misi web Event Collection Party pada 10-16 Desember untuk mendapatkan Gloo Wall-Gold Vault</p>\r\n\r\n<p>Login pada 11 Desember untuk mendaptakan 3x incubator voucher</p>\r\n\r\n<p>Selesaikan Cumulative Booyah Mission pada 13-16 Desember untuk mendapatkan Cha-Ching Lootbox</p>\r\n\r\n<p>Sebagai informasi, Garena Free Fire memang kembali mengumumkan kerja sama dengan serial Money Heist. Kolaborasi kali kedua ini bersamaan dengan berakhirnya serial Money Heist yang rilis pada 3 Desember 2021.</p>\r\n\r\n<p>Kolaborasi ini menghadirkan sederet konten bernuansa serial Netflix tersebut, seperti outfit, skin, lobby, hingga event. Free Fire juga menggelar misi harian yang memungkinkan pemain mendapatkan hadiah.</p>\r\n\r\n<p><img alt=\"\" src=\"https://metroandalas.co.id/wp-content/uploads/2021/09/Review_Game_Free_Fire_Atau_FF_dan_Skin_Celana_Cepcil_1.jpeg\" style=\"height:200px; width:300px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(5, 'https://www.liputan6.com/tekno/read/4733781/pubg-battlegrounds-akan-jadi-game-gratis-di-januari-2022', '11 Desember 2021', '<h1><strong>PUBG: Battlegrounds Akan Jadi Game Gratis di Januari 2022</strong></h1>\r\n\r\n<p>PlayerUnknown&#39;s Battlegrounds atau PUBG: Battlegrounds versi asli, bakal menjadi&nbsp;<em>game</em>&nbsp;gratis alias&nbsp;<em>free-to-play</em>&nbsp;mulai tanggal 12 Januari 2022 mendatang.</p>\r\n\r\n<p>Pengumuman soal diubahnya&nbsp;<a href=\"https://www.liputan6.com/tag/pubg-battlegrounds\">PUBG: Battlegrounds</a>&nbsp;menjadi&nbsp;<em>game free-to-play</em>&nbsp;ini diumumkan oleh Krafton di The Game Awards, sebagaimana dilansir&nbsp;<em>The Verge</em>, dikutip&nbsp;Sabtu (11/12/2021).</p>\r\n\r\n<p>Meski&nbsp;<a href=\"https://www.liputan6.com/tag/pubg\">PUBG</a>&nbsp;versi asli ini akan bisa dimainkan secara gratis, namun masih ada beberapa elemen yang membutuhkan pemain untuk merogoh kocek nantinya.</p>\r\n\r\n<p>Krafton berencana memperkenalkan&nbsp;<em>upgrade</em>&nbsp;akun satu kali yang dihargai USD 12,99 atau sekitar Rp 186 ribu, yang mereka sebut Battleground Plus.</p>\r\n\r\n<p>Fitur Battleground Plus ini nantinya bakal memberikan para pemain yang sudah membayar akses ke mode<em>&nbsp;ranked match</em>, pertandingan kustom, item khusus di dalam&nbsp;<a href=\"https://www.liputan6.com/tag/game\"><em>game</em></a>, dan masih banyak lagi.</p>\r\n\r\n<p>Pemain yang sudah membayar PUBG juga akan mendapatkan PUBG Special Commemorative Pack, yang mencakup Battleground Plus dan item tambahan di dalam&nbsp;<em>game</em>.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.okeguys.com/wp-content/uploads/2021/12/10103513/PUBG-PC-Gratis.jpg\" style=\"height:200px; width:356px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(6, 'https://www.liputan6.com/tekno/read/4734182/game-android-bakal-bisa-dimainkan-di-windows-tahun-depan', '11 Desember 2021', '<h1><strong>Game Android Bakal Bisa Dimainkan di Windows Tahun Depan</strong></h1>\r\n\r\n<p>Google baru saja mengumumkan rencananya untuk menghadirkan game Android ke perangkat Windows tahun depan.</p>\r\n\r\n<p>Dengan kata lain, game-game Android bisa dimainkan di laptop, PC, maupun tablet yang menjalankan sistem operasi besutan Microsoft tersebut.</p>\r\n\r\n<p>Untuk melakukan hal tersebut, seperti dikutip dari Gizmodo, Sabtu (11/12/2021), Google mengumumkan launcher khusus Google Play Games untuk Windows.</p>\r\n\r\n<p>Selain dapat memainkan game Android, launcher tersebut memungkinkan pemain untuk berganti platform secara lebih mulus saat sedang memainkan sebuah game.</p>\r\n\r\n<p>Jadi, pemain nantinya dapat berganti-ganti perangkat saat memainkan sebuah game, mulai dari Chromebook, PC Windows, dan smartphone Android tanpa perlu kehilangan datanya.</p>\r\n\r\n<p>Menurut raksasa internet tersebut, launcher ini dikembangkan dan didistribusikan langsung oleh perusahaan. Untuk itu, Google memastikan kehadiran launcher ini bukan merupakan bagian dari kerja sama Microsoft.</p>\r\n\r\n<p>Perusahaan juga menyebut game yang dimainkan berjalan secara lokal dalam sistem, bukan sekadar streaming dari cloud.</p>\r\n\r\n<p>Kendati demikian, perusahaan belum mengungkap secara detail seperti apa cara kerja launcher ini, berikut informasi lebih detailnya.</p>\r\n\r\n<p>Mengingat launcher ini akan meluncur 2022, ada kemungkinan informasi lebih lanjut akan diungkap pada tahun depan.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.pixabay.com/photo/2020/01/04/11/15/game-play-4740277_1280.jpg\" style=\"height:200px; width:300px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(7, 'https://hot.detik.com/movie/d-5828780/rekomendasi-film-bioskop-akhir-pekan-ini-ada-arashi-anniversary-tour?_ga=2.204891288.966889397.1639296927-398836150.1630381996', '27 November 2021', '<h1><strong>Rekomendasi Film Bioskop Akhir Pekan Ini</strong><strong> </strong></h1>\r\n\r\n<h2><br />\r\n<em><strong>1. Eternals</strong></em></h2>\r\n\r\n<p><br />\r\nKetika populasi manusia di alam semesta yang dahulu dihapus oleh Thanos dan kini telah tumbuh menjadi populasi dengan cepat, ternyata keadaan dunia mulai memburuk. Penyebabnya adalah Deviant, yaitu sosok musuh tertua umat manusia yang kembali mengacau bumi. Cepatnya pertumbuhan populasi manusia juga memberikan energi baru untuk kemunculan Deviant. Hanya perlu sepekan sebelum akhirnya Deviant bangkit.</p>\r\n\r\n<p>Dane Whitman, yang merupakan sosok abadi, dengan hadirnya ancaman tersebut lantas memanggil para pahlawan abadi lainnya. Mereka sejak 7 abad yang lalu ternyata telah eksis di dunia. Para superhero tersebut kemudian bergabung untuk melindungi bumi dari serangan Deviant.</p>\r\n\r\n<p>Lantas, kenapa pada saat Thanos mengancam mereka tidak membantu? Dane Whitman dan kolega hanya dapat ikut campur jika situasinya melibatkan serangan Deviant saja. Tim Eternals akhirnya harus turun tangan langsung untuk melindungi bumi.</p>\r\n\r\n<p><img alt=\"\" src=\"https://ik.imagekit.io/tvlk/blog/2021/09/Rekomendasi-Film-Terbaru-2021-Traveloka-Movies-Traveloka-Xperience-4-1024x512.jpg?tr=dpr-1,w-675\" style=\"height:200px; width:399px\" /></p>\r\n\r\n<h2><br />\r\n<strong><em>2. Encanto</em></strong></h2>\r\n\r\n<p><br />\r\nEncanto menceritakan kisah keluarga Madrigals yang luar biasa, yang hidup tersembunyi di pegunungan Kolombia, di tempat yang menakjubkan dan mempesona yang disebut Encanto. Keajaiban Encanto telah memberkati setiap anak dalam keluarga dan memberikan hal unik berupa kekuatan super hingga kekuatan untuk menyembuhkan, setiap anak memilikinya kecuali satu anak, yaitu Mirabel. Tetapi ketika dia mengetahui bahwa sihir di sekitar Encanto dalam bahaya, Mirabel menyadari bahwa dia, satu-satunya Madrigal biasa yang mungkin menjadi harapan terakhir keluarganya yang luar biasa.</p>\r\n\r\n<h2><img alt=\"\" src=\"https://nawalakarsa.id/wp-content/uploads/2021/11/encanto_review_header_cv.jpg\" style=\"height:169px; width:300px\" /><br />\r\n<br />\r\n<strong><em>3. Ghostbusters</em></strong></h2>\r\n\r\n<p>Afterlife Film ini tayang pertama kali di bioskop tanah air pada 11 November 2021.&nbsp; Film garapan Jason Reitman ini berkisah tentang keluarga baru yang pindah ke sebuah kota.&nbsp; Mereka sadar bila keluarganya memiliki hubungan dengan ghostbusters asli dan warisan rahasia yang ditinggalkan sang kakek.&nbsp; Film ini dibintangi oleh Bull Muray, Dan Aykroyd, Paul Rudd, Mckenna Grace, dan Ernie Hudson.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://asset.kompas.com/crops/7bmQsGTtXUqW75hOKe-gyTwgHyw=/669x0:4419x2500/750x500/data/photo/2021/09/30/6155511b76394.jpg\" style=\"height:200px; width:300px\" /></p>\r\n\r\n<h2>4. <strong><em>Seperti Denam, Rindu Harus dibayar Tuntas&nbsp;</em></strong></h2>\r\n\r\n<p>Film yang didapatasi dari Novel dengan judul yang sama ini tayang perdana pada 2 Desember 2021.&nbsp; Film ini berkisah tentang Ajo Kawier, pemuda yang dikenal sebagai jagoan bernyali besar.&nbsp; Ajo memiliki hasrat besar dalam bertarung dan didorong sebuah rahasia. Film ini dibintangi oleh Reza Rahadian, Christine Hakim, Ladya Cheryl, Ratu Felisha, Sal Pribadi, dan Mathino Lio.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://assets.pikiran-rakyat.com/crop/0x514:1637x1871/x/photo/2021/08/15/3895227659.jpg\" style=\"height:249px; width:300px\" /></p>\r\n\r\n<h2><strong><em>5. Venom 2: Let There Be Carnage</em></strong></h2>\r\n\r\n<p>Venom 2: Let There Be Carnage masih melanjutkan aksi Eddie Brock (Tom Hardy) seorang jurnalis yang berubah menjadi karakter jahat bernama Venom usai terpapar alien berbentuk cairan kental yang disebut symbiote.</p>\r\n\r\n<p>Setelah berhasil menghentikan Riot atau Carlton Drake (Riz Ahmed) di film sebelumnya, Eddie Brock berusaha menjalani hidup baru sebagai inang Venom yang dikenal haus memangsa otak manusia. Sebagai gantinya, Eddie menyediakan coklat dan organ hewan untuk dimangsa Venom.</p>\r\n\r\n<p>Suatu hari, Eddie didatangi seorang detektif bernama Patrick Mulligan (Stephen Graham) dan memintanya menemui Cletus Kasady (Woody Harrelson) seorang pembunuh berantai yang akan dihukum mati.<br />\r\nWalau terpaksa, Eddie akhirnya menyanggupi permintaan tersebut. Usai bertemu Kasady, Eddie terpancing dengan goresan di dinding sel Kasady yang menyimpan misteri.<br />\r\nBerkat bantuan Venom yang menempel di tubuhnya, Eddie berhasil memecahkan pesan rahasia tersebut. Rupanya, pesan itu berisi lokasi tempat Kasady menyimpan tubuh korban-korbannya.</p>\r\n\r\n<p><br />\r\nSetelah penemuan itu, Kasady kembali mengajukan satu permintaan terakhir untuk bertemu dengan Eddie. Di akhir perjumpaan mereka, Eddie membuat Kasady marah dan menggigit tangan Eddie sampai mengeluarkan darah.<br />\r\nKasady lalu dibawa ke ruang eksekusi. Namun hal aneh terjadi pada tubuh Kasady. Ia berubah menjadi symbiote berwarna merah dan menyebut dirinya sebagai Carnage.<br />\r\nKasady yang berubah menjadi Carnage menyerang petugas penjaga dan kabur dari penjara untuk mencari Eddie.<br />\r\n<br />\r\n<img alt=\"\" src=\"https://static3.srcdn.com/wordpress/wp-content/uploads/2021/05/Venom-Let-There-Be-Carnage-Movie-Poster.jpg?q=50&amp;fit=crop&amp;w=740&amp;h=1096&amp;dpr=1.5\" style=\"height:200px; width:200px\" /></p>\r\n'),
(8, 'https://hot.detik.com/movie/d-5828780/rekomendasi-film-bioskop-akhir-pekan-ini-ada-arashi-anniversary-tour?_ga=2.204891288.966889397.1639296927-398836150.1630381996', '27 November 2021', '<h1><strong>Rekomendasi Film Bioskop Akhir Pekan Ini</strong><strong> </strong></h1>\r\n\r\n<h2><br />\r\n<em><strong>1. Eternals</strong></em></h2>\r\n\r\n<p><br />\r\nKetika populasi manusia di alam semesta yang dahulu dihapus oleh Thanos dan kini telah tumbuh menjadi populasi dengan cepat, ternyata keadaan dunia mulai memburuk. Penyebabnya adalah Deviant, yaitu sosok musuh tertua umat manusia yang kembali mengacau bumi. Cepatnya pertumbuhan populasi manusia juga memberikan energi baru untuk kemunculan Deviant. Hanya perlu sepekan sebelum akhirnya Deviant bangkit.</p>\r\n\r\n<p>Dane Whitman, yang merupakan sosok abadi, dengan hadirnya ancaman tersebut lantas memanggil para pahlawan abadi lainnya. Mereka sejak 7 abad yang lalu ternyata telah eksis di dunia. Para superhero tersebut kemudian bergabung untuk melindungi bumi dari serangan Deviant.</p>\r\n\r\n<p>Lantas, kenapa pada saat Thanos mengancam mereka tidak membantu? Dane Whitman dan kolega hanya dapat ikut campur jika situasinya melibatkan serangan Deviant saja. Tim Eternals akhirnya harus turun tangan langsung untuk melindungi bumi.</p>\r\n\r\n<p><img alt=\"\" src=\"https://ik.imagekit.io/tvlk/blog/2021/09/Rekomendasi-Film-Terbaru-2021-Traveloka-Movies-Traveloka-Xperience-4-1024x512.jpg?tr=dpr-1,w-675\" style=\"height:200px; width:399px\" /></p>\r\n\r\n<h2><br />\r\n<strong><em>2. Encanto</em></strong></h2>\r\n\r\n<p><br />\r\nEncanto menceritakan kisah keluarga Madrigals yang luar biasa, yang hidup tersembunyi di pegunungan Kolombia, di tempat yang menakjubkan dan mempesona yang disebut Encanto. Keajaiban Encanto telah memberkati setiap anak dalam keluarga dan memberikan hal unik berupa kekuatan super hingga kekuatan untuk menyembuhkan, setiap anak memilikinya kecuali satu anak, yaitu Mirabel. Tetapi ketika dia mengetahui bahwa sihir di sekitar Encanto dalam bahaya, Mirabel menyadari bahwa dia, satu-satunya Madrigal biasa yang mungkin menjadi harapan terakhir keluarganya yang luar biasa.</p>\r\n\r\n<h2><img alt=\"\" src=\"https://nawalakarsa.id/wp-content/uploads/2021/11/encanto_review_header_cv.jpg\" style=\"height:169px; width:300px\" /><br />\r\n<br />\r\n<strong><em>3. Ghostbusters</em></strong></h2>\r\n\r\n<p>Afterlife Film ini tayang pertama kali di bioskop tanah air pada 11 November 2021.&nbsp; Film garapan Jason Reitman ini berkisah tentang keluarga baru yang pindah ke sebuah kota.&nbsp; Mereka sadar bila keluarganya memiliki hubungan dengan ghostbusters asli dan warisan rahasia yang ditinggalkan sang kakek.&nbsp; Film ini dibintangi oleh Bull Muray, Dan Aykroyd, Paul Rudd, Mckenna Grace, dan Ernie Hudson.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://asset.kompas.com/crops/7bmQsGTtXUqW75hOKe-gyTwgHyw=/669x0:4419x2500/750x500/data/photo/2021/09/30/6155511b76394.jpg\" style=\"height:200px; width:300px\" /></p>\r\n\r\n<h2>4. <strong><em>Seperti Denam, Rindu Harus dibayar Tuntas&nbsp;</em></strong></h2>\r\n\r\n<p>Film yang didapatasi dari Novel dengan judul yang sama ini tayang perdana pada 2 Desember 2021.&nbsp; Film ini berkisah tentang Ajo Kawier, pemuda yang dikenal sebagai jagoan bernyali besar.&nbsp; Ajo memiliki hasrat besar dalam bertarung dan didorong sebuah rahasia. Film ini dibintangi oleh Reza Rahadian, Christine Hakim, Ladya Cheryl, Ratu Felisha, Sal Pribadi, dan Mathino Lio.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://assets.pikiran-rakyat.com/crop/0x514:1637x1871/x/photo/2021/08/15/3895227659.jpg\" style=\"height:249px; width:300px\" /></p>\r\n\r\n<h2><strong><em>5. Venom 2: Let There Be Carnage</em></strong></h2>\r\n\r\n<p>Venom 2: Let There Be Carnage masih melanjutkan aksi Eddie Brock (Tom Hardy) seorang jurnalis yang berubah menjadi karakter jahat bernama Venom usai terpapar alien berbentuk cairan kental yang disebut symbiote.</p>\r\n\r\n<p>Setelah berhasil menghentikan Riot atau Carlton Drake (Riz Ahmed) di film sebelumnya, Eddie Brock berusaha menjalani hidup baru sebagai inang Venom yang dikenal haus memangsa otak manusia. Sebagai gantinya, Eddie menyediakan coklat dan organ hewan untuk dimangsa Venom.</p>\r\n\r\n<p>Suatu hari, Eddie didatangi seorang detektif bernama Patrick Mulligan (Stephen Graham) dan memintanya menemui Cletus Kasady (Woody Harrelson) seorang pembunuh berantai yang akan dihukum mati.<br />\r\nWalau terpaksa, Eddie akhirnya menyanggupi permintaan tersebut. Usai bertemu Kasady, Eddie terpancing dengan goresan di dinding sel Kasady yang menyimpan misteri.<br />\r\nBerkat bantuan Venom yang menempel di tubuhnya, Eddie berhasil memecahkan pesan rahasia tersebut. Rupanya, pesan itu berisi lokasi tempat Kasady menyimpan tubuh korban-korbannya.</p>\r\n\r\n<p><br />\r\nSetelah penemuan itu, Kasady kembali mengajukan satu permintaan terakhir untuk bertemu dengan Eddie. Di akhir perjumpaan mereka, Eddie membuat Kasady marah dan menggigit tangan Eddie sampai mengeluarkan darah.<br />\r\nKasady lalu dibawa ke ruang eksekusi. Namun hal aneh terjadi pada tubuh Kasady. Ia berubah menjadi symbiote berwarna merah dan menyebut dirinya sebagai Carnage.<br />\r\nKasady yang berubah menjadi Carnage menyerang petugas penjaga dan kabur dari penjara untuk mencari Eddie.<br />\r\n<br />\r\n<img alt=\"\" src=\"https://static3.srcdn.com/wordpress/wp-content/uploads/2021/05/Venom-Let-There-Be-Carnage-Movie-Poster.jpg?q=50&amp;fit=crop&amp;w=740&amp;h=1096&amp;dpr=1.5\" style=\"height:200px; width:200px\" /></p>\r\n'),
(9, 'https://www.cnnindonesia.com/hiburan/20211212080303-225-732941/serial-terlaris-di-as-yellowstone-musim-4-tayang-di-mola', '12 Desember 2021', '<h1><strong>Serial Terlaris di AS, Yellowstone Musim 4.</strong></h1>\r\n\r\n<p>Yellowstone, serial terlaris di Amerika Serikat saat ini, telah memasuki musim keempatnya. Serial ini dapat ditonton dengan mudah dan eksklusif hanya di aplikasi streaming Mola.<br />\r\nPara penggemar film sebaiknya tak melewatkan serial yang sempat meraih penghargaan berturut-turut pada Western Heritage Awards 2019 dan 2020 pada kategori Drama Fiksi Terbaik ini. Mengutip Variety, berdasarkan hasil perhitungan Nielsen, serial ini menarik 14,7 juta pemirsa pada malam pemutaran perdana pada 7 Desember 2021 silam.<br />\r\n<br />\r\nDengan angka tersebut, Yellowstone menyandang posisi nomor satu di semua platform penayangan sepanjang tahun 2021. Lebih dari itu, serial dengan bintang utama Kevin Coastner ini pun tercatat menjadi serial dengan jumlah penonton penayangan perdana terbanyak setelah Walking Dead pada 2017.<br />\r\n<br />\r\nRating pemirsa yang dilansir melalui website Rotten Tomatoes pun mencatatkan presentase kepuasan pemirsa dan kritikus yang terus meningkat di setiap musim penayangan. Pada musim pertama, serial yang pertama kali dirilis pada tahun 2018 ini mendapatkan presentase 53 persen, kemudian di musim kedua menjadi 88 persen dan melesat jadi 100 persen di musim ketiga.<br />\r\n<br />\r\nJohn Dutton (diperankan oleh Kevin Costner), kepala keluarga sekaligus pemilik peternakan Yellowstone, masih terus berjuang mempertahankan tanah dan peternakannya. Dengan segala upaya, dia tetap mencari kejelasan pasca penembakan oleh sekelompok orang tak dikenal, meskipun kondisi fisiknya belum maksimal. Dia pun sudah memutuskan tak akan memaafkan orang di balik pembantaian keluarganya yang meninggalkan luka dan trauma.<br />\r\n<br />\r\nSebaliknya, siapa sangka, Kayce (Luke Grimes), putra dari John yang pada musim pertama memiliki hubungan renggang dengan ayahnya, kini lambat laun jadi berubah. Apalagi setelah terjadi kasus penembakan, dirinya semakin yakin melindungi keluarganya.<br />\r\nAmarah Beth (Kelly Reilly), putri John Dutton pun semakin tak terbendung. Dia yakin, saudara laki-lakinya Jamie (Wes Bentley), memiliki andil tak kecil dalam peristiwa penyerangan yang meninggalkan bekas luka bakar cukup parah di tubuh Beth. Di sisi lain, Beth dan suaminya Rip Wheeler (Cole Hauser), mendapatkan hadiah tak terduga yang bisa mengubah kehidupan rumah tangga mereka.<br />\r\n<br />\r\nDendam atas pembantaian kepemilikan tanah Yellowstone jadi tak tertahankan. Rip Wheeler turut tak mampu membendung emosi, hingga merasa harus menjadi hakim sendiri bagi orang-orang diyakininya layak untuk mati.<br />\r\n<br />\r\nLebih lanjut, Yellowstone musim keempat diyakini bakal semakin menarik dengan penambahan karakter-karakter baru pada musim terbaru, dibintangi aktor dan aktris ternama seperti Jackie Weaver sebagai Caroline Warner, CEO Market Equities yang mencoba menghancurkan cengkeraman John Dutton di tanah Yellowstone yang luas.<br />\r\n<br />\r\nKemudian, ada Piper Perabo sebagai pengunjuk rasa yang menentang kepolisian yang melindungi pertanian industri dan pembunuhan hewan; Kathryn Kelly sebagai seorang teknisi dokter hewan yang memulai hubungan dengan koboi peternakan Dutton; serta Finn Little sebagai memerankan Carter, seorang pemuda unik yang menyerupai Rip.<br />\r\n<br />\r\nApakah musim keempat ini akan mengungkap siapa dalang dibalik pembantaian keluarga Dutton? Akankah keluarga Dutton memenangkan kembali seluruh tanah warisannya?</p>\r\n\r\n<p><img alt=\"\" src=\"https://financerewind.com/wp-content/uploads/2020/07/Yellowstone.jpg\" style=\"height:200px; width:326px\" /><br />\r\n&nbsp;</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `konten`
--

CREATE TABLE `konten` (
  `id` int(11) NOT NULL,
  `tanggal` datetime(6) NOT NULL,
  `konten` mediumtext NOT NULL,
  `gambar` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lgin`
--

CREATE TABLE `lgin` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `komentar` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lgin`
--

INSERT INTO `lgin` (`id`, `email`, `username`, `password`, `komentar`) VALUES
(1, 'penielsayang@gmail.com', 'penielstp', 'peniel123', 'okee'),
(2, 'iaq@gmail.com', 'gatau', '1234567', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` text NOT NULL,
  `nama` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `id` int(200) NOT NULL,
  `sumber` varchar(400) NOT NULL,
  `tanggal` text NOT NULL,
  `konten` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`id`, `sumber`, `tanggal`, `konten`) VALUES
(1, 'https://www.liputan6.com/tekno/read/4734182/game-android-bakal-bisa-dimainkan-di-windows-tahun-depan', '27 November 2021', '<h1><strong>Rekomendasi Film Bioskop Akhir Pekan Ini</strong><strong> </strong></h1>\r\n\r\n<h2><br />\r\n<em><strong>1. Eternals</strong></em></h2>\r\n\r\n<p><br />\r\nKetika populasi manusia di alam semesta yang dahulu dihapus oleh Thanos dan kini telah tumbuh menjadi populasi dengan cepat, ternyata keadaan dunia mulai memburuk. Penyebabnya adalah Deviant, yaitu sosok musuh tertua umat manusia yang kembali mengacau bumi. Cepatnya pertumbuhan populasi manusia juga memberikan energi baru untuk kemunculan Deviant. Hanya perlu sepekan sebelum akhirnya Deviant bangkit.</p>\r\n\r\n<p>Dane Whitman, yang merupakan sosok abadi, dengan hadirnya ancaman tersebut lantas memanggil para pahlawan abadi lainnya. Mereka sejak 7 abad yang lalu ternyata telah eksis di dunia. Para superhero tersebut kemudian bergabung untuk melindungi bumi dari serangan Deviant.</p>\r\n\r\n<p>Lantas, kenapa pada saat Thanos mengancam mereka tidak membantu? Dane Whitman dan kolega hanya dapat ikut campur jika situasinya melibatkan serangan Deviant saja. Tim Eternals akhirnya harus turun tangan langsung untuk melindungi bumi.</p>\r\n\r\n\r\n<h2><strong><em>2. Encanto</em></strong></h2>\r\n\r\n<p><br />\r\nEncanto menceritakan kisah keluarga Madrigals yang luar biasa, yang hidup tersembunyi di pegunungan Kolombia, di tempat yang menakjubkan dan mempesona yang disebut Encanto. Keajaiban Encanto telah memberkati setiap anak dalam keluarga dan memberikan hal unik berupa kekuatan super hingga kekuatan untuk menyembuhkan, setiap anak memilikinya kecuali satu anak, yaitu Mirabel. Tetapi ketika dia mengetahui bahwa sihir di sekitar Encanto dalam bahaya, Mirabel menyadari bahwa dia, satu-satunya Madrigal biasa yang mungkin menjadi harapan terakhir keluarganya yang luar biasa.</p>\r\n\r\n<h2><img alt=\"\" src=\"https://nawalakarsa.id/wp-content/uploads/2021/11/encanto_review_header_cv.jpg\" style=\"height:169px; width:300px\" /><br />\r\n<br />\r\n<strong><em>3. Ghostbusters</em></strong></h2>\r\n\r\n<p>Afterlife Film ini tayang pertama kali di bioskop tanah air pada 11 November 2021.&nbsp; Film garapan Jason Reitman ini berkisah tentang keluarga baru yang pindah ke sebuah kota.&nbsp; Mereka sadar bila keluarganya memiliki hubungan dengan ghostbusters asli dan warisan rahasia yang ditinggalkan sang kakek.&nbsp; Film ini dibintangi oleh Bull Muray, Dan Aykroyd, Paul Rudd, Mckenna Grace, dan Ernie Hudson.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://asset.kompas.com/crops/7bmQsGTtXUqW75hOKe-gyTwgHyw=/669x0:4419x2500/750x500/data/photo/2021/09/30/6155511b76394.jpg\" style=\"height:200px; width:300px\" /></p>\r\n\r\n<h2>4. <strong><em>Seperti Denam, Rindu Harus dibayar Tuntas&nbsp;</em></strong></h2>\r\n\r\n<p>Film yang didapatasi dari Novel dengan judul yang sama ini tayang perdana pada 2 Desember 2021.&nbsp; Film ini berkisah tentang Ajo Kawier, pemuda yang dikenal sebagai jagoan bernyali besar.&nbsp; Ajo memiliki hasrat besar dalam bertarung dan didorong sebuah rahasia. Film ini dibintangi oleh Reza Rahadian, Christine Hakim, Ladya Cheryl, Ratu Felisha, Sal Pribadi, dan Mathino Lio.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://assets.pikiran-rakyat.com/crop/0x514:1637x1871/x/photo/2021/08/15/3895227659.jpg\" style=\"height:249px; width:300px\" /></p>\r\n\r\n<h2><strong><em>5. Venom 2: Let There Be Carnage</em></strong></h2>\r\n\r\n<p>Venom 2: Let There Be Carnage masih melanjutkan aksi Eddie Brock (Tom Hardy) seorang jurnalis yang berubah menjadi karakter jahat bernama Venom usai terpapar alien berbentuk cairan kental yang disebut symbiote.</p>\r\n\r\n<p>Setelah berhasil menghentikan Riot atau Carlton Drake (Riz Ahmed) di film sebelumnya, Eddie Brock berusaha menjalani hidup baru sebagai inang Venom yang dikenal haus memangsa otak manusia. Sebagai gantinya, Eddie menyediakan coklat dan organ hewan untuk dimangsa Venom.</p>\r\n\r\n<p>Suatu hari, Eddie didatangi seorang detektif bernama Patrick Mulligan (Stephen Graham) dan memintanya menemui Cletus Kasady (Woody Harrelson) seorang pembunuh berantai yang akan dihukum mati.<br />\r\nWalau terpaksa, Eddie akhirnya menyanggupi permintaan tersebut. Usai bertemu Kasady, Eddie terpancing dengan goresan di dinding sel Kasady yang menyimpan misteri.<br />\r\nBerkat bantuan Venom yang menempel di tubuhnya, Eddie berhasil memecahkan pesan rahasia tersebut. Rupanya, pesan itu berisi lokasi tempat Kasady menyimpan tubuh korban-korbannya.</p>\r\n\r\n<p><br />\r\nSetelah penemuan itu, Kasady kembali mengajukan satu permintaan terakhir untuk bertemu dengan Eddie. Di akhir perjumpaan mereka, Eddie membuat Kasady marah dan menggigit tangan Eddie sampai mengeluarkan darah.<br />\r\nKasady lalu dibawa ke ruang eksekusi. Namun hal aneh terjadi pada tubuh Kasady. Ia berubah menjadi symbiote berwarna merah dan menyebut dirinya sebagai Carnage.<br />\r\nKasady yang berubah menjadi Carnage menyerang petugas penjaga dan kabur dari penjara untuk mencari Eddie.<br />\r\n<br />\r\n<img alt=\"\" src=\"https://static3.srcdn.com/wordpress/wp-content/uploads/2021/05/Venom-Let-There-Be-Carnage-Movie-Poster.jpg?q=50&amp;fit=crop&amp;w=740&amp;h=1096&amp;dpr=1.5\" style=\"height:200px; width:200px\" /></p>\r\n'),
(2, 'https://www.cnnindonesia.com/hiburan/20211123105842-227-724800/all-too-well-versi-10-menit-jadi-lagu-terpanjang-di-puncak-hot-100', '12 November 2021', '<h1><strong>Serial Terlaris di AS, Yellowstone Musim 4.</strong></h1>\r\n\r\n<p>Yellowstone, serial terlaris di Amerika Serikat saat ini, telah memasuki musim keempatnya. Serial ini dapat ditonton dengan mudah dan eksklusif hanya di aplikasi streaming Mola.<br />\r\nPara penggemar film sebaiknya tak melewatkan serial yang sempat meraih penghargaan berturut-turut pada Western Heritage Awards 2019 dan 2020 pada kategori Drama Fiksi Terbaik ini. Mengutip Variety, berdasarkan hasil perhitungan Nielsen, serial ini menarik 14,7 juta pemirsa pada malam pemutaran perdana pada 7 Desember 2021 silam.<br />\r\n<br />\r\nDengan angka tersebut, Yellowstone menyandang posisi nomor satu di semua platform penayangan sepanjang tahun 2021. Lebih dari itu, serial dengan bintang utama Kevin Coastner ini pun tercatat menjadi serial dengan jumlah penonton penayangan perdana terbanyak setelah Walking Dead pada 2017.<br />\r\n<br />\r\nRating pemirsa yang dilansir melalui website Rotten Tomatoes pun mencatatkan presentase kepuasan pemirsa dan kritikus yang terus meningkat di setiap musim penayangan. Pada musim pertama, serial yang pertama kali dirilis pada tahun 2018 ini mendapatkan presentase 53 persen, kemudian di musim kedua menjadi 88 persen dan melesat jadi 100 persen di musim ketiga.<br />\r\n<br />\r\nJohn Dutton (diperankan oleh Kevin Costner), kepala keluarga sekaligus pemilik peternakan Yellowstone, masih terus berjuang mempertahankan tanah dan peternakannya. Dengan segala upaya, dia tetap mencari kejelasan pasca penembakan oleh sekelompok orang tak dikenal, meskipun kondisi fisiknya belum maksimal. Dia pun sudah memutuskan tak akan memaafkan orang di balik pembantaian keluarganya yang meninggalkan luka dan trauma.<br />\r\n<br />\r\nSebaliknya, siapa sangka, Kayce (Luke Grimes), putra dari John yang pada musim pertama memiliki hubungan renggang dengan ayahnya, kini lambat laun jadi berubah. Apalagi setelah terjadi kasus penembakan, dirinya semakin yakin melindungi keluarganya.<br />\r\nAmarah Beth (Kelly Reilly), putri John Dutton pun semakin tak terbendung. Dia yakin, saudara laki-lakinya Jamie (Wes Bentley), memiliki andil tak kecil dalam peristiwa penyerangan yang meninggalkan bekas luka bakar cukup parah di tubuh Beth. Di sisi lain, Beth dan suaminya Rip Wheeler (Cole Hauser), mendapatkan hadiah tak terduga yang bisa mengubah kehidupan rumah tangga mereka.<br />\r\n<br />\r\nDendam atas pembantaian kepemilikan tanah Yellowstone jadi tak tertahankan. Rip Wheeler turut tak mampu membendung emosi, hingga merasa harus menjadi hakim sendiri bagi orang-orang diyakininya layak untuk mati.<br />\r\n<br />\r\nLebih lanjut, Yellowstone musim keempat diyakini bakal semakin menarik dengan penambahan karakter-karakter baru pada musim terbaru, dibintangi aktor dan aktris ternama seperti Jackie Weaver sebagai Caroline Warner, CEO Market Equities yang mencoba menghancurkan cengkeraman John Dutton di tanah Yellowstone yang luas.<br />\r\n<br />\r\nKemudian, ada Piper Perabo sebagai pengunjuk rasa yang menentang kepolisian yang melindungi pertanian industri dan pembunuhan hewan; Kathryn Kelly sebagai seorang teknisi dokter hewan yang memulai hubungan dengan koboi peternakan Dutton; serta Finn Little sebagai memerankan Carter, seorang pemuda unik yang menyerupai Rip.<br />\r\n<br />\r\nApakah musim keempat ini akan mengungkap siapa dalang dibalik pembantaian keluarga Dutton? Akankah keluarga Dutton memenangkan kembali seluruh tanah warisannya?</p>\r\n\r\n<p><img alt=\"\" src=\"https://financerewind.com/wp-content/uploads/2020/07/Yellowstone.jpg\" style=\"height:200px; width:326px\" /></p>\r\n'),
(3, 'https://www.cnnindonesia.com/hiburan/20211212025444-220-732901/sinopsis-house-of-gucci-rahasia-gelap-dinasti-gucci', '12 Desember 2021', '<h1><strong>Sinopsis House of Gucci, Rahasia Gelap Dinasti Gucci</strong></h1>\r\n\r\n<p><br />\r\n<br />\r\nHouse of Gucci&nbsp;merupakan film terbaru Lady Gaga yang diangkat dari kisah nyata pembunuhan pewaris keluarga Gucci. Film ini berlatar dekade &#39;70-an hingga medio &#39;90-an ketika kasus tersebut terjadi. Berikut sinopsis House of Gucci.<br />\r\nKisah bermula pada 1978, Patrizia Reggiani merupakan seorang putri dari pengusaha transportasi darat yang cukup besar di Milan, Italia. Parasnya yang menawan selalu menarik perhatian bagi lelaki-lelaki di sekelilingnya.<br />\r\n<br />\r\nSuatu kali, Patrizia datang ke sebuah pesta. Di sana, ia bertemu dengan Maurizio Gucci yang ia sangka adalah bartender. Mereka berdua kemudian berkenalan dan Patrizia jelas menaruh minat pada Maurizio yang tampak seperti pria culun.<br />\r\n<br />\r\nNamun Patrizia bukan hanya tertarik pada pria tersebut karena parasnya, melainkan nama Gucci yang ada di belakang nama Maurizio. Gucci dikisahkan kala itu sudah menjadi sebuah cap kemewahan dan kekayaan.<br />\r\nKesuksesan Gucci sebagai sebuah perusahaan mode menarik banyak perempuan untuk bisa meminang salah satu pria pewaris kerajaaan bisnis tersebut, termasuk Patrizia.<br />\r\n<br />\r\nUsaha Patrizia mendekati Maurizio tidak sia-sia. Maurizio jatuh cinta pada perempuan tersebut. Patrizia membuat kehidupan Maurizio yang membosankan menjadi berwarna.<br />\r\n<br />\r\nAkan tetapi hubungan mereka ditentang oleh ayah Maurizio, Rodolfo Gucci. Rodolfo menilai Patrizia termasuk perempuan yang hanya mencari kekayaan Gucci. Maurizio tak terima, ia pun menentang ayahnya itu.<br />\r\n<br />\r\nMaurizio kini miskin dan tak punya uang akibat perseteruan dengan ayahnya. Ia kemudian bekerja pada ayah Patrizia. Perlahan, ia dan Patrizia semakin saling jatuh cinta dan meresmikan hubungan itu di hadapan Gereja.<br />\r\n<br />\r\nPernikahan mereka menarik minat media massa kala itu, karena berlangsung tanpa restu dan kehadiran perwakilan keluarga Gucci sama sekali.<br />\r\n<br />\r\nMeski sudah menikahi keturunan Gucci, Patrizia tidak serta merta menikmati kemewahan. Keduanya tinggal di apartemen sempit. Hingga pada suatu hari, paman Maurizio, Aldo menghubungi mereka.<br />\r\n<br />\r\nAldo mengundang Patrizia dan Maurizio ke pesta ulang tahun mereka. Maurizio semula menolak karena enggan bersentuhan dengan keluarganya lagi. Namun Patrizia mendorongnya untuk datang.<br />\r\n<br />\r\nDi sana, Patrizia rupanya mendapat sambutan lebih hangat oleh Aldo dibandingkan dari Rodolfo. Perlahan-lahan, Patrizia mengetahui rahasia gelap dalam dinasti keluarga tajir ini.<br />\r\nNamun Patrizia tidak menyerah. Ia pun mulai merencanakan strategi untuk membuat keluarga Gucci beserta bisnisnya menyatu di bawah kendali dirinya dan sang suami, Maurizio.<br />\r\nHouse of Gucci merupakan film yang diangkat dari kisah nyata pembunuhan Maurizio Gucci pada 1995 yang didalangi oleh Patrizia Reggiani. Reggiani sendiri dijatuhi hukuman 29 tahun penjara akibat kasus tersebut.<br />\r\n<br />\r\nKisah keluarga Gucci ini juga sempat ditulis menjadi buku bertajuk The House of Gucci: A Sensational Story of Murder, Madness, Glamour, and Greed karya Sara Gay Forden. Buku itu pula yang menjadi dasar dari pembuatan film ini.<br />\r\n<br />\r\nIde pembuatan film ini sebenarnya sudah dimulai sejak 2006. Kala itu, sutradara House of Gucci, Ridley Scott sudah ditunjuk untuk menggarap sebuah proyek soal keluarga Gucci meskipun dari pihak keluarga menolak proyek ini.<br />\r\n<br />\r\nNamun berbagai kendala menghadang proyek ini, mulai dari gonta-ganti sutradara, pemain, hingga kemudian kembali lagi ke Scott pada November 2019.<br />\r\n<br />\r\nPada saat itu, proyek ini langsung menunjuk Lady Gaga untuk bermain dalam House of Gucci, bertepatan dengan namanya yang melambung berkat A Star Is Born (2018) yang mengganjar ia dengan sebuah nominasi Best Actress di Piala Oscar 2019.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.menit.co.id/wp-content/uploads/2021/12/House-of-Gucci.jpg\" style=\"height:200px; width:356px\" /><br />\r\n&nbsp;</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `music`
--

CREATE TABLE `music` (
  `id` int(100) NOT NULL,
  `sumber` varchar(400) NOT NULL,
  `tanggal` text NOT NULL,
  `konten` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `music`
--

INSERT INTO `music` (`id`, `sumber`, `tanggal`, `konten`) VALUES
(1, 'https://www.cnnindonesia.com/hiburan/20211123105842-227-724800/all-too-well-versi-10-menit-jadi-lagu-terpanjang-di-puncak-hot-100', '12 November 2021', '<h1><strong>All Too Well Versi 10 Menit Jadi Lagu Terpanjang di Puncak Hot 100</strong></h1>\r\n\r\n<p>All Too Well versi 10 menit&nbsp;Taylor Swift menjadi lagu terpanjang yang pernah masuk Billboard Hot 100.&nbsp;Hal itu ditetapkan setelah lagu tersebut berhasil menduduki posisi&nbsp;pertama tangga lagu Billboard Hot 100 di pekan debutnya.<br />\r\nTaylor Swift pun berterima kasih kepada penggemar atas capaian itu melalui cuitan pada Selasa (23/11) waktu Indonesia.<br />\r\n<br />\r\n&quot;Saya sangat bangga dengan lagu ini dan kenangan saya bersama kalian karena lagu tersebut. Kalian benar-benar memilih lagu itu dan sekarang kalian melakukan hal ini?&quot; cuit Taylor Swift.<br />\r\n<br />\r\nLagu yang dirilis pada 1969 tersebut berdurasi 8 menit, 37 detik, dan berhasil bertahan di posisi puncak Billboard Hot 100 selama empat minggu pada 1972.<br />\r\n<br />\r\nLagu All Too Well telah dikenal oleh penggemar Taylor Swift sebagai lagu paling menyayat hati sejak dirilis pada 2012, sebelum kehadiran album folklore dan evermore pada 2020.<br />\r\n<br />\r\nTaylor mengaku sedang merasa terpuruk saat membuat lagu tersebut.<br />\r\n<br />\r\n&quot;Saya seperti manusia hancur yang berjalan masuk untuk latihan, merasa berantakan tentang apa yang terjadi dalam kehidupan personal saya,&quot; kata Swift soal asal mula pembuatan lagu tersebut beberapa waktu lalu.<br />\r\n<br />\r\nLagu tersebut pun tidak pernah dirilis sebagai single. Hingga, Taylor Swift memutuskan mendengar permohonan para Swifties untuk merilis versi lengkap dan asli dari All Too Well, lagu yang berdurasi lebih dari 10 menit.<br />\r\n<br />\r\nAll Too Well versi 10 menit merupakan salah lagu yang dirilis Taylor Swift dalam album Red (Taylor&#39;s Version). Dalam album ini, terdapat sembilan lagu yang belum pernah dirilis sebelumnya di album Red.<br />\r\n<br />\r\nMulai dari Better Man, Nothing New, Babe, Massage in a Bottle, I Bet You Thing About Me, Forever Winter, Run, The Very First Night dan All Too Well (10 minute version).<br />\r\n<br />\r\nRed (Taylor&#39;s Version) menjadi album rekam ulang kedua dari Taylor Swift, menyusul album rekaman ulang pertamanya Fearless (Taylor&#39;s Version) yang dirilis pada April 2021.</p>\r\n<img src=\"https://www.kabarbintang.id/wp-content/uploads/2021/11/Taylor-Swift-Red.jpg\" style=\"border-style:solid; border-width:1px; height:200px; width:300px\">\r\n\r\n'),
(2, 'https://www.cnnindonesia.com/hiburan/20211207205552-227-731163/selena-gomez-akui-menangis-kala-dapat-nominasi-grammy-pertama', '8 Desember 2021', '<h1><strong>Selena Gomez Akui Menangis kala Dapat Nominasi Grammy Pertama</strong></h1>\r\n\r\n<p><br />\r\nSelena Gomez&nbsp;mengaku dirinya menangis macam bayi kala mengetahui mendapatkan nominasi Grammy Awards pertama kalinya berkat album berbahasa Spanyol, Revelaci&oacute;n.<br />\r\n&quot;Saya menangis macam bayi kecil. Saya amat bersemangat,&quot; kata Gomez kala wawancara dengan ET, seperti dirilis pada Selasa (7/12).<br />\r\n&quot;Saya bekerja amat keras di proyek itu, jadi itu kejutan yang menyenangkan. Saya amat bersemangat!&quot; kata Gomez.<br />\r\nGomez merilis album tersebut pada Maret lalu setelah sebelumnya merilis single emosional bertajuk De Una Vez dan lagu up-beat bertajuk Baila Conmigo pada Januari.<br />\r\nDalam Revelaci&oacute;n, Selena Gomez menulis seluruh musik di dalamnya kecuali satu lagu. Hal itu sebagai cara dirinya mengungkapkan kebanggaan akan budaya Latin yang ia miliki.<br />\r\n&quot;Ini adalah sesuatu yang ingin saya lakukan selama 10 tahun, mengerjakan proyek berbahasa Spanyol,&quot; kata Gomez kala wawancara dengan Zane Lowe dari Apple<br />\r\n&quot;Karena saya sangat, sangat bangga dengan warisan saya, dan benar-benar merasa ingin ini terjadi. Dan itu terjadi, dan saya merasa ini adalah waktu yang tepat,&quot; lanjutnya.</p>\r\n\r\n<p>&quot;Dengan semua perbedaan di dunia, ada sesuatu tentang musik Latin yang secara global membuat orang merasakan sesuatu,&quot; kata Gomez.</p>\r\n\r\n<p>Selena Gomez telah berkarier sejak remaja dan pertama kali merilis album pada 2009 bersama band the Scene yang bertajuk Kiss &amp; Tell.</p>\r\n\r\n<p>Bersama the Scene, nama Gomez makin menanjak dan mereka merilis A Year Without Rain pada 2010 dan When the Sun Goes Down pada 2011.</p>\r\n\r\n<p>Ia kemudian memulai debut solo pada 2013 melalui Stars Dance, lalu merilis Revival pada 2015 dan Rare pada 2020</p>\r\n\r\n<p>Bukan hanya Selena Gomez yang mendapatkan nominasi Grammy pertama setelah berkarier lama. Grup musik ABBA dari Swedia juga mendapatkan nominasi Grammy pertama pada tahun ini setelah berkarier sejak 1972.</p>\r\n\r\n<p>Nominasi itu datang usai mereka merilis Voyager yang menjadi album pertama dalam 40 tahun terakhir. ABBA masuk nominasi Record of The Year Grammy Awards 2022 berkat I Still Have Faith in You.</p>\r\n\r\n<img src=\"https://www.pinkvilla.com/imageresize/selena_gomez_grammys.jpeg?width=752&format=webp&t=pvorg\" style=\"border-style:solid; border-width:1px; height:200px; width:300px\">\r\n\r\n\r\n\r\n'),
(3, 'https://www.cnnindonesia.com/hiburan/20211204163830-227-729872/konser-astroworld-travis-scott-dapat-275-gugatan-dari-1250-orang', '5 Desember 2021', '<h1><strong>Konser Astroworld Travis Scott Dapat 275 Gugatan dari 1.250 Orang&quot;</strong></h1>\r\n\r\n<p>Konser Astroworld dari Travis Scott yang berujung tragedi kericuhan dan menewaskan 10 orang serta ratusan orang luka-luka kini telah menghasilkan 275 gugatan hukum dari 1.250 orang.</p>\r\n\r\n<p>Bila ditambah dengan calon penggugat, seperti diberitakan Variety pada Jumat (3/12) waktu AS, penggugat bisa mencapai 2.500 orang.</p>\r\n\r\n<p>Ratusan gugatan itu pun sebagian besar seragam, yaitu menuding Travis Scott dan penyelenggara konser serta pihak-pihak yang terkait lalai sehingga tragedi itu bisa terjadi.</p>\r\n\r\n<p>Atas ratusan gugatan tersebut, pengacara kedua belah pihak mengajukan mosi untuk menggabungkan kasus-kasus tersebut di hadapan hakim tunggal dalam rangka praperadilan.</p>\r\n\r\n<p>Menurut pengajuan, seluruh terdakwa utama telah menyetujui langkah tersebut.</p>\r\n\r\n<p>&quot;Hampir semua gugatan berisi pernyataan yang sama atau fakta umum yang sama terkait dugaan kelalaian,&quot; tulis pengacara kedua belah pihak dalam pernyataan mereka.</p>\r\n\r\n<p>&quot;Seperti gagal dalam penegakkan keamanan dan keselamatan, pengendalian massa dan langkah respons kedaruratan, dan kegagalan menyediakan keamanan, pengawasan, pelatihan, dan perawatan yang memadai,&quot; lanjut mereka.<br />\r\nRatusan gugatan ini belum termasuk dari sejumlah gugatan yang mungkin akan muncul di masa depan. Meski kasus ini tidak secara formal disatukan menjadi satu kasus, mobi dan penemuan pra-persidangan dipadatkan di bawah satu hakim demi efisiensi proses.</p>\r\n\r\n<p><br />\r\nTravis Scott diketahui tampil dalam konsernya yang bertajuk Astroworld Festival di NRG Park, Houston, pada 5 November lalu.<br />\r\nTak lama setelah dirinya naik panggung, kerumunan penonton berebut maju ke depan sehingga menyebabkan desak-desakkan dan saling terhimpit. Bahkan banyak penonton terinjak-injak di tanah.<br />\r\nTravis Scott sempat menghentikan sebentar konser tersebut beberapa kali, terutama ketika sebuah ambulans datang menuju kerumunan.<br />\r\nNamun konser tersebut tetap dilanjutkan hingga nyaris sejam, meski ada permintaan dari sejumlah penonton untuk menghentikan acara tersebut.<br />\r\nKonser itu pun memakan 10 korban jiwa. Mereka yang tewas itu termasuk Ezra Blount yang berusia sembilan tahun, seorang remaja laki-laki berusia 14 tahun, dan remaja perempuan berusia 16 tahun.<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn1-production-images-kly.akamaized.net/7o3dJHzphKURuc5nkyGmE5Z7uSc=/469x260/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/3624933/original/078889300_1636208071-AP21310132845009.jpg\" style=\"height:200px; width:361px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `proweb`
--

CREATE TABLE `proweb` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proweb`
--

INSERT INTO `proweb` (`id`, `username`, `password`, `nama`, `email`, `level`) VALUES
(4, 'penielstp4', 'peniell', 'siapa y', 'okeeh@gmail.com', 0),
(5, 'penielstp4', 'peniell', 'siapa y', 'ya@gmail.com', 0),
(7, 'penielstp4', 'peniell', 'semuanya', 'benar@gmail.com', 0),
(8, 'penielstp4', 'peniell', 'siapa y', 'izowhbeard@gmail.com', 0),
(10, 'penielstp4', 'peniell', 'siapa y', 'penielsayang@gmail.com', 0),
(11, 'penielstp4', 'peniell', 'siapa y', 'penielsayang@gmail.com', 0),
(12, 'penielstp4', 'peniell', 'siapa y', 'penielsayang@gmail.com', 0),
(13, 'penielstp4', 'peniell', 'siapa y', 'penielsayang@gmail.com', 0),
(14, 'penielstp4', 'peniell', 'siapa y', 'penielsayang@gmail.com', 0),
(15, 'penielstp4', 'peniell', 'siapa y', 'penielsayang@gmail.com', 0),
(16, 'penielstp4', 'peniell', 'siapa y', 'penielsayang@gmail.com', 0),
(17, 'penielstp4', 'peniell', 'siapa y', 'penielsayang@gmail.com', 0),
(18, 'penielstp4', 'peniell', 'siapa y', 'penielsayang@gmail.com', 0),
(19, 'penielstp4', 'peniell', 'siapa y', 'penielsayang@gmail.com', 0),
(20, 'penielstp4', 'peniell', 'siapa y', 'penielsayang@gmail.com', 0),
(21, 'febrin-TI', 'LC8n0ae#', 'Febrin Samuel Sitorus', 'febrin@contoh.com', 2),
(22, 'sayed-TI', 'I0NRGetE', 'Sayed Rezha', 'sayed@contoh.com', 2),
(23, 'bora-TI', 'ZNa7BRmQ', 'Bora Sejati Siboro', 'bora@contoh.com', 2),
(24, 'denaya-TI', 'pnGGprZC', 'Denaya Pramudya', 'denaya@contoh.com', 2),
(25, 'jogiana-TI', 'XYcepxdW', 'Jogiana Simangunsong', 'jogiana@contoh.com', 2),
(26, 'okta-TI', 'Y8cSYu$e', 'Okta Gilang Aljaffarsyah', 'okta@contoh.com', 2),
(27, 'arafah-TI', 'tIoZ0SR7', 'Arafah Nur Ihza', 'arafah@contoh.com', 2),
(28, 'nanda-TI', 'dr#MTYWe', 'Nanda Amelia', 'nanda@contoh.com', 2),
(29, 'ineztri-TI', 'aL7vBOdq', 'Ineztri Situmeang', 'ineztri@contoh.com', 2),
(30, 'meizar-TI', 'yDjG3T68', 'Meizar Fachriza', 'meizar@contoh.com', 2),
(31, 'indah-TI', 'opahD$PF', 'Indah Mariana Nainggolan', 'indah@contoh.com', 2),
(32, 'jefry-TI', 'HjB@yQCA', 'Jefry Lianto', 'jefry@contoh.com', 2),
(33, 'annisa-TI', 'l@6N0Rdf', 'Annisa Putri Daulay', 'annisa@contoh.com', 2),
(34, 'anggia-TI', 's#pxwKDJ', 'Anggia Sari Siregar', 'anggia@contoh.com', 2),
(35, 'bella-TI', 'zDmr@3bb', 'Bella Fransiska Rejeki Simamora', 'bella@contoh.com', 2),
(36, 'nanda-TI', '92ogMg5h', 'Nanda Ambiya', 'nanda@contoh.com', 2),
(37, 'putri-TI', 'Ajj6bsIX', 'Putri Laura Latersia Br L Tobing', 'putri@contoh.com', 2),
(38, 'sri-TI', 'M82EXgW*', 'Sri Wahyuni', 'sri@contoh.com', 2),
(39, 'tritia-TI', 'f5LvsZCv', 'Tritia Mutiara', 'tritia@contoh.com', 2),
(40, 'yohana-TI', 'jeR#q@SM', 'Yohana Fransisca', 'yohana@contoh.com', 0),
(41, 'haiqal-TI', 'GIwNoLwG', 'Haiqal Rizky Ramadhan', 'haiqal@contoh.com', 2),
(42, 'faiz-TI', '9OfDAXDd', 'Faiz Ahmad Asy-Syafiq', 'faiz@contoh.com', 2),
(43, 'willioms-TI', 'fsAVUK2p', 'Willioms Sanjaya', 'willioms@contoh.com', 2),
(44, 'emir-TI', 'h2W*bJvP', 'Emir Hazam Fahmi Harahap', 'emir@contoh.com', 2),
(45, 'mhd.-TI', 'pq@PxJVT', 'Mhd. Arsya Fikri', 'mhd.@contoh.com', 2),
(46, 'rizka-TI', 'IEze8#uM', 'Rizka Annisa Hidayat', 'rizka@contoh.com', 2),
(47, 'hendry-TI', 'b2g@*@5*', 'Hendry Winata', 'hendry@contoh.com', 2),
(48, 'faisal-TI', 'TGu020t0', 'Faisal Lazuardy M', 'faisal@contoh.com', 2),
(49, 'katherin-TI', 'hPcYZ1tW', 'Katherin Anna Patherisia Lesnussa', 'katherin@contoh.com', 2),
(50, 'vincent-TI', 'WuMPYYvi', 'Vincent Sirait', 'vincent@contoh.com', 2),
(51, 'timothy-TI', 'IKimqxTr', 'Timothy Agalliasis', 'timothy@contoh.com', 2),
(52, 'anri-TI', 'yB*qcjfW', 'Anri Anugerah Marpaung', 'anri@contoh.com', 2),
(53, 'cecilia-TI', 'Z$*skW0n', 'Cecilia Vania Putri', 'cecilia@contoh.com', 2),
(54, 'arief-TI', 'JKpPyql8', 'Arief Lindung Nugraha Rg', 'arief@contoh.com', 2),
(55, 'yesaya-TI', 'ZMssRHJy', 'Yesaya Alehandro Silalahi', 'yesaya@contoh.com', 2),
(56, 'nhakchok-TI', '*ynY5C71', 'Nhakchok Gemilang Sibarani', 'nhakchok@contoh.com', 2),
(57, 'sity-TI', 'P44ZbC#0', 'Sity Fadia Al Haya Maswin', 'sity@contoh.com', 2),
(58, 'ridwan-TI', 'X9dgIE7I', 'Ridwan Harta', 'ridwan@contoh.com', 2),
(59, 'irsyad-TI', 'dBRQ40FR', 'Irsyad Fauzi Hadengganan Munthe', 'irsyad@contoh.com', 2),
(60, 'muhammad-TI', '3MwzwcwG', 'Muhammad Dayu Furrahman Lubis', 'muhammad@contoh.com', 2),
(61, 'dolok-TI', 'Q1$8zLgW', 'Dolok Marsaong Asi Malau', 'dolok@contoh.com', 2),
(62, 'christopher-TI', 'O6UWrrp5', 'Christopher Imanuel Manurung', 'christopher@contoh.com', 2),
(63, 'huzaifah-TI', '5e83yr@c', 'Huzaifah Muhammad Lais Lubis', 'huzaifah@contoh.com', 2),
(64, 'kevin-TI', 'ymkPUMD9', 'Kevin Patiogi Manullang', 'kevin@contoh.com', 2),
(65, 'ricky-TI', 'MWPUE#XR', 'Ricky Martin Abdi Negara Purba', 'ricky@contoh.com', 2),
(66, 'faris-TI', 'j9C#gxoM', 'Faris Al Falaq', 'faris@contoh.com', 2),
(67, 'barik-TI', 'k48Rh7Wn', 'Barik Angkasa Ritonga', 'barik@contoh.com', 2),
(68, 'jimy-TI', '4kJMpRBB', 'Jimy March Go Wijaya Saragih', 'jimy@contoh.com', 2),
(69, 'fadhil-TI', '2ZJVbV06', 'Fadhil Zuhairsyah', 'fadhil@contoh.com', 2),
(70, 'fahrul-TI', 'HrU3o#*A', 'Fahrul Rozy Ramadhan', 'fahrul@contoh.com', 2),
(71, 'marcho-TI', '#XsdRzbT', 'Marcho Prayogi Sembiring', 'marcho@contoh.com', 2),
(72, 'utari-TI', 'Aqei2KqR', 'Utari Anggita', 'utari@contoh.com', 2),
(73, 'milpa-TI', '7AJHnTzP', 'Milpa Wahyuni Siregar', 'milpa@contoh.com', 2),
(74, 'dinda-TI', 'DCK4ng#5', 'Dinda Julia Putri', 'dinda@contoh.com', 2),
(75, 'dwiki-TI', 'oJOSnlyD', 'Dwiki Affandi', 'dwiki@contoh.com', 2),
(76, 'margaretha-TI', '@4Uy4SD*', 'Margaretha Gok Asi Naibaho', 'margaretha@contoh.com', 2),
(77, 'adela-TI', 'AC*o33at', 'Adela Nopriana Purba', 'adela@contoh.com', 2),
(78, 'dian-TI', 'mcaOpluh', 'Dian Verina', 'dian@contoh.com', 2),
(79, 'fauzan-TI', 'rn7t9XsV', 'Fauzan Azhari', 'fauzan@contoh.com', 2),
(80, 'aidha-TI', 'PGJx#AZy', 'Aidha Safitri Harahap', 'aidha@contoh.com', 2),
(81, 'dhea-TI', '$N3kkYBz', 'Dhea Novianty Sitompul', 'dhea@contoh.com', 2),
(82, 'meina-TI', 'wjuKLkba', 'Meina Lisa', 'meina@contoh.com', 2),
(83, 'fenni-TI', 'K1HRZXBr', 'Fenni Kristiani Sarumaha', 'fenni@contoh.com', 2),
(84, 'prisicilla-TI', 'XoYxtrul', 'Prisicilla Frederica Br Purba', 'prisicilla@contoh.com', 2),
(85, 'hamdi-TI', 'DpObvJ@T', 'Hamdi Syahputra', 'hamdi@contoh.com', 2),
(86, 'fildzah-TI', 'lI@arhJt', 'Fildzah Alifia Lubis', 'fildzah@contoh.com', 2),
(87, 'alya-TI', 'sxnL7IZq', 'Alya Syafitri', 'alya@contoh.com', 2),
(88, 'muhammad-TI', 'MMM9ASFE', 'Muhammad Zikri Ihsan', 'muhammad@contoh.com', 2),
(89, 'meily-TI', '2IHkV$sB', 'Meily Benedicta Harefa', 'meily@contoh.com', 2),
(90, 'davin-TI', '31tQZo$4', 'Davin Guntur Habibi', 'davin@contoh.com', 2),
(91, 'Michael-TI', 'fsE*Djs8', 'Michael', 'Michael@contoh.com', 2),
(92, 'jason-TI', 'PmPj*BSS', 'Jason Surya Faylim', 'jason@contoh.com', 2),
(93, 'geylfedra-TI', 'C7lianXs', 'Geylfedra Matthew Panggabean', 'geylfedra@contoh.com', 2),
(94, 'vania-TI', 'EmVFcJQl', 'Vania Miranda Emmanuella Br. Siahaan', 'vania@contoh.com', 2),
(95, 'garuda-TI', 'MWeVOJAT', 'Garuda P. Purba', 'garuda@contoh.com', 2),
(96, 'dini-TI', 'eMUxyJE1', 'Dini Mustika', 'dini@contoh.com', 2),
(97, 'brian-TI', 'ibNgDed5', 'Brian Tarihoran', 'brian@contoh.com', 2),
(98, 'sarah-TI', 'Va5fNmgG', 'Sarah Theodora Sinurat', 'sarah@contoh.com', 2),
(99, 'muhammad-TI', 'VrWnl@E7', 'Muhammad Saddam Zikri Dalimunthe', 'muhammad@contoh.com', 2),
(100, 'Felipe-TI', '6RENTo78', 'Felipe', 'Felipe@contoh.com', 2),
(101, 'Christina-TI', 'hhkB9yiv', 'Christina', 'Christina@contoh.com', 2),
(102, 'samuel-TI', '6mA2RjG5', 'Samuel Parlindungan Malau', 'samuel@contoh.com', 2),
(103, 'tomy-TI', 'uNbG1fQl', 'Tomy Risky Parlindungan Tambunan', 'tomy@contoh.com', 2),
(104, 'tri-TI', 'WTo0aPmu', 'Tri Lot Vekry Ananta S', 'tri@contoh.com', 2),
(105, 'fachri-TI', 'g@#tCeKl', 'Fachri Adrian', 'fachri@contoh.com', 2),
(106, 'ratu-TI', 'Jou$@QqX', 'Ratu Crismas Silitonga', 'ratu@contoh.com', 2),
(107, 'naufal-TI', 'LMhFN0HC', 'Naufal Baginda Zuhdii Siregar', 'naufal@contoh.com', 2),
(108, 'rafif-TI', 'R$spKwVr', 'Rafif Pratama', 'rafif@contoh.com', 2),
(109, 'sebastian-TI', 'ATVTla3P', 'Sebastian Belmero Sitorus', 'sebastian@contoh.com', 2),
(110, 'm-TI', 'C3@MyQnG', 'M Adib Mangaraja Syahna', 'm@contoh.com', 2),
(111, 'brillian-TI', 'rRpNwggt', 'Brillian Jonathan Tantri', 'brillian@contoh.com', 2),
(112, 'Vincent-TI', '49bC0ibb', 'Vincent', 'Vincent@contoh.com', 2),
(113, 'nada-TI', 'SD$r8Wzy', 'Nada Salsabila', 'nada@contoh.com', 2),
(114, 'jhuan-TI', 'XRCX38RA', 'Jhuan Avryganda Sitorus', 'jhuan@contoh.com', 2),
(115, 'tengku-TI', 'Zl#7HI8h', 'Tengku Muhammad Javier Albar', 'tengku@contoh.com', 2),
(116, 'yohana-TI', '1qdp$0di', 'Yohana M Beatrice Panjaitan', 'yohana@contoh.com', 2),
(117, 'hilda-TI', 'ck8vR9MV', 'Hilda Safira', 'hilda@contoh.com', 2),
(118, 'daniel-TI', 'f43fdI39', 'Daniel Situmeang', 'daniel@contoh.com', 2),
(119, 'anggi-TI', 'rarOkhUK', 'Anggi Yohanes Pardede', 'anggi@contoh.com', 2),
(120, 'yosepin-TI', 'Jf4R6Kzl', 'Yosepin Kawalta Ginting', 'yosepin@contoh.com', 2),
(121, 'michael-TI', '1i9TAkwd', 'Michael Yafda Marbun', 'michael@contoh.com', 2),
(122, 'philip-TI', 'ZqcQScDs', 'Philip Halomoan Simamora', 'philip@contoh.com', 2),
(123, 'masayu-TI', '0i@mJP@8', 'Masayu Fany Shapura', 'masayu@contoh.com', 2),
(124, 'cici-TI', 'Qyl0F9cU', 'Cici Desi Margaretha', 'cici@contoh.com', 2),
(125, 'zen-TI', 'FSs9Nk9H', 'Zen Petrix Diaz Sentana Tanto', 'zen@contoh.com', 2),
(126, 'nurul-TI', 'sN37FD5u', 'Nurul Atiqah Siregar', 'nurul@contoh.com', 2),
(127, 'muhammad-TI', 'bLeYMNcl', 'Muhammad Syahrizal', 'muhammad@contoh.com', 2),
(128, 'farhan-TI', 'lADP#*Yd', 'Farhan Ahmad Pangistu', 'farhan@contoh.com', 2),
(129, 'sindy-TI', 'OHKAyIfP', 'Sindy Ariani', 'sindy@contoh.com', 2),
(130, 'godblessus-TI', 'm48*aD2M', 'Godblessus Simaremare', 'godblessus@contoh.com', 2),
(131, 'sheren-TI', '75Y7eEI6', 'Sheren Alvionita S', 'sheren@contoh.com', 2),
(132, 'tazrian-TI', '4GYMhtIv', 'Tazrian Husna', 'tazrian@contoh.com', 2),
(133, 'amatul-TI', '2Zt#749T', 'Amatul Noor Damanik', 'amatul@contoh.com', 2),
(134, 'm.-TI', 'uP0WTfLh', 'M. Firdaus Zamzami', 'm.@contoh.com', 2),
(135, 'legi-TI', 'L5WHmf$J', 'Legi Maria Silaban', 'legi@contoh.com', 2),
(136, 'lira-TI', '$SKsySw6', 'Lira Savina', 'lira@contoh.com', 2),
(137, 'intan-TI', 'wMHAY4SC', 'Intan Juwita Manurung', 'intan@contoh.com', 2),
(138, 'riyadh-TI', '*EMPSznY', 'Riyadh Abdur Razak Ridwan', 'riyadh@contoh.com', 2),
(139, 'm.-TI', '84AqWBIX', 'M. Mahdan Lutfiandy H', 'm.@contoh.com', 2),
(140, 'josua-TI', 'Zj$puQjb', 'Josua Ronaldo Pandiangan', 'josua@contoh.com', 2),
(141, 'suryana-TI', 'g7oGYKIV', 'Suryana Meissarah zaini', 'suryana@contoh.com', 2),
(142, 'chrismario-TI', 'mULhSy5N', 'Chrismario Linear', 'chrismario@contoh.com', 2),
(143, 'said-TI', 's0y7SFjv', 'Said Farhan', 'said@contoh.com', 2),
(144, 'muhammad-TI', 'Dyp25rWt', 'Muhammad Taufiq Purba', 'muhammad@contoh.com', 2),
(145, 'm.-TI', 'jywYLh$y', 'M. Ruchyat Siregar', 'm.@contoh.com', 2),
(146, 'andrea-TI', 'vtEC4pEo', 'Andrea Vicalina', 'andrea@contoh.com', 2),
(147, 'randi-TI', 'sz*8gqJb', 'Randi Qodri Pulungan', 'randi@contoh.com', 2),
(148, 'wanda-TI', 'X7CojUe9', 'Wanda Khalishah', 'wanda@contoh.com', 2),
(149, 'bobby-TI', '#f#hCgCL', 'Bobby Berkat Ezra Zebua', 'bobby@contoh.com', 2),
(150, 'monang-TI', '0$LmBh5c', 'Monang Limbong', 'monang@contoh.com', 2),
(151, 'claudia-TI', 'tAKFucN7', 'Claudia Sabrina Wilhelmina S', 'claudia@contoh.com', 2),
(152, 'shirleen-TI', 'pUBReZOb', 'Shirleen Shohan', 'shirleen@contoh.com', 2),
(153, 'brian-TI', 'PJEYqlmL', 'Brian Simanjuntak', 'brian@contoh.com', 2),
(154, 'Franklin-TI', 'xzHgeka4', 'Franklin', 'Franklin@contoh.com', 2),
(155, 'iqbal-TI', 'Cn9iJYOj', 'Iqbal Fakhriza', 'iqbal@contoh.com', 2),
(156, 'erikson-TI', 'SF6vfyvb', 'Erikson Andre', 'erikson@contoh.com', 2),
(157, 'grace-TI', 'zxX6dg0H', 'Grace Ogestin Pasaribu', 'grace@contoh.com', 2),
(158, 'kesia-TI', 'b#W9UucE', 'Kesia Ruth Sandra Purba', 'kesia@contoh.com', 2),
(159, 'aulia-TI', '8LP4duR5', 'Aulia Rahman Patomuan S', 'aulia@contoh.com', 2),
(160, 'andi-TI', '8iGkt4u#', 'Andi Farras Thariq ', 'andi@contoh.com', 2),
(161, 'sinthia-TI', 'EuvvNiaj', 'Sinthia Audrey', 'sinthia@contoh.com', 2),
(162, 'karvin-TI', '11GLBSPl', 'Karvin Halim', 'karvin@contoh.com', 2),
(163, 'annisa-TI', 'r20Ti4@F', 'Annisa Amaliah Nasution', 'annisa@contoh.com', 2),
(164, 'dafa-TI', 'fg@8ZPcl', 'Dafa Al Fitrah', 'dafa@contoh.com', 2),
(165, 'windy-TI', 'RY5n#v4a', 'Windy Artika', 'windy@contoh.com', 2),
(166, 'rizky-TI', 'ytDpnG3p', 'Rizky Alwi Sebayang', 'rizky@contoh.com', 2),
(167, 'gideon-TI', 'Ti75DbeN', 'Gideon Christ Gilberio G', 'gideon@contoh.com', 2),
(168, 'grace-TI', 'xqPvkgJl', 'Grace Patricia Siregar', 'grace@contoh.com', 2),
(169, 'sayid-TI', 'Zj7rbpn*', 'Sayid Farhan', 'sayid@contoh.com', 2),
(170, 'devi-TI', '@aj21VfY', 'Devi Aprilia', 'devi@contoh.com', 2),
(171, 'janstine-TI', 'qVp5Wlh4', 'Janstine Firstiandy', 'janstine@contoh.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sport`
--

CREATE TABLE `sport` (
  `id` int(100) NOT NULL,
  `sumber` varchar(400) NOT NULL,
  `tanggal` text NOT NULL,
  `konten` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sport`
--

INSERT INTO `sport` (`id`, `sumber`, `tanggal`, `konten`) VALUES
(1, 'KompasTV', '12 November 2021', '<h1><strong>Alasan Indonesia Mundur dari Kejuaraan Dunia Bulutangkis 2021</strong></h1>\r\n\r\n<p>Tim bulutangkis Indonesia memutuskan mundur dari BWF World Championship 2021 atau&nbsp;Kejuaraan Dunia 2021 karena tidak mau mengambil risiko di tengah penyebaran varian baru virus Covid-19 Omicron.<br />\r\nKetua Umum PP PBSI&nbsp;Agung Firman Sampurna telah membuat keputusan Indonesia mundur dari Kejuaraan Dunia 2021 yang akan berlangsung di Huelva, Spanyol, 12-19 Desember. Keputusan itu diambil setelah mendapat masukan dari pengurus, pelatih, dan Kabid Binpres.<br />\r\n<br />\r\nPenyebaran varian baru virus Covid-19 Omicron yang tidak menentu menjadi alasan utama. PBSI memutuskan mundur dari Kejuaraan Dunia 2021 demi menjaga kesehatan dan keselamatan para atlet.<br />\r\n<br />\r\n&quot;Keputusan menarik diri tim bulutangkis Indonesia dari Kejuaraan Dunia ini juga sudah disetujui oleh Bapak Ketua Umum PP PBSI Agung Firman Sampurna,&quot; ujar Ketua Harian PP PBSI Alex Tirta dalam rilis resmi.<br />\r\n<br />\r\nKepala Bidang Pembinaan dan Prestasi PP PBSI, Rionny Mainaky, juga memberikan pernyataan serupa. Rionny mengatakan pihaknya tidak mau mengambil risiko dengan mengirim pemain ke Spanyol di tengah penyebaran varian baru virus Covid-19 Omicron.<br />\r\n<br />\r\n&quot;Penyebaran virus Omicron yang cepat sehingga perubahan protokol kesehatan yang tidak menentu membuat kami memutuskan untuk mundur dari Kejuaraan Dunia 2021. Kami tidak mau mengambil risiko,&quot; ucapnya.<br />\r\n<br />\r\n&quot;Keselamatan dan kesehatan atlet lebih utama. Para pemain juga sudah kami ajak berdiskusi dan mereka setuju untuk menarik diri dari Kejuaraan Dunia.&quot;<br />\r\n<br />\r\nSemula PBSI dijadwalkan mengirim 13 wakil ke Kejuaraan Dunia 2021. Di tunggal putra ada Anthony Sinisuka Ginting, Jonatan Christie, Shesar Hiren Rhustavito, tunggal putri Gregoria Mariska Tunjung dan Ruselli Hartawan.<br />\r\n<br />\r\nSelanjutnya ada ganda putra Marcus Fernaldi Gideon/Kevin Sanjaya Sukamuljo, Hendra Setiawan/Mohammad Ahsan, Fajar Alfian/Muh. Rian Ardianto, Leo Rolly Carnando/Daniel Marthin, ganda putri Greysia Polii/Apriyani Rahayu, serta ganda campuran Praveen Jordan/Melati Daeva Oktavianti, Rinov Rivaldy/Pitha Haningtyas Mentari, dan Rehan Naufal Kusharjanto/Lisa Ayu Kusumawati.</p>\r\n\r\n<p><img alt=\"\" src=\"https://photo.jpnn.com/arsip/watermark/2021/05/28/11-atlet-bulu-tangkis-indonesia-yang-berhak-tampil-di-olimpi-49.jpg\" style=\"height:200px; width:320px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(2, 'https://www.cnnindonesia.com/olahraga/20211212022509-142-732898/hasil-liga-inggris-penalti-ronaldo-menangkan-man-utd', '12 Desember 2021', '<h1><strong>Hasil Liga Inggris: Penalti Ronaldo Menangkan Manchester United</strong></h1>\r\n\r\n<p><br />\r\nManchester United&nbsp;meraih kemenangan tipis 1-0 atas Norwich City lewat gol penalti Cristiano Ronaldo&nbsp;pada pekan ke-16&nbsp;Liga Inggris di Carrow Road, Minggu (12/12) dini hari WIB.<br />\r\nHasil ini membuat Man Utd kini menempati posisi kelima klasemen. Man Utd mengoleksi 27 poin atau hanya kalah selisih gol dari posisi keempat yang ditempati West Ham United.<br />\r\n<br />\r\nMan United mendapatkan peluang pertama untuk mencetak gol pada menit ke-14. Tendangan bebas Alex Telles yang mengenai pagar hidup masih mampu diselamatkan kiper Norwich, Tim Krul.<br />\r\n<br />\r\nSelepas tekanan itu Man Utd tidak lagi jadi tim yang dominan. Norwich yang bermain di hadapan publik sendiri tampil percaya diri meladeni Man Utd yang unggul secara kualitas individu.<br />\r\nMan Utd baru kembali mendapatkan peluang di pertengahan babak pertama. Diogo Dalot yang naik membantu serangan melepaskan tembakan kaki kiri dari dalam kotak penalti yang masih bisa dijinakkan Krul.</p>\r\n\r\n<p><br />\r\nJelang akhir babak pertama giliran Harry Maguire yang punya peluang menempatkan nama di papan skor. Namun, sundulan Harry Maguire yang mengarah ke gawang masih bisa digagalkan Krul yang bermain apik di bawah mistar Norwich.<br />\r\nDi babak kedua, De Gea membuat penyelamatan gemilang untuk menjaga gawang Man Utd aman dari kebobolan. Kiper asal Spanyol itu mampu mengagalkan peluang emas yang didapatkan Teemu Pukki.</p>\r\n\r\n<p><br />\r\nPada menit ke-74, Man Utd mendapatkan hadiah penalti setelah Max Aarons dianggap wasit melanggar Ronaldo di kotak penalti. Ronaldo yang maju sebagai eksekutor menjalankan tugas dengan sempurna untuk membuat skor jadi 1-0.<br />\r\nTiga menit berselang, Norwich memiliki peluang untuk menyamakan kedudukan. Namun, sundulan Ozan Kabak yang mengarah ke pojok kanan gawang bisa digagalkan secara gemilang oleh De Gea.</p>\r\n\r\n<p><br />\r\nJelang akhir babak kedua, Ronaldo membuang peluang emas untuk memperbesar skor jadi 2-0. Sontekan Ronaldo dari jarak dekat memanfaatkan umpan mendatar Marcus Rashford justru melambung di atas mistar gawang The Canaries.<br />\r\nSetelah itu tidak ada gol tambahan yang tercipta. Skor 1-0 untuk kemenangan Man Utd atas Norwich menjadi akhir dari pertandingan.<br />\r\nSusunan pemain<br />\r\nNorwich (4-3-2-1): Tim Krul; Max Aarons, Grant Hanley, Ozan Kabak, Dimitrios Giannoulis; Lukas Rupp, Billy Gilmour, Kenny McLean; Joshua Sargent, Przemyslaw Placheta; Teemu Pukki<br />\r\nManchester United (4-2-2-2): David De Gea; Diogo Dalot, Victor Lindelof, Harry Maguire, Alex Telles; Scott McTominay, Fred, Jadon Sancho, Bruno Fernandes; Cristiano Ronaldo, Marcus Rashford.</p>\r\n<br>\r\n<img src=\"https://eu-images.contentstack.com/v3/assets/bltcc7a7ffd2fbf71f5/bltaf9b1db38fc608e9/6170b02bc6af8f1106721c5d/a4955e61111c3e5721a1c8648fd4a57f0a9bc228.jpg?auto=webp&fit=crop&format=jpg&quality=100\" style=\"border-style:solid; border-width:1px; height:200px; width:300px\">\r\n\r\n'),
(3, 'https://www.cnnindonesia.com/olahraga/20211209144752-156-731994/toprak-terancam-kesulitan-pertahankan-gelar-juara-wsbk', '10 Desember 2021', '<h1><strong>Toprak Terancam Kesulitan Pertahankan Gelar Juara WSBK</strong></h1>\r\n\r\n<p>Toprak Razgatlioglu&nbsp;terancam kesulitan mempertahankan gelar juara Superbike pada WSBK 2022&nbsp;setelah Yamaha tidak mendapatkan dukungan dari pihak Jepang.<br />\r\nTim Superbike Yamaha meminta peningkatan pada sejumlah aspek kepada markas pusat di Iwata, Jepang, guna menambah performa pada musim 2022.<br />\r\n<br />\r\nAkan tetapi, dikutip dari Corsedimoto, pihak Iwata memilih fokus pada MotoGP guna mempertahankan gelar juara yang diraih Fabio Quartararo ketimbang pengembangan di Superbike.</p>\r\n\r\n<p>&quot;Kritik tentu tidak datang dari pembalap kami,&quot; ujar Manajer Tim Yamaha di Superbike Paul Denning.<br />\r\n<br />\r\n&quot;Tujuan Yamaha adalah MotoGP, kelas yang menggunakan teknologi terbaik. Kejuaraan Dunia Superbike adalah kejuaraan di bawah [pengawasan] Yamaha Eropa,&quot; ucap Denning menambahkan.<br />\r\nTanpa peningkatan signifikan pada musim depan, Yamaha bisa mendapat ancaman serius dari Kawasaki dan BWM. Kawasaki dan BMW merupakan pabrikan yang sepenuhnya fokus pada Superbike.<br />\r\n<br />\r\nSementara itu, seperti Yamaha, markas pusat Ducati di Italia dan Honda di Jepang juga memilih memprioritaskan target di MotoGP.<br />\r\nKendati demikian, Paul Dennin patut bersyukur dengan kerja keras Yamaha Eropa yang bermarkas di Milan, Italia.<br />\r\n<br />\r\n&quot;Orang-orang dari Milan melakukan pekerjaan bagus dengan pengembangan ini. Terima kasih juga atas dukungan dari Jepang,&quot; kata Denning.<br />\r\n<br />\r\nPada kesempatan itu Denning tidak saja menyoroti soal dukungan Jepang kepada tim Superbike Yamaha, tetapi juga pembalap dari Negeri Matahari Terbit itu, Kohta Nozane, yang baru bergabung pada musim 2021.<br />\r\n<br />\r\n&quot;Yamaha di Jepang terlibat. Nozane sudah pindah ke sini, dia harus banyak belajar guna mendapatkan pijakan di sini. Dia harus memahami motor dan ban Pirelli,&quot; tutur Denning.</p>\r\n\r\n<p><img alt=\"\" src=\"https://imgx.gridoto.com/crop/236x162:3539x2398/750x500/photo/2019/06/19/3413722931.jpg\" style=\"border-style:solid; border-width:1px; height:200px; width:300px\" /><br />\r\n<br />\r\n<br />\r\n<br />\r\n&nbsp;</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_komentar`
--

CREATE TABLE `tbl_komentar` (
  `komentar_id` int(11) NOT NULL,
  `parent_komentar_id` int(11) NOT NULL,
  `komentar` varchar(200) CHARACTER SET utf8 NOT NULL,
  `nama_pengirim` varchar(40) CHARACTER SET utf8 NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_komentar`
--

INSERT INTO `tbl_komentar` (`komentar_id`, `parent_komentar_id`, `komentar`, `nama_pengirim`, `date`) VALUES
(40, 0, 'haloo', 'amel', '2021-12-16 09:48:42'),
(41, 40, 'hi', 'amell', '2021-12-16 09:49:02'),
(42, 0, 'test', 'jauza', '2021-12-17 09:53:18'),
(43, 42, 'testtt', 'jauza', '2021-12-17 09:53:29');

-- --------------------------------------------------------

--
-- Table structure for table `tubes`
--

CREATE TABLE `tubes` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `code` int(6) NOT NULL,
  `status` varchar(11) NOT NULL,
  `level` int(11) NOT NULL,
  `komentar` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tubes`
--

INSERT INTO `tubes` (`id`, `email`, `name`, `password`, `code`, `status`, `level`, `komentar`) VALUES
(1, 'penielsayang@gmail.com', 'peniel', 'penruto345', 0, '', 1, ''),
(2, 'penielsayang@gmail.com', 'semuanya', '919051b63e868edad361b2d943e2c45b', 0, '', 1, ''),
(3, 'izowhbeard@gmail.com', 'siapa y', 'b93939873fd4923043b9dec975811f66', 0, '', 0, ''),
(4, 'uzieluciha@Gmail.com', 'peniel', '9a23da5aa8837923fa2bcb5a648cc59b', 0, '', 1, ''),
(9, 'okeeh@gmail.com', 'halo', 'peniel1234', 0, 'verified', 1, ''),
(18, 'teman@gmail.com', 'benar22', 'penruto345', 0, 'verified', 1, ''),
(23, 'rizqiiameliaa@students.usu.ac.id', 'ameliaaa', 'ameliaaaa', 0, 'verified', 2, ''),
(31, 'rizqiiameliaa@gmail.com', 'amelamel', '$2y$10$mF.Dr8M709B4gMnurAP68eB/6/UkZ7c4dqR3fW9HB7rx42StYwi6m', 0, 'verified', 0, ''),
(32, 'jauza676767aa@gmail.com', 'jauza', '$2y$10$aDPDMGG9/gE26LUWTeRANuix21w1rhtMk6EIGG48Be6wM0LHq2Enu', 0, 'verified', 2, ''),
(33, 'hafizhrayhan56@gmail.com', 'hafizh', '$2y$10$lt9sLolM8fMPd7Z/mxLDjee7cNE20EOH95P3uuTN20J917qCCH4xC', 0, 'verified', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `tubess`
--

CREATE TABLE `tubess` (
  `id` int(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `code` int(6) NOT NULL,
  `status` varchar(100) NOT NULL,
  `level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tubess`
--

INSERT INTO `tubess` (`id`, `email`, `name`, `password`, `code`, `status`, `level`) VALUES
(1, 'hafizhrayhan56@gmail.com', 'hafizh', '$2y$10$lt9sLolM8fMPd7Z/mxLDjee7cNE20EOH95P3uuTN20J917qCCH4xC', 0, 'verified', 2),
(2, 'jauza676767aa@gmail.com', 'jauza', '$2y$10$aDPDMGG9/gE26LUWTeRANuix21w1rhtMk6EIGG48Be6wM0LHq2Enu', 0, 'verified', 2),
(3, 'rizqiiameliaa@gmail.com', 'amelamel', '$2y$10$IT/GEZ9TdmMfj1ubYzob9.rk0YNrBTFqxYUpuM27f3lu5P5Fjr6U6', 0, 'verified', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `benar`
--
ALTER TABLE `benar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first`
--
ALTER TABLE `first`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konten`
--
ALTER TABLE `konten`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lgin`
--
ALTER TABLE `lgin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `music`
--
ALTER TABLE `music`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proweb`
--
ALTER TABLE `proweb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sport`
--
ALTER TABLE `sport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  ADD PRIMARY KEY (`komentar_id`) USING BTREE;

--
-- Indexes for table `tubes`
--
ALTER TABLE `tubes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tubess`
--
ALTER TABLE `tubess`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `benar`
--
ALTER TABLE `benar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `first`
--
ALTER TABLE `first`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `konten`
--
ALTER TABLE `konten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lgin`
--
ALTER TABLE `lgin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `music`
--
ALTER TABLE `music`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `proweb`
--
ALTER TABLE `proweb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `sport`
--
ALTER TABLE `sport`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tubes`
--
ALTER TABLE `tubes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tubess`
--
ALTER TABLE `tubess`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
