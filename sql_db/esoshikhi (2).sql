-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2023 at 04:18 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `esoshikhi`
--

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `slug` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`id`, `course_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Batch 1', 'batch-1', 1, '2022-12-11 10:18:01', '2022-12-11 10:18:01'),
(2, 1, 'Batch 2', 'batch-2', 1, '2022-12-11 10:18:08', '2022-12-11 10:18:57');

-- --------------------------------------------------------

--
-- Table structure for table `billing_addresses`
--

CREATE TABLE `billing_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(191) DEFAULT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `middle_name` varchar(191) DEFAULT NULL,
  `company` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `postal_code` varchar(191) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billing_addresses`
--

INSERT INTO `billing_addresses` (`id`, `user_id`, `first_name`, `last_name`, `middle_name`, `company`, `email`, `phone`, `country`, `city`, `state`, `postal_code`, `address`, `created_at`, `updated_at`) VALUES
(1, 3, 'Didarul', 'AKand', 'Islam', 'BranexIT', 'didarulislamakand@gmail.com', '01777919189', 'Bangladesh', 'Narshingdi', 'Narshingdi', '1650', 'Post office- Gotashia, Thana - Monohardi, District - Narshingdi, Dhaka, Bangladesh', '2022-11-16 09:10:05', '2022-11-16 09:10:05'),
(2, 4, 'Graiden rtyrtyrty', 'Kay', 'Kaye', 'Zenaida', 'Kirk', 'Hamish', 'Bangladesh', 'Lamar', 'Caesar', 'Kayetyrty', 'Nicho lertyrty', '2022-11-16 11:41:31', '2022-11-28 06:45:04');

-- --------------------------------------------------------

--
-- Table structure for table `business_positions`
--

CREATE TABLE `business_positions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `short_title` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `left_basic` int(11) NOT NULL DEFAULT 0,
  `right_basic` int(11) NOT NULL DEFAULT 0,
  `bonus_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_positions`
--

INSERT INTO `business_positions` (`id`, `short_title`, `title`, `left_basic`, `right_basic`, `bonus_amount`, `created_at`, `updated_at`) VALUES
(2, 'Et perferendis accus', 'Itaque aliqua Magna', 355656, 900, '34.50', '2022-12-04 05:47:42', '2022-12-04 05:49:16'),
(3, 'Nihil vero quibusdam', 'Incidunt sunt dolor', 61, 48, '2.00', '2022-12-04 05:47:48', '2022-12-04 05:47:48');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(2, 'General', 'general', 'uploads/category/11.jpg', 1, '2023-03-15 13:32:39', '2023-03-15 13:32:39'),
(3, 'Science', 'science', 'uploads/category/th-(2).jpeg', 1, '2023-03-15 13:34:32', '2023-03-15 13:34:32'),
(4, 'Arts', 'arts', 'uploads/category/th-(3).jpeg', 1, '2023-03-15 13:36:10', '2023-03-15 13:36:10'),
(5, 'Commerce', 'commerce', 'uploads/category/th-(4).jpeg', 1, '2023-03-15 13:37:03', '2023-03-15 13:37:03'),
(6, 'Soft Skills', 'soft-skills', 'uploads/category/brain_cog.jpg', 1, '2023-03-15 13:40:02', '2023-03-15 13:40:02');

-- --------------------------------------------------------

--
-- Table structure for table `contactuses`
--

CREATE TABLE `contactuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contactuses`
--

