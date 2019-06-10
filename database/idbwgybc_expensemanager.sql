-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 10, 2019 at 06:16 AM
-- Server version: 10.1.38-MariaDB-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `idbwgybc_expensemanager`
--

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `money_format_thousands` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `money_format_decimal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `title`, `symbol`, `money_format_thousands`, `money_format_decimal`, `created_at`, `updated_at`, `deleted_at`, `created_by_id`) VALUES
(1, 'USD', '$', ',', '.', '2019-01-06 10:20:16', '2019-01-06 10:20:16', NULL, 1),
(2, 'EUR', '€', '.', ',', '2019-01-06 10:20:16', '2019-01-06 10:20:16', NULL, 1),
(3, 'GBP', '£', '.', ',', '2019-01-06 10:20:16', '2019-01-20 23:19:23', '2019-01-20 23:19:23', 1),
(4, 'Taka', '৳', '1000', '', '2019-01-06 10:25:20', '2019-01-06 10:25:20', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_date` date DEFAULT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expense_category_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `entry_date`, `amount`, `currency_id`, `created_by_id`, `created_at`, `updated_at`, `expense_category_id`, `deleted_at`) VALUES
(1, '2019-01-06', '10000', 1, 1, '2019-01-06 10:05:27', '2019-01-06 10:05:27', 1, NULL),
(2, '2018-12-01', '6000', 1, 1, '2019-01-06 10:27:20', '2019-01-06 10:27:20', 2, NULL),
(3, '2018-11-01', '2500', 1, 1, '2019-01-06 10:27:37', '2019-01-06 10:27:37', 3, NULL),
(4, '2018-10-01', '7000', 1, 1, '2019-01-06 10:27:51', '2019-01-06 10:27:51', 4, NULL),
(5, '2018-09-01', '4200', 1, 1, '2019-01-06 10:28:06', '2019-01-06 10:28:06', 5, NULL),
(6, '2019-01-21', '40', 1, 1, '2019-01-21 15:27:48', '2019-01-21 15:27:48', 1, NULL),
(8, '2018-09-01', '5000', 1, 1, '2019-01-21 21:59:38', '2019-01-21 21:59:38', 9, NULL),
(9, '2018-01-01', '6000088.88', 1, 1, '2019-01-21 22:28:47', '2019-01-21 22:28:47', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `name`, `created_by_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Advertising.', 1, '2019-01-06 10:01:46', '2019-01-06 10:01:46', NULL),
(2, 'Car & Truck Expenses', 1, '2019-01-06 10:02:06', '2019-01-06 10:02:06', NULL),
(3, 'Contractors', 1, '2019-01-06 10:02:15', '2019-01-06 10:02:15', NULL),
(4, 'Education and Training', 1, '2019-01-06 10:02:25', '2019-01-06 10:02:25', NULL),
(5, 'Employee Benefits. Accident Insurance', 1, '2019-01-06 10:02:36', '2019-01-06 10:02:36', NULL),
(6, 'Meals & Entertainment', 1, '2019-01-06 10:02:48', '2019-01-06 10:02:48', NULL),
(7, 'Office Expenses & Postage', 1, '2019-01-06 10:02:59', '2019-01-06 10:02:59', NULL),
(8, 'Other Expenses. Bank Fees', 1, '2019-01-06 10:03:09', '2019-01-06 10:03:09', NULL),
(9, 'momo', 1, '2019-01-21 21:57:35', '2019-01-21 21:57:35', NULL),
(10, 'traval agency', 1, '2019-01-22 12:15:40', '2019-01-22 12:15:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `incomes`
--

CREATE TABLE `incomes` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_date` date DEFAULT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `income_category_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `incomes`
--

INSERT INTO `incomes` (`id`, `entry_date`, `amount`, `currency_id`, `created_by_id`, `created_at`, `updated_at`, `income_category_id`, `deleted_at`) VALUES
(1, '2019-01-06', '20000', 1, 1, '2019-01-06 10:04:15', '2019-01-06 10:04:15', 1, NULL),
(2, '2018-12-01', '20000', 1, 1, '2019-01-06 10:26:14', '2019-01-06 10:26:14', 3, NULL),
(4, '2018-10-01', '3000', 1, 1, '2019-01-06 10:26:57', '2019-01-06 10:26:57', 5, NULL),
(5, '2019-01-09', '0.4', 1, 1, '2019-01-21 15:24:39', '2019-01-21 15:24:39', 3, NULL),
(6, '2019-01-21', '50', 1, 1, '2019-01-21 15:27:18', '2019-01-21 15:27:18', 4, NULL),
(7, '2019-01-18', '2000', 1, 1, '2019-01-21 21:50:29', '2019-01-21 21:50:29', 5, NULL),
(8, '2018-09-01', '3000', 1, 1, '2019-01-21 21:59:05', '2019-01-21 21:59:05', 6, NULL),
(9, '2019-01-01', '70', 1, 1, '2019-01-22 12:19:05', '2019-01-22 12:19:05', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `income_categories`
--

CREATE TABLE `income_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `income_categories`
--

INSERT INTO `income_categories` (`id`, `name`, `created_by_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Factory', 1, '2019-01-06 09:59:32', '2019-01-06 09:59:32', NULL),
(2, 'Workshop', 1, '2019-01-06 09:59:55', '2019-01-06 09:59:55', NULL),
(3, 'Agency', 1, '2019-01-06 10:00:27', '2019-01-06 10:00:27', NULL),
(4, 'Bazar', 1, '2019-01-06 10:00:47', '2019-01-06 10:00:47', NULL),
(5, 'Enterpot', 1, '2019-01-06 10:00:59', '2019-01-06 10:00:59', NULL),
(6, 'Calling', 1, '2019-01-21 21:58:17', '2019-01-21 21:58:17', NULL),
(7, 'photographi', 1, '2019-01-22 12:17:17', '2019-01-22 12:17:17', NULL);

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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2018_01_22_185759_create_1516640279_roles_table', 1),
(3, '2018_01_22_185803_create_1516640282_users_table', 1),
(4, '2018_01_22_185804_add_5a66181e1a42f_relationships_to_user_table', 1),
(5, '2018_01_22_190208_create_1516640528_expense_categories_table', 1),
(6, '2018_01_22_190211_create_1516640531_income_categories_table', 1),
(7, '2018_01_22_190214_create_1516640533_incomes_table', 1),
(8, '2018_01_22_190215_add_5a6619198cd8e_relationships_to_income_table', 1),
(9, '2018_01_22_190219_create_1516640538_expenses_table', 1),
(10, '2018_01_22_190220_add_5a66191e46d52_relationships_to_expense_table', 1),
(11, '2018_01_23_131459_create_1516706098_currencies_table', 1),
(12, '2018_01_23_131500_add_5a67193712736_relationships_to_currency_table', 1),
(13, '2018_01_23_134138_add_5a671f72a89b7_relationships_to_currency_table', 1),
(14, '2018_02_02_132258_update_1517570578_expense_categories_table', 1),
(15, '2018_02_02_132300_add_5a744a1407a82_relationships_to_expensecategory_table', 1),
(16, '2018_02_02_133044_update_1517571044_income_categories_table', 1),
(17, '2018_02_02_133045_add_5a744be5ecf28_relationships_to_incomecategory_table', 1),
(18, '2018_02_02_133109_update_1517571069_incomes_table', 1),
(19, '2018_02_02_133110_add_5a744bfea67db_relationships_to_income_table', 1),
(20, '2018_02_02_133127_update_1517571087_expenses_table', 1),
(21, '2018_02_02_133129_add_5a744c118f805_relationships_to_expense_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Administrator (can create other users)', '2019-01-06 10:20:16', '2019-01-06 10:20:16'),
(2, 'Simple user', '2019-01-06 10:20:16', '2019-01-06 10:20:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `currency_id`, `created_at`, `updated_at`, `role_id`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$msflsjAZ7jGwsJBZ18Uthu.C8DWDzxdRGhuwQpFUgreL4MPPxU0zq', 'K4DUL6t5uF8Ej5btr59UgdxVIDll29dkSBN0pTKwTxd0X01APJkKBMaAHNLu', 1, '2019-01-06 10:20:16', '2019-01-06 10:20:16', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currencies_deleted_at_index` (`deleted_at`),
  ADD KEY `110358_5a671934ca476` (`created_by_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `110171_5a66191c7e168` (`expense_category_id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `incomes`
--
ALTER TABLE `incomes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `110170_5a661917c9a92` (`income_category_id`);

--
-- Indexes for table `income_categories`
--
ALTER TABLE `income_categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `110166_5a66181c209fb` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `incomes`
--
ALTER TABLE `incomes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `income_categories`
--
ALTER TABLE `income_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `currencies`
--
ALTER TABLE `currencies`
  ADD CONSTRAINT `110358_5a671934ca476` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `110171_5a66191c7e168` FOREIGN KEY (`expense_category_id`) REFERENCES `expense_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `incomes`
--
ALTER TABLE `incomes`
  ADD CONSTRAINT `110170_5a661917c9a92` FOREIGN KEY (`income_category_id`) REFERENCES `income_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `110166_5a66181c209fb` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
