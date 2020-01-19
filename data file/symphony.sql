-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2020 at 07:26 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `symphony`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_company`
--

CREATE TABLE `about_company` (
  `id` int(10) UNSIGNED NOT NULL,
  `title1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `orderBy` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_company`
--

INSERT INTO `about_company` (`id`, `title1`, `title2`, `image`, `description`, `orderBy`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ABOUT', 'SYMPHONY SOFTTECH', 'public/uploads/about_company/banner-2_128007700194.jpg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>SYMPHONY SOFTTECH LTD. has stepped into software business arena in 1999 with International branded software in the Finance, Accounting and other business operational management areas. Back in 1999, started it journey as sole proprietary business and now formed a limited company for strong footage in the software market with the International branded and locally developed software.We have dedicated professional programmer team in every platform who are always keen to full fill clients requirements with latest technologies to compete the competitive business market.</p>\r\n</body>\r\n</html>', 1, 1, '2019-11-12 04:36:55', '2019-11-12 04:44:40');

-- --------------------------------------------------------

--
-- Table structure for table `access_log`
--

CREATE TABLE `access_log` (
  `id` int(35) NOT NULL,
  `user_id` int(35) NOT NULL,
  `comapny_id` int(35) DEFAULT NULL,
  `acess_id` int(35) DEFAULT NULL,
  `count` int(35) DEFAULT NULL,
  `history` longtext NOT NULL,
  `action` varchar(255) NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `access_log`
--

INSERT INTO `access_log` (`id`, `user_id`, `comapny_id`, `acess_id`, `count`, `history`, `action`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 7, NULL, NULL, 1, '{\"id\":1,\"siteTitle\":\"Symphony is the best in bd\",\"siteName\":\"Symphony\",\"siteLogo\":\"public\\/uploads\\/site_logo\\/logo\\/logo3.png\",\"sitefavIcon\":\"public\\/uploads\\/site_logo\\/fav_icon\\/favicon.png\",\"adminTitle\":\"Admin\",\"adminLogo\":\"public\\/uploads\\/admin_logo\\/main_logo\\/logo3.png\",\"adminsmalLogo\":\"public\\/uploads\\/admin_logo\\/small_logo\\/logo3.png\",\"adminfavIcon\":\"public\\/uploads\\/admin_logo\\/fav_icon\\/favicon.png\",\"mobile1\":\"+8801710366922\",\"mobile2\":null,\"siteEmail1\":\"symphony@gmail.com\",\"siteEmail2\":null,\"siteAddress1\":\"House No. 693, Road No. 10, Avenue 06\",\"siteAddress2\":\"Mirpur DOHS, Dhaka, Bangladesh\",\"sitestatus\":\"1\",\"metaTitle\":\"Symphony\",\"metaKeyword\":\"Symphony,mobile\",\"metaDescription\":\"test messege\",\"orderBy\":\"1\",\"created_at\":null,\"updated_at\":\"2019-11-07 16:55:53\"}', 'Website Information Update', NULL, NULL, '2019-11-07 11:12:03', '2019-11-07 11:12:03'),
(2, 7, NULL, NULL, 1, '{\"id\":1,\"siteTitle\":\"Symphony is the best in bd\",\"siteName\":\"Symphony\",\"siteLogo\":\"public\\/uploads\\/site_logo\\/logo\\/logo3.png\",\"sitefavIcon\":\"public\\/uploads\\/site_logo\\/fav_icon\\/favicon.png\",\"adminTitle\":\"Admin\",\"adminLogo\":\"public\\/uploads\\/admin_logo\\/main_logo\\/logo3.png\",\"adminsmalLogo\":\"public\\/uploads\\/admin_logo\\/small_logo\\/logo3.png\",\"adminfavIcon\":\"public\\/uploads\\/admin_logo\\/fav_icon\\/favicon.png\",\"mobile1\":\"+88 02 58 157 384\",\"mobile2\":\"+88 01872 650 660 - 669\",\"siteEmail1\":\"symphony@gmail.com\",\"siteEmail2\":\"info@symphonysoftt.com\",\"siteAddress1\":\"HOUSE # 02 (3RD FL.), LAKE CIRCUS, 3RD LANE\",\"siteAddress2\":\"KALABAGAN, DHAKA-1205, BANGLADESH.\",\"sitestatus\":\"1\",\"metaTitle\":\"Symphony\",\"metaKeyword\":\"Symphony,mobile\",\"metaDescription\":\"test messege\",\"orderBy\":\"1\",\"created_at\":null,\"updated_at\":\"2019-11-14 06:21:10\"}', 'Website Information Update', NULL, NULL, '2019-11-14 06:21:10', '2019-11-14 06:21:10'),
(3, 7, NULL, NULL, 1, '{\"id\":1,\"siteTitle\":\"Symphony is the best in bd\",\"siteName\":\"Symphony\",\"siteLogo\":\"public\\/uploads\\/site_logo\\/logo\\/logo3.png\",\"sitefavIcon\":\"public\\/uploads\\/site_logo\\/fav_icon\\/favicon.png\",\"adminTitle\":\"Admin\",\"adminLogo\":\"public\\/uploads\\/admin_logo\\/main_logo\\/logo3.png\",\"adminsmalLogo\":\"public\\/uploads\\/admin_logo\\/small_logo\\/logo3.png\",\"adminfavIcon\":\"public\\/uploads\\/admin_logo\\/fav_icon\\/favicon.png\",\"mobile1\":\"+88 02 58 157 384\",\"mobile2\":\"+88 01872 650 660 - 669\",\"siteEmail1\":\"info@symphonysoftt.com\",\"siteEmail2\":\"SYMPHONYBD@GMAIL.COM\",\"siteAddress1\":\"HOUSE # 02 (3RD FL.), LAKE CIRCUS, 3RD LANE\",\"siteAddress2\":\"KALABAGAN, DHAKA-1205, BANGLADESH.\",\"sitestatus\":\"1\",\"metaTitle\":\"Symphony\",\"metaKeyword\":\"Symphony,mobile\",\"metaDescription\":\"test messege\",\"orderBy\":\"1\",\"created_at\":null,\"updated_at\":\"2019-11-14 06:25:14\"}', 'Website Information Update', NULL, NULL, '2019-11-14 06:25:15', '2019-11-14 06:25:15'),
(4, 4, NULL, NULL, 1, '{\"id\":1,\"siteTitle\":\"Symphony is the best in bd\",\"siteName\":\"Symphony\",\"siteLogo\":\"public\\/uploads\\/site_logo\\/logo\\/symphony logo.png\",\"sitefavIcon\":\"public\\/uploads\\/site_logo\\/fav_icon\\/favicon.png\",\"adminTitle\":\"Admin\",\"adminLogo\":\"public\\/uploads\\/admin_logo\\/main_logo\\/logo3.png\",\"adminsmalLogo\":\"public\\/uploads\\/admin_logo\\/small_logo\\/logo3.png\",\"adminfavIcon\":\"public\\/uploads\\/admin_logo\\/fav_icon\\/favicon.png\",\"mobile1\":\"+88 02 58 157 384\",\"mobile2\":\"+88 01872 650 660 - 669\",\"siteEmail1\":\"info@symphonysoftt.com\",\"siteEmail2\":\"SYMPHONYBD@GMAIL.COM\",\"siteAddress1\":\"HOUSE # 02 (3RD FL.), LAKE CIRCUS, 3RD LANE\",\"siteAddress2\":\"KALABAGAN, DHAKA-1205, BANGLADESH.\",\"sitestatus\":\"1\",\"metaTitle\":\"Symphony\",\"metaKeyword\":\"Symphony,mobile\",\"metaDescription\":\"test messege\",\"orderBy\":\"1\",\"created_at\":null,\"updated_at\":\"2020-01-12 10:28:45\"}', 'Website Information Update', NULL, NULL, '2020-01-12 10:28:46', '2020-01-12 10:28:46'),
(5, 4, NULL, NULL, 1, '{\"id\":1,\"siteTitle\":\"Symphony is the best in bd\",\"siteName\":\"Symphony\",\"siteLogo\":\"public\\/uploads\\/site_logo\\/logo\\/logo3_test.png\",\"sitefavIcon\":\"public\\/uploads\\/site_logo\\/fav_icon\\/favicon.png\",\"adminTitle\":\"Admin\",\"adminLogo\":\"public\\/uploads\\/admin_logo\\/main_logo\\/logo3.png\",\"adminsmalLogo\":\"public\\/uploads\\/admin_logo\\/small_logo\\/logo3.png\",\"adminfavIcon\":\"public\\/uploads\\/admin_logo\\/fav_icon\\/favicon.png\",\"mobile1\":\"+88 02 58 157 384\",\"mobile2\":\"+88 01872 650 660 - 669\",\"siteEmail1\":\"info@symphonysoftt.com\",\"siteEmail2\":\"SYMPHONYBD@GMAIL.COM\",\"siteAddress1\":\"HOUSE # 02 (3RD FL.), LAKE CIRCUS, 3RD LANE\",\"siteAddress2\":\"KALABAGAN, DHAKA-1205, BANGLADESH.\",\"sitestatus\":\"1\",\"metaTitle\":\"Symphony\",\"metaKeyword\":\"Symphony,mobile\",\"metaDescription\":\"test messege\",\"orderBy\":\"1\",\"created_at\":null,\"updated_at\":\"2020-01-12 10:30:04\"}', 'Website Information Update', NULL, NULL, '2020-01-12 10:30:04', '2020-01-12 10:30:04'),
(6, 4, NULL, NULL, 1, '{\"id\":1,\"siteTitle\":\"Symphony is the best in bd\",\"siteName\":\"Symphony\",\"siteLogo\":\"public\\/uploads\\/site_logo\\/logo\\/logo3.png\",\"sitefavIcon\":\"public\\/uploads\\/site_logo\\/fav_icon\\/favicon.png\",\"adminTitle\":\"Admin\",\"adminLogo\":\"public\\/uploads\\/admin_logo\\/main_logo\\/logo3.png\",\"adminsmalLogo\":\"public\\/uploads\\/admin_logo\\/small_logo\\/logo3.png\",\"adminfavIcon\":\"public\\/uploads\\/admin_logo\\/fav_icon\\/favicon.png\",\"mobile1\":\"+88 02 58 157 384\",\"mobile2\":\"+88 01872 650 660 - 669\",\"siteEmail1\":\"info@symphonysoftt.com\",\"siteEmail2\":\"SYMPHONYBD@GMAIL.COM\",\"siteAddress1\":\"HOUSE # 02 (3RD FL.), LAKE CIRCUS, 3RD LANE\",\"siteAddress2\":\"KALABAGAN, DHAKA-1205, BANGLADESH.\",\"sitestatus\":\"1\",\"metaTitle\":\"Symphony\",\"metaKeyword\":\"Symphony,mobile\",\"metaDescription\":\"test messege\",\"orderBy\":\"1\",\"created_at\":null,\"updated_at\":\"2020-01-12 10:30:32\"}', 'Website Information Update', NULL, NULL, '2020-01-12 10:30:33', '2020-01-12 10:30:33'),
(7, 4, NULL, NULL, 1, '{\"id\":1,\"siteTitle\":\"Symphony is the best in bd\",\"siteName\":\"Symphony\",\"siteLogo\":\"public\\/uploads\\/site_logo\\/logo\\/logo3.png\",\"sitefavIcon\":\"public\\/uploads\\/site_logo\\/fav_icon\\/favicon.png\",\"adminTitle\":\"Admin\",\"adminLogo\":\"public\\/uploads\\/admin_logo\\/main_logo\\/logo3.png\",\"adminsmalLogo\":\"public\\/uploads\\/admin_logo\\/small_logo\\/logo3.png\",\"adminfavIcon\":\"public\\/uploads\\/admin_logo\\/fav_icon\\/favicon.png\",\"mobile1\":\"+88 02 58 157 384\",\"mobile2\":\"+88 01872 650 660 - 669\",\"siteEmail1\":\"info@symphonysoftt.com\",\"siteEmail2\":\"SYMPHONYBD@GMAIL.COM\",\"siteAddress1\":\"HOUSE # 02 (3RD FL.), LAKE CIRCUS, 3RD LANE\",\"siteAddress2\":\"KALABAGAN, DHAKA-1205, BANGLADESH.\",\"sitestatus\":\"1\",\"metaTitle\":\"Symphony\",\"metaKeyword\":\"Symphony,mobile\",\"metaDescription\":\"test messege\",\"orderBy\":\"1\",\"created_at\":null,\"updated_at\":\"2020-01-12 10:30:32\"}', 'Website Information Update', NULL, NULL, '2020-01-12 11:08:39', '2020-01-12 11:08:39'),
(8, 4, NULL, NULL, 1, '{\"id\":1,\"siteTitle\":\"Symphony is the best in bd\",\"siteName\":\"Symphony\",\"siteLogo\":\"public\\/uploads\\/site_logo\\/logo\\/logo3 (1).png\",\"sitefavIcon\":\"public\\/uploads\\/site_logo\\/fav_icon\\/favicon.png\",\"adminTitle\":\"Admin\",\"adminLogo\":\"public\\/uploads\\/admin_logo\\/main_logo\\/logo3.png\",\"adminsmalLogo\":\"public\\/uploads\\/admin_logo\\/small_logo\\/logo3.png\",\"adminfavIcon\":\"public\\/uploads\\/admin_logo\\/fav_icon\\/favicon.png\",\"mobile1\":\"+88 02 58 157 384\",\"mobile2\":\"+88 01872 650 660 - 669\",\"siteEmail1\":\"info@symphonysoftt.com\",\"siteEmail2\":\"SYMPHONYBD@GMAIL.COM\",\"siteAddress1\":\"HOUSE # 02 (3RD FL.), LAKE CIRCUS, 3RD LANE\",\"siteAddress2\":\"KALABAGAN, DHAKA-1205, BANGLADESH.\",\"sitestatus\":\"1\",\"metaTitle\":\"Symphony\",\"metaKeyword\":\"Symphony,mobile\",\"metaDescription\":\"test messege\",\"orderBy\":\"1\",\"created_at\":null,\"updated_at\":\"2020-01-12 11:09:57\"}', 'Website Information Update', NULL, NULL, '2020-01-12 11:09:57', '2020-01-12 11:09:57'),
(9, 4, NULL, NULL, 1, '{\"id\":1,\"siteTitle\":\"Symphony is the best in bd\",\"siteName\":\"Symphony\",\"siteLogo\":\"public\\/uploads\\/site_logo\\/logo\\/logo3 (2).png\",\"sitefavIcon\":\"public\\/uploads\\/site_logo\\/fav_icon\\/favicon.png\",\"adminTitle\":\"Admin\",\"adminLogo\":\"public\\/uploads\\/admin_logo\\/main_logo\\/logo3.png\",\"adminsmalLogo\":\"public\\/uploads\\/admin_logo\\/small_logo\\/logo3.png\",\"adminfavIcon\":\"public\\/uploads\\/admin_logo\\/fav_icon\\/favicon.png\",\"mobile1\":\"+88 02 58 157 384\",\"mobile2\":\"+88 01872 650 660 - 669\",\"siteEmail1\":\"info@symphonysoftt.com\",\"siteEmail2\":\"SYMPHONYBD@GMAIL.COM\",\"siteAddress1\":\"HOUSE # 02 (3RD FL.), LAKE CIRCUS, 3RD LANE\",\"siteAddress2\":\"KALABAGAN, DHAKA-1205, BANGLADESH.\",\"sitestatus\":\"1\",\"metaTitle\":\"Symphony\",\"metaKeyword\":\"Symphony,mobile\",\"metaDescription\":\"test messege\",\"orderBy\":\"1\",\"created_at\":null,\"updated_at\":\"2020-01-12 11:12:03\"}', 'Website Information Update', NULL, NULL, '2020-01-12 11:12:03', '2020-01-12 11:12:03'),
(10, 4, NULL, NULL, 1, '{\"id\":1,\"siteTitle\":\"Symphony is the best in bd\",\"siteName\":\"Symphony\",\"siteLogo\":\"public\\/uploads\\/site_logo\\/logo\\/logo3.png\",\"sitefavIcon\":\"public\\/uploads\\/site_logo\\/fav_icon\\/favicon.png\",\"adminTitle\":\"Admin\",\"adminLogo\":\"public\\/uploads\\/admin_logo\\/main_logo\\/logo3.png\",\"adminsmalLogo\":\"public\\/uploads\\/admin_logo\\/small_logo\\/logo3.png\",\"adminfavIcon\":\"public\\/uploads\\/admin_logo\\/fav_icon\\/favicon.png\",\"mobile1\":\"+88 02 58 157 384\",\"mobile2\":\"+88 01872 650 660 - 669\",\"siteEmail1\":\"info@symphonysoftt.com\",\"siteEmail2\":\"SYMPHONYBD@GMAIL.COM\",\"siteAddress1\":\"HOUSE # 02 (3RD FL.), LAKE CIRCUS, 3RD LANE\",\"siteAddress2\":\"KALABAGAN, DHAKA-1205, BANGLADESH.\",\"sitestatus\":\"1\",\"metaTitle\":\"Symphony\",\"metaKeyword\":\"Symphony,mobile\",\"metaDescription\":\"test messege\",\"orderBy\":\"1\",\"created_at\":null,\"updated_at\":\"2020-01-19 04:50:28\"}', 'Website Information Update', NULL, NULL, '2020-01-19 04:50:28', '2020-01-19 04:50:28');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` text COLLATE utf8mb4_unicode_ci,
  `role` int(11) DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `role`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Admin', 'admin@gmail.com', 'Admin', 3, '$2y$10$wcjSEsgXU5pSM16fpwouju905lsZrFFxc5J68jQanfo8Jl6EQWXbe', 1, 'HftBsS0WaFhNaeki9GEnbTOdo99h14G9dS1WtBq9AJJkzUuSyNKsUxMufhEx', '2019-04-17 01:04:35', '2019-10-19 03:18:47'),
(7, 'Jisan Ahmed', 'jisan@gmail.com', 'jisan', 2, '$2y$10$KSdee7hzr.8uJB89YOyV7eKvQG6uXyD45P0Fpf.FNHv9q46VCXM0i', 1, NULL, '2019-08-30 21:43:55', '2019-09-07 22:35:30');

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Uttara', '2019-09-27 14:04:17', '2019-09-27 14:04:17'),
(2, 'Mirpur', '2019-09-27 14:04:38', '2019-09-27 14:04:38'),
(3, 'Badda', '2019-09-27 14:05:50', '2019-09-27 14:05:50'),
(4, 'Dhanmondi', '2019-09-27 14:07:35', '2019-09-27 14:07:35'),
(5, 'Dhaka', '2019-10-15 05:51:34', '2019-10-15 05:51:34');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) UNSIGNED NOT NULL,
  `menuId` int(11) DEFAULT NULL,
  `parentArticle` int(11) DEFAULT NULL,
  `articleName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstHomeTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondHomeTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstInnerTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondInnerTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstHomeImage` text COLLATE utf8mb4_unicode_ci,
  `firstInnerImage` text COLLATE utf8mb4_unicode_ci,
  `headerImage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `homeDescription` text COLLATE utf8mb4_unicode_ci,
  `innerDescription` text COLLATE utf8mb4_unicode_ci,
  `urlLink` text COLLATE utf8mb4_unicode_ci,
  `articleIcon` text COLLATE utf8mb4_unicode_ci,
  `metaTitle` text COLLATE utf8mb4_unicode_ci,
  `metaKeyword` text COLLATE utf8mb4_unicode_ci,
  `metaDescription` text COLLATE utf8mb4_unicode_ci,
  `orderBy` int(11) DEFAULT NULL,
  `articleStatus` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `menuId`, `parentArticle`, `articleName`, `firstHomeTitle`, `secondHomeTitle`, `firstInnerTitle`, `secondInnerTitle`, `firstHomeImage`, `firstInnerImage`, `headerImage`, `homeDescription`, `innerDescription`, `urlLink`, `articleIcon`, `metaTitle`, `metaKeyword`, `metaDescription`, `orderBy`, `articleStatus`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'About Symphony Softech', 'About', 'Symphony Softech', 'About Symphony Softech', NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>SYMPHONY SOFTTECH LTD. has stepped into software business arena in 1999 with International branded software in the Finance, Accounting and other business operational management areas. Back in 1999, started it journey as sole proprietary business and now formed a limited company for strong footage in the software market with the International branded and locally developed software.We have dedicated professional programmer team in every platform who are always keen to full fill clients requirements with latest technologies to compete the competitive business market.</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>SYMPHONY SOFTTECH LTD. has stepped into software business arena in 1999 with International branded software in the Finance, Accounting and other business operational management areas. Back in 1999, started it journey as sole proprietary business and now formed a limited company for strong footage in the software market with the International branded and locally developed software.We have dedicated professional programmer team in every platform who are always keen to full fill clients requirements with latest technologies to compete the competitive business market.</p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-11-02 23:46:55', '2019-11-15 23:09:05'),
(2, 2, NULL, 'Portfolio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-11-02 23:47:50', '2020-01-17 23:29:51'),
(3, 3, NULL, 'Our Team', 'Our', 'Team', NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Meet out small team that make those great products.</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-11-02 23:48:05', '2020-01-17 23:30:46'),
(4, 4, 3, 'Skills', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-11-02 23:49:31', '2020-01-17 23:31:20'),
(5, 5, NULL, 'Our Product', 'Our', 'Product', NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-11-02 23:50:13', '2019-11-13 22:52:41'),
(7, 7, 5, 'Busy', 'Busy', NULL, NULL, NULL, 'public/uploads/articles/home/product_2_52180071592.jpg', NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Any high quality product needs a rich framework of services to support its implementation.To cater for these needs, we offer our clients individual consulting</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-11-02 23:51:13', '2019-11-25 05:22:23'),
(9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-11-02 23:52:25', '2019-11-02 23:52:25'),
(10, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-11-02 23:54:11', '2019-11-02 23:54:11'),
(11, 11, NULL, 'Our Service', 'Our', 'Services', NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Explore some of the best business from around the world from our partners and friends.</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-11-03 00:37:11', '2019-11-12 06:29:16'),
(12, 12, 5, 'Shampan vat', 'Shampan VAT', NULL, 'Popular Features of Shampan VAT Software that will increase your productivity', NULL, 'public/uploads/articles/home/image (3)_8143059922_24773929252.png', 'public/uploads/articles/inner_page/image (3)_19134679258.png', 'public/uploads/articles/header_image/SL_64568052643.png', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Shampan VAT Accounting software will save your time from Co-efficient to VAT Return submission by VAT Online system of National Board of Revenue (NBR).</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 12pt; color: #000000;\">Shampan VAT Accounting software will save your time from Co-efficient to VAT Return submission by VAT Online system of National Board of Revenue (NBR).</span></p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 12pt; color: #000000;\">Shampan VAT is secured and error free which is reliable and our VAT Consultants will help you to support throughout the entry process to VAT Return submission.</span></p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-11-03 06:57:54', '2020-01-18 07:07:32'),
(13, 13, 5, 'Shampan HRM & Payroll', 'Shampan HRM & Payroll', NULL, NULL, NULL, 'public/uploads/articles/home/product_4_73451179784.jpg', NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 3, 1, '2019-11-04 11:11:45', '2020-01-12 05:48:13'),
(14, 14, 5, 'Shampan PF & Gratuity', 'Shampan PF ,GF & TAX', NULL, NULL, NULL, 'public/uploads/articles/home/product_5_48321548573.jpg', NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 4, 1, '2019-11-04 11:12:43', '2020-01-12 05:48:26'),
(15, 15, 5, 'CGMS', 'CGMS', NULL, NULL, NULL, 'public/uploads/articles/home/supplier_panel_95124940651.jpg', NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Automated screenign product useful memory server</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-11-04 11:13:33', '2019-11-25 05:22:29'),
(16, 16, 11, 'Third Party Software Integration', 'Third Party Software Integration', NULL, 'Third Party Software Integration', NULL, NULL, 'public/uploads/articles/inner_page/banner_sliders_16318353439.jpg', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>We work on third party software integration with Sage 300 ERP.</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.But also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.But also the leap into electronic typesetting,</p>\r\n<p>Fusce non ante sed lorem rutrum feugiat. Vestibulum pellentesque, purus ut dignissim consectetur, nulla erat ultrices purus, ut consequat sem elit non sem. Morbi lacus massa, euismod ut turpis molestie, tristique sodales est. Integer sit amet mi id sapien tempor molestie in nec massa. Fusce non ante sed lorem rutrum feugiat.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.But also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n</body>\r\n</html>', NULL, '<i class=\"fa fa-bookmark\"></i>', NULL, NULL, NULL, NULL, 1, '2019-11-04 11:36:20', '2019-11-14 05:24:26'),
(17, 17, 11, 'Business Process Service', 'Business Process Service', NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Our services are best received by small to medium sized companies in the areas</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, '<i class=\"fa fa-bolt\"></i>', NULL, NULL, NULL, NULL, 1, '2019-11-04 11:36:39', '2019-11-12 06:39:13'),
(18, 18, 11, 'Training Service', 'Training Service', NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>&nbsp;In addition to software sales and implementation, we provide software training service on Sage 300 ERP</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, '<i class=\"fa fa-envelope-o\"></i>', NULL, NULL, NULL, NULL, 1, '2019-11-04 11:36:57', '2019-11-12 06:47:12'),
(19, 19, 11, 'Consulting Service', 'Consulting Service', NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Any high quality product needs a rich framework of services to support its implementation.To cater for these needs, we offer our clients individual consulting</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, '<i class=\"fa fa-laptop\"></i>', NULL, NULL, NULL, NULL, 1, '2019-11-04 11:37:39', '2019-11-12 06:47:58'),
(20, 20, 11, 'Custom Software Development', 'Custom Software Development', NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>SYMPHONY SOFTTECH LTD. is a client-centered and quality-conscious organization offers custom software programming services, dedicated</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, '<i class=\"fa fa-desktop\"></i>', NULL, NULL, NULL, NULL, 1, '2019-11-04 11:37:58', '2019-11-12 06:50:40'),
(21, NULL, NULL, 'Welcome TO SYMPHONY SOFTTECH LTD', 'WELCOME', 'TO SYMPHONY SOFTTECH LTD', NULL, NULL, 'public/uploads/articles/home/welcome_image_63306931296.jpg', NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>We are a business partner of Sage software Inc, (UK) (www.sage.com &amp; www.sageasiapac.com) for selling and providing solution of Sage 300 ERP (formerly known as Sage Accpac ERP) and other leading third party software in the local market. We provide Sage 300 ERP (Sage Accpac ERP) solution with reasonable price, consulting, implementation, post support service and training anywhere in Bangladesh. In 2010 we have lunched International branded software named Busy Business Accounting of Busy Infotech Pvt. Ltd from India for the small to medium size organization. Symphony Softtech Ltd. is growing with International branded with small scale local development software. Our strength of business analysis, customer support service as well as technology knowledge has increased to a standard level. With this strength of experience and knowledge, we are emphasizing more on local software development arena (Shampan branded) with cutting edge technology side by side with our internationally two branded software.</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-11-12 04:49:41', '2019-11-12 05:14:28'),
(22, NULL, NULL, 'Company Overview', 'Company', 'Overview', NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-11-12 05:11:10', '2019-11-25 05:13:19'),
(23, 22, 22, 'Mission', 'About Us', NULL, 'Mission', NULL, 'public/uploads/articles/home/mission_78561611155.jpg', 'public/uploads/articles/inner_page/banner_sliderss_2_57093075409.jpg', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc</p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-11-12 05:46:49', '2019-11-25 05:16:59'),
(24, 23, 22, 'Vision', 'Vision', NULL, NULL, NULL, 'public/uploads/articles/home/vission_38615261075.png', NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-11-12 05:54:58', '2019-11-15 22:46:17'),
(25, 24, 22, 'GOAL', 'GOAL', NULL, NULL, NULL, 'public/uploads/articles/home/goal_75278243461.png', NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-11-12 06:19:27', '2019-11-15 22:47:57'),
(26, 25, 22, 'QUALITY POLICY', 'QUALITY POLICY', NULL, NULL, NULL, 'public/uploads/articles/home/quality_51502259699.png', NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-11-12 06:21:04', '2019-11-15 22:48:10'),
(27, 27, 5, 'SAGE 300 ERP', 'SAGE 300 ERP', NULL, NULL, NULL, 'public/uploads/articles/home/product_1_99556159458.jpg', NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Any high quality product needs a rich framework of services to support its implementation.To cater for these needs, we offer our clients individual consulting</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 2, 1, '2019-11-12 06:59:48', '2020-01-12 03:33:10'),
(28, NULL, NULL, 'Our Client', 'Our', 'Client', NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-11-13 22:38:50', '2020-01-12 05:50:30'),
(30, NULL, NULL, 'Partner', 'Partner', 'Partner', NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 100, 0, '2019-11-13 23:40:00', '2020-01-17 23:28:54'),
(31, 10, NULL, 'Contact Us', NULL, NULL, 'Contact', 'Us', NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>We waited until we could do it right. Then we did! Instead of creating a carbon copy.</p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-11-16 00:08:20', '2019-11-16 00:15:34'),
(33, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-11-17 01:12:42', '2019-11-17 01:12:42'),
(34, NULL, 12, 'Easy Coefficient (VAT 4.3)', 'Easy Coefficient (VAT 4.3)', NULL, 'Easy Coefficient (VAT 4.3)', NULL, 'public/uploads/articles/home/Screenshot_6_1891352823.jpg', 'public/uploads/articles/inner_page/Screenshot_3_72295605353.jpg', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: center;\">Create your Coefficient (VAT 4.3) as per your product and reuse the same as template for future need.</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<ul>\r\n<li style=\"text-align: justify;\">Input - Output Co-efficient must be declared 15 days before selling/delivering the Product or service to VAT Online System or the relevant NBR Office of Regional Officer.</li>\r\n</ul>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<ul style=\"text-align: justify;\">\r\n<li>If the product price or Total input/raw materials value exceed 7.5% of previously declared then new Input-Output Declaration needed.</li>\r\n</ul>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<ul>\r\n<li style=\"text-align: justify;\">Bill of Entry and Challan of input purchase goods must be enclosed.</li>\r\n</ul>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-01-18 01:14:01', '2020-01-18 04:53:09'),
(35, NULL, 12, 'Purchase Register (VAT 6.1)', 'Purchase Register (VAT 6.1)', NULL, 'Purchase Register (VAT 6.1)', NULL, 'public/uploads/articles/home/Screenshot_4_39185203994.jpg', NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Update the Purchase Register automatically by entry process of your Local &amp; Import Purchase considering the all Duties &amp; taxes.</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 2, 1, '2020-01-18 01:15:26', '2020-01-18 04:50:47'),
(36, NULL, 12, 'VDS (VAT 6.6)', 'VDS (VAT 6.6)', NULL, 'VDS (VAT 6.6)', NULL, 'public/uploads/articles/home/Screenshot_5_28055042992.jpg', NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>VAT Deduction at Source (VDS) &nbsp;is a withholding tax applicable when a service receiver deduct its VAT paid on supply</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 2, 1, '2020-01-18 01:16:20', '2020-01-18 04:52:10');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `bannerImage` text COLLATE utf8mb4_unicode_ci,
  `bannerStatus` tinyint(1) NOT NULL,
  `metaTitle` text COLLATE utf8mb4_unicode_ci,
  `metaKeyword` text COLLATE utf8mb4_unicode_ci,
  `metaDescription` text COLLATE utf8mb4_unicode_ci,
  `orderBy` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `bannerImage`, `bannerStatus`, `metaTitle`, `metaKeyword`, `metaDescription`, `orderBy`, `created_at`, `updated_at`) VALUES
(1, 'Banner 1', 'public/uploads/banner_image/cat1.jpg', 1, NULL, NULL, NULL, 1, '2019-07-16 02:27:18', '2019-07-25 21:24:10'),
(2, 'Banner 2', 'public/uploads/banner_image/cat3.jpg', 1, NULL, NULL, NULL, 2, '2019-07-16 03:38:08', '2019-07-25 21:24:10'),
(3, 'banner 3', 'public/uploads/banner_image/banner5.jpg', 1, NULL, NULL, NULL, 3, '2019-07-16 03:44:10', '2019-07-25 21:24:10'),
(4, 'a', 'public/uploads/banner_image/cat1.jpg', 1, NULL, NULL, NULL, 4, '2019-08-07 19:49:31', '2019-08-07 19:49:31'),
(5, 'g', 'public/uploads/banner_image/cat1.jpg', 1, NULL, NULL, NULL, 1, '2019-08-07 19:49:45', '2019-08-07 19:49:45');

-- --------------------------------------------------------

--
-- Table structure for table `benefits`
--

CREATE TABLE `benefits` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `benefits`
--

INSERT INTO `benefits` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Provident Fund', '2019-09-29 16:19:14', '2019-09-29 16:32:27'),
(3, 'Bonus', '2019-09-29 16:33:20', '2019-09-29 16:33:20'),
(4, 'TA/DA', '2019-09-29 16:33:35', '2019-09-29 16:33:35'),
(5, 'Mobile Allowance', '2019-09-29 16:33:46', '2019-09-29 16:33:46'),
(6, 'Yearly Bonus', '2019-09-29 18:20:18', '2019-09-29 18:20:18');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) UNSIGNED NOT NULL,
  `firstHomeTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondHomeTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstInnerTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondInnerTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstHomeImage` text COLLATE utf8mb4_unicode_ci,
  `firstInnerImage` text COLLATE utf8mb4_unicode_ci,
  `homeDescription` text COLLATE utf8mb4_unicode_ci,
  `innerDescription` text COLLATE utf8mb4_unicode_ci,
  `urlLink` text COLLATE utf8mb4_unicode_ci,
  `articleIcon` text COLLATE utf8mb4_unicode_ci,
  `metaTitle` text COLLATE utf8mb4_unicode_ci,
  `metaKeyword` text COLLATE utf8mb4_unicode_ci,
  `metaDescription` text COLLATE utf8mb4_unicode_ci,
  `orderBy` int(11) DEFAULT NULL,
  `articleStatus` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `firstHomeTitle`, `secondHomeTitle`, `firstInnerTitle`, `secondInnerTitle`, `firstHomeImage`, `firstInnerImage`, `homeDescription`, `innerDescription`, `urlLink`, `articleIcon`, `metaTitle`, `metaKeyword`, `metaDescription`, `orderBy`, `articleStatus`, `created_at`, `updated_at`) VALUES
(4, 'First Blog', NULL, 'First Blog', 'First Blog', 'public/uploads/blogs/home/img-1_44045251560.jpg', 'public/uploads/blogs/inner_page/Sage-New-01_191912107594_67687886154_62456827784.png', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour,</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>lorem xdbfdsvdsvdsv</p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-11-14 01:41:33', '2019-11-17 06:20:41'),
(5, 'Second Blog', NULL, NULL, NULL, 'public/uploads/blogs/home/img-2_70169640573.jpg', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour,</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-11-14 01:46:01', '2019-11-14 01:46:01');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(10) UNSIGNED NOT NULL,
  `candidate_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` text COLLATE utf8mb4_unicode_ci,
  `gender` text COLLATE utf8mb4_unicode_ci,
  `birth_date` datetime DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sector` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_thana` int(11) DEFAULT NULL,
  `present_address` text COLLATE utf8mb4_unicode_ci,
  `skills` text COLLATE utf8mb4_unicode_ci,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `pdf_cv` text COLLATE utf8mb4_unicode_ci,
  `pdf_word` text COLLATE utf8mb4_unicode_ci,
  `password` text COLLATE utf8mb4_unicode_ci,
  `confirmPassword` text COLLATE utf8mb4_unicode_ci,
  `payment_mode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clientGroup` text COLLATE utf8mb4_unicode_ci,
  `area_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience_from` datetime DEFAULT NULL,
  `experience_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_working` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `educational_degree` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cgpa` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_pic` text COLLATE utf8mb4_unicode_ci,
  `marital_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fresh_candidate` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expected_salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `major` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify_code` text COLLATE utf8mb4_unicode_ci,
  `activity` int(11) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `candidate_type`, `name`, `email`, `mobile`, `gender`, `birth_date`, `father_name`, `mother_name`, `religion`, `sector`, `department`, `country_id`, `district_id`, `present_thana`, `present_address`, `skills`, `short_description`, `pdf_cv`, `pdf_word`, `password`, `confirmPassword`, `payment_mode`, `status`, `clientGroup`, `area_id`, `experience_from`, `experience_to`, `current_working`, `educational_degree`, `cgpa`, `language`, `profile_pic`, `marital_status`, `fresh_candidate`, `present_country`, `permanent_country`, `present_district`, `permanent_district`, `permanent_address`, `current_salary`, `expected_salary`, `major`, `linkedin`, `skype`, `verify_code`, `activity`, `created_at`, `updated_at`) VALUES