INSERT INTO `contactuses` (`id`, `name`, `email`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Alec Haney', 'ripolifaw@mailinator.com', 'Architecto voluptate', 0, '2023-01-12 10:42:41', '2023-01-12 10:42:41'),
(2, 'Astra Chandler', 'wekutehamu@mailinator.com', 'Sed corporis eum lau', 0, '2023-01-12 10:42:51', '2023-01-12 10:42:51');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_code` varchar(191) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `discount` bigint(20) DEFAULT NULL,
  `coupon_limit` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `slug` text NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `offline_or_online` int(11) DEFAULT NULL,
  `course_duration` int(11) DEFAULT NULL,
  `daily_hour` int(11) DEFAULT NULL,
  `student_or_pro` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `total_enrolled` int(11) NOT NULL DEFAULT 0,
  `lectures` int(11) NOT NULL DEFAULT 0,
  `quizzes` int(11) NOT NULL DEFAULT 0,
  `skill_level` varchar(191) DEFAULT NULL,
  `assessments` varchar(191) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `category_id`, `title`, `slug`, `image`, `offline_or_online`, `course_duration`, `daily_hour`, `student_or_pro`, `price`, `total_enrolled`, `lectures`, `quizzes`, `skill_level`, `assessments`, `short_description`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'বাংলা সাহিত্য', 'bangla-sahitz', 'images/course/64116bd298aae.png', 1, 3, 1, 0, 0, 50, 25, 5, 'primary', 'Yes', 'প্রবন্ধ সাহিত্যের অন্যতম একটি শাখা।', '<p>সাহিত্যে বর্ণনামূলক গদ্যকে প্রবন্ধ বলা হয়। প্রবন্ধ সাহিত্যের অন্যতম একটি শাখা। এর সমার্থক শব্দগুলো হল - সংগ্রহ, রচনা, সন্দর্ভ। প্রবন্ধের বিষয়বস্তু শৈল্পিক, কাল্পনিক, জীবনমুখী, ঐতিহাসিক কিম্বা আত্মজীবনীমূলক হয়ে থাকে। যিনি প্রবন্ধ রচনা করেন তাকে প্রবন্ধকার বলা হয়। প্রবন্ধে মূলত কোনো বিষয়কে তুলে ধরে তার বিভিন্ন দিক নিয়ে আলোচনা করা হয়। বাংলা প্রবন্ধ সাহিত্য খুবি সমৃদ্ধ। যুগে যুগে অনেক প্রাবন্ধিক তাদের প্রবন্ধের মাধ্যমে বাংলা সাহিত্যকে সমৃদ্ধ করেছেন তাদের মধ্যে অন্যতম হল বজ্ঙ্কিমচন্দ্র চট্টোপাধ্যায়ের বিবিধ প্রবন্ধ, রবীন্দ্রনাথ ঠাকুরের বিচিত্র প্রবন্ধ এবং প্রমথ চৌধুরীর প্রবন্ধ সংগ্রহ । তাছাড়া আরও অনেক প্রাবন্ধিক আছেন, যেমন- কাজী আবদুল ওদুদ, মানিক বন্দ্যোপাধ্যায়, আবদুল হক প্রমুখ।</p><p><a href=\"https://drive.google.com/drive/folders/1lX0sWa5T0S_DvLXZHglLdaFippvApU0V\" target=\"_blank\">Learning Aids</a></p>', 1, '2023-03-15 13:55:14', '2023-03-16 00:03:14'),
(2, 2, 'বাংলা ভাষার ব্যাকরণ ও নির্মিতি', 'bangla-vashar-bzakrn-oo-nirmiti', 'images/course/64116ce79c97c.png', 1, 3, 1, 0, 0, 50, 25, 10, 'primary', 'Yes', 'ব্যাকরণে ভাষার স্বরূপ  নিয়ে আলােচনা করা হয় ।', '<p><span style=\"color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" oxygen,=\"\" oxygen-sans,=\"\" ubuntu,=\"\" cantarell,=\"\" \"helvetica=\"\" neue\",=\"\" \"open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" text-align:=\"\" justify;\"=\"\">ব্যাকরণে ভাষার স্বরূপ ও প্রকৃতি নিয়ে আলােচনা করা হয়। ধ্বনি, শব্দ, বাক্য ইত্যাদি বিশ্লেষণের মাধ্যমে ভাষার মধ্যকার সাধারণ কিছু বৈশিষ্ট্য খুঁজে বের করা ব্যাকরণের কাজ। ব্যাকরণগ্রন্থে এসব বৈশিষ্ট্যকে সূত্রের আকারে সাজানাে হয়ে থাকে।</span></p><p><span style=\"color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" oxygen,=\"\" oxygen-sans,=\"\" ubuntu,=\"\" cantarell,=\"\" \"helvetica=\"\" neue\",=\"\" \"open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" text-align:=\"\" justify;\"=\"\"><a href=\"https://drive.google.com/drive/folders/1lX0sWa5T0S_DvLXZHglLdaFippvApU0V\" target=\"_blank\">Learning Aids</a><br></span><br></p>', 1, '2023-03-15 13:59:51', '2023-03-16 00:04:19'),
(3, 2, 'বাংলা সহপাঠ', 'bangla-shpath', 'images/course/64117c0f0559c.jpeg', 1, 3, 1, 0, 0, 50, 20, 7, 'primary', 'Yes', 'সহপাঠ বলতে আনন্দপাঠকে বুঝায়।', '<p>সহপাঠে থাকবে শিক্ষামূলজ গল্প বা নাটক।&nbsp;সাহিত্যের ভাষায় গল্পের সংজ্ঞা দেই তবে বলে হয়; গল্প হল কোন কাল্পনিক বা বাস্তব ঘটনার বর্ণনা যা মানুষ ভাষায় প্রকাশ করে, লিপিবদ্ধ কোরে কিংবা মুখে বোলে। আর, এক্ষেত্রে গল্পের বিষয়বস্তুর আভাস দেয়া হয় গল্পের শিরনামের মাধ্যমে। কোন গল্পের বিস্তৃতি নির্ভর করে সেই গল্পের বিষয়বস্তুর ওপর।</p><p><a href=\"https://drive.google.com/drive/folders/1lX0sWa5T0S_DvLXZHglLdaFippvApU0V\" target=\"_blank\">Learning Aids</a></p><div><br></div>', 1, '2023-03-15 15:04:31', '2023-03-16 00:06:07'),
(4, 2, 'English For Today', 'english-for-today', 'images/course/64117d2ada537.jpeg', 1, 4, 1, 0, 0, 50, 30, 10, 'primary', 'Yes', 'English is the language of the media industry.', '<p><span style=\"color: rgb(105, 105, 105); font-family: Gilroy; font-size: 15px;\">Studying a foreign language can increase cultural knowledge and can help you feel more confident when travelling.&nbsp; It’s also a fact that learning a second language improves brain functionality.&nbsp; Studies show that people who speak more than one language have improved memory, problem-solving and critical-thinking skills, enhanced concentration, ability to multitask and better listening skills.&nbsp;</span></p><p><span style=\"color: rgb(105, 105, 105); font-family: Gilroy; font-size: 15px;\"><a href=\"https://drive.google.com/drive/folders/1lX0sWa5T0S_DvLXZHglLdaFippvApU0V\" target=\"_blank\">Learning Aids</a><br></span><br></p>', 1, '2023-03-15 15:09:14', '2023-03-16 00:01:45'),
(5, 2, 'English Grammar And Composition', 'english-grammar-and-composition', 'images/course/64117e0f0a398.jpg', 1, 4, 1, 0, 0, 50, 25, 10, 'primary', 'Yes', 'Grammar is the study of words, their structure, and function.', '<p><span style=\"color: rgb(33, 33, 33); font-family: \" ibm=\"\" plex=\"\" serif\",=\"\" serif;=\"\" font-size:=\"\" 21px;=\"\" text-align:=\"\" justify;\"=\"\">Grammar is the study of words, their structure, and function. It is essential to learn grammar because it helps learners understand the English language better. Grammar also enables them to understand how sentences are formed. It also allows them to write good essays and articles that can be understood by people who do not know much about grammar. Grammar is also used in everyday life when discussing something that happened or will happen in the future.</span></p><p><span style=\"color: rgb(33, 33, 33); font-family: \" ibm=\"\" plex=\"\" serif\",=\"\" serif;=\"\" font-size:=\"\" 21px;=\"\" text-align:=\"\" justify;\"=\"\"><br></span></p><p><span style=\"color: rgb(33, 33, 33); font-family: \" ibm=\"\" plex=\"\" serif\",=\"\" serif;=\"\" font-size:=\"\" 21px;=\"\" text-align:=\"\" justify;\"=\"\"><a href=\"https://drive.google.com/drive/folders/1lX0sWa5T0S_DvLXZHglLdaFippvApU0V\" target=\"_blank\">Learning Aids</a><br></span><br></p>', 1, '2023-03-15 15:13:03', '2023-03-16 00:07:02'),
(6, 2, 'গণিত', 'gnit', 'images/course/641182b11c2ee.png', 1, 6, 2, 0, 0, 50, 30, 15, 'primary', 'Yes', 'মস্তিষ্ককে শক্তিশালী করার সেরা উপায় গণিতচর্চা।', '<p>গণিত আমাদের মস্তিষ্কের বিকাশ ও বিশ্লেষণমূলক দক্ষতায় গুরুত্বপূর্ণ ভূমিকা পালন করে। মস্তিষ্ককে শক্তিশালী করার সেরা উপায় গণিতচর্চা। দার্শনিক কাস্তের মতে, ‘একটি বিজ্ঞান কেবল তখনই সম্পূর্ণ হয়, যখন এটি গণিত দ্বারা সুনির্দিষ্টভাবে প্রমাণিত।’ তাই এ কথা বলা অত্যুক্তি হবে না, বৈজ্ঞানিক শিক্ষা, যা গণিত দিয়ে শুরু হয় না বা গণিতের প্রয়োগ নেই; তার ভিত্তি ত্রুটিযুক্ত</p><p><br></p><p><a href=\"https://drive.google.com/drive/folders/1lX0sWa5T0S_DvLXZHglLdaFippvApU0V\" target=\"_blank\">Learning Aids</a></p>', 1, '2023-03-15 15:32:49', '2023-03-16 00:08:15');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `division_id` int(11) NOT NULL,
  `bn_name` varchar(191) DEFAULT NULL,
  `lat` varchar(191) DEFAULT NULL,
  `lon` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `user_id`, `name`, `division_id`, `bn_name`, `lat`, `lon`, `url`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Comilla', 1, 'কুমিল্লা', '23.4682747', '91.1788135', 'www.comilla.gov.bd', 1, NULL, NULL),
(2, NULL, 'Feni', 1, 'ফেনী', '23.023231', '91.3840844', 'www.feni.gov.bd', 1, NULL, NULL),
(3, NULL, 'Brahmanbaria', 1, 'ব্রাহ্মণবাড়িয়া', '23.9570904', '91.1119286', 'www.brahmanbaria.gov.bd', 1, NULL, NULL),
(4, NULL, 'Rangamati', 1, 'রাঙ্গামাটি', NULL, NULL, 'www.rangamati.gov.bd', 1, NULL, NULL),
(5, NULL, 'Noakhali', 1, 'নোয়াখালী', '22.869563', '91.099398', 'www.noakhali.gov.bd', 1, NULL, NULL),
(6, NULL, 'Chandpur', 1, 'চাঁদপুর', '23.2332585', '90.6712912', 'www.chandpur.gov.bd', 1, NULL, NULL),
(7, NULL, 'Lakshmipur', 1, 'লক্ষ্মীপুর', '22.942477', '90.841184', 'www.lakshmipur.gov.bd', 1, NULL, NULL),
(8, NULL, 'Chattogram', 1, 'চট্টগ্রাম', '22.335109', '91.834073', 'www.chittagong.gov.bd', 1, NULL, NULL),
(9, NULL, 'Coxsbazar', 1, 'কক্সবাজার', NULL, NULL, 'www.coxsbazar.gov.bd', 1, NULL, NULL),
(10, NULL, 'Khagrachhari', 1, 'খাগড়াছড়ি', '23.119285', '91.984663', 'www.khagrachhari.gov.bd', 1, NULL, NULL),
(11, NULL, 'Bandarban', 1, 'বান্দরবান', '22.1953275', '92.2183773', 'www.bandarban.gov.bd', 1, NULL, NULL),
(12, NULL, 'Sirajganj', 2, 'সিরাজগঞ্জ', '24.4533978', '89.7006815', 'www.sirajganj.gov.bd', 1, NULL, NULL),
(13, NULL, 'Pabna', 2, 'পাবনা', '23.998524', '89.233645', 'www.pabna.gov.bd', 1, NULL, NULL),
(14, NULL, 'Bogura', 2, 'বগুড়া', '24.8465228', '89.377755', 'www.bogra.gov.bd', 1, NULL, NULL),
(15, NULL, 'Rajshahi', 2, 'রাজশাহী', NULL, NULL, 'www.rajshahi.gov.bd', 1, NULL, NULL),
(16, NULL, 'Natore', 2, 'নাটোর', '24.420556', '89.000282', 'www.natore.gov.bd', 1, NULL, NULL),
(17, NULL, 'Joypurhat', 2, 'জয়পুরহাট', NULL, NULL, 'www.joypurhat.gov.bd', 1, NULL, NULL),
(18, NULL, 'Chapainawabganj', 2, 'চাঁপাইনবাবগঞ্জ', '24.5965034', '88.2775122', 'www.chapainawabganj.gov.bd', 1, NULL, NULL),
(19, NULL, 'Naogaon', 2, 'নওগাঁ', NULL, NULL, 'www.naogaon.gov.bd', 1, NULL, NULL),
(20, NULL, 'Jashore', 3, 'যশোর', '23.16643', '89.2081126', 'www.jessore.gov.bd', 1, NULL, NULL),
(21, NULL, 'Satkhira', 3, 'সাতক্ষীরা', NULL, NULL, 'www.satkhira.gov.bd', 1, NULL, NULL),
(22, NULL, 'Meherpur', 3, 'মেহেরপুর', '23.762213', '88.631821', 'www.meherpur.gov.bd', 1, NULL, NULL),
(23, NULL, 'Narail', 3, 'নড়াইল', '23.172534', '89.512672', 'www.narail.gov.bd', 1, NULL, NULL),
(24, NULL, 'Chuadanga', 3, 'চুয়াডাঙ্গা', '23.6401961', '88.841841', 'www.chuadanga.gov.bd', 1, NULL, NULL),
(25, NULL, 'Kushtia', 3, 'কুষ্টিয়া', '23.901258', '89.120482', 'www.kushtia.gov.bd', 1, NULL, NULL),
(26, NULL, 'Magura', 3, 'মাগুরা', '23.487337', '89.419956', 'www.magura.gov.bd', 1, NULL, NULL),
(27, NULL, 'Khulna', 3, 'খুলনা', '22.815774', '89.568679', 'www.khulna.gov.bd', 1, NULL, NULL),
(28, NULL, 'Bagerhat', 3, 'বাগেরহাট', '22.651568', '89.785938', 'www.bagerhat.gov.bd', 1, NULL, NULL),
(29, NULL, 'Jhenaidah', 3, 'ঝিনাইদহ', '23.5448176', '89.1539213', 'www.jhenaidah.gov.bd', 1, NULL, NULL),
(30, NULL, 'Jhalakathi', 4, 'ঝালকাঠি', NULL, NULL, 'www.jhalakathi.gov.bd', 1, NULL, NULL),
(31, NULL, 'Patuakhali', 4, 'পটুয়াখালী', '22.3596316', '90.3298712', 'www.patuakhali.gov.bd', 1, NULL, NULL),
(32, NULL, 'Pirojpur', 4, 'পিরোজপুর', NULL, NULL, 'www.pirojpur.gov.bd', 1, NULL, NULL),
(33, NULL, 'Barisal', 4, 'বরিশাল', NULL, NULL, 'www.barisal.gov.bd', 1, NULL, NULL),
(34, NULL, 'Bhola', 4, 'ভোলা', '22.685923', '90.648179', 'www.bhola.gov.bd', 1, NULL, NULL),
(35, NULL, 'Barguna', 4, 'বরগুনা', NULL, NULL, 'www.barguna.gov.bd', 1, NULL, NULL),
(36, NULL, 'Sylhet', 5, 'সিলেট', '24.8897956', '91.8697894', 'www.sylhet.gov.bd', 1, NULL, NULL),
(37, NULL, 'Moulvibazar', 5, 'মৌলভীবাজার', '24.482934', '91.777417', 'www.moulvibazar.gov.bd', 1, NULL, NULL),
(38, NULL, 'Habiganj', 5, 'হবিগঞ্জ', '24.374945', '91.41553', 'www.habiganj.gov.bd', 1, NULL, NULL),
(39, NULL, 'Sunamganj', 5, 'সুনামগঞ্জ', '25.0658042', '91.3950115', 'www.sunamganj.gov.bd', 1, NULL, NULL),
(40, NULL, 'Narsingdi', 6, 'নরসিংদী', '23.932233', '90.71541', 'www.narsingdi.gov.bd', 1, NULL, NULL),
(41, NULL, 'Gazipur', 6, 'গাজীপুর', '24.0022858', '90.4264283', 'www.gazipur.gov.bd', 1, NULL, NULL),
(42, NULL, 'Shariatpur', 6, 'শরীয়তপুর', NULL, NULL, 'www.shariatpur.gov.bd', 1, NULL, NULL),
(43, NULL, 'Narayanganj', 6, 'নারায়ণগঞ্জ', '23.63366', '90.496482', 'www.narayanganj.gov.bd', 1, NULL, NULL),
(44, NULL, 'Tangail', 6, 'টাঙ্গাইল', NULL, NULL, 'www.tangail.gov.bd', 1, NULL, NULL),
(45, NULL, 'Kishoreganj', 6, 'কিশোরগঞ্জ', '24.444937', '90.776575', 'www.kishoreganj.gov.bd', 1, NULL, NULL),
(46, NULL, 'Manikganj', 6, 'মানিকগঞ্জ', NULL, NULL, 'www.manikganj.gov.bd', 1, NULL, NULL),
(47, NULL, 'Dhaka', 6, 'ঢাকা', '23.7115253', '90.4111451', 'www.dhaka.gov.bd', 1, NULL, NULL),
(48, NULL, 'Munshiganj', 6, 'মুন্সিগঞ্জ', NULL, NULL, 'www.munshiganj.gov.bd', 1, NULL, NULL),
(49, NULL, 'Rajbari', 6, 'রাজবাড়ী', '23.7574305', '89.6444665', 'www.rajbari.gov.bd', 1, NULL, NULL),
(50, NULL, 'Madaripur', 6, 'মাদারীপুর', '23.164102', '90.1896805', 'www.madaripur.gov.bd', 1, NULL, NULL),
(51, NULL, 'Gopalganj', 6, 'গোপালগঞ্জ', '23.0050857', '89.8266059', 'www.gopalganj.gov.bd', 1, NULL, NULL),
(52, NULL, 'Faridpur', 6, 'ফরিদপুর', '23.6070822', '89.8429406', 'www.faridpur.gov.bd', 1, NULL, NULL),
(53, NULL, 'Panchagarh', 7, 'পঞ্চগড়', '26.3411', '88.5541606', 'www.panchagarh.gov.bd', 1, NULL, NULL),
(54, NULL, 'Dinajpur', 7, 'দিনাজপুর', '25.6217061', '88.6354504', 'www.dinajpur.gov.bd', 1, NULL, NULL),
(55, NULL, 'Lalmonirhat', 7, 'লালমনিরহাট', NULL, NULL, 'www.lalmonirhat.gov.bd', 1, NULL, NULL),
(56, NULL, 'Nilphamari', 7, 'নীলফামারী', '25.931794', '88.856006', 'www.nilphamari.gov.bd', 1, NULL, NULL),
(57, NULL, 'Gaibandha', 7, 'গাইবান্ধা', '25.328751', '89.528088', 'www.gaibandha.gov.bd', 1, NULL, NULL),
(58, NULL, 'Thakurgaon', 7, 'ঠাকুরগাঁও', '26.0336945', '88.4616834', 'www.thakurgaon.gov.bd', 1, NULL, NULL),
(59, NULL, 'Rangpur', 7, 'রংপুর', '25.7558096', '89.244462', 'www.rangpur.gov.bd', 1, NULL, NULL),
(60, NULL, 'Kurigram', 7, 'কুড়িগ্রাম', '25.805445', '89.636174', 'www.kurigram.gov.bd', 1, NULL, NULL),
(61, NULL, 'Sherpur', 8, 'শেরপুর', '25.0204933', '90.0152966', 'www.sherpur.gov.bd', 1, NULL, NULL),
(62, NULL, 'Mymensingh', 8, 'ময়মনসিংহ', NULL, NULL, 'www.mymensingh.gov.bd', 1, NULL, NULL),
(63, NULL, 'Jamalpur', 8, 'জামালপুর', '24.937533', '89.937775', 'www.jamalpur.gov.bd', 1, NULL, NULL),
(64, NULL, 'Netrokona', 8, 'নেত্রকোণা', '24.870955', '90.727887', 'www.netrokona.gov.bd', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `user_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Chattagram', 1, NULL, NULL),
(2, NULL, 'Rajshahi', 1, NULL, NULL),
(3, NULL, 'Khulna', 1, NULL, NULL),
(4, NULL, 'Barisal', 1, NULL, NULL),
(5, NULL, 'Sylhet', 1, NULL, NULL),
(6, NULL, 'Dhaka', 1, NULL, NULL),
(7, NULL, 'Rangpur', 1, NULL, NULL),
(8, NULL, 'Mymensingh', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exam_summeries`
--

CREATE TABLE `exam_summeries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `lesion_id` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `mark` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_summeries`
--

INSERT INTO `exam_summeries` (`id`, `user_id`, `course_id`, `lesion_id`, `correct`, `wrong`, `mark`, `created_at`, `updated_at`) VALUES
(1, 19, 5, 4, 0, 5, 0, '2022-12-28 10:47:04', '2022-12-28 10:47:04'),
(2, 19, 1, 1, 1, 11, 1, '2022-12-28 10:47:38', '2022-12-28 10:47:38');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_works`
--

CREATE TABLE `home_works` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `start_date` varchar(191) NOT NULL,
  `due_date` varchar(191) NOT NULL,
  `marks` int(11) NOT NULL,
  `pdf` varchar(191) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_works`
--

INSERT INTO `home_works` (`id`, `teacher_id`, `course_id`, `batch_id`, `start_date`, `due_date`, `marks`, `pdf`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 11, 1, 1, '2022-12-17', '2022-12-29', 10, 'files/home_work_file/639da13daa9f8.pdf', '<p><span style=\"color: rgb(111, 112, 116); font-family: \"Open Sans\", sans-serif; font-size: 15px;\">Please submit your homework for Orientation</span><br></p>', 1, '2022-12-17 04:56:58', '2022-12-17 05:00:13'),
(2, 11, 1, 1, '2022-12-19', '2022-12-27', 20, 'files/home_work_file/639da18f2a748.pdf', '<p><span style=\"color: rgb(111, 112, 116); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">Please submit your homework for Canva 1 Logo TechWork 2.Social MEDIA Post Design 3. Video Edit</span><br></p>', 1, '2022-12-17 05:01:35', '2022-12-17 05:01:35');

-- --------------------------------------------------------

--
-- Table structure for table `lesions`
--

CREATE TABLE `lesions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `total_qs` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lesions`
--

INSERT INTO `lesions` (`id`, `course_id`, `name`, `total_qs`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Class -1', 20, 1, '2022-12-27 08:56:42', '2022-12-27 08:56:42'),
(2, 1, 'Class -2', 0, 1, '2022-12-27 08:57:40', '2022-12-27 08:57:40'),
(3, 1, 'Class - 3', 0, 1, '2022-12-27 08:57:52', '2022-12-27 08:57:52'),
(4, 5, 'Class -1', 0, 1, '2022-12-27 09:02:11', '2022-12-27 09:03:01'),
(5, 5, 'Class -2', 0, 1, '2022-12-27 09:03:23', '2022-12-27 09:03:23'),
(6, 5, 'Class -3', 0, 1, '2022-12-27 09:03:28', '2022-12-27 09:03:28'),
(7, 5, 'Class -4', 0, 1, '2022-12-27 09:03:33', '2022-12-27 09:03:33'),
(8, 5, 'Class -5', 0, 1, '2022-12-27 09:03:38', '2022-12-27 09:03:38');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_05_20_183530_create_sessions_table', 1),
(7, '2021_05_20_185532_create_roles_table', 1),
(8, '2022_01_03_201339_create_divisions_table', 1),
(9, '2022_01_03_201518_create_districts_table', 1),
(10, '2022_01_03_201529_create_thanas_table', 1),
(12, '2022_09_21_092726_create_page_categories_table', 1),
(13, '2022_11_16_145933_create_shipping_addresses_table', 2),
(14, '2022_11_16_150117_create_billing_addresses_table', 2),
(15, '2022_11_17_103229_create_courses_table', 3),
(16, '2022_11_17_103908_create_categories_table', 4),
(17, '2022_11_18_060818_create_transer_balances_table', 5),
(18, '2022_11_18_063818_create_transactions_table', 6),
(19, '2022_11_19_100036_create_net_offices_table', 7),
(20, '2022_11_19_102515_create_purchases_table', 8),
(21, '2022_11_21_165330_create_matchings_table', 9),
(22, '2022_11_26_192726_create_bonus_archives_table', 9),
(23, '2022_11_27_052647_create_payment_methods_table', 10),
(24, '2022_11_27_102555_create_withdraws_table', 11),
(25, '2022_11_30_174123_create_user_incomes_table', 12),
(26, '2022_12_01_053010_create_statements_table', 13),
(27, '2022_12_02_162449_create_incentives_table', 13),
(28, '2022_12_02_162718_create_business_positions_table', 13),
(29, '2022_12_06_160302_create_settings_table', 14),
(30, '2022_12_11_151108_create_batches_table', 15),
(31, '2022_12_12_143019_create_teachers_table', 16),
(32, '2022_12_14_142649_create_notices_table', 17),
(33, '2022_12_14_150741_create_study_materials_table', 18),
(34, '2022_12_17_101836_create_online_classes_table', 19),
(35, '2022_12_17_104103_create_home_works_table', 20),
(36, '2022_12_23_135359_create_user_verifies_table', 21),
(37, '2022_12_24_144309_create_coupons_table', 21),
(38, '2022_12_27_144601_create_lesions_table', 22),
(39, '2022_12_27_150403_create_questions_table', 23),
(40, '2022_12_27_164008_create_orders_table', 24),
(41, '2022_12_27_170533_create_order_details_table', 24),
(42, '2022_12_28_150558_create_student_exams_table', 24),
(43, '2022_12_28_164256_create_exam_summeries_table', 25),
(44, '2022_12_28_144920_create_site_settings_table', 26),
(45, '2022_12_28_155902_create_pages_table', 27),
(46, '2023_01_12_164114_create_contactuses_table', 28),
(47, '2023_01_15_053555_create_sponsores_table', 29),
(48, '2023_01_15_055031_create_posts_table', 30);

-- --------------------------------------------------------

--
-- Table structure for table `net_offices`
--

CREATE TABLE `net_offices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `code` varchar(191) NOT NULL,
  `address` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `net_offices`
--

INSERT INTO `net_offices` (`id`, `name`, `code`, `address`, `status`, `created_at`, `updated_at`) VALUES
(1, 'BGT', 'BGT01', NULL, 1, '2022-11-19 04:14:02', '2022-11-19 04:14:02'),
(2, 'BGT02', 'BGT02', NULL, 1, '2022-11-19 04:23:17', '2022-11-19 04:23:28');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` longtext DEFAULT NULL,
  `file` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `teacher_id`, `course_id`, `batch_id`, `title`, `description`, `file`, `status`, `created_at`, `updated_at`) VALUES
(1, 11, 1, 2, 'Title', '<p><span style=\"font-weight: 600; background-color: rgb(245, 247, 250);\">Description</span><br></p>', 'files/notice_file/6399e38accf93.pdf', 1, '2022-12-14 08:54:02', '2022-12-17 04:44:46'),
(2, 11, 1, 1, 'Demo', '<div style=\"margin: 0px 14.4px 0px 28.8px; padding: 0px; width: 436.8px; float: left; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif;\"><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-weight: 400; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div style=\"margin: 0px 28.8px 0px 14.4px; padding: 0px; width: 436.8px; float: right; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif;\"><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-weight: 400; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\">Why do we use it?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><p><br style=\"margin: 0px; padding: 0px; clear: both; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; text-align: center;\"></p><div style=\"margin: 0px 14.4px 0px 28.8px; padding: 0px; width: 436.8px; float: left; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif;\"><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-weight: 400; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\">Where does it come from?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><div style=\"margin: 0px 28.8px 0px 14.4px; padding: 0px; width: 436.8px; float: right; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif;\"><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-weight: 400; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\">Where can I get some?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p></div>', 'files/notice_file/6399e4d8dd398.jpg', 1, '2022-12-14 08:59:36', '2022-12-17 04:44:48'),
(4, 11, 1, 2, 'Batch 2 Demo Notice', '<p><span style=\"font-weight: 600; background-color: rgb(245, 247, 250);\">Description</span></p><p><span style=\"font-weight: 600; background-color: rgb(245, 247, 250);\">Demo<br></span><br></p>', 'files/notice_file/6399e63226a33.pdf', 1, '2022-12-14 09:01:01', '2022-12-17 04:44:50');

-- --------------------------------------------------------

--
-- Table structure for table `online_classes`
--

CREATE TABLE `online_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `start_date` varchar(191) NOT NULL,
  `time` varchar(191) NOT NULL,
  `duration` varchar(191) DEFAULT NULL,
  `passcode` varchar(191) DEFAULT NULL,
  `join_link` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `online_classes`
--

INSERT INTO `online_classes` (`id`, `teacher_id`, `course_id`, `batch_id`, `title`, `start_date`, `time`, `duration`, `passcode`, `join_link`, `status`, `created_at`, `updated_at`) VALUES
(1, 11, 1, 1, '1st Class- Orientation Class', '2022-12-17', '16:27', '60', NULL, 'https://meet.google.com/pts-gznc-hzv', 1, '2022-12-17 04:27:51', '2022-12-17 04:47:33'),
(2, 11, 1, 1, '2nd Class- Advanced Canva Design', '2022-12-29', '20:00', '50', NULL, NULL, 1, '2022-12-17 04:39:15', '2022-12-17 04:47:35'),
(3, 11, 1, 2, '1st Class- Orientation Class', '2022-12-26', '22:02', '60', NULL, 'https://meet.google.com/pts-gznc-hzv', 1, '2022-12-17 04:40:02', '2022-12-26 10:01:23');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `coupon_id` bigint(20) DEFAULT NULL,
  `payment_method_id` bigint(20) DEFAULT NULL,
  `payment_transition_number` varchar(191) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `course_id`, `transaction_id`, `coupon_id`, `payment_method_id`, `payment_transition_number`, `amount`, `quantity`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, NULL, NULL, NULL, NULL, 0, 1, 24, 1, '2023-03-14 02:31:11', '2023-03-14 02:37:48'),
(2, 5, NULL, NULL, NULL, NULL, 0, 1, 25, 1, '2023-03-14 11:54:33', '2023-03-14 12:05:15'),
(3, 5, NULL, NULL, NULL, NULL, 0, 2, 28, 0, '2023-03-16 07:24:54', '2023-03-16 07:24:54'),
(4, 5, NULL, NULL, NULL, NULL, 0, 2, 28, 0, '2023-03-16 07:25:46', '2023-03-16 07:25:46');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `link` varchar(191) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `image` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `link`, `type`, `image`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Google', 'google', 'https://www.google.com/', 'link', NULL, NULL, 1, '2023-01-15 01:03:08', '2023-01-15 01:03:08'),
(3, 'Facebook', 'facebook', 'https://www.facebook.com/', 'link', NULL, NULL, 1, '2023-01-15 01:03:22', '2023-01-15 01:03:22'),
(4, 'Youtube', 'youtube', 'https://www.youtube.com/', 'link', NULL, NULL, 1, '2023-01-15 01:03:32', '2023-01-15 01:03:32'),
(5, 'Twitter', 'twitter', 'https://www.twitter.com/', 'link', NULL, NULL, 1, '2023-01-15 01:03:51', '2023-01-15 01:03:51'),
(6, 'Privacy Policy', 'privacy-policy', NULL, 'description', NULL, '<p>Privacy Policy<br></p>', 1, '2023-01-15 01:04:44', '2023-01-15 01:04:44'),
(7, 'Terms and conditions', 'terms-and-conditions', NULL, 'description', NULL, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p><p></p>', 1, '2023-01-15 01:05:12', '2023-01-15 01:09:33'),
(8, 'About us', 'about-us', NULL, 'description', NULL, '<p>About Us<br></p>', 1, '2023-01-15 01:05:38', '2023-03-15 17:01:42');

-- --------------------------------------------------------

--
-- Table structure for table `page_categories`
--

CREATE TABLE `page_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `account_no` varchar(191) NOT NULL,
  `branch` varchar(191) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `account_no`, `branch`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bkash', '01700000111', NULL, 1, '2022-11-27 04:01:05', '2022-11-27 04:01:05'),
(2, 'Rocket', '01700000000', NULL, 1, '2022-11-27 04:01:16', '2022-11-27 04:01:16'),
(3, 'DBBL', '00122244415410', 'Monohardi', 1, '2022-11-27 04:01:31', '2022-11-27 04:01:31');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `image` varchar(191) NOT NULL,
  `writter` varchar(191) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `likes` int(11) NOT NULL DEFAULT 0,
  `comments` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `image`, `writter`, `short_description`, `description`, `likes`, `comments`, `status`, `created_at`, `updated_at`) VALUES
(1, 'What is Lorem Ipsum?', 'what-is-lorem-ipsum', 'uploads/post/Fruitilo_website3-q05ea0pmdh1yu429syqdw0pdcyjln9qzfor3avmfs8.jpg', 'Lorem', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p><p></p>', 0, 0, 1, '2023-01-15 00:01:24', '2023-01-15 00:01:24'),
(2, 'Why do we use it?', 'why-do-we-use-it', 'uploads/post/slide1-1024x564.jpg', 'Lorem', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the\r\n readable content of a page when looking at its layout. The point of \r\nusing Lorem Ipsum is that it has a more-or-less normal distribution of \r\nletters, as opposed to using \'Content here, content here\', making it \r\nlook like readable English. Many desktop publishing packages and web \r\npage editors now use Lorem Ipsum as their default model text, and a \r\nsearch for \'lorem ipsum\' will uncover many web sites still in their \r\ninfancy. Various versions have evolved over the years, sometimes by \r\naccident, sometimes on purpose (injected humour and the like).</p><p></p>', 0, 0, 1, '2023-01-15 00:01:58', '2023-01-15 00:01:58'),
(3, 'Where does it come from?', 'where-does-it-come-from', 'uploads/post/slide2-1024x564.jpg', 'Lorem', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It\r\n has roots in a piece of classical Latin literature from 45 BC, making \r\nit over 2000 years old. Richard McClintock, a Latin professor at \r\nHampden-Sydney College in Virginia, looked up one of the more obscure \r\nLatin words, consectetur, from a Lorem Ipsum passage, and going through \r\nthe cites of the word in classical literature, discovered the \r\nundoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 \r\nof \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by \r\nCicero, written in 45 BC. This book is a treatise on the theory of \r\nethics, very popular during the Renaissance. The first line of Lorem \r\nIpsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section \r\n1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is\r\n reproduced below for those interested. Sections 1.10.32 and 1.10.33 \r\nfrom \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in \r\ntheir exact original form, accompanied by English versions from the 1914\r\n translation by H. Rackham.</p><p></p>', 0, 0, 1, '2023-01-15 00:02:19', '2023-01-15 00:02:19');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `student_id` int(11) NOT NULL,
  `net_office_id` int(11) NOT NULL,
  `institute` varchar(191) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_price` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `order_id`, `student_id`, `net_office_id`, `institute`, `item_id`, `item_price`, `status`, `created_at`, `updated_at`) VALUES
(3, NULL, 186434, 2, 'SCHOLAR IT', 1, 15000, 0, '2022-11-19 22:31:35', '2022-11-19 22:31:35'),
(4, NULL, 186433, 2, 'SCHOLAR IT', 1, 15000, 0, '2022-11-19 22:32:50', '2022-11-19 22:32:50'),
(7, '49737', 60595, 2, 'SCHOLAR IT', 5, 5000, 1, '2022-12-27 09:58:28', '2022-12-27 09:58:29'),
(8, '48038', 60595, 2, 'SCHOLAR IT', 1, 15000, 1, '2022-12-27 09:59:42', '2022-12-27 09:59:42');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` int(11) NOT NULL,
  `lesion_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `option_one` text NOT NULL,
  `option_two` text NOT NULL,
  `option_three` text NOT NULL,
  `option_four` text NOT NULL,
  `description` longtext DEFAULT NULL,
  `mark` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `course_id`, `lesion_id`, `question`, `answer`, `option_one`, `option_two`, `option_three`, `option_four`, `description`, `mark`, `status`, `created_at`, `updated_at`) VALUES
