-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2023 at 06:59 AM
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
-- Database: `breeze_multi_auth`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `role` enum('admin','agent','user') NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', NULL, '$2y$12$u9CsRQ.0GsQU1ElAGmiKIuq.EZa6EzDfc0nzAGjRJncOBMZWA3hwS', NULL, '01738920277', NULL, 'admin', 'active', NULL, NULL, NULL),
(2, 'Agent', 'agent', 'agent@gmail.com', NULL, '$2y$12$R17Cf4yacerCMzfp81crIO0zWKOqGuRqDW02P32G7SQZOwWASOjPe', NULL, NULL, NULL, 'agent', 'active', NULL, NULL, NULL),
(3, 'User', 'user', 'user@gmail.com', NULL, '$2y$12$54JZdrorQmytyNVErA/T/.LIbST1W/sNKvKqy73EGSlq6gd7FtUgu', NULL, NULL, NULL, 'user', 'active', NULL, NULL, NULL),
(4, 'Dr. Jaylan Hickle', NULL, 'marge31@example.net', '2023-12-03 22:53:15', '$2y$12$UOpAei1XHx4JnoUrphJk7ORIRKCCwF7VAU1hCeWyeRExU3X3Uw9/C', 'https://via.placeholder.com/60x60.png/006666?text=magnam', '971-556-1189', '827 Kamron Divide\nEast Gracefort, VT 74289', 'admin', 'active', 'YYyRgOtYXp', '2023-12-03 22:53:15', '2023-12-03 22:53:15'),
(5, 'Reginald Koss', NULL, 'beau23@example.org', '2023-12-03 22:53:15', '$2y$12$UOpAei1XHx4JnoUrphJk7ORIRKCCwF7VAU1hCeWyeRExU3X3Uw9/C', 'https://via.placeholder.com/60x60.png/00ee44?text=corrupti', '+1-443-670-7806', '579 Prosacco Center\nEast Emerald, MN 58301', 'admin', 'inactive', 'IIR4May14v', '2023-12-03 22:53:15', '2023-12-03 22:53:15'),
(6, 'Keira Kozey', NULL, 'tillman.conrad@example.com', '2023-12-03 22:53:15', '$2y$12$UOpAei1XHx4JnoUrphJk7ORIRKCCwF7VAU1hCeWyeRExU3X3Uw9/C', 'https://via.placeholder.com/60x60.png/003311?text=repudiandae', '+18386595797', '3437 Andre Unions Suite 537\nAngelashire, WI 90411-4248', 'user', 'active', 'asgBPN9uep', '2023-12-03 22:53:15', '2023-12-03 22:53:15'),
(7, 'Richie Rosenbaum', NULL, 'nathanial30@example.net', '2023-12-03 22:53:15', '$2y$12$UOpAei1XHx4JnoUrphJk7ORIRKCCwF7VAU1hCeWyeRExU3X3Uw9/C', 'https://via.placeholder.com/60x60.png/000011?text=possimus', '+1.608.845.6328', '5046 Dedric Extensions Suite 411\nDanykaport, NM 11705', 'admin', 'active', '3ltO79vHmt', '2023-12-03 22:53:15', '2023-12-03 22:53:15'),
(8, 'Leonor Durgan Jr.', NULL, 'chester.lemke@example.org', '2023-12-03 22:53:15', '$2y$12$UOpAei1XHx4JnoUrphJk7ORIRKCCwF7VAU1hCeWyeRExU3X3Uw9/C', 'https://via.placeholder.com/60x60.png/008811?text=doloremque', '1-531-321-6234', '26988 Schmeler Drive\nNew Darianashire, WV 45307-8665', 'admin', 'active', 'V10H4IjiYe', '2023-12-03 22:53:15', '2023-12-03 22:53:15'),
(9, 'Ashlynn Legros', NULL, 'prosacco.troy@example.net', '2023-12-03 22:53:15', '$2y$12$UOpAei1XHx4JnoUrphJk7ORIRKCCwF7VAU1hCeWyeRExU3X3Uw9/C', 'https://via.placeholder.com/60x60.png/004411?text=nobis', '1-650-278-2193', '892 Vandervort Run Suite 954\nWest Gwen, VA 21438', 'user', 'inactive', 'hoVuCuOAN1', '2023-12-03 22:53:15', '2023-12-03 22:53:15'),
(10, 'Eusebio Shanahan', NULL, 'halvorson.zoe@example.net', '2023-12-03 22:53:15', '$2y$12$UOpAei1XHx4JnoUrphJk7ORIRKCCwF7VAU1hCeWyeRExU3X3Uw9/C', 'https://via.placeholder.com/60x60.png/00dd99?text=labore', '1-857-503-4931', '64064 Ortiz Viaduct\nPort Leda, NH 66187-2689', 'admin', 'active', 'q4MDWFTGl8', '2023-12-03 22:53:15', '2023-12-03 22:53:15'),
(11, 'Jewel Goyette', NULL, 'maximus.deckow@example.org', '2023-12-03 22:53:15', '$2y$12$UOpAei1XHx4JnoUrphJk7ORIRKCCwF7VAU1hCeWyeRExU3X3Uw9/C', 'https://via.placeholder.com/60x60.png/008811?text=architecto', '1-856-210-1171', '125 Kavon Land\nLandenmouth, ND 27619', 'user', 'active', '4koRSCEri7', '2023-12-03 22:53:16', '2023-12-03 22:53:16'),
(12, 'Sonia Kuhn', NULL, 'nicole87@example.com', '2023-12-03 22:53:15', '$2y$12$UOpAei1XHx4JnoUrphJk7ORIRKCCwF7VAU1hCeWyeRExU3X3Uw9/C', 'https://via.placeholder.com/60x60.png/001166?text=eius', '+1.320.518.7169', '60112 Carlo Parks\nDahliachester, ME 69527', 'user', 'inactive', 'vW92o93d5b', '2023-12-03 22:53:16', '2023-12-03 22:53:16'),
(13, 'Lavina Orn', NULL, 'dpredovic@example.org', '2023-12-03 22:53:15', '$2y$12$UOpAei1XHx4JnoUrphJk7ORIRKCCwF7VAU1hCeWyeRExU3X3Uw9/C', 'https://via.placeholder.com/60x60.png/00dddd?text=velit', '351-490-6704', '78927 Reinger Divide\nEast Kelsichester, VA 33309', 'user', 'active', 'oXmK8Jfues', '2023-12-03 22:53:16', '2023-12-03 22:53:16'),
(14, 'test', NULL, 'test@gmail.com', NULL, '$2y$12$Vma/2NPssLVoTXLBBpP/nelInRmpQL7dAbAGPUvdSeBAaXISa3s3m', NULL, NULL, NULL, 'user', 'active', NULL, '2023-12-03 22:55:14', '2023-12-03 22:55:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
