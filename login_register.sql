-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2024 at 01:30 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alvi_22101223`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_19_093302_create_sessions_table', 2),
(6, '2024_03_18_145106_add_more_column_to_user_table', 3),
(7, '2024_03_18_150535_train_details', 4),
(8, '2024_03_18_152043_train_schedule', 4),
(10, '2024_03_18_163654_routes', 5),
(11, '2024_03_18_163234_tickets', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fare_from_dhaka` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`id`, `name`, `fare_from_dhaka`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka Airport', '80', NULL, NULL),
(2, 'Chittagong', '600', NULL, NULL),
(3, 'Chittagong', '1100', NULL, NULL),
(4, 'Coxs Bazar', '695', NULL, NULL),
(5, 'Rajshahi', '550', NULL, NULL),
(6, 'Chapainabanganj', '440', NULL, NULL),
(7, 'Khulna', '400', NULL, NULL),
(8, 'Khulna', '720', NULL, NULL),
(9, 'Nawapara', '420', NULL, NULL),
(10, 'Nawapara', '730', NULL, NULL),
(11, 'Jashore', '450', NULL, NULL),
(12, 'Jashore', '750', NULL, NULL),
(13, 'Ishwardi', '500', NULL, NULL),
(14, 'Ishwardi', '800', NULL, NULL),
(15, 'Natore', '560', NULL, NULL),
(16, 'Natore', '850', NULL, NULL),
(17, 'Mymensingh', '330', NULL, NULL),
(18, 'Comilla', '550', NULL, NULL),
(19, 'Comilla', '1000', NULL, NULL),
(20, 'Netrokona', '450', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('uMIhETTQsM11NrSRpA7kHQRnlZ2YNoYI1DTzoBOk', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU2E0bUtWZFNNeWRnVG14cnhmUGxXTXpiS3NMWFNNYkp2MkU1VEtseiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1710773137);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `train_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `ticket_count` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seat_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seat_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_station` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_station` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `train_id`, `user_id`, `ticket_count`, `ticket_price`, `seat_type`, `seat_number`, `from_station`, `to_station`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '4', '500', 'ac', 'a1,a2,a3,a4', NULL, NULL, '2024-03-06 16:16:31', '2024-03-07 16:16:31');

-- --------------------------------------------------------

--
-- Table structure for table `train_details`
--

CREATE TABLE `train_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `train_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `train_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `train_route` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `station_start_from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `station_end_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `train_end_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seat_fairs` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_seats` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `train_available_days` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `train_details`
--

INSERT INTO `train_details` (`id`, `name`, `train_number`, `train_type`, `train_route`, `station_start_from`, `station_end_to`, `start_time`, `train_end_time`, `seat_fairs`, `total_seats`, `train_available_days`, `created_at`, `updated_at`) VALUES
(1, 'DutoJan Express', '757', 'UP', '[1,2,3,4,5]', '1', '5', '0800', '2300', '{\"shovon\":30,\"shovon_chair\":40,\"ac_bath\":130}', '{\"shovon\":50,\"shovon_chair\":80,\"ac_bath\":10}', '[1,3,5]', '2024-03-20 21:17:34', '2024-03-20 21:17:34'),
(2, 'Banalata Express', '791', 'UP', '[1,5,6]', '1', '6', '0900', '1400', '{\"shovon\":550,\"shovon\":440}', '{\"shovon\":160,\"shovon_chair\":00,\"ac_bath\":00}', '[1,3,5,6]', NULL, NULL),
(3, 'Sundarban Express', '765', 'UP', '[1,7,8,9,10,11,12,13,14,15,16]', '1', '16', '0700', '2100', '{\"shovon\":400,\"ac_bath\":720,\"shovon\":420,,\"ac_bath\":730,\"shovon\":450,\"ac_bath\":750,\"shovon\":600,,\"ac_bath\":800,\"shovon\":550,\"ac_bath\":850}', '{\"shovon\":160,\"ac_bath\":60}', '[1,2,3,4,5]', NULL, NULL),
(4, 'Bijoy Express', '785', 'UP', '[1,17,20] ', '1', '20', '1200', '1900', '{\"shovon\":300,\"shovon\":450}', '{\"shovon\":250}', '[1,2,3,5,6]', NULL, NULL),
(5, 'Coxs bazar Express', '770', 'UP', '[1,4]', '1', '4', '2300', '0400', '{\"shovon\":695}', '{\"shovon\":200}', '[1,5]', NULL, NULL),
(6, 'Shonar Bangla Express', '787', 'UP', '[1,2,3,18,19]', '1', '19', '1500', '1900', '{\"shovon\":600,\"ac_bath\":1100,\"shovon\":550,\"ac_bath\":1000}', '{\"shovon\":230,\"ac_bath\":50}', '[1,2,4,5,6]', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `train_schedule`
--

CREATE TABLE `train_schedule` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `train_id` bigint(20) UNSIGNED NOT NULL,
  `travel_date` date NOT NULL,
  `ticket_availablity` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `train_schedule`
--

INSERT INTO `train_schedule` (`id`, `train_id`, `travel_date`, `ticket_availablity`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-03-28', '{\"ac_seat\":200}', '2024-03-27 23:17:20', '2024-03-27 23:17:20'),
(2, 1, '2024-03-28', '{\"ac_chair\":200}', '2024-03-27 23:18:09', '2024-03-27 23:18:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid_card` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `email_verified_at`, `phone_number`, `nid_card`, `role`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'shakilofficial0', 'S. M. Shakil Ahmed', 'shakilofficial0@gmail.com', '2024-03-20 21:05:24', '01627523107', '1928374829102', 'user', 'default.png', 'paswword', NULL, '2024-03-20 21:05:24', '2024-03-20 21:05:24'),
(2, 'alvi_don', 'Ahasan Habib Alvi', 'ahasan.habib@g.bracu.ac.bd', '2024-04-20 10:56:35', '01949876700', '1234567289123', 'user', 'default.png', 'password', 'no', '2024-04-20 10:56:35', '2024-04-20 10:56:35');

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
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_train_id_foreign` (`train_id`),
  ADD KEY `tickets_user_id_foreign` (`user_id`);

--
-- Indexes for table `train_details`
--
ALTER TABLE `train_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `train_details_train_number_unique` (`train_number`);

--
-- Indexes for table `train_schedule`
--
ALTER TABLE `train_schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `train_schedule_train_id_foreign` (`train_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `train_details`
--
ALTER TABLE `train_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `train_schedule`
--
ALTER TABLE `train_schedule`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_train_id_foreign` FOREIGN KEY (`train_id`) REFERENCES `train_schedule` (`id`),
  ADD CONSTRAINT `tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `train_schedule`
--
ALTER TABLE `train_schedule`
  ADD CONSTRAINT `train_schedule_train_id_foreign` FOREIGN KEY (`train_id`) REFERENCES `train_details` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