(3, 5, 4, '‘By and large’ means-', 'option_three', 'everywhere', 'very large', 'mostly', 'far away', 'By and Large একটি Idioms and phrase যার english meaning হয় Mostly যার বাংলা অর্থ প্রধানত/ সাধারণত।', 1, 1, '2022-12-27 09:29:40', '2022-12-27 09:32:45'),
(4, 5, 4, 'Francis Bacon is an illustrious-', 'option_one', 'essayist', 'dramatist', 'novelist', 'journalist', 'Francis Bacon ছিলেন Elizabethan যুগের একজন ইংরেজ রাজনীতিবিদ, দার্শনিক ও সরকারি আইনজীবী। সাহিত্য রচনার ক্ষেত্রে তিনি ছিলেন গদ্য সাহিত্যিক। তিনি Essay বা প্রবন্ধ রচনার ক্ষেত্রে খ্যাতি অর্জন করেন। তাঁকে ‘Father of English Essay’ বলা হয়। তাঁর অধিকাংশ প্রবন্ধের শুরুতে ‘of’ শব্দটি আছে। Of Truth, Of Death, Of Marriage and Single life ইত্যাদি তাঁর কিছু বিখ্যাত Essay.', 1, 1, '2022-12-27 09:33:20', '2022-12-27 09:33:20'),
(5, 5, 4, '‘He could not win but learnt a lot’ Which part of speech is the word ‘but’?', 'option_four', 'an adverb', 'a verb', 'an adjective', 'a conjunction', 'And, or, but, yet, however, only etc. হলো coordinating conjunction যা দুই বা ততোধিক সমশ্রেণির clause কে যুক্ত করে। সে অনুযায়ী প্রশ্নে but হবে a conjunction.', 1, 1, '2022-12-27 09:33:47', '2022-12-27 09:33:47'),
(6, 5, 4, 'Select the appropriate preposition: ‘Are you doing’ anything special ____ the weekend?’', 'option_one', 'at', 'with', 'on', 'for', 'সাপ্তাহিক ছুটির দিন বোঝাতে weekend ব্যবহৃত হয়, এর পূর্বে preposition হিসেবে at এবং on দুটোই ব্যবহৃত হতে পারে। American English এ on ব্যবহৃত হয় এবং British English এ at ব্যবহৃত হয়। আমরা যেহেতু, writing এর ক্ষেত্রে British English অনুসরণ করি তাই at হবে সঠিক উত্তর।', 1, 1, '2022-12-27 09:37:42', '2022-12-27 09:37:42'),
(7, 5, 4, 'What is the plural form of ‘sheep’?', 'option_two', 'sheeps', 'sheep', 'shepes', 'sheepses', 'Sheep এর plural ‘sheep’ হবে। কিছু কিছু noun আছে যেগুলোর singular ও plural form একই যেমন- Aircraft, cod, deer, fish, cattle, series ইত্যাদি।', 1, 1, '2022-12-27 09:38:45', '2022-12-27 09:38:45'),
(8, 1, 1, 'কোন দেশ থেকে ‘আরব বসন্ত’-এর সূচনা হয়?', 'option_two', 'মিশর', 'তিউনিশিয়া', 'লিবিয়া', 'সিরিয়া', '২০১০ সালের ১৭ ডিসেম্বর তিউনিশিয়ার রাজধানী তিউনিশে মোঃ বুয়াজ্জিজি নামে ২৬ বছরের এক ফল বিক্রেতা প্রশাসনের দুর্নীতি আর বেকারত্বের জীবনে ক্ষুব্ধ হয়ে নিজের গায়ে কেরোসিন ঢেলে আগুন ধরিয়ে দিলে গণবিক্ষোভ শুরু হয়। এর ২৭ দিনের মাথায় স্বৈরশাসক জয়নুল আবেদিন বেন আলীর পতনের মাধ্যমে আরব বসন্তের সূচনা হয়।', 1, 1, '2022-12-27 09:39:53', '2022-12-27 09:39:53'),
(9, 1, 1, 'কোন সালে রাশিয়া ক্রিমিয়া দখল করে?', 'option_three', '২০১০', '২০১২', '২০১৪', '২০১৬', 'ক্রিমিয়া সাবেক সোভিয়েত ইউনিয়নের অন্তর্ভুক্ত একটি অঞ্চল ছিল। এই ক্রিমিয়া নিয়ে ১৮৫৩-১৮৫৬ সাল পর্যন্ত তৎকালীন জার সাম্রাজ্য ও অটোম্যান, যুক্তরাজ্য ও ফ্রান্স জোটের মধ্যে ১ম ক্রিমিয়া যুদ্ধ সংগঠিত হয়। ক্রিমিয়ার রাজধানী সিমফারপোল, কৌশলগত গুরুত্বপূর্ণ নৌঘাঁটি ইয়াল্টা এবং সেভাস্তোপোল ক্রিমিয়াতে অবস্থিত। ১৯৫৪ সালে সাবেক সোভিয়েত নেতা নিকিতা ক্রুশ্চেভ ক্রিমিয়া উপদ্বীপটি উপহার হিসেবে ইউক্রেনকে লিখে দেন। ২০১৪ সালে ক্রিমিয়া নিয়ে রাশিয়া ও ইউক্রেনের মধ্যে যুদ্ধ সংঘটিত হয় এবং রাশিয়া ইউক্রেনের নিকট হতে ক্রিমিয়া উপদ্বীপকে দখল করে নেয়।', 1, 1, '2022-12-27 09:40:23', '2022-12-27 09:40:23'),
(10, 1, 1, 'কোন দেশটি ভেনিজুয়েলার প্রতিবেশি রাষ্ট্র নয়?', 'option_two', 'গায়ানা', 'বলিভিয়া', 'ব্রাজিল', 'কলম্বিয়া', 'দক্ষিণ আমেরিকার সমাজতান্ত্রিক দেশ ভেনিজুয়েলা। এর রাজধানী কারাকাস। বর্তমান বিশ্বের সবচেয়ে মুদ্রাস্ফীতির দেশ ভেনিজুয়েলা। এর প্রতিবেশি দেশ হলো গায়ানা, কলম্বিয়া, ব্রাজিল। বলিভিয়া ব্রাজিলের সীমান্তবর্তী রাষ্ট্র।', 1, 1, '2022-12-27 09:40:51', '2022-12-27 09:40:51'),
(11, 1, 1, 'বিগত কপ-২৬ কোন শহরে অনুষ্ঠিত হয়?', 'option_three', 'জেনেভা', 'প্যারিস', 'গ্লাসগো', 'ব্রাসেলস', '৩১ অক্টোবর-১৩ নভেম্বর, ২০২১ যুক্তরাজ্যের স্কটল্যান্ডের গ্লাসগো শহরে কপ-২৬ সম্মেলন অনুষ্ঠিত হয়। এতে ১২০টি দেশের রাষ্ট্রপ্রধানসহ ২০০টি দেশের প্রতিনিধি অংশগ্রহণ করেন। এ সম্মেলনে ২০৬০ সালের মধ্যে সৌদি-আরব গ্রিন-হাউস গ্যাস নিঃসরণের মাত্রা শূন্যের কোঠায় নামিয়ে আনার পরিকল্পনা ব্যক্ত করে। ১৯০টি দেশ কয়লা ব্যবহার বন্ধের প্রতিশ্রুতি দেয়। উল্লেখ্য, ২০২২ সালে কপ-২৭ অনুষ্ঠিত হবে শারম আল শেখ, মিশরে এবং ২০২৩ সালে কপ-২৮ অনুষ্ঠিত হবে সংযুক্ত আরব আমিরাতে।', 1, 1, '2022-12-27 09:41:52', '2022-12-27 09:41:52'),
(12, 1, 1, 'বাংলাদেশ ও ভারতের মধ্যে সম্পাদিত গঙ্গার পানি বণ্টন চুক্তি কখন শেষ হবে?', 'option_two', '২০৪০', '২০২৬', '২০২৪', '২০৩০', '১৯৯৬ সালের ১২ ডিসেম্বর বাংলাদেশ ও ভারতের মধ্যে ৩০ বছর মেয়াদি গঙ্গার পানি বণ্টন চুক্তি স্বাক্ষরিত হয়। বাংলাদেশের প্রধানমন্ত্রী শেখ হাসিনা ও ভারতের প্রধানমন্ত্রী দেবগৌড়া এই চুক্তিতে স্বাক্ষর করেন। চুক্তি অনুযায়ী বাংলাদেশের পানি পাওয়ার কথা ৩৫ হাজার কিউসেক কিন্তু ভারত দেয় ৯ হাজার কিউসেক। চুক্তিটি ২০২৬ সালে শেষ হবে।', 1, 1, '2022-12-27 09:42:24', '2022-12-27 09:42:24'),
(13, 1, 1, 'কোন দেশকে ইউরোপের রুটির ঝুড়ি বলা হয়?', 'option_four', 'জার্মানি', 'ইতালি', 'পোলান্ড', 'ইউক্রেন', 'পূর্ব ইউরোপের দেশ এবং ইউরোপের ২য় বৃহত্তম দেশ ইউক্রেন। এর রাজধানী কিয়েভ। বর্তমান প্রেসিডেন্ট ভ্লাদিমির জেলেনস্কি। ইউরোপের বৃহত্তম খাদ্যশস্যের যোগানদাতা হওয়ায় ইউক্রেনকে ইউরোপের রুটির ঝুড়ি বলা হয়।', 1, 1, '2022-12-27 09:43:22', '2022-12-27 09:43:22'),
(14, 1, 1, 'গণতন্ত্রের ধারণা উৎসারিত হয় প্রথম কোন দেশে?', 'option_two', 'যুক্তরাষ্ট্র', 'প্রাচীন গ্রীস', 'প্রাচীন রোম', 'প্রাচীন ভারত', 'ভূমধ্যসাগরকে কেন্দ্র করে ১৩০০-১২০০ খ্রিস্টপূর্বে গ্রিক সভ্যতা গড়ে উঠে। প্রাচীন গ্রিসে প্রথম গণতন্ত্রের ধারণা উৎসারিত হয় এথেন্সে। এথেন্স শহরে চূড়ান্ত গণতন্ত্র প্রতিষ্ঠা করেন যুবরাজ পেরিক্লিস।', 1, 1, '2022-12-27 09:43:57', '2022-12-27 09:47:10');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'super-admin', NULL, NULL),
(2, 'Student', 'student', NULL, NULL),
(3, 'Affiliate', 'affiliate', NULL, NULL),
(4, 'AffiliateAdmin', 'affiliateadmin', NULL, NULL),
(5, 'Super Admin', 'super-admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('15qAQgms4kvWr1ec293QLw2bpfzZ2U0oPNA8r8eq', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiMHpoY2FtaENsZDdMUEQyWU9CZjR0RlJmQ2hndVl2anRid2R0ZnNIQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTg6Imh0dHA6Ly9sb2NhbGhvc3QvZXNvc2hpa2hpX25ldy9sZWFybmluZy9zdXBlcmFkbWluL3RlYWNoZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkQTBQdGZXY2FJMXlWQllkdkhpMW9lT0FRSU5jZlRLTjdmTGsvVUFpbGtTMXJReFQuYXpsRFciO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJEEwUHRmV2NhSTF5VkJZZHZIaTFvZU9BUUlOY2ZUS043ZkxrL1VBaWxrUzFyUXhULmF6bERXIjt9', 1679039900);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `email` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `fav_icon` text DEFAULT NULL,
  `facebook` text DEFAULT NULL,
  `twitter` text DEFAULT NULL,
  `insta` text DEFAULT NULL,
  `youtube` text DEFAULT NULL,
  `whatsapp` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `email`, `phone`, `address`, `image`, `fav_icon`, `facebook`, `twitter`, `insta`, `youtube`, `whatsapp`, `created_at`, `updated_at`) VALUES
(1, 'Crest It Institude', 'CrestItInstitude@gmail.com', '06456048748', 'Boroitola, Narshingdi', 'images/settings/Q6JSU.jpeg', 'images/settings/zDYff.jpeg', 'https://www.facebook.com/', NULL, 'https://www.instagram.com', NULL, '8801870255071', '2022-12-06 10:09:54', '2022-12-06 10:37:23');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_addresses`
--

CREATE TABLE `shipping_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(191) DEFAULT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `middle_name` varchar(191) DEFAULT NULL,
  `company` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `postal_code` varchar(191) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_addresses`
--

INSERT INTO `shipping_addresses` (`id`, `user_id`, `first_name`, `last_name`, `middle_name`, `company`, `email`, `phone`, `country`, `city`, `state`, `postal_code`, `address`, `created_at`, `updated_at`) VALUES
(1, 3, 'Didarul', 'AKand', 'Islam', 'BranexIT', 'didarulislamakand@gmail.com', '01777919189', 'Bangladesh', 'Narshingdi', NULL, '1650', 'Post office- Gotashia, Thana - Monohardi, District - Narshingdi, Dhaka, Bangladesh', '2022-11-16 09:08:21', '2022-11-16 09:08:21'),
(2, 4, 'Adara', 'Patricia', 'Jameson', 'Jane', 'Paul', 'Robin', 'Bangladesh', 'Gannon', 'Jamalia', 'Driscoll', 'Unitytryrt rty', '2022-11-16 11:41:36', '2022-11-28 06:44:52');

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `logo` longtext DEFAULT NULL,
  `fav_icon` longtext DEFAULT NULL,
  `address` text DEFAULT NULL,
  `about` longtext DEFAULT NULL,
  `facebook` varchar(191) DEFAULT NULL,
  `twitter` varchar(191) DEFAULT NULL,
  `instagram` varchar(191) DEFAULT NULL,
  `linkedin` varchar(191) DEFAULT NULL,
  `youtube` varchar(191) DEFAULT NULL,
  `whatsapp` varchar(191) DEFAULT NULL,
  `total_learners` varchar(255) NOT NULL DEFAULT '0',
  `total_graduates` varchar(255) NOT NULL DEFAULT '0',
  `total_countries` varchar(255) NOT NULL DEFAULT '0',
  `total_courses` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `name`, `email`, `phone`, `logo`, `fav_icon`, `address`, `about`, `facebook`, `twitter`, `instagram`, `linkedin`, `youtube`, `whatsapp`, `total_learners`, `total_graduates`, `total_countries`, `total_courses`, `created_at`, `updated_at`) VALUES
(1, 'esoShikhi', 'admin@gmail.com', '01911111111', 'images/site-setting/63c189a5535d4.png', 'images/site-setting/63c189c6153d8.png', 'Dhaka', '<p><b>This educational web platform \"esoShikhi\" provide learners a big opportunity with hundred of free courses so that they can learn elegantly to enrich their accomplishment from anywhere anytime as more they want.</b><br></p>', NULL, NULL, NULL, NULL, NULL, NULL, '50', '100', '2', '50', NULL, '2023-03-15 23:53:16');

-- --------------------------------------------------------

--
-- Table structure for table `sponsores`
--

CREATE TABLE `sponsores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `image` varchar(191) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sponsores`
--

INSERT INTO `sponsores` (`id`, `name`, `slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pollinews', 'pollinews', 'uploads/sponsore/1672229365-WhatsApp-Image-2022-12-28-at-4.47.52-PM.jpeg', 1, '2023-01-14 23:42:05', '2023-01-14 23:42:05'),
(2, 'Freebangladesh today', 'freebangladesh-today', 'uploads/sponsore/1664104505-WhatsApp_Image_2022-09-25_at_5.11.49_PM-removebg-preview.png', 1, '2023-01-14 23:43:17', '2023-01-14 23:43:17'),
(3, 'Dainiksojasapta', 'dainiksojasapta', 'uploads/sponsore/SS-Page_3-copy.png', 1, '2023-01-14 23:43:33', '2023-01-14 23:43:33');

-- --------------------------------------------------------

--
-- Table structure for table `statements`
--

CREATE TABLE `statements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(191) DEFAULT NULL,
  `execute_time` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_exams`
--

CREATE TABLE `student_exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `sl` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `lesion_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `applicant_answer` varchar(191) NOT NULL,
  `correct_answer` varchar(191) NOT NULL,
  `isCorrect` int(11) NOT NULL,
  `mark` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_exams`
--

INSERT INTO `student_exams` (`id`, `user_id`, `sl`, `course_id`, `lesion_id`, `question_id`, `applicant_answer`, `correct_answer`, `isCorrect`, `mark`, `created_at`, `updated_at`) VALUES
(1, 19, 1, 5, 4, 3, 'option_one', 'option_three', 0, 0, '2022-12-28 10:47:04', '2022-12-28 10:47:04'),
(2, 19, 2, 5, 4, 4, 'option_two', 'option_one', 0, 0, '2022-12-28 10:47:04', '2022-12-28 10:47:04'),
(3, 19, 3, 5, 4, 5, 'option_three', 'option_four', 0, 0, '2022-12-28 10:47:04', '2022-12-28 10:47:04'),
(4, 19, 4, 5, 4, 6, 'option_four', 'option_one', 0, 0, '2022-12-28 10:47:04', '2022-12-28 10:47:04'),
(5, 19, 5, 5, 4, 7, 'option_one', 'option_two', 0, 0, '2022-12-28 10:47:04', '2022-12-28 10:47:04'),
(6, 19, 1, 1, 1, 8, 'option_one', 'option_two', 0, 0, '2022-12-28 10:47:38', '2022-12-28 10:47:38'),
(7, 19, 2, 1, 1, 9, 'option_two', 'option_three', 0, 0, '2022-12-28 10:47:38', '2022-12-28 10:47:38'),
(8, 19, 3, 1, 1, 10, 'option_three', 'option_two', 0, 0, '2022-12-28 10:47:38', '2022-12-28 10:47:38'),
(9, 19, 4, 1, 1, 11, 'option_four', 'option_three', 0, 0, '2022-12-28 10:47:38', '2022-12-28 10:47:38'),
(10, 19, 5, 1, 1, 12, 'option_one', 'option_two', 0, 0, '2022-12-28 10:47:38', '2022-12-28 10:47:38'),
(11, 19, 6, 1, 1, 13, 'option_two', 'option_four', 0, 0, '2022-12-28 10:47:38', '2022-12-28 10:47:38'),
(12, 19, 7, 1, 1, 14, 'option_two', 'option_two', 1, 1, '2022-12-28 10:47:38', '2022-12-28 10:47:38');

-- --------------------------------------------------------

--
-- Table structure for table `study_materials`
--

CREATE TABLE `study_materials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `date` varchar(191) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `study_materials`
--

