-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2022 at 02:15 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crm-project`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `email`, `logo`, `logo_url`, `website`, `created_at`, `updated_at`) VALUES
(2, 'Apple', 'apple@gmail.com', 'Company-638af1c65ea5d.svg', 'http://127.0.0.1:8000/storage/Company/Company-638af1c65ea5d.svg', 'https://www.apple.com/', '2022-12-03 00:50:46', '2022-12-03 00:50:46'),
(3, 'Amazon', 'amazon@gmail.com', 'Company-638af2917e7ae.png', 'http://127.0.0.1:8000/storage/Company/Company-638af2917e7ae.png', 'https://www.amazon.com/', '2022-12-03 00:54:09', '2022-12-03 00:54:09'),
(4, 'Daraz', 'daraz@gmail.com', 'Company-638af2ecd6fb5.png', 'http://127.0.0.1:8000/storage/Company/Company-638af2ecd6fb5.png', 'https://www.daraz.com.bd/', '2022-12-03 00:55:40', '2022-12-03 00:55:40'),
(5, 'Tata  Group', 'tata@gmail.com', 'Company-638af5c800124.jpg', 'http://127.0.0.1:8000/storage/Company/Company-638af5c800124.jpg', 'https://www.tata.com/', '2022-12-03 01:07:52', '2022-12-03 01:07:52'),
(6, 'P2P Family', 'p2pfamily@gmail.com', 'Company-638b0b2ec4cfd.png', 'http://127.0.0.1:8000/storage/Company/Company-638b0b2ec4cfd.png', 'https://www.p2pfamily.com', '2022-12-03 02:39:10', '2022-12-03 03:24:09'),
(7, 'Alibaba', 'alibaba@gmail.com', 'Company-638b0b7ca301f.jpg', 'http://127.0.0.1:8000/storage/Company/Company-638b0b7ca301f.jpg', 'https://www.alibaba.com/', '2022-12-03 02:40:28', '2022-12-03 02:40:28'),
(8, 'Aliexpress', 'Aliexpress@gmail.com', 'Company-638b0bc9d33a9.webp', 'http://127.0.0.1:8000/storage/Company/Company-638b0bc9d33a9.webp', 'https://best.aliexpress.com/', '2022-12-03 02:41:45', '2022-12-03 02:41:45'),
(9, 'Creative It Institute', 'Creative@gmail.com', 'Company-638b0c9ae7d8f.png', 'http://127.0.0.1:8000/storage/Company/Company-638b0c9ae7d8f.png', 'https://www.creativeitinstitute.com/', '2022-12-03 02:45:14', '2022-12-03 02:45:14'),
(10, 'Softtech It', 'SofttechIt@gmail.com', 'Company-638b0d072d0e3.png', 'http://127.0.0.1:8000/storage/Company/Company-638b0d072d0e3.png', 'https://softtech-it.com/', '2022-12-03 02:47:03', '2022-12-03 02:47:03'),
(11, 'Bashundhara Group', 'Bashundhara@gmail.com', 'Company-638b0d4aaaceb.png', 'http://127.0.0.1:8000/storage/Company/Company-638b0d4aaaceb.png', 'https://www.bashundharagroup.com', '2022-12-03 02:48:10', '2022-12-03 04:09:48'),
(12, 'Prothom Alo', 'Prothom@gmail.com', 'Company-638b0db18449a.png', 'http://127.0.0.1:8000/storage/Company/Company-638b0db18449a.png', 'https://www.prothomalo.com/', '2022-12-03 02:49:53', '2022-12-03 02:49:53'),
(13, 'Times of India', 'timesofindia@gmail.com', 'Company-638b1360960a6.png', 'http://127.0.0.1:8000/storage/Company/Company-638b1360960a6.png', 'https://timesofindia.indiatimes.com', '2022-12-03 02:51:22', '2022-12-03 03:14:08');

-- --------------------------------------------------------

--
-- Table structure for table `employs`
--

CREATE TABLE `employs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employs`
--

INSERT INTO `employs` (`id`, `company_id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 9, 'Grant', 'Cooke', 'degolo@mailinator.com', '01833086112', '2022-12-03 05:59:41', '2022-12-03 05:59:41'),
(2, 3, 'Aurora', 'Beard', 'selepem@mailinator.com', '2036560155', '2022-12-03 06:00:53', '2022-12-03 06:00:53'),
(3, 6, 'Kellie', 'James', 'saretozo@mailinator.com', '34255556541', '2022-12-03 06:01:12', '2022-12-03 06:01:12'),
(4, 3, 'Chiquita', 'Dejesus', 'livone@mailinator.com', '9336152214', '2022-12-03 06:01:26', '2022-12-03 06:01:26'),
(5, 11, 'Aladdin', 'Landry', 'gekiqe@mailinator.com', '8122552255', '2022-12-03 06:01:40', '2022-12-03 06:01:40'),
(6, 3, 'Rhona', 'Salazar', 'tolajicuk@mailinator.com', '70926252656', '2022-12-03 06:01:51', '2022-12-03 06:01:51'),
(7, 9, 'Imogene', 'Orr', 'vika@mailinator.com', '1125445456541', '2022-12-03 06:02:01', '2022-12-03 06:02:01'),
(8, 4, 'Steel', 'Olsen', 'rijufise@mailinator.com', '90244848444', '2022-12-03 06:02:12', '2022-12-03 06:02:12'),
(9, 8, 'Todd', 'Morse', 'weruraqi@mailinator.com', '565655665156', '2022-12-03 06:02:21', '2022-12-03 06:02:21'),
(10, 6, 'Wallace', 'Gay', 'gadasoz@mailinator.com', '132655256', '2022-12-03 06:02:38', '2022-12-03 06:02:38'),
(11, 9, 'MacKensie', 'Gilmore', 'tacineva@mailinator.com', '45751651568', '2022-12-03 06:02:50', '2022-12-03 06:02:50'),
(12, 6, 'Daniel', 'Kane', 'wesido@mailinator.com', '1116566556', '2022-12-03 06:03:01', '2022-12-03 06:03:01'),
(13, 11, 'Ebony', 'Casey', 'rixuqeqe@mailinator.com', '9115414165454', '2022-12-03 06:03:38', '2022-12-03 06:03:38');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_03_054701_create_companies_table', 2),
(6, '2022_12_03_100554_create_employs_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$caSsslGwGI3TZRH2nohrk.33wp5lT9rKWw6p2uuX2Rb2/2KHHn3D2', NULL, '2022-12-02 23:27:46', '2022-12-02 23:27:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employs`
--
ALTER TABLE `employs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employs_company_id_foreign` (`company_id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `employs`
--
ALTER TABLE `employs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employs`
--
ALTER TABLE `employs`
  ADD CONSTRAINT `employs_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