(36, 'candidate', 'Md. Towfiqul Islam', 'mrtowfiq_bd@yahoo.com', '+8801710366922', 'Male', '1977-09-30 00:00:00', 'Late Mazrul Islam', 'Ms. Rehana Begum', 'Islam', 'Agriculture,Customer Service,Marketing,Sales,Sales,Pesticides,Branding,Retail Marketing', 'Marketing,Sales', 'Bangladesh,Cambodia,Nepal,Singapore,Vietnam', 'Dhaka,Chittagong', NULL, 'House No: 11, Road No: 2, Block: C, Mirpur 12.', 'IT', 'Total 17 Years Experience with Bangladesh, Vietnam and Indian reputed companies.\r\n\r\n•	11 years of Budgeting, Profit & Loss calculation, Pricing, Sales operation, Marketing Management, Product Management, Branding, Promotion, Retail Management, Trade Marketing, Business Development, B2B, B2C and International Business Relationship.\r\n•	3 years of Customer Service, Credit Management, Customer Relationship Management.\r\n•	4 years of Distribution, Inventory Management, Supply Chain, Administration and people management.', 'public/uploads/cv/pdf/Md. Towfiqul-Islam_36.pdf', 'public/uploads/cv/word/Md. Towfiqul-Islam_36.doc', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, 'Approve', NULL, 'Dhaka', '1970-01-01 00:00:00', NULL, NULL, 'MBA', '3.31', 'Bangla,English,Hindi', 'public/uploads/candidate/profile/MD TOWFIQUL ISLAM.jpg', 'Unmarried', '', 'Bangladesh', 'Bangladesh', 'Dhaka', 'Dhaka', 'House No: 11, Road No: 2, Block: C, Mirpur 12.', '150000', 'BDT 200,000.00', 'Marketing', 'https://www.linkedin.com/in/md-towfiqul-islam-towfiq/', 'mdtowfiqulislamripon', '293215505', 1, '2019-10-06 01:23:32', '2019-10-15 23:56:09'),
(37, 'candidate', 'paul', 'proshanto_paul@yahoo.com', '01973813836', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/uploads/cv/pdf/job_portal_dd_.pdf', NULL, '02e68d2523c6cc8409ed24c4af8539eb', NULL, NULL, 'Approve', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2019-10-06 08:25:48', '2019-10-10 03:40:14'),
(38, 'candidate', 'MD Nurul Abrar', 'rtr_abrar@yahoo.com', '01817182647', 'Male', '1988-03-15 00:00:00', 'Late Al-Haj Md Nurul Absar', 'Al-Haj Farida Akter', 'Islam', 'Garments,Telecommunications,SCM,Manufacturing (FMCG),Multinational Companies', 'Human Resources,SCM,Warehouse', 'Bangladesh,Canada,Japan,Malaysia,United States', 'Dhaka,Chittagong', NULL, 'Holy HomesAl-Amin Lodge226/1 (AIM Taha) College Road Auch Para Tongi Gazipur, Gazipur Sadar, Gazipur Sadar, Gazipur 1700', 'Master Data Management,Warehouse Operations,MS Office,Primary knowledge on hardware,Windows,SAP/ERP under MM Module/ WMM Module,Logistics', 'To secure a management position in an esteemed organization by utilizing my experience, skill, education, knowledge and leadership quality.\r\n\r\n• First-hand experience in the area of Component/Material/Product sourcing.\r\n• Strategic planning & on time delivery considering roll-out schedule.\r\n• Able to work in under pressure for customer satisfaction.\r\n• Smooth & aggressive Logistics operations.\r\n• Kea user of SAP under MM and WMM module\r\n• Follow up inventory Management system\r\n• Maintaining order wise shipment record & follow up the shipment procedure\r\n• Checking on all in and out accessories\r\n• Good communication skill\r\n• Information and task monitoring.\r\n• Willing to work in a team achieve together', 'public/uploads/cv/pdf/CV Of Abrar_38.pdf', 'public/uploads/cv/word/CV Of Abrar_38.docx', 'd8fe5fbe2bb6f377ce92e48dfd3f08f3', NULL, NULL, 'Approve', NULL, 'Uttara', '2008-01-01 00:00:00', NULL, NULL, 'MA', '3.55', 'Bangla,English', 'public/uploads/candidate/profile/Abrar.jpg', 'Married', '', 'Bangladesh', 'Bangladesh', 'Gazipur', 'Chittagong', 'Apon Nibas-3431/B Gulbag R/A., Gazipur Sadar, Bayazid Bostami, Chattogram 1700', '47000+', '65000+', 'Hadith', 'https://www.linkedin.com/in/md-nurul-abrar-19b04834/', NULL, '', 1, '2019-10-06 23:12:42', '2019-10-07 01:53:56'),
(39, 'candidate', 'Md. Zahidul Haque', 'zahid01348@yahoo.com', '01787007799', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/uploads/cv/pdf/CURRICULUM VITAE - Afsana Akter Sonia (1) (1)_.pdf', NULL, NULL, NULL, NULL, 'Approve', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '545912613', 1, '2019-10-06 23:15:39', '2019-10-07 00:33:53'),
(40, 'candidate', 'Sumon Kumar Sutra Dhar', 'sksdsumon@gmail.com', '01819976188', 'Male', '1981-07-31 00:00:00', 'Gopal Chandra Sutra Dhar', 'Kazal Sutra Dhar', 'Hinduism', 'Buying House,Bank,Consultancy,Customer Service,Garments,Hospitality,Information Technology,NGO,Telecommunications,Branding,Manufacturing (FMCG),Multinational Companies', 'Information Technology,MIS,ERP,System Analyst,IT Operation,EDP Manager', 'Bangladesh,Cambodia,Canada,China,India,Indonesia,Japan,North Korea,Kuwait,Malaysia,Mexico,Netherlands,New Zealand,Oman,Qatar,Singapore,South Africa,United Kingdom,United States,Vietnam,Thailand', 'Dhaka,Gazipur,Mymensingh,Narayanganj,Bandarban,Chittagong,Comilla,Cox\'s Bazar,Feni,Rangamati', NULL, 'Level 4, Satish Mohajon Buiding, Mohajon Ghata, Patenga, Chittagong, Bangladesh,', 'Managing Windows Server & Network Infrastructure,PMS Implementation.,Microsoft Exchange Server Administration,Mikrotik Router Administration,Disaster & Recovery,CCTV,PABX,POS,Access Controll,PA System,Antivirus,Door Lock,Bio Metric Device Administration,ERP Implementation', 'A highly experienced IT Professional with good all-around Supervisory & Technical expertise and successful skill in both Corporate Label and Hospitality Sector. Very capable with a proven ability to ensure the smooth running of ICT systems and to provide IT services that will improve the efficiency and performance of a company. Extensive practical knowledge of complex systems builds, hardware and software testing, network support, technical support, and troubleshooting.\r\n\r\nLooking for a role where I will make the best use of my existing skills further, researching new technologies and reveling in new challenges.\r\n\r\nSpecialization:\r\nOver 14 years of experience in the areas of Windows Server Management, Domain Controller & Group Policy, System Administration, ERP Administration ( WFX , STAGE ) , MS Exchange Server Administration, VMware, IT Strategies and Policies, IT Security Control and Compliance, Hospitality IT Management, Property Management System Implementation, Backup & Disaster Recovery Planning, Technical Training and Documentation.\r\n\r\nMicrosoft Certification:\r\n-MCP Microsoft Certified Professional\r\n-Implementing, Managing and Maintaining a Microsoft Windows Server Network Infrastructure.\r\n-Implementing and Managing Microsoft Exchange Server.\r\n\r\nCISCO Certification:\r\n- CCNA Cisco Certified Network Associate', 'public/uploads/cv/pdf/Sumon Kumar Sutra Dhar Profile_40.pdf', NULL, '9e02b3665f8a9f1b21a3ae3267d169dd', NULL, NULL, 'Approve', NULL, 'Uttara,Mirpur,Badda,Dhanmondi,Chittagong,Sylhet,Coxesbazar', '2005-09-01 00:00:00', NULL, NULL, 'MS in CSIT', '3.67', 'Bangla,English,Hindi', 'public/uploads/candidate/profile/Linkedin Picture.jpg', 'Married', '', 'Bangladesh', 'Bangladesh', 'Chittagong', 'Feni', 'Badhadia, Motihonj, Sonagazi', '70,000 Taka', 'Negotiable', 'IT', 'https://www.linkedin.com/in/sdsumon/', NULL, '', 1, '2019-10-06 23:17:19', '2019-10-14 22:47:41'),
(41, 'bangladeshi_consultant', 'Jisan Ahmed', 'jisanahmed06@gmail.com', '01832967276', 'Male', '1970-01-16 00:00:00', 'Md Kamruzzaman', 'Kazal Rekha', 'Islam', 'Buying House,Software', 'Marketing,Sales', 'Australia,', 'Dhaka,', NULL, 'Dhaka', 'PHP,Javascript', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'public/uploads/cv/pdf/job_portal_dd_.pdf', NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, 'Approve', NULL, 'Uttara', '1970-01-01 00:00:00', NULL, NULL, 'BSC in CSE', '3.75', 'Bangla,English,Hindi', 'public/uploads/candidate/profile/Man-PNG-Pic.png', 'Unmarried', '', 'Bangladesh', NULL, 'Dhaka', NULL, NULL, NULL, NULL, 'Science', 'jisan006', NULL, '998835572', 1, '2019-10-06 23:36:36', '2019-10-16 23:29:55');

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cv` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `categoryName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryCoverImage` text COLLATE utf8mb4_unicode_ci,
  `categoryImage` text COLLATE utf8mb4_unicode_ci,
  `categoryStatus` tinyint(1) NOT NULL DEFAULT '1',
  `parent` text COLLATE utf8mb4_unicode_ci,
  `showInHomepage` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metaTitle` text COLLATE utf8mb4_unicode_ci,
  `metaKeyword` text COLLATE utf8mb4_unicode_ci,
  `metaDescription` text COLLATE utf8mb4_unicode_ci,
  `orderBy` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryName`, `categoryCoverImage`, `categoryImage`, `categoryStatus`, `parent`, `showInHomepage`, `metaTitle`, `metaKeyword`, `metaDescription`, `orderBy`, `created_at`, `updated_at`) VALUES
(23, 'Agriculture', '', '', 1, NULL, NULL, NULL, NULL, NULL, 1, '2019-07-20 16:13:25', '2019-10-06 08:06:31'),
(25, 'Buying House', NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 3, '2019-09-23 03:16:11', '2019-09-27 22:31:33'),
(29, 'Software', NULL, NULL, 1, '42', NULL, NULL, NULL, NULL, 1, '2019-09-24 04:56:52', '2019-09-27 22:46:57'),
(30, 'Design/Architect', NULL, NULL, 1, '42', NULL, NULL, NULL, NULL, 2, '2019-09-24 22:20:11', '2019-09-27 22:47:35'),
(32, 'Architects', NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 2, '2019-09-27 22:32:14', '2019-09-27 22:32:36'),
(33, 'Bank', NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 3, '2019-09-27 22:33:10', '2019-09-27 22:35:03'),
(34, 'Consultancy', NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 5, '2019-09-27 22:33:36', '2019-09-27 22:35:27'),
(35, 'Customer Service', NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 6, '2019-09-27 22:34:01', '2019-09-27 22:35:50'),
(36, 'Engineer', NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 7, '2019-09-27 22:34:14', '2019-09-27 22:35:47'),
(37, 'Finance', NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 8, '2019-09-27 22:36:55', '2019-09-27 22:36:55'),
(38, 'Garments', NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 9, '2019-09-27 22:37:20', '2019-09-27 22:37:20'),
(39, 'General Manager', NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 10, '2019-09-27 22:37:44', '2019-09-27 22:37:44'),
(40, 'Hospitality', NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 11, '2019-09-27 22:38:09', '2019-09-27 22:38:09'),
(41, 'Human Resources', NULL, NULL, 1, '41', NULL, NULL, NULL, NULL, NULL, '2019-09-27 22:38:34', '2019-10-07 04:29:27'),
(42, 'Information Technology', NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 13, '2019-09-27 22:39:08', '2019-09-27 22:39:08'),
(43, 'Ladies Cosmetics', NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 14, '2019-09-27 22:39:32', '2019-09-27 22:39:32'),
(44, 'Legal', NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 15, '2019-09-27 22:39:50', '2019-09-27 22:39:50'),
(45, 'Marketing', NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 16, '2019-09-27 22:40:08', '2019-09-27 22:40:08'),
(46, 'NGO', NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 17, '2019-09-27 22:40:38', '2019-09-27 22:40:38'),
(47, 'Pharmaceuticals', NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, '2019-09-27 22:42:04', '2019-09-27 22:42:04'),
(49, 'Sales', NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 20, '2019-09-27 22:42:58', '2019-09-27 22:42:58'),
(50, 'Sales', NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 21, '2019-09-27 22:43:18', '2019-09-27 22:43:18'),
(51, 'Supply Chain', NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 22, '2019-09-27 22:43:38', '2019-09-27 22:43:38'),
(52, 'Telecommunications', NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 23, '2019-09-27 22:44:59', '2019-09-27 22:44:59'),
(53, 'Training', NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 24, '2019-09-27 22:45:19', '2019-09-27 22:45:19'),
(54, 'Pesticides', NULL, NULL, 1, '23', NULL, NULL, NULL, NULL, 1, '2019-09-27 23:15:51', '2019-09-27 23:15:51'),
(55, 'Branding', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, '2019-10-06 02:22:34', '2019-10-06 02:22:34'),
(56, 'Retail Marketing', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 3, '2019-10-06 02:22:34', '2019-10-06 02:22:34'),
(57, 'Expat', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-17 03:28:29', '2019-10-17 03:28:29'),
(58, 'Garments', NULL, NULL, 1, '57', NULL, NULL, NULL, NULL, NULL, '2019-10-17 03:29:11', '2019-10-17 03:29:11'),
(59, 'FMCG', NULL, NULL, 1, '57', NULL, NULL, NULL, NULL, NULL, '2019-10-17 03:29:39', '2019-10-17 03:29:39'),
(60, 'Solar', NULL, NULL, 1, '57', NULL, NULL, NULL, NULL, NULL, '2019-10-17 03:29:53', '2019-10-17 03:29:53');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `logo_main` text,
  `logo_small` text,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `prefix` varchar(100) DEFAULT NULL,
  `address` text,
  `tnt_no` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` text,
  `user_name` varchar(255) DEFAULT NULL,
  `business_sector` varchar(255) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `contact_person_designation` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `user_id`, `logo_main`, `logo_small`, `name`, `description`, `prefix`, `address`, `tnt_no`, `mobile_no`, `website`, `email`, `user_name`, `business_sector`, `contact_person`, `contact_person_designation`, `status`, `created_at`, `updated_at`) VALUES
(1, 12, 'public/uploads/company/main_logo/2019_09_17_04_28_10_000000-mL1fMgj5BOkihVf4hogf_AIMESBD.jpg', 'public/uploads/company/small_logo/logo_small_AIMESBD.png', 'AIMESBD', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English', NULL, 'Dhaka', '123456', '019385865578', 'https://aimesbd.com', 'asd@gmail.com', 'test', '23', 'abc', 'abc', 1, '2019-09-18 23:25:46', '2019-10-07 01:37:59'),
(3, 11, 'public/uploads/company/main_logo/SoftTech-IT-logo_SoftTech It_Softech It.png', NULL, 'Softech It', NULL, NULL, 'Uttara,Dhaka', NULL, '019483485454', 'SoftTech-IT.com', 'soft@gmail.com', 'softtechit', '42', NULL, NULL, 1, '2019-10-03 05:55:56', '2019-10-03 05:55:56'),
(4, 13, 'public/uploads/company/main_logo/2019_09_17_04_28_10_000000-mL1fMgj5BOkihVf4hogf_AIMESBD_demo.jpg', NULL, 'demo', 'demo', NULL, 'demo', 'demo', 'demo', 'demo', 'sehartanveer28@gmail.com', 'sehartanveer', '23', 'demo', 'demo', 1, '2019-10-15 05:21:26', '2019-10-15 05:21:26');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `contactName` text COLLATE utf8mb4_unicode_ci,
  `contactPhone` text COLLATE utf8mb4_unicode_ci,
  `contactEmail` text COLLATE utf8mb4_unicode_ci,
  `contactAddress` text COLLATE utf8mb4_unicode_ci,
  `contactTitle` text COLLATE utf8mb4_unicode_ci,
  `contactMessage` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `contactName`, `contactPhone`, `contactEmail`, `contactAddress`, `contactTitle`, `contactMessage`, `created_at`, `updated_at`) VALUES
(1, 'Jisan Ahmed', '0178454454', 'jisan@gmail.com', NULL, 'Test', 'heloo', '2019-11-17 21:59:11', '2019-11-17 21:59:11');

-- --------------------------------------------------------

--
-- Table structure for table `contactuses`
--

CREATE TABLE `contactuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new-message',
  `metaTitle` text COLLATE utf8mb4_unicode_ci,
  `metaKeyword` text COLLATE utf8mb4_unicode_ci,
  `metaDescription` text COLLATE utf8mb4_unicode_ci,
  `orderBy` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `prefix` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `prefix`, `status`, `created_at`, `updated_at`) VALUES
(13, 'Australia', 'AUS', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(14, 'Austria', 'AUT', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(17, 'Bahrain', 'BHR', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(18, 'Bangladesh', 'BD', 1, '2019-05-13 11:35:21', '2019-07-10 12:46:16'),
(21, 'Belgium', 'BEL', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(25, 'Bhutan', 'BTN', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(36, 'Cambodia', 'KHM', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(37, 'Cameroon', 'CMR', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(38, 'Canada', 'CAN', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(44, 'China', 'CN', 1, '2019-05-13 11:35:21', '2019-07-10 12:45:56'),
(73, 'France', 'FRA', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(76, 'French Polynesia', 'PYF', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(81, 'Germany', 'DEU', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(98, 'Iceland', 'ISL', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(99, 'India', 'IND', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(100, 'Indonesia', 'IDN', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(105, 'Italy', 'ITA', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(107, 'Japan', 'JPN', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(112, 'North Korea', 'PRK', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(114, 'Kuwait', 'KWT', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(129, 'Malaysia', 'MY', 1, '2019-05-13 11:35:24', '2019-07-10 12:57:30'),
(138, 'Mexico', 'MEX', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(149, 'Nepal', 'NPL', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(150, 'Netherlands', 'NLD', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(153, 'New Zealand', 'NZL', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(161, 'Oman', 'OMN', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(162, 'Pakistan', 'PK', 1, '2019-05-13 11:35:25', '2019-07-10 12:48:46'),
(173, 'Qatar', 'QAT', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(184, 'Saudi Arabia', 'SAU', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(188, 'Singapore', 'SGP', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(193, 'South Africa', 'ZAF', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(195, 'Spain', 'ESP', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(222, 'United Kingdom', 'GBR', 1, '2019-05-13 11:35:27', '2019-05-13 11:35:27'),
(223, 'United States', 'USA', 1, '2019-05-13 11:35:27', '2019-05-13 11:35:27'),
(240, 'Vietnam', 'VN', 1, '2019-05-13 11:35:27', '2019-07-10 12:47:57'),
(241, NULL, NULL, NULL, '2019-10-02 05:17:32', '2019-10-02 05:17:32');

-- --------------------------------------------------------

--
-- Table structure for table `country_backup`
--

CREATE TABLE `country_backup` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `prefix` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country_backup`
--