INSERT INTO `study_materials` (`id`, `teacher_id`, `course_id`, `batch_id`, `title`, `date`, `link`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 11, 1, 1, 'Title 1', '2022-12-14', 'https://www.youtube.com/embed/f1DqCalwwYc', '<p><a href=\"https://www.youtube.com/watch?v=kYzt9kN2Cec\" target=\"_blank\">https://www.youtube.com/watch?v=kYzt9kN2Cec</a></p><p><br></p><h1><b>This is check</b></h1><h1><b><br></b><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/f1DqCalwwYc\" width=\"640\" height=\"360\" class=\"note-video-clip\"></iframe></h1><p><br></p>', 1, '2022-12-14 09:44:17', '2022-12-17 04:46:03'),
(2, 11, 1, 2, 'Title 2', '2022-12-22', 'https://www.youtube.com/embed/f1DqCalwwYc', '<p><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/f1DqCalwwYc\" width=\"640\" height=\"360\" class=\"note-video-clip\"></iframe><br></p>', 1, '2022-12-14 09:44:35', '2022-12-17 04:46:04');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone_number` varchar(191) NOT NULL,
  `max_qualification` varchar(191) DEFAULT NULL,
  `max_result` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thanas`
--

CREATE TABLE `thanas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `division_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `thana_id` int(11) DEFAULT NULL,
  `bn_name` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thanas`
--

INSERT INTO `thanas` (`id`, `user_id`, `name`, `division_id`, `district_id`, `thana_id`, `bn_name`, `url`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Debidwar', 1, 1, NULL, 'দেবিদ্বার', 'debidwar.comilla.gov.bd', 1, NULL, NULL),
(2, NULL, 'Barura', 1, 1, NULL, 'বরুড়া', 'barura.comilla.gov.bd', 1, NULL, NULL),
(3, NULL, 'Brahmanpara', 1, 1, NULL, 'ব্রাহ্মণপাড়া', 'brahmanpara.comilla.gov.bd', 1, NULL, NULL),
(4, NULL, 'Chandina', 1, 1, NULL, 'চান্দিনা', 'chandina.comilla.gov.bd', 1, NULL, NULL),
(5, NULL, 'Chauddagram', 1, 1, NULL, 'চৌদ্দগ্রাম', 'chauddagram.comilla.gov.bd', 1, NULL, NULL),
(6, NULL, 'Daudkandi', 1, 1, NULL, 'দাউদকান্দি', 'daudkandi.comilla.gov.bd', 1, NULL, NULL),
(7, NULL, 'Homna', 1, 1, NULL, 'হোমনা', 'homna.comilla.gov.bd', 1, NULL, NULL),
(8, NULL, 'Laksam', 1, 1, NULL, 'লাকসাম', 'laksam.comilla.gov.bd', 1, NULL, NULL),
(9, NULL, 'Muradnagar', 1, 1, NULL, 'মুরাদনগর', 'muradnagar.comilla.gov.bd', 1, NULL, NULL),
(10, NULL, 'Nangalkot', 1, 1, NULL, 'নাঙ্গলকোট', 'nangalkot.comilla.gov.bd', 1, NULL, NULL),
(11, NULL, 'Comilla Sadar', 1, 1, NULL, 'কুমিল্লা সদর', 'comillasadar.comilla.gov.bd', 1, NULL, NULL),
(12, NULL, 'Meghna', 1, 1, NULL, 'মেঘনা', 'meghna.comilla.gov.bd', 1, NULL, NULL),
(13, NULL, 'Monohargonj', 1, 1, NULL, 'মনোহরগঞ্জ', 'monohargonj.comilla.gov.bd', 1, NULL, NULL),
(14, NULL, 'Sadarsouth', 1, 1, NULL, 'সদর দক্ষিণ', 'sadarsouth.comilla.gov.bd', 1, NULL, NULL),
(15, NULL, 'Titas', 1, 1, NULL, 'তিতাস', 'titas.comilla.gov.bd', 1, NULL, NULL),
(16, NULL, 'Burichang', 1, 1, NULL, 'বুড়িচং', 'burichang.comilla.gov.bd', 1, NULL, NULL),
(17, NULL, 'Lalmai', 1, 1, NULL, 'লালমাই', 'lalmai.comilla.gov.bd', 1, NULL, NULL),
(18, NULL, 'Chhagalnaiya', 1, 2, NULL, 'ছাগলনাইয়া', 'chhagalnaiya.feni.gov.bd', 1, NULL, NULL),
(19, NULL, 'Feni Sadar', 1, 2, NULL, 'ফেনী সদর', 'sadar.feni.gov.bd', 1, NULL, NULL),
(20, NULL, 'Sonagazi', 1, 2, NULL, 'সোনাগাজী', 'sonagazi.feni.gov.bd', 1, NULL, NULL),
(21, NULL, 'Fulgazi', 1, 2, NULL, 'ফুলগাজী', 'fulgazi.feni.gov.bd', 1, NULL, NULL),
(22, NULL, 'Parshuram', 1, 2, NULL, 'পরশুরাম', 'parshuram.feni.gov.bd', 1, NULL, NULL),
(23, NULL, 'Daganbhuiyan', 1, 2, NULL, 'দাগনভূঞা', 'daganbhuiyan.feni.gov.bd', 1, NULL, NULL),
(24, NULL, 'Brahmanbaria Sadar', 1, 3, NULL, 'ব্রাহ্মণবাড়িয়া সদর', 'sadar.brahmanbaria.gov.bd', 1, NULL, NULL),
(25, NULL, 'Kasba', 1, 3, NULL, 'কসবা', 'kasba.brahmanbaria.gov.bd', 1, NULL, NULL),
(26, NULL, 'Nasirnagar', 1, 3, NULL, 'নাসিরনগর', 'nasirnagar.brahmanbaria.gov.bd', 1, NULL, NULL),
(27, NULL, 'Sarail', 1, 3, NULL, 'সরাইল', 'sarail.brahmanbaria.gov.bd', 1, NULL, NULL),
(28, NULL, 'Ashuganj', 1, 3, NULL, 'আশুগঞ্জ', 'ashuganj.brahmanbaria.gov.bd', 1, NULL, NULL),
(29, NULL, 'Akhaura', 1, 3, NULL, 'আখাউড়া', 'akhaura.brahmanbaria.gov.bd', 1, NULL, NULL),
(30, NULL, 'Nabinagar', 1, 3, NULL, 'নবীনগর', 'nabinagar.brahmanbaria.gov.bd', 1, NULL, NULL),
(31, NULL, 'Bancharampur', 1, 3, NULL, 'বাঞ্ছারামপুর', 'bancharampur.brahmanbaria.gov.bd', 1, NULL, NULL),
(32, NULL, 'Bijoynagar', 1, 3, NULL, 'বিজয়নগর', 'bijoynagar.brahmanbaria.gov.bd    ', 1, NULL, NULL),
(33, NULL, 'Rangamati Sadar', 1, 3, NULL, 'রাঙ্গামাটি সদর', 'sadar.rangamati.gov.bd', 1, NULL, NULL),
(34, NULL, 'Kaptai', 1, 3, NULL, 'কাপ্তাই', 'kaptai.rangamati.gov.bd', 1, NULL, NULL),
(35, NULL, 'Kawkhali', 1, 3, NULL, 'কাউখালী', 'kawkhali.rangamati.gov.bd', 1, NULL, NULL),
(36, NULL, 'Baghaichari', 1, 3, NULL, 'বাঘাইছড়ি', 'baghaichari.rangamati.gov.bd', 1, NULL, NULL),
(37, NULL, 'Barkal', 1, 3, NULL, 'বরকল', 'barkal.rangamati.gov.bd', 1, NULL, NULL),
(38, NULL, 'Langadu', 1, 3, NULL, 'লংগদু', 'langadu.rangamati.gov.bd', 1, NULL, NULL),
(39, NULL, 'Rajasthali', 1, 3, NULL, 'রাজস্থলী', 'rajasthali.rangamati.gov.bd', 1, NULL, NULL),
(40, NULL, 'Belaichari', 1, 3, NULL, 'বিলাইছড়ি', 'belaichari.rangamati.gov.bd', 1, NULL, NULL),
(41, NULL, 'Juraichari', 1, 3, NULL, 'জুরাছড়ি', 'juraichari.rangamati.gov.bd', 1, NULL, NULL),
(42, NULL, 'Naniarchar', 1, 3, NULL, 'নানিয়ারচর', 'naniarchar.rangamati.gov.bd', 1, NULL, NULL),
(43, NULL, 'Noakhali Sadar', 1, 5, NULL, 'নোয়াখালী সদর', 'sadar.noakhali.gov.bd', 1, NULL, NULL),
(44, NULL, 'Companiganj', 1, 5, NULL, 'কোম্পানীগঞ্জ', 'companiganj.noakhali.gov.bd', 1, NULL, NULL),
(45, NULL, 'Begumganj', 1, 5, NULL, 'বেগমগঞ্জ', 'begumganj.noakhali.gov.bd', 1, NULL, NULL),
(46, NULL, 'Hatia', 1, 5, NULL, 'হাতিয়া', 'hatia.noakhali.gov.bd', 1, NULL, NULL),
(47, NULL, 'Subarnachar', 1, 5, NULL, 'সুবর্ণচর', 'subarnachar.noakhali.gov.bd', 1, NULL, NULL),
(48, NULL, 'Kabirhat', 1, 5, NULL, 'কবিরহাট', 'kabirhat.noakhali.gov.bd', 1, NULL, NULL),
(49, NULL, 'Senbug', 1, 5, NULL, 'সেনবাগ', 'senbug.noakhali.gov.bd', 1, NULL, NULL),
(50, NULL, 'Chatkhil', 1, 5, NULL, 'চাটখিল', 'chatkhil.noakhali.gov.bd', 1, NULL, NULL),
(51, NULL, 'Sonaimori', 1, 5, NULL, 'সোনাইমুড়ী', 'sonaimori.noakhali.gov.bd', 1, NULL, NULL),
(52, NULL, 'Haimchar', 1, 6, NULL, 'হাইমচর', 'haimchar.chandpur.gov.bd', 1, NULL, NULL),
(53, NULL, 'Kachua', 1, 6, NULL, 'কচুয়া', 'kachua.chandpur.gov.bd', 1, NULL, NULL),
(54, NULL, 'Shahrasti', 1, 6, NULL, 'শাহরাস্তি	', 'shahrasti.chandpur.gov.bd', 1, NULL, NULL),
(55, NULL, 'Chandpur Sadar', 1, 6, NULL, 'চাঁদপুর সদর', 'sadar.chandpur.gov.bd', 1, NULL, NULL),
(56, NULL, 'Matlab South', 1, 6, NULL, 'মতলব দক্ষিণ', 'matlabsouth.chandpur.gov.bd', 1, NULL, NULL),
(57, NULL, 'Hajiganj', 1, 6, NULL, 'হাজীগঞ্জ', 'hajiganj.chandpur.gov.bd', 1, NULL, NULL),
(58, NULL, 'Matlab North', 1, 6, NULL, 'মতলব উত্তর', 'matlabnorth.chandpur.gov.bd', 1, NULL, NULL),
(59, NULL, 'Faridgonj', 1, 6, NULL, 'ফরিদগঞ্জ', 'faridgonj.chandpur.gov.bd', 1, NULL, NULL),
(60, NULL, 'Lakshmipur Sadar', 1, 7, NULL, 'লক্ষ্মীপুর সদর', 'sadar.lakshmipur.gov.bd', 1, NULL, NULL),
(61, NULL, 'Kamalnagar', 1, 7, NULL, 'কমলনগর', 'kamalnagar.lakshmipur.gov.bd', 1, NULL, NULL),
(62, NULL, 'Raipur', 1, 7, NULL, 'রায়পুর', 'raipur.lakshmipur.gov.bd', 1, NULL, NULL),
(63, NULL, 'Ramgati', 1, 7, NULL, 'রামগতি', 'ramgati.lakshmipur.gov.bd', 1, NULL, NULL),
(64, NULL, 'Ramganj', 1, 7, NULL, 'রামগঞ্জ', 'ramganj.lakshmipur.gov.bd', 1, NULL, NULL),
(65, NULL, 'Rangunia', 1, 8, NULL, 'রাঙ্গুনিয়া', 'rangunia.chittagong.gov.bd', 1, NULL, NULL),
(66, NULL, 'Sitakunda', 1, 8, NULL, 'সীতাকুন্ড', 'sitakunda.chittagong.gov.bd', 1, NULL, NULL),
(67, NULL, 'Mirsharai', 1, 8, NULL, 'মীরসরাই', 'mirsharai.chittagong.gov.bd', 1, NULL, NULL),
(68, NULL, 'Patiya', 1, 8, NULL, 'পটিয়া', 'patiya.chittagong.gov.bd', 1, NULL, NULL),
(69, NULL, 'Sandwip', 1, 8, NULL, 'সন্দ্বীপ', 'sandwip.chittagong.gov.bd', 1, NULL, NULL),
(70, NULL, 'Banshkhali', 1, 8, NULL, 'বাঁশখালী', 'banshkhali.chittagong.gov.bd', 1, NULL, NULL),
(71, NULL, 'Boalkhali', 1, 8, NULL, 'বোয়ালখালী', 'boalkhali.chittagong.gov.bd', 1, NULL, NULL),
(72, NULL, 'Anwara', 1, 8, NULL, 'আনোয়ারা', 'anwara.chittagong.gov.bd', 1, NULL, NULL),
(73, NULL, 'Chandanaish', 1, 8, NULL, 'চন্দনাইশ', 'chandanaish.chittagong.gov.bd', 1, NULL, NULL),
(74, NULL, 'Satkania', 1, 8, NULL, 'সাতকানিয়া', 'satkania.chittagong.gov.bd', 1, NULL, NULL),
(75, NULL, 'Lohagara', 1, 8, NULL, 'লোহাগাড়া', 'lohagara.chittagong.gov.bd', 1, NULL, NULL),
(76, NULL, 'Hathazari', 1, 8, NULL, 'হাটহাজারী', 'hathazari.chittagong.gov.bd', 1, NULL, NULL),
(77, NULL, 'Fatikchhari', 1, 8, NULL, 'ফটিকছড়ি', 'fatikchhari.chittagong.gov.bd', 1, NULL, NULL),
(78, NULL, 'Raozan', 1, 8, NULL, 'রাউজান', 'raozan.chittagong.gov.bd', 1, NULL, NULL),
(79, NULL, 'Karnafuli', 1, 8, NULL, 'কর্ণফুলী', 'karnafuli.chittagong.gov.bd', 1, NULL, NULL),
(80, NULL, 'Coxsbazar Sadar', 1, 9, NULL, 'কক্সবাজার সদর', 'sadar.coxsbazar.gov.bd', 1, NULL, NULL),
(81, NULL, 'Chakaria', 1, 9, NULL, 'চকরিয়া', 'chakaria.coxsbazar.gov.bd', 1, NULL, NULL),
(82, NULL, 'Kutubdia', 1, 9, NULL, 'কুতুবদিয়া', 'kutubdia.coxsbazar.gov.bd', 1, NULL, NULL),
(83, NULL, 'Ukhiya', 1, 9, NULL, 'উখিয়া', 'ukhiya.coxsbazar.gov.bd', 1, NULL, NULL),
(84, NULL, 'Moheshkhali', 1, 9, NULL, 'মহেশখালী', 'moheshkhali.coxsbazar.gov.bd', 1, NULL, NULL),
(85, NULL, 'Pekua', 1, 9, NULL, 'পেকুয়া', 'pekua.coxsbazar.gov.bd', 1, NULL, NULL),
(86, NULL, 'Ramu', 1, 9, NULL, 'রামু', 'ramu.coxsbazar.gov.bd', 1, NULL, NULL),
(87, NULL, 'Teknaf', 1, 9, NULL, 'টেকনাফ', 'teknaf.coxsbazar.gov.bd', 1, NULL, NULL),
(88, NULL, 'Khagrachhari Sadar', 1, 10, NULL, 'খাগড়াছড়ি সদর', 'sadar.khagrachhari.gov.bd', 1, NULL, NULL),
(89, NULL, 'Dighinala', 1, 10, NULL, 'দিঘীনালা', 'dighinala.khagrachhari.gov.bd', 1, NULL, NULL),
(90, NULL, 'Panchari', 1, 10, NULL, 'পানছড়ি', 'panchari.khagrachhari.gov.bd', 1, NULL, NULL),
(91, NULL, 'Laxmichhari', 1, 10, NULL, 'লক্ষীছড়ি', 'laxmichhari.khagrachhari.gov.bd', 1, NULL, NULL),
(92, NULL, 'Mohalchari', 1, 10, NULL, 'মহালছড়ি', 'mohalchari.khagrachhari.gov.bd', 1, NULL, NULL),
(93, NULL, 'Manikchari', 1, 10, NULL, 'মানিকছড়ি', 'manikchari.khagrachhari.gov.bd', 1, NULL, NULL),
(94, NULL, 'Ramgarh', 1, 10, NULL, 'রামগড়', 'ramgarh.khagrachhari.gov.bd', 1, NULL, NULL),
(95, NULL, 'Matiranga', 1, 10, NULL, 'মাটিরাঙ্গা', 'matiranga.khagrachhari.gov.bd', 1, NULL, NULL),
(96, NULL, 'Guimara', 1, 10, NULL, 'গুইমারা', 'guimara.khagrachhari.gov.bd', 1, NULL, NULL),
(97, NULL, 'Bandarban Sadar', 1, 11, NULL, 'বান্দরবান সদর', 'sadar.bandarban.gov.bd', 1, NULL, NULL),
(98, NULL, 'Alikadam', 1, 11, NULL, 'আলীকদম', 'alikadam.bandarban.gov.bd', 1, NULL, NULL),
(99, NULL, 'Naikhongchhari', 1, 11, NULL, 'নাইক্ষ্যংছড়ি', 'naikhongchhari.bandarban.gov.bd', 1, NULL, NULL),
(100, NULL, 'Rowangchhari', 1, 11, NULL, 'রোয়াংছড়ি', 'rowangchhari.bandarban.gov.bd', 1, NULL, NULL),
(101, NULL, 'Lama', 1, 11, NULL, 'লামা', 'lama.bandarban.gov.bd', 1, NULL, NULL),
(102, NULL, 'Ruma', 1, 11, NULL, 'রুমা', 'ruma.bandarban.gov.bd', 1, NULL, NULL),
(103, NULL, 'Thanchi', 1, 11, NULL, 'থানচি', 'thanchi.bandarban.gov.bd', 1, NULL, NULL),
(104, NULL, 'Belkuchi', 2, 12, NULL, 'বেলকুচি', 'belkuchi.sirajganj.gov.bd', 1, NULL, NULL),
(105, NULL, 'Chauhali', 2, 12, NULL, 'চৌহালি', 'chauhali.sirajganj.gov.bd', 1, NULL, NULL),
(106, NULL, 'Kamarkhand', 2, 12, NULL, 'কামারখন্দ', 'kamarkhand.sirajganj.gov.bd', 1, NULL, NULL),
(107, NULL, 'Kazipur', 2, 12, NULL, 'কাজীপুর', 'kazipur.sirajganj.gov.bd', 1, NULL, NULL),
(108, NULL, 'Raigonj', 2, 12, NULL, 'রায়গঞ্জ', 'raigonj.sirajganj.gov.bd', 1, NULL, NULL),
(109, NULL, 'Shahjadpur', 2, 12, NULL, 'শাহজাদপুর', 'shahjadpur.sirajganj.gov.bd', 1, NULL, NULL),
(110, NULL, 'Sirajganj Sadar', 2, 12, NULL, 'সিরাজগঞ্জ সদর', 'sirajganjsadar.sirajganj.gov.bd', 1, NULL, NULL),
(111, NULL, 'Tarash', 2, 12, NULL, 'তাড়াশ', 'tarash.sirajganj.gov.bd', 1, NULL, NULL),
(112, NULL, 'Ullapara', 2, 12, NULL, 'উল্লাপাড়া', 'ullapara.sirajganj.gov.bd', 1, NULL, NULL),
(113, NULL, 'Sujanagar', 2, 13, NULL, 'সুজানগর', 'sujanagar.pabna.gov.bd', 1, NULL, NULL),
(114, NULL, 'Ishurdi', 2, 13, NULL, 'ঈশ্বরদী', 'ishurdi.pabna.gov.bd', 1, NULL, NULL),
(115, NULL, 'Bhangura', 2, 13, NULL, 'ভাঙ্গুড়া', 'bhangura.pabna.gov.bd', 1, NULL, NULL),
(116, NULL, 'Pabna Sadar', 2, 13, NULL, 'পাবনা সদর', 'pabnasadar.pabna.gov.bd', 1, NULL, NULL),
(117, NULL, 'Bera', 2, 13, NULL, 'বেড়া', 'bera.pabna.gov.bd', 1, NULL, NULL),
(118, NULL, 'Atghoria', 2, 13, NULL, 'আটঘরিয়া', 'atghoria.pabna.gov.bd', 1, NULL, NULL),
(119, NULL, 'Chatmohar', 2, 13, NULL, 'চাটমোহর', 'chatmohar.pabna.gov.bd', 1, NULL, NULL),
(120, NULL, 'Santhia', 2, 13, NULL, 'সাঁথিয়া', 'santhia.pabna.gov.bd', 1, NULL, NULL),
(121, NULL, 'Faridpur', 2, 13, NULL, 'ফরিদপুর', 'faridpur.pabna.gov.bd', 1, NULL, NULL),
(122, NULL, 'Kahaloo', 2, 14, NULL, 'কাহালু', 'kahaloo.bogra.gov.bd', 1, NULL, NULL),
(123, NULL, 'Bogra Sadar', 2, 14, NULL, 'বগুড়া সদর', 'sadar.bogra.gov.bd', 1, NULL, NULL),
(124, NULL, 'Shariakandi', 2, 14, NULL, 'সারিয়াকান্দি', 'shariakandi.bogra.gov.bd', 1, NULL, NULL),
(125, NULL, 'Shajahanpur', 2, 14, NULL, 'শাজাহানপুর', 'shajahanpur.bogra.gov.bd', 1, NULL, NULL),
(126, NULL, 'Dupchanchia', 2, 14, NULL, 'দুপচাচিঁয়া', 'dupchanchia.bogra.gov.bd', 1, NULL, NULL),
(127, NULL, 'Adamdighi', 2, 14, NULL, 'আদমদিঘি', 'adamdighi.bogra.gov.bd', 1, NULL, NULL),
(128, NULL, 'Nondigram', 2, 14, NULL, 'নন্দিগ্রাম', 'nondigram.bogra.gov.bd', 1, NULL, NULL),
(129, NULL, 'Sonatala', 2, 14, NULL, 'সোনাতলা', 'sonatala.bogra.gov.bd', 1, NULL, NULL),
(130, NULL, 'Dhunot', 2, 14, NULL, 'ধুনট', 'dhunot.bogra.gov.bd', 1, NULL, NULL),
(131, NULL, 'Gabtali', 2, 14, NULL, 'গাবতলী', 'gabtali.bogra.gov.bd', 1, NULL, NULL),
(132, NULL, 'Sherpur', 2, 14, NULL, 'শেরপুর', 'sherpur.bogra.gov.bd', 1, NULL, NULL),
(133, NULL, 'Shibganj', 2, 14, NULL, 'শিবগঞ্জ', 'shibganj.bogra.gov.bd', 1, NULL, NULL),
(134, NULL, 'Paba', 2, 15, NULL, 'পবা', 'paba.rajshahi.gov.bd', 1, NULL, NULL),
(135, NULL, 'Durgapur', 2, 15, NULL, 'দুর্গাপুর', 'durgapur.rajshahi.gov.bd', 1, NULL, NULL),
(136, NULL, 'Mohonpur', 2, 15, NULL, 'মোহনপুর', 'mohonpur.rajshahi.gov.bd', 1, NULL, NULL),
(137, NULL, 'Charghat', 2, 15, NULL, 'চারঘাট', 'charghat.rajshahi.gov.bd', 1, NULL, NULL),
(138, NULL, 'Puthia', 2, 15, NULL, 'পুঠিয়া', 'puthia.rajshahi.gov.bd', 1, NULL, NULL),
(139, NULL, 'Bagha', 2, 15, NULL, 'বাঘা', 'bagha.rajshahi.gov.bd', 1, NULL, NULL),
(140, NULL, 'Godagari', 2, 15, NULL, 'গোদাগাড়ী', 'godagari.rajshahi.gov.bd', 1, NULL, NULL),
(141, NULL, 'Tanore', 2, 15, NULL, 'তানোর', 'tanore.rajshahi.gov.bd', 1, NULL, NULL),
(142, NULL, 'Bagmara', 2, 15, NULL, 'বাগমারা', 'bagmara.rajshahi.gov.bd', 1, NULL, NULL),
(143, NULL, 'Natore Sadar', 2, 16, NULL, 'নাটোর সদর', 'natoresadar.natore.gov.bd', 1, NULL, NULL),
(144, NULL, 'Singra', 2, 16, NULL, 'সিংড়া', 'singra.natore.gov.bd', 1, NULL, NULL),
(145, NULL, 'Baraigram', 2, 16, NULL, 'বড়াইগ্রাম', 'baraigram.natore.gov.bd', 1, NULL, NULL),
(146, NULL, 'Bagatipara', 2, 16, NULL, 'বাগাতিপাড়া', 'bagatipara.natore.gov.bd', 1, NULL, NULL),
(147, NULL, 'Lalpur', 2, 16, NULL, 'লালপুর', 'lalpur.natore.gov.bd', 1, NULL, NULL),
(148, NULL, 'Gurudaspur', 2, 16, NULL, 'গুরুদাসপুর', 'gurudaspur.natore.gov.bd', 1, NULL, NULL),
(149, NULL, 'Naldanga', 2, 16, NULL, 'নলডাঙ্গা', 'naldanga.natore.gov.bd', 1, NULL, NULL),
(150, NULL, 'Akkelpur', 2, 17, NULL, 'আক্কেলপুর', 'akkelpur.joypurhat.gov.bd', 1, NULL, NULL),
(151, NULL, 'Kalai', 2, 17, NULL, 'কালাই', 'kalai.joypurhat.gov.bd', 1, NULL, NULL),
(152, NULL, 'Khetlal', 2, 17, NULL, 'ক্ষেতলাল', 'khetlal.joypurhat.gov.bd', 1, NULL, NULL),
(153, NULL, 'Panchbibi', 2, 17, NULL, 'পাঁচবিবি', 'panchbibi.joypurhat.gov.bd', 1, NULL, NULL),
(154, NULL, 'Joypurhat Sadar', 2, 17, NULL, 'জয়পুরহাট সদর', 'joypurhatsadar.joypurhat.gov.bd', 1, NULL, NULL),
(155, NULL, 'Chapainawabganj Sadar', 2, 18, NULL, 'চাঁপাইনবাবগঞ্জ সদর', 'chapainawabganjsadar.chapainawabganj.gov.bd', 1, NULL, NULL),
(156, NULL, 'Gomostapur', 2, 18, NULL, 'গোমস্তাপুর', 'gomostapur.chapainawabganj.gov.bd', 1, NULL, NULL),
(157, NULL, 'Nachol', 2, 18, NULL, 'নাচোল', 'nachol.chapainawabganj.gov.bd', 1, NULL, NULL),
(158, NULL, 'Bholahat', 2, 18, NULL, 'ভোলাহাট', 'bholahat.chapainawabganj.gov.bd', 1, NULL, NULL),
(159, NULL, 'Shibganj', 2, 18, NULL, 'শিবগঞ্জ', 'shibganj.chapainawabganj.gov.bd', 1, NULL, NULL),
(160, NULL, 'Mohadevpur', 2, 19, NULL, 'মহাদেবপুর', 'mohadevpur.naogaon.gov.bd', 1, NULL, NULL),
(161, NULL, 'Badalgachi', 2, 19, NULL, 'বদলগাছী', 'badalgachi.naogaon.gov.bd', 1, NULL, NULL),
(162, NULL, 'Patnitala', 2, 19, NULL, 'পত্নিতলা', 'patnitala.naogaon.gov.bd', 1, NULL, NULL),
(163, NULL, 'Dhamoirhat', 2, 19, NULL, 'ধামইরহাট', 'dhamoirhat.naogaon.gov.bd', 1, NULL, NULL),
(164, NULL, 'Niamatpur', 2, 19, NULL, 'নিয়ামতপুর', 'niamatpur.naogaon.gov.bd', 1, NULL, NULL),
(165, NULL, 'Manda', 2, 19, NULL, 'মান্দা', 'manda.naogaon.gov.bd', 1, NULL, NULL),
(166, NULL, 'Atrai', 2, 19, NULL, 'আত্রাই', 'atrai.naogaon.gov.bd', 1, NULL, NULL),
(167, NULL, 'Raninagar', 2, 19, NULL, 'রাণীনগর', 'raninagar.naogaon.gov.bd', 1, NULL, NULL),
(168, NULL, 'Naogaon Sadar', 2, 19, NULL, 'নওগাঁ সদর', 'naogaonsadar.naogaon.gov.bd', 1, NULL, NULL),
(169, NULL, 'Porsha', 2, 19, NULL, 'পোরশা', 'porsha.naogaon.gov.bd', 1, NULL, NULL),
(170, NULL, 'Sapahar', 2, 19, NULL, 'সাপাহার', 'sapahar.naogaon.gov.bd', 1, NULL, NULL),
(171, NULL, 'Manirampur', 3, 20, NULL, 'মণিরামপুর', 'manirampur.jessore.gov.bd', 1, NULL, NULL),
(172, NULL, 'Abhaynagar', 3, 20, NULL, 'অভয়নগর', 'abhaynagar.jessore.gov.bd', 1, NULL, NULL),
(173, NULL, 'Bagherpara', 3, 20, NULL, 'বাঘারপাড়া', 'bagherpara.jessore.gov.bd', 1, NULL, NULL),
(174, NULL, 'Chougachha', 3, 20, NULL, 'চৌগাছা', 'chougachha.jessore.gov.bd', 1, NULL, NULL),
(175, NULL, 'Jhikargacha', 3, 20, NULL, 'ঝিকরগাছা', 'jhikargacha.jessore.gov.bd', 1, NULL, NULL),
(176, NULL, 'Keshabpur', 3, 20, NULL, 'কেশবপুর', 'keshabpur.jessore.gov.bd', 1, NULL, NULL),
(177, NULL, 'Jessore Sadar', 3, 20, NULL, 'যশোর সদর', 'sadar.jessore.gov.bd', 1, NULL, NULL),
(178, NULL, 'Sharsha', 3, 20, NULL, 'শার্শা', 'sharsha.jessore.gov.bd', 1, NULL, NULL),
(179, NULL, 'Assasuni', 3, 21, NULL, 'আশাশুনি', 'assasuni.satkhira.gov.bd', 1, NULL, NULL),
(180, NULL, 'Debhata', 3, 21, NULL, 'দেবহাটা', 'debhata.satkhira.gov.bd', 1, NULL, NULL),
(181, NULL, 'Kalaroa', 3, 21, NULL, 'কলারোয়া', 'kalaroa.satkhira.gov.bd', 1, NULL, NULL),
(182, NULL, 'Satkhira Sadar', 3, 21, NULL, 'সাতক্ষীরা সদর', 'satkhirasadar.satkhira.gov.bd', 1, NULL, NULL),
(183, NULL, 'Shyamnagar', 3, 21, NULL, 'শ্যামনগর', 'shyamnagar.satkhira.gov.bd', 1, NULL, NULL),
(184, NULL, 'Tala', 3, 21, NULL, 'তালা', 'tala.satkhira.gov.bd', 1, NULL, NULL),
(185, NULL, 'Kaliganj', 3, 21, NULL, 'কালিগঞ্জ', 'kaliganj.satkhira.gov.bd', 1, NULL, NULL),
(186, NULL, 'Mujibnagar', 3, 22, NULL, 'মুজিবনগর', 'mujibnagar.meherpur.gov.bd', 1, NULL, NULL),
(187, NULL, 'Meherpur Sadar', 3, 22, NULL, 'মেহেরপুর সদর', 'meherpursadar.meherpur.gov.bd', 1, NULL, NULL),
(188, NULL, 'Gangni', 3, 22, NULL, 'গাংনী', 'gangni.meherpur.gov.bd', 1, NULL, NULL),
(189, NULL, 'Narail Sadar', 3, 23, NULL, 'নড়াইল সদর', 'narailsadar.narail.gov.bd', 1, NULL, NULL),
(190, NULL, 'Lohagara', 3, 23, NULL, 'লোহাগড়া', 'lohagara.narail.gov.bd', 1, NULL, NULL),
(191, NULL, 'Kalia', 3, 23, NULL, 'কালিয়া', 'kalia.narail.gov.bd', 1, NULL, NULL),
(192, NULL, 'Chuadanga Sadar', 3, 24, NULL, 'চুয়াডাঙ্গা সদর', 'chuadangasadar.chuadanga.gov.bd', 1, NULL, NULL),
(193, NULL, 'Alamdanga', 3, 24, NULL, 'আলমডাঙ্গা', 'alamdanga.chuadanga.gov.bd', 1, NULL, NULL),
(194, NULL, 'Damurhuda', 3, 24, NULL, 'দামুড়হুদা', 'damurhuda.chuadanga.gov.bd', 1, NULL, NULL),
(195, NULL, 'Jibannagar', 3, 24, NULL, 'জীবননগর', 'jibannagar.chuadanga.gov.bd', 1, NULL, NULL),
(196, NULL, 'Kushtia Sadar', 3, 25, NULL, 'কুষ্টিয়া সদর', 'kushtiasadar.kushtia.gov.bd', 1, NULL, NULL),
(197, NULL, 'Kumarkhali', 3, 25, NULL, 'কুমারখালী', 'kumarkhali.kushtia.gov.bd', 1, NULL, NULL),
(198, NULL, 'Khoksa', 3, 25, NULL, 'খোকসা', 'khoksa.kushtia.gov.bd', 1, NULL, NULL),
(199, NULL, 'Mirpur', 3, 25, NULL, 'মিরপুর', 'mirpurkushtia.kushtia.gov.bd', 1, NULL, NULL),
(200, NULL, 'Daulatpur', 3, 25, NULL, 'দৌলতপুর', 'daulatpur.kushtia.gov.bd', 1, NULL, NULL),
(201, NULL, 'Bheramara', 3, 25, NULL, 'ভেড়ামারা', 'bheramara.kushtia.gov.bd', 1, NULL, NULL),
(202, NULL, 'Shalikha', 3, 26, NULL, 'শালিখা', 'shalikha.magura.gov.bd', 1, NULL, NULL),
(203, NULL, 'Sreepur', 3, 26, NULL, 'শ্রীপুর', 'sreepur.magura.gov.bd', 1, NULL, NULL),
(204, NULL, 'Magura Sadar', 3, 26, NULL, 'মাগুরা সদর', 'magurasadar.magura.gov.bd', 1, NULL, NULL),
(205, NULL, 'Mohammadpur', 3, 26, NULL, 'মহম্মদপুর', 'mohammadpur.magura.gov.bd', 1, NULL, NULL),
(206, NULL, 'Paikgasa', 3, 27, NULL, 'পাইকগাছা', 'paikgasa.khulna.gov.bd', 1, NULL, NULL),
(207, NULL, 'Fultola', 3, 27, NULL, 'ফুলতলা', 'fultola.khulna.gov.bd', 1, NULL, NULL),
(208, NULL, 'Digholia', 3, 27, NULL, 'দিঘলিয়া', 'digholia.khulna.gov.bd', 1, NULL, NULL),
(209, NULL, 'Rupsha', 3, 27, NULL, 'রূপসা', 'rupsha.khulna.gov.bd', 1, NULL, NULL),
(210, NULL, 'Terokhada', 3, 27, NULL, 'তেরখাদা', 'terokhada.khulna.gov.bd', 1, NULL, NULL),
(211, NULL, 'Dumuria', 3, 27, NULL, 'ডুমুরিয়া', 'dumuria.khulna.gov.bd', 1, NULL, NULL),
(212, NULL, 'Botiaghata', 3, 27, NULL, 'বটিয়াঘাটা', 'botiaghata.khulna.gov.bd', 1, NULL, NULL),
(213, NULL, 'Dakop', 3, 27, NULL, 'দাকোপ', 'dakop.khulna.gov.bd', 1, NULL, NULL),
(214, NULL, 'Koyra', 3, 27, NULL, 'কয়রা', 'koyra.khulna.gov.bd', 1, NULL, NULL),
(215, NULL, 'Fakirhat', 3, 28, NULL, 'ফকিরহাট', 'fakirhat.bagerhat.gov.bd', 1, NULL, NULL),
(216, NULL, 'Bagerhat Sadar', 3, 28, NULL, 'বাগেরহাট সদর', 'sadar.bagerhat.gov.bd', 1, NULL, NULL),
(217, NULL, 'Mollahat', 3, 28, NULL, 'মোল্লাহাট', 'mollahat.bagerhat.gov.bd', 1, NULL, NULL),
(218, NULL, 'Sarankhola', 3, 28, NULL, 'শরণখোলা', 'sarankhola.bagerhat.gov.bd', 1, NULL, NULL),
(219, NULL, 'Rampal', 3, 28, NULL, 'রামপাল', 'rampal.bagerhat.gov.bd', 1, NULL, NULL),
(220, NULL, 'Morrelganj', 3, 28, NULL, 'মোড়েলগঞ্জ', 'morrelganj.bagerhat.gov.bd', 1, NULL, NULL),
(221, NULL, 'Kachua', 3, 28, NULL, 'কচুয়া', 'kachua.bagerhat.gov.bd', 1, NULL, NULL),
(222, NULL, 'Mongla', 3, 28, NULL, 'মোংলা', 'mongla.bagerhat.gov.bd', 1, NULL, NULL),
(223, NULL, 'Chitalmari', 3, 28, NULL, 'চিতলমারী', 'chitalmari.bagerhat.gov.bd', 1, NULL, NULL),
(224, NULL, 'Jhenaidah Sadar', 3, 29, NULL, 'ঝিনাইদহ সদর', 'sadar.jhenaidah.gov.bd', 1, NULL, NULL),
(225, NULL, 'Shailkupa', 3, 29, NULL, 'শৈলকুপা', 'shailkupa.jhenaidah.gov.bd', 1, NULL, NULL),
(226, NULL, 'Harinakundu', 3, 29, NULL, 'হরিণাকুন্ডু', 'harinakundu.jhenaidah.gov.bd', 1, NULL, NULL),
(227, NULL, 'Kaliganj', 3, 29, NULL, 'কালীগঞ্জ', 'kaliganj.jhenaidah.gov.bd', 1, NULL, NULL),
(228, NULL, 'Kotchandpur', 3, 29, NULL, 'কোটচাঁদপুর', 'kotchandpur.jhenaidah.gov.bd', 1, NULL, NULL),
(229, NULL, 'Moheshpur', 3, 29, NULL, 'মহেশপুর', 'moheshpur.jhenaidah.gov.bd', 1, NULL, NULL),
(230, NULL, 'Jhalakathi Sadar', 4, 30, NULL, 'ঝালকাঠি সদর', 'sadar.jhalakathi.gov.bd', 1, NULL, NULL),
(231, NULL, 'Kathalia', 4, 30, NULL, 'কাঠালিয়া', 'kathalia.jhalakathi.gov.bd', 1, NULL, NULL),
(232, NULL, 'Nalchity', 4, 30, NULL, 'নলছিটি', 'nalchity.jhalakathi.gov.bd', 1, NULL, NULL),
(233, NULL, 'Rajapur', 4, 30, NULL, 'রাজাপুর', 'rajapur.jhalakathi.gov.bd', 1, NULL, NULL),
(234, NULL, 'Bauphal', 4, 31, NULL, 'বাউফল', 'bauphal.patuakhali.gov.bd', 1, NULL, NULL),
(235, NULL, 'Patuakhali Sadar', 4, 31, NULL, 'পটুয়াখালী সদর', 'sadar.patuakhali.gov.bd', 1, NULL, NULL),
(236, NULL, 'Dumki', 4, 31, NULL, 'দুমকি', 'dumki.patuakhali.gov.bd', 1, NULL, NULL),
(237, NULL, 'Dashmina', 4, 31, NULL, 'দশমিনা', 'dashmina.patuakhali.gov.bd', 1, NULL, NULL),
(238, NULL, 'Kalapara', 4, 31, NULL, 'কলাপাড়া', 'kalapara.patuakhali.gov.bd', 1, NULL, NULL),
(239, NULL, 'Mirzaganj', 4, 31, NULL, 'মির্জাগঞ্জ', 'mirzaganj.patuakhali.gov.bd', 1, NULL, NULL),
(240, NULL, 'Galachipa', 4, 31, NULL, 'গলাচিপা', 'galachipa.patuakhali.gov.bd', 1, NULL, NULL),
(241, NULL, 'Rangabali', 4, 31, NULL, 'রাঙ্গাবালী', 'rangabali.patuakhali.gov.bd', 1, NULL, NULL),
(242, NULL, 'Pirojpur Sadar', 4, 32, NULL, 'পিরোজপুর সদর', 'sadar.pirojpur.gov.bd', 1, NULL, NULL),
(243, NULL, 'Nazirpur', 4, 32, NULL, 'নাজিরপুর', 'nazirpur.pirojpur.gov.bd', 1, NULL, NULL),
(244, NULL, 'Kawkhali', 4, 32, NULL, 'কাউখালী', 'kawkhali.pirojpur.gov.bd', 1, NULL, NULL),
(245, NULL, 'Zianagar', 4, 32, NULL, 'জিয়ানগর', 'zianagar.pirojpur.gov.bd', 1, NULL, NULL),
(246, NULL, 'Bhandaria', 4, 32, NULL, 'ভান্ডারিয়া', 'bhandaria.pirojpur.gov.bd', 1, NULL, NULL),
(247, NULL, 'Mathbaria', 4, 32, NULL, 'মঠবাড়ীয়া', 'mathbaria.pirojpur.gov.bd', 1, NULL, NULL),
(248, NULL, 'Nesarabad', 4, 32, NULL, 'নেছারাবাদ', 'nesarabad.pirojpur.gov.bd', 1, NULL, NULL),
(249, NULL, 'Barisal Sadar', 4, 33, NULL, 'বরিশাল সদর', 'barisalsadar.barisal.gov.bd', 1, NULL, NULL),
(250, NULL, 'Bakerganj', 4, 33, NULL, 'বাকেরগঞ্জ', 'bakerganj.barisal.gov.bd', 1, NULL, NULL),
(251, NULL, 'Babuganj', 4, 33, NULL, 'বাবুগঞ্জ', 'babuganj.barisal.gov.bd', 1, NULL, NULL),
(252, NULL, 'Wazirpur', 4, 33, NULL, 'উজিরপুর', 'wazirpur.barisal.gov.bd', 1, NULL, NULL),
(253, NULL, 'Banaripara', 4, 33, NULL, 'বানারীপাড়া', 'banaripara.barisal.gov.bd', 1, NULL, NULL),
(254, NULL, 'Gournadi', 4, 33, NULL, 'গৌরনদী', 'gournadi.barisal.gov.bd', 1, NULL, NULL),
(255, NULL, 'Agailjhara', 4, 33, NULL, 'আগৈলঝাড়া', 'agailjhara.barisal.gov.bd', 1, NULL, NULL),
(256, NULL, 'Mehendiganj', 4, 33, NULL, 'মেহেন্দিগঞ্জ', 'mehendiganj.barisal.gov.bd', 1, NULL, NULL),
(257, NULL, 'Muladi', 4, 33, NULL, 'মুলাদী', 'muladi.barisal.gov.bd', 1, NULL, NULL),
(258, NULL, 'Hizla', 4, 33, NULL, 'হিজলা', 'hizla.barisal.gov.bd', 1, NULL, NULL),
(259, NULL, 'Bhola Sadar', 4, 34, NULL, 'ভোলা সদর', 'sadar.bhola.gov.bd', 1, NULL, NULL),
(260, NULL, 'Borhan Sddin', 4, 34, NULL, 'বোরহান উদ্দিন', 'borhanuddin.bhola.gov.bd', 1, NULL, NULL),
(261, NULL, 'Charfesson', 4, 34, NULL, 'চরফ্যাশন', 'charfesson.bhola.gov.bd', 1, NULL, NULL),
(262, NULL, 'Doulatkhan', 4, 34, NULL, 'দৌলতখান', 'doulatkhan.bhola.gov.bd', 1, NULL, NULL),
(263, NULL, 'Monpura', 4, 34, NULL, 'মনপুরা', 'monpura.bhola.gov.bd', 1, NULL, NULL),
(264, NULL, 'Tazumuddin', 4, 34, NULL, 'তজুমদ্দিন', 'tazumuddin.bhola.gov.bd', 1, NULL, NULL),
(265, NULL, 'Lalmohan', 4, 34, NULL, 'লালমোহন', 'lalmohan.bhola.gov.bd', 1, NULL, NULL),
(266, NULL, 'Amtali', 4, 35, NULL, 'আমতলী', 'amtali.barguna.gov.bd', 1, NULL, NULL),
(267, NULL, 'Barguna Sadar', 4, 35, NULL, 'বরগুনা সদর', 'sadar.barguna.gov.bd', 1, NULL, NULL),
(268, NULL, 'Betagi', 4, 35, NULL, 'বেতাগী', 'betagi.barguna.gov.bd', 1, NULL, NULL),
(269, NULL, 'Bamna', 4, 35, NULL, 'বামনা', 'bamna.barguna.gov.bd', 1, NULL, NULL),
(270, NULL, 'Pathorghata', 4, 35, NULL, 'পাথরঘাটা', 'pathorghata.barguna.gov.bd', 1, NULL, NULL),
(271, NULL, 'Taltali', 4, 35, NULL, 'তালতলি', 'taltali.barguna.gov.bd', 1, NULL, NULL),
(272, NULL, 'Balaganj', 5, 36, NULL, 'বালাগঞ্জ', 'balaganj.sylhet.gov.bd', 1, NULL, NULL),
(273, NULL, 'Beanibazar', 5, 36, NULL, 'বিয়ানীবাজার', 'beanibazar.sylhet.gov.bd', 1, NULL, NULL),
(274, NULL, 'Bishwanath', 5, 36, NULL, 'বিশ্বনাথ', 'bishwanath.sylhet.gov.bd', 1, NULL, NULL),
(275, NULL, 'Companiganj', 5, 36, NULL, 'কোম্পানীগঞ্জ', 'companiganj.sylhet.gov.bd', 1, NULL, NULL),
(276, NULL, 'Fenchuganj', 5, 36, NULL, 'ফেঞ্চুগঞ্জ', 'fenchuganj.sylhet.gov.bd', 1, NULL, NULL),
(277, NULL, 'Golapganj', 5, 36, NULL, 'গোলাপগঞ্জ', 'golapganj.sylhet.gov.bd', 1, NULL, NULL),
(278, NULL, 'Gowainghat', 5, 36, NULL, 'গোয়াইনঘাট', 'gowainghat.sylhet.gov.bd', 1, NULL, NULL),
(279, NULL, 'Jaintiapur', 5, 36, NULL, 'জৈন্তাপুর', 'jaintiapur.sylhet.gov.bd', 1, NULL, NULL),
(280, NULL, 'Kanaighat', 5, 36, NULL, 'কানাইঘাট', 'kanaighat.sylhet.gov.bd', 1, NULL, NULL),
(281, NULL, 'Sylhet Sadar', 5, 36, NULL, 'সিলেট সদর', 'sylhetsadar.sylhet.gov.bd', 1, NULL, NULL),
(282, NULL, 'Zakiganj', 5, 36, NULL, 'জকিগঞ্জ', 'zakiganj.sylhet.gov.bd', 1, NULL, NULL),
(283, NULL, 'Dakshinsurma', 5, 36, NULL, 'দক্ষিণ সুরমা', 'dakshinsurma.sylhet.gov.bd', 1, NULL, NULL),
(284, NULL, 'Osmaninagar', 5, 36, NULL, 'ওসমানী নগর', 'osmaninagar.sylhet.gov.bd', 1, NULL, NULL),
(285, NULL, 'Barlekha', 5, 37, NULL, 'বড়লেখা', 'barlekha.moulvibazar.gov.bd', 1, NULL, NULL),
(286, NULL, 'Kamolganj', 5, 37, NULL, 'কমলগঞ্জ', 'kamolganj.moulvibazar.gov.bd', 1, NULL, NULL),
(287, NULL, 'Kulaura', 5, 37, NULL, 'কুলাউড়া', 'kulaura.moulvibazar.gov.bd', 1, NULL, NULL),
(288, NULL, 'Moulvibazar Sadar', 5, 37, NULL, 'মৌলভীবাজার সদর', 'moulvibazarsadar.moulvibazar.gov.bd', 1, NULL, NULL),
(289, NULL, 'Rajnagar', 5, 37, NULL, 'রাজনগর', 'rajnagar.moulvibazar.gov.bd', 1, NULL, NULL),
(290, NULL, 'Sreemangal', 5, 37, NULL, 'শ্রীমঙ্গল', 'sreemangal.moulvibazar.gov.bd', 1, NULL, NULL),
(291, NULL, 'Juri', 5, 37, NULL, 'জুড়ী', 'juri.moulvibazar.gov.bd', 1, NULL, NULL),
(292, NULL, 'Nabiganj', 5, 38, NULL, 'নবীগঞ্জ', 'nabiganj.habiganj.gov.bd', 1, NULL, NULL),
(293, NULL, 'Bahubal', 5, 38, NULL, 'বাহুবল', 'bahubal.habiganj.gov.bd', 1, NULL, NULL),
(294, NULL, 'Ajmiriganj', 5, 38, NULL, 'আজমিরীগঞ্জ', 'ajmiriganj.habiganj.gov.bd', 1, NULL, NULL),
(295, NULL, 'Baniachong', 5, 38, NULL, 'বানিয়াচং', 'baniachong.habiganj.gov.bd', 1, NULL, NULL),
(296, NULL, 'Lakhai', 5, 38, NULL, 'লাখাই', 'lakhai.habiganj.gov.bd', 1, NULL, NULL),
(297, NULL, 'Chunarughat', 5, 38, NULL, 'চুনারুঘাট', 'chunarughat.habiganj.gov.bd', 1, NULL, NULL),
(298, NULL, 'Habiganj Sadar', 5, 38, NULL, 'হবিগঞ্জ সদর', 'habiganjsadar.habiganj.gov.bd', 1, NULL, NULL),
(299, NULL, 'Madhabpur', 5, 38, NULL, 'মাধবপুর', 'madhabpur.habiganj.gov.bd', 1, NULL, NULL),
(300, NULL, 'Sunamganj Sadar', 5, 39, NULL, 'সুনামগঞ্জ সদর', 'sadar.sunamganj.gov.bd', 1, NULL, NULL),
(301, NULL, 'South Sunamganj', 5, 39, NULL, 'দক্ষিণ সুনামগঞ্জ', 'southsunamganj.sunamganj.gov.bd', 1, NULL, NULL),
(302, NULL, 'Bishwambarpur', 5, 39, NULL, 'বিশ্বম্ভরপুর', 'bishwambarpur.sunamganj.gov.bd', 1, NULL, NULL),
(303, NULL, 'Chhatak', 5, 39, NULL, 'ছাতক', 'chhatak.sunamganj.gov.bd', 1, NULL, NULL),
(304, NULL, 'Jagannathpur', 5, 39, NULL, 'জগন্নাথপুর', 'jagannathpur.sunamganj.gov.bd', 1, NULL, NULL),
(305, NULL, 'Dowarabazar', 5, 39, NULL, 'দোয়ারাবাজার', 'dowarabazar.sunamganj.gov.bd', 1, NULL, NULL),
(306, NULL, 'Tahirpur', 5, 39, NULL, 'তাহিরপুর', 'tahirpur.sunamganj.gov.bd', 1, NULL, NULL),
(307, NULL, 'Dharmapasha', 5, 39, NULL, 'ধর্মপাশা', 'dharmapasha.sunamganj.gov.bd', 1, NULL, NULL),
(308, NULL, 'Jamalganj', 5, 39, NULL, 'জামালগঞ্জ', 'jamalganj.sunamganj.gov.bd', 1, NULL, NULL),
(309, NULL, 'Shalla', 5, 39, NULL, 'শাল্লা', 'shalla.sunamganj.gov.bd', 1, NULL, NULL),
(310, NULL, 'Derai', 5, 39, NULL, 'দিরাই', 'derai.sunamganj.gov.bd', 1, NULL, NULL),
(311, NULL, 'Belabo', 6, 40, NULL, 'বেলাবো', 'belabo.narsingdi.gov.bd', 1, NULL, NULL),
(312, NULL, 'Monohardi', 6, 40, NULL, 'মনোহরদী', 'monohardi.narsingdi.gov.bd', 1, NULL, NULL),
(313, NULL, 'Narsingdi Sadar', 6, 40, NULL, 'নরসিংদী সদর', 'narsingdisadar.narsingdi.gov.bd', 1, NULL, NULL),
(314, NULL, 'Palash', 6, 40, NULL, 'পলাশ', 'palash.narsingdi.gov.bd', 1, NULL, NULL),
(315, NULL, 'Raipura', 6, 40, NULL, 'রায়পুরা', 'raipura.narsingdi.gov.bd', 1, NULL, NULL),
(316, NULL, 'Shibpur', 6, 40, NULL, 'শিবপুর', 'shibpur.narsingdi.gov.bd', 1, NULL, NULL),
(317, NULL, 'Kaliganj', 6, 41, NULL, 'কালীগঞ্জ', 'kaliganj.gazipur.gov.bd', 1, NULL, NULL),
(318, NULL, 'Kaliakair', 6, 41, NULL, 'কালিয়াকৈর', 'kaliakair.gazipur.gov.bd', 1, NULL, NULL),
(319, NULL, 'Kapasia', 6, 41, NULL, 'কাপাসিয়া', 'kapasia.gazipur.gov.bd', 1, NULL, NULL),
(320, NULL, 'Gazipur Sadar', 6, 41, NULL, 'গাজীপুর সদর', 'sadar.gazipur.gov.bd', 1, NULL, NULL),
(321, NULL, 'Sreepur', 6, 41, NULL, 'শ্রীপুর', 'sreepur.gazipur.gov.bd', 1, NULL, NULL),
(322, NULL, 'Shariatpur Sadar', 6, 42, NULL, 'শরিয়তপুর সদর', 'sadar.shariatpur.gov.bd', 1, NULL, NULL),
(323, NULL, 'Naria', 6, 42, NULL, 'নড়িয়া', 'naria.shariatpur.gov.bd', 1, NULL, NULL),
(324, NULL, 'Zajira', 6, 42, NULL, 'জাজিরা', 'zajira.shariatpur.gov.bd', 1, NULL, NULL),
(325, NULL, 'Gosairhat', 6, 42, NULL, 'গোসাইরহাট', 'gosairhat.shariatpur.gov.bd', 1, NULL, NULL),
(326, NULL, 'Bhedarganj', 6, 42, NULL, 'ভেদরগঞ্জ', 'bhedarganj.shariatpur.gov.bd', 1, NULL, NULL),
(327, NULL, 'Damudya', 6, 42, NULL, 'ডামুড্যা', 'damudya.shariatpur.gov.bd', 1, NULL, NULL),
(328, NULL, 'Araihazar', 6, 43, NULL, 'আড়াইহাজার', 'araihazar.narayanganj.gov.bd', 1, NULL, NULL),
(329, NULL, 'Bandar', 6, 43, NULL, 'বন্দর', 'bandar.narayanganj.gov.bd', 1, NULL, NULL),
(330, NULL, 'Narayanganj Sadar', 6, 43, NULL, 'নারায়নগঞ্জ সদর', 'narayanganjsadar.narayanganj.gov.bd', 1, NULL, NULL),
(331, NULL, 'Rupganj', 6, 43, NULL, 'রূপগঞ্জ', 'rupganj.narayanganj.gov.bd', 1, NULL, NULL),
(332, NULL, 'Sonargaon', 6, 43, NULL, 'সোনারগাঁ', 'sonargaon.narayanganj.gov.bd', 1, NULL, NULL),
(333, NULL, 'Basail', 6, 44, NULL, 'বাসাইল', 'basail.tangail.gov.bd', 1, NULL, NULL),
(334, NULL, 'Bhuapur', 6, 44, NULL, 'ভুয়াপুর', 'bhuapur.tangail.gov.bd', 1, NULL, NULL),
(335, NULL, 'Delduar', 6, 44, NULL, 'দেলদুয়ার', 'delduar.tangail.gov.bd', 1, NULL, NULL),
(336, NULL, 'Ghatail', 6, 44, NULL, 'ঘাটাইল', 'ghatail.tangail.gov.bd', 1, NULL, NULL),
(337, NULL, 'Gopalpur', 6, 44, NULL, 'গোপালপুর', 'gopalpur.tangail.gov.bd', 1, NULL, NULL),
(338, NULL, 'Madhupur', 6, 44, NULL, 'মধুপুর', 'madhupur.tangail.gov.bd', 1, NULL, NULL),
(339, NULL, 'Mirzapur', 6, 44, NULL, 'মির্জাপুর', 'mirzapur.tangail.gov.bd', 1, NULL, NULL),
(340, NULL, 'Nagarpur', 6, 44, NULL, 'নাগরপুর', 'nagarpur.tangail.gov.bd', 1, NULL, NULL),
(341, NULL, 'Sakhipur', 6, 44, NULL, 'সখিপুর', 'sakhipur.tangail.gov.bd', 1, NULL, NULL),
(342, NULL, 'Tangail Sadar', 6, 44, NULL, 'টাঙ্গাইল সদর', 'tangailsadar.tangail.gov.bd', 1, NULL, NULL),
(343, NULL, 'Kalihati', 6, 44, NULL, 'কালিহাতী', 'kalihati.tangail.gov.bd', 1, NULL, NULL),
(344, NULL, 'Dhanbari', 6, 44, NULL, 'ধনবাড়ী', 'dhanbari.tangail.gov.bd', 1, NULL, NULL),
(345, NULL, 'Itna', 6, 45, NULL, 'ইটনা', 'itna.kishoreganj.gov.bd', 1, NULL, NULL),
(346, NULL, 'Katiadi', 6, 45, NULL, 'কটিয়াদী', 'katiadi.kishoreganj.gov.bd', 1, NULL, NULL),
(347, NULL, 'Bhairab', 6, 45, NULL, 'ভৈরব', 'bhairab.kishoreganj.gov.bd', 1, NULL, NULL),
(348, NULL, 'Tarail', 6, 45, NULL, 'তাড়াইল', 'tarail.kishoreganj.gov.bd', 1, NULL, NULL),
(349, NULL, 'Hossainpur', 6, 45, NULL, 'হোসেনপুর', 'hossainpur.kishoreganj.gov.bd', 1, NULL, NULL),
(350, NULL, 'Pakundia', 6, 45, NULL, 'পাকুন্দিয়া', 'pakundia.kishoreganj.gov.bd', 1, NULL, NULL),
(351, NULL, 'Kuliarchar', 6, 45, NULL, 'কুলিয়ারচর', 'kuliarchar.kishoreganj.gov.bd', 1, NULL, NULL),
(352, NULL, 'Kishoreganj Sadar', 6, 45, NULL, 'কিশোরগঞ্জ সদর', 'kishoreganjsadar.kishoreganj.gov.bd', 1, NULL, NULL),
(353, NULL, 'Karimgonj', 6, 45, NULL, 'করিমগঞ্জ', 'karimgonj.kishoreganj.gov.bd', 1, NULL, NULL),
(354, NULL, 'Bajitpur', 6, 45, NULL, 'বাজিতপুর', 'bajitpur.kishoreganj.gov.bd', 1, NULL, NULL),
(355, NULL, 'Austagram', 6, 45, NULL, 'অষ্টগ্রাম', 'austagram.kishoreganj.gov.bd', 1, NULL, NULL),
(356, NULL, 'Mithamoin', 6, 45, NULL, 'মিঠামইন', 'mithamoin.kishoreganj.gov.bd', 1, NULL, NULL),
(357, NULL, 'Nikli', 6, 45, NULL, 'নিকলী', 'nikli.kishoreganj.gov.bd', 1, NULL, NULL),
(358, NULL, 'Harirampur', 6, 46, NULL, 'হরিরামপুর', 'harirampur.manikganj.gov.bd', 1, NULL, NULL),
(359, NULL, 'Saturia', 6, 46, NULL, 'সাটুরিয়া', 'saturia.manikganj.gov.bd', 1, NULL, NULL),
(360, NULL, 'Manikganj Sadar', 6, 46, NULL, 'মানিকগঞ্জ সদর', 'sadar.manikganj.gov.bd', 1, NULL, NULL),
(361, NULL, 'Gior', 6, 46, NULL, 'ঘিওর', 'gior.manikganj.gov.bd', 1, NULL, NULL),
(362, NULL, 'Shibaloy', 6, 46, NULL, 'শিবালয়', 'shibaloy.manikganj.gov.bd', 1, NULL, NULL),
(363, NULL, 'Doulatpur', 6, 46, NULL, 'দৌলতপুর', 'doulatpur.manikganj.gov.bd', 1, NULL, NULL),
(364, NULL, 'Singiar', 6, 46, NULL, 'সিংগাইর', 'singiar.manikganj.gov.bd', 1, NULL, NULL),
(365, NULL, 'Savar', 6, 47, NULL, 'সাভার', 'savar.dhaka.gov.bd', 1, NULL, NULL),
(366, NULL, 'Dhamrai', 6, 47, NULL, 'ধামরাই', 'dhamrai.dhaka.gov.bd', 1, NULL, NULL),
(367, NULL, 'Keraniganj', 6, 47, NULL, 'কেরাণীগঞ্জ', 'keraniganj.dhaka.gov.bd', 1, NULL, NULL),
(368, NULL, 'Nawabganj', 6, 47, NULL, 'নবাবগঞ্জ', 'nawabganj.dhaka.gov.bd', 1, NULL, NULL),
(369, NULL, 'Dohar', 6, 47, NULL, 'দোহার', 'dohar.dhaka.gov.bd', 1, NULL, NULL),
(370, NULL, 'Munshiganj Sadar', 6, 48, NULL, 'মুন্সিগঞ্জ সদর', 'sadar.munshiganj.gov.bd', 1, NULL, NULL),
(371, NULL, 'Sreenagar', 6, 48, NULL, 'শ্রীনগর', 'sreenagar.munshiganj.gov.bd', 1, NULL, NULL),
(372, NULL, 'Sirajdikhan', 6, 48, NULL, 'সিরাজদিখান', 'sirajdikhan.munshiganj.gov.bd', 1, NULL, NULL),
(373, NULL, 'Louhajanj', 6, 48, NULL, 'লৌহজং', 'louhajanj.munshiganj.gov.bd', 1, NULL, NULL),
(374, NULL, 'Gajaria', 6, 48, NULL, 'গজারিয়া', 'gajaria.munshiganj.gov.bd', 1, NULL, NULL),
(375, NULL, 'Tongibari', 6, 48, NULL, 'টংগীবাড়ি', 'tongibari.munshiganj.gov.bd', 1, NULL, NULL),
(376, NULL, 'Rajbari Sadar', 6, 49, NULL, 'রাজবাড়ী সদর', 'sadar.rajbari.gov.bd', 1, NULL, NULL),
(377, NULL, 'Goalanda', 6, 49, NULL, 'গোয়ালন্দ', 'goalanda.rajbari.gov.bd', 1, NULL, NULL),
(378, NULL, 'Pangsa', 6, 49, NULL, 'পাংশা', 'pangsa.rajbari.gov.bd', 1, NULL, NULL),
(379, NULL, 'Baliakandi', 6, 49, NULL, 'বালিয়াকান্দি', 'baliakandi.rajbari.gov.bd', 1, NULL, NULL),
(380, NULL, 'Kalukhali', 6, 49, NULL, 'কালুখালী', 'kalukhali.rajbari.gov.bd', 1, NULL, NULL),
(381, NULL, 'Madaripur Sadar', 6, 50, NULL, 'মাদারীপুর সদর', 'sadar.madaripur.gov.bd', 1, NULL, NULL),
(382, NULL, 'Shibchar', 6, 50, NULL, 'শিবচর', 'shibchar.madaripur.gov.bd', 1, NULL, NULL),
(383, NULL, 'Kalkini', 6, 50, NULL, 'কালকিনি', 'kalkini.madaripur.gov.bd', 1, NULL, NULL),
(384, NULL, 'Rajoir', 6, 50, NULL, 'রাজৈর', 'rajoir.madaripur.gov.bd', 1, NULL, NULL),
(385, NULL, 'Gopalganj Sadar', 6, 51, NULL, 'গোপালগঞ্জ সদর', 'sadar.gopalganj.gov.bd', 1, NULL, NULL),
(386, NULL, 'Kashiani', 6, 51, NULL, 'কাশিয়ানী', 'kashiani.gopalganj.gov.bd', 1, NULL, NULL),
(387, NULL, 'Tungipara', 6, 51, NULL, 'টুংগীপাড়া', 'tungipara.gopalganj.gov.bd', 1, NULL, NULL),
(388, NULL, 'Kotalipara', 6, 51, NULL, 'কোটালীপাড়া', 'kotalipara.gopalganj.gov.bd', 1, NULL, NULL),
(389, NULL, 'Muksudpur', 6, 51, NULL, 'মুকসুদপুর', 'muksudpur.gopalganj.gov.bd', 1, NULL, NULL),
(390, NULL, 'Faridpur Sadar', 6, 52, NULL, 'ফরিদপুর সদর', 'sadar.faridpur.gov.bd', 1, NULL, NULL),
(391, NULL, 'Alfadanga', 6, 52, NULL, 'আলফাডাঙ্গা', 'alfadanga.faridpur.gov.bd', 1, NULL, NULL),
(392, NULL, 'Boalmari', 6, 52, NULL, 'বোয়ালমারী', 'boalmari.faridpur.gov.bd', 1, NULL, NULL),
(393, NULL, 'Sadarpur', 6, 52, NULL, 'সদরপুর', 'sadarpur.faridpur.gov.bd', 1, NULL, NULL),
(394, NULL, 'Nagarkanda', 6, 52, NULL, 'নগরকান্দা', 'nagarkanda.faridpur.gov.bd', 1, NULL, NULL),
(395, NULL, 'Bhanga', 6, 52, NULL, 'ভাঙ্গা', 'bhanga.faridpur.gov.bd', 1, NULL, NULL),
(396, NULL, 'Charbhadrasan', 6, 52, NULL, 'চরভদ্রাসন', 'charbhadrasan.faridpur.gov.bd', 1, NULL, NULL),
(397, NULL, 'Madhukhali', 6, 52, NULL, 'মধুখালী', 'madhukhali.faridpur.gov.bd', 1, NULL, NULL),
(398, NULL, 'Saltha', 6, 52, NULL, 'সালথা', 'saltha.faridpur.gov.bd', 1, NULL, NULL),
(399, NULL, 'Panchagarh Sadar', 7, 53, NULL, 'পঞ্চগড় সদর', 'panchagarhsadar.panchagarh.gov.bd', 1, NULL, NULL),
(400, NULL, 'Debiganj', 7, 53, NULL, 'দেবীগঞ্জ', 'debiganj.panchagarh.gov.bd', 1, NULL, NULL),
(401, NULL, 'Boda', 7, 53, NULL, 'বোদা', 'boda.panchagarh.gov.bd', 1, NULL, NULL),
(402, NULL, 'Atwari', 7, 53, NULL, 'আটোয়ারী', 'atwari.panchagarh.gov.bd', 1, NULL, NULL),
(403, NULL, 'Tetulia', 7, 53, NULL, 'তেতুলিয়া', 'tetulia.panchagarh.gov.bd', 1, NULL, NULL),
(404, NULL, 'Nawabganj', 7, 54, NULL, 'নবাবগঞ্জ', 'nawabganj.dinajpur.gov.bd', 1, NULL, NULL),
(405, NULL, 'Birganj', 7, 54, NULL, 'বীরগঞ্জ', 'birganj.dinajpur.gov.bd', 1, NULL, NULL),
(406, NULL, 'Ghoraghat', 7, 54, NULL, 'ঘোড়াঘাট', 'ghoraghat.dinajpur.gov.bd', 1, NULL, NULL),
(407, NULL, 'Birampur', 7, 54, NULL, 'বিরামপুর', 'birampur.dinajpur.gov.bd', 1, NULL, NULL),
(408, NULL, 'Parbatipur', 7, 54, NULL, 'পার্বতীপুর', 'parbatipur.dinajpur.gov.bd', 1, NULL, NULL),
(409, NULL, 'Bochaganj', 7, 54, NULL, 'বোচাগঞ্জ', 'bochaganj.dinajpur.gov.bd', 1, NULL, NULL),
(410, NULL, 'Kaharol', 7, 54, NULL, 'কাহারোল', 'kaharol.dinajpur.gov.bd', 1, NULL, NULL),
(411, NULL, 'Fulbari', 7, 54, NULL, 'ফুলবাড়ী', 'fulbari.dinajpur.gov.bd', 1, NULL, NULL),
(412, NULL, 'Dinajpur Sadar', 7, 54, NULL, 'দিনাজপুর সদর', 'dinajpursadar.dinajpur.gov.bd', 1, NULL, NULL),
(413, NULL, 'Hakimpur', 7, 54, NULL, 'হাকিমপুর', 'hakimpur.dinajpur.gov.bd', 1, NULL, NULL),
(414, NULL, 'Khansama', 7, 54, NULL, 'খানসামা', 'khansama.dinajpur.gov.bd', 1, NULL, NULL),
(415, NULL, 'Birol', 7, 54, NULL, 'বিরল', 'birol.dinajpur.gov.bd', 1, NULL, NULL),
(416, NULL, 'Chirirbandar', 7, 54, NULL, 'চিরিরবন্দর', 'chirirbandar.dinajpur.gov.bd', 1, NULL, NULL),
(417, NULL, 'Lalmonirhat Sadar', 7, 55, NULL, 'লালমনিরহাট সদর', 'sadar.lalmonirhat.gov.bd', 1, NULL, NULL),
(418, NULL, 'Kaliganj', 7, 55, NULL, 'কালীগঞ্জ', 'kaliganj.lalmonirhat.gov.bd', 1, NULL, NULL),
(419, NULL, 'Hatibandha', 7, 55, NULL, 'হাতীবান্ধা', 'hatibandha.lalmonirhat.gov.bd', 1, NULL, NULL),
(420, NULL, 'Patgram', 7, 55, NULL, 'পাটগ্রাম', 'patgram.lalmonirhat.gov.bd', 1, NULL, NULL),
(421, NULL, 'Aditmari', 7, 55, NULL, 'আদিতমারী', 'aditmari.lalmonirhat.gov.bd', 1, NULL, NULL),
(422, NULL, 'Syedpur', 7, 56, NULL, 'সৈয়দপুর', 'syedpur.nilphamari.gov.bd', 1, NULL, NULL),
(423, NULL, 'Domar', 7, 56, NULL, 'ডোমার', 'domar.nilphamari.gov.bd', 1, NULL, NULL),
(424, NULL, 'Dimla', 7, 56, NULL, 'ডিমলা', 'dimla.nilphamari.gov.bd', 1, NULL, NULL),
(425, NULL, 'Jaldhaka', 7, 56, NULL, 'জলঢাকা', 'jaldhaka.nilphamari.gov.bd', 1, NULL, NULL),
(426, NULL, 'Kishorganj', 7, 56, NULL, 'কিশোরগঞ্জ', 'kishorganj.nilphamari.gov.bd', 1, NULL, NULL),
(427, NULL, 'Nilphamari Sadar', 7, 56, NULL, 'নীলফামারী সদর', 'nilphamarisadar.nilphamari.gov.bd', 1, NULL, NULL),
(428, NULL, 'Sadullapur', 7, 57, NULL, 'সাদুল্লাপুর', 'sadullapur.gaibandha.gov.bd', 1, NULL, NULL),
(429, NULL, 'Gaibandha Sadar', 7, 57, NULL, 'গাইবান্ধা সদর', 'gaibandhasadar.gaibandha.gov.bd', 1, NULL, NULL),
(430, NULL, 'Palashbari', 7, 57, NULL, 'পলাশবাড়ী', 'palashbari.gaibandha.gov.bd', 1, NULL, NULL),
(431, NULL, 'Saghata', 7, 57, NULL, 'সাঘাটা', 'saghata.gaibandha.gov.bd', 1, NULL, NULL),
(432, NULL, 'Gobindaganj', 7, 57, NULL, 'গোবিন্দগঞ্জ', 'gobindaganj.gaibandha.gov.bd', 1, NULL, NULL),
(433, NULL, 'Sundarganj', 7, 57, NULL, 'সুন্দরগঞ্জ', 'sundarganj.gaibandha.gov.bd', 1, NULL, NULL),
(434, NULL, 'Phulchari', 7, 57, NULL, 'ফুলছড়ি', 'phulchari.gaibandha.gov.bd', 1, NULL, NULL),
(435, NULL, 'Thakurgaon Sadar', 7, 58, NULL, 'ঠাকুরগাঁও সদর', 'thakurgaonsadar.thakurgaon.gov.bd', 1, NULL, NULL),
(436, NULL, 'Pirganj', 7, 58, NULL, 'পীরগঞ্জ', 'pirganj.thakurgaon.gov.bd', 1, NULL, NULL),
(437, NULL, 'Ranisankail', 7, 58, NULL, 'রাণীশংকৈল', 'ranisankail.thakurgaon.gov.bd', 1, NULL, NULL),
(438, NULL, 'Haripur', 7, 58, NULL, 'হরিপুর', 'haripur.thakurgaon.gov.bd', 1, NULL, NULL),
(439, NULL, 'Baliadangi', 7, 58, NULL, 'বালিয়াডাঙ্গী', 'baliadangi.thakurgaon.gov.bd', 1, NULL, NULL),
(440, NULL, 'Rangpur Sadar', 7, 59, NULL, 'রংপুর সদর', 'rangpursadar.rangpur.gov.bd', 1, NULL, NULL),
(441, NULL, 'Gangachara', 7, 59, NULL, 'গংগাচড়া', 'gangachara.rangpur.gov.bd', 1, NULL, NULL),
(442, NULL, 'Taragonj', 7, 59, NULL, 'তারাগঞ্জ', 'taragonj.rangpur.gov.bd', 1, NULL, NULL),
(443, NULL, 'Badargonj', 7, 59, NULL, 'বদরগঞ্জ', 'badargonj.rangpur.gov.bd', 1, NULL, NULL),
(444, NULL, 'Mithapukur', 7, 59, NULL, 'মিঠাপুকুর', 'mithapukur.rangpur.gov.bd', 1, NULL, NULL),
(445, NULL, 'Pirgonj', 7, 59, NULL, 'পীরগঞ্জ', 'pirgonj.rangpur.gov.bd', 1, NULL, NULL),
(446, NULL, 'Kaunia', 7, 59, NULL, 'কাউনিয়া', 'kaunia.rangpur.gov.bd', 1, NULL, NULL),
(447, NULL, 'Pirgacha', 7, 59, NULL, 'পীরগাছা', 'pirgacha.rangpur.gov.bd', 1, NULL, NULL),
(448, NULL, 'Kurigram Sadar', 7, 60, NULL, 'কুড়িগ্রাম সদর', 'kurigramsadar.kurigram.gov.bd', 1, NULL, NULL),
(449, NULL, 'Nageshwari', 7, 60, NULL, 'নাগেশ্বরী', 'nageshwari.kurigram.gov.bd', 1, NULL, NULL),
(450, NULL, 'Bhurungamari', 7, 60, NULL, 'ভুরুঙ্গামারী', 'bhurungamari.kurigram.gov.bd', 1, NULL, NULL),
(451, NULL, 'Phulbari', 7, 60, NULL, 'ফুলবাড়ী', 'phulbari.kurigram.gov.bd', 1, NULL, NULL),
(452, NULL, 'Rajarhat', 7, 60, NULL, 'রাজারহাট', 'rajarhat.kurigram.gov.bd', 1, NULL, NULL),
(453, NULL, 'Ulipur', 7, 60, NULL, 'উলিপুর', 'ulipur.kurigram.gov.bd', 1, NULL, NULL),
(454, NULL, 'Chilmari', 7, 60, NULL, 'চিলমারী', 'chilmari.kurigram.gov.bd', 1, NULL, NULL),
(455, NULL, 'Rowmari', 7, 60, NULL, 'রৌমারী', 'rowmari.kurigram.gov.bd', 1, NULL, NULL),
(456, NULL, 'Charrajibpur', 7, 60, NULL, 'চর রাজিবপুর', 'charrajibpur.kurigram.gov.bd', 1, NULL, NULL),
(457, NULL, 'Sherpur Sadar', 8, 61, NULL, 'শেরপুর সদর', 'sherpursadar.sherpur.gov.bd', 1, NULL, NULL),
(458, NULL, 'Nalitabari', 8, 61, NULL, 'নালিতাবাড়ী', 'nalitabari.sherpur.gov.bd', 1, NULL, NULL),
(459, NULL, 'Sreebordi', 8, 61, NULL, 'শ্রীবরদী', 'sreebordi.sherpur.gov.bd', 1, NULL, NULL),
(460, NULL, 'Nokla', 8, 61, NULL, 'নকলা', 'nokla.sherpur.gov.bd', 1, NULL, NULL),
(461, NULL, 'Jhenaigati', 8, 61, NULL, 'ঝিনাইগাতী', 'jhenaigati.sherpur.gov.bd', 1, NULL, NULL),
(462, NULL, 'Fulbaria', 8, 62, NULL, 'ফুলবাড়ীয়া', 'fulbaria.mymensingh.gov.bd', 1, NULL, NULL),
(463, NULL, 'Trishal', 8, 62, NULL, 'ত্রিশাল', 'trishal.mymensingh.gov.bd', 1, NULL, NULL),
(464, NULL, 'Bhaluka', 8, 62, NULL, 'ভালুকা', 'bhaluka.mymensingh.gov.bd', 1, NULL, NULL),
(465, NULL, 'Muktagacha', 8, 62, NULL, 'মুক্তাগাছা', 'muktagacha.mymensingh.gov.bd', 1, NULL, NULL),
(466, NULL, 'Mymensingh Sadar', 8, 62, NULL, 'ময়মনসিংহ সদর', 'mymensinghsadar.mymensingh.gov.bd', 1, NULL, NULL),
(467, NULL, 'Dhobaura', 8, 62, NULL, 'ধোবাউড়া', 'dhobaura.mymensingh.gov.bd', 1, NULL, NULL),
(468, NULL, 'Phulpur', 8, 62, NULL, 'ফুলপুর', 'phulpur.mymensingh.gov.bd', 1, NULL, NULL),
(469, NULL, 'Haluaghat', 8, 62, NULL, 'হালুয়াঘাট', 'haluaghat.mymensingh.gov.bd', 1, NULL, NULL),
(470, NULL, 'Gouripur', 8, 62, NULL, 'গৌরীপুর', 'gouripur.mymensingh.gov.bd', 1, NULL, NULL),
(471, NULL, 'Gafargaon', 8, 62, NULL, 'গফরগাঁও', 'gafargaon.mymensingh.gov.bd', 1, NULL, NULL),
(472, NULL, 'Iswarganj', 8, 62, NULL, 'ঈশ্বরগঞ্জ', 'iswarganj.mymensingh.gov.bd', 1, NULL, NULL),
(473, NULL, 'Nandail', 8, 62, NULL, 'নান্দাইল', 'nandail.mymensingh.gov.bd', 1, NULL, NULL),
(474, NULL, 'Tarakanda', 8, 62, NULL, 'তারাকান্দা', 'tarakanda.mymensingh.gov.bd', 1, NULL, NULL),
(475, NULL, 'Jamalpur Sadar', 8, 63, NULL, 'জামালপুর সদর', 'jamalpursadar.jamalpur.gov.bd', 1, NULL, NULL),
(476, NULL, 'Melandah', 8, 63, NULL, 'মেলান্দহ', 'melandah.jamalpur.gov.bd', 1, NULL, NULL),
(477, NULL, 'Islampur', 8, 63, NULL, 'ইসলামপুর', 'islampur.jamalpur.gov.bd', 1, NULL, NULL),
(478, NULL, 'Dewangonj', 8, 63, NULL, 'দেওয়ানগঞ্জ', 'dewangonj.jamalpur.gov.bd', 1, NULL, NULL),
(479, NULL, 'Sarishabari', 8, 63, NULL, 'সরিষাবাড়ী', 'sarishabari.jamalpur.gov.bd', 1, NULL, NULL),
(480, NULL, 'Madarganj', 8, 63, NULL, 'মাদারগঞ্জ', 'madarganj.jamalpur.gov.bd', 1, NULL, NULL),
(481, NULL, 'Bokshiganj', 8, 63, NULL, 'বকশীগঞ্জ', 'bokshiganj.jamalpur.gov.bd', 1, NULL, NULL),
(482, NULL, 'Barhatta', 8, 64, NULL, 'বারহাট্টা', 'barhatta.netrokona.gov.bd', 1, NULL, NULL),
(483, NULL, 'Durgapur', 8, 64, NULL, 'দুর্গাপুর', 'durgapur.netrokona.gov.bd', 1, NULL, NULL),
(484, NULL, 'Kendua', 8, 64, NULL, 'কেন্দুয়া', 'kendua.netrokona.gov.bd', 1, NULL, NULL),
(485, NULL, 'Atpara', 8, 64, NULL, 'আটপাড়া', 'atpara.netrokona.gov.bd', 1, NULL, NULL),
(486, NULL, 'Madan', 8, 64, NULL, 'মদন', 'madan.netrokona.gov.bd', 1, NULL, NULL),
(487, NULL, 'Khaliajuri', 8, 64, NULL, 'খালিয়াজুরী', 'khaliajuri.netrokona.gov.bd', 1, NULL, NULL),
(488, NULL, 'Kalmakanda', 8, 64, NULL, 'কলমাকান্দা', 'kalmakanda.netrokona.gov.bd', 1, NULL, NULL),
(489, NULL, 'Mohongonj', 8, 64, NULL, 'মোহনগঞ্জ', 'mohongonj.netrokona.gov.bd', 1, NULL, NULL),
(490, NULL, 'Purbadhala', 8, 64, NULL, 'পূর্বধলা', 'purbadhala.netrokona.gov.bd', 1, NULL, NULL),
(491, NULL, 'Netrokona Sadar', 8, 64, NULL, 'নেত্রকোণা সদর', 'netrokonasadar.netrokona.gov.bd', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `note` varchar(191) DEFAULT NULL,
  `old_balance` decimal(10,2) NOT NULL DEFAULT 0.00,
  `debit` decimal(10,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(10,2) NOT NULL DEFAULT 0.00,
  `balance` decimal(10,2) NOT NULL DEFAULT 0.00,
  `admin_id` int(11) DEFAULT NULL,
  `status` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `receiver_id`, `type`, `note`, `old_balance`, `debit`, `credit`, `balance`, `admin_id`, `status`, `created_at`, `updated_at`) VALUES
(14, 1, NULL, 'transfer', 'Super Admin transfer 2000  Taka to Niloy Akand  from topup balance', '102000.00', '2000.00', '0.00', '100000.00', NULL, 'Successful', '2022-11-29 01:14:55', '2022-11-29 01:14:55'),
(15, 3, NULL, 'transfer', 'You got  2000  Taka to  from Super Admin', '17000.00', '0.00', '2000.00', '19000.00', NULL, 'Successful', '2022-11-29 01:14:55', '2022-11-29 01:14:55'),
(16, 3, NULL, 'transfer', 'Niloy Akand transfer 4000  Taka to Super Admin  from topup balance', '19000.00', '4000.00', '0.00', '15000.00', NULL, 'Successful', '2022-11-29 01:16:51', '2022-11-29 01:16:51'),
(17, 1, NULL, 'transfer', 'You got  4000  Taka to  from Niloy Akand', '100000.00', '0.00', '4000.00', '104000.00', NULL, 'Successful', '2022-11-29 01:16:51', '2022-11-29 01:16:51'),
(18, 3, NULL, 'transfer', 'Niloy Akand transfer 2000  Taka to Super Admin  from topup balance', '15000.00', '2000.00', '0.00', '13000.00', NULL, 'Successful', '2022-11-29 01:19:54', '2022-11-29 01:19:54'),
(19, 3, NULL, 'transfer', 'Niloy Akand transfer 2000  Taka to Super Admin  from topup balance', '15000.00', '2000.00', '0.00', '13000.00', NULL, 'Successful', '2022-11-29 01:20:05', '2022-11-29 01:20:05'),
(20, 1, NULL, 'transfer', 'You got  2000  Taka to  from Niloy Akand', '106000.00', '0.00', '2000.00', '108000.00', NULL, 'Successful', '2022-11-29 01:20:05', '2022-11-29 01:20:05'),
(21, 3, NULL, 'withdraw', 'Niloy Akand  withdraw 2000  Taka', '76000.00', '2000.00', '0.00', '74000.00', NULL, 'Successful', '2022-12-01 00:17:46', '2022-12-01 00:17:46'),
(22, 3, NULL, 'withdraw', 'Niloy Akand  withdraw 2000  Taka', '74000.00', '2000.00', '0.00', '72000.00', NULL, 'Successful', '2022-12-01 00:23:31', '2022-12-01 00:23:31'),
(23, 3, NULL, 'withdraw', 'Niloy Akand  withdraw 3000  Taka', '72000.00', '3000.00', '0.00', '69000.00', NULL, 'Successful', '2022-12-01 00:24:17', '2022-12-01 00:24:17'),
(24, 3, NULL, 'withdraw', 'Niloy Akand  withdraw 2000  Taka', '69000.00', '2000.00', '0.00', '67000.00', NULL, 'Successful', '2022-12-01 00:39:17', '2022-12-01 00:39:17'),
(25, 3, NULL, 'withdraw', 'Niloy Akand  withdraw 1000  Taka', '67000.00', '1000.00', '0.00', '66000.00', NULL, 'Successful', '2022-12-01 00:39:27', '2022-12-01 00:39:27'),
(26, 3, NULL, 'withdraw', 'Niloy Akand  withdraw 1500  Taka', '66000.00', '1500.00', '0.00', '64500.00', NULL, 'Successful', '2022-12-01 00:39:39', '2022-12-01 00:39:39'),
(27, 1, NULL, 'withdraw', 'Super Admin  withdraw 5000  Taka', '100000.00', '5000.00', '0.00', '95000.00', NULL, 'Successful', '2022-12-01 04:46:09', '2022-12-01 04:46:09'),
(28, 3, NULL, 'withdraw', 'Niloy Akand  withdraw 4500  Taka', '64500.00', '4500.00', '0.00', '60000.00', NULL, 'Successful', '2022-12-01 14:08:35', '2022-12-01 14:08:35'),
(29, 3, NULL, 'purchase', 'Niloy Akand  Purchase Speken English - Online ( Student )  Course', '15000.00', '5000.00', '0.00', '10000.00', NULL, 'Successful', '2022-12-27 09:58:29', '2022-12-27 09:58:29'),
(30, 3, NULL, 'purchase', 'Niloy Akand  Purchase Digital Marketing - Online ( Professional )  Course', '10000.00', '15000.00', '0.00', '-5000.00', NULL, 'Successful', '2022-12-27 09:59:42', '2022-12-27 09:59:42');

-- --------------------------------------------------------

--
-- Table structure for table `transer_balances`
--

CREATE TABLE `transer_balances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `note` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transer_balances`
--

INSERT INTO `transer_balances` (`id`, `sender_id`, `receiver_id`, `amount`, `note`, `status`, `created_at`, `updated_at`) VALUES
(12, 1, 3, 2000.00, NULL, 1, '2022-11-29 01:14:55', '2022-11-29 01:14:55'),
(13, 3, 1, 4000.00, NULL, 1, '2022-11-29 01:16:51', '2022-11-29 01:16:51'),
(14, 3, 1, 2000.00, NULL, 1, '2022-11-29 01:19:54', '2022-11-29 01:19:54'),
(15, 3, 1, 2000.00, NULL, 1, '2022-11-29 01:20:05', '2022-11-29 01:20:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `placement_id` int(11) DEFAULT NULL,
  `refer_id` int(11) DEFAULT NULL,
  `left_id` int(11) DEFAULT NULL,
  `right_id` int(11) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `net_office_id` int(11) DEFAULT NULL,
  `possition` tinyint(1) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `contact_person` varchar(191) DEFAULT NULL,
  `nid` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `topup_balance` float(10,2) NOT NULL DEFAULT 0.00,
  `income_balance` float(10,2) NOT NULL DEFAULT 0.00,
  `sponsor_balance` float(10,2) NOT NULL DEFAULT 0.00,
  `gsp_balance` float(10,2) NOT NULL DEFAULT 0.00,
  `available_balance` float(10,2) NOT NULL DEFAULT 0.00,
  `otp` varchar(191) DEFAULT NULL,
  `day` varchar(191) DEFAULT NULL,
  `month` varchar(191) DEFAULT NULL,
  `year` varchar(191) DEFAULT NULL,
  `father_name` varchar(191) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `father_contact_number` varchar(191) DEFAULT NULL,
  `gurdian_name` varchar(191) DEFAULT NULL,
  `gurdian_contact_number` varchar(191) DEFAULT NULL,
  `district_id` varchar(191) DEFAULT NULL,
  `thana_id` int(11) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `address` text DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `pin` int(11) DEFAULT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `password_str` varchar(191) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text DEFAULT NULL,
  `role_id` bigint(20) NOT NULL DEFAULT 3,
  `isAffiliate` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `placement_id`, `refer_id`, `left_id`, `right_id`, `designation`, `net_office_id`, `possition`, `name`, `contact_person`, `nid`, `email`, `phone`, `topup_balance`, `income_balance`, `sponsor_balance`, `gsp_balance`, `available_balance`, `otp`, `day`, `month`, `year`, `father_name`, `mother_name`, `father_contact_number`, `gurdian_name`, `gurdian_contact_number`, `district_id`, `thana_id`, `country`, `email_verified_at`, `address`, `password`, `pin`, `two_factor_secret`, `two_factor_recovery_codes`, `password_str`, `image`, `remember_token`, `current_team_id`, `profile_photo_path`, `role_id`, `isAffiliate`, `status`, `created_at`, `updated_at`) VALUES
(1, '100001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'psychee', NULL, NULL, 'admin@gmail.com', '01788888888', 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Boroitola, Narshingdi', '$2y$10$A0PtfWcaI1yVBYdvHi1oeOAQINcfTKN7fLk/UAilkS1rQxT.azlDW', 123456, NULL, NULL, '123123123', 'http://localhost:8080/omit_vai/course_mlm_software/public/uploads/2022/12/1670341532-2021-08-21-6120109c340e7.png', NULL, NULL, NULL, 1, 0, 1, NULL, '2022-12-06 09:45:32'),
(25, '60611', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Psychee', NULL, '476353768452375', 'psychee@gmail.com', '01788888888', 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '16', 'June', '1974', 'demo', NULL, '01788888888', 'demo', '01788888888', '13', NULL, 'Bangladesh', NULL, '360/1/A,Khandokar Road,West Jurain,Shyampur,Dhaka-1204', '$2y$10$fJ2UmeOWnjRqAOAR3cvP8.yqZpd/Uw3fqN/bGfLuialMR6iRrDB5i', NULL, NULL, NULL, '123123123', NULL, NULL, NULL, NULL, 2, 0, 1, '2023-03-14 11:54:16', '2023-03-14 11:54:16'),
(26, '60599', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tirthuemoni', NULL, '56684524245', 'a@gmail.com', '01700000000', 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '29', 'October', '2000', 'Jahadul Isl', NULL, '01811111111', 'Nasir', '01721111111', '44', NULL, 'Bangladesh', NULL, 'Shylet', '$2y$10$wZ.185GUqOM0nUXqGeyb2.Nkzr.HI9MZPuTyLzFmj4MeU1bo2dNUW', NULL, NULL, NULL, '123123123', NULL, NULL, NULL, NULL, 2, 0, 1, '2023-03-16 00:17:56', '2023-03-16 00:17:56'),
(27, '60600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'abcdef', NULL, '12345678910', 'acdes@gmail.com', '01700000000', 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '21', 'February', '1999', 'Jahadul Islam', NULL, '01811111111', 'Nasir', '01721111111', '4', NULL, 'Bangladesh', NULL, 'Shylet', '$2y$10$YqmrbVGqNK7FnBEeWDPiueFVIbZzhVtBNToy/MIrHJ9tPmgxSmWNe', NULL, NULL, NULL, '123123123', NULL, NULL, NULL, NULL, 2, 0, 1, '2023-03-16 01:36:17', '2023-03-16 01:36:17'),
(28, '60601', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kotha Zaman', NULL, '91012345678', 'abcde@gmail.com', '01718900111', 0.00, 0.00, 0.00, 0.00, 0.00, NULL, '29', 'October', '2001', 'Jaidul Islam', NULL, '01710102901', 'Rasheda khatun', '01720000876', '47', NULL, 'Bangladesh', NULL, 'Dhaka', '$2y$10$5XmdtgWJCKvtSz2g0uTIMeuwHzfoLPwJZ3astGEA0lMFwsp99eYL.', NULL, NULL, NULL, '123123123', NULL, NULL, NULL, NULL, 2, 0, 1, '2023-03-16 03:54:56', '2023-03-16 03:54:56'),
(29, '10029', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mohd. Sultan Ahammad', NULL, '8972563242712', 'sultan.ahammad36@gmail.com', '01700123421', 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$SF7qCn/Sa2TURLdXgBYyJ.7ODKOCV7t8fadO/zzat6XLYzrUiFg62', NULL, NULL, NULL, '123123123', 'images/teacher/6412390b172b6.jpg', NULL, NULL, NULL, 4, 0, 1, '2023-03-16 04:30:51', '2023-03-16 04:30:51');

-- --------------------------------------------------------

--
-- Table structure for table `user_incomes`
--

CREATE TABLE `user_incomes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `note` varchar(191) DEFAULT NULL,
  `old_balance` decimal(10,2) NOT NULL DEFAULT 0.00,
  `debit` decimal(10,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(10,2) NOT NULL DEFAULT 0.00,
  `balance` decimal(10,2) NOT NULL DEFAULT 0.00,
  `admin_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_verifies`
--

CREATE TABLE `user_verifies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(191) NOT NULL,
  `otp` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_verifies`
--

INSERT INTO `user_verifies` (`id`, `phone`, `otp`, `status`, `created_at`, `updated_at`) VALUES
(1, '01777919189', '1258', 0, '2022-12-26 08:50:37', '2022-12-26 08:50:37'),
(2, '01777919189444', '8478', 0, '2022-12-26 08:57:59', '2022-12-26 08:57:59'),
(3, '0131591426244', '3602', 0, '2022-12-26 08:59:35', '2022-12-26 08:59:35'),
(4, '01777919189444', '3814', 0, '2022-12-26 09:01:00', '2022-12-26 09:01:00'),
(5, '01777919189343', '4085', 0, '2022-12-26 09:01:42', '2022-12-26 09:01:42'),
(6, '017779191893', '4155', 0, '2022-12-26 09:04:47', '2022-12-26 09:04:47'),
(7, '01916962118', '6149', 0, '2023-02-24 03:16:57', '2023-02-24 03:16:57');

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `otp` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `account_no` varchar(191) DEFAULT NULL,
  `branch` varchar(191) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraws`
--

INSERT INTO `withdraws` (`id`, `user_id`, `amount`, `otp`, `type`, `payment_method_id`, `account_no`, `branch`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, '4000.00', '0', 'Cash', NULL, NULL, NULL, 1, '2022-11-27 04:52:06', '2022-12-01 00:32:34'),
(2, 3, '5000.00', '0', 'Bank', 2, '01777919189', NULL, 1, '2022-11-27 04:55:28', '2022-12-01 00:32:43'),
(3, 3, '2000.00', '0', 'Cash', NULL, NULL, NULL, 1, '2022-12-01 00:17:46', '2022-12-01 00:38:04'),
(4, 3, '2000.00', '74143', 'Cash', NULL, NULL, NULL, 1, '2022-12-01 00:23:31', '2022-12-01 00:38:09'),
(5, 3, '3000.00', '59413', 'Bank', 3, '01777919189', 'Monohardi', 1, '2022-12-01 00:24:17', '2022-12-01 00:29:36'),
(6, 3, '2000.00', '87743', 'Cash', NULL, NULL, NULL, 2, '2022-12-01 00:39:17', '2022-12-01 00:55:02'),
(7, 3, '1000.00', '42383', 'Bank', 2, '01777919189', NULL, 1, '2022-12-01 00:39:27', '2022-12-01 00:42:08'),
(8, 3, '1500.00', '16093', 'Bank', 3, '015871004416666', 'Quidem totam reprehe', 1, '2022-12-01 00:39:39', '2022-12-01 00:42:37'),
(9, 1, '5000.00', '25951', 'Cash', NULL, NULL, NULL, 0, '2022-12-01 04:45:58', '2022-12-01 04:45:58'),
(11, 3, '4500.00', '70583', 'Bank', 3, '11100021445', 'Monohardi', 1, '2022-12-01 14:08:35', '2022-12-01 14:09:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing_addresses`
--
ALTER TABLE `billing_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_positions`
--
ALTER TABLE `business_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactuses`
--
ALTER TABLE `contactuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_summeries`
--
ALTER TABLE `exam_summeries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_works`
--
ALTER TABLE `home_works`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lesions`
--
ALTER TABLE `lesions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `net_offices`
--
ALTER TABLE `net_offices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_classes`
--
ALTER TABLE `online_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_categories`
--
ALTER TABLE `page_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sponsores`
--
ALTER TABLE `sponsores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statements`
--
ALTER TABLE `statements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_exams`
--
ALTER TABLE `student_exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `study_materials`
--
ALTER TABLE `study_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thanas`
--
ALTER TABLE `thanas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transer_balances`
--
ALTER TABLE `transer_balances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_incomes`
--
ALTER TABLE `user_incomes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_verifies`
--
ALTER TABLE `user_verifies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `billing_addresses`
--
ALTER TABLE `billing_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `business_positions`
--
ALTER TABLE `business_positions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contactuses`
--
ALTER TABLE `contactuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `exam_summeries`
--
ALTER TABLE `exam_summeries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_works`
--
ALTER TABLE `home_works`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lesions`
--
ALTER TABLE `lesions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `net_offices`
--
ALTER TABLE `net_offices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `online_classes`
--
ALTER TABLE `online_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `page_categories`
--
ALTER TABLE `page_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sponsores`
--
ALTER TABLE `sponsores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `statements`
--
ALTER TABLE `statements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_exams`
--
ALTER TABLE `student_exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `study_materials`
--
ALTER TABLE `study_materials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `thanas`
--
ALTER TABLE `thanas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=492;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `transer_balances`
--
ALTER TABLE `transer_balances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `user_incomes`
--
ALTER TABLE `user_incomes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_verifies`
--
ALTER TABLE `user_verifies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
