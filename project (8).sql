-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Mar 12, 2021 at 01:44 PM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) DEFAULT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `parentid`, `title`, `keywords`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(14, 0, 'cabanes', 'cabanes', 'cabanes', NULL, 'True', NULL, NULL),
(15, 0, 'cabanes dans les arbres', 'cabanes dans les arbres', 'cabanes dans les arbres', NULL, 'True', NULL, NULL),
(16, 0, 'LA YOURTE', 'LA YOURTE', 'LA YOURTE', NULL, 'True', NULL, NULL),
(17, 0, 'LA MAISON CONTAINER', 'LA MAISON CONTAINER', 'LA MAISON CONTAINER', NULL, 'True', NULL, NULL),
(18, 0, 'LA MAISON-SCULPTURE', 'LA MAISON-SCULPTURE', 'LA MAISON-SCULPTURE', NULL, 'True', NULL, NULL),
(19, 0, 'cabanes', 'Maison flottante', 'cabanes', NULL, 'True', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `hotelid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `subject`, `comment`, `status`, `ip`, `userid`, `created_at`, `updated_at`, `rate`, `hotelid`) VALUES
(5, 'Very Good swimpool', 'Very good and clean swim pool, thank you', 'True', '127.0.0.1', 1, NULL, NULL, 4, 2),
(6, 'google', 'good', 'New', '::1', 10, NULL, NULL, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
CREATE TABLE IF NOT EXISTS `hotel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `detail` longtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_3535ED912469DE2` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
CREATE TABLE IF NOT EXISTS `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_id` int(11) DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C53D045F3243BB18` (`hotel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `hotel_id`, `title`, `image`) VALUES
(19, 2, 'cabane', 'd2d717bb90eda116b143e188365e3957.jpg'),
(20, 2, 'La Cabane de la Rivière', 'aac4d2f800e42ca20d543b42e0c48f2d.jpg'),
(21, 1, 'La Cabane de la Rivière', '687f6c29d1a66003501ccc3d127c233e.jpg'),
(22, 1, 'La Cabane de la Rivière', 'bd7e252347728259b356f176bf995fd5.jpg'),
(23, 3, 'Cabane le Renard', '0f01528a2bd01166e0c2937fe1a1dbd2.jpg'),
(24, 3, 'Cabane le Renard', 'fe4a6349111e182374e162043342379d.jpg'),
(26, 5, 'Pyramide de l’Aigle', '6f09b195625c49895a6eb6f7e9efd85d.jpg'),
(29, 5, 'Pyramide de l’Aigle', 'ab35ae7870f14e8a0a12bef5f1c9e4a7.jpg'),
(30, 5, 'Pyramide de l’Aigle', 'e402cd2ae67ab60faeb1da5141b98053.jpg'),
(31, 4, 'Gîte la Licorne Voyageuse', '5ec13f998e4b2e188e0eb77dd4a7cc7a.jpg'),
(32, 4, 'Gîte la Licorne Voyageuse', 'cff28d0d55c3108f939a7f7b7353f439.jpg'),
(33, 6, 'Cabane l’Ecureuil', '42ece4f93a7a241ba489970c7911df69.jpg'),
(34, 6, 'Cabane l’Ecureuil', '977e2c7d8ab38f03b20b95c32bd98b73.jpg'),
(35, 7, 'Les cabanes du Moulin – Cabanes Spa', '1fc161e10d9d3c4106e88aeb56a82acc.jpg'),
(36, 7, 'Les cabanes du Moulin – Cabanes Spa', '100f8ed659bd0c80ea90126ccf976947.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `image_image`
--

DROP TABLE IF EXISTS `image_image`;
CREATE TABLE IF NOT EXISTS `image_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `hotelid` int(11) DEFAULT NULL,
  `roomid` int(11) DEFAULT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkin` datetime DEFAULT NULL,
  `checkout` datetime DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `userid`, `hotelid`, `roomid`, `name`, `surname`, `email`, `phone`, `checkin`, `checkout`, `days`, `total`, `ip`, `message`, `note`, `status`, `created_at`, `updated_at`) VALUES
(8, 1, 2, 4, 'Ayse', 'CAN', 'ayse@gmail.com', NULL, '2019-01-01 00:00:00', '2019-01-06 00:00:00', 1, 75, '127.0.0.1', NULL, NULL, 'New', '2019-12-25 16:33:34', '2019-12-25 16:33:33'),
(9, 1, 2, 5, 'Ayse', 'CAN', 'ayse@gmail.com', NULL, '2019-01-01 00:00:00', '2019-01-04 00:00:00', 3, 360, '127.0.0.1', NULL, NULL, 'New', '2019-12-25 16:44:32', '2019-12-25 16:44:32'),
(10, 1, 2, 5, 'Hoşbaht', 'Ahmedli', 'ayse@gmail.com', '123', '2019-01-01 00:00:00', '2019-01-04 00:00:00', 3, 360, '127.0.0.1', 'Hoş bir rezervasyon', NULL, 'New', '2019-12-25 16:46:36', '2019-12-25 16:46:36'),
(11, 1, 2, 4, 'Ayse', 'CAN', 'ayse@gmail.com', NULL, '2019-01-01 00:00:00', '1975-10-13 00:00:00', 3, 3, '127.0.0.1', NULL, NULL, 'New', '2019-12-26 22:04:09', '2019-12-26 22:04:09'),
(12, 1, 2, 4, 'Ayse', 'CAN', 'ayse@gmail.com', NULL, '2020-01-15 00:00:00', '2020-01-20 00:00:00', 5, 375, '127.0.0.1', NULL, NULL, 'New', '2019-12-26 22:43:43', '2019-12-26 22:43:43'),
(13, 1, 1, 1, 'Yüksel', 'ÇELİk', 'yuksel@gmail.com', '12345', '2020-01-10 00:00:00', '2020-01-13 00:00:00', 3, 300, '127.0.0.1', '3456', NULL, 'New', '2019-12-26 22:46:16', '2019-12-26 22:46:16'),
(14, 1, 2, 4, 'Cansu', 'CAN', 'cansu@gmail.com', '123456789', '2020-01-15 00:00:00', '2020-01-20 00:00:00', 5, 375, '127.0.0.1', 'Gece yarısı gelecem.', NULL, 'New', '2019-12-26 23:10:42', '2019-12-26 23:10:42'),
(15, 10, 2, 4, 'hajjajihajer', 'hajjajihajer20', 'hajjajihajer24@gmail.com', NULL, '2021-04-10 00:00:00', '2021-05-20 00:00:00', 40, 3000, '::1', 'please accept me', NULL, 'Accepted', '2021-03-11 19:35:31', NULL),
(16, 10, 1, 6, 'hajjajihajer', 'hajjajihajer20', 'hajjajihajer24@gmail.com', NULL, '2021-04-12 00:00:00', '2021-04-14 00:00:00', 2, 380, '::1', 'bonjour', NULL, 'New', '2021-03-11 21:39:45', NULL),
(17, 10, 1, 6, 'hajjajihajer', 'hajjajihajer20', 'hajjajihajer24@gmail.com', NULL, '2021-04-08 00:00:00', '2021-04-20 00:00:00', 12, 2280, '::1', NULL, NULL, 'New', '2021-03-12 10:47:59', NULL),
(18, 10, 6, 11, 'hajjajihajer', 'hajjajihajer20', 'hajjajihajer24@gmail.com', NULL, '2021-04-21 00:00:00', '2021-08-05 00:00:00', 106, 4240, '::1', 'goood', NULL, 'New', '2021-03-12 11:29:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
CREATE TABLE IF NOT EXISTS `room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotelid` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room`
--

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtpserver` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpemail` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtppassword` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpport` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aboutus` longtext COLLATE utf8mb4_unicode_ci,
  `contact` longtext COLLATE utf8mb4_unicode_ci,
  `reference` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--
-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `name`, `surname`, `image`, `status`, `created_at`, `updated_at`) VALUES
(10, 'hajjajihajer24@gmail.com', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$NUJ4WlhsSnhQSk1uZ0p3bA$YWOXzggV4b7zqFctoqpf2WZ4/gMJXyJIEzEMONBFPC0', 'hajjajihajer', 'hajjajihajer20', 'd29a0e7948dd1860a7b8b186ac303105.jpg', 'True', NULL, NULL),
(11, 'hajjajihajer@gmail.com', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$bTUuUFFSTFJRU1c4b1RHMA$E67qiO5wcVl1pP2aBt8sCCpIOgN2JPV0u+B7P6wY4gU', 'hajjajihajer20', NULL, NULL, 'True', NULL, NULL),
(12, 'hajjaji@gmail.com', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$Tm1HODBQTktqWWtOWlN2eg$ejL9iUjC58awp53nAZyKQ++DIfMlKSMjWmlEWnNUVgY', 'hajjajihajer', 'hajer20', NULL, 'True', NULL, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `FK_3535ED912469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `FK_C53D045F3243BB18` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