INSERT INTO `country_backup` (`id`, `name`, `prefix`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'AF', 1, '2019-05-13 11:35:20', '2019-07-10 12:45:25'),
(2, 'Albania', 'ALB', 1, '2019-05-13 11:35:20', '2019-05-13 11:35:20'),
(3, 'Algeria', 'DZA', 1, '2019-05-13 11:35:20', '2019-05-13 11:35:20'),
(4, 'American Samoa', 'ASM', 1, '2019-05-13 11:35:20', '2019-05-13 11:35:20'),
(5, 'Andorra', 'AND', 1, '2019-05-13 11:35:20', '2019-05-13 11:35:20'),
(6, 'Angola', 'AGO', 1, '2019-05-13 11:35:20', '2019-05-13 11:35:20'),
(7, 'Anguilla', 'AIA', 1, '2019-05-13 11:35:20', '2019-05-13 11:35:20'),
(8, 'Antarctica', 'ATA', 1, '2019-05-13 11:35:20', '2019-05-13 11:35:20'),
(9, 'Antigua and Barbuda', 'ATG', 1, '2019-05-13 11:35:20', '2019-05-13 11:35:20'),
(10, 'Argentina', 'ARG', 1, '2019-05-13 11:35:20', '2019-05-13 11:35:20'),
(11, 'Armenia', 'ARM', 1, '2019-05-13 11:35:20', '2019-05-13 11:35:20'),
(12, 'Aruba', 'ABW', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(13, 'Australia', 'AUS', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(14, 'Austria', 'AUT', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(15, 'Azerbaijan', 'AZE', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(16, 'Bahamas', 'BHS', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(17, 'Bahrain', 'BHR', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(18, 'Bangladesh', 'BD', 1, '2019-05-13 11:35:21', '2019-07-10 12:46:16'),
(19, 'Barbados', 'BRB', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(20, 'Belarus', 'BLR', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(21, 'Belgium', 'BEL', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(22, 'Belize', 'BLZ', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(23, 'Benin', 'BEN', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(24, 'Bermuda', 'BMU', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(25, 'Bhutan', 'BTN', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(26, 'Bolivia', 'BOL', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(27, 'Bosnia and Herzegowina', 'BIH', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(28, 'Botswana', 'BWA', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(29, 'Bouvet Island', 'BVT', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(30, 'Brazil', 'BRA', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(31, 'British Indian Ocean Territory', 'IOT', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(32, 'Brunei Darussalam', 'BRN', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(33, 'Bulgaria', 'BGR', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(34, 'Burkina Faso', 'BFA', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(35, 'Burundi', 'BDI', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(36, 'Cambodia', 'KHM', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(37, 'Cameroon', 'CMR', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(38, 'Canada', 'CAN', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(39, 'Cape Verde', 'CPV', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(40, 'Cayman Islands', 'CYM', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(41, 'Central African Republic', 'CAF', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(42, 'Chad', 'TCD', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(43, 'Chile', 'CHL', 1, '2019-05-13 11:35:21', '2019-05-13 11:35:21'),
(44, 'China', 'CN', 1, '2019-05-13 11:35:21', '2019-07-10 12:45:56'),
(45, 'Christmas Island', 'CXR', 1, '2019-05-13 11:35:22', '2019-05-13 11:35:22'),
(46, 'Cocos (Keeling) Islands', 'CCK', 1, '2019-05-13 11:35:22', '2019-05-13 11:35:22'),
(47, 'Colombia', 'COL', 1, '2019-05-13 11:35:22', '2019-05-13 11:35:22'),
(48, 'Comoros', 'COM', 1, '2019-05-13 11:35:22', '2019-05-13 11:35:22'),
(49, 'Congo', 'COG', 1, '2019-05-13 11:35:22', '2019-05-13 11:35:22'),
(50, 'Cook Islands', 'COK', 1, '2019-05-13 11:35:22', '2019-05-13 11:35:22'),
(51, 'Costa Rica', 'CRI', 1, '2019-05-13 11:35:22', '2019-05-13 11:35:22'),
(52, 'Cote D\'Ivoire', 'CIV', 1, '2019-05-13 11:35:22', '2019-05-13 11:35:22'),
(53, 'Croatia', 'HRV', 1, '2019-05-13 11:35:22', '2019-05-13 11:35:22'),
(54, 'Cuba', 'CUB', 1, '2019-05-13 11:35:22', '2019-05-13 11:35:22'),
(55, 'Cyprus', 'CYP', 1, '2019-05-13 11:35:22', '2019-05-13 11:35:22'),
(56, 'Czech Republic', 'CZE', 1, '2019-05-13 11:35:22', '2019-05-13 11:35:22'),
(57, 'Denmark', 'DNK', 1, '2019-05-13 11:35:22', '2019-05-13 11:35:22'),
(58, 'Djibouti', 'DJI', 1, '2019-05-13 11:35:22', '2019-05-13 11:35:22'),
(59, 'Dominica', 'DMA', 1, '2019-05-13 11:35:22', '2019-05-13 11:35:22'),
(60, 'Dominican Republic', 'DOM', 1, '2019-05-13 11:35:22', '2019-05-13 11:35:22'),
(61, 'East Timor', 'TMP', 1, '2019-05-13 11:35:22', '2019-05-13 11:35:22'),
(62, 'Ecuador', 'ECU', 1, '2019-05-13 11:35:22', '2019-05-13 11:35:22'),
(63, 'Egypt', 'EGY', 1, '2019-05-13 11:35:22', '2019-05-13 11:35:22'),
(64, 'El Salvador', 'SLV', 1, '2019-05-13 11:35:22', '2019-05-13 11:35:22'),
(65, 'Equatorial Guinea', 'GNQ', 1, '2019-05-13 11:35:22', '2019-05-13 11:35:22'),
(66, 'Eritrea', 'ERI', 1, '2019-05-13 11:35:22', '2019-05-13 11:35:22'),
(67, 'Estonia', 'EST', 1, '2019-05-13 11:35:22', '2019-05-13 11:35:22'),
(68, 'Ethiopia', 'ETH', 1, '2019-05-13 11:35:22', '2019-05-13 11:35:22'),
(69, 'Falkland Islands (Malvinas)', 'FLK', 1, '2019-05-13 11:35:22', '2019-05-13 11:35:22'),
(70, 'Faroe Islands', 'FRO', 1, '2019-05-13 11:35:22', '2019-05-13 11:35:22'),
(71, 'Fiji', 'FJI', 1, '2019-05-13 11:35:22', '2019-05-13 11:35:22'),
(72, 'Finland', 'FIN', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(73, 'France', 'FRA', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(74, 'France, Metropolitan', 'FXX', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(75, 'French Guiana', 'GUF', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(76, 'French Polynesia', 'PYF', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(77, 'French Southern Territories', 'ATF', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(78, 'Gabon', 'GAB', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(79, 'Gambia', 'GMB', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(80, 'Georgia', 'GEO', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(81, 'Germany', 'DEU', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(82, 'Ghana', 'GHA', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(83, 'Gibraltar', 'GIB', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(84, 'Greece', 'GRC', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(85, 'Greenland', 'GRL', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(86, 'Grenada', 'GRD', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(87, 'Guadeloupe', 'GLP', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(88, 'Guam', 'GUM', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(89, 'Guatemala', 'GTM', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(90, 'Guinea', 'GIN', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(91, 'Guinea-bissau', 'GNB', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(92, 'Guyana', 'GUY', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(93, 'Haiti', 'HTI', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(94, 'Heard and Mc Donald Islands', 'HMD', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(95, 'Honduras', 'HND', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(96, 'Hong Kong', 'HK', 1, '2019-05-13 11:35:23', '2019-07-10 12:46:41'),
(97, 'Hungary', 'HUN', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(98, 'Iceland', 'ISL', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(99, 'India', 'IND', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(100, 'Indonesia', 'IDN', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(101, 'Iran (Islamic Republic of)', 'IRN', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(102, 'Iraq', 'IRQ', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(103, 'Ireland', 'IRL', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(104, 'Israel', 'ISR', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(105, 'Italy', 'ITA', 1, '2019-05-13 11:35:23', '2019-05-13 11:35:23'),
(106, 'Jamaica', 'JAM', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(107, 'Japan', 'JPN', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(108, 'Jordan', 'JOR', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(109, 'Kazakhstan', 'KAZ', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(110, 'Kenya', 'KEN', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(111, 'Kiribati', 'KIR', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(112, 'North Korea', 'PRK', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(113, 'Korea, Republic of', 'KOR', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(114, 'Kuwait', 'KWT', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(115, 'Kyrgyzstan', 'KGZ', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(116, 'Lao People\'s Democratic Republic', 'LAO', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(117, 'Latvia', 'LVA', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(118, 'Lebanon', 'LBN', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(119, 'Lesotho', 'LSO', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(120, 'Liberia', 'LBR', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(121, 'Libyan Arab Jamahiriya', 'LBY', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(122, 'Liechtenstein', 'LIE', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(123, 'Lithuania', 'LTU', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(124, 'Luxembourg', 'LUX', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(125, 'Macau', 'MAC', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(126, 'Macedonia', 'MKD', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(127, 'Madagascar', 'MDG', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(128, 'Malawi', 'MWI', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(129, 'Malaysia', 'MY', 1, '2019-05-13 11:35:24', '2019-07-10 12:57:30'),
(130, 'Maldives', 'MDV', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(131, 'Mali', 'MLI', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(132, 'Malta', 'MLT', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(133, 'Marshall Islands', 'MHL', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(134, 'Martinique', 'MTQ', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(135, 'Mauritania', 'MRT', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(136, 'Mauritius', 'MUS', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(137, 'Mayotte', 'MYT', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(138, 'Mexico', 'MEX', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(139, 'Micronesia, Federated States of', 'FSM', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(140, 'Moldova, Republic of', 'MDA', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(141, 'Monaco', 'MCO', 1, '2019-05-13 11:35:24', '2019-05-13 11:35:24'),
(142, 'Mongolia', 'MNG', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(143, 'Montserrat', 'MSR', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(144, 'Morocco', 'MAR', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(145, 'Mozambique', 'MOZ', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(146, 'Myanmar', 'MMR', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(147, 'Namibia', 'NAM', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(148, 'Nauru', 'NRU', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(149, 'Nepal', 'NPL', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(150, 'Netherlands', 'NLD', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(151, 'Netherlands Antilles', 'ANT', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(152, 'New Caledonia', 'NCL', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(153, 'New Zealand', 'NZL', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(154, 'Nicaragua', 'NIC', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(155, 'Niger', 'NER', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(156, 'Nigeria', 'NGA', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(157, 'Niue', 'NIU', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(158, 'Norfolk Island', 'NFK', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(159, 'Northern Mariana Islands', 'MNP', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(160, 'Norway', 'NOR', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(161, 'Oman', 'OMN', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(162, 'Pakistan', 'PK', 1, '2019-05-13 11:35:25', '2019-07-10 12:48:46'),
(163, 'Palau', 'PLW', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(164, 'Panama', 'PAN', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(165, 'Papua New Guinea', 'PNG', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(166, 'Paraguay', 'PRY', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(167, 'Peru', 'PER', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(168, 'Philippines', 'PHL', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(169, 'Pitcairn', 'PCN', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(170, 'Poland', 'POL', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(171, 'Portugal', 'PRT', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(172, 'Puerto Rico', 'PRI', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(173, 'Qatar', 'QAT', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(174, 'Reunion', 'REU', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(175, 'Romania', 'ROM', 1, '2019-05-13 11:35:25', '2019-05-13 11:35:25'),
(176, 'Russian Federation', 'RUS', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(177, 'Rwanda', 'RWA', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(178, 'Saint Kitts and Nevis', 'KNA', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(179, 'Saint Lucia', 'LCA', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(180, 'Saint Vincent and the Grenadines', 'VCT', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(181, 'Samoa', 'WSM', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(182, 'San Marino', 'SMR', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(183, 'Sao Tome and Principe', 'STP', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(184, 'Saudi Arabia', 'SAU', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(185, 'Senegal', 'SEN', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(186, 'Seychelles', 'SYC', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(187, 'Sierra Leone', 'SLE', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(188, 'Singapore', 'SGP', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(189, 'Slovak Republic', 'SVK', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(190, 'Slovenia', 'SVN', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(191, 'Solomon Islands', 'SLB', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(192, 'Somalia', 'SOM', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(193, 'South Africa', 'ZAF', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(194, 'South Georgia & South Sandwich Islands', 'SGS', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(195, 'Spain', 'ESP', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(196, 'Sri Lanka', 'LKA', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(197, 'St. Helena', 'SHN', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(198, 'St. Pierre and Miquelon', 'SPM', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(199, 'Sudan', 'SDN', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(200, 'Suriname', 'SUR', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(201, 'Svalbard and Jan Mayen Islands', 'SJM', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(202, 'Swaziland', 'SWZ', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(203, 'Sweden', 'SWE', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(204, 'Switzerland', 'CHE', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(205, 'Syrian Arab Republic', 'SYR', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(206, 'Taiwan', 'TW', 1, '2019-05-13 11:35:26', '2019-07-10 12:47:02'),
(207, 'Tajikistan', 'TJK', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(208, 'Tanzania, United Republic of', 'TZA', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(209, 'Thailand', 'THA', 1, '2019-05-13 11:35:26', '2019-05-13 11:35:26'),
(210, 'Togo', 'TGO', 1, '2019-05-13 11:35:27', '2019-05-13 11:35:27'),
(211, 'Tokelau', 'TKL', 1, '2019-05-13 11:35:27', '2019-05-13 11:35:27'),
(212, 'Tonga', 'TON', 1, '2019-05-13 11:35:27', '2019-05-13 11:35:27'),
(213, 'Trinidad and Tobago', 'TTO', 1, '2019-05-13 11:35:27', '2019-05-13 11:35:27'),
(214, 'Tunisia', 'TUN', 1, '2019-05-13 11:35:27', '2019-05-13 11:35:27'),
(215, 'Turkey', 'TUR', 1, '2019-05-13 11:35:27', '2019-05-13 11:35:27'),
(216, 'Turkmenistan', 'TKM', 1, '2019-05-13 11:35:27', '2019-05-13 11:35:27'),
(217, 'Turks and Caicos Islands', 'TCA', 1, '2019-05-13 11:35:27', '2019-05-13 11:35:27'),
(218, 'Tuvalu', 'TUV', 1, '2019-05-13 11:35:27', '2019-05-13 11:35:27'),
(219, 'Uganda', 'UGA', 1, '2019-05-13 11:35:27', '2019-05-13 11:35:27'),
(220, 'Ukraine', 'UKR', 1, '2019-05-13 11:35:27', '2019-05-13 11:35:27'),
(221, 'United Arab Emirates', 'ARE', 1, '2019-05-13 11:35:27', '2019-05-13 11:35:27'),
(222, 'United Kingdom', 'GBR', 1, '2019-05-13 11:35:27', '2019-05-13 11:35:27'),
(223, 'United States', 'USA', 1, '2019-05-13 11:35:27', '2019-05-13 11:35:27'),
(224, 'United States Minor Outlying Islands', 'UMI', 1, '2019-05-13 11:35:27', '2019-05-13 11:35:27'),
(225, 'Uruguay', 'URY', 1, '2019-05-13 11:35:27', '2019-05-13 11:35:27'),
(226, 'Uzbekistan', 'UZB', 1, '2019-05-13 11:35:27', '2019-05-13 11:35:27'),
(227, 'Vanuatu', 'VUT', 1, '2019-05-13 11:35:27', '2019-05-13 11:35:27'),
(228, 'Vatican City State (Holy See)', 'VAT', 1, '2019-05-13 11:35:27', '2019-05-13 11:35:27'),
(229, 'Venezuela', 'VEN', 1, '2019-05-13 11:35:27', '2019-05-13 11:35:27'),
(230, 'Viet Nam', 'VNM', 1, '2019-05-13 11:35:27', '2019-05-13 11:35:27'),
(231, 'Virgin Islands (British)', 'VGB', 1, '2019-05-13 11:35:27', '2019-05-13 11:35:27'),
(232, 'Virgin Islands (U.S.)', 'VIR', 1, '2019-05-13 11:35:27', '2019-05-13 11:35:27'),
(233, 'Wallis and Futuna Islands', 'WLF', 1, '2019-05-13 11:35:27', '2019-05-13 11:35:27'),
(234, 'Western Sahara', 'ESH', 1, '2019-05-13 11:35:27', '2019-05-13 11:35:27'),
(235, 'Yemen', 'YEM', 1, '2019-05-13 11:35:27', '2019-05-13 11:35:27'),
(236, 'Yugoslavia', 'YUG', 1, '2019-05-13 11:35:27', '2019-05-13 11:35:27'),
(237, 'Zaire', 'ZAR', 1, '2019-05-13 11:35:27', '2019-05-13 11:35:27'),
(238, 'Zambia', 'ZMB', 1, '2019-05-13 11:35:27', '2019-05-13 11:35:27'),
(239, 'Zimbabwe', 'ZWE', 1, '2019-05-13 11:35:27', '2019-05-13 11:35:27'),
(240, 'Vietnam', 'VN', 1, '2019-05-13 11:35:27', '2019-07-10 12:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `category_id` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Marketing', '29,54', 1, '2019-09-28 09:35:54', '2019-09-29 03:59:13'),
(3, 'Sales', '54', 1, '2019-09-29 03:58:11', '2019-10-01 07:07:57'),
(4, 'Production', '54', 1, '2019-10-01 07:07:18', '2019-10-01 07:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `id` int(11) UNSIGNED NOT NULL,
  `department_id` varchar(100) DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`id`, `department_id`, `name`, `created_at`, `updated_at`) VALUES
(2, NULL, 'Programmer', '2019-09-18 11:11:00', '2019-09-29 03:59:56'),
(3, '2', 'Marketing Manager', '2019-09-28 11:05:22', '2019-09-29 05:18:28'),
(4, '2', 'Brand Manager', '2019-09-28 11:05:37', '2019-09-29 05:18:35'),
(5, '2,4', 'Product Manager', '2019-09-29 04:01:15', '2019-10-01 07:26:59'),
(6, '2', 'Product Development', '2019-09-29 04:50:52', '2019-09-29 04:50:52'),
(7, '2', 'Administration', '2019-10-01 07:26:04', '2019-10-01 07:26:04');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(2) UNSIGNED NOT NULL,
  `division_id` int(2) UNSIGNED DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `bn_name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `name`, `bn_name`, `created_at`, `updated_at`) VALUES
(1, 3, 'Dhaka', 'ঢাকা', NULL, NULL),
(2, 3, 'Faridpur', 'ফরিদপুর', NULL, NULL),
(3, 3, 'Gazipur', 'গাজীপুর', NULL, NULL),
(4, 3, 'Gopalganj', 'গোপালগঞ্জ', NULL, NULL),
(5, 3, 'Jamalpur', 'জামালপুর', NULL, NULL),
(6, 3, 'Kishoreganj', 'কিশোরগঞ্জ', NULL, NULL),
(7, 3, 'Madaripur', 'মাদারীপুর', NULL, NULL),
(8, 3, 'Manikganj', 'মানিকগঞ্জ', NULL, NULL),
(9, 3, 'Munshiganj', 'মুন্সিগঞ্জ', NULL, NULL),
(10, 3, 'Mymensingh', 'ময়মনসিং', NULL, NULL),
(11, 3, 'Narayanganj', 'নারায়াণগঞ্জ', NULL, NULL),
(12, 3, 'Narsingdi', 'নরসিংদী', NULL, NULL),
(13, 3, 'Netrokona', 'নেত্রকোনা', NULL, NULL),
(14, 3, 'Rajbari', 'রাজবাড়ি', NULL, NULL),
(15, 3, 'Shariatpur', 'শরীয়তপুর', NULL, NULL),
(16, 3, 'Sherpur', 'শেরপুর', NULL, NULL),
(17, 3, 'Tangail', 'টাঙ্গাইল', NULL, NULL),
(18, 5, 'Bogra', 'বগুড়া', NULL, NULL),
(19, 5, 'Joypurhat', 'জয়পুরহাট', NULL, NULL),
(20, 5, 'Naogaon', 'নওগাঁ', NULL, NULL),
(21, 5, 'Natore', 'নাটোর', NULL, NULL),
(22, 5, 'Nawabganj', 'নবাবগঞ্জ', NULL, NULL),
(23, 5, 'Pabna', 'পাবনা', NULL, NULL),
(24, 5, 'Rajshahi', 'রাজশাহী', NULL, NULL),
(25, 5, 'Sirajgonj', 'সিরাজগঞ্জ', NULL, NULL),
(26, 6, 'Dinajpur', 'দিনাজপুর', NULL, NULL),
(27, 6, 'Gaibandha', 'গাইবান্ধা', NULL, NULL),
(28, 6, 'Kurigram', 'কুড়িগ্রাম', NULL, NULL),
(29, 6, 'Lalmonirhat', 'লালমনিরহাট', NULL, NULL),
(30, 6, 'Nilphamari', 'নীলফামারী', NULL, NULL),
(31, 6, 'Panchagarh', 'পঞ্চগড়', NULL, NULL),
(32, 6, 'Rangpur', 'রংপুর', NULL, NULL),
(33, 6, 'Thakurgaon', 'ঠাকুরগাঁও', NULL, NULL),
(34, 1, 'Barguna', 'বরগুনা', NULL, NULL),
(35, 1, 'Barisal', 'বরিশাল', NULL, NULL),
(36, 1, 'Bhola', 'ভোলা', NULL, NULL),
(37, 1, 'Jhalokati', 'ঝালকাঠি', NULL, NULL),
(38, 1, 'Patuakhali', 'পটুয়াখালী', NULL, NULL),
(39, 1, 'Pirojpur', 'পিরোজপুর', NULL, NULL),
(40, 2, 'Bandarban', 'বান্দরবান', NULL, NULL),
(41, 2, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', NULL, NULL),
(42, 2, 'Chandpur', 'চাঁদপুর', NULL, NULL),
(43, 2, 'Chittagong', 'চট্টগ্রাম', NULL, NULL),
(44, 2, 'Comilla', 'কুমিল্লা', NULL, NULL),
(45, 2, 'Cox\'s Bazar', 'কক্স বাজার', NULL, NULL),
(46, 2, 'Feni', 'ফেনী', NULL, NULL),
(47, 2, 'Khagrachari', 'খাগড়াছড়ি', NULL, NULL),
(48, 2, 'Lakshmipur', 'লক্ষ্মীপুর', NULL, NULL),
(49, 2, 'Noakhali', 'নোয়াখালী', NULL, NULL),
(50, 2, 'Rangamati', 'রাঙ্গামাটি', NULL, NULL),
(51, 7, 'Habiganj', 'হবিগঞ্জ', NULL, NULL),
(52, 7, 'Maulvibazar', 'মৌলভীবাজার', NULL, NULL),
(53, 7, 'Sunamganj', 'সুনামগঞ্জ', NULL, NULL),
(54, 7, 'Sylhet', 'সিলেট', NULL, NULL),
(55, 4, 'Bagerhat', 'বাগেরহাট', NULL, NULL),
(56, 4, 'Chuadanga', 'চুয়াডাঙ্গা', NULL, NULL),
(57, 4, 'Jessore', 'যশোর', NULL, NULL),
(58, 4, 'Jhenaidah', 'ঝিনাইদহ', NULL, NULL),
(59, 4, 'Khulna', 'খুলনা', NULL, NULL),
(60, 4, 'Kushtia', 'কুষ্টিয়া', NULL, NULL),
(61, 4, 'Magura', 'মাগুরা', NULL, NULL),
(62, 4, 'Meherpur', 'মেহেরপুর', NULL, NULL),
(63, 4, 'Narail', 'নড়াইল', NULL, NULL),
(64, 4, 'Satkhira', 'সাতক্ষীরা', NULL, NULL),
(65, NULL, 'new', NULL, '2019-10-01 05:04:40', '2019-10-01 05:04:40'),
(66, NULL, NULL, NULL, '2019-10-01 23:17:32', '2019-10-01 23:17:32'),
(67, NULL, 'Ho Chi Minh', NULL, '2019-10-13 05:10:07', '2019-10-13 05:10:07');

-- --------------------------------------------------------

--
-- Table structure for table `educations`
--

CREATE TABLE `educations` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `educations`
--

INSERT INTO `educations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'BSC in CSE', '2019-09-30 05:21:46', '2019-09-30 05:21:46'),
(3, 'BSC in EEE', '2019-09-30 05:21:55', '2019-09-30 05:21:55'),
(4, 'BBA', '2019-09-30 05:22:13', '2019-09-30 05:22:13'),
(5, 'BA', '2019-09-30 07:37:24', '2019-09-30 07:37:24'),
(6, 'Math', '2019-09-30 10:14:12', '2019-09-30 10:14:12'),
(8, 'MSc in EEE', '2019-10-03 12:10:04', '2019-10-03 12:10:04'),
(9, 'MBA', '2019-10-15 05:51:34', '2019-10-15 05:51:34');

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `id` int(11) UNSIGNED NOT NULL,
  `experience_range` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`id`, `experience_range`, `created_at`, `updated_at`) VALUES
(5, 'Freshers', '2019-09-19 07:32:10', '2019-09-19 07:32:10'),
(6, '1-2', '2019-09-19 08:45:26', '2019-09-19 08:45:26');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `metaTitle` text COLLATE utf8mb4_unicode_ci,
  `metaKeyword` text COLLATE utf8mb4_unicode_ci,
  `metaDescription` text COLLATE utf8mb4_unicode_ci,
  `orderBy` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Male', '2019-10-01 10:01:14', '2019-10-01 10:01:14'),
(2, 'Female', '2019-10-01 10:01:29', '2019-10-01 10:01:29'),
(3, NULL, '2019-10-03 12:14:59', '2019-10-03 12:14:59');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoiceId` int(11) NOT NULL,
  `orderId` text COLLATE utf8mb4_unicode_ci,
  `productCode` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `productName` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `productQuantity` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `productPrice` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `productAmount` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoiceId`, `orderId`, `productCode`, `productName`, `productQuantity`, `productPrice`, `productAmount`, `created_at`, `updated_at`) VALUES
(9, 27, '28', 'BS-1001', 'Bed sheet', '2', '2250', '4500', '2019-06-16 05:51:53', '2019-06-16 05:51:53'),
(10, 27, '27', 'TC-1001', 'Allahu Akbar', '1', '2750', '2750', '2019-06-16 06:42:54', '2019-06-16 06:42:54'),
(12, 31, '30', 'TC-1001', 'Allahu Akbar', '2', '2750', '5500', '2019-07-14 06:56:21', '2019-07-14 06:56:21'),
(13, 48, '63', 'DG-00120', 'গল্প সমারোহ (হার্ডকভার)', '1', '455.00', '455', '2019-07-28 14:38:31', '2019-07-28 14:38:31'),
(14, 67, '84', 'VTW-1001', 'Veet Sensitive Touch Electric Trimmer', '1', '550.00', '550', '2019-08-04 14:38:09', '2019-08-04 14:38:09');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Bangla', '2019-10-01 10:22:41', '2019-10-01 10:22:41'),
(2, 'English', '2019-10-01 10:22:52', '2019-10-01 10:22:52'),
(3, 'Hindi', '2019-10-01 10:22:57', '2019-10-01 10:22:57');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) UNSIGNED NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `menuName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `articleName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentArticle` int(11) DEFAULT NULL,
  `firstHomeTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstHomeImage` text COLLATE utf8mb4_unicode_ci,
  `homeDescription` text COLLATE utf8mb4_unicode_ci,
  `urlLink` text COLLATE utf8mb4_unicode_ci,
  `menuIcon` text COLLATE utf8mb4_unicode_ci,
  `metaTitle` text COLLATE utf8mb4_unicode_ci,
  `metaKeyword` text COLLATE utf8mb4_unicode_ci,
  `metaDescription` text COLLATE utf8mb4_unicode_ci,
  `orderBy` int(11) DEFAULT NULL,
  `menuStatus` int(11) NOT NULL DEFAULT '1',
  `showInMenu` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `parent`, `menuName`, `articleName`, `parentArticle`, `firstHomeTitle`, `firstHomeImage`, `homeDescription`, `urlLink`, `menuIcon`, `metaTitle`, `metaKeyword`, `metaDescription`, `orderBy`, `menuStatus`, `showInMenu`, `created_at`, `updated_at`) VALUES
(1, NULL, 'About', 'About', NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 1, 1, 'yes', '2019-11-02 23:46:55', '2019-11-02 23:46:55'),
(2, NULL, 'Clients', 'Portfolio', NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 2, 1, 'yes', '2019-11-02 23:47:50', '2020-01-17 23:07:23'),
(3, NULL, 'Team', 'Team', NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 3, 0, 'yes', '2019-11-02 23:48:05', '2020-01-17 23:07:27'),
(5, NULL, 'Product', 'Product', NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 4, 1, 'yes', '2019-11-02 23:50:13', '2019-11-02 23:50:13'),
(7, 5, 'Busy', 'Busy', 5, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 2, 0, 'yes', '2019-11-02 23:51:13', '2020-01-17 23:08:38'),
(9, NULL, 'Clients Hide', NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 6, 0, 'yes', '2019-11-02 23:52:25', '2020-01-17 23:02:21'),
(10, NULL, 'Contact', 'Contact Us', NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 10, 1, 'yes', '2019-11-16 00:08:20', '2019-11-16 00:08:20'),
(11, NULL, 'Service', 'Service', NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 5, 1, 'yes', '2019-11-03 00:37:11', '2019-11-03 00:37:11'),
(12, 5, 'Shampan vat', 'Shampan vat', 8, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 1, 1, 'yes', '2019-11-03 06:57:54', '2019-11-19 22:53:12'),
(13, 5, 'Shampan HRM & Payroll', 'Shampan HRM & Payroll', 8, 'Shampan HRM & Payroll', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 4, 1, 'yes', '2019-11-04 11:11:45', '2020-01-12 03:40:42'),
(14, 5, 'Shampan PF & Gratuity', 'Shampan PF & Gratuity', 8, 'Shampan PF & Gratuity', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 3, 1, 'yes', '2019-11-04 11:12:43', '2019-11-19 22:53:59'),
(15, 5, 'CGMS', 'CGMS', 8, 'CGMS', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 4, 1, 'yes', '2019-11-04 11:13:33', '2019-11-19 22:54:17'),
(16, 11, 'Third Party Software Integration', 'Third Party Software Integration', 11, 'Third Party Software Integration', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 1, 1, 'yes', '2019-11-04 11:36:20', '2019-11-04 11:36:20'),
(17, 11, 'Business Process Service', 'Business Process Service', 11, 'Business Process Service', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 2, 1, 'yes', '2019-11-04 11:36:39', '2019-11-04 11:36:39'),
(18, 11, 'Training Service', 'Training Service', 11, 'Training Service', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 3, 1, 'yes', '2019-11-04 11:36:57', '2019-11-04 11:36:57'),
(19, 11, 'Consulting Service', 'Consulting Service', 11, 'Consulting Service', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 4, 1, 'yes', '2019-11-04 11:37:39', '2019-11-04 11:37:39'),
(20, 11, 'Custom Software Development', 'Custom Software Development', 11, 'Custom Software Development', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 5, 1, 'yes', '2019-11-04 11:37:58', '2019-11-04 11:37:58'),
(22, 1, 'Mission', 'Mission', NULL, 'Mission', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard</p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 1, 1, 'yes', '2019-11-15 22:44:22', '2019-11-15 22:44:22'),
(23, 1, 'Vision', 'Vision', NULL, 'Vision', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard</p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 2, 1, 'yes', '2019-11-15 22:46:17', '2019-11-15 22:48:27'),
(24, 1, 'GOAL', 'GOAL', NULL, 'GOAL', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard</p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 3, 1, 'yes', '2019-11-15 22:47:57', '2019-11-15 22:48:42'),
(25, 1, 'QUALITY POLICY', 'QUALITY POLICY', NULL, 'QUALITY POLICY', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard</p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 4, 1, 'yes', '2019-11-15 22:48:10', '2019-11-15 22:48:52'),
(27, 5, 'SAGE 300 ERP', 'SAGE 300 ERP', NULL, 'SAGE 300 ERP', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Any high quality product needs a rich framework of services to support its implementation.To cater for these needs, we offer our clients individual consulting</p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 1, 1, 'yes', '2019-11-17 04:24:33', '2019-11-19 22:54:30');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_07_02_180455_create_categories_table', 1),
(4, '2018_07_13_130624_create_sub_categories_table', 1),
(5, '2018_07_14_141212_create_products_table', 1),
(6, '2018_07_18_172951_create_customers_table', 1),
(7, '2018_07_18_173018_create_shippings_table', 1),
(8, '2018_07_18_173045_create_checkouts_table', 1),
(9, '2018_07_18_173051_create_orders_table', 1),
(10, '2018_07_18_173115_create_transactions_table', 1),
(11, '2018_07_21_144649_create_contactuses_table', 1),
(12, '2018_07_22_211328_create_admins_table', 1),
(13, '2018_07_27_082321_create_careers_table', 1),
(14, '2018_07_27_103118_create_teams_table', 1),
(15, '2018_07_27_111833_create_sliders_table', 1),
(16, '2019_01_06_085032_create_packages_table', 1),
(17, '2019_03_13_120816_create_menus_table', 2),
(18, '2019_03_13_121439_create_menus_table', 3),
(19, '2018_11_17_160100_create_verifies_customers_table', 4),
(20, '2018_11_17_160100_create_verify_customers_table', 5),
(21, '2019_03_19_065715_create_settings_table', 6),
(22, '2018_07_02_180455_create_policies_table', 7),
(23, '2018_07_02_180455_create_banners_table', 8),
(24, '2019_03_27_075039_create_product_sections_table', 9),
(25, '2019_03_28_062230_create_product_sections_table', 10),
(26, '2019_03_30_094825_create_socials_table', 11),
(27, '2019_03_30_181906_create_product_sections_table', 12),
(28, '2019_04_03_083641_create_contacts_table', 13),
(29, '2019_04_03_104734_create_reviews_table', 14),
(30, '2019_04_03_105403_create_reviews_table', 15),
(31, '2019_04_04_111431_create_abouts_table', 16),
(32, '2019_04_04_112139_create_abouts_table', 17),
(33, '2019_04_07_042104_create_product_images_table', 18),
(34, '2019_04_05_060258_create_faqs_table', 19),
(35, '2019_04_09_072500_create_delivery_policies_table', 20),
(36, '2019_04_09_075441_create_payment_policies_table', 21),
(37, '2019_04_09_090821_create_refund_policies_table', 22),
(38, '2019_04_10_061020_create_help_centers_table', 22),
(39, '2019_04_10_071450_create_terms_table', 23),
(40, '2019_04_10_073726_create_blogs_table', 24),
(41, '2019_04_10_101945_create_newsletters_table', 25),
(42, '2019_04_17_062734_create_user_roles_table', 26),
(43, '2019_06_15_064819_create_shipping_charges_table', 27),
(44, '2019_06_16_100518_create_invoice_table', 28),
(45, '2019_07_14_074721_create_customer_group_section_table', 29),
(46, '2019_07_14_075751_create_customer_group_sections_table', 30),
(47, '2019_08_31_064148_create_vendors_table', 31),
(48, '2019_09_03_065923_create_cash_purchase_table', 32),
(49, '2019_09_03_070746_create_cash_purchase_item_table', 33),
(50, '2019_09_04_060034_create_credit_purchases_table', 34),
(51, '2019_09_04_060941_create_credit_purchase_items_table', 34),
(52, '2019_09_04_100454_create_purchase_order_items_table', 35),
(53, '2019_09_04_100609_create_purchase_orders_table', 35),
(54, '2019_09_05_053849_create_purchase_order_receives_table', 36),
(55, '2019_09_05_054156_create_purchase_order_receive_items_table', 36),
(56, '2019_09_05_095924_create_supplier_payments_table', 37),
(57, '2019_09_07_070859_create_purchase_returns_table', 38),
(58, '2019_09_07_071132_create_purchase_return_items_table', 38);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(10) UNSIGNED NOT NULL,
  `subscribeEmail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `subscribeEmail`, `created_at`, `updated_at`) VALUES
(26, 'philipndahi+amazoncar@gmail.com', '2019-04-30 21:22:25', '2019-04-30 21:22:25'),
(27, 'oikos333@gmail.com', '2019-04-30 22:13:56', '2019-04-30 22:13:56'),
(28, 'aalunt@gmail.com', '2019-04-30 22:52:14', '2019-04-30 22:52:14'),
(29, 'razzleog2@gmail.com', '2019-04-30 22:58:29', '2019-04-30 22:58:29'),
(30, 'daveg2808@gmail.com', '2019-04-30 23:05:32', '2019-04-30 23:05:32'),
(31, 'viizonyolo@gmail.com', '2019-05-01 00:12:34', '2019-05-01 00:12:34'),
(32, 'meonyourteam@yahoo.com', '2019-05-01 00:23:08', '2019-05-01 00:23:08'),
(33, 'jphiv19@gmail.com', '2019-05-01 00:37:53', '2019-05-01 00:37:53'),
(34, 'schiu@parmanenergy.com', '2019-05-01 00:53:48', '2019-05-01 00:53:48'),
(35, 'srhyngyang@gmail.com', '2019-05-01 02:29:31', '2019-05-01 02:29:31'),
(36, 'sarahas4kids04@gmail.com', '2019-05-01 05:26:51', '2019-05-01 05:26:51'),
(37, 'christianlu90@gmail.com', '2019-05-01 05:48:13', '2019-05-01 05:48:13'),
(38, 'countyempire4pgd@gmail.com', '2019-05-01 07:35:20', '2019-05-01 07:35:20'),
(39, 'tressler04@gmail.com', '2019-05-01 08:30:23', '2019-05-01 08:30:23'),
(40, 'northington15@gmail.com', '2019-05-01 10:00:49', '2019-05-01 10:00:49'),
(41, 'lbarrera.apex@gmail.com', '2019-05-01 10:15:27', '2019-05-01 10:15:27'),
(42, 'jrnallie44@aol.com', '2019-05-01 11:29:57', '2019-05-01 11:29:57'),
(43, 'jmbush5866@gmail.com', '2019-05-01 13:19:31', '2019-05-01 13:19:31'),
(44, 'shenibo@gmail.com', '2019-05-01 13:47:44', '2019-05-01 13:47:44'),
(45, 'brear7469@gmail.com', '2019-05-01 13:59:21', '2019-05-01 13:59:21'),
(46, 'alexandahh@gmail.com', '2019-05-01 14:30:11', '2019-05-01 14:30:11'),
(47, 'janada30@yahoo.com', '2019-05-01 15:06:13', '2019-05-01 15:06:13'),
(48, 'nicky.till@gmail.com', '2019-05-01 15:12:30', '2019-05-01 15:12:30'),
(49, 'andrewlaird1000@yahoo.com', '2019-05-01 15:31:27', '2019-05-01 15:31:27'),
(50, 'ritatownley@yahoo.com', '2019-05-01 17:17:46', '2019-05-01 17:17:46'),
(51, 'sabbiral4444@gmail.com', '2019-05-01 18:30:48', '2019-05-01 18:30:48'),
(52, 'choberlin@aol.com', '2019-05-01 19:00:22', '2019-05-01 19:00:22'),
(53, 'g.andersonrobert@gmail.com', '2019-05-01 19:09:34', '2019-05-01 19:09:34'),
(54, 'jbragalone@gmail.com', '2019-05-01 19:25:11', '2019-05-01 19:25:11'),
(55, 'israelenamorado184@gmail.com', '2019-05-01 20:15:41', '2019-05-01 20:15:41'),
(56, 'stango4summit@gmail.com', '2019-05-01 20:16:21', '2019-05-01 20:16:21'),
(57, 'brighter_dayzz@yahoo.com', '2019-05-01 22:12:47', '2019-05-01 22:12:47'),
(58, 'galbraithrae@gmail.com', '2019-05-01 22:22:03', '2019-05-01 22:22:03'),
(59, 'babynadz39@gmail.com', '2019-05-01 22:50:48', '2019-05-01 22:50:48'),
(60, 'jamespoy@aol.com', '2019-05-02 00:16:58', '2019-05-02 00:16:58'),
(61, 'kobrienlamare@gmail.com', '2019-05-02 01:21:18', '2019-05-02 01:21:18'),
(62, 'sdk6150@yahoo.com', '2019-05-02 02:15:08', '2019-05-02 02:15:08'),
(63, 'securedfirewall@gmail.com', '2019-05-02 04:55:02', '2019-05-02 04:55:02'),
(64, 'walrus.senpai@gmail.com', '2019-05-02 05:23:05', '2019-05-02 05:23:05'),
(65, 'briankilgo@gmail.com', '2019-05-02 05:34:07', '2019-05-02 05:34:07'),
(66, 'mitchellmichaelh@gmail.com', '2019-05-02 05:57:28', '2019-05-02 05:57:28'),
(67, '19drhkc93@gmail.com', '2019-05-02 07:24:22', '2019-05-02 07:24:22'),
(68, 'dsales120@aol.com', '2019-05-02 08:09:54', '2019-05-02 08:09:54'),
(69, 'definitydesignsny@gmail.com', '2019-05-02 09:12:26', '2019-05-02 09:12:26'),
(70, 'celiasteel50@aol.com', '2019-05-02 09:30:20', '2019-05-02 09:30:20'),
(71, 'chriscarman33@gmail.com', '2019-05-02 09:35:24', '2019-05-02 09:35:24'),
(72, 'drw923@yahoo.com', '2019-05-02 10:13:18', '2019-05-02 10:13:18'),
(73, 'fdurgaj@gmail.com', '2019-05-02 11:04:57', '2019-05-02 11:04:57'),
(74, 'affixdesigns@gmail.com', '2019-05-02 11:36:12', '2019-05-02 11:36:12'),
(75, 'codyday07@gmail.com', '2019-05-02 11:42:29', '2019-05-02 11:42:29'),
(76, 'realtyblvd@aol.com', '2019-05-02 11:58:57', '2019-05-02 11:58:57'),
(77, 'fmarquez866@gmail.com', '2019-05-02 13:33:00', '2019-05-02 13:33:00'),
(78, 'ericjlehr@gmail.com', '2019-05-02 14:56:08', '2019-05-02 14:56:08'),
(79, 'rmythology@aol.com', '2019-05-02 16:36:54', '2019-05-02 16:36:54'),
(80, 'tgaxiola01@gmail.com', '2019-05-02 16:44:54', '2019-05-02 16:44:54'),
(81, 'hstrickland@weberes.com', '2019-05-02 19:17:24', '2019-05-02 19:17:24'),
(82, 'patrickdbuckley@gmail.com', '2019-05-02 20:07:23', '2019-05-02 20:07:23'),
(83, 'vickylyee@gmail.com', '2019-05-02 21:10:43', '2019-05-02 21:10:43'),
(84, 'cgpowell85@yahoo.com', '2019-05-02 22:31:38', '2019-05-02 22:31:38'),
(85, 'bcraveiro@pkgprod.com', '2019-05-02 23:25:41', '2019-05-02 23:25:41'),
(86, 'daryllannert@gmail.com', '2019-05-03 02:30:24', '2019-05-03 02:30:24'),
(87, 'thesatts99@yahoo.com', '2019-05-03 02:31:22', '2019-05-03 02:31:22'),
(88, 'qcs@qualitycalibration.com', '2019-05-03 02:50:56', '2019-05-03 02:50:56'),
(89, 'goly2010@gmail.com', '2019-05-03 03:06:22', '2019-05-03 03:06:22'),
(90, 'c22addison@gmail.com', '2019-05-03 04:10:05', '2019-05-03 04:10:05'),
(91, 'g.gober@icloud.com', '2019-05-03 06:16:48', '2019-05-03 06:16:48'),
(92, 'silber175@gmail.com', '2019-05-03 08:49:29', '2019-05-03 08:49:29'),
(93, 'cjeganathan@gmail.com', '2019-05-03 09:31:17', '2019-05-03 09:31:17'),
(94, 'mkkaiser2@yahoo.com', '2019-05-03 09:53:52', '2019-05-03 09:53:52'),
(95, 'alex.alvarez.santamaria@gmail.com', '2019-05-03 11:10:13', '2019-05-03 11:10:13'),
(96, 'dhanvin28@gmail.com', '2019-05-03 11:38:48', '2019-05-03 11:38:48'),
(97, 'androidial.symmetry@gmail.com', '2019-05-03 12:19:14', '2019-05-03 12:19:14'),
(98, 'jencarter1@yahoo.com', '2019-05-03 14:00:08', '2019-05-03 14:00:08'),
(99, 'gez8bone@yahoo.com', '2019-05-03 14:02:37', '2019-05-03 14:02:37'),
(100, 'jvrvanderpas@gmail.com', '2019-05-03 15:03:36', '2019-05-03 15:03:36'),
(101, 'bethawald@gmail.com', '2019-05-03 15:18:39', '2019-05-03 15:18:39'),
(102, 'rozamg@gmail.com', '2019-05-03 15:24:57', '2019-05-03 15:24:57'),
(103, 'marcodeoliveira@gmail.com', '2019-05-03 17:13:34', '2019-05-03 17:13:34'),
(104, 'rhi.adam@gmail.com', '2019-05-03 19:53:35', '2019-05-03 19:53:35'),
(105, 'vikachka141@yahoo.com', '2019-05-03 19:54:10', '2019-05-03 19:54:10'),
(106, 'pendic.s@gmail.com', '2019-05-03 20:24:44', '2019-05-03 20:24:44'),
(107, 'happycheesecats@gmail.com', '2019-05-04 03:25:53', '2019-05-04 03:25:53'),
(108, 'alexeyka.com@gmail.com', '2019-05-04 05:31:41', '2019-05-04 05:31:41'),
(109, 'cricketgore@yahoo.com', '2019-05-04 07:53:16', '2019-05-04 07:53:16'),
(110, 'ramirez.rose.m@gmail.com', '2019-05-04 09:34:08', '2019-05-04 09:34:08'),
(111, 'natalia@thenordstroms.net', '2019-05-04 10:44:21', '2019-05-04 10:44:21'),
(112, 'heffernan.gabrielle@gmail.com', '2019-05-04 13:02:09', '2019-05-04 13:02:09'),
(113, 'pattgraphix@gmail.com', '2019-05-04 15:07:44', '2019-05-04 15:07:44'),
(114, 'therealdealcaudill@gmail.com', '2019-05-04 15:34:52', '2019-05-04 15:34:52'),
(115, 'longenef@gmail.com', '2019-05-04 19:00:40', '2019-05-04 19:00:40'),
(116, 'esse.linda@gmail.com', '2019-05-04 20:56:56', '2019-05-04 20:56:56'),
(117, 'dnayer2010@gmail.com', '2019-05-05 04:40:56', '2019-05-05 04:40:56'),
(118, 'info@wirelessplace.com', '2019-05-05 07:16:41', '2019-05-05 07:16:41'),
(119, 'shindig@yahoo.com', '2019-05-05 11:42:36', '2019-05-05 11:42:36'),
(120, 'britneylbarrett@gmail.com', '2019-05-05 14:47:45', '2019-05-05 14:47:45'),
(121, 'cpasquerella@gmail.com', '2019-05-05 15:02:44', '2019-05-05 15:02:44'),
(122, 'caitlyncorace@gmail.com', '2019-05-05 18:22:29', '2019-05-05 18:22:29'),
(123, 'elulutore@gmail.com', '2019-05-05 20:29:33', '2019-05-05 20:29:33'),
(124, 'lapagie@gmail.com', '2019-05-06 00:26:50', '2019-05-06 00:26:50'),
(125, 'dennis.2.smith@gmail.com', '2019-05-06 09:22:01', '2019-05-06 09:22:01'),
(126, 'majiddds@gmail.com', '2019-05-06 12:07:43', '2019-05-06 12:07:43'),
(127, 'johhnverl65@aol.com', '2019-05-06 12:21:08', '2019-05-06 12:21:08'),
(128, 'debbie@dntpc.com', '2019-05-06 13:24:26', '2019-05-06 13:24:26'),
(129, 'samagranoff4@gmail.com', '2019-05-06 14:19:03', '2019-05-06 14:19:03'),
(130, 'symphonymeadows@yahoo.com', '2019-05-06 15:09:49', '2019-05-06 15:09:49'),
(131, 'alee@granitestatedev.com', '2019-05-06 15:22:31', '2019-05-06 15:22:31'),
(132, 'dezehmodding@yahoo.com', '2019-05-06 16:14:11', '2019-05-06 16:14:11'),
(133, 'gilbee0700@aol.com', '2019-05-06 16:30:11', '2019-05-06 16:30:11'),
(134, 'matmullen@gmail.com', '2019-05-06 17:11:58', '2019-05-06 17:11:58'),
(135, 'beckyrichartz@gmail.com', '2019-05-06 19:02:40', '2019-05-06 19:02:40'),
(136, 'stumo99@gmail.com', '2019-05-06 19:39:43', '2019-05-06 19:39:43'),
(137, 'jay@ronniesbeverage.com', '2019-05-06 20:14:20', '2019-05-06 20:14:20'),
(138, 'troygreen89@yahoo.com', '2019-05-06 20:51:59', '2019-05-06 20:51:59'),
(139, 'yessikasolis@yahoo.com', '2019-05-06 21:09:51', '2019-05-06 21:09:51'),
(140, 'leasemore@yahoo.com', '2019-05-06 21:30:45', '2019-05-06 21:30:45'),
(141, 'sstufflebean@yahoo.com', '2019-05-06 21:39:35', '2019-05-06 21:39:35'),
(142, 'richard@warpspd.com', '2019-05-13 04:26:39', '2019-05-13 04:26:39'),
(143, 'zrdzach11@gmail.com', '2019-05-13 08:44:51', '2019-05-13 08:44:51'),
(144, 'ebruchhausen@gmail.com', '2019-05-13 08:45:35', '2019-05-13 08:45:35'),
(145, 'geminijohnmitchell@gmail.com', '2019-05-13 09:39:02', '2019-05-13 09:39:02'),
(146, 'naviandberry@yahoo.co.uk', '2019-05-13 13:40:58', '2019-05-13 13:40:58'),
(147, 'timothy.w.eisel@jpmorgan.com', '2019-05-13 13:44:22', '2019-05-13 13:44:22'),
(148, 'michelelehner@gmail.com', '2019-05-13 14:23:40', '2019-05-13 14:23:40'),
(149, 'theletterxee@gmail.com', '2019-05-13 14:26:54', '2019-05-13 14:26:54'),
(150, 'marykelleyl@yahoo.com', '2019-05-13 14:41:06', '2019-05-13 14:41:06'),
(151, 'amberissupercool@yahoo.com', '2019-05-13 15:24:52', '2019-05-13 15:24:52'),
(152, 'bookdavinaluter@gmail.com', '2019-05-13 15:32:22', '2019-05-13 15:32:22'),
(153, 'mjcurtis70@gmail.com', '2019-05-13 15:56:21', '2019-05-13 15:56:21'),
(154, 'evanden19@sbcglobal.net', '2019-05-13 16:53:58', '2019-05-13 16:53:58'),
(155, 'billhutch05@yahoo.com', '2019-05-13 16:58:06', '2019-05-13 16:58:06'),
(156, 'kennykeshia@yahoo.com', '2019-05-13 18:10:18', '2019-05-13 18:10:18'),
(157, 'toshia21@gmail.com', '2019-05-13 18:39:38', '2019-05-13 18:39:38'),
(158, 'arberbregu@gmail.com', '2019-05-13 19:57:08', '2019-05-13 19:57:08'),
(159, 'southworthcleveland84@gmail.com', '2019-05-13 21:00:50', '2019-05-13 21:00:50'),
(160, 'xblvckwulf@gmail.com', '2019-05-13 21:04:03', '2019-05-13 21:04:03'),
(161, 'tglewaz@gmail.com', '2019-05-13 21:13:24', '2019-05-13 21:13:24'),
(162, 'jashe51741@aol.com', '2019-05-13 22:14:06', '2019-05-13 22:14:06'),
(163, 'wonderkatem@gmail.com', '2019-05-18 07:56:51', '2019-05-18 07:56:51'),
(164, 'duruji87@gmail.com', '2019-05-18 09:41:33', '2019-05-18 09:41:33'),
(165, 'npassarelli@gmail.com', '2019-05-18 18:04:58', '2019-05-18 18:04:58'),
(166, 'ruedigertibeau@t-online.de', '2019-05-18 20:30:55', '2019-05-18 20:30:55'),
(167, 'tien.nguyen32@yahoo.com', '2019-05-18 20:33:29', '2019-05-18 20:33:29'),
(168, 'alnamdds@gmail.com', '2019-05-23 12:31:45', '2019-05-23 12:31:45'),
(169, 'cindicarr1@aol.com', '2019-05-23 12:40:57', '2019-05-23 12:40:57'),
(170, 'groverlbowman@gmail.com', '2019-05-23 12:49:43', '2019-05-23 12:49:43'),
(171, 'rtd141@gmail.com', '2019-05-23 12:51:20', '2019-05-23 12:51:20'),
(172, 'kcchubbychaser@gmail.com', '2019-05-23 12:55:28', '2019-05-23 12:55:28'),
(173, 'power09@gmail.com', '2019-05-23 12:58:47', '2019-05-23 12:58:47'),
(174, 'rosinecassidy@gmail.com', '2019-05-23 13:00:08', '2019-05-23 13:00:08'),
(175, 'zeldamarlowe@yahoo.com', '2019-05-23 13:25:40', '2019-05-23 13:25:40'),
(176, 'nicoleskye22@yahoo.com', '2019-05-23 13:32:17', '2019-05-23 13:32:17'),
(177, 'shurodey@yahoo.com', '2019-05-23 14:08:12', '2019-05-23 14:08:12'),
(178, 'guaranteedsales@gmail.com', '2019-05-23 14:22:40', '2019-05-23 14:22:40'),
(179, 'swalexandrou@gmail.com', '2019-05-23 14:43:27', '2019-05-23 14:43:27'),
(180, 'baxterjustin405@gmail.com', '2019-05-23 14:56:43', '2019-05-23 14:56:43'),
(181, 'prpollock@yahoo.com', '2019-05-23 15:17:05', '2019-05-23 15:17:05'),
(182, 'marcinpancewicz@gmail.com', '2019-05-23 15:17:09', '2019-05-23 15:17:09'),
(183, 'laclairj68@gmail.com', '2019-05-23 15:17:17', '2019-05-23 15:17:17'),
(184, 'christineeng8@gmail.com', '2019-05-23 15:30:26', '2019-05-23 15:30:26'),
(185, 'imdeb82@gmail.com', '2019-05-23 15:37:07', '2019-05-23 15:37:07'),
(186, 'sykomagnetik@gmail.com', '2019-05-23 15:56:41', '2019-05-23 15:56:41'),
(187, 'cindicarr1@gmail.com', '2019-05-23 16:10:28', '2019-05-23 16:10:28'),
(188, 'liltick7@gmail.com', '2019-05-23 16:50:12', '2019-05-23 16:50:12'),
(189, 'alhabib.hani@gmail.com', '2019-05-23 17:44:24', '2019-05-23 17:44:24'),
(190, 'stefan.strydom87@gmail.com', '2019-05-23 18:17:14', '2019-05-23 18:17:14'),
(191, 'murashov.andrey@yahoo.com', '2019-05-23 18:17:32', '2019-05-23 18:17:32'),
(192, 'gchoe72@gmail.com', '2019-05-23 18:24:58', '2019-05-23 18:24:58'),
(193, 'jonathangodin56@gmail.com', '2019-05-23 18:31:56', '2019-05-23 18:31:56'),
(194, 'hannahrvanveen@gmail.com', '2019-05-23 18:49:27', '2019-05-23 18:49:27'),
(195, 'nicedalek12@yahoo.com', '2019-05-23 18:51:19', '2019-05-23 18:51:19'),
(196, 'onlymorereps@gmail.com', '2019-05-23 19:11:55', '2019-05-23 19:11:55'),
(197, 'c.lanehester@yahoo.com', '2019-05-23 20:08:11', '2019-05-23 20:08:11'),
(198, 'abloom1976@gmail.com', '2019-05-23 20:31:33', '2019-05-23 20:31:33'),
(199, 'ltick7@gmail.com', '2019-05-23 20:39:17', '2019-05-23 20:39:17'),
(200, 'cynthia0101@aol.com', '2019-05-23 21:10:50', '2019-05-23 21:10:50'),
(201, 'nakshighor.com@domstat.su', '2019-05-28 00:16:16', '2019-05-28 00:16:16'),
(202, 'christian_young23@yahoo.com', '2019-05-31 08:30:57', '2019-05-31 08:30:57'),
(203, 'ekidsbridal@gmail.com', '2019-05-31 09:20:27', '2019-05-31 09:20:27'),
(204, 'jimleanzo@yahoo.com', '2019-05-31 11:36:25', '2019-05-31 11:36:25'),
(205, 'huertacaballero@gmail.com', '2019-05-31 12:47:25', '2019-05-31 12:47:25'),
(206, 'walterbeach2@gmail.com', '2019-05-31 14:50:24', '2019-05-31 14:50:24'),
(207, 'lee.lister71@gmail.com', '2019-06-25 07:28:46', '2019-06-25 07:28:46'),
(208, 'martyputnam59@gmail.com', '2019-06-25 07:42:35', '2019-06-25 07:42:35'),
(209, 'bennett.sam60@gmail.com', '2019-06-25 07:48:19', '2019-06-25 07:48:19'),
(210, 'steventill@gmail.com', '2019-06-25 08:59:46', '2019-06-25 08:59:46'),
(211, 'marco.iacolucci@gmail.com', '2019-06-25 09:33:28', '2019-06-25 09:33:28'),
(212, 'seanbro112@gmail.com', '2019-06-25 10:02:05', '2019-06-25 10:02:05'),
(213, 'amedsoul83@gmail.com', '2019-06-25 11:17:04', '2019-06-25 11:17:04'),
(214, 'dominicimcduffie@gmail.com', '2019-06-25 11:20:44', '2019-06-25 11:20:44'),
(215, 'hulagurl725@yahoo.com', '2019-06-25 11:48:18', '2019-06-25 11:48:18'),
(216, 'emmykinney90@gmail.com', '2019-06-25 11:54:52', '2019-06-25 11:54:52'),
(217, '1dwshifflett@gmail.com', '2019-06-25 12:43:52', '2019-06-25 12:43:52'),
(218, 'verizon@wirelesswatchdogs.com', '2019-06-25 13:33:19', '2019-06-25 13:33:19'),
(219, 'bornpist@gmail.com', '2019-06-25 16:11:37', '2019-06-25 16:11:37'),
(220, 'sethkatejohnson@gmail.com', '2019-06-25 16:19:40', '2019-06-25 16:19:40'),
(221, 'bluetaloon@gmail.com', '2019-06-25 16:27:02', '2019-06-25 16:27:02'),
(222, 'canonb4eng@gmail.com', '2019-06-25 16:32:40', '2019-06-25 16:32:40'),
(223, 'sheilafrederick@sbcglobal.net', '2019-06-25 17:02:09', '2019-06-25 17:02:09'),
(224, 'usagizmo@verizon.net', '2019-06-25 18:09:06', '2019-06-25 18:09:06'),
(225, 'dragonfly2294@gmail.com', '2019-06-25 18:24:49', '2019-06-25 18:24:49'),
(226, 'richhadlock@gmail.com', '2019-06-25 18:26:55', '2019-06-25 18:26:55'),
(227, 'k1holt1@yahoo.com', '2019-06-25 18:56:22', '2019-06-25 18:56:22'),
(228, 'mobrick1@gmail.com', '2019-06-25 19:59:35', '2019-06-25 19:59:35'),
(229, 'dfortunato@yahoo.com', '2019-06-25 20:06:30', '2019-06-25 20:06:30'),
(230, 'renesalvadorphoto@gmail.com', '2019-06-25 20:06:41', '2019-06-25 20:06:41'),
(231, 'alozanm@gmail.com', '2019-06-25 20:30:07', '2019-06-25 20:30:07'),
(232, 'laci020202@gmail.com', '2019-06-25 20:32:37', '2019-06-25 20:32:37'),
(233, 'jmichaels@gmail.com', '2019-06-25 20:40:43', '2019-06-25 20:40:43'),
(234, 'joserivera500@yahoo.com', '2019-06-25 20:45:32', '2019-06-25 20:45:32'),
(235, 'mazarian05@aol.com', '2019-06-25 21:03:46', '2019-06-25 21:03:46'),
(236, 'welchphilip1@gmail.com', '2019-06-25 21:28:06', '2019-06-25 21:28:06'),
(237, 'subnuke1@yahoo.com', '2019-06-25 21:35:34', '2019-06-25 21:35:34'),
(238, 'smcjas@aol.com', '2019-06-25 21:36:21', '2019-06-25 21:36:21'),
(239, 'ajmetzgar@gmail.com', '2019-06-25 22:07:08', '2019-06-25 22:07:08'),
(240, 'nazarian05@aol.com', '2019-06-25 22:07:38', '2019-06-25 22:07:38'),
(241, 'dachengwang1@gmail.com', '2019-06-25 22:47:23', '2019-06-25 22:47:23'),
(242, 'irmalopez_13@yahoo.com', '2019-06-25 22:57:13', '2019-06-25 22:57:13'),
(243, 'kenny88yang@yahoo.com', '2019-06-25 23:15:29', '2019-06-25 23:15:29'),
(244, 'lisacmdg@gmail.com', '2019-06-25 23:41:51', '2019-06-25 23:41:51'),
(245, 'nycyclops@yahoo.com', '2019-06-25 23:52:11', '2019-06-25 23:52:11'),
(246, 'meyer.brackel@t-online.de', '2019-06-26 00:20:26', '2019-06-26 00:20:26'),
(247, 'rganzon117@gmail.com', '2019-06-26 00:52:41', '2019-06-26 00:52:41'),
(248, 'kew0000@gmail.com', '2019-06-26 01:01:22', '2019-06-26 01:01:22'),
(249, 'salem.moslamy28@gmail.com', '2019-06-26 01:26:41', '2019-06-26 01:26:41'),
(250, 'uyvu1234@yahoo.com.vn', '2019-06-26 02:02:08', '2019-06-26 02:02:08'),
(251, 'jikitsa@gmail.com', '2019-06-26 02:15:29', '2019-06-26 02:15:29'),
(252, 'kendallcampbell@gmail.com', '2019-06-26 02:38:34', '2019-06-26 02:38:34'),
(253, 'theadimantra@gmail.com', '2019-06-26 02:58:00', '2019-06-26 02:58:00'),
(254, 'ejmcglade@gmail.com', '2019-06-26 03:00:14', '2019-06-26 03:00:14'),
(255, 'ntraini@aol.com', '2019-06-26 04:37:53', '2019-06-26 04:37:53'),
(256, 'jnealgraves@gmail.com', '2019-06-26 05:49:09', '2019-06-26 05:49:09'),
(257, 'kjones5369@gmail.com', '2019-06-26 05:56:04', '2019-06-26 05:56:04'),
(258, 'gwensparker@gmail.com', '2019-06-26 07:08:34', '2019-06-26 07:08:34'),
(259, 'bkvo2002@gmail.com', '2019-06-26 07:20:31', '2019-06-26 07:20:31'),
(260, 'jaspav@yahoo.com', '2019-06-26 07:38:43', '2019-06-26 07:38:43'),
(261, 'chucko22@aol.com', '2019-06-26 07:46:00', '2019-06-26 07:46:00'),
(262, 'stormybtw@gmail.com', '2019-06-26 09:54:36', '2019-06-26 09:54:36'),
(263, 'abcclifford@gmail.com', '2019-06-26 10:24:10', '2019-06-26 10:24:10'),
(264, 'fischer32@yahoo.com', '2019-06-26 12:12:12', '2019-06-26 12:12:12'),
(265, 'jason.m.yee@gmail.com', '2019-06-26 12:46:40', '2019-06-26 12:46:40'),
(266, 'masonranch@gmail.com', '2019-06-26 13:01:37', '2019-06-26 13:01:37'),
(267, 'yclemons25@yahoo.com', '2019-06-26 13:51:07', '2019-06-26 13:51:07'),
(268, 'hrohloff63@gmail.com', '2019-06-26 14:35:48', '2019-06-26 14:35:48'),
(269, 'kaurjasper95@gmail.com', '2019-06-26 14:39:25', '2019-06-26 14:39:25'),
(270, 'aaferrante108@comcast.net', '2019-06-26 16:19:34', '2019-06-26 16:19:34'),
(271, 'deb_vgl@yahoo.com', '2019-06-26 17:00:07', '2019-06-26 17:00:07'),
(272, 'isas4cory@yahoo.com', '2019-06-26 18:26:30', '2019-06-26 18:26:30'),
(273, 'bumperspecialist2013@gmail.com', '2019-06-26 18:32:56', '2019-06-26 18:32:56'),
(274, 'scloughlin@gmail.com', '2019-06-26 18:52:10', '2019-06-26 18:52:10'),
(275, 'amandajawad@gmail.com', '2019-06-26 18:57:43', '2019-06-26 18:57:43'),
(276, 'themmgaming32@gmail.com', '2019-06-26 19:21:36', '2019-06-26 19:21:36'),
(277, 'sspector10@gmail.com', '2019-06-26 19:26:10', '2019-06-26 19:26:10'),
(278, 'm.daversa@aol.com', '2019-06-26 19:33:59', '2019-06-26 19:33:59'),
(279, 'markrdutton@gmail.com', '2019-06-26 19:47:44', '2019-06-26 19:47:44'),
(280, 'stephiedavison@gmail.com', '2019-06-26 20:24:30', '2019-06-26 20:24:30'),
(281, 'ddunbar83@yahoo.com', '2019-06-26 20:45:51', '2019-06-26 20:45:51'),
(282, 'halehplaum@aol.com', '2019-06-26 20:48:02', '2019-06-26 20:48:02'),
(283, 'aparry88@gmail.com', '2019-06-26 21:04:34', '2019-06-26 21:04:34'),
(284, 'guisojc17@gmail.com', '2019-06-26 21:21:20', '2019-06-26 21:21:20'),
(285, 'alsmith13@aol.com', '2019-06-26 21:27:31', '2019-06-26 21:27:31'),
(286, 'dereksoup2@aol.com', '2019-06-26 23:05:54', '2019-06-26 23:05:54'),
(287, 'kywildcat36@gmail.com', '2019-06-27 00:41:52', '2019-06-27 00:41:52'),
(288, 'jenna.w.snyder@gmail.com', '2019-06-27 00:48:12', '2019-06-27 00:48:12'),
(289, 'acr11917@aol.com', '2019-06-27 00:50:03', '2019-06-27 00:50:03'),
(290, 'micahvtrurner@gmail.com', '2019-06-27 01:21:00', '2019-06-27 01:21:00'),
(291, 'cindisilverman@gmail.com', '2019-06-27 02:01:15', '2019-06-27 02:01:15'),
(292, 'tkidney2@gmail.com', '2019-06-27 03:46:51', '2019-06-27 03:46:51'),
(293, 'muffintime868@gmail.com', '2019-06-27 03:53:54', '2019-06-27 03:53:54'),
(294, 'fletcher705@gmail.com', '2019-06-27 04:24:09', '2019-06-27 04:24:09'),
(295, 'cstopko@yahoo.com', '2019-06-27 04:35:28', '2019-06-27 04:35:28'),
(296, 'accounting@jaffagroup.com', '2019-06-27 05:30:01', '2019-06-27 05:30:01'),
(297, 'matthew.toner7@gmail.com', '2019-06-27 05:46:41', '2019-06-27 05:46:41'),
(298, 'nahiyan180@gmail.com', '2019-06-27 06:05:44', '2019-06-27 06:05:44'),
(299, 'janette@insigniapools.com', '2019-06-27 07:19:51', '2019-06-27 07:19:51'),
(300, 'genjified@gmail.com', '2019-06-27 07:50:10', '2019-06-27 07:50:10'),
(301, 'kaboomaboom@gmail.com', '2019-06-27 08:49:43', '2019-06-27 08:49:43'),
(302, 'milldesigncenter@gmail.com', '2019-06-27 09:00:41', '2019-06-27 09:00:41'),
(303, 'robpau63@gmail.com', '2019-06-27 09:10:44', '2019-06-27 09:10:44'),
(304, 'slwheatley@yahoo.com', '2019-06-27 09:38:25', '2019-06-27 09:38:25'),
(305, 'sasha@sashapierce.ca', '2019-06-27 10:39:53', '2019-06-27 10:39:53'),
(306, 'retsr16@comcast.net', '2019-06-27 10:43:53', '2019-06-27 10:43:53'),
(307, 'cnnrcarl@gmail.com', '2019-06-27 10:44:01', '2019-06-27 10:44:01'),
(308, 'jp_15max_dragon@live.ca', '2019-06-27 11:13:36', '2019-06-27 11:13:36'),
(309, 'hmalchow1969@gmail.com', '2019-06-27 12:41:33', '2019-06-27 12:41:33'),
(310, 'bibobjo@gmail.com', '2019-06-27 12:45:20', '2019-06-27 12:45:20'),
(311, 'i.orozcocarrasco@gmail.com', '2019-06-27 13:08:21', '2019-06-27 13:08:21'),
(312, 'troyblake18@gmail.com', '2019-06-27 14:27:52', '2019-06-27 14:27:52'),
(313, 'misscathimarie@gmail.com', '2019-06-27 14:34:28', '2019-06-27 14:34:28'),
(314, 'regenborlalo33@gmail.com', '2019-06-27 14:43:10', '2019-06-27 14:43:10'),
(315, 'mlipinski099@gmail.com', '2019-06-27 14:47:58', '2019-06-27 14:47:58'),
(316, 'afpestana@gmail.com', '2019-06-27 15:16:00', '2019-06-27 15:16:00'),
(317, 'jacqui.e.bess@gmail.com', '2019-06-27 16:13:25', '2019-06-27 16:13:25'),
(318, 'peewee68.ar@gmail.com', '2019-06-27 16:16:18', '2019-06-27 16:16:18'),
(319, 'tanadawnhardy@gmail.com', '2019-06-27 16:17:44', '2019-06-27 16:17:44'),
(320, 'imanolchavez@gmail.com', '2019-06-27 16:27:19', '2019-06-27 16:27:19'),
(321, 'robertsilverstein1@gmail.com', '2019-06-27 17:28:13', '2019-06-27 17:28:13'),
(322, 'watznewnexciting@aol.com', '2019-06-27 20:48:32', '2019-06-27 20:48:32'),
(323, 'mp1215@gmail.com', '2019-06-27 21:11:45', '2019-06-27 21:11:45'),
(324, 'goffjag@gmail.com', '2019-06-27 21:20:53', '2019-06-27 21:20:53'),
(325, 'yljimenez24@gmail.com', '2019-06-27 22:29:19', '2019-06-27 22:29:19'),
(326, 'libby.sarro@gmail.com', '2019-06-27 23:20:40', '2019-06-27 23:20:40'),
(327, 'connie.goodger@gmail.com', '2019-06-27 23:21:07', '2019-06-27 23:21:07'),
(328, 'pointerv@verizon.net', '2019-06-27 23:40:54', '2019-06-27 23:40:54'),
(329, 'shumeijiang@gmail.com', '2019-06-28 01:43:57', '2019-06-28 01:43:57'),
(330, 'mikefeleke99@gmail.com', '2019-06-28 01:55:15', '2019-06-28 01:55:15'),
(331, 'nfdiaz1969@yahoo.com', '2019-06-28 02:00:33', '2019-06-28 02:00:33'),
(332, 'dove.and.dragon.publishing@gmail.com', '2019-06-28 02:07:07', '2019-06-28 02:07:07'),
(333, '90yarem@gmail.com', '2019-06-28 03:13:15', '2019-06-28 03:13:15'),
(334, 'roxannac2al@yahoo.com', '2019-06-28 04:07:10', '2019-06-28 04:07:10'),
(335, 'nknettell@yahoo.com', '2019-06-28 04:08:30', '2019-06-28 04:08:30'),
(336, 'frchadking@gmail.com', '2019-06-28 06:09:41', '2019-06-28 06:09:41'),
(337, 'gcasale@cecentertainment.com', '2019-06-28 07:23:55', '2019-06-28 07:23:55'),
(338, 'jimnleavitt@gmail.com', '2019-06-28 08:48:33', '2019-06-28 08:48:33'),
(339, 'denisyefimov98@gmail.com', '2019-06-28 11:11:40', '2019-06-28 11:11:40'),
(340, 'bjm8498@gmail.com', '2019-06-28 12:13:32', '2019-06-28 12:13:32'),
(341, 'dylans5507@gmail.com', '2019-06-28 12:29:56', '2019-06-28 12:29:56'),
(342, 'vwhtan@gmail.com', '2019-06-28 12:48:59', '2019-06-28 12:48:59'),
(343, 'blakesharpe@gmail.com', '2019-06-28 13:53:30', '2019-06-28 13:53:30'),
(344, 'jacob.m.rude@gmail.com', '2019-06-28 14:07:00', '2019-06-28 14:07:00'),
(345, 'imoutoflca@yahoo.com', '2019-06-28 15:17:38', '2019-06-28 15:17:38'),
(346, 'welcomeghosts10@gmail.com', '2019-06-28 16:31:03', '2019-06-28 16:31:03'),
(347, 'jacob.eurich@yahoo.com', '2019-06-28 18:18:28', '2019-06-28 18:18:28'),
(348, 'liushuishun@gmail.com', '2019-06-28 20:07:01', '2019-06-28 20:07:01'),
(349, 'ergegerge434@gmail.com', '2019-06-28 21:22:23', '2019-06-28 21:22:23'),
(350, 'valerie2552@yahoo.com', '2019-06-29 01:42:47', '2019-06-29 01:42:47'),
(351, 'goonan101@yahoo.com', '2019-06-29 07:12:59', '2019-06-29 07:12:59'),
(352, 'dktrim@yahoo.com', '2019-06-29 08:03:56', '2019-06-29 08:03:56'),
(353, 'patrickturns@aol.com', '2019-06-29 09:36:41', '2019-06-29 09:36:41'),
(354, 'therealcemski@gmail.com', '2019-06-29 09:47:05', '2019-06-29 09:47:05'),
(355, 'bdiestro@gmail.com', '2019-06-30 00:07:53', '2019-06-30 00:07:53'),
(356, 'chenzhu511@gmail.com', '2019-06-30 04:51:42', '2019-06-30 04:51:42'),
(357, 'eslay65@gmail.com', '2019-06-30 11:01:41', '2019-06-30 11:01:41'),
(358, 'garywan37@gmail.com', '2019-06-30 13:59:29', '2019-06-30 13:59:29'),
(359, 'mshaw@dircon.co.uk', '2019-06-30 16:21:15', '2019-06-30 16:21:15'),
(360, 'rsherretz@yahoo.com', '2019-06-30 18:44:50', '2019-06-30 18:44:50'),
(361, 'irmadherrera@gmail.com', '2019-06-30 20:22:35', '2019-06-30 20:22:35'),
(362, 'patriciaschwab43@gmail.com', '2019-06-30 21:05:56', '2019-06-30 21:05:56'),
(363, 'celainej3307@gmail.com', '2019-06-30 22:47:01', '2019-06-30 22:47:01'),
(364, 'steveofnm@gmail.com', '2019-07-01 01:22:57', '2019-07-01 01:22:57'),
(365, 'misfitsbo@gmail.com', '2019-07-01 06:33:15', '2019-07-01 06:33:15'),
(366, 'carlosamadoblanco@gmail.com', '2019-07-01 11:27:29', '2019-07-01 11:27:29'),
(367, 'ekaterinausataya@gmail.com', '2019-07-01 15:51:06', '2019-07-01 15:51:06'),
(368, 'aaronmchiu@gmail.com', '2019-07-01 21:13:31', '2019-07-01 21:13:31'),
(369, 'navilopsocial@gmail.com', '2019-07-01 21:46:09', '2019-07-01 21:46:09'),
(370, 'bworden@peru.k12.in.us', '2019-07-01 22:03:36', '2019-07-01 22:03:36'),
(371, 'garricklouie@gmail.com', '2019-07-01 22:31:41', '2019-07-01 22:31:41'),
(372, 'garricklouie@aol.com', '2019-07-01 23:26:19', '2019-07-01 23:26:19'),
(373, 'oceanresortscenter@gmail.com', '2019-07-01 23:30:23', '2019-07-01 23:30:23'),
(374, 'mwhited@africanwildnaturals.com', '2019-07-01 23:57:33', '2019-07-01 23:57:33'),
(375, 'carrieaevans@att.net', '2019-07-02 00:03:19', '2019-07-02 00:03:19'),
(376, 'tanyaonsongo@yahoo.com', '2019-07-02 00:32:30', '2019-07-02 00:32:30'),
(377, 'wisepenny12crush@gmail.com', '2019-07-02 00:34:21', '2019-07-02 00:34:21'),
(378, 'redwing5109@yahoo.com', '2019-07-02 08:58:40', '2019-07-02 08:58:40'),
(379, 'ashli92009@gmail.com', '2019-07-02 10:21:52', '2019-07-02 10:21:52'),
(380, 'tmizutani42@gmail.com', '2019-07-02 10:55:42', '2019-07-02 10:55:42'),
(381, 'bhatfield103@gmail.com', '2019-07-02 12:58:07', '2019-07-02 12:58:07'),
(382, 'raymondmurguia@gmail.com', '2019-07-02 13:00:06', '2019-07-02 13:00:06'),
(383, 'hanna.kirzhner@gmx.de', '2019-07-02 13:46:09', '2019-07-02 13:46:09'),
(384, 'xiaofeng@gmail.com', '2019-07-02 15:03:29', '2019-07-02 15:03:29'),
(385, 'jsgreen1fdu@gmail.com', '2019-07-02 18:26:15', '2019-07-02 18:26:15'),
(386, 'cherylec24@gmail.com', '2019-07-02 21:59:26', '2019-07-02 21:59:26'),
(387, 'byoubengal@yahoo.com', '2019-07-02 22:21:35', '2019-07-02 22:21:35'),
(388, 'aaronschock@aol.com', '2019-07-02 22:45:47', '2019-07-02 22:45:47'),
(389, 'm.berringer3@gmail.com', '2019-07-03 00:40:32', '2019-07-03 00:40:32'),
(390, 'sschuler@ventureseattle.com', '2019-07-03 01:03:36', '2019-07-03 01:03:36'),
(391, 'kathleendesigns99@gmail.com', '2019-07-03 01:44:26', '2019-07-03 01:44:26'),
(392, 'anabircher@gmail.com', '2019-07-03 03:33:04', '2019-07-03 03:33:04'),
(393, 'dekish@yahoo.com', '2019-07-03 04:26:22', '2019-07-03 04:26:22'),
(394, 'matsunaga.laurafkgt@gmail.com', '2019-07-03 04:34:01', '2019-07-03 04:34:01'),
(395, 'trangies@yahoo.com', '2019-07-03 06:09:06', '2019-07-03 06:09:06'),
(396, 'tatrawalker@gmail.com', '2019-07-03 07:06:18', '2019-07-03 07:06:18'),
(397, 'kevinrawson212@gmail.com', '2019-07-03 07:27:57', '2019-07-03 07:27:57'),
(398, 'mariacoray@yahoo.com', '2019-07-03 07:46:28', '2019-07-03 07:46:28'),
(399, 'sounddiffusion@aol.com', '2019-07-03 09:38:05', '2019-07-03 09:38:05'),
(400, 'luisdjmambo@yahoo.com', '2019-07-03 11:42:53', '2019-07-03 11:42:53'),
(401, 'gerner388@aol.com', '2019-07-03 13:52:33', '2019-07-03 13:52:33'),
(402, 'mohindergandhi@yahoo.com', '2019-07-03 14:34:42', '2019-07-03 14:34:42'),
(403, 'ggiangiulio@gmail.com', '2019-07-03 18:21:59', '2019-07-03 18:21:59'),
(404, 'ken_lfe@yahoo.com', '2019-07-03 22:11:37', '2019-07-03 22:11:37'),
(405, 'dannygp_8503@yahoo.com', '2019-07-04 03:21:46', '2019-07-04 03:21:46'),
(406, 'jdesador@nycap.rr.com', '2019-07-04 04:01:05', '2019-07-04 04:01:05'),
(407, 'delilahcorinne@yahoo.com', '2019-07-04 04:43:43', '2019-07-04 04:43:43'),
(408, 'arrowheadlake1253@gmail.com', '2019-07-04 09:07:51', '2019-07-04 09:07:51'),
(409, 'palominomdc@gmail.com', '2019-07-04 11:56:54', '2019-07-04 11:56:54'),
(410, 'scottlang79@gmail.com', '2019-07-04 17:24:43', '2019-07-04 17:24:43'),
(411, 'ascaniya.office@gmail.com', '2019-07-04 17:33:47', '2019-07-04 17:33:47'),
(412, 'jaimesansano1973@gmail.com', '2019-07-04 20:56:54', '2019-07-04 20:56:54'),
(413, 'jnyamini@gmail.com', '2019-07-04 22:22:31', '2019-07-04 22:22:31'),
(414, 'liana.slawson@gmail.com', '2019-07-05 02:29:45', '2019-07-05 02:29:45'),
(415, 'langston131313@gmail.com', '2019-07-05 15:44:38', '2019-07-05 15:44:38'),
(416, 'loliamatree@gmail.com', '2019-07-05 18:39:13', '2019-07-05 18:39:13'),
(417, 'infocentr.ro@gmail.com', '2019-07-05 20:04:07', '2019-07-05 20:04:07'),
(418, 'brettalannagel@gmail.com', '2019-07-05 20:39:27', '2019-07-05 20:39:27'),
(419, 'ks_lee13@yahoo.com', '2019-07-05 22:06:31', '2019-07-05 22:06:31'),
(420, 'dvallone777@yahoo.com', '2019-07-05 23:23:46', '2019-07-05 23:23:46'),
(421, 'neeta.boddapati01@gmail.com', '2019-07-06 00:07:13', '2019-07-06 00:07:13'),
(422, 'cpresser66@gmail.com', '2019-07-06 02:13:47', '2019-07-06 02:13:47'),
(423, 'aydreaw@yahoo.com', '2019-07-06 07:03:56', '2019-07-06 07:03:56'),
(424, 'lewisw013@googlemail.com', '2019-07-06 07:14:35', '2019-07-06 07:14:35'),
(425, 'brwiseman1969@gmail.com', '2019-07-06 08:27:20', '2019-07-06 08:27:20'),
(426, 'tysonflowers567@gmail.com', '2019-07-06 10:29:33', '2019-07-06 10:29:33'),
(427, 'steiner.patrick.richterswil@gmail.com', '2019-07-06 11:24:50', '2019-07-06 11:24:50'),
(428, 'sethbla@aol.com', '2019-07-06 11:37:52', '2019-07-06 11:37:52'),
(429, 'white.alice17@gmail.com', '2019-07-06 12:33:34', '2019-07-06 12:33:34'),
(430, 'lisa.bulley6@googlemail.com', '2019-07-06 13:46:17', '2019-07-06 13:46:17'),
(431, 'brandondecloss@yahoo.com', '2019-07-06 22:40:57', '2019-07-06 22:40:57'),
(432, 'rpgo8899@yahoo.com', '2019-07-07 05:00:42', '2019-07-07 05:00:42'),
(433, 'chrisbagain@aol.com', '2019-07-07 06:04:47', '2019-07-07 06:04:47'),
(434, 'gumby1341@gmail.com', '2019-07-07 09:16:49', '2019-07-07 09:16:49'),
(435, 'rochea@gmx.de', '2019-07-07 16:00:52', '2019-07-07 16:00:52'),
(436, 'midasgt@aol.com', '2019-07-07 16:46:04', '2019-07-07 16:46:04'),
(437, 'catlove1070@aol.com', '2019-07-07 19:34:16', '2019-07-07 19:34:16'),
(438, 'admank@optonline.net', '2019-07-07 19:52:51', '2019-07-07 19:52:51'),
(439, 'travclay@gmail.com', '2019-07-07 20:06:30', '2019-07-07 20:06:30'),
(440, 'min.samuel@gmail.com', '2019-07-08 03:34:32', '2019-07-08 03:34:32'),
(441, 'kellydeaton@yahoo.com', '2019-07-08 04:21:13', '2019-07-08 04:21:13'),
(442, 'dawnmarruchella@yahoo.com', '2019-07-08 04:55:12', '2019-07-08 04:55:12');

-- --------------------------------------------------------

--
-- Table structure for table `other_information`
--

CREATE TABLE `other_information` (
  `id` int(11) NOT NULL,
  `homeLogo` varchar(255) DEFAULT NULL,
  `homeFavIcon` varchar(255) DEFAULT NULL,
  `categoryCoverImage` varchar(255) DEFAULT NULL,
  `categoryImage` varchar(255) DEFAULT NULL,
  `sliderImage` varchar(255) DEFAULT NULL,
  `teamMemberImage` varchar(255) DEFAULT NULL,
  `testimonialImage` varchar(255) DEFAULT NULL,
  `partnerImage` varchar(255) DEFAULT NULL,
  `articleHomeImage` varchar(255) DEFAULT NULL,
  `articleInnerImage` varchar(255) DEFAULT NULL,
  `adminMainLogo` varchar(255) DEFAULT NULL,
  `adminSmallLogo` varchar(255) DEFAULT NULL,
  `adminFavIcon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `other_information`
--

INSERT INTO `other_information` (`id`, `homeLogo`, `homeFavIcon`, `categoryCoverImage`, `categoryImage`, `sliderImage`, `teamMemberImage`, `testimonialImage`, `partnerImage`, `articleHomeImage`, `articleInnerImage`, `adminMainLogo`, `adminSmallLogo`, `adminFavIcon`, `created_at`, `updated_at`) VALUES
(1, '200*300 px', '50*100 px', NULL, NULL, '800*500 px', '200*100 px', '200*100 px', '50*50 px', '200*100 px', '500*400 px', '200*100 px', '200*100 px', '200*100 px', NULL, '2019-11-07 03:47:08');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `information` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `orderBy` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `name`, `information`, `image`, `description`, `orderBy`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Delta Brac Housing Finance Corporation Ltd.', NULL, 'public/uploads/partners/Sage-New-01_191912107594_67687886154_24920974305.png', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure</p>\r\n</body>\r\n</html>', 1, 1, '2019-11-14 00:07:50', '2019-11-17 04:55:33'),
(2, 'LankaBangla Investments Ltd.', NULL, 'public/uploads/partners/Sage-New-02_14376554905.png', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 2, 1, '2019-11-14 00:08:12', '2019-11-14 00:08:12'),
(3, 'BRAC EPL', NULL, 'public/uploads/partners/Sage-New-04_59848403043.png', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 3, 1, '2019-11-14 00:09:27', '2019-11-14 00:09:27'),
(4, 'American International School Dhaka', NULL, 'public/uploads/partners/Sage-New-05_8396816164.png', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 4, 1, '2019-11-14 00:09:49', '2019-11-14 00:09:49'),
(5, 'American & Efird (BD) Ltd.', NULL, 'public/uploads/partners/Sage-New-07_34548310908.png', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 5, 1, '2019-11-14 00:10:06', '2019-11-14 00:10:06'),
(6, 'Checkpoint Systems Bangladesh Ltd.', NULL, 'public/uploads/partners/Sage-New-10_65352969993.png', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 6, 1, '2019-11-14 00:10:35', '2019-11-14 00:10:35'),
(7, 'RDRS Bangladesh', NULL, 'public/uploads/partners/Sage-New-13_24426961580.png', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 7, 1, '2019-11-14 00:11:04', '2019-11-14 00:11:04'),
(8, 'Dhaka Ice Cream Ind. Limited', NULL, 'public/uploads/partners/Sage-New-20_29386867461.png', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 8, 1, '2019-11-14 00:12:02', '2019-11-14 00:12:02'),
(9, 'Crystal Martin Appraels Bangladesh Ltd.', NULL, 'public/uploads/partners/Sage-New-21_18139379336.png', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 9, 1, '2019-11-14 00:12:23', '2019-11-14 00:12:23'),
(10, 'NUVISTA PHARMA', NULL, 'public/uploads/partners/Sage-New-14_98898125180.png', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 10, 1, '2019-11-14 00:12:54', '2019-11-14 00:12:54');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('jisanahmed06@gmail.com', '$2y$10$39ex0T8QTrw7E5LkLNAJhu48bFuuIiN7.Q4iuH77kORw8uNdvCyV2', '2019-08-31 04:34:45');

-- --------------------------------------------------------

--
-- Table structure for table `policies`
--

CREATE TABLE `policies` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `icon` text COLLATE utf8mb4_unicode_ci,
  `policiesStatus` tinyint(1) NOT NULL,
  `metaTitle` text COLLATE utf8mb4_unicode_ci,
  `metaKeyword` text COLLATE utf8mb4_unicode_ci,
  `metaDescription` text COLLATE utf8mb4_unicode_ci,
  `orderBy` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(11) UNSIGNED NOT NULL,
  `menuId` int(11) DEFAULT NULL,
  `parentArticle` int(11) DEFAULT NULL,
  `articleName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstHomeTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondHomeTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstInnerTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondInnerTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstHomeImage` text COLLATE utf8mb4_unicode_ci,
  `firstInnerImage` text COLLATE utf8mb4_unicode_ci,
  `homeDescription` text COLLATE utf8mb4_unicode_ci,
  `innerDescription` text COLLATE utf8mb4_unicode_ci,
  `urlLink` text COLLATE utf8mb4_unicode_ci,
  `articleIcon` text COLLATE utf8mb4_unicode_ci,
  `metaTitle` text COLLATE utf8mb4_unicode_ci,
  `metaKeyword` text COLLATE utf8mb4_unicode_ci,
  `metaDescription` text COLLATE utf8mb4_unicode_ci,
  `orderBy` int(11) DEFAULT NULL,
  `articleStatus` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `menuId`, `parentArticle`, `articleName`, `firstHomeTitle`, `secondHomeTitle`, `firstInnerTitle`, `secondInnerTitle`, `firstHomeImage`, `firstInnerImage`, `homeDescription`, `innerDescription`, `urlLink`, `articleIcon`, `metaTitle`, `metaKeyword`, `metaDescription`, `orderBy`, `articleStatus`, `created_at`, `updated_at`) VALUES
(3, NULL, 7, NULL, 'Delta Brac Housing Finance Corporation Ltd.', NULL, 'Delta Brac Housing Finance Corporation Ltd.', NULL, 'public/uploads/portfolio/home/Sage-New-01_191912107594.png', 'public/uploads/portfolio/inner_page/Sage-New-01_191912107594_67687886154.png', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure</p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-11-12 23:16:19', '2019-11-17 04:37:36'),
(4, NULL, 7, NULL, 'LankaBangla Investments Ltd.', NULL, NULL, NULL, 'public/uploads/portfolio/home/Sage-New-02_38124727926.png', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-11-12 23:16:50', '2019-11-12 23:16:50'),
(5, NULL, 7, NULL, 'BRAC EPL', NULL, NULL, NULL, 'public/uploads/portfolio/home/Sage-New-04_29004762439.png', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-11-12 23:17:08', '2019-11-12 23:17:08'),
(6, NULL, 12, NULL, 'American International School Dhaka', NULL, NULL, NULL, 'public/uploads/portfolio/home/Sage-New-05_9077036413.png', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-11-12 23:19:11', '2019-11-12 23:19:11'),
(7, NULL, 12, NULL, 'American & Efird (BD) Ltd.', NULL, NULL, NULL, 'public/uploads/portfolio/home/Sage-New-07_86756947888.png', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-11-12 23:19:49', '2019-11-12 23:19:49'),
(8, NULL, 13, NULL, 'Checkpoint Systems Bangladesh Ltd.', NULL, NULL, NULL, 'public/uploads/portfolio/home/Sage-New-10_49495193836.png', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-11-12 23:20:12', '2019-11-12 23:20:12'),
(9, NULL, 13, NULL, 'RDRS Bangladesh', NULL, NULL, NULL, 'public/uploads/portfolio/home/Sage-New-13_78064563328.png', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-11-12 23:20:37', '2019-11-12 23:20:37'),
(10, NULL, 14, NULL, 'Dhaka Ice Cream Ind. Limited', NULL, NULL, NULL, 'public/uploads/portfolio/home/Sage-New-14_95678400476.png', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-11-12 23:21:04', '2019-11-12 23:21:04'),
(11, NULL, 15, NULL, 'Crystal Martin Appraels Bangladesh Ltd.', NULL, NULL, NULL, 'public/uploads/portfolio/home/Sage-New-21_48224668030.png', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-11-13 22:19:54', '2019-11-13 22:19:54');

-- --------------------------------------------------------

--
-- Table structure for table `registration_charge`
--

CREATE TABLE `registration_charge` (
  `id` int(11) UNSIGNED NOT NULL,
  `experienceId` int(11) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration_charge`
--

INSERT INTO `registration_charge` (`id`, `experienceId`, `salary`, `created_at`, `updated_at`) VALUES
(3, 6, '20000', '2019-09-19 08:56:55', '2019-09-19 09:09:37');

-- --------------------------------------------------------

--
-- Table structure for table `religions`
--

CREATE TABLE `religions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `religions`
--

INSERT INTO `religions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(7, 'Islam', '2019-10-01 09:37:19', '2019-10-01 09:42:46'),
(8, 'Hinduism', '2019-10-01 09:43:04', '2019-10-01 09:43:04'),
(9, 'Buddhism', '2019-10-01 09:43:09', '2019-10-01 09:43:09'),
(10, 'Christians', '2019-10-01 09:43:16', '2019-10-01 09:43:16'),
(11, NULL, '2019-10-03 12:14:59', '2019-10-03 12:14:59');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `customerId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `siteTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `siteName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `siteLogo` text COLLATE utf8mb4_unicode_ci,
  `sitefavIcon` text COLLATE utf8mb4_unicode_ci,
  `adminTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adminLogo` text COLLATE utf8mb4_unicode_ci,
  `adminsmalLogo` text COLLATE utf8mb4_unicode_ci,
  `adminfavIcon` text COLLATE utf8mb4_unicode_ci,
  `mobile1` text COLLATE utf8mb4_unicode_ci,
  `mobile2` text COLLATE utf8mb4_unicode_ci,
  `siteEmail1` text COLLATE utf8mb4_unicode_ci,
  `siteEmail2` text COLLATE utf8mb4_unicode_ci,
  `siteAddress1` text COLLATE utf8mb4_unicode_ci,
  `siteAddress2` text COLLATE utf8mb4_unicode_ci,
  `sitestatus` int(11) DEFAULT NULL,
  `metaTitle` text COLLATE utf8mb4_unicode_ci,
  `metaKeyword` text COLLATE utf8mb4_unicode_ci,
  `metaDescription` text COLLATE utf8mb4_unicode_ci,
  `orderBy` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `siteTitle`, `siteName`, `siteLogo`, `sitefavIcon`, `adminTitle`, `adminLogo`, `adminsmalLogo`, `adminfavIcon`, `mobile1`, `mobile2`, `siteEmail1`, `siteEmail2`, `siteAddress1`, `siteAddress2`, `sitestatus`, `metaTitle`, `metaKeyword`, `metaDescription`, `orderBy`, `created_at`, `updated_at`) VALUES
(1, 'Symphony is the best in bd', 'Symphony', 'public/uploads/site_logo/logo/logo3.png', 'public/uploads/site_logo/fav_icon/favicon.png', 'Admin', 'public/uploads/admin_logo/main_logo/logo3.png', 'public/uploads/admin_logo/small_logo/logo3.png', 'public/uploads/admin_logo/fav_icon/favicon.png', '+88 02 58 157 384', '+88 01872 650 660 - 669', 'info@symphonysoftt.com', 'SYMPHONYBD@GMAIL.COM', 'HOUSE # 02 (3RD FL.), LAKE CIRCUS, 3RD LANE', 'KALABAGAN, DHAKA-1205, BANGLADESH.', 1, 'Symphony', 'Symphony,mobile', 'test messege', 1, NULL, '2020-01-18 22:50:28');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderBy` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `parent`, `name`, `icon`, `orderBy`, `status`, `created_at`, `updated_at`) VALUES
(2, NULL, 'IT', 'fa fa-bars', NULL, '1', '2019-09-18 00:10:54', '2019-10-07 03:16:29'),
(3, '2', 'PHP', NULL, 2, '1', '2019-09-18 00:11:24', '2019-09-18 00:11:51'),
(4, NULL, 'Javascript', NULL, 3, '1', '2019-09-22 05:52:52', '2019-09-22 05:52:52'),
(5, NULL, 'Java', NULL, 4, '1', '2019-09-30 23:15:13', '2019-09-30 23:15:13'),
(6, NULL, 'Laravel', NULL, 5, '1', '2019-09-30 23:15:13', '2019-09-30 23:15:13'),
(7, NULL, 'Cakephp', NULL, 6, '1', '2019-09-30 23:15:13', '2019-09-30 23:15:13'),
(8, NULL, 'Jquery', NULL, 7, '1', '2019-09-30 23:15:13', '2019-09-30 23:15:13'),
(9, NULL, 'HTML5', NULL, 8, '1', '2019-09-30 23:15:13', '2019-09-30 23:15:13'),
(10, NULL, 'C++', NULL, 9, '1', '2019-10-02 01:42:24', '2019-10-02 01:42:24');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `productId` int(11) DEFAULT NULL,
  `section` text COLLATE utf8mb4_unicode_ci,
  `link` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `metaTitle` text COLLATE utf8mb4_unicode_ci,
  `metaKeyword` text COLLATE utf8mb4_unicode_ci,
  `metaDescription` text COLLATE utf8mb4_unicode_ci,
  `orderBy` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `firstTitle`, `secondTitle`, `description`, `image`, `productId`, `section`, `link`, `status`, `metaTitle`, `metaKeyword`, `metaDescription`, `orderBy`, `created_at`, `updated_at`) VALUES
(1, 'NBR Solution Provider', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><span style=\"color: #ffffff;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that</span></p>\r\n</body>\r\n</html>', 'public/uploads/slider_image/image (2)_72618139727.png', NULL, NULL, NULL, 1, NULL, NULL, NULL, 2, '2019-11-12 01:37:52', '2020-01-12 03:19:27'),
(2, 'Ready for Any Obstacle', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><span style=\"color: #000000;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour</span></p>\r\n</body>\r\n</html>', 'public/uploads/slider_image/image (1)_95953687109.png', NULL, NULL, NULL, 1, NULL, NULL, NULL, 2, '2019-11-12 01:39:52', '2019-11-25 04:58:16'),
(3, 'Shampan Vat', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'public/uploads/slider_image/image_96061672890_89517995380.png', NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, '2020-01-12 03:19:10', '2020-01-18 06:03:50');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook` text COLLATE utf8mb4_unicode_ci,
  `twitter` text COLLATE utf8mb4_unicode_ci,
  `google` text COLLATE utf8mb4_unicode_ci,
  `linkdin` text COLLATE utf8mb4_unicode_ci,
  `youtube` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `metaTitle` text COLLATE utf8mb4_unicode_ci,
  `metaKeyword` text COLLATE utf8mb4_unicode_ci,
  `metaDescription` text COLLATE utf8mb4_unicode_ci,
  `orderBy` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `facebook`, `twitter`, `google`, `linkdin`, `youtube`, `status`, `metaTitle`, `metaKeyword`, `metaDescription`, `orderBy`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/piqood', 'https://twitter.com/piqood', 'google', 'https://www.linkedin.com/in/piqood-online-shopping-144661190/', 'https://www.youtube.com/channel/UCzcdK7zdWXdtImmRT53pP1w', 1, NULL, NULL, NULL, NULL, NULL, '2019-11-24 03:00:28');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `subcategoryName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategoryStatus` tinyint(1) NOT NULL DEFAULT '1',
  `metaTitle` text COLLATE utf8mb4_unicode_ci,
  `metaKeyword` text COLLATE utf8mb4_unicode_ci,
  `metaDescription` text COLLATE utf8mb4_unicode_ci,
  `orderBy` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team-category`
--

CREATE TABLE `team-category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderBy` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team-category`
--

INSERT INTO `team-category` (`id`, `name`, `orderBy`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Board of Directories', 1, 1, '2019-11-17 01:28:16', '2019-11-17 01:28:16'),
(5, 'Implementation Team', 2, 1, '2019-11-17 01:28:31', '2019-11-17 01:28:31'),
(6, 'Development Team', 3, 1, '2019-11-17 01:28:42', '2019-11-17 01:28:42'),
(7, 'Operation Team', 4, 1, '2019-11-17 23:20:03', '2019-11-17 23:20:03'),
(8, 'Marketing Team', 5, 1, '2019-11-17 23:20:28', '2019-11-17 23:20:28'),
(9, 'IT Support Team', 6, 1, '2019-11-17 23:20:46', '2019-11-17 23:20:46');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(10) UNSIGNED NOT NULL,
  `teamCategory` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twiteer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_plus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderBy` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `teamCategory`, `name`, `email`, `phone`, `designation`, `image`, `description`, `facebook`, `twiteer`, `linkedin`, `instagram`, `skype`, `google_plus`, `orderBy`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 'Mr. Sayed Ahmed', 'sayed@gmail.com', '0194545656', 'Chairman', 'public/uploads/teams/avatar-5_43392410673.jpg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>dvdfvdfbvdfbdfbdfbdfbdbdfbdfb</p>\r\n</body>\r\n</html>', 'fa', 'tw', 'ln', 'in', 'sk', 'gg', 1, 1, '2019-11-02 03:16:07', '2019-11-17 23:22:10'),
(2, 4, 'Mr. Jamal Uddin Sikder', 'sikder@gmail.com', '01923948', 'Vice Chairman', 'public/uploads/teams/avatar-6_66748482127.jpg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\r\n</body>\r\n</html>', 'fa', 'tw', 'gw', 'ins', NULL, NULL, 2, 1, '2019-11-13 23:11:11', '2019-11-17 23:23:12'),
(3, 4, 'Mr. Faruque Sikder', 'faruk@gmail.com', '019384375343', 'Managing Director', 'public/uploads/teams/avatar-7_98511053251.jpg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'f', 'tw', 'ln', 'in', NULL, NULL, 3, 1, '2019-11-13 23:12:01', '2019-11-17 23:27:11'),
(4, 4, 'Mr. Munir Uddin Ahmed', 'test@gmail.com', '019383475434', 'Director', 'public/uploads/teams/avatar-8_62415135956.jpg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'f', 't', 'ln', NULL, NULL, NULL, 4, 1, '2019-11-13 23:12:29', '2019-11-17 23:28:00'),
(5, 4, 'Mr. Farid Ahmed', 'test@gmail.com', '01828374545', 'Director', 'public/uploads/teams/avatar-9_67226366187.jpg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'f', 'tw', 'ln', 'ins', NULL, NULL, 5, 1, '2019-11-13 23:13:15', '2019-11-17 23:28:19'),
(8, 5, 'Mirza Noor Ahmed', 'test6@gmail.com', NULL, 'Director', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 6, 1, '2019-11-17 01:57:56', '2019-11-17 23:28:38'),
(9, 4, 'Nooh Ul Alam Lelin', NULL, NULL, 'Director', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, '2019-11-17 23:29:05', '2019-11-17 23:29:05'),
(10, 4, 'Pushpita Prithwee', NULL, NULL, 'Director', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, '2019-11-17 23:29:33', '2019-11-17 23:29:33'),
(11, 5, 'Md. Faisal Bhuiyan', NULL, NULL, 'Manager- Accounting & ERP', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, '2019-11-17 23:29:59', '2019-11-17 23:29:59'),
(12, 4, 'Md. Kamruggaman', NULL, NULL, 'Sr. Executive- ERP & VAT', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 10, 1, '2019-11-17 23:30:29', '2019-11-17 23:30:29'),
(13, 5, 'Mohammad Rabiul Islam', NULL, NULL, 'Executive- ERP & VAT', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 11, 1, '2019-11-17 23:31:07', '2019-11-17 23:31:07'),
(14, 5, 'Ripon Kumar Chowdhury', NULL, NULL, 'Executive-Accounting & ERP', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 12, 1, '2019-11-17 23:31:32', '2019-11-17 23:31:32'),
(15, 5, 'Biplop Hossain', NULL, NULL, 'Executive-Accounting & ERP', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 13, 1, '2019-11-17 23:33:21', '2019-11-17 23:33:21'),
(16, 5, 'Monish Chakma', NULL, NULL, 'Executive-Accounting & ERP', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 14, 1, '2019-11-18 00:08:17', '2019-11-18 00:08:17'),
(17, 5, 'Md Fahad Ahmed', NULL, NULL, 'Executive-Accounting & ERP', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 15, 1, '2019-11-18 00:08:39', '2019-11-18 00:08:39'),
(18, 6, 'Md. Kamrul Hasan', NULL, NULL, 'Project Manager & CTO', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 16, 1, '2019-11-18 00:09:05', '2019-11-18 00:09:05'),
(19, 6, 'Ashikuzzaman Juwel', NULL, NULL, 'Sr. Software Developer', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 17, 1, '2019-11-18 00:10:26', '2019-11-18 00:10:26'),
(20, 6, 'Khalid Bin Sarower', NULL, NULL, 'Software Developer', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 18, 1, '2019-11-18 00:10:53', '2019-11-18 00:10:53'),
(21, 6, 'Saul Hamidur Rahman', NULL, NULL, 'Software Developer', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 19, 1, '2019-11-18 00:11:26', '2019-11-18 00:11:26'),
(22, 6, 'Md. Fahim Muntasir', NULL, NULL, 'Jr. Software Developer', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 20, 1, '2019-11-18 00:11:50', '2019-11-18 00:11:50'),
(23, 6, 'Md. Robin Khan', NULL, NULL, 'Jr. Software Developer', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 21, 1, '2019-11-18 00:12:15', '2019-11-18 00:12:15'),
(24, 6, 'Md. Yusuf Ali', NULL, NULL, 'Jr. Software Developer', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 22, 1, '2019-11-18 00:12:41', '2019-11-18 00:12:41'),
(25, 7, 'Md. Rashedul Alam', NULL, NULL, 'Executive (Admin & Accounts)', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 23, 1, '2019-11-18 00:13:09', '2019-11-18 00:13:09'),
(26, 7, 'Arifur Rahman', NULL, NULL, 'Executive (Admin)', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 24, 1, '2019-11-18 00:13:28', '2019-11-18 00:14:27'),
(35, 7, 'Hassan Mahamud', NULL, NULL, 'Jr. Executive (Admin)', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 25, 1, '2019-11-18 00:17:28', '2019-11-18 00:17:28'),
(36, 8, 'Mr. Farid Ahmed', NULL, NULL, 'Director', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 26, 1, '2019-11-18 00:18:22', '2019-11-18 00:18:22'),
(37, 8, 'Md. Abul Kashem', NULL, NULL, 'Asst. Manager - Marketing & Sales', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 27, 1, '2019-11-18 00:18:52', '2019-11-18 00:18:52'),
(38, 8, 'Rezwanul Hoque', NULL, NULL, 'Sr. Executive - Marketing', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 28, 1, '2019-11-18 00:19:22', '2019-11-18 00:20:19'),
(39, 8, 'Khairul Hassan', NULL, NULL, 'Executive - Marketing', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 29, 1, '2019-11-18 00:19:48', '2019-11-18 00:20:05'),
(40, 8, 'Md. Saiful Hussain', NULL, NULL, 'Executive - Marketing', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 30, 1, '2019-11-18 00:21:10', '2019-11-18 00:21:10'),
(41, 8, 'Md. Maninul Sadiq', NULL, NULL, 'Executive - Marketing', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 31, 1, '2019-11-18 00:21:45', '2019-11-18 00:21:45'),
(42, 9, 'Diluar Hossain', NULL, NULL, 'Executive (IT Support)', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 32, 1, '2019-11-18 00:22:25', '2019-11-18 00:22:25'),
(43, 9, 'Nure Alam Siddique', NULL, NULL, 'Executive (Networking & IT Support)', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 33, 1, '2019-11-18 00:22:48', '2019-11-18 00:22:48'),
(44, 9, 'Md. Nur Al Safhayet', NULL, NULL, 'Jr. Executive (IT Support)', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 34, 1, '2019-11-18 00:23:13', '2019-11-18 00:23:13');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `information` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `orderBy` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upazilas`
--

CREATE TABLE `upazilas` (
  `id` int(2) UNSIGNED NOT NULL,
  `district_id` int(2) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `bn_name` varchar(50) NOT NULL,
  `is_active` int(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `upazilas`
--

INSERT INTO `upazilas` (`id`, `district_id`, `name`, `bn_name`, `is_active`) VALUES
(1, 34, 'Amtali Upazila', 'আমতলী', 1),
(2, 34, 'Bamna Upazila', 'বামনা', 1),
(3, 34, 'Barguna Sadar Upazila', 'বরগুনা সদর', 1),
(4, 34, 'Betagi Upazila', 'বেতাগি', 1),
(5, 34, 'Patharghata Upazila', 'পাথরঘাটা', 1),
(6, 34, 'Taltali Upazila', 'তালতলী', 1),
(7, 35, 'Muladi Upazila', 'মুলাদি', 1),
(8, 35, 'Babuganj Upazila', 'বাবুগঞ্জ', 1),
(9, 35, 'Agailjhara Upazila', 'আগাইলঝরা', 1),
(10, 35, 'Barisal Sadar Upazila', 'বরিশাল সদর', 1),
(11, 35, 'Bakerganj Upazila', 'বাকেরগঞ্জ', 1),
(12, 35, 'Banaripara Upazila', 'বানাড়িপারা', 1),
(13, 35, 'Gaurnadi Upazila', 'গৌরনদী', 1),
(14, 35, 'Hizla Upazila', 'হিজলা', 1),
(15, 35, 'Mehendiganj Upazila', 'মেহেদিগঞ্জ ', 1),
(16, 35, 'Wazirpur Upazila', 'ওয়াজিরপুর', 1),
(17, 36, 'Bhola Sadar Upazila', 'ভোলা সদর', 1),
(18, 36, 'Burhanuddin Upazila', 'বুরহানউদ্দিন', 1),
(19, 36, 'Char Fasson Upazila', 'চর ফ্যাশন', 1),
(20, 36, 'Daulatkhan Upazila', 'দৌলতখান', 1),
(21, 36, 'Lalmohan Upazila', 'লালমোহন', 1),
(22, 36, 'Manpura Upazila', 'মনপুরা', 1),
(23, 36, 'Tazumuddin Upazila', 'তাজুমুদ্দিন', 1),
(24, 37, 'Jhalokati Sadar Upazila', 'ঝালকাঠি সদর', 1),
(25, 37, 'Kathalia Upazila', 'কাঁঠালিয়া', 1),
(26, 37, 'Nalchity Upazila', 'নালচিতি', 1),
(27, 37, 'Rajapur Upazila', 'রাজাপুর', 1),
(28, 38, 'Bauphal Upazila', 'বাউফল', 1),
(29, 38, 'Dashmina Upazila', 'দশমিনা', 1),
(30, 38, 'Galachipa Upazila', 'গলাচিপা', 1),
(31, 38, 'Kalapara Upazila', 'কালাপারা', 1),
(32, 38, 'Mirzaganj Upazila', 'মির্জাগঞ্জ ', 1),
(33, 38, 'Patuakhali Sadar Upazila', 'পটুয়াখালী সদর', 1),
(34, 38, 'Dumki Upazila', 'ডুমকি', 1),
(35, 38, 'Rangabali Upazila', 'রাঙ্গাবালি', 1),
(36, 39, 'Bhandaria', 'ভ্যান্ডারিয়া', 1),
(37, 39, 'Kaukhali', 'কাউখালি', 1),
(38, 39, 'Mathbaria', 'মাঠবাড়িয়া', 1),
(39, 39, 'Nazirpur', 'নাজিরপুর', 1),
(40, 39, 'Nesarabad', 'নেসারাবাদ', 1),
(41, 39, 'Pirojpur Sadar', 'পিরোজপুর সদর', 1),
(42, 39, 'Zianagar', 'জিয়ানগর', 1),
(43, 40, 'Bandarban Sadar', 'বান্দরবন সদর', 1),
(44, 40, 'Thanchi', 'থানচি', 1),
(45, 40, 'Lama', 'লামা', 1),
(46, 40, 'Naikhongchhari', 'নাইখংছড়ি ', 1),
(47, 40, 'Ali kadam', 'আলী কদম', 1),
(48, 40, 'Rowangchhari', 'রউয়াংছড়ি ', 1),
(49, 40, 'Ruma', 'রুমা', 1),
(50, 41, 'Brahmanbaria Sadar Upazila', 'ব্রাহ্মণবাড়িয়া সদর', 1),
(51, 41, 'Ashuganj Upazila', 'আশুগঞ্জ', 1),
(52, 41, 'Nasirnagar Upazila', 'নাসির নগর', 1),
(53, 41, 'Nabinagar Upazila', 'নবীনগর', 1),
(54, 41, 'Sarail Upazila', 'সরাইল', 1),
(55, 41, 'Shahbazpur Town', 'শাহবাজপুর টাউন', 1),
(56, 41, 'Kasba Upazila', 'কসবা', 1),
(57, 41, 'Akhaura Upazila', 'আখাউরা', 1),
(58, 41, 'Bancharampur Upazila', 'বাঞ্ছারামপুর', 1),
(59, 41, 'Bijoynagar Upazila', 'বিজয় নগর', 1),
(60, 42, 'Chandpur Sadar', 'চাঁদপুর সদর', 1),
(61, 42, 'Faridganj', 'ফরিদগঞ্জ', 1),
(62, 42, 'Haimchar', 'হাইমচর', 1),
(63, 42, 'Haziganj', 'হাজীগঞ্জ', 1),
(64, 42, 'Kachua', 'কচুয়া', 1),
(65, 42, 'Matlab Uttar', 'মতলব উত্তর', 1),
(66, 42, 'Matlab Dakkhin', 'মতলব দক্ষিণ', 1),
(67, 42, 'Shahrasti', 'শাহরাস্তি', 1),
(68, 43, 'Anwara Upazila', 'আনোয়ারা', 1),
(69, 43, 'Banshkhali Upazila', 'বাশখালি', 1),
(70, 43, 'Boalkhali Upazila', 'বোয়ালখালি', 1),
(71, 43, 'Chandanaish Upazila', 'চন্দনাইশ', 1),
(72, 43, 'Fatikchhari Upazila', 'ফটিকছড়ি', 1),
(73, 43, 'Hathazari Upazila', 'হাঠহাজারী', 1),
(74, 43, 'Lohagara Upazila', 'লোহাগারা', 1),
(75, 43, 'Mirsharai Upazila', 'মিরসরাই', 1),
(76, 43, 'Patiya Upazila', 'পটিয়া', 1),
(77, 43, 'Rangunia Upazila', 'রাঙ্গুনিয়া', 1),
(78, 43, 'Raozan Upazila', 'রাউজান', 1),
(79, 43, 'Sandwip Upazila', 'সন্দ্বীপ', 1),
(80, 43, 'Satkania Upazila', 'সাতকানিয়া', 1),
(81, 43, 'Sitakunda Upazila', 'সীতাকুণ্ড', 1),
(82, 44, 'Barura Upazila', 'বড়ুরা', 1),
(83, 44, 'Brahmanpara Upazila', 'ব্রাহ্মণপাড়া', 1),
(84, 44, 'Burichong Upazila', 'বুড়িচং', 1),
(85, 44, 'Chandina Upazila', 'চান্দিনা', 1),
(86, 44, 'Chauddagram Upazila', 'চৌদ্দগ্রাম', 1),
(87, 44, 'Daudkandi Upazila', 'দাউদকান্দি', 1),
(88, 44, 'Debidwar Upazila', 'দেবীদ্বার', 1),
(89, 44, 'Homna Upazila', 'হোমনা', 1),
(90, 44, 'Comilla Sadar Upazila', 'কুমিল্লা সদর', 1),
(91, 44, 'Laksam Upazila', 'লাকসাম', 1),
(92, 44, 'Monohorgonj Upazila', 'মনোহরগঞ্জ', 1),
(93, 44, 'Meghna Upazila', 'মেঘনা', 1),
(94, 44, 'Muradnagar Upazila', 'মুরাদনগর', 1),
(95, 44, 'Nangalkot Upazila', 'নাঙ্গালকোট', 1),
(96, 44, 'Comilla Sadar South Upazila', 'কুমিল্লা সদর দক্ষিণ', 1),
(97, 44, 'Titas Upazila', 'তিতাস', 1),
(98, 45, 'Chakaria Upazila', 'চকরিয়া', 1),
(100, 45, 'Cox\'s Bazar Sadar Upazila', 'কক্স বাজার সদর', 1),
(101, 45, 'Kutubdia Upazila', 'কুতুবদিয়া', 1),
(102, 45, 'Maheshkhali Upazila', 'মহেশখালী', 1),
(103, 45, 'Ramu Upazila', 'রামু', 1),
(104, 45, 'Teknaf Upazila', 'টেকনাফ', 1),
(105, 45, 'Ukhia Upazila', 'উখিয়া', 1),
(106, 45, 'Pekua Upazila', 'পেকুয়া', 1),
(107, 46, 'Feni Sadar', 'ফেনী সদর', 1),
(108, 46, 'Chagalnaiya', 'ছাগল নাইয়া', 1),
(109, 46, 'Daganbhyan', 'দাগানভিয়া', 1),
(110, 46, 'Parshuram', 'পরশুরাম', 1),
(111, 46, 'Fhulgazi', 'ফুলগাজি', 1),
(112, 46, 'Sonagazi', 'সোনাগাজি', 1),
(113, 47, 'Dighinala Upazila', 'দিঘিনালা ', 1),
(114, 47, 'Khagrachhari Upazila', 'খাগড়াছড়ি', 1),
(115, 47, 'Lakshmichhari Upazila', 'লক্ষ্মীছড়ি', 1),
(116, 47, 'Mahalchhari Upazila', 'মহলছড়ি', 1),
(117, 47, 'Manikchhari Upazila', 'মানিকছড়ি', 1),
(118, 47, 'Matiranga Upazila', 'মাটিরাঙ্গা', 1),
(119, 47, 'Panchhari Upazila', 'পানছড়ি', 1),
(120, 47, 'Ramgarh Upazila', 'রামগড়', 1),
(121, 48, 'Lakshmipur Sadar Upazila', 'লক্ষ্মীপুর সদর', 1),
(122, 48, 'Raipur Upazila', 'রায়পুর', 1),
(123, 48, 'Ramganj Upazila', 'রামগঞ্জ', 1),
(124, 48, 'Ramgati Upazila', 'রামগতি', 1),
(125, 48, 'Komol Nagar Upazila', 'কমল নগর', 1),
(126, 49, 'Noakhali Sadar Upazila', 'নোয়াখালী সদর', 1),
(127, 49, 'Begumganj Upazila', 'বেগমগঞ্জ', 1),
(128, 49, 'Chatkhil Upazila', 'চাটখিল', 1),
(129, 49, 'Companyganj Upazila', 'কোম্পানীগঞ্জ', 1),
(130, 49, 'Shenbag Upazila', 'শেনবাগ', 1),
(131, 49, 'Hatia Upazila', 'হাতিয়া', 1),
(132, 49, 'Kobirhat Upazila', 'কবিরহাট ', 1),
(133, 49, 'Sonaimuri Upazila', 'সোনাইমুরি', 1),
(134, 49, 'Suborno Char Upazila', 'সুবর্ণ চর ', 1),
(135, 50, 'Rangamati Sadar Upazila', 'রাঙ্গামাটি সদর', 1),
(136, 50, 'Belaichhari Upazila', 'বেলাইছড়ি', 1),
(137, 50, 'Bagaichhari Upazila', 'বাঘাইছড়ি', 1),
(138, 50, 'Barkal Upazila', 'বরকল', 1),
(139, 50, 'Juraichhari Upazila', 'জুরাইছড়ি', 1),
(140, 50, 'Rajasthali Upazila', 'রাজাস্থলি', 1),
(141, 50, 'Kaptai Upazila', 'কাপ্তাই', 1),
(142, 50, 'Langadu Upazila', 'লাঙ্গাডু', 1),
(143, 50, 'Nannerchar Upazila', 'নান্নেরচর ', 1),
(144, 50, 'Kaukhali Upazila', 'কাউখালি', 1),
(145, 1, 'Dhamrai Upazila', 'ধামরাই', 1),
(146, 1, 'Dohar Upazila', 'দোহার', 1),
(147, 1, 'Keraniganj Upazila', 'কেরানীগঞ্জ', 1),
(148, 1, 'Nawabganj Upazila', 'নবাবগঞ্জ', 1),
(149, 1, 'Savar Upazila', 'সাভার', 1),
(150, 2, 'Faridpur Sadar Upazila', 'ফরিদপুর সদর', 1),
(151, 2, 'Boalmari Upazila', 'বোয়ালমারী', 1),
(152, 2, 'Alfadanga Upazila', 'আলফাডাঙ্গা', 1),
(153, 2, 'Madhukhali Upazila', 'মধুখালি', 1),
(154, 2, 'Bhanga Upazila', 'ভাঙ্গা', 1),
(155, 2, 'Nagarkanda Upazila', 'নগরকান্ড', 1),
(156, 2, 'Charbhadrasan Upazila', 'চরভদ্রাসন ', 1),
(157, 2, 'Sadarpur Upazila', 'সদরপুর', 1),
(158, 2, 'Shaltha Upazila', 'শালথা', 1),
(159, 3, 'Gazipur Sadar-Joydebpur', 'গাজীপুর সদর', 1),
(160, 3, 'Kaliakior', 'কালিয়াকৈর', 1),
(161, 3, 'Kapasia', 'কাপাসিয়া', 1),
(162, 3, 'Sripur', 'শ্রীপুর', 1),
(163, 3, 'Kaliganj', 'কালীগঞ্জ', 1),
(164, 3, 'Tongi', 'টঙ্গি', 1),
(165, 4, 'Gopalganj Sadar Upazila', 'গোপালগঞ্জ সদর', 1),
(166, 4, 'Kashiani Upazila', 'কাশিয়ানি', 1),
(167, 4, 'Kotalipara Upazila', 'কোটালিপাড়া', 1),
(168, 4, 'Muksudpur Upazila', 'মুকসুদপুর', 1),
(169, 4, 'Tungipara Upazila', 'টুঙ্গিপাড়া', 1),
(170, 5, 'Dewanganj Upazila', 'দেওয়ানগঞ্জ', 1),
(171, 5, 'Baksiganj Upazila', 'বকসিগঞ্জ', 1),
(172, 5, 'Islampur Upazila', 'ইসলামপুর', 1),
(173, 5, 'Jamalpur Sadar Upazila', 'জামালপুর সদর', 1),
(174, 5, 'Madarganj Upazila', 'মাদারগঞ্জ', 1),
(175, 5, 'Melandaha Upazila', 'মেলানদাহা', 1),
(176, 5, 'Sarishabari Upazila', 'সরিষাবাড়ি ', 1),
(177, 5, 'Narundi Police I.C', 'নারুন্দি', 1),
(178, 6, 'Astagram Upazila', 'অষ্টগ্রাম', 1),
(179, 6, 'Bajitpur Upazila', 'বাজিতপুর', 1),
(180, 6, 'Bhairab Upazila', 'ভৈরব', 1),
(181, 6, 'Hossainpur Upazila', 'হোসেনপুর ', 1),
(182, 6, 'Itna Upazila', 'ইটনা', 1),
(183, 6, 'Karimganj Upazila', 'করিমগঞ্জ', 1),
(184, 6, 'Katiadi Upazila', 'কতিয়াদি', 1),
(185, 6, 'Kishoreganj Sadar Upazila', 'কিশোরগঞ্জ সদর', 1),
(186, 6, 'Kuliarchar Upazila', 'কুলিয়ারচর', 1),
(187, 6, 'Mithamain Upazila', 'মিঠামাইন', 1),
(188, 6, 'Nikli Upazila', 'নিকলি', 1),
(189, 6, 'Pakundia Upazila', 'পাকুন্ডা', 1),
(190, 6, 'Tarail Upazila', 'তাড়াইল', 1),
(191, 7, 'Madaripur Sadar', 'মাদারীপুর সদর', 1),
(192, 7, 'Kalkini', 'কালকিনি', 1),
(193, 7, 'Rajoir', 'রাজইর', 1),
(194, 7, 'Shibchar', 'শিবচর', 1),
(195, 8, 'Manikganj Sadar Upazila', 'মানিকগঞ্জ সদর', 1),
(196, 8, 'Singair Upazila', 'সিঙ্গাইর', 1),
(197, 8, 'Shibalaya Upazila', 'শিবালয়', 1),
(198, 8, 'Saturia Upazila', 'সাঠুরিয়া', 1),
(199, 8, 'Harirampur Upazila', 'হরিরামপুর', 1),
(200, 8, 'Ghior Upazila', 'ঘিওর', 1),
(201, 8, 'Daulatpur Upazila', 'দৌলতপুর', 1),
(202, 9, 'Lohajang Upazila', 'লোহাজং', 1),
(203, 9, 'Sreenagar Upazila', 'শ্রীনগর', 1),
(204, 9, 'Munshiganj Sadar Upazila', 'মুন্সিগঞ্জ সদর', 1),
(205, 9, 'Sirajdikhan Upazila', 'সিরাজদিখান', 1),
(206, 9, 'Tongibari Upazila', 'টঙ্গিবাড়ি', 1),
(207, 9, 'Gazaria Upazila', 'গজারিয়া', 1),
(208, 10, 'Bhaluka', 'ভালুকা', 1),
(209, 10, 'Trishal', 'ত্রিশাল', 1),
(210, 10, 'Haluaghat', 'হালুয়াঘাট', 1),
(211, 10, 'Muktagachha', 'মুক্তাগাছা', 1),
(212, 10, 'Dhobaura', 'ধবারুয়া', 1),
(213, 10, 'Fulbaria', 'ফুলবাড়িয়া', 1),
(214, 10, 'Gaffargaon', 'গফরগাঁও', 1),
(215, 10, 'Gauripur', 'গৌরিপুর', 1),
(216, 10, 'Ishwarganj', 'ঈশ্বরগঞ্জ', 1),
(217, 10, 'Mymensingh Sadar', 'ময়মনসিং সদর', 1),
(218, 10, 'Nandail', 'নন্দাইল', 1),
(219, 10, 'Phulpur', 'ফুলপুর', 1),
(220, 11, 'Araihazar Upazila', 'আড়াইহাজার', 1),
(221, 11, 'Sonargaon Upazila', 'সোনারগাঁও', 1),
(222, 11, 'Bandar', 'বান্দার', 1),
(223, 11, 'Naryanganj Sadar Upazila', 'নারায়ানগঞ্জ সদর', 1),
(224, 11, 'Rupganj Upazila', 'রূপগঞ্জ', 1),
(225, 11, 'Siddirgonj Upazila', 'সিদ্ধিরগঞ্জ', 1),
(226, 12, 'Belabo Upazila', 'বেলাবো', 1),
(227, 12, 'Monohardi Upazila', 'মনোহরদি', 1),
(228, 12, 'Narsingdi Sadar Upazila', 'নরসিংদী সদর', 1),
(229, 12, 'Palash Upazila', 'পলাশ', 1),
(230, 12, 'Raipura Upazila, Narsingdi', 'রায়পুর', 1),
(231, 12, 'Shibpur Upazila', 'শিবপুর', 1),
(232, 13, 'Kendua Upazilla', 'কেন্দুয়া', 1),
(233, 13, 'Atpara Upazilla', 'আটপাড়া', 1),
(234, 13, 'Barhatta Upazilla', 'বরহাট্টা', 1),
(235, 13, 'Durgapur Upazilla', 'দুর্গাপুর', 1),
(236, 13, 'Kalmakanda Upazilla', 'কলমাকান্দা', 1),
(237, 13, 'Madan Upazilla', 'মদন', 1),
(238, 13, 'Mohanganj Upazilla', 'মোহনগঞ্জ', 1),
(239, 13, 'Netrakona-S Upazilla', 'নেত্রকোনা সদর', 1),
(240, 13, 'Purbadhala Upazilla', 'পূর্বধলা', 1),
(241, 13, 'Khaliajuri Upazilla', 'খালিয়াজুরি', 1),
(242, 14, 'Baliakandi Upazila', 'বালিয়াকান্দি', 1),
(243, 14, 'Goalandaghat Upazila', 'গোয়ালন্দ ঘাট', 1),
(244, 14, 'Pangsha Upazila', 'পাংশা', 1),
(245, 14, 'Kalukhali Upazila', 'কালুখালি', 1),
(246, 14, 'Rajbari Sadar Upazila', 'রাজবাড়ি সদর', 1),
(247, 15, 'Shariatpur Sadar -Palong', 'শরীয়তপুর সদর ', 1),
(248, 15, 'Damudya Upazila', 'দামুদিয়া', 1),
(249, 15, 'Naria Upazila', 'নড়িয়া', 1),
(250, 15, 'Jajira Upazila', 'জাজিরা', 1),
(251, 15, 'Bhedarganj Upazila', 'ভেদারগঞ্জ', 1),
(252, 15, 'Gosairhat Upazila', 'গোসাইর হাট ', 1),
(253, 16, 'Jhenaigati Upazila', 'ঝিনাইগাতি', 1),
(254, 16, 'Nakla Upazila', 'নাকলা', 1),
(255, 16, 'Nalitabari Upazila', 'নালিতাবাড়ি', 1),
(256, 16, 'Sherpur Sadar Upazila', 'শেরপুর সদর', 1),
(257, 16, 'Sreebardi Upazila', 'শ্রীবরদি', 1),
(258, 17, 'Tangail Sadar Upazila', 'টাঙ্গাইল সদর', 1),
(259, 17, 'Sakhipur Upazila', 'সখিপুর', 1),
(260, 17, 'Basail Upazila', 'বসাইল', 1),
(261, 17, 'Madhupur Upazila', 'মধুপুর', 1),
(262, 17, 'Ghatail Upazila', 'ঘাটাইল', 1),
(263, 17, 'Kalihati Upazila', 'কালিহাতি', 1),
(264, 17, 'Nagarpur Upazila', 'নগরপুর', 1),
(265, 17, 'Mirzapur Upazila', 'মির্জাপুর', 1),
(266, 17, 'Gopalpur Upazila', 'গোপালপুর', 1),
(267, 17, 'Delduar Upazila', 'দেলদুয়ার', 1),
(268, 17, 'Bhuapur Upazila', 'ভুয়াপুর', 1),
(269, 17, 'Dhanbari Upazila', 'ধানবাড়ি', 1),
(270, 55, 'Bagerhat Sadar Upazila', 'বাগেরহাট সদর', 1),
(271, 55, 'Chitalmari Upazila', 'চিতলমাড়ি', 1),
(272, 55, 'Fakirhat Upazila', 'ফকিরহাট', 1),
(273, 55, 'Kachua Upazila', 'কচুয়া', 1),
(274, 55, 'Mollahat Upazila', 'মোল্লাহাট ', 1),
(275, 55, 'Mongla Upazila', 'মংলা', 1),
(276, 55, 'Morrelganj Upazila', 'মরেলগঞ্জ', 1),
(277, 55, 'Rampal Upazila', 'রামপাল', 1),
(278, 55, 'Sarankhola Upazila', 'স্মরণখোলা', 1),
(279, 56, 'Damurhuda Upazila', 'দামুরহুদা', 1),
(280, 56, 'Chuadanga-S Upazila', 'চুয়াডাঙ্গা সদর', 1),
(281, 56, 'Jibannagar Upazila', 'জীবন নগর ', 1),
(282, 56, 'Alamdanga Upazila', 'আলমডাঙ্গা', 1),
(283, 57, 'Abhaynagar Upazila', 'অভয়নগর', 1),
(284, 57, 'Keshabpur Upazila', 'কেশবপুর', 1),
(285, 57, 'Bagherpara Upazila', 'বাঘের পাড়া ', 1),
(286, 57, 'Jessore Sadar Upazila', 'যশোর সদর', 1),
(287, 57, 'Chaugachha Upazila', 'চৌগাছা', 1),
(288, 57, 'Manirampur Upazila', 'মনিরামপুর ', 1),
(289, 57, 'Jhikargachha Upazila', 'ঝিকরগাছা', 1),
(290, 57, 'Sharsha Upazila', 'সারশা', 1),
(291, 58, 'Jhenaidah Sadar Upazila', 'ঝিনাইদহ সদর', 1),
(292, 58, 'Maheshpur Upazila', 'মহেশপুর', 1),
(293, 58, 'Kaliganj Upazila', 'কালীগঞ্জ', 1),
(294, 58, 'Kotchandpur Upazila', 'কোট চাঁদপুর ', 1),
(295, 58, 'Shailkupa Upazila', 'শৈলকুপা', 1),
(296, 58, 'Harinakunda Upazila', 'হাড়িনাকুন্দা', 1),
(297, 59, 'Terokhada Upazila', 'তেরোখাদা', 1),
(298, 59, 'Batiaghata Upazila', 'বাটিয়াঘাটা ', 1),
(299, 59, 'Dacope Upazila', 'ডাকপে', 1),
(300, 59, 'Dumuria Upazila', 'ডুমুরিয়া', 1),
(301, 59, 'Dighalia Upazila', 'দিঘলিয়া', 1),
(302, 59, 'Koyra Upazila', 'কয়ড়া', 1),
(303, 59, 'Paikgachha Upazila', 'পাইকগাছা', 1),
(304, 59, 'Phultala Upazila', 'ফুলতলা', 1),
(305, 59, 'Rupsa Upazila', 'রূপসা', 1),
(306, 60, 'Kushtia Sadar', 'কুষ্টিয়া সদর', 1),
(307, 60, 'Kumarkhali', 'কুমারখালি', 1),
(308, 60, 'Daulatpur', 'দৌলতপুর', 1),
(309, 60, 'Mirpur', 'মিরপুর', 1),
(310, 60, 'Bheramara', 'ভেরামারা', 1),
(311, 60, 'Khoksa', 'খোকসা', 1),
(312, 61, 'Magura Sadar Upazila', 'মাগুরা সদর', 1),
(313, 61, 'Mohammadpur Upazila', 'মোহাম্মাদপুর', 1),
(314, 61, 'Shalikha Upazila', 'শালিখা', 1),
(315, 61, 'Sreepur Upazila', 'শ্রীপুর', 1),
(316, 62, 'angni Upazila', 'আংনি', 1),
(317, 62, 'Mujib Nagar Upazila', 'মুজিব নগর', 1),
(318, 62, 'Meherpur-S Upazila', 'মেহেরপুর সদর', 1),
(319, 63, 'Narail-S Upazilla', 'নড়াইল সদর', 1),
(320, 63, 'Lohagara Upazilla', 'লোহাগাড়া', 1),
(321, 63, 'Kalia Upazilla', 'কালিয়া', 1),
(322, 64, 'Satkhira Sadar Upazila', 'সাতক্ষীরা সদর', 1),
(323, 64, 'Assasuni Upazila', 'আসসাশুনি ', 1),
(324, 64, 'Debhata Upazila', 'দেভাটা', 1),
(325, 64, 'Tala Upazila', 'তালা', 1),
(326, 64, 'Kalaroa Upazila', 'কলরোয়া', 1),
(327, 64, 'Kaliganj Upazila', 'কালীগঞ্জ', 1),
(328, 64, 'Shyamnagar Upazila', 'শ্যামনগর', 1),
(329, 18, 'Adamdighi', 'আদমদিঘী', 1),
(330, 18, 'Bogra Sadar', 'বগুড়া সদর', 1),
(331, 18, 'Sherpur', 'শেরপুর', 1),
(332, 18, 'Dhunat', 'ধুনট', 1),
(333, 18, 'Dhupchanchia', 'দুপচাচিয়া', 1),
(334, 18, 'Gabtali', 'গাবতলি', 1),
(335, 18, 'Kahaloo', 'কাহালু', 1),
(336, 18, 'Nandigram', 'নন্দিগ্রাম', 1),
(337, 18, 'Sahajanpur', 'শাহজাহানপুর', 1),
(338, 18, 'Sariakandi', 'সারিয়াকান্দি', 1),
(339, 18, 'Shibganj', 'শিবগঞ্জ', 1),
(340, 18, 'Sonatala', 'সোনাতলা', 1),
(341, 19, 'Joypurhat S', 'জয়পুরহাট সদর', 1),
(342, 19, 'Akkelpur', 'আক্কেলপুর', 1),
(343, 19, 'Kalai', 'কালাই', 1),
(344, 19, 'Khetlal', 'খেতলাল', 1),
(345, 19, 'Panchbibi', 'পাঁচবিবি', 1),
(346, 20, 'Naogaon Sadar Upazila', 'নওগাঁ সদর', 1),
(347, 20, 'Mohadevpur Upazila', 'মহাদেবপুর', 1),
(348, 20, 'Manda Upazila', 'মান্দা', 1),
(349, 20, 'Niamatpur Upazila', 'নিয়ামতপুর', 1),
(350, 20, 'Atrai Upazila', 'আত্রাই', 1),
(351, 20, 'Raninagar Upazila', 'রাণীনগর', 1),
(352, 20, 'Patnitala Upazila', 'পত্নীতলা', 1),
(353, 20, 'Dhamoirhat Upazila', 'ধামইরহাট ', 1),
(354, 20, 'Sapahar Upazila', 'সাপাহার', 1),
(355, 20, 'Porsha Upazila', 'পোরশা', 1),
(356, 20, 'Badalgachhi Upazila', 'বদলগাছি', 1),
(357, 21, 'Natore Sadar Upazila', 'নাটোর সদর', 1),
(358, 21, 'Baraigram Upazila', 'বড়াইগ্রাম', 1),
(359, 21, 'Bagatipara Upazila', 'বাগাতিপাড়া', 1),
(360, 21, 'Lalpur Upazila', 'লালপুর', 1),
(361, 21, 'Natore Sadar Upazila', 'নাটোর সদর', 1),
(362, 21, 'Baraigram Upazila', 'বড়াই গ্রাম', 1),
(363, 22, 'Bholahat Upazila', 'ভোলাহাট', 1),
(364, 22, 'Gomastapur Upazila', 'গোমস্তাপুর', 1),
(365, 22, 'Nachole Upazila', 'নাচোল', 1),
(366, 22, 'Nawabganj Sadar Upazila', 'নবাবগঞ্জ সদর', 1),
(367, 22, 'Shibganj Upazila', 'শিবগঞ্জ', 1),
(368, 23, 'Atgharia Upazila', 'আটঘরিয়া', 1),
(369, 23, 'Bera Upazila', 'বেড়া', 1),
(370, 23, 'Bhangura Upazila', 'ভাঙ্গুরা', 1),
(371, 23, 'Chatmohar Upazila', 'চাটমোহর', 1),
(372, 23, 'Faridpur Upazila', 'ফরিদপুর', 1),
(373, 23, 'Ishwardi Upazila', 'ঈশ্বরদী', 1),
(374, 23, 'Pabna Sadar Upazila', 'পাবনা সদর', 1),
(375, 23, 'Santhia Upazila', 'সাথিয়া', 1),
(376, 23, 'Sujanagar Upazila', 'সুজানগর', 1),
(377, 24, 'Bagha', 'বাঘা', 1),
(378, 24, 'Bagmara', 'বাগমারা', 1),
(379, 24, 'Charghat', 'চারঘাট', 1),
(380, 24, 'Durgapur', 'দুর্গাপুর', 1),
(381, 24, 'Godagari', 'গোদাগারি', 1),
(382, 24, 'Mohanpur', 'মোহনপুর', 1),
(383, 24, 'Paba', 'পবা', 1),
(384, 24, 'Puthia', 'পুঠিয়া', 1),
(385, 24, 'Tanore', 'তানোর', 1),
(386, 25, 'Sirajganj Sadar Upazila', 'সিরাজগঞ্জ সদর', 1),
(387, 25, 'Belkuchi Upazila', 'বেলকুচি', 1),
(388, 25, 'Chauhali Upazila', 'চৌহালি', 1),
(389, 25, 'Kamarkhanda Upazila', 'কামারখান্দা', 1),
(390, 25, 'Kazipur Upazila', 'কাজীপুর', 1),
(391, 25, 'Raiganj Upazila', 'রায়গঞ্জ', 1),
(392, 25, 'Shahjadpur Upazila', 'শাহজাদপুর', 1),
(393, 25, 'Tarash Upazila', 'তারাশ', 1),
(394, 25, 'Ullahpara Upazila', 'উল্লাপাড়া', 1),
(395, 26, 'Birampur Upazila', 'বিরামপুর', 1),
(396, 26, 'Birganj', 'বীরগঞ্জ', 1),
(397, 26, 'Biral Upazila', 'বিড়াল', 1),
(398, 26, 'Bochaganj Upazila', 'বোচাগঞ্জ', 1),
(399, 26, 'Chirirbandar Upazila', 'চিরিরবন্দর', 1),
(400, 26, 'Phulbari Upazila', 'ফুলবাড়ি', 1),
(401, 26, 'Ghoraghat Upazila', 'ঘোড়াঘাট', 1),
(402, 26, 'Hakimpur Upazila', 'হাকিমপুর', 1),
(403, 26, 'Kaharole Upazila', 'কাহারোল', 1),
(404, 26, 'Khansama Upazila', 'খানসামা', 1),
(405, 26, 'Dinajpur Sadar Upazila', 'দিনাজপুর সদর', 1),
(406, 26, 'Nawabganj', 'নবাবগঞ্জ', 1),
(407, 26, 'Parbatipur Upazila', 'পার্বতীপুর', 1),
(408, 27, 'Fulchhari', 'ফুলছড়ি', 1),
(409, 27, 'Gaibandha sadar', 'গাইবান্ধা সদর', 1),
(410, 27, 'Gobindaganj', 'গোবিন্দগঞ্জ', 1),
(411, 27, 'Palashbari', 'পলাশবাড়ী', 1),
(412, 27, 'Sadullapur', 'সাদুল্যাপুর', 1),
(413, 27, 'Saghata', 'সাঘাটা', 1),
(414, 27, 'Sundarganj', 'সুন্দরগঞ্জ', 1),
(415, 28, 'Kurigram Sadar', 'কুড়িগ্রাম সদর', 1),
(416, 28, 'Nageshwari', 'নাগেশ্বরী', 1),
(417, 28, 'Bhurungamari', 'ভুরুঙ্গামারি', 1),
(418, 28, 'Phulbari', 'ফুলবাড়ি', 1),
(419, 28, 'Rajarhat', 'রাজারহাট', 1),
(420, 28, 'Ulipur', 'উলিপুর', 1),
(421, 28, 'Chilmari', 'চিলমারি', 1),
(422, 28, 'Rowmari', 'রউমারি', 1),
(423, 28, 'Char Rajibpur', 'চর রাজিবপুর', 1),
(424, 29, 'Lalmanirhat Sadar', 'লালমনিরহাট সদর', 1),
(425, 29, 'Aditmari', 'আদিতমারি', 1),
(426, 29, 'Kaliganj', 'কালীগঞ্জ', 1),
(427, 29, 'Hatibandha', 'হাতিবান্ধা', 1),
(428, 29, 'Patgram', 'পাটগ্রাম', 1),
(429, 30, 'Nilphamari Sadar', 'নীলফামারী সদর', 1),
(430, 30, 'Saidpur', 'সৈয়দপুর', 1),
(431, 30, 'Jaldhaka', 'জলঢাকা', 1),
(432, 30, 'Kishoreganj', 'কিশোরগঞ্জ', 1),
(433, 30, 'Domar', 'ডোমার', 1),
(434, 30, 'Dimla', 'ডিমলা', 1),
(435, 31, 'Panchagarh Sadar', 'পঞ্চগড় সদর', 1),
(436, 31, 'Debiganj', 'দেবীগঞ্জ', 1),
(437, 31, 'Boda', 'বোদা', 1),
(438, 31, 'Atwari', 'আটোয়ারি', 1),
(439, 31, 'Tetulia', 'তেতুলিয়া', 1),
(440, 32, 'Badarganj', 'বদরগঞ্জ', 1),
(441, 32, 'Mithapukur', 'মিঠাপুকুর', 1),
(442, 32, 'Gangachara', 'গঙ্গাচরা', 1),
(443, 32, 'Kaunia', 'কাউনিয়া', 1),
(444, 32, 'Rangpur Sadar', 'রংপুর সদর', 1),
(445, 32, 'Pirgachha', 'পীরগাছা', 1),
(446, 32, 'Pirganj', 'পীরগঞ্জ', 1),
(447, 32, 'Taraganj', 'তারাগঞ্জ', 1),
(448, 33, 'Thakurgaon Sadar Upazila', 'ঠাকুরগাঁও সদর', 1),
(449, 33, 'Pirganj Upazila', 'পীরগঞ্জ', 1),
(450, 33, 'Baliadangi Upazila', 'বালিয়াডাঙ্গি', 1),
(451, 33, 'Haripur Upazila', 'হরিপুর', 1),
(452, 33, 'Ranisankail Upazila', 'রাণীসংকইল', 1),
(453, 51, 'Ajmiriganj', 'আজমিরিগঞ্জ', 1),
(454, 51, 'Baniachang', 'বানিয়াচং', 1),
(455, 51, 'Bahubal', 'বাহুবল', 1),
(456, 51, 'Chunarughat', 'চুনারুঘাট', 1),
(457, 51, 'Habiganj Sadar', 'হবিগঞ্জ সদর', 1),
(458, 51, 'Lakhai', 'লাক্ষাই', 1),
(459, 51, 'Madhabpur', 'মাধবপুর', 1),
(460, 51, 'Nabiganj', 'নবীগঞ্জ', 1),
(461, 51, 'Shaistagonj Upazila', 'শায়েস্তাগঞ্জ', 1),
(462, 52, 'Moulvibazar Sadar', 'মৌলভীবাজার', 1),
(463, 52, 'Barlekha', 'বড়লেখা', 1),
(464, 52, 'Juri', 'জুড়ি', 1),
(465, 52, 'Kamalganj', 'কামালগঞ্জ', 1),
(466, 52, 'Kulaura', 'কুলাউরা', 1),
(467, 52, 'Rajnagar', 'রাজনগর', 1),
(468, 52, 'Sreemangal', 'শ্রীমঙ্গল', 1),
(469, 53, 'Bishwamvarpur', 'বিসশম্ভারপুর', 1),
(470, 53, 'Chhatak', 'ছাতক', 1),
(471, 53, 'Derai', 'দেড়াই', 1),
(472, 53, 'Dharampasha', 'ধরমপাশা', 1),
(473, 53, 'Dowarabazar', 'দোয়ারাবাজার', 1),
(474, 53, 'Jagannathpur', 'জগন্নাথপুর', 1),
(475, 53, 'Jamalganj', 'জামালগঞ্জ', 1),
(476, 53, 'Sulla', 'সুল্লা', 1),
(477, 53, 'Sunamganj Sadar', 'সুনামগঞ্জ সদর', 1),
(478, 53, 'Shanthiganj', 'শান্তিগঞ্জ', 1),
(479, 53, 'Tahirpur', 'তাহিরপুর', 1),
(480, 54, 'Sylhet Sadar', 'সিলেট সদর', 1),
(481, 54, 'Beanibazar', 'বেয়ানিবাজার', 1),
(482, 54, 'Bishwanath', 'বিশ্বনাথ', 1),
(483, 54, 'Dakshin Surma Upazila', 'দক্ষিণ সুরমা', 1),
(484, 54, 'Balaganj', 'বালাগঞ্জ', 1),
(485, 54, 'Companiganj', 'কোম্পানিগঞ্জ', 1),
(486, 54, 'Fenchuganj', 'ফেঞ্চুগঞ্জ', 1),
(487, 54, 'Golapganj', 'গোলাপগঞ্জ', 1),
(488, 54, 'Gowainghat', 'গোয়াইনঘাট', 1),
(489, 54, 'Jaintiapur', 'জয়ন্তপুর', 1),
(490, 54, 'Kanaighat', 'কানাইঘাট', 1),
(491, 54, 'Zakiganj', 'জাকিগঞ্জ', 1),
(492, 54, 'Nobigonj', 'নবীগঞ্জ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_menus`
--

CREATE TABLE `user_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `parentMenu` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menuName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menuLink` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `menuIcon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderBy` int(11) NOT NULL,
  `menuStatus` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_menus`
--

INSERT INTO `user_menus` (`id`, `parentMenu`, `menuName`, `menuLink`, `menuIcon`, `orderBy`, `menuStatus`, `created_at`, `updated_at`) VALUES
(3, NULL, 'Home', 'admin.index', 'fa fa-shopping-bag', 1, '1', '2019-08-30 04:08:49', '2020-01-18 00:22:15'),
(15, '78', 'Team Category', 'teamCategory.index', 'fa fa-caret-right', 17, '0', '2019-08-30 05:28:59', '2020-01-17 23:10:27'),
(16, '13', 'Shipping Charge', 'shippingCharges.index', 'fa fa-caret-right', 11, '1', '2019-08-30 05:29:45', '2019-09-03 05:34:58'),
(17, '13', 'Customer Group', 'customerGroups.index', 'fa fa-caret-right', 12, '1', '2019-08-30 05:34:10', '2019-08-30 05:34:10'),
(18, NULL, 'Website Section', 'admin.index', 'fa fa-bars', 13, '1', '2019-08-30 05:47:44', '2019-10-19 03:30:31'),
(19, '18', 'Website Information', 'site.info', 'fa fa-caret-right', 14, '1', '2019-08-30 05:48:51', '2019-10-19 03:32:44'),
(20, '18', 'Menu', 'menu.index', 'fa fa-caret-right', 15, '1', '2019-08-30 05:49:27', '2019-10-29 22:11:51'),
(21, '18', 'Sliders', 'sliders.index', 'fa fa-caret-right', 15, '1', '2019-08-30 05:50:07', '2019-10-31 01:58:05'),
(22, '18', 'Advertizement', 'banners.index', 'fa fa-caret-right', 17, '1', '2019-08-30 05:51:17', '2019-08-30 05:51:17'),
(23, '18', 'Policies', 'policies.index', 'fa fa-caret-right', 18, '1', '2019-08-30 05:51:53', '2019-08-30 05:51:53'),
(24, '18', 'Social Link', 'social.info', 'fa fa-caret-right', 21, '1', '2019-08-30 05:52:26', '2019-11-07 03:32:45'),
(26, '18', 'Contact List', 'contacts.index', 'fa fa-caret-right', 22, '1', '2019-08-30 05:53:19', '2019-11-07 03:32:34'),
(27, '18', 'FAQ', 'faqs.index', 'fa fa-caret-right', 22, '1', '2019-08-30 05:53:44', '2019-08-30 05:54:26'),
(28, '18', 'Customer Review', 'reviews.index', 'fa fa-caret-right', 23, '1', '2019-08-30 05:55:02', '2019-08-30 05:55:02'),
(32, '18', 'Blog', 'blogs.index', 'fa fa-caret-right', 27, '0', '2019-08-30 05:57:09', '2020-01-17 23:10:07'),
(34, '18', 'Subscriber', 'subscribers.index', 'fa fa-caret-right', 29, '1', '2019-08-30 05:58:05', '2019-08-30 05:58:05'),
(36, NULL, 'User Management', 'admin.index', 'fa fa-bars', 31, '1', '2019-08-30 06:00:46', '2019-08-30 06:00:46'),
(37, '36', 'Admin Panel Logo', 'admin.logo', 'fa fa-caret-right', 32, '1', '2019-08-30 06:01:24', '2019-08-30 06:01:24'),
(38, '36', 'Menus', 'usermenu.index', 'fa fa-caret-right', 33, '1', '2019-08-30 06:01:52', '2019-08-30 06:01:52'),
(39, '36', 'Role', 'user-roles.index', 'fa fa-caret-right', 34, '1', '2019-08-30 06:02:12', '2019-08-30 06:03:06'),
(40, '36', 'User', 'users.index', 'fa fa-caret-right', 35, '1', '2019-08-30 06:02:35', '2019-08-30 06:04:03'),
(52, NULL, 'Candidates', 'candidates.index', 'fa fa-bars', 3, '1', '2019-09-16 23:31:15', '2019-09-17 22:29:02'),
(53, NULL, 'Basic Setup', 'admin.index', 'fa fa-bars', 2, '1', '2019-09-17 22:30:11', '2019-10-19 03:29:53'),
(54, '53', 'Skill Setup', 'skills.index', 'fa fa-caret', 1, '1', '2019-09-17 22:32:31', '2019-09-18 01:17:45'),
(55, '53', 'Country Setup', 'countries.index', 'fa fa-caret', 4, '1', '2019-09-18 00:26:10', '2019-09-28 02:54:02'),
(56, '53', 'Area Setup', 'area.index', 'fa fa-caret', 4, '1', '2019-09-18 01:26:58', '2019-09-18 01:26:58'),
(57, '53', 'Designation Setup', 'designation.index', 'fa fa-caret', 5, '1', '2019-09-18 04:49:14', '2019-09-18 04:49:14'),
(58, '53', 'Registration Charge', 'registrationCharge.index', 'fa fa-caret', 7, '1', '2019-09-18 05:13:50', '2019-09-19 00:49:37'),
(59, '36', 'Company Setup', 'company.index', 'fa fa-caret', 1, '1', '2019-09-18 06:29:54', '2019-09-18 06:30:41'),
(60, '53', 'Experience', 'experience.index', 'fa fa-caret', 6, '1', '2019-09-19 00:51:40', '2019-09-19 00:51:40'),
(62, '53', 'Department', 'department.index', 'fa fa-caret', 3, '1', '2019-09-28 02:56:17', '2019-09-28 02:56:17'),
(63, '53', 'Compensation Benefits', 'benefits.index', 'fa fa-bars', 8, '1', '2019-09-29 09:54:40', '2019-09-29 09:54:40'),
(64, '53', 'Educations', 'education.index', 'fa fa-bars', 9, '1', '2019-09-29 23:07:11', '2019-09-29 23:07:11'),
(65, '53', 'Religion', 'religion.index', 'fa fa-bars', 10, '1', '2019-10-01 03:29:29', '2019-10-01 03:33:04'),
(66, '53', 'Gender', 'gender.index', 'fa fa-bars', 11, '1', '2019-10-01 03:54:59', '2019-10-01 03:54:59'),
(67, '53', 'Language', 'language.index', 'fa fa-caret', 12, '1', '2019-10-01 04:18:03', '2019-10-01 04:18:03'),
(68, '18', 'Videos', 'videos.index', 'fa fa-caret', 17, '1', '2019-10-19 05:20:10', '2019-10-19 05:20:26'),
(69, '18', 'About Company', 'aboutCompany.index', 'fa fa-caret', 16, '1', '2019-10-20 00:05:37', '2019-10-31 01:58:54'),
(70, '77', 'Articles', 'articles.index', 'fa fa-caret', 23, '1', '2019-10-20 06:33:09', '2019-11-17 00:28:22'),
(71, '18', 'Why Choose', 'chooseUs.index', 'fa fa-caret', 17, '1', '2019-11-01 23:13:38', '2019-11-01 23:13:38'),
(72, '78', 'Team', 'team.index', 'fa fa-caret', 18, '0', '2019-11-02 00:46:00', '2020-01-17 23:10:25'),
(73, '18', 'Testimonial', 'testimonial.index', 'fa fa-caret', 19, '0', '2019-11-02 04:01:21', '2020-01-17 23:09:51'),
(74, '36', 'Others Information', 'others.info', 'fa fa-caret', 36, '1', '2019-11-07 00:18:08', '2019-11-07 00:18:08'),
(75, '18', 'Happy Client', 'partners.index', 'fa fa-caret', 20, '1', '2019-11-07 03:33:27', '2019-11-14 00:05:57'),
(76, '18', 'Portfolio', 'portfolio.index', 'fa  fa-caret', 24, '0', '2019-11-12 22:39:57', '2020-01-17 23:10:02'),
(77, NULL, 'Contents', 'admin.index', 'fa fa-caret', 14, '1', '2019-11-17 00:27:57', '2019-11-17 00:27:57'),
(78, NULL, 'Teams', 'admin.index', 'fa fa-bars', 15, '0', '2019-11-17 00:30:27', '2020-01-17 23:10:21');

-- --------------------------------------------------------

--
-- Table structure for table `user_menu_actions`
--

CREATE TABLE `user_menu_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `parentmenuId` int(11) NOT NULL,
  `menuType` int(11) NOT NULL,
  `actionName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actionLink` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orderBy` int(11) NOT NULL,
  `actionStatus` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_menu_actions`
--

INSERT INTO `user_menu_actions` (`id`, `parentmenuId`, `menuType`, `actionName`, `actionLink`, `orderBy`, `actionStatus`, `created_at`, `updated_at`) VALUES
(4, 15, 1, 'Add', 'teamCategory.add', 1, 1, '2019-09-02 08:09:47', '2019-11-17 00:43:58'),
(5, 15, 7, 'View', 'teamCategory.index', 3, 0, '2019-09-02 10:13:49', '2019-11-17 00:41:27'),
(6, 15, 4, 'Delete', 'teamCategory.delete', 4, 1, '2019-09-02 10:25:39', '2019-11-17 00:41:35'),
(7, 15, 2, 'Edit', 'teamCategory.edit', 2, 1, '2019-09-02 10:39:20', '2019-11-17 00:41:42'),
(13, 15, 3, 'Status', 'teamCategory.status', 10, 1, '2019-09-03 04:57:13', '2019-11-17 00:41:55'),
(16, 16, 1, 'Add', 'chargeadd.page', 13, 1, '2019-09-03 05:18:12', '2019-09-03 05:18:12'),
(17, 16, 3, 'Status', 'shippingCharge.shippingChargeStatus', 14, 1, '2019-09-03 05:18:33', '2019-09-03 05:18:33'),
(18, 16, 2, 'Edit', 'shippingCharge.edit', 15, 1, '2019-09-03 05:18:51', '2019-09-03 05:18:51'),
(19, 16, 4, 'Delete', 'shippingCharge.delete', 16, 1, '2019-09-03 05:19:21', '2019-09-03 05:19:21'),
(20, 17, 1, 'Add', 'customerGroup.add', 17, 1, '2019-09-03 10:38:15', '2019-09-03 10:38:15'),
(21, 17, 3, 'Status', 'customerGroup.status', 18, 1, '2019-09-03 10:39:02', '2019-09-03 10:39:02'),
(22, 17, 2, 'Edit', 'customerGroup.edit', 19, 1, '2019-09-03 10:39:43', '2019-09-03 10:42:25'),
(23, 17, 4, 'Delete', 'customerGroup.delete', 20, 1, '2019-09-03 10:40:20', '2019-09-03 10:40:20'),
(24, 20, 1, 'Add', 'menuadd.page', 21, 1, '2019-09-03 10:48:02', '2019-09-03 10:48:02'),
(25, 20, 3, 'Status', 'menu.changeStatus', 22, 1, '2019-09-03 10:48:43', '2019-09-03 10:48:43'),
(26, 20, 2, 'Edit', 'menu.edit', 23, 1, '2019-09-03 10:49:08', '2019-09-03 10:49:08'),
(27, 20, 4, 'Delete', 'menu.delete', 24, 1, '2019-09-03 10:49:40', '2019-09-03 10:49:40'),
(28, 21, 1, 'Add', 'slideradd.page', 25, 1, '2019-09-03 10:50:35', '2019-09-03 10:50:35'),
(29, 21, 3, 'Status', 'sliders.changeStatus', 26, 1, '2019-09-03 10:52:05', '2019-09-03 10:52:05'),
(34, 21, 2, 'Edit', 'slider.edit', 27, 1, '2019-09-03 10:58:11', '2019-09-03 10:58:11'),
(35, 21, 4, 'Delete', 'slider.delete', 28, 1, '2019-09-03 10:58:58', '2019-09-03 10:58:58'),
(36, 23, 1, 'Add', 'policyadd.page', 29, 1, '2019-09-03 11:02:42', '2019-09-03 11:02:42'),
(37, 23, 3, 'Status', 'policies.changepolicyStatus', 30, 1, '2019-09-03 11:02:57', '2019-09-03 11:02:57'),
(38, 23, 2, 'Edit', 'policy.edit', 31, 1, '2019-09-03 11:03:21', '2019-09-03 11:03:21'),
(39, 23, 4, 'Delete', 'policy.delete', 32, 1, '2019-09-03 11:03:41', '2019-09-03 11:03:41'),
(40, 22, 1, 'Add', 'banneradd.page', 33, 1, '2019-09-03 11:05:02', '2019-09-03 11:05:02'),
(41, 22, 3, 'Status', 'banners.changebannerStatus', 34, 1, '2019-09-03 11:05:16', '2019-09-03 11:05:16'),
(42, 22, 2, 'Edit', 'banner.edit', 35, 1, '2019-09-03 11:05:32', '2019-09-03 11:05:32'),
(43, 22, 4, 'Delete', 'banner.delete', 36, 1, '2019-09-03 11:05:58', '2019-09-03 11:05:58'),
(44, 28, 3, 'Status', 'reviews.changereviewStatus', 37, 1, '2019-09-03 11:12:16', '2019-09-03 11:12:16'),
(45, 27, 1, 'Add', 'faqadd.page', 38, 1, '2019-09-03 11:13:47', '2019-09-03 11:13:47'),
(46, 27, 1, 'Add', 'faqadd.page', 38, 1, '2019-09-03 11:13:48', '2019-09-03 11:13:48'),
(47, 27, 3, 'Status', 'faqs.changeStatus', 39, 1, '2019-09-03 11:14:02', '2019-09-03 11:14:02'),
(48, 27, 2, 'Edit', 'faq.edit', 40, 1, '2019-09-03 11:14:16', '2019-09-03 11:14:16'),
(49, 27, 4, 'Delete', 'faq.delete', 41, 1, '2019-09-03 11:14:40', '2019-09-03 11:14:40'),
(50, 32, 1, 'Add', 'blogadd.page', 42, 1, '2019-09-03 11:15:50', '2019-09-03 11:16:13'),
(51, 32, 3, 'Status', 'blogs.changeblogStatus', 43, 1, '2019-09-03 11:16:35', '2019-09-03 11:16:35'),
(52, 32, 2, 'Edit', 'blog.edit', 44, 1, '2019-09-03 11:16:52', '2019-09-03 11:16:52'),
(53, 32, 4, 'Delete', 'blog.delete', 45, 1, '2019-09-03 11:17:11', '2019-09-03 11:17:11'),
(55, 38, 1, 'Add', 'usermenu.add', 47, 1, '2019-09-03 11:19:40', '2019-09-03 11:19:40'),
(56, 38, 2, 'Edit', 'usermenu.edit', 48, 1, '2019-09-03 11:19:55', '2019-09-03 11:19:55'),
(57, 38, 3, 'Status', 'usermenu.status', 49, 1, '2019-09-03 11:20:21', '2019-09-03 11:20:21'),
(58, 38, 4, 'Delete', 'usermenu-delete', 51, 1, '2019-09-03 11:20:37', '2019-09-06 09:25:44'),
(59, 40, 1, 'Add', 'useradd.page', 51, 1, '2019-09-03 11:23:08', '2019-09-03 11:23:08'),
(60, 40, 3, 'Status', 'user.changeuserStatus', 52, 1, '2019-09-03 11:23:26', '2019-09-03 11:23:26'),
(61, 40, 2, 'Edit', 'user.edit', 53, 1, '2019-09-03 11:23:47', '2019-09-03 11:23:47'),
(62, 40, 6, 'Change Password', 'user.password', 54, 1, '2019-09-03 11:24:12', '2019-09-03 11:24:12'),
(63, 40, 7, 'View', 'user.profile', 55, 1, '2019-09-03 11:24:50', '2019-10-05 01:42:44'),
(64, 39, 1, 'Add', 'userRoleAdd.page', 56, 1, '2019-09-03 11:25:46', '2019-09-03 11:25:46'),
(65, 39, 3, 'Status', 'userRole.changeuserRoleStatus', 57, 1, '2019-09-03 11:26:03', '2019-09-03 11:26:03'),
(66, 39, 2, 'Edit', 'userRole.edit', 58, 1, '2019-09-03 11:26:24', '2019-09-03 11:26:24'),
(67, 39, 5, 'Permission', 'userRole.permission', 59, 1, '2019-09-03 11:26:59', '2019-09-03 11:26:59'),
(86, 38, 8, 'View Action Menu', 'usermenuLink.index', 50, 1, '2019-09-06 09:26:39', '2019-09-06 09:26:39'),
(87, 39, 4, 'Delete User Role', 'userRole.delete', 60, 1, '2019-09-06 09:29:36', '2019-09-06 09:30:18'),
(88, 40, 4, 'Delete User', 'user.delete', 56, 1, '2019-09-06 09:31:27', '2019-09-06 09:31:27'),
(89, 34, 4, 'Delete', 'subscriber.delete', 74, 1, '2019-09-06 09:36:56', '2019-09-06 09:36:56'),
(112, 52, 8, 'View Candidate', 'hrCandidate.profile', 2, 1, '2019-09-16 23:40:27', '2019-10-15 23:14:23'),
(113, 52, 4, 'Candidates Delete', 'candidates.delete', 4, 1, '2019-09-16 23:40:51', '2019-10-15 23:48:33'),
(114, 54, 1, 'Add', 'skills.add', 1, 1, '2019-09-17 22:51:00', '2019-09-17 22:51:00'),
(115, 54, 2, 'Edit', 'skills.edit', 2, 1, '2019-09-17 22:51:13', '2019-09-17 22:53:09'),
(116, 54, 4, 'Delete', 'skills.delete', 3, 1, '2019-09-17 22:51:27', '2019-09-17 22:51:27'),
(117, 54, 3, 'Status', 'skills.status', 4, 1, '2019-09-17 23:53:19', '2019-09-17 23:53:19'),
(118, 55, 1, 'Add', 'countries.add', 1, 1, '2019-09-18 00:53:17', '2019-09-18 00:53:17'),
(119, 55, 2, 'Edit', 'countries.edit', 2, 1, '2019-09-18 00:53:31', '2019-09-18 00:53:31'),
(120, 55, 4, 'Delete', 'countries.delete', 3, 1, '2019-09-18 00:53:53', '2019-09-18 00:53:53'),
(121, 55, 3, 'Status', 'countries.status', 4, 1, '2019-09-18 00:54:14', '2019-09-18 00:54:14'),
(122, 56, 1, 'Add', 'area.add', 1, 1, '2019-09-18 01:34:28', '2019-09-18 01:34:28'),
(123, 56, 2, 'Edit', 'area.edit', 2, 1, '2019-09-18 01:34:49', '2019-09-18 01:34:49'),
(124, 56, 4, 'Delete', 'area.delete', 3, 1, '2019-09-18 01:35:22', '2019-09-18 01:35:22'),
(125, 56, 3, 'Status', 'area.status', 4, 1, '2019-09-18 01:35:41', '2019-09-18 01:35:41'),
(126, 57, 1, 'Add', 'designation.add', 1, 1, '2019-09-18 04:49:38', '2019-09-18 04:49:38'),
(127, 57, 2, 'Edit', 'designation.edit', 2, 1, '2019-09-18 04:49:50', '2019-09-18 04:49:50'),
(128, 57, 4, 'Delete', 'designation.delete', 3, 1, '2019-09-18 04:50:12', '2019-09-18 04:50:12'),
(129, 58, 1, 'Add', 'registrationCharge.add', 1, 1, '2019-09-18 05:22:27', '2019-09-18 05:22:27'),
(130, 58, 2, 'Edit', 'registrationCharge.edit', 2, 1, '2019-09-18 05:22:48', '2019-09-18 05:22:48'),
(131, 58, 4, 'Delete', 'registrationCharge.destroy', 3, 1, '2019-09-18 05:23:05', '2019-09-18 05:23:05'),
(132, 59, 1, 'Add', 'company.add', 1, 1, '2019-09-18 22:18:25', '2019-09-18 22:18:25'),
(133, 59, 2, 'Edit', 'company.edit', 2, 1, '2019-09-18 22:19:03', '2019-09-18 22:19:03'),
(134, 59, 4, 'Delete', 'company.delete', 3, 1, '2019-09-18 22:19:21', '2019-09-18 22:19:21'),
(135, 59, 3, 'Status', 'company.status', 4, 1, '2019-09-18 22:19:39', '2019-09-18 22:19:39'),
(136, 60, 1, 'Add', 'experience.add', 1, 1, '2019-09-19 00:54:46', '2019-09-19 00:54:46'),
(137, 60, 2, 'Edit', 'experience.edit', 2, 1, '2019-09-19 00:54:58', '2019-09-19 00:54:58'),
(138, 60, 4, 'Delete', 'experience.delete', 3, 1, '2019-09-19 00:55:12', '2019-09-19 00:55:12'),
(139, 60, 3, 'Status', 'experience.status', 4, 1, '2019-09-19 00:55:27', '2019-09-19 00:55:27'),
(144, 62, 1, 'Add', 'department.add', 1, 1, '2019-09-28 02:56:48', '2019-09-28 02:56:48'),
(145, 62, 2, 'Edit', 'department.edit', 2, 1, '2019-09-28 02:57:00', '2019-09-28 02:57:00'),
(146, 62, 4, 'Delete', 'department.delete', 3, 1, '2019-09-28 02:57:22', '2019-09-28 02:57:22'),
(147, 62, 3, 'Status', 'department.status', 4, 1, '2019-09-28 02:57:54', '2019-09-28 02:57:54'),
(148, 63, 1, 'Add', 'benefits.add', 1, 1, '2019-09-29 09:58:33', '2019-09-29 09:58:33'),
(149, 63, 2, 'Edit', 'benefits.edit', 2, 1, '2019-09-29 09:59:02', '2019-09-29 09:59:02'),
(150, 63, 4, 'Delete', 'benefits.delete', 3, 1, '2019-09-29 09:59:32', '2019-09-29 09:59:32'),
(151, 64, 1, 'Add', 'education.add', 1, 1, '2019-09-29 23:07:41', '2019-09-29 23:07:41'),
(152, 64, 2, 'Edit', 'education.edit', 2, 1, '2019-09-29 23:07:52', '2019-09-29 23:07:52'),
(153, 64, 4, 'Delete', 'education.delete', 3, 1, '2019-09-29 23:08:04', '2019-09-29 23:08:04'),
(154, 65, 1, 'Add', 'religion.add', 1, 1, '2019-10-01 03:29:52', '2019-10-01 03:29:52'),
(155, 65, 2, 'Edit', 'religion.edit', 2, 1, '2019-10-01 03:30:07', '2019-10-01 03:30:07'),
(156, 65, 4, 'Delete', 'religion.delete', 3, 1, '2019-10-01 03:30:21', '2019-10-01 03:30:21'),
(157, 66, 1, 'Add', 'gender.add', 1, 1, '2019-10-01 03:55:25', '2019-10-01 03:55:25'),
(158, 66, 2, 'Edit', 'gender.edit', 2, 1, '2019-10-01 03:55:37', '2019-10-01 03:55:37'),
(159, 66, 4, 'Delete', 'gender.delete', 3, 1, '2019-10-01 03:55:58', '2019-10-01 03:55:58'),
(160, 67, 1, 'Add', 'language.add', 1, 1, '2019-10-01 04:18:25', '2019-10-01 04:18:25'),
(161, 67, 2, 'Edit', 'language.edit', 2, 1, '2019-10-01 04:18:36', '2019-10-01 04:18:36'),
(162, 67, 4, 'Delete', 'language.delete', 3, 1, '2019-10-01 04:18:48', '2019-10-01 04:18:48'),
(163, 52, 1, 'Add', 'candidate.add', 1, 1, '2019-10-15 23:12:03', '2019-10-15 23:19:58'),
(164, 52, 12, 'Resend Email', 'candidate.resendEmail', 3, 1, '2019-10-15 23:50:10', '2019-10-15 23:50:10'),
(165, 52, 3, 'Candidate Activity', 'candidate.status', 5, 1, '2019-10-16 23:13:55', '2019-10-16 23:13:55'),
(166, 68, 1, 'Add', 'videos.add', 1, 1, '2019-10-19 05:33:07', '2019-10-19 05:33:07'),
(167, 68, 2, 'Edit', 'videos.edit', 2, 1, '2019-10-19 05:33:44', '2019-10-19 05:33:44'),
(168, 68, 4, 'Delete', 'videos.delete', 3, 1, '2019-10-19 05:34:11', '2019-10-19 05:34:11'),
(169, 68, 3, 'Status', 'videos.status', 4, 1, '2019-10-19 05:34:26', '2019-10-19 05:34:26'),
(170, 69, 1, 'Add', 'aboutCompany.add', 1, 1, '2019-10-20 00:08:52', '2019-10-20 06:45:19'),
(171, 69, 2, 'Edit', 'aboutCompany.edit', 2, 1, '2019-10-20 00:09:07', '2019-10-20 00:09:07'),
(172, 69, 4, 'Delete', 'aboutCompany.delete', 3, 1, '2019-10-20 00:09:24', '2019-10-20 00:09:24'),
(173, 69, 3, 'Status', 'aboutCompany.status', 4, 1, '2019-10-20 00:09:41', '2019-10-20 00:09:41'),
(174, 70, 1, 'Add', 'articles.add', 1, 1, '2019-10-20 06:33:38', '2019-10-30 06:10:46'),
(175, 70, 2, 'Edit', 'articles.edit', 2, 1, '2019-10-20 06:33:50', '2019-10-30 06:10:52'),
(176, 70, 4, 'Delete', 'articles.delete', 3, 1, '2019-10-20 06:34:04', '2019-10-30 06:10:59'),
(177, 70, 3, 'Status', 'articles.status', 4, 1, '2019-10-20 06:34:20', '2019-10-30 06:11:05'),
(178, 71, 1, 'Add', 'chooseUs.add', 1, 1, '2019-11-01 23:14:22', '2019-11-01 23:14:22'),
(179, 71, 2, 'Edit', 'chooseUs.edit', 2, 1, '2019-11-01 23:14:33', '2019-11-01 23:14:33'),
(180, 71, 4, 'Delete', 'chooseUs.delete', 3, 1, '2019-11-01 23:14:48', '2019-11-01 23:14:48'),
(181, 71, 3, 'Status', 'chooseUs.status', 4, 1, '2019-11-01 23:15:05', '2019-11-01 23:15:05'),
(182, 72, 1, 'Add', 'team.add', 1, 1, '2019-11-02 00:46:51', '2019-11-02 00:46:51'),
(183, 72, 2, 'Edit', 'team.edit', 2, 1, '2019-11-02 00:47:03', '2019-11-02 00:47:03'),
(184, 72, 4, 'Delete', 'team.delete', 3, 1, '2019-11-02 00:47:28', '2019-11-02 00:47:28'),
(185, 72, 3, 'Status', 'team.status', 4, 1, '2019-11-02 00:47:43', '2019-11-02 00:47:43'),
(186, 73, 1, 'Add', 'testimonial.add', 1, 1, '2019-11-02 04:01:43', '2019-11-02 04:01:43'),
(187, 73, 2, 'Edit', 'testimonial.edit', 2, 1, '2019-11-02 04:01:55', '2019-11-02 04:01:55'),
(188, 73, 4, 'Delete', 'testimonial.delete', 3, 1, '2019-11-02 04:02:28', '2019-11-02 04:02:28'),
(189, 73, 3, 'Status', 'testimonial.status', 4, 1, '2019-11-02 04:02:44', '2019-11-02 04:02:44'),
(190, 75, 1, 'Add', 'partners.add', 1, 1, '2019-11-07 03:34:12', '2019-11-07 03:34:12'),
(191, 75, 2, 'Edit', 'partners.edit', 2, 1, '2019-11-07 03:34:23', '2019-11-07 03:34:23'),
(192, 75, 4, 'Delete', 'partners.delete', 3, 1, '2019-11-07 03:34:45', '2019-11-07 03:34:45'),
(193, 75, 3, 'Status', 'partners.status', 4, 1, '2019-11-07 03:35:06', '2019-11-07 03:35:06'),
(194, 76, 1, 'Add', 'portfolio.add', 1, 1, '2019-11-12 22:40:25', '2019-11-12 22:40:25'),
(195, 76, 2, 'Edit', 'portfolio.edit', 2, 1, '2019-11-12 22:40:43', '2019-11-12 22:40:43'),
(196, 76, 4, 'Delete', 'portfolio', 3, 1, '2019-11-12 22:40:57', '2019-11-12 22:40:57'),
(197, 76, 3, 'Status', 'portfolio.status', 4, 1, '2019-11-12 22:41:12', '2019-11-12 22:41:12');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `permission` text COLLATE utf8mb4_unicode_ci,
  `actionPermission` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `name`, `status`, `permission`, `actionPermission`, `created_at`, `updated_at`) VALUES
(2, 'Super User', 1, '3,15,18,19,20,21,24,26,32,36,37,38,39,40,69,70,72,73,74,75,76,77,78', '4,7,5,6,13,24,25,26,27,28,29,34,35,50,51,52,53,55,56,57,86,58,64,65,66,67,87,59,60,61,62,63,88,144,145,146,147,170,171,172,173,174,175,176,177,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197', '2019-04-17 00:50:05', '2019-11-17 00:32:26'),
(3, 'Admin', 1, '3,18,19,20,21,24,26,36,37,39,40,70,72,73,77', '24,25,26,27,28,29,34,35,64,65,66,67,87,59,60,61,62,88,144,145,146,147,174,175,176,177,182,183,184,185,186,187,188,189', '2019-04-17 00:52:54', '2020-01-12 03:31:19');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(10) UNSIGNED NOT NULL,
  `vendor_serial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendorName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contactPerson` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendorAddress` text COLLATE utf8mb4_unicode_ci,
  `vendorPhone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendorEmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderBy` int(11) NOT NULL,
  `vendorStatus` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `vendor_serial`, `vendorName`, `contactPerson`, `vendorAddress`, `vendorPhone`, `vendorEmail`, `accountCode`, `orderBy`, `vendorStatus`, `created_at`, `updated_at`) VALUES
(6, '5/2019', 'Rafiqul Islam', 'Rafiq', 'Farmagte, Dhaka', '0193294324', 'rafiq@gmail.com', '567568768', 4, 1, '2019-08-31 01:22:49', '2019-08-31 04:53:22'),
(7, '1000006', 'Hasan', 'hasan', 'Bonani, Dhaka', '01923434834', 'hasan@gmail.com', '768786', 5, 1, '2019-08-31 02:02:08', '2019-08-31 04:28:17');

-- --------------------------------------------------------

--
-- Table structure for table `verify_customers`
--

CREATE TABLE `verify_customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` text COLLATE utf8mb4_unicode_ci,
  `address` text COLLATE utf8mb4_unicode_ci,
  `gender` text COLLATE utf8mb4_unicode_ci,
  `password` text COLLATE utf8mb4_unicode_ci,
  `confirmPassword` text COLLATE utf8mb4_unicode_ci,
  `payment_mode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verifyCode` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `verify_customers`
--

INSERT INTO `verify_customers` (`id`, `name`, `email`, `mobile`, `address`, `gender`, `password`, `confirmPassword`, `payment_mode`, `verifyCode`, `created_at`, `updated_at`) VALUES
(1, 'Jisan Ahmed', 'jisanahmed06@gmail.com', '01832432', NULL, NULL, NULL, NULL, 'cash', NULL, '2019-09-16 06:42:22', '2019-09-16 06:42:22');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `metaTitle` text COLLATE utf8mb4_unicode_ci,
  `metaKeyword` text COLLATE utf8mb4_unicode_ci,
  `metaDescription` text COLLATE utf8mb4_unicode_ci,
  `orderBy` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title1`, `title2`, `video_link`, `status`, `metaTitle`, `metaKeyword`, `metaDescription`, `orderBy`, `created_at`, `updated_at`) VALUES
(3, 'test', 'test', 'https://www.youtube.com', 1, NULL, NULL, NULL, 1, '2019-10-19 06:51:39', '2019-10-29 04:42:39');

-- --------------------------------------------------------

--
-- Table structure for table `why_choose_us`
--

CREATE TABLE `why_choose_us` (
  `id` int(10) UNSIGNED NOT NULL,
  `title1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `orderBy` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_company`
--
ALTER TABLE `about_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `access_log`
--
ALTER TABLE `access_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `benefits`
--
ALTER TABLE `benefits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactuses`
--
ALTER TABLE `contactuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_backup`
--
ALTER TABLE `country_backup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `division_id` (`division_id`);

--
-- Indexes for table `educations`
--
ALTER TABLE `educations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `other_information`
--
ALTER TABLE `other_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration_charge`
--
ALTER TABLE `registration_charge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `religions`
--
ALTER TABLE `religions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `team-category`
--
ALTER TABLE `team-category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upazilas`
--
ALTER TABLE `upazilas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `district_id` (`district_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_menus`
--
ALTER TABLE `user_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu_actions`
--
ALTER TABLE `user_menu_actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verify_customers`
--
ALTER TABLE `verify_customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `verify_customers_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `why_choose_us`
--
ALTER TABLE `why_choose_us`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_company`
--
ALTER TABLE `about_company`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `access_log`
--
ALTER TABLE `access_log`
  MODIFY `id` int(35) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `benefits`
--
ALTER TABLE `benefits`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contactuses`
--
ALTER TABLE `contactuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `country_backup`
--
ALTER TABLE `country_backup`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `educations`
--
ALTER TABLE `educations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=443;

--
-- AUTO_INCREMENT for table `other_information`
--
ALTER TABLE `other_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `registration_charge`
--
ALTER TABLE `registration_charge`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `religions`
--
ALTER TABLE `religions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `team-category`
--
ALTER TABLE `team-category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_menus`
--
ALTER TABLE `user_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `user_menu_actions`
--
ALTER TABLE `user_menu_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `why_choose_us`
--
ALTER TABLE `why_choose_us`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
