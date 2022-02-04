-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2021 at 06:38 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugasakhir`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2021-05-29-171232', 'App\\Database\\Migrations\\Product', 'default', 'App', 1622308713, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) UNSIGNED NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `product_description` text DEFAULT NULL,
  `product_img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `price`, `product_description`, `product_img`) VALUES
(13, 'Sate Maranggi', 40000, 'Satenya ada yang campur lemak dan ada juga yang pake daging wagyu A5. Pas nyobain rasanya enak banget. Dagingnya berasa, tanpa bumbu kacang udah enak. Tapi tambah enak pas dicocol sama bumbu kacangnya. ', 'Sate-Maranggi.jpg'),
(14, 'Kerang Hijau', 50000, 'Kerang ijo rasanya gurih dan lebih nampol. Teksturnya juga lebih kenyal-kenyal gitu, banyak orang suka sama kerang ijo. Apalagi pas ditambahin bumbu padang, beuh rasanya mantap gurih sedap deh pokoknya,', 'muscles.jpg'),
(15, 'Babi Panggang Alam Sutera ', 250000, 'Babi panggang alam sutera ini sangat empuk dan halus banget, teksturnya yang ajib tiada tara dibanding daging lain, terutama ketika dikunyah dan masuk ke mulut rasanya itu sangat membuat pikiranku melayang-layang, jelas kalian harus coba!', 'gouba.png'),
(16, 'Gurame Bakar', 28000, 'Rasa ikannya subhanallah gurih enak asin nyami! Sedikit pedas tp kurang suka krna dikasih sambelnya sambel apa gt ya gw gatau. Mungkin kl sambelnya sambel matah bs jd lebih enak! Nasinya pun lembut walopun warna nya ga putih bersih. Tapi yaudahlah yaa yg penting enak!', 'Guram-_Bakar.jpg'),
(17, 'Boba Toast', 30000, 'Honey toastnya sendiri renyah namun tidak alot dengan rasa butter yang sangat terasa gurihmya dan wangi. Jarang menemukan toast dengan rasa butter yang sangat terasa meski dimakan bersama krim dan bobanya. Menurutku rasanya malah klop dan bisa menetralisir cita rasa manis dari si boba maupun krimnya.', 'Toast-Boba.jpg'),
(18, 'Boba Tiger Sugar', 30000, 'Siapa yang ga kenal minuman hitz satu ini? belakangan ini Boba Tea sangat diminati dari semua kalangan umur, selain rasa teh yang manis dan nikmat, boba yang kenyal serta brown sugar yang membuat rasa minuman ini sangat kaya. Boba Tiger Sugar sangat terkenal karna sangat nikmat dan akan membuat kamu ketagihan! \r\nNamun, sementara outlet Boba Tiger Sugar masih tersedia di Jakarta dan Bekasi. Pastikan untuk kalian coba ya!', 'Tiger_Sugar.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
