-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 05, 2022 at 06:19 AM
-- Server version: 10.5.12-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u472877607_newcom`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'fiA7JskVM9HXRLzg3laDzfwKNJF1q96e', 1, '2021-12-31 06:43:31', '2021-12-31 01:13:30', '2021-12-31 01:13:31'),
(2, 2, 'bvro0qWm1WX1EeYgGLbqdfM8kORSC35o', 1, '2022-01-21 12:37:17', '2022-01-21 12:37:17', '2022-01-21 12:37:17'),
(3, 3, '6WD5cvuGmxytwfPZrkm0s3LtUROOEnNw', 1, '2022-01-28 11:25:21', '2022-01-28 11:25:21', '2022-01-28 11:25:21'),
(4, 4, 't8DIoMmLPxj1pBll0HDMs22ptDzxmNEe', 1, '2022-02-17 23:22:54', '2022-02-17 23:22:54', '2022-02-17 23:22:54'),
(5, 5, 'FNai2j7br2RuB2AudmqEoYre7rCOLFpN', 1, '2022-02-19 09:47:34', '2022-02-19 09:47:34', '2022-02-19 09:47:34');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_set_id` int(10) UNSIGNED NOT NULL,
  `is_filterable` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `attribute_set_id`, `is_filterable`, `created_at`, `updated_at`, `slug`) VALUES
(1, 1, 1, '2022-01-06 22:31:58', '2022-01-06 22:31:58', 'nodepipeline'),
(2, 2, 1, '2022-01-06 22:32:10', '2022-01-06 22:32:10', 'pipeline'),
(3, 3, 1, '2022-01-06 22:32:25', '2022-01-06 22:32:25', 'testpipeline'),
(4, 1, 1, '2022-02-19 09:34:47', '2022-02-19 09:34:47', 'size'),
(5, 4, 1, '2022-03-10 20:29:51', '2022-03-10 20:29:51', 'option');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_categories`
--

CREATE TABLE `attribute_categories` (
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_categories`
--

INSERT INTO `attribute_categories` (`attribute_id`, `category_id`) VALUES
(1, 13),
(2, 6),
(3, 21),
(4, 10),
(4, 15),
(4, 17),
(4, 18),
(4, 19),
(5, 10),
(5, 12),
(5, 13),
(5, 14);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_sets`
--

CREATE TABLE `attribute_sets` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_sets`
--

INSERT INTO `attribute_sets` (`id`, `created_at`, `updated_at`) VALUES
(1, '2022-01-06 22:31:25', '2022-01-06 22:31:25'),
(2, '2022-01-06 22:31:33', '2022-01-06 22:31:33'),
(3, '2022-01-06 22:31:43', '2022-01-06 22:31:43'),
(4, '2022-03-10 20:28:44', '2022-03-10 20:28:44');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_set_translations`
--

CREATE TABLE `attribute_set_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_set_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_set_translations`
--

INSERT INTO `attribute_set_translations` (`id`, `attribute_set_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'Discounted'),
(2, 2, 'en', 'Easy'),
(3, 3, 'en', 'demopipeline'),
(4, 4, 'en', 'Colour');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_translations`
--

CREATE TABLE `attribute_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_translations`
--

INSERT INTO `attribute_translations` (`id`, `attribute_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'nodepipeline'),
(2, 2, 'en', 'pipeline'),
(3, 3, 'en', 'testpipeline'),
(4, 4, 'en', 'Size'),
(5, 5, 'en', 'option');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `attribute_id`, `position`, `created_at`, `updated_at`) VALUES
(1, 1, 0, '2022-01-06 22:32:32', '2022-01-06 22:32:32'),
(2, 2, 0, '2022-01-06 22:32:42', '2022-01-06 22:32:42'),
(3, 3, 0, '2022-01-06 22:32:48', '2022-01-06 22:32:48');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_value_translations`
--

CREATE TABLE `attribute_value_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_value_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_value_translations`
--

INSERT INTO `attribute_value_translations` (`id`, `attribute_value_id`, `locale`, `value`) VALUES
(1, 1, 'en', '20'),
(2, 2, 'en', '15'),
(3, 3, 'en', '18');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `slug`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'nodepipeline', 1, '2022-01-06 22:25:12', '2022-01-06 22:25:12'),
(2, 'testpipeline', 1, '2022-01-06 22:29:38', '2022-01-06 22:29:43'),
(3, 'pipeline', 1, '2022-01-06 22:29:53', '2022-01-06 22:29:53');

-- --------------------------------------------------------

--
-- Table structure for table `brand_translations`
--

CREATE TABLE `brand_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(11) NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brand_translations`
--

INSERT INTO `brand_translations` (`id`, `brand_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'nodepipeline'),
(2, 2, 'en', 'testpipeline'),
(3, 3, 'en', 'pipeline');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(10) UNSIGNED DEFAULT NULL,
  `is_searchable` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `slug`, `position`, `is_searchable`, `is_active`, `created_at`, `updated_at`) VALUES
(6, NULL, 'bearing', 0, 1, 1, '2022-01-06 21:49:52', '2022-06-10 19:16:27'),
(8, NULL, 'ball-bearing', 3, 1, 1, '2022-01-06 21:51:35', '2022-06-10 19:16:27'),
(9, 6, 'tapered-roller-bearing', 1, 1, 1, '2022-01-06 21:52:17', '2022-06-10 19:16:27'),
(10, NULL, 'filters', 14, 1, 1, '2022-01-06 21:52:41', '2022-06-10 19:16:27'),
(11, 10, 'air-filter', 17, 1, 1, '2022-01-06 21:52:59', '2022-06-10 19:16:27'),
(12, 10, 'fuel-filter', 16, 1, 1, '2022-01-06 21:53:13', '2022-06-10 19:16:27'),
(13, 10, 'oil-filter', 15, 1, 1, '2022-01-06 21:53:38', '2022-06-10 19:16:27'),
(14, NULL, 'hydraulic-component', 12, 1, 1, '2022-01-06 21:54:49', '2022-06-10 19:16:27'),
(15, 14, 'coil', 13, 1, 1, '2022-01-06 21:55:12', '2022-06-10 19:16:27'),
(17, NULL, 'flow-control-valves', 11, 1, 1, '2022-01-06 21:56:28', '2022-06-10 19:16:27'),
(18, NULL, 'hydraulic-pumps', 10, 1, 1, '2022-01-06 21:56:55', '2022-06-10 19:16:27'),
(19, NULL, 'miscellaneous-parts', 9, 1, 1, '2022-01-06 21:57:49', '2022-06-10 19:16:27'),
(20, NULL, 'moduler-valves', 8, 1, 1, '2022-01-06 21:58:28', '2022-06-10 19:16:27'),
(21, NULL, 'pressure-control-valve', 7, 1, 1, '2022-01-06 21:59:15', '2022-06-10 19:16:27'),
(22, NULL, 'my-second-product', 5, 1, 1, '2022-02-11 23:08:43', '2022-06-10 19:16:27'),
(23, 22, 'sub-category', 6, 1, 1, '2022-02-11 23:09:04', '2022-06-10 19:16:27'),
(29, NULL, 'abcd', 4, 1, 1, '2022-03-10 20:18:59', '2022-06-10 19:16:27'),
(30, 6, 'xyz', 2, 1, 1, '2022-03-10 20:22:59', '2022-06-10 19:16:27');

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `locale`, `name`) VALUES
(6, 6, 'en', 'Bearing'),
(8, 8, 'en', 'Ball Bearing'),
(9, 9, 'en', 'Tapered Roller Bearing'),
(10, 10, 'en', 'Filters'),
(11, 11, 'en', 'Air Filter'),
(12, 12, 'en', 'Fuel Filter'),
(13, 13, 'en', 'Oil Filter'),
(14, 14, 'en', 'Hydraulic Component'),
(15, 15, 'en', 'Coil'),
(17, 17, 'en', 'Flow Control Valves'),
(18, 18, 'en', 'Hydraulic Pumps'),
(19, 19, 'en', 'Miscellaneous Parts'),
(20, 20, 'en', 'Moduler Valves'),
(21, 21, 'en', 'Pressure Control Valve'),
(22, 22, 'en', 'My Second Product'),
(23, 23, 'en', 'sub category'),
(29, 29, 'en', 'abcd'),
(30, 30, 'en', 'xyz');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(18,4) UNSIGNED DEFAULT NULL,
  `is_percent` tinyint(1) NOT NULL,
  `free_shipping` tinyint(1) NOT NULL,
  `minimum_spend` decimal(18,4) UNSIGNED DEFAULT NULL,
  `maximum_spend` decimal(18,4) UNSIGNED DEFAULT NULL,
  `usage_limit_per_coupon` int(10) UNSIGNED DEFAULT NULL,
  `usage_limit_per_customer` int(10) UNSIGNED DEFAULT NULL,
  `used` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_categories`
--

CREATE TABLE `coupon_categories` (
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `exclude` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_products`
--

CREATE TABLE `coupon_products` (
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `exclude` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_translations`
--

CREATE TABLE `coupon_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cross_sell_products`
--

CREATE TABLE `cross_sell_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `cross_sell_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currency_rates`
--

CREATE TABLE `currency_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(8,4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency_rates`
--

INSERT INTO `currency_rates` (`id`, `currency`, `rate`, `created_at`, `updated_at`) VALUES
(1, 'USD', '1.0000', '2021-12-31 01:13:44', '2021-12-31 01:13:44'),
(2, 'INR', '1.0000', '2022-01-08 22:02:45', '2022-01-08 22:02:45');

-- --------------------------------------------------------

--
-- Table structure for table `default_addresses`
--

CREATE TABLE `default_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `address_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `entity_files`
--

CREATE TABLE `entity_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED NOT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` bigint(20) UNSIGNED NOT NULL,
  `zone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `entity_files`
--

INSERT INTO `entity_files` (`id`, `file_id`, `entity_type`, `entity_id`, `zone`, `created_at`, `updated_at`) VALUES
(1, 1, 'Modules\\Category\\Entities\\Category', 1, 'logo', '2021-12-31 07:51:14', '2021-12-31 07:51:14'),
(2, 1, 'Modules\\Category\\Entities\\Category', 1, 'banner', '2021-12-31 07:51:14', '2021-12-31 07:51:14'),
(3, 4, 'Modules\\Product\\Entities\\Product', 2, 'base_image', '2022-01-06 22:14:32', '2022-01-06 22:14:32'),
(4, 3, 'Modules\\Product\\Entities\\Product', 1, 'base_image', '2022-01-06 22:14:45', '2022-01-06 22:14:45'),
(10, 5, 'Modules\\Product\\Entities\\Product', 3, 'base_image', '2022-01-06 22:29:00', '2022-01-06 22:29:00'),
(12, 6, 'Modules\\Product\\Entities\\Product', 4, 'base_image', '2022-01-06 22:29:19', '2022-01-06 22:29:19'),
(13, 13, 'Modules\\Brand\\Entities\\Brand', 3, 'logo', '2022-01-08 20:55:18', '2022-01-08 20:55:18'),
(14, 21, 'Modules\\Brand\\Entities\\Brand', 3, 'banner', '2022-01-08 20:55:18', '2022-01-08 20:55:18'),
(15, 13, 'Modules\\Brand\\Entities\\Brand', 2, 'logo', '2022-01-08 20:55:44', '2022-01-08 20:55:44'),
(16, 19, 'Modules\\Brand\\Entities\\Brand', 2, 'banner', '2022-01-08 20:55:44', '2022-01-08 20:55:44'),
(17, 13, 'Modules\\Brand\\Entities\\Brand', 1, 'logo', '2022-01-08 20:56:44', '2022-01-08 20:56:44'),
(18, 20, 'Modules\\Brand\\Entities\\Brand', 1, 'banner', '2022-01-08 20:56:44', '2022-01-08 20:56:44');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `user_id`, `filename`, `disk`, `path`, `extension`, `mime`, `size`, `created_at`, `updated_at`) VALUES
(1, 1, 'c13be5127ac7d53d1c0614fa6261b143.jpg', 'public_storage', 'media/QxPNql1EznpHUguyDYRSNycxHy4zEIgiAyEmEcBq.jpg', 'jpg', 'image/jpeg', '108054', '2021-12-31 07:50:56', '2021-12-31 07:50:56'),
(2, 1, 'SDGRZ0104200-1.png', 'public_storage', 'media/J7BO50IXfqenWg2Y5tKLQxucnHV03UWYTdycDY2Z.png', 'png', 'image/png', '63358', '2022-01-06 21:46:15', '2022-01-06 21:46:15'),
(3, 1, 'SDGRZ0104200-1.png', 'public_storage', 'media/kCSLdl43McKAAYVJkIdhC1UGANNRfoqfOzVfbqWk.png', 'png', 'image/png', '63358', '2022-01-06 22:06:14', '2022-01-06 22:06:14'),
(4, 1, 'download-26-1.jpg', 'public_storage', 'media/F2cqWoqM7urrgyrdHX97KebVJRI8qEdruR9UYmz1.jpg', 'jpg', 'image/jpeg', '2417', '2022-01-06 22:14:16', '2022-01-06 22:14:16'),
(5, 1, 'SDGRZ0105700-1.png', 'public_storage', 'media/JXjR7dbAF2ll2GvEBNDXYWjelEB1ghYQlw6vBStK.png', 'png', 'image/png', '36633', '2022-01-06 22:17:27', '2022-01-06 22:17:27'),
(6, 1, 'waste-oil-drain-pressurized-500x500-1-1.jpg', 'public_storage', 'media/pykYoZan1KaGbhc4TqHLDRvQ61jy8wdisb0WjXU0.jpg', 'jpg', 'image/jpeg', '10604', '2022-01-06 22:22:54', '2022-01-06 22:22:54'),
(7, 1, '1632809696406_bothtolargoyenda_2560x720images-tab.jpeg', 'public_storage', 'media/VHkUYLksPLvJ4X2imwG39yzEep2et9DqBYwDNNFS.jpg', 'jpg', 'image/jpeg', '436896', '2022-01-08 14:23:55', '2022-01-08 14:23:55'),
(8, 1, '1632483050194_itisrikanto_2560x720images-tab.jpeg', 'public_storage', 'media/B5vwe7kLHxXvWucUS0pLSnXoTDaFVkUgJyRnX4Fh.jpg', 'jpg', 'image/jpeg', '424000', '2022-01-08 14:31:57', '2022-01-08 14:31:57'),
(9, 1, 'yAaq3dHTWLOlac12ioxGgVrZ3xtrIhKnL5r3roIl.png', 'public_storage', 'media/yBWpgpOJJ0O6IfogqvIlADU9gI4xKyI4W6sYhtKG.png', 'png', 'image/png', '45275', '2022-01-08 20:23:49', '2022-01-08 20:23:49'),
(10, 1, 'kTJZ8JjEO16NYuj28aN9f88c1SKIm9ELvYOE8pvC.png', 'public_storage', 'media/KVSnL6plghwRRuFqJwpjUltQsR19SXhEsfJolt6Y.png', 'png', 'image/png', '115448', '2022-01-08 20:24:10', '2022-01-08 20:24:10'),
(12, 1, 'sI7VgfyGD34wV72X3pk8CCCI3QrpsZu1TiEM3kJ6.png', 'public_storage', 'media/luqqKaX0fsR1wGbJxYRRTmIOohEWucB7H0TmkbZj.png', 'png', 'image/png', '96517', '2022-01-08 20:24:41', '2022-01-08 20:24:41'),
(13, 1, 'download.png', 'public_storage', 'media/m9kni3G0cJXdKmbg3uGMvK1cqCbEgkZ13JtstEA2.png', 'png', 'image/png', '3675', '2022-01-08 20:28:11', '2022-01-08 20:28:11'),
(14, 1, 'r28gsyypi1oT531dU1MY1EjSskTWQbRIm7OHyTCl.png', 'public_storage', 'media/OeQp5uOx0f4TAP4EUCNWwU6Vs9LGWsHvOewiHIWK.png', 'png', 'image/png', '4483', '2022-01-08 20:29:25', '2022-01-08 20:29:25'),
(15, 1, 'yl6rNkswnKQzh7mouQ0HpagRLwBpnq3Mt9LZMRak.png', 'public_storage', 'media/iJVhWIzyfAiWVCRK8PrbTUhHyKNAf1kBOWM8hCjS.png', 'png', 'image/png', '26118', '2022-01-08 20:38:37', '2022-01-08 20:38:37'),
(16, 1, '5siKhRlEDQFmbiJRwCNBW3rDsbG7m1r2PibvtNeF.png', 'public_storage', 'media/X13sbGXMtId5QxrsBC8LnFbn2YIP954bpNEr2KHm.png', 'png', 'image/png', '50693', '2022-01-08 20:38:43', '2022-01-08 20:38:43'),
(17, 1, '3YFgcINuEaLyLvy6QjxKwKVDMALI9qzmXEN7Vqx3.png', 'public_storage', 'media/KmXEZTtsW9M91Woog1VWtdftBNLEbG2cwPOla6jR.png', 'png', 'image/png', '87517', '2022-01-08 20:41:29', '2022-01-08 20:41:29'),
(18, 1, 'vm21euwszrldK6E9iEtqsm2WtiJ4OyaA7VIGHPe3.png', 'public_storage', 'media/GsZClMgyKHmCnCkZp8fhDKwDigVKqj4YMex5QYTT.png', 'png', 'image/png', '33538', '2022-01-08 20:49:03', '2022-01-08 20:49:03'),
(19, 1, 'SnNz5B0YIEGCw1OdLhFJbqF7hfCNc80adaLCdqOE.png', 'public_storage', 'media/phFDgJy7RW4yuQ0q7XuxlDb0BGx7hzxKXwaFylkZ.png', 'png', 'image/png', '17622', '2022-01-08 20:51:54', '2022-01-08 20:51:54'),
(20, 1, '3YFgcINuEaLyLvy6QjxKwKVDMALI9qzmXEN7Vqx3 (1).png', 'public_storage', 'media/W1y2QbOnKgWu0FbeQCPOYU1VFsJrxuXVpGuQvKpi.png', 'png', 'image/png', '87517', '2022-01-08 20:52:25', '2022-01-08 20:52:25'),
(21, 1, 'pmQxhyWNznFCMZvc4KTv4HNk4RfG3eBlNqR0xsCt.png', 'public_storage', 'media/8k1pbZCZB9eIdFNq6aX5cNMFglTIi4SF6wfcBcSW.png', 'png', 'image/png', '8962', '2022-01-08 20:53:07', '2022-01-08 20:53:07'),
(22, 1, 'VVyvSfw4dAZI57qelPofORurzNNc7rDlsxVbTO5m.png', 'public_storage', 'media/SR8aZIQeZPa8mkAJNcYxB02wbSveuqSxdFJ1mCzZ.png', 'png', 'image/png', '23812', '2022-01-08 21:03:09', '2022-01-08 21:03:09'),
(23, 1, 'kSSkGodUfAKYy1UVZ8CicO8oay5PKO4L3DdEE9Tw.png', 'public_storage', 'media/WHCPzqVMczytcvdbdsUQgsCRetcQFxQlJLtl4RJ3.png', 'png', 'image/png', '36455', '2022-01-08 21:03:20', '2022-01-08 21:03:20'),
(24, 1, '32Z48wigiMEXJZLDUN20Ea0f7NTMKZHf93qHFtLg.png', 'public_storage', 'media/2g1LyIDtXXHWTszY8TUDz95MWv2CAY0hSm3lhr7z.png', 'png', 'image/png', '65281', '2022-01-08 21:06:27', '2022-01-08 21:06:27'),
(25, 1, 'tUZc6W65OryxcoIDT1umT0irIynod8t904Q7bRbG.png', 'public_storage', 'media/4lef8Axg7YW7Vbb6Q602IrqlpzidayKipglEHU1K.png', 'png', 'image/png', '20219', '2022-01-08 21:06:35', '2022-01-08 21:06:35'),
(26, 1, 'QXeAdEOGLNAIj5Ntx7prAuuHRJmqNebRckNhV5WS.png', 'public_storage', 'media/SPB3Mr4x4h3xoL0niCS9zc93wWsyewmlx6EIbSy0.png', 'png', 'image/png', '28886', '2022-01-08 21:06:46', '2022-01-08 21:06:46'),
(27, 1, 'kRb5N2mGVnso21KKTsxenE4GuH3fjej5r2m8vY8V.png', 'public_storage', 'media/xnlVynCBQU5qypR7Y4qc4ZhdWsXGyATxaXegjFuX.png', 'png', 'image/png', '61739', '2022-01-08 21:59:16', '2022-01-08 21:59:16'),
(28, 1, 'Saprezone (1) (1).png', 'public_storage', 'media/mIvVzsz0DePjUthYd9H9KV69RNfimJ7N8k2eU5A7.png', 'png', 'image/png', '150926', '2022-01-28 14:05:40', '2022-01-28 14:05:40'),
(29, 1, 'EC1F05FE-CBE4-4515-B2C9-0EDD273E3175.jpeg', 'public_storage', 'media/AV5jv9cEqxzQvUxYSOA3JQOnnfVPuKJ1GCVx2blA.jpg', 'jpg', 'image/jpeg', '41583', '2022-02-04 00:11:28', '2022-02-04 00:11:28'),
(30, 1, 'AV5jv9cEqxzQvUxYSOA3JQOnnfVPuKJ1GCVx2blA.jpg', 'public_storage', 'media/ZTxu3cDyTRTVUzS91HCEW4SIUjIKiulFSF5ToyYc.jpg', 'jpg', 'image/jpeg', '41583', '2022-02-19 09:42:21', '2022-02-19 09:42:21');

-- --------------------------------------------------------

--
-- Table structure for table `flash_sales`
--

CREATE TABLE `flash_sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sales`
--

INSERT INTO `flash_sales` (`id`, `created_at`, `updated_at`) VALUES
(1, '2022-01-06 22:38:14', '2022-01-06 22:38:14');

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale_products`
--

CREATE TABLE `flash_sale_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `flash_sale_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `end_date` date NOT NULL,
  `price` decimal(18,4) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sale_products`
--

INSERT INTO `flash_sale_products` (`id`, `flash_sale_id`, `product_id`, `end_date`, `price`, `qty`, `position`) VALUES
(1, 1, 2, '2022-01-05', '290.0000', 12, 0),
(2, 1, 4, '2022-01-20', '3223.0000', 23, 1);

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale_product_orders`
--

CREATE TABLE `flash_sale_product_orders` (
  `flash_sale_product_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale_translations`
--

CREATE TABLE `flash_sale_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `flash_sale_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `campaign_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sale_translations`
--

INSERT INTO `flash_sale_translations` (`id`, `flash_sale_id`, `locale`, `campaign_name`) VALUES
(1, 1, 'en', 'Republic Sale');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `is_active`, `created_at`, `updated_at`) VALUES
(3, 1, '2022-01-08 20:12:16', '2022-01-08 20:12:16'),
(4, 1, '2022-01-14 23:15:59', '2022-01-14 23:15:59'),
(5, 1, '2022-02-17 16:11:14', '2022-02-17 16:11:14'),
(6, 1, '2022-02-19 09:43:29', '2022-02-19 09:43:29');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `page_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(10) UNSIGNED DEFAULT NULL,
  `is_root` tinyint(1) NOT NULL DEFAULT 0,
  `is_fluid` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `parent_id`, `category_id`, `page_id`, `type`, `url`, `icon`, `target`, `position`, `is_root`, `is_fluid`, `is_active`, `created_at`, `updated_at`) VALUES
(6, 3, NULL, NULL, NULL, 'URL', NULL, NULL, '_self', 0, 1, 0, 1, '2022-01-08 20:12:16', '2022-01-08 20:12:16'),
(7, 3, 6, NULL, NULL, 'url', 'http://seraphictales.in/Newcom/public/products', '<i class=\"las la-car-battery\"></i>', '_self', 0, 0, 0, 1, '2022-01-08 20:12:35', '2022-01-14 23:14:33'),
(8, 3, 6, NULL, NULL, 'url', 'http://seraphictales.in/Newcom/public/en/brands', '<i class=\"las la-car-battery\"></i>', '_self', 2, 0, 1, 1, '2022-01-08 20:16:26', '2022-01-21 14:31:24'),
(9, 3, 6, NULL, NULL, 'url', 'http://seraphictales.in/Newcom/public/about-us', '<i class=\"las la-car-battery\"></i>', '_self', 2, 0, 1, 0, '2022-01-08 20:17:05', '2022-01-08 20:21:11'),
(10, 3, 6, NULL, NULL, 'url', 'https://seraphictales.in/Newcom/public/en/terms-conditions', '<i class=\"las la-car-battery\"></i>', '_self', 3, 0, 1, 0, '2022-01-08 20:17:57', '2022-01-08 20:21:15'),
(11, 3, 6, NULL, NULL, 'url', 'https://seraphictales.in/Newcom/public/en/faq', '<i class=\"las la-car-battery\"></i>', '_self', 4, 0, 1, 0, '2022-01-08 20:18:39', '2022-01-08 20:21:19'),
(14, 3, 7, NULL, NULL, 'url', 'http://seraphictales.in/Newcom/public/products', '<i class=\"las la-car-battery\"></i>', '_self', 0, 0, 1, 1, '2022-01-14 23:05:18', '2022-01-21 14:31:00'),
(15, 3, 7, NULL, NULL, 'url', 'http://seraphictales.in/Newcom/public/products', '<i class=\"las la-car-battery\"></i>', '_self', 1, 0, 1, 1, '2022-01-14 23:06:03', '2022-01-21 14:31:00'),
(16, 3, 7, NULL, NULL, 'url', '/products', NULL, '_self', 2, 0, 0, 1, '2022-01-14 23:14:16', '2022-01-21 14:31:00'),
(17, 4, NULL, NULL, NULL, 'URL', NULL, NULL, '_self', 0, 1, 0, 1, '2022-01-14 23:15:59', '2022-01-14 23:15:59'),
(18, 4, 17, NULL, NULL, 'url', '/products', NULL, '_self', NULL, 0, 0, 1, '2022-01-14 23:16:30', '2022-01-14 23:16:30'),
(19, 4, 17, NULL, NULL, 'url', '/products', NULL, '_self', NULL, 0, 0, 1, '2022-01-14 23:17:10', '2022-01-14 23:17:10'),
(20, 4, 17, NULL, NULL, 'url', '/products', NULL, '_self', NULL, 0, 0, 1, '2022-01-14 23:17:44', '2022-01-14 23:17:44'),
(21, 4, 17, NULL, NULL, 'url', '/products', NULL, '_self', NULL, 0, 0, 1, '2022-01-14 23:18:32', '2022-01-14 23:18:32'),
(22, 4, 17, NULL, NULL, 'url', '/products', NULL, '_self', NULL, 0, 0, 1, '2022-01-14 23:19:00', '2022-01-14 23:19:00'),
(23, 4, 17, NULL, NULL, 'url', '/products', NULL, '_self', NULL, 0, 0, 1, '2022-01-14 23:19:36', '2022-01-14 23:19:36'),
(24, 4, 18, NULL, NULL, 'url', '/products', NULL, '_self', NULL, 0, 0, 1, '2022-01-14 23:34:46', '2022-01-14 23:34:46'),
(25, 4, 18, NULL, NULL, 'url', '/products', NULL, '_self', NULL, 0, 0, 1, '2022-01-14 23:35:11', '2022-01-14 23:35:11'),
(26, 4, 18, NULL, NULL, 'url', '/products', NULL, '_self', NULL, 0, 0, 1, '2022-01-14 23:35:53', '2022-01-14 23:35:53'),
(27, 4, 19, NULL, NULL, 'url', '/products', NULL, '_self', NULL, 0, 0, 1, '2022-01-14 23:36:33', '2022-01-14 23:36:33'),
(28, 4, 19, NULL, NULL, 'url', '/products', NULL, '_self', NULL, 0, 0, 1, '2022-01-14 23:36:57', '2022-01-14 23:36:57'),
(29, 4, 19, NULL, NULL, 'url', '/products', NULL, '_self', NULL, 0, 0, 1, '2022-01-14 23:37:53', '2022-01-14 23:37:53'),
(30, 4, 19, NULL, NULL, 'url', '/products', NULL, '_self', NULL, 0, 0, 1, '2022-01-14 23:38:33', '2022-01-14 23:38:33'),
(31, 4, 20, NULL, NULL, 'url', '/products', NULL, '_self', NULL, 0, 0, 1, '2022-01-14 23:39:13', '2022-01-14 23:39:13'),
(32, 4, 21, NULL, NULL, 'url', '/products', NULL, '_self', NULL, 0, 0, 1, '2022-01-14 23:40:06', '2022-01-14 23:40:06'),
(33, 4, 21, NULL, NULL, 'url', '/products', NULL, '_self', NULL, 0, 0, 1, '2022-01-14 23:40:38', '2022-01-14 23:40:38'),
(34, 4, 21, NULL, NULL, 'url', '/products', NULL, '_self', NULL, 0, 0, 1, '2022-01-14 23:41:00', '2022-01-14 23:41:00'),
(35, 4, 21, NULL, NULL, 'url', '/products', NULL, '_self', NULL, 0, 0, 1, '2022-01-14 23:41:58', '2022-01-14 23:41:58'),
(36, 4, 21, NULL, NULL, 'url', '/products', NULL, '_self', NULL, 0, 0, 1, '2022-01-14 23:42:38', '2022-01-14 23:42:38'),
(37, 4, 22, NULL, NULL, 'url', '/products', NULL, '_self', NULL, 0, 0, 1, '2022-01-14 23:43:05', '2022-01-14 23:43:05'),
(38, 4, 22, NULL, NULL, 'url', '/products', NULL, '_self', NULL, 0, 0, 1, '2022-01-14 23:43:42', '2022-01-14 23:43:42'),
(39, 4, 23, NULL, NULL, 'url', '/products', NULL, '_self', NULL, 0, 0, 1, '2022-01-14 23:44:29', '2022-01-14 23:44:29'),
(40, 5, NULL, NULL, NULL, 'URL', NULL, NULL, '_self', 0, 1, 0, 1, '2022-02-17 16:11:14', '2022-02-17 16:11:14'),
(41, 6, NULL, NULL, NULL, 'URL', NULL, NULL, '_self', 0, 1, 0, 1, '2022-02-19 09:43:29', '2022-02-19 09:43:29'),
(42, 6, 41, 6, NULL, 'category', NULL, NULL, '_self', 0, 0, 0, 1, '2022-02-19 09:44:15', '2022-02-19 09:44:23'),
(43, 6, 41, 14, NULL, 'category', NULL, NULL, '_self', NULL, 0, 0, 1, '2022-02-19 09:44:42', '2022-02-19 09:44:42');

-- --------------------------------------------------------

--
-- Table structure for table `menu_item_translations`
--

CREATE TABLE `menu_item_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_item_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_item_translations`
--

INSERT INTO `menu_item_translations` (`id`, `menu_item_id`, `locale`, `name`) VALUES
(6, 6, 'en', 'root'),
(7, 7, 'en', 'Shop'),
(8, 8, 'en', 'Brands'),
(9, 9, 'en', 'About Us'),
(10, 10, 'en', 'Terms & Conditions'),
(11, 11, 'en', 'FAQ'),
(14, 14, 'en', 'PU PIPE'),
(15, 15, 'en', 'PU Connectors'),
(16, 16, 'en', 'HP'),
(17, 17, 'en', 'root'),
(18, 18, 'en', 'Pneumatic Components'),
(19, 19, 'en', 'Hydraulic Components'),
(20, 20, 'en', 'Accelerator Cables'),
(21, 21, 'en', 'Bearings'),
(22, 22, 'en', 'Filters'),
(23, 23, 'en', 'Hydra Crane Spares'),
(24, 24, 'en', 'PU Connector\'s'),
(25, 25, 'en', 'PU Pipe'),
(26, 26, 'en', 'Solenoid Valve'),
(27, 27, 'en', 'Pressure Gauge'),
(28, 28, 'en', 'Gear Pumps'),
(29, 29, 'en', 'Hydraulic Pumps'),
(30, 30, 'en', 'Jacks'),
(31, 31, 'en', 'Accelerator Ball Point'),
(32, 32, 'en', 'Angular Contact Bearing'),
(33, 33, 'en', 'Ball Bearing'),
(34, 34, 'en', 'Bearing Block'),
(35, 35, 'en', 'Cylindrical Roller Bearing'),
(36, 36, 'en', 'Double Row Ball Bearing'),
(37, 37, 'en', 'Air Filter'),
(38, 38, 'en', 'Filter Body Assembly'),
(39, 39, 'en', 'Hydraulic Spare'),
(40, 40, 'en', 'root'),
(41, 41, 'en', 'root'),
(42, 42, 'en', 'All'),
(43, 43, 'en', 'Second');

-- --------------------------------------------------------

--
-- Table structure for table `menu_translations`
--

CREATE TABLE `menu_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_translations`
--

INSERT INTO `menu_translations` (`id`, `menu_id`, `locale`, `name`) VALUES
(3, 3, 'en', 'Shop'),
(4, 4, 'en', 'Category Menu'),
(5, 5, 'en', 'Testing Zone'),
(6, 6, 'en', 'Category Test on my bridge');

-- --------------------------------------------------------

--
-- Table structure for table `meta_data`
--

CREATE TABLE `meta_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_data`
--

INSERT INTO `meta_data` (`id`, `entity_type`, `entity_id`, `created_at`, `updated_at`) VALUES
(1, 'Modules\\Product\\Entities\\Product', 1, '2022-01-06 22:10:24', '2022-01-06 22:10:24'),
(2, 'Modules\\Product\\Entities\\Product', 2, '2022-01-06 22:13:54', '2022-01-06 22:13:54'),
(3, 'Modules\\Product\\Entities\\Product', 3, '2022-01-06 22:17:37', '2022-01-06 22:17:37'),
(4, 'Modules\\Product\\Entities\\Product', 4, '2022-01-06 22:23:00', '2022-01-06 22:23:00'),
(5, 'Modules\\Brand\\Entities\\Brand', 1, '2022-01-06 22:25:12', '2022-01-06 22:25:12'),
(6, 'Modules\\Brand\\Entities\\Brand', 2, '2022-01-06 22:29:38', '2022-01-06 22:29:38'),
(7, 'Modules\\Brand\\Entities\\Brand', 3, '2022-01-06 22:29:53', '2022-01-06 22:29:53'),
(8, 'Modules\\Page\\Entities\\Page', 1, '2022-01-08 15:20:41', '2022-01-08 15:20:41'),
(9, 'Modules\\Product\\Entities\\Product', 5, '2022-02-02 16:37:59', '2022-02-02 16:37:59'),
(10, 'Modules\\Product\\Entities\\Product', 6, '2022-02-11 22:55:52', '2022-02-11 22:55:52'),
(11, 'Modules\\Page\\Entities\\Page', 2, '2022-02-19 09:41:48', '2022-02-19 09:41:48');

-- --------------------------------------------------------

--
-- Table structure for table `meta_data_translations`
--

CREATE TABLE `meta_data_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_data_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_data_translations`
--

INSERT INTO `meta_data_translations` (`id`, `meta_data_id`, `locale`, `meta_title`, `meta_description`) VALUES
(1, 1, 'en', NULL, NULL),
(2, 2, 'en', NULL, NULL),
(3, 3, 'en', NULL, NULL),
(4, 4, 'en', NULL, NULL),
(5, 5, 'en', NULL, NULL),
(6, 6, 'en', NULL, NULL),
(7, 7, 'en', NULL, NULL),
(8, 8, 'en', NULL, NULL),
(9, 9, 'en', NULL, NULL),
(10, 10, 'en', NULL, NULL),
(11, 11, 'en', NULL, NULL);

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
(1, '2014_07_02_230147_migration_cartalyst_sentinel', 1),
(2, '2014_10_14_200250_create_settings_table', 1),
(3, '2014_10_26_162751_create_files_table', 1),
(4, '2014_10_30_191858_create_pages_table', 1),
(5, '2014_11_31_125848_create_page_translations_table', 1),
(6, '2015_02_27_105241_create_entity_files_table', 1),
(7, '2015_11_20_184604486385_create_translations_table', 1),
(8, '2015_11_20_184604743083_create_translation_translations_table', 1),
(9, '2017_05_29_155126144426_create_products_table', 1),
(10, '2017_05_30_155126416338_create_product_translations_table', 1),
(11, '2017_08_02_153217_create_options_table', 1),
(12, '2017_08_02_153348_create_option_translations_table', 1),
(13, '2017_08_02_153406_create_option_values_table', 1),
(14, '2017_08_02_153736_create_option_value_translations_table', 1),
(15, '2017_08_03_156576_create_product_options_table', 1),
(16, '2017_08_17_170128_create_related_products_table', 1),
(17, '2017_08_17_175236_create_up_sell_products_table', 1),
(18, '2017_08_17_175828_create_cross_sell_products_table', 1),
(19, '2017_11_09_141332910964_create_categories_table', 1),
(20, '2017_11_09_141332931539_create_category_translations_table', 1),
(21, '2017_11_26_083614526622_create_meta_data_table', 1),
(22, '2017_11_26_083614526828_create_meta_data_translations_table', 1),
(23, '2018_01_24_125642_create_product_categories_table', 1),
(24, '2018_02_04_150917488267_create_coupons_table', 1),
(25, '2018_02_04_150917488698_create_coupon_translations_table', 1),
(26, '2018_03_11_181317_create_coupon_products_table', 1),
(27, '2018_03_15_091937_create_coupon_categories_table', 1),
(28, '2018_04_18_154028776225_create_reviews_table', 1),
(29, '2018_05_17_115822452977_create_currency_rates_table', 1),
(30, '2018_07_03_124153537506_create_sliders_table', 1),
(31, '2018_07_03_124153537695_create_slider_translations_table', 1),
(32, '2018_07_03_133107770172_create_slider_slides_table', 1),
(33, '2018_07_03_133107770486_create_slider_slide_translations_table', 1),
(34, '2018_07_28_190524758357_create_attribute_sets_table', 1),
(35, '2018_07_28_190524758497_create_attribute_set_translations_table', 1),
(36, '2018_07_28_190524758646_create_attributes_table', 1),
(37, '2018_07_28_190524758877_create_attribute_translations_table', 1),
(38, '2018_07_28_190524759461_create_product_attributes_table', 1),
(39, '2018_08_01_001919718631_create_tax_classes_table', 1),
(40, '2018_08_01_001919718935_create_tax_class_translations_table', 1),
(41, '2018_08_01_001919723551_create_tax_rates_table', 1),
(42, '2018_08_01_001919723781_create_tax_rate_translations_table', 1),
(43, '2018_08_03_195922206748_create_attribute_values_table', 1),
(44, '2018_08_03_195922207019_create_attribute_value_translations_table', 1),
(45, '2018_08_04_190524764275_create_product_attribute_values_table', 1),
(46, '2018_08_07_135631306565_create_orders_table', 1),
(47, '2018_08_07_135631309451_create_order_products_table', 1),
(48, '2018_08_07_135631309512_create_order_product_options_table', 1),
(49, '2018_08_07_135631309624_create_order_product_option_values_table', 1),
(50, '2018_09_11_213926106353_create_transactions_table', 1),
(51, '2018_09_19_081602135631_create_order_taxes_table', 1),
(52, '2018_09_19_103745_create_setting_translations_table', 1),
(53, '2018_10_01_224852175056_create_wish_lists_table', 1),
(54, '2018_10_04_185608_create_search_terms_table', 1),
(55, '2018_11_03_160015_create_menus_table', 1),
(56, '2018_11_03_160138_create_menu_translations_table', 1),
(57, '2018_11_03_160753_create_menu_items_table', 1),
(58, '2018_11_03_160804_create_menu_item_translation_table', 1),
(59, '2019_02_05_162605_add_position_to_slider_slides_table', 1),
(60, '2019_02_09_164343_remove_file_id_from_slider_slides_table', 1),
(61, '2019_02_09_164434_add_file_id_to_slider_slide_translations_table', 1),
(62, '2019_02_14_103408_create_attribute_categories_table', 1),
(63, '2019_08_09_164759_add_slug_column_to_attributes_table', 1),
(64, '2019_11_01_201511_add_special_price_type_column_to_products_table', 1),
(65, '2019_11_23_193101_add_value_column_to_order_product_options_table', 1),
(66, '2020_01_04_211424_add_icon_column_to_menu_items_table', 1),
(67, '2020_01_05_160502_add_direction_column_to_slider_slide_translations_table', 1),
(68, '2020_01_05_234014_add_speed_column_to_sliders_table', 1),
(69, '2020_01_05_235014_add_fade_column_to_sliders_table', 1),
(70, '2020_01_15_000346259038_create_flash_sales_table', 1),
(71, '2020_01_15_000346259349_create_flash_sale_translations_table', 1),
(72, '2020_01_23_011234_create_flash_sale_products_table', 1),
(73, '2020_01_30_015722_create_flash_sale_product_orders_table', 1),
(74, '2020_02_22_215943_delete_meta_keywords_column_from_meta_data_translations_table', 1),
(75, '2020_03_05_214602901973_create_brands_table', 1),
(76, '2020_03_05_214602902369_create_brand_translations_table', 1),
(77, '2020_03_06_234605_add_brand_id_column_to_products_table', 1),
(78, '2020_04_06_211526_add_note_column_to_orders_table', 1),
(79, '2020_04_28_034118164376_create_tags_table', 1),
(80, '2020_04_28_034118164618_create_tag_translations_table', 1),
(81, '2020_04_28_225657_create_product_tags_table', 1),
(82, '2020_05_10_041616_create_updater_scripts_table', 1),
(83, '2020_10_07_175000_create_addresses_table', 1),
(84, '2020_10_07_175004_create_default_addresses_table', 1),
(85, '2020_11_21_163822_add_downloads_columns_to_products_table', 1),
(86, '2021_01_08_203241_change_shipping_method_column_in_orders_table', 1),
(87, '2021_01_09_172744_add_phone_column_to_users_table', 1),
(88, '2021_01_11_170516_create_order_downloads_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_required` tinyint(1) NOT NULL,
  `is_global` tinyint(1) NOT NULL DEFAULT 1,
  `position` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `type`, `is_required`, `is_global`, `position`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'dropdown', 1, 1, NULL, NULL, '2022-01-06 22:33:58', '2022-01-06 22:33:58'),
(2, 'checkbox', 1, 1, NULL, NULL, '2022-01-06 22:34:14', '2022-01-06 22:34:14'),
(3, 'dropdown', 1, 1, NULL, NULL, '2022-03-10 20:32:45', '2022-03-10 20:32:45');

-- --------------------------------------------------------

--
-- Table structure for table `option_translations`
--

CREATE TABLE `option_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `option_translations`
--

INSERT INTO `option_translations` (`id`, `option_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'demo'),
(2, 2, 'en', 'Mradul'),
(3, 3, 'en', 'Colour');

-- --------------------------------------------------------

--
-- Table structure for table `option_values`
--

CREATE TABLE `option_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `price` decimal(18,4) UNSIGNED DEFAULT NULL,
  `price_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `option_values`
--

INSERT INTO `option_values` (`id`, `option_id`, `price`, `price_type`, `position`, `created_at`, `updated_at`) VALUES
(1, 3, '100.0000', 'fixed', 0, '2022-03-10 20:32:45', '2022-03-10 20:32:45'),
(2, 3, '105.0000', 'fixed', 1, '2022-03-10 20:32:45', '2022-03-10 20:32:45');

-- --------------------------------------------------------

--
-- Table structure for table `option_value_translations`
--

CREATE TABLE `option_value_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_value_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `option_value_translations`
--

INSERT INTO `option_value_translations` (`id`, `option_value_id`, `locale`, `label`) VALUES
(1, 1, 'en', 'red'),
(2, 2, 'en', 'yelloow');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_total` decimal(18,4) UNSIGNED NOT NULL,
  `shipping_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_cost` decimal(18,4) UNSIGNED NOT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `discount` decimal(18,4) UNSIGNED NOT NULL,
  `total` decimal(18,4) UNSIGNED NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` decimal(18,4) NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_downloads`
--

CREATE TABLE `order_downloads` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `unit_price` decimal(18,4) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `line_total` decimal(18,4) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_product_options`
--

CREATE TABLE `order_product_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_product_id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_product_option_values`
--

CREATE TABLE `order_product_option_values` (
  `order_product_option_id` int(10) UNSIGNED NOT NULL,
  `option_value_id` int(10) UNSIGNED NOT NULL,
  `price` decimal(18,4) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_taxes`
--

CREATE TABLE `order_taxes` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `tax_rate_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(15,4) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `slug`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'mradul-gupta', 0, '2022-01-08 15:20:41', '2022-01-08 15:20:41'),
(2, 'terms-and-conditions', 1, '2022-02-19 09:41:48', '2022-02-19 09:41:48');

-- --------------------------------------------------------

--
-- Table structure for table `page_translations`
--

CREATE TABLE `page_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_translations`
--

INSERT INTO `page_translations` (`id`, `page_id`, `locale`, `name`, `body`) VALUES
(1, 1, 'en', 'Jignesh Trivedi', '<p>jbhhjkhjkjkhnjkkoik</p>'),
(2, 2, 'en', 'Terms and conditions', '<p>Terms and conditions</p>\r\n<p>Terms and conditions</p>\r\n<p>Terms and conditions</p>\r\n<p>Terms and conditions</p>');

-- --------------------------------------------------------

--
-- Table structure for table `persistences`
--

CREATE TABLE `persistences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `persistences`
--

INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(1, 1, '8VMRHjAmpvX1wUhnSnYk5Wo6wZ8RYKCZ', '2021-12-31 07:24:25', '2021-12-31 07:24:25'),
(2, 1, '47iNiP4GDslKnEuaR1hIA6R4Q7ys5Gs7', '2022-01-06 13:40:58', '2022-01-06 13:40:58'),
(3, 1, 'fkfqBjZ9LPJLGHrnLlLUSWRkuQB1632M', '2022-01-06 19:52:17', '2022-01-06 19:52:17'),
(4, 1, '8n7o3k6yj015ZkTWHxwslebp965xxGXQ', '2022-01-06 21:38:12', '2022-01-06 21:38:12'),
(5, 1, 'RYz9nITchu8f8MKHgBpB6mJCsIT7Aq7e', '2022-01-08 14:14:03', '2022-01-08 14:14:03'),
(6, 1, 'MS7BRXiE2KZRwrKuaRui2VfBOYz9PJqd', '2022-01-08 14:44:13', '2022-01-08 14:44:13'),
(9, 1, 'sWEEzQ7Ue6ftz3KGqjfbwIoktlzkDiTj', '2022-01-14 22:57:00', '2022-01-14 22:57:00'),
(10, 1, 'tUTegkajWTDEbAuo0i7fixXWU2E6qEY0', '2022-01-19 13:30:35', '2022-01-19 13:30:35'),
(13, 1, 'hNeDwXjQg3Sg1Qk50BBBcjReKxuQYnY4', '2022-01-21 12:42:15', '2022-01-21 12:42:15'),
(15, 1, 'lNZbZH8irvMcZBMOy48U0FAJBc5CiTzg', '2022-01-21 14:30:01', '2022-01-21 14:30:01'),
(16, 1, 'XTZTSapdBYn2pafUEv99MI7KbdNDZpP3', '2022-01-21 23:32:30', '2022-01-21 23:32:30'),
(17, 1, 'JoEdXKCFV5zs3Ip6efCPUE1Gmd90xJRH', '2022-01-24 15:45:23', '2022-01-24 15:45:23'),
(18, 1, 'PSLkfauoUrMMqrDUdxWxkmQFRMar0Yuf', '2022-01-25 12:07:39', '2022-01-25 12:07:39'),
(22, 1, 'qmTtqxA4OXgzG27zVtQU9GPeKxeNPn4e', '2022-01-28 11:29:19', '2022-01-28 11:29:19'),
(24, 3, 'rs5cBUX8J6BFNgmDwOuZiL4RkA2xhmu6', '2022-01-28 15:01:02', '2022-01-28 15:01:02'),
(26, 1, 'rHyUyvwHhLhtxzJd4dXvrgQ95TBtl6C8', '2022-02-03 13:30:27', '2022-02-03 13:30:27'),
(28, 1, 'ZDXDvAn1HFZzrbmZ3o76skL6engiVhGj', '2022-02-04 00:10:20', '2022-02-04 00:10:20'),
(29, 1, 'jzrLNZTZkVNMcWnMpMvHGWLv9cKIibqC', '2022-02-07 21:23:22', '2022-02-07 21:23:22'),
(30, 1, 'oDuWMs9u3Zr2M6nd9grlXJN9kwlIetrU', '2022-02-10 13:40:08', '2022-02-10 13:40:08'),
(31, 1, '2DG3km4cmP7V0ZDG2ubTU8XGvLYUTCSs', '2022-02-10 13:41:38', '2022-02-10 13:41:38'),
(32, 1, 'uOJhjUiqLxV9yjB5EVakQO7qQZNf17DP', '2022-02-11 11:01:43', '2022-02-11 11:01:43'),
(33, 1, '98bOSeysxBYZ1ITNgdbrfUzWO5vIGWhR', '2022-02-11 11:07:21', '2022-02-11 11:07:21'),
(35, 1, 'u0zniazjrovplNGipMsz2fTI13M22t80', '2022-02-11 11:15:46', '2022-02-11 11:15:46'),
(37, 1, 'SWLFCudHJN4Lqr1X4i2rI4RdgOilBZ0v', '2022-02-11 22:53:32', '2022-02-11 22:53:32'),
(38, 1, 'NKm7EC4kL4yNL374EVNFgHDbLTItPsZY', '2022-02-15 22:42:21', '2022-02-15 22:42:21'),
(39, 1, 'ayrYMmxiyNz42TN0C5fk45j6ibzsvhEv', '2022-02-16 23:35:14', '2022-02-16 23:35:14'),
(40, 1, 'ZjjPr2m81LXhJZ134s9b7y9s9ggde49w', '2022-02-17 16:08:18', '2022-02-17 16:08:18'),
(41, 1, 'p0nggDybgsUSUZYDjqiTXnZQxU2RRIZ8', '2022-02-17 16:32:41', '2022-02-17 16:32:41'),
(43, 4, '5oaWY14wYJ0FPoZNVSt9ZSBcv551QG5i', '2022-02-17 23:25:30', '2022-02-17 23:25:30'),
(44, 1, 'lI90XcpJ15yA3gPnINrgcBzMHTjW7gy9', '2022-02-17 23:53:24', '2022-02-17 23:53:24'),
(48, 5, '7jroS4R19X1OoC27ie19JUM75nkYdKas', '2022-02-19 09:49:05', '2022-02-19 09:49:05'),
(49, 1, '2O3w2GuYuWmKgVAXxhoStB7bR4fAazHY', '2022-02-23 15:52:12', '2022-02-23 15:52:12'),
(51, 1, 'xlYUMvAVcNY2pZNAurGQZmGU1NpeMe7Y', '2022-02-23 19:52:09', '2022-02-23 19:52:09'),
(52, 1, 'icHdHz8OROXjigqB3Z5dX5AdPu7dUrEL', '2022-03-02 15:54:13', '2022-03-02 15:54:13'),
(53, 1, 'l4Giz8efyZY5g1MXXcrzrkpZdEKKR30N', '2022-03-07 21:45:00', '2022-03-07 21:45:00'),
(54, 1, '6fOHCu8JjwzbbhljfJtLVY75Lsti7KoB', '2022-03-09 18:47:56', '2022-03-09 18:47:56'),
(55, 1, 'KPSqAatuTXDcqN5esk3lYoeMTcwL5Wpr', '2022-03-09 18:51:15', '2022-03-09 18:51:15'),
(56, 1, 'hbGsbcAVWMdp5mqddD7Puu5hdzuuTrS7', '2022-03-10 20:00:56', '2022-03-10 20:00:56'),
(57, 1, 'gQDSPgrNkzNaQ1d1qACVSjPiGM6dxKJU', '2022-05-17 10:54:35', '2022-05-17 10:54:35'),
(58, 1, '5qkgaRKWwDxLnEzLnm1d0PteQi8nLoGU', '2022-05-23 13:34:35', '2022-05-23 13:34:35'),
(59, 1, '5IxAn8sZRHhXUk1lLNf2d49tkZ1zK8zn', '2022-05-24 10:52:42', '2022-05-24 10:52:42'),
(60, 1, 'AsOmlASu29YBPXNzqARopdoO9ndGGOhz', '2022-05-25 19:32:34', '2022-05-25 19:32:34'),
(61, 1, 'r17d2b3LHJ9Ng5nk61ZKOYlDiMU1Eyi3', '2022-06-04 12:22:48', '2022-06-04 12:22:48'),
(62, 1, '19zyEe0bNh7wBpx5b0wmSTF0JyrIhcJb', '2022-06-06 15:13:44', '2022-06-06 15:13:44'),
(63, 1, 'tqGqB07PY9hWH9icVvJw8da6f3Y76XzE', '2022-06-10 15:33:54', '2022-06-10 15:33:54'),
(64, 1, 'JQM48KoHU20ehYttHRhduDvls5D3kjyC', '2022-06-10 17:55:15', '2022-06-10 17:55:15'),
(65, 1, 'DlnPBkoFP4qQPRQLYEykaAK92ef7Rd6p', '2022-06-11 13:45:13', '2022-06-11 13:45:13'),
(66, 1, '384Z3rci58wMnscjjdny1hItokP9RX75', '2022-06-14 11:32:49', '2022-06-14 11:32:49'),
(67, 1, '7IDj7kg5nCLoS37Dy8PtphmwpdSYi2e2', '2022-06-14 17:16:56', '2022-06-14 17:16:56'),
(68, 1, 'X0tOx2AqA86QQOEDjugTFQsvs1LoW8Nc', '2022-06-16 14:10:32', '2022-06-16 14:10:32'),
(69, 1, 'CRl7FXwWhRXTwKCeiU1cVCxJ89WxNV5W', '2022-06-16 20:02:00', '2022-06-16 20:02:00'),
(70, 1, '6xj9JjzgT7BH0H2C4NR5p9XomPHmeBD7', '2022-06-20 20:25:40', '2022-06-20 20:25:40'),
(71, 1, 'Y2GiQPeUamwmm2Lzg40OaBh7RS9hWUem', '2022-06-23 15:02:09', '2022-06-23 15:02:09'),
(72, 1, 'PLwefpYeewgV002zThpc6dxi6kyu0Fhr', '2022-06-27 12:38:50', '2022-06-27 12:38:50'),
(73, 1, 'tvcrlH0zaumJ0l8mzar2uofwdWDzuXmg', '2022-06-28 10:19:36', '2022-06-28 10:19:36');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `tax_class_id` int(10) UNSIGNED DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(18,4) UNSIGNED NOT NULL,
  `special_price` decimal(18,4) UNSIGNED DEFAULT NULL,
  `special_price_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_price_start` date DEFAULT NULL,
  `special_price_end` date DEFAULT NULL,
  `selling_price` decimal(18,4) UNSIGNED DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manage_stock` tinyint(1) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `in_stock` tinyint(1) NOT NULL,
  `viewed` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL,
  `new_from` datetime DEFAULT NULL,
  `new_to` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `virtual` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `tax_class_id`, `slug`, `price`, `special_price`, `special_price_type`, `special_price_start`, `special_price_end`, `selling_price`, `sku`, `manage_stock`, `qty`, `in_stock`, `viewed`, `is_active`, `new_from`, `new_to`, `deleted_at`, `created_at`, `updated_at`, `virtual`) VALUES
(1, NULL, NULL, 'air-operated-oil-ratio-pumps-11-pumps-opt311bbsp', '14571.2000', '14000.0000', 'percent', '2022-01-07', '2022-01-11', '14571.2000', NULL, 1, 15, 1, 5, 1, NULL, NULL, NULL, '2022-01-06 22:10:24', '2022-01-28 14:27:07', 1),
(2, NULL, NULL, 'smart-funnels-fnl9b', '443.0000', '310.0000', 'percent', '2022-01-07', '2022-01-17', '443.0000', NULL, 1, 10, 1, 4, 1, NULL, NULL, NULL, '2022-01-06 22:13:54', '2022-03-10 20:14:36', 0),
(3, NULL, NULL, 'portable-oiling-system-os512-g', '166811.0000', '116767.0000', 'fixed', '2022-01-06', NULL, '116767.0000', NULL, 0, NULL, 0, 6, 1, NULL, NULL, NULL, '2022-01-06 22:17:37', '2022-03-09 19:17:28', 1),
(4, 1, NULL, 'waste-oil-drain-pressurized-wod68a', '24309.0000', '17016.0000', 'fixed', NULL, NULL, '17016.0000', NULL, 1, 4, 1, 1, 1, NULL, NULL, NULL, '2022-01-06 22:23:00', '2022-01-24 15:49:12', 1),
(5, 2, 1, 'xyz', '500.0000', '400.0000', 'fixed', '2022-02-02', '2022-02-16', '400.0000', '1', 1, 50, 1, 0, 1, NULL, NULL, NULL, '2022-02-02 16:37:59', '2022-02-02 16:37:59', 0),
(6, 1, 1, 'abc', '223.0000', '100.0000', 'fixed', '2022-02-11', '2022-02-28', '223.0000', NULL, 0, NULL, 1, 2, 1, NULL, NULL, NULL, '2022-02-11 22:55:52', '2022-03-10 20:37:29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute_values`
--

CREATE TABLE `product_attribute_values` (
  `product_attribute_id` int(10) UNSIGNED NOT NULL,
  `attribute_value_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`product_id`, `category_id`) VALUES
(1, 13),
(2, 20),
(3, 18),
(4, 12),
(5, 14),
(6, 20);

-- --------------------------------------------------------

--
-- Table structure for table `product_options`
--

CREATE TABLE `product_options` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_tags`
--

CREATE TABLE `product_tags` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tags`
--

INSERT INTO `product_tags` (`product_id`, `tag_id`) VALUES
(5, 1),
(6, 1),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `product_translations`
--

CREATE TABLE `product_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_translations`
--

INSERT INTO `product_translations` (`id`, `product_id`, `locale`, `name`, `description`, `short_description`) VALUES
(1, 1, 'en', 'AIR OPERATED OIL RATIO PUMPS 1:1 PUMPS OP/T3/11B/BSP', '<p>Pump Only for 210 Litre Drums Delivers: Upto 40 LPM</p>', NULL),
(2, 2, 'en', 'SMART FUNNELS FNL/9B', '<p><strong>Easy to use:</strong><br /><strong>Drip it</strong>&nbsp;&ndash; For effortless transfer of remaining slow fluids, place the funnel into the neck of receiving container &amp; place pouring container into top clip of the funnel.<br /><strong>Pour it</strong>&nbsp;&ndash; Place the funnel into neck of recieving container and swing top clip away.<br /><strong>Store it</strong>&nbsp;&ndash; Place container into top clip with lid closed and the smart funnel will hold the bottle upside down, ready to use.</p>', NULL),
(3, 3, 'en', 'PORTABLE OILING SYSTEM OS512-G', '<p>Buy OS512-G GROZ PORTABLE OILING SYSTEM online at best price, onlinehydraulicshop.com</p>', NULL),
(4, 4, 'en', 'WASTE OIL DRAIN PRESSURIZED WOD/68A', '<p>Specifications : Designed for excellent mobility<br />- Model Text : WOD/68A<br />- Capacity Ltr : 68<br />- With wheel mounted tank for gravity draining of motor, engine, gearbox and differential oils, transmission and power steering fluids<br />- Maximum collection capacity 58 litres</p>', NULL),
(5, 5, 'en', 'xyz', '<p>this is best tool for fittings</p>', NULL),
(6, 6, 'en', 'Abc', '<p>hvbjhguyghv</p>', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `related_products`
--

CREATE TABLE `related_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `related_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `reviewer_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `reviewer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `permissions`, `created_at`, `updated_at`) VALUES
(1, '{\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.products.index\":true,\"admin.products.create\":true,\"admin.products.edit\":true,\"admin.products.destroy\":true,\"admin.brands.index\":true,\"admin.brands.create\":true,\"admin.brands.edit\":true,\"admin.brands.destroy\":true,\"admin.attributes.index\":true,\"admin.attributes.create\":true,\"admin.attributes.edit\":true,\"admin.attributes.destroy\":true,\"admin.attribute_sets.index\":true,\"admin.attribute_sets.create\":true,\"admin.attribute_sets.edit\":true,\"admin.attribute_sets.destroy\":true,\"admin.options.index\":true,\"admin.options.create\":true,\"admin.options.edit\":true,\"admin.options.destroy\":true,\"admin.filters.index\":true,\"admin.filters.create\":true,\"admin.filters.edit\":true,\"admin.filters.destroy\":true,\"admin.reviews.index\":true,\"admin.reviews.create\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.tags.index\":true,\"admin.tags.create\":true,\"admin.tags.edit\":true,\"admin.tags.destroy\":true,\"admin.orders.index\":true,\"admin.orders.show\":true,\"admin.orders.edit\":true,\"admin.flash_sales.index\":true,\"admin.flash_sales.create\":true,\"admin.flash_sales.edit\":true,\"admin.flash_sales.destroy\":true,\"admin.transactions.index\":true,\"admin.coupons.index\":true,\"admin.coupons.create\":true,\"admin.coupons.edit\":true,\"admin.coupons.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.media.index\":true,\"admin.media.create\":true,\"admin.media.destroy\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.currency_rates.index\":true,\"admin.currency_rates.edit\":true,\"admin.taxes.index\":true,\"admin.taxes.create\":true,\"admin.taxes.edit\":true,\"admin.taxes.destroy\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.importer.index\":true,\"admin.importer.create\":true,\"admin.reports.index\":true,\"admin.settings.edit\":true,\"admin.storefront.edit\":true}', '2021-12-31 01:13:30', '2021-12-31 01:13:30'),
(7, '{\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.coupons.index\":true,\"admin.coupons.create\":true,\"admin.coupons.edit\":true,\"admin.coupons.destroy\":true,\"admin.flash_sales.index\":true,\"admin.flash_sales.create\":true,\"admin.flash_sales.edit\":true,\"admin.flash_sales.destroy\":true,\"admin.media.index\":true,\"admin.media.create\":true,\"admin.media.destroy\":true,\"admin.orders.index\":true,\"admin.orders.show\":true,\"admin.orders.edit\":true,\"admin.products.index\":true,\"admin.products.create\":true,\"admin.products.edit\":true,\"admin.products.destroy\":true,\"admin.reports.index\":true,\"admin.reviews.index\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true}', '2022-02-19 09:45:50', '2022-02-19 09:46:42');

-- --------------------------------------------------------

--
-- Table structure for table `role_translations`
--

CREATE TABLE `role_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_translations`
--

INSERT INTO `role_translations` (`id`, `role_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'Admin'),
(7, 7, 'en', 'Vendor');

-- --------------------------------------------------------

--
-- Table structure for table `search_terms`
--

CREATE TABLE `search_terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `term` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `results` int(10) UNSIGNED NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `search_terms`
--

INSERT INTO `search_terms` (`id`, `term`, `results`, `hits`, `created_at`, `updated_at`) VALUES
(1, 'AIR OPERATED OIL RATIO PUMPS 1:1 PUMPS OP/T3/11B/BSP', 1, 9, '2022-01-06 21:48:49', '2022-02-11 22:49:08'),
(2, 'Air', 1, 2, '2022-01-08 15:43:19', '2022-01-08 15:43:28'),
(3, 'abcd', 0, 3, '2022-03-10 20:20:12', '2022-03-10 20:23:17');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_translatable` tinyint(1) NOT NULL DEFAULT 0,
  `plain_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `is_translatable`, `plain_value`, `created_at`, `updated_at`) VALUES
(1, 'store_name', 1, NULL, '2021-12-31 01:13:32', '2021-12-31 01:13:32'),
(2, 'store_email', 0, 's:15:\"admin@gmail.com\";', '2021-12-31 01:13:34', '2022-01-08 22:01:57'),
(3, 'store_phone', 0, 's:11:\"23434343434\";', '2021-12-31 01:13:34', '2021-12-31 01:13:34'),
(4, 'search_engine', 0, 's:5:\"mysql\";', '2021-12-31 01:13:34', '2021-12-31 01:13:34'),
(5, 'algolia_app_id', 0, 'N;', '2021-12-31 01:13:35', '2021-12-31 01:13:35'),
(6, 'algolia_secret', 0, 'N;', '2021-12-31 01:13:35', '2021-12-31 01:13:35'),
(7, 'active_theme', 0, 's:10:\"Storefront\";', '2021-12-31 01:13:36', '2021-12-31 01:13:36'),
(8, 'supported_countries', 0, 'a:1:{i:0;s:2:\"BD\";}', '2021-12-31 01:13:39', '2021-12-31 01:13:39'),
(9, 'default_country', 0, 's:2:\"BD\";', '2021-12-31 01:13:39', '2021-12-31 01:13:39'),
(10, 'supported_locales', 0, 'a:1:{i:0;s:2:\"en\";}', '2021-12-31 01:13:39', '2021-12-31 01:13:39'),
(11, 'default_locale', 0, 's:2:\"en\";', '2021-12-31 01:13:39', '2021-12-31 01:13:39'),
(12, 'default_timezone', 0, 's:10:\"Asia/Dhaka\";', '2021-12-31 01:13:39', '2021-12-31 01:13:39'),
(13, 'customer_role', 0, 's:1:\"2\";', '2021-12-31 01:13:39', '2022-01-08 22:01:57'),
(14, 'reviews_enabled', 0, 's:1:\"1\";', '2021-12-31 01:13:40', '2022-01-08 22:01:57'),
(15, 'auto_approve_reviews', 0, 's:1:\"1\";', '2021-12-31 01:13:40', '2022-01-08 22:01:57'),
(16, 'cookie_bar_enabled', 0, 's:1:\"1\";', '2021-12-31 01:13:40', '2022-01-08 22:01:57'),
(17, 'supported_currencies', 0, 'a:2:{i:0;s:3:\"INR\";i:1;s:3:\"USD\";}', '2021-12-31 01:13:40', '2022-01-08 22:03:50'),
(18, 'default_currency', 0, 's:3:\"INR\";', '2021-12-31 01:13:40', '2022-01-08 22:02:45'),
(19, 'send_order_invoice_email', 0, 'b:0;', '2021-12-31 01:13:40', '2021-12-31 01:13:40'),
(20, 'newsletter_enabled', 0, 's:1:\"1\";', '2021-12-31 01:13:40', '2022-01-08 22:03:50'),
(21, 'local_pickup_cost', 0, 's:1:\"0\";', '2021-12-31 01:13:40', '2022-01-08 22:01:58'),
(22, 'flat_rate_cost', 0, 's:1:\"0\";', '2021-12-31 01:13:40', '2022-01-08 22:01:58'),
(23, 'free_shipping_label', 1, NULL, '2021-12-31 01:13:40', '2021-12-31 01:13:40'),
(24, 'local_pickup_label', 1, NULL, '2021-12-31 01:13:41', '2021-12-31 01:13:41'),
(25, 'flat_rate_label', 1, NULL, '2021-12-31 01:13:41', '2021-12-31 01:13:41'),
(26, 'paypal_label', 1, NULL, '2021-12-31 01:13:41', '2021-12-31 01:13:41'),
(27, 'paypal_description', 1, NULL, '2021-12-31 01:13:41', '2021-12-31 01:13:41'),
(28, 'stripe_label', 1, NULL, '2021-12-31 01:13:42', '2021-12-31 01:13:42'),
(29, 'stripe_description', 1, NULL, '2021-12-31 01:13:42', '2021-12-31 01:13:42'),
(30, 'paytm_label', 1, NULL, '2021-12-31 01:13:42', '2021-12-31 01:13:42'),
(31, 'paytm_description', 1, NULL, '2021-12-31 01:13:42', '2021-12-31 01:13:42'),
(32, 'razorpay_label', 1, NULL, '2021-12-31 01:13:42', '2021-12-31 01:13:42'),
(33, 'razorpay_description', 1, NULL, '2021-12-31 01:13:42', '2021-12-31 01:13:42'),
(34, 'instamojo_label', 1, NULL, '2021-12-31 01:13:42', '2021-12-31 01:13:42'),
(35, 'instamojo_description', 1, NULL, '2021-12-31 01:13:43', '2021-12-31 01:13:43'),
(36, 'cod_label', 1, NULL, '2021-12-31 01:13:43', '2021-12-31 01:13:43'),
(37, 'cod_description', 1, NULL, '2021-12-31 01:13:43', '2021-12-31 01:13:43'),
(38, 'bank_transfer_label', 1, NULL, '2021-12-31 01:13:43', '2021-12-31 01:13:43'),
(39, 'bank_transfer_description', 1, NULL, '2021-12-31 01:13:44', '2021-12-31 01:13:44'),
(40, 'check_payment_label', 1, NULL, '2021-12-31 01:13:44', '2021-12-31 01:13:44'),
(41, 'check_payment_description', 1, NULL, '2021-12-31 01:13:44', '2021-12-31 01:13:44'),
(42, 'storefront_copyright_text', 1, 's:92:\"Copyright © <a href=\"{{ store_url }}\">{{ store_name }}</a> {{ year }}. All rights reserved.\";', '2021-12-31 01:13:44', '2022-01-08 14:35:46'),
(43, 'storefront_welcome_text', 1, NULL, '2022-01-08 14:35:46', '2022-01-08 14:35:46'),
(44, 'storefront_address', 1, NULL, '2022-01-08 14:35:46', '2022-01-08 14:35:46'),
(45, 'storefront_navbar_text', 1, NULL, '2022-01-08 14:35:46', '2022-01-08 14:35:46'),
(46, 'storefront_footer_menu_one_title', 1, NULL, '2022-01-08 14:35:46', '2022-01-08 14:35:46'),
(47, 'storefront_footer_menu_two_title', 1, NULL, '2022-01-08 14:35:46', '2022-01-08 14:35:46'),
(48, 'storefront_feature_1_title', 1, NULL, '2022-01-08 14:35:46', '2022-01-08 14:35:46'),
(49, 'storefront_feature_1_subtitle', 1, NULL, '2022-01-08 14:35:46', '2022-01-08 14:35:46'),
(50, 'storefront_feature_2_title', 1, NULL, '2022-01-08 14:35:46', '2022-01-08 14:35:46'),
(51, 'storefront_feature_2_subtitle', 1, NULL, '2022-01-08 14:35:46', '2022-01-08 14:35:46'),
(52, 'storefront_feature_3_title', 1, NULL, '2022-01-08 14:35:46', '2022-01-08 14:35:46'),
(53, 'storefront_feature_3_subtitle', 1, NULL, '2022-01-08 14:35:46', '2022-01-08 14:35:46'),
(54, 'storefront_feature_4_title', 1, NULL, '2022-01-08 14:35:46', '2022-01-08 14:35:46'),
(55, 'storefront_feature_4_subtitle', 1, NULL, '2022-01-08 14:35:46', '2022-01-08 14:35:46'),
(56, 'storefront_feature_5_title', 1, NULL, '2022-01-08 14:35:46', '2022-01-08 14:35:46'),
(57, 'storefront_feature_5_subtitle', 1, NULL, '2022-01-08 14:35:46', '2022-01-08 14:35:46'),
(58, 'storefront_product_page_banner_file_id', 1, NULL, '2022-01-08 14:35:46', '2022-01-08 14:35:46'),
(59, 'storefront_slider_banner_1_file_id', 1, NULL, '2022-01-08 14:35:46', '2022-01-08 14:35:46'),
(60, 'storefront_slider_banner_2_file_id', 1, NULL, '2022-01-08 14:35:46', '2022-01-08 14:35:46'),
(61, 'storefront_three_column_full_width_banners_1_file_id', 1, NULL, '2022-01-08 14:35:46', '2022-01-08 14:35:46'),
(62, 'storefront_three_column_full_width_banners_2_file_id', 1, NULL, '2022-01-08 14:35:46', '2022-01-08 14:35:46'),
(63, 'storefront_three_column_full_width_banners_3_file_id', 1, NULL, '2022-01-08 14:35:46', '2022-01-08 14:35:46'),
(64, 'storefront_featured_categories_section_title', 1, NULL, '2022-01-08 14:35:46', '2022-01-08 14:35:46'),
(65, 'storefront_featured_categories_section_subtitle', 1, NULL, '2022-01-08 14:35:46', '2022-01-08 14:35:46'),
(66, 'storefront_product_tabs_1_section_tab_1_title', 1, NULL, '2022-01-08 14:35:46', '2022-01-08 14:35:46'),
(67, 'storefront_product_tabs_1_section_tab_2_title', 1, NULL, '2022-01-08 14:35:46', '2022-01-08 14:35:46'),
(68, 'storefront_product_tabs_1_section_tab_3_title', 1, NULL, '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(69, 'storefront_product_tabs_1_section_tab_4_title', 1, NULL, '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(70, 'storefront_two_column_banners_1_file_id', 1, NULL, '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(71, 'storefront_two_column_banners_2_file_id', 1, NULL, '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(72, 'storefront_product_grid_section_tab_1_title', 1, NULL, '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(73, 'storefront_product_grid_section_tab_2_title', 1, NULL, '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(74, 'storefront_product_grid_section_tab_3_title', 1, NULL, '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(75, 'storefront_product_grid_section_tab_4_title', 1, NULL, '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(76, 'storefront_three_column_banners_1_file_id', 1, NULL, '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(77, 'storefront_three_column_banners_2_file_id', 1, NULL, '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(78, 'storefront_three_column_banners_3_file_id', 1, NULL, '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(79, 'storefront_product_tabs_2_section_title', 1, NULL, '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(80, 'storefront_product_tabs_2_section_tab_1_title', 1, NULL, '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(81, 'storefront_product_tabs_2_section_tab_2_title', 1, NULL, '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(82, 'storefront_product_tabs_2_section_tab_3_title', 1, NULL, '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(83, 'storefront_product_tabs_2_section_tab_4_title', 1, NULL, '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(84, 'storefront_one_column_banner_file_id', 1, NULL, '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(85, 'storefront_theme_color', 0, 's:4:\"blue\";', '2022-01-08 14:35:47', '2022-02-19 09:57:29'),
(86, 'storefront_custom_theme_color', 0, 's:7:\"#000000\";', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(87, 'storefront_mail_theme_color', 0, 's:4:\"blue\";', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(88, 'storefront_custom_mail_theme_color', 0, 's:7:\"#000000\";', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(89, 'storefront_slider', 0, 's:1:\"1\";', '2022-01-08 14:35:47', '2022-02-19 09:58:19'),
(90, 'storefront_terms_page', 0, 's:1:\"2\";', '2022-01-08 14:35:47', '2022-02-19 09:58:58'),
(91, 'storefront_privacy_page', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(92, 'storefront_primary_menu', 0, 's:1:\"3\";', '2022-01-08 14:35:47', '2022-02-19 10:01:27'),
(93, 'storefront_category_menu', 0, 's:1:\"4\";', '2022-01-08 14:35:47', '2022-01-14 23:20:08'),
(94, 'storefront_footer_menu_one', 0, 's:1:\"6\";', '2022-01-08 14:35:47', '2022-02-19 10:01:41'),
(95, 'storefront_footer_menu_two', 0, 's:1:\"3\";', '2022-01-08 14:35:47', '2022-02-17 16:15:01'),
(96, 'storefront_features_section_enabled', 0, 's:1:\"1\";', '2022-01-08 14:35:47', '2022-02-19 10:04:20'),
(97, 'storefront_feature_1_icon', 0, 's:17:\"las la-headphones\";', '2022-01-08 14:35:47', '2022-01-08 20:34:28'),
(98, 'storefront_feature_2_icon', 0, 's:18:\"las la-credit-card\";', '2022-01-08 14:35:47', '2022-01-08 20:34:28'),
(99, 'storefront_feature_3_icon', 0, 's:17:\"las la-shield-alt\";', '2022-01-08 14:35:47', '2022-01-08 20:34:28'),
(100, 'storefront_feature_4_icon', 0, 's:12:\"las la-truck\";', '2022-01-08 14:35:47', '2022-01-08 20:34:56'),
(101, 'storefront_feature_5_icon', 0, 's:21:\"las la-calendar-minus\";', '2022-01-08 14:35:47', '2022-01-08 20:34:28'),
(102, 'storefront_product_page_banner_call_to_action_url', 0, 's:46:\"http://seraphictales.in/Newcom/public/products\";', '2022-01-08 14:35:47', '2022-01-08 20:41:36'),
(103, 'storefront_product_page_banner_open_in_new_window', 0, 's:1:\"0\";', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(104, 'storefront_facebook_link', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(105, 'storefront_twitter_link', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(106, 'storefront_instagram_link', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(107, 'storefront_youtube_link', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(108, 'storefront_slider_banner_1_call_to_action_url', 0, 's:45:\"https://aainaskill.com/Newcom/public/products\";', '2022-01-08 14:35:47', '2022-02-19 10:05:27'),
(109, 'storefront_slider_banner_1_open_in_new_window', 0, 's:1:\"0\";', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(110, 'storefront_slider_banner_2_call_to_action_url', 0, 's:45:\"https://aainaskill.com/Newcom/public/products\";', '2022-01-08 14:35:47', '2022-02-19 10:05:27'),
(111, 'storefront_slider_banner_2_open_in_new_window', 0, 's:1:\"0\";', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(112, 'storefront_three_column_full_width_banners_enabled', 0, 's:1:\"1\";', '2022-01-08 14:35:47', '2022-01-08 20:47:46'),
(113, 'storefront_three_column_full_width_banners_1_call_to_action_url', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(114, 'storefront_three_column_full_width_banners_1_open_in_new_window', 0, 's:1:\"0\";', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(115, 'storefront_three_column_full_width_banners_2_call_to_action_url', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(116, 'storefront_three_column_full_width_banners_2_open_in_new_window', 0, 's:1:\"0\";', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(117, 'storefront_three_column_full_width_banners_3_call_to_action_url', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(118, 'storefront_three_column_full_width_banners_3_open_in_new_window', 0, 's:1:\"0\";', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(119, 'storefront_featured_categories_section_enabled', 0, 's:1:\"1\";', '2022-01-08 14:35:47', '2022-01-08 20:44:45'),
(120, 'storefront_featured_categories_section_category_1_category_id', 0, 's:2:\"20\";', '2022-01-08 14:35:47', '2022-01-08 21:00:21'),
(121, 'storefront_featured_categories_section_category_1_product_type', 0, 's:15:\"custom_products\";', '2022-01-08 14:35:47', '2022-01-08 21:01:22'),
(122, 'storefront_featured_categories_section_category_1_products_limit', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(123, 'storefront_featured_categories_section_category_2_category_id', 0, 's:2:\"20\";', '2022-01-08 14:35:47', '2022-01-08 20:44:45'),
(124, 'storefront_featured_categories_section_category_2_product_type', 0, 's:17:\"category_products\";', '2022-01-08 14:35:47', '2022-01-08 20:44:45'),
(125, 'storefront_featured_categories_section_category_2_products_limit', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(126, 'storefront_featured_categories_section_category_3_category_id', 0, 's:2:\"18\";', '2022-01-08 14:35:47', '2022-01-08 20:44:45'),
(127, 'storefront_featured_categories_section_category_3_product_type', 0, 's:17:\"category_products\";', '2022-01-08 14:35:47', '2022-01-08 20:44:45'),
(128, 'storefront_featured_categories_section_category_3_products_limit', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(129, 'storefront_featured_categories_section_category_4_category_id', 0, 's:2:\"14\";', '2022-01-08 14:35:47', '2022-01-08 20:44:45'),
(130, 'storefront_featured_categories_section_category_4_product_type', 0, 's:17:\"category_products\";', '2022-01-08 14:35:47', '2022-01-08 20:44:45'),
(131, 'storefront_featured_categories_section_category_4_products_limit', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(132, 'storefront_featured_categories_section_category_5_category_id', 0, 's:2:\"21\";', '2022-01-08 14:35:47', '2022-01-08 20:44:45'),
(133, 'storefront_featured_categories_section_category_5_product_type', 0, 's:17:\"category_products\";', '2022-01-08 14:35:47', '2022-01-08 20:44:45'),
(134, 'storefront_featured_categories_section_category_5_products_limit', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(135, 'storefront_featured_categories_section_category_6_category_id', 0, 's:2:\"17\";', '2022-01-08 14:35:47', '2022-01-08 20:44:45'),
(136, 'storefront_featured_categories_section_category_6_product_type', 0, 's:17:\"category_products\";', '2022-01-08 14:35:47', '2022-01-08 20:44:45'),
(137, 'storefront_featured_categories_section_category_6_products_limit', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(138, 'storefront_product_tabs_1_section_enabled', 0, 's:1:\"1\";', '2022-01-08 14:35:47', '2022-02-11 11:29:04'),
(139, 'storefront_product_tabs_1_section_tab_1_product_type', 0, 's:15:\"latest_products\";', '2022-01-08 14:35:47', '2022-01-08 20:54:04'),
(140, 'storefront_product_tabs_1_section_tab_1_category_id', 0, 's:2:\"20\";', '2022-01-08 14:35:47', '2022-01-08 20:47:06'),
(141, 'storefront_product_tabs_1_section_tab_1_products_limit', 0, 's:1:\"6\";', '2022-01-08 14:35:47', '2022-01-08 20:54:04'),
(142, 'storefront_product_tabs_1_section_tab_2_product_type', 0, 's:15:\"latest_products\";', '2022-01-08 14:35:47', '2022-01-08 20:47:06'),
(143, 'storefront_product_tabs_1_section_tab_2_category_id', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(144, 'storefront_product_tabs_1_section_tab_2_products_limit', 0, 's:1:\"6\";', '2022-01-08 14:35:47', '2022-01-08 20:47:06'),
(145, 'storefront_product_tabs_1_section_tab_3_product_type', 0, 's:15:\"latest_products\";', '2022-01-08 14:35:47', '2022-01-08 20:54:04'),
(146, 'storefront_product_tabs_1_section_tab_3_category_id', 0, 's:2:\"20\";', '2022-01-08 14:35:47', '2022-01-08 20:47:06'),
(147, 'storefront_product_tabs_1_section_tab_3_products_limit', 0, 's:1:\"6\";', '2022-01-08 14:35:47', '2022-01-08 20:54:04'),
(148, 'storefront_product_tabs_1_section_tab_4_product_type', 0, 's:15:\"latest_products\";', '2022-01-08 14:35:47', '2022-01-08 20:47:06'),
(149, 'storefront_product_tabs_1_section_tab_4_category_id', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(150, 'storefront_product_tabs_1_section_tab_4_products_limit', 0, 's:1:\"6\";', '2022-01-08 14:35:47', '2022-01-08 20:47:06'),
(151, 'storefront_top_brands_section_enabled', 0, 's:1:\"0\";', '2022-01-08 14:35:47', '2022-02-19 10:08:45'),
(152, 'storefront_flash_sale_and_vertical_products_section_enabled', 0, 's:1:\"1\";', '2022-01-08 14:35:47', '2022-01-08 20:59:23'),
(153, 'storefront_flash_sale_title', 0, 's:10:\"Best Deals\";', '2022-01-08 14:35:47', '2022-01-08 20:59:15'),
(154, 'storefront_active_flash_sale_campaign', 0, 's:1:\"1\";', '2022-01-08 14:35:47', '2022-01-08 20:59:15'),
(155, 'storefront_vertical_products_1_title', 0, 's:7:\"Watches\";', '2022-01-08 14:35:47', '2022-01-08 20:59:15'),
(156, 'storefront_vertical_products_1_product_type', 0, 's:15:\"latest_products\";', '2022-01-08 14:35:47', '2022-01-08 20:59:15'),
(157, 'storefront_vertical_products_1_category_id', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(158, 'storefront_vertical_products_1_products_limit', 0, 's:1:\"6\";', '2022-01-08 14:35:47', '2022-01-08 20:59:15'),
(159, 'storefront_vertical_products_2_title', 0, 's:9:\"Backpacks\";', '2022-01-08 14:35:47', '2022-01-08 20:59:15'),
(160, 'storefront_vertical_products_2_product_type', 0, 's:15:\"latest_products\";', '2022-01-08 14:35:47', '2022-01-08 20:59:15'),
(161, 'storefront_vertical_products_2_category_id', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(162, 'storefront_vertical_products_2_products_limit', 0, 's:1:\"6\";', '2022-01-08 14:35:47', '2022-01-08 20:59:15'),
(163, 'storefront_vertical_products_3_title', 0, 's:6:\"Shirts\";', '2022-01-08 14:35:47', '2022-01-08 20:59:15'),
(164, 'storefront_vertical_products_3_product_type', 0, 's:15:\"latest_products\";', '2022-01-08 14:35:47', '2022-01-08 20:59:15'),
(165, 'storefront_vertical_products_3_category_id', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(166, 'storefront_vertical_products_3_products_limit', 0, 's:1:\"6\";', '2022-01-08 14:35:47', '2022-01-08 20:59:15'),
(167, 'storefront_two_column_banners_enabled', 0, 's:1:\"1\";', '2022-01-08 14:35:47', '2022-01-08 21:03:46'),
(168, 'storefront_two_column_banners_1_call_to_action_url', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(169, 'storefront_two_column_banners_1_open_in_new_window', 0, 's:1:\"0\";', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(170, 'storefront_two_column_banners_2_call_to_action_url', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(171, 'storefront_two_column_banners_2_open_in_new_window', 0, 's:1:\"0\";', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(172, 'storefront_product_grid_section_enabled', 0, 's:1:\"1\";', '2022-01-08 14:35:47', '2022-01-08 21:05:16'),
(173, 'storefront_product_grid_section_tab_1_product_type', 0, 's:15:\"latest_products\";', '2022-01-08 14:35:47', '2022-01-08 21:05:05'),
(174, 'storefront_product_grid_section_tab_1_category_id', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(175, 'storefront_product_grid_section_tab_1_products_limit', 0, 's:1:\"6\";', '2022-01-08 14:35:47', '2022-01-08 21:05:05'),
(176, 'storefront_product_grid_section_tab_2_product_type', 0, 's:15:\"latest_products\";', '2022-01-08 14:35:47', '2022-01-08 21:05:05'),
(177, 'storefront_product_grid_section_tab_2_category_id', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(178, 'storefront_product_grid_section_tab_2_products_limit', 0, 's:1:\"6\";', '2022-01-08 14:35:47', '2022-01-08 21:05:05'),
(179, 'storefront_product_grid_section_tab_3_product_type', 0, 's:15:\"latest_products\";', '2022-01-08 14:35:47', '2022-01-08 21:05:05'),
(180, 'storefront_product_grid_section_tab_3_category_id', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(181, 'storefront_product_grid_section_tab_3_products_limit', 0, 's:1:\"6\";', '2022-01-08 14:35:47', '2022-01-08 21:05:05'),
(182, 'storefront_product_grid_section_tab_4_product_type', 0, 's:15:\"latest_products\";', '2022-01-08 14:35:47', '2022-01-08 21:05:05'),
(183, 'storefront_product_grid_section_tab_4_category_id', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(184, 'storefront_product_grid_section_tab_4_products_limit', 0, 's:1:\"6\";', '2022-01-08 14:35:47', '2022-01-08 21:05:05'),
(185, 'storefront_three_column_banners_enabled', 0, 's:1:\"1\";', '2022-01-08 14:35:47', '2022-01-08 21:06:57'),
(186, 'storefront_three_column_banners_1_call_to_action_url', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(187, 'storefront_three_column_banners_1_open_in_new_window', 0, 's:1:\"0\";', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(188, 'storefront_three_column_banners_2_call_to_action_url', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(189, 'storefront_three_column_banners_2_open_in_new_window', 0, 's:1:\"0\";', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(190, 'storefront_three_column_banners_3_call_to_action_url', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(191, 'storefront_three_column_banners_3_open_in_new_window', 0, 's:1:\"0\";', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(192, 'storefront_product_tabs_2_section_enabled', 0, 's:1:\"1\";', '2022-01-08 14:35:47', '2022-01-08 21:08:32'),
(193, 'storefront_product_tabs_2_section_tab_1_product_type', 0, 's:15:\"latest_products\";', '2022-01-08 14:35:47', '2022-01-08 21:08:32'),
(194, 'storefront_product_tabs_2_section_tab_1_category_id', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(195, 'storefront_product_tabs_2_section_tab_1_products_limit', 0, 's:1:\"6\";', '2022-01-08 14:35:47', '2022-01-08 21:08:32'),
(196, 'storefront_product_tabs_2_section_tab_2_product_type', 0, 's:15:\"latest_products\";', '2022-01-08 14:35:47', '2022-01-08 21:08:32'),
(197, 'storefront_product_tabs_2_section_tab_2_category_id', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(198, 'storefront_product_tabs_2_section_tab_2_products_limit', 0, 's:1:\"6\";', '2022-01-08 14:35:47', '2022-01-08 21:08:32'),
(199, 'storefront_product_tabs_2_section_tab_3_product_type', 0, 's:15:\"latest_products\";', '2022-01-08 14:35:47', '2022-01-08 21:08:32'),
(200, 'storefront_product_tabs_2_section_tab_3_category_id', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(201, 'storefront_product_tabs_2_section_tab_3_products_limit', 0, 's:1:\"6\";', '2022-01-08 14:35:47', '2022-01-08 21:08:32'),
(202, 'storefront_product_tabs_2_section_tab_4_product_type', 0, 's:17:\"category_products\";', '2022-01-08 14:35:47', '2022-02-19 10:10:59'),
(203, 'storefront_product_tabs_2_section_tab_4_category_id', 0, 's:1:\"6\";', '2022-01-08 14:35:47', '2022-02-19 10:10:59'),
(204, 'storefront_product_tabs_2_section_tab_4_products_limit', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(205, 'storefront_one_column_banner_enabled', 0, 's:1:\"1\";', '2022-01-08 14:35:47', '2022-01-08 22:00:12'),
(206, 'storefront_one_column_banner_call_to_action_url', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(207, 'storefront_one_column_banner_open_in_new_window', 0, 's:1:\"0\";', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(208, 'storefront_footer_tags', 0, 'a:4:{i:0;s:1:\"2\";i:1;s:1:\"1\";i:2;s:1:\"3\";i:3;s:1:\"4\";}', '2022-01-08 14:35:47', '2022-03-10 20:36:56'),
(209, 'storefront_featured_categories_section_category_1_products', 0, 'a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";}', '2022-01-08 14:35:47', '2022-01-08 21:01:22'),
(210, 'storefront_featured_categories_section_category_2_products', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(211, 'storefront_featured_categories_section_category_3_products', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(212, 'storefront_featured_categories_section_category_4_products', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(213, 'storefront_featured_categories_section_category_5_products', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(214, 'storefront_featured_categories_section_category_6_products', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(215, 'storefront_product_tabs_1_section_tab_1_products', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(216, 'storefront_product_tabs_1_section_tab_2_products', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(217, 'storefront_product_tabs_1_section_tab_3_products', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(218, 'storefront_product_tabs_1_section_tab_4_products', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(219, 'storefront_top_brands', 0, 'a:3:{i:0;s:1:\"1\";i:1;s:1:\"3\";i:2;s:1:\"2\";}', '2022-01-08 14:35:47', '2022-01-08 20:54:39'),
(220, 'storefront_vertical_products_1_products', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(221, 'storefront_vertical_products_2_products', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(222, 'storefront_vertical_products_3_products', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(223, 'storefront_product_grid_section_tab_1_products', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(224, 'storefront_product_grid_section_tab_2_products', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(225, 'storefront_product_grid_section_tab_3_products', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(226, 'storefront_product_grid_section_tab_4_products', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(227, 'storefront_product_tabs_2_section_tab_1_products', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(228, 'storefront_product_tabs_2_section_tab_2_products', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(229, 'storefront_product_tabs_2_section_tab_3_products', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(230, 'storefront_product_tabs_2_section_tab_4_products', 0, 'N;', '2022-01-08 14:35:47', '2022-01-08 14:35:47'),
(231, 'storefront_three_column_full_width_banners_background_file_id', 0, 's:2:\"18\";', '2022-01-08 14:36:57', '2022-01-08 20:53:20'),
(232, 'storefront_header_logo', 1, NULL, '2022-01-08 20:28:33', '2022-01-08 20:28:33'),
(233, 'storefront_mail_logo', 1, NULL, '2022-01-08 20:28:33', '2022-01-08 20:28:33'),
(234, 'storefront_favicon', 0, 's:2:\"28\";', '2022-01-08 20:28:33', '2022-01-28 14:19:05'),
(235, 'storefront_accepted_payment_methods_image', 0, 's:2:\"14\";', '2022-01-08 20:29:46', '2022-01-08 20:29:46'),
(236, 'maintenance_mode', 0, 's:1:\"0\";', '2022-01-08 22:01:57', '2022-01-08 22:01:57'),
(237, 'store_tagline', 1, NULL, '2022-01-08 22:01:57', '2022-01-08 22:01:57'),
(238, 'bank_transfer_instructions', 1, NULL, '2022-01-08 22:01:57', '2022-01-08 22:01:57'),
(239, 'check_payment_instructions', 1, NULL, '2022-01-08 22:01:57', '2022-01-08 22:01:57'),
(240, 'store_address_1', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(241, 'store_address_2', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(242, 'store_city', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(243, 'store_country', 0, 's:2:\"IN\";', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(244, 'store_state', 0, 's:2:\"MP\";', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(245, 'store_zip', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(246, 'store_phone_hide', 0, 's:1:\"0\";', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(247, 'store_email_hide', 0, 's:1:\"0\";', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(248, 'currency_rate_exchange_service', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(249, 'fixer_access_key', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(250, 'forge_api_key', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(251, 'currency_data_feed_api_key', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(252, 'auto_refresh_currency_rates', 0, 's:1:\"0\";', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(253, 'auto_refresh_currency_rate_frequency', 0, 's:5:\"daily\";', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(254, 'sms_from', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(255, 'sms_service', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(256, 'vonage_key', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(257, 'vonage_secret', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(258, 'twilio_sid', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(259, 'twilio_token', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(260, 'welcome_sms', 0, 's:1:\"0\";', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(261, 'new_order_admin_sms', 0, 's:1:\"0\";', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(262, 'new_order_sms', 0, 's:1:\"0\";', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(263, 'mail_from_address', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(264, 'mail_from_name', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(265, 'mail_host', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(266, 'mail_port', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(267, 'mail_username', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(268, 'mail_password', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(269, 'mail_encryption', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(270, 'welcome_email', 0, 's:1:\"0\";', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(271, 'admin_order_email', 0, 's:1:\"0\";', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(272, 'invoice_email', 0, 's:1:\"0\";', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(273, 'mailchimp_api_key', 0, 's:1:\"5\";', '2022-01-08 22:01:58', '2022-01-08 22:03:50'),
(274, 'mailchimp_list_id', 0, 's:1:\"5\";', '2022-01-08 22:01:58', '2022-01-08 22:03:50'),
(275, 'custom_header_assets', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(276, 'custom_footer_assets', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(277, 'facebook_login_enabled', 0, 's:1:\"0\";', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(278, 'facebook_login_app_id', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(279, 'facebook_login_app_secret', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(280, 'google_login_enabled', 0, 's:1:\"0\";', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(281, 'google_login_client_id', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(282, 'google_login_client_secret', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(283, 'free_shipping_enabled', 0, 's:1:\"0\";', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(284, 'free_shipping_min_amount', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(285, 'local_pickup_enabled', 0, 's:1:\"0\";', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(286, 'flat_rate_enabled', 0, 's:1:\"0\";', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(287, 'paypal_enabled', 0, 's:1:\"0\";', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(288, 'paypal_test_mode', 0, 's:1:\"0\";', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(289, 'paypal_client_id', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(290, 'paypal_secret', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(291, 'stripe_enabled', 0, 's:1:\"0\";', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(292, 'stripe_publishable_key', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(293, 'stripe_secret_key', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(294, 'paytm_enabled', 0, 's:1:\"0\";', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(295, 'paytm_test_mode', 0, 's:1:\"0\";', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(296, 'paytm_merchant_id', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(297, 'paytm_merchant_key', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(298, 'razorpay_enabled', 0, 's:1:\"0\";', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(299, 'razorpay_key_id', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(300, 'razorpay_key_secret', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(301, 'instamojo_enabled', 0, 's:1:\"0\";', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(302, 'instamojo_test_mode', 0, 's:1:\"0\";', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(303, 'instamojo_api_key', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(304, 'instamojo_auth_token', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(305, 'cod_enabled', 0, 's:1:\"0\";', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(306, 'bank_transfer_enabled', 0, 's:1:\"0\";', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(307, 'check_payment_enabled', 0, 's:1:\"0\";', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(308, 'sms_order_statuses', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(309, 'email_order_statuses', 0, 'N;', '2022-01-08 22:01:58', '2022-01-08 22:01:58'),
(310, 'storefront_newsletter_bg_image', 0, 's:2:\"16\";', '2022-01-08 22:15:33', '2022-01-08 22:15:33');

-- --------------------------------------------------------

--
-- Table structure for table `setting_translations`
--

CREATE TABLE `setting_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `setting_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_translations`
--

INSERT INTO `setting_translations` (`id`, `setting_id`, `locale`, `value`) VALUES
(1, 1, 'en', 's:7:\"My Shop\";'),
(2, 23, 'en', 's:13:\"Free Shipping\";'),
(3, 24, 'en', 's:12:\"Local Pickup\";'),
(4, 25, 'en', 's:9:\"Flat Rate\";'),
(5, 26, 'en', 's:6:\"PayPal\";'),
(6, 27, 'en', 's:28:\"Pay via your PayPal account.\";'),
(7, 28, 'en', 's:6:\"Stripe\";'),
(8, 29, 'en', 's:29:\"Pay via credit or debit card.\";'),
(9, 30, 'en', 's:5:\"Paytm\";'),
(10, 31, 'en', 's:103:\"The best payment gateway provider in India for e-payment through credit card, debit card & net banking.\";'),
(11, 32, 'en', 's:8:\"Razorpay\";'),
(12, 33, 'en', 's:74:\"Pay securely by Credit or Debit card or Internet Banking through Razorpay.\";'),
(13, 34, 'en', 's:9:\"Instamojo\";'),
(14, 35, 'en', 's:16:\"CC/DB/NB/Wallets\";'),
(15, 36, 'en', 's:16:\"Cash On Delivery\";'),
(16, 37, 'en', 's:28:\"Pay with cash upon delivery.\";'),
(17, 38, 'en', 's:13:\"Bank Transfer\";'),
(18, 39, 'en', 's:100:\"Make your payment directly into our bank account. Please use your Order ID as the payment reference.\";'),
(19, 40, 'en', 's:19:\"Check / Money Order\";'),
(20, 41, 'en', 's:33:\"Please send a check to our store.\";'),
(21, 43, 'en', 's:21:\"Welcome to Spareazone\";'),
(22, 44, 'en', 's:6:\"Indore\";'),
(23, 45, 'en', 's:21:\"Welcome to Spareazone\";'),
(24, 46, 'en', 's:17:\"Our Services Test\";'),
(25, 47, 'en', 's:11:\"Information\";'),
(26, 42, 'en', 's:70:\"Copyright By Judy Moody Solutions ©  {{ year }}. All rights reserved.\";'),
(27, 48, 'en', 's:12:\"20/7 SUPPORT\";'),
(28, 49, 'en', 's:18:\"Support every time\";'),
(29, 50, 'en', 's:14:\"ACCEPT PAYMENT\";'),
(30, 51, 'en', 's:20:\"Visa, Paypal, Master\";'),
(31, 52, 'en', 's:15:\"SECURED PAYMENT\";'),
(32, 53, 'en', 's:12:\"100% secured\";'),
(33, 54, 'en', 's:13:\"FREE SHIPPING\";'),
(34, 55, 'en', 's:15:\"Order over $100\";'),
(35, 56, 'en', 's:14:\"30 DAYS RETURN\";'),
(36, 57, 'en', 's:17:\"30 days guarantee\";'),
(37, 58, 'en', 's:2:\"17\";'),
(38, 59, 'en', 's:2:\"16\";'),
(39, 60, 'en', 's:2:\"15\";'),
(40, 61, 'en', 's:2:\"19\";'),
(41, 62, 'en', 's:2:\"20\";'),
(42, 63, 'en', 's:2:\"21\";'),
(43, 64, 'en', 's:36:\"Top Categories in Sales and Trending\";'),
(44, 65, 'en', 's:107:\"Last Month upto 1500+ Products Sales From this catagory. You can choose a product from here and save money.\";'),
(45, 66, 'en', 's:8:\"Featured\";'),
(46, 67, 'en', 's:7:\"Special\";'),
(47, 68, 'en', 's:11:\"New Arrival\";'),
(48, 69, 'en', 's:6:\"Latest\";'),
(49, 70, 'en', 's:2:\"22\";'),
(50, 71, 'en', 's:2:\"23\";'),
(51, 72, 'en', 's:6:\"Mobile\";'),
(52, 73, 'en', 's:7:\"Fashion\";'),
(53, 74, 'en', 's:7:\"Laptops\";'),
(54, 75, 'en', 's:7:\"Tablets\";'),
(55, 76, 'en', 's:2:\"24\";'),
(56, 77, 'en', 's:2:\"25\";'),
(57, 78, 'en', 's:2:\"26\";'),
(58, 79, 'en', 's:16:\"Hot Best Sellers\";'),
(59, 80, 'en', 's:15:\"Latest Products\";'),
(60, 81, 'en', 's:7:\"On Sell\";'),
(61, 82, 'en', 's:11:\"Top Selling\";'),
(62, 83, 'en', 's:14:\"Mradul Testing\";'),
(63, 84, 'en', 's:2:\"27\";'),
(64, 232, 'en', 's:2:\"28\";'),
(65, 233, 'en', 's:2:\"28\";'),
(66, 237, 'en', 'N;'),
(67, 238, 'en', 'N;'),
(68, 239, 'en', 'N;');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `speed` int(11) DEFAULT NULL,
  `autoplay` tinyint(1) DEFAULT NULL,
  `autoplay_speed` int(11) DEFAULT NULL,
  `fade` tinyint(1) NOT NULL DEFAULT 0,
  `dots` tinyint(1) DEFAULT NULL,
  `arrows` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `speed`, `autoplay`, `autoplay_speed`, `fade`, `dots`, `arrows`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 3000, 0, 1, 1, '2022-01-08 14:29:09', '2022-01-08 14:29:09'),
(2, NULL, 1, 3000, 0, 1, 1, '2022-02-19 09:54:27', '2022-02-19 09:54:27');

-- --------------------------------------------------------

--
-- Table structure for table `slider_slides`
--

CREATE TABLE `slider_slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_id` int(10) UNSIGNED NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_to_action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_in_new_window` tinyint(1) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_slides`
--

INSERT INTO `slider_slides` (`id`, `slider_id`, `options`, `call_to_action_url`, `open_in_new_window`, `position`, `created_at`, `updated_at`) VALUES
(1, 1, '{\"caption_1\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"caption_2\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"call_to_action\":{\"delay\":null,\"effect\":\"fadeInUp\"}}', NULL, 1, 0, '2022-01-08 14:29:09', '2022-01-08 14:29:09'),
(2, 1, '{\"caption_1\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"caption_2\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"call_to_action\":{\"delay\":null,\"effect\":\"fadeInUp\"}}', NULL, 1, 1, '2022-01-08 14:29:09', '2022-01-08 14:29:09'),
(3, 1, '{\"caption_1\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"caption_2\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"call_to_action\":{\"delay\":null,\"effect\":\"fadeInUp\"}}', NULL, 0, 2, '2022-01-08 20:24:49', '2022-01-08 20:24:49'),
(4, 2, '{\"caption_1\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"caption_2\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"call_to_action\":{\"delay\":null,\"effect\":\"fadeInUp\"}}', 'https://aainaskill.com/Newcom/public/products/portable-oiling-system-os512-g', 0, 0, '2022-02-19 09:54:27', '2022-02-19 09:56:35');

-- --------------------------------------------------------

--
-- Table structure for table `slider_slide_translations`
--

CREATE TABLE `slider_slide_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_slide_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `caption_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_to_action_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direction` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_slide_translations`
--

INSERT INTO `slider_slide_translations` (`id`, `slider_slide_id`, `locale`, `file_id`, `caption_1`, `caption_2`, `call_to_action_text`, `direction`) VALUES
(1, 1, 'en', 9, 'VR 3D glasses with remote control gamepad at best price', 'BUY NOW', NULL, 'left'),
(2, 2, 'en', 10, 'testing 2', 'work', NULL, 'left'),
(3, 3, 'en', 12, NULL, NULL, NULL, 'left'),
(4, 4, 'en', 25, 'Top Deals', 'Purchase From Our Site', 'Testing on my bridge', 'left');

-- --------------------------------------------------------

--
-- Table structure for table `slider_translations`
--

CREATE TABLE `slider_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_translations`
--

INSERT INTO `slider_translations` (`id`, `slider_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'main'),
(2, 2, 'en', 'Test Slider');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'demo', '2022-01-06 22:34:33', '2022-01-06 22:34:33'),
(2, 'applied', '2022-01-06 22:34:52', '2022-01-06 22:34:52'),
(3, 'https://aainaskill.com/Newcom/public/products', '2022-02-19 09:35:42', '2022-02-19 09:36:22'),
(4, 'kishan', '2022-03-10 20:33:21', '2022-03-10 20:33:21');

-- --------------------------------------------------------

--
-- Table structure for table `tag_translations`
--

CREATE TABLE `tag_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tag_translations`
--

INSERT INTO `tag_translations` (`id`, `tag_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'demo'),
(2, 2, 'en', 'Applied'),
(3, 3, 'en', 'top deals'),
(4, 4, 'en', 'Kishan');

-- --------------------------------------------------------

--
-- Table structure for table `tax_classes`
--

CREATE TABLE `tax_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `based_on` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tax_classes`
--

INSERT INTO `tax_classes` (`id`, `based_on`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'billing_address', NULL, '2022-01-08 15:46:32', '2022-01-08 15:46:32');

-- --------------------------------------------------------

--
-- Table structure for table `tax_class_translations`
--

CREATE TABLE `tax_class_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `tax_class_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tax_class_translations`
--

INSERT INTO `tax_class_translations` (`id`, `tax_class_id`, `locale`, `label`) VALUES
(1, 1, 'en', 'edithtis');

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `tax_class_id` int(10) UNSIGNED NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(8,4) UNSIGNED NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rate_translations`
--

CREATE TABLE `tax_rate_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `tax_rate_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

CREATE TABLE `throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `type`, `ip`, `created_at`, `updated_at`) VALUES
(1, NULL, 'global', NULL, '2022-01-21 14:29:27', '2022-01-21 14:29:27'),
(2, NULL, 'ip', '2405:205:c8ef:bd52::9f0:10b1', '2022-01-21 14:29:27', '2022-01-21 14:29:27'),
(3, 1, 'user', NULL, '2022-01-21 14:29:27', '2022-01-21 14:29:27'),
(4, NULL, 'global', NULL, '2022-01-21 14:29:44', '2022-01-21 14:29:44'),
(5, NULL, 'ip', '2405:205:c8ef:bd52::9f0:10b1', '2022-01-21 14:29:44', '2022-01-21 14:29:44'),
(6, 1, 'user', NULL, '2022-01-21 14:29:44', '2022-01-21 14:29:44'),
(7, NULL, 'global', NULL, '2022-01-28 11:18:58', '2022-01-28 11:18:58'),
(8, NULL, 'ip', '1.187.82.202', '2022-01-28 11:18:58', '2022-01-28 11:18:58'),
(9, 1, 'user', NULL, '2022-01-28 11:18:58', '2022-01-28 11:18:58'),
(10, NULL, 'global', NULL, '2022-01-28 11:24:01', '2022-01-28 11:24:01'),
(11, NULL, 'ip', '1.187.82.202', '2022-01-28 11:24:01', '2022-01-28 11:24:01'),
(12, NULL, 'global', NULL, '2022-01-28 14:27:48', '2022-01-28 14:27:48'),
(13, NULL, 'ip', '2402:8100:3865:6ba2:d1b8:dada:d559:e05c', '2022-01-28 14:27:48', '2022-01-28 14:27:48'),
(14, 1, 'user', NULL, '2022-01-28 14:27:48', '2022-01-28 14:27:48'),
(15, NULL, 'global', NULL, '2022-02-03 17:55:45', '2022-02-03 17:55:45'),
(16, NULL, 'ip', '103.251.217.6', '2022-02-03 17:55:45', '2022-02-03 17:55:45'),
(17, 3, 'user', NULL, '2022-02-03 17:55:45', '2022-02-03 17:55:45'),
(18, NULL, 'global', NULL, '2022-02-11 10:16:36', '2022-02-11 10:16:36'),
(19, NULL, 'ip', '2402:3a80:879:263e:8139:fbc3:120a:14ae', '2022-02-11 10:16:36', '2022-02-11 10:16:36'),
(20, 3, 'user', NULL, '2022-02-11 10:16:36', '2022-02-11 10:16:36'),
(21, NULL, 'global', NULL, '2022-02-11 10:16:53', '2022-02-11 10:16:53'),
(22, NULL, 'ip', '2402:3a80:879:263e:8139:fbc3:120a:14ae', '2022-02-11 10:16:53', '2022-02-11 10:16:53'),
(23, 3, 'user', NULL, '2022-02-11 10:16:53', '2022-02-11 10:16:53'),
(24, NULL, 'global', NULL, '2022-02-14 17:44:48', '2022-02-14 17:44:48'),
(25, NULL, 'ip', '2402:3a80:865:5a86:7d04:c6b1:85f4:18c7', '2022-02-14 17:44:48', '2022-02-14 17:44:48'),
(26, 3, 'user', NULL, '2022-02-14 17:44:48', '2022-02-14 17:44:48'),
(27, NULL, 'global', NULL, '2022-02-14 17:45:16', '2022-02-14 17:45:16'),
(28, NULL, 'ip', '42.106.9.233', '2022-02-14 17:45:16', '2022-02-14 17:45:16'),
(29, 3, 'user', NULL, '2022-02-14 17:45:16', '2022-02-14 17:45:16'),
(30, NULL, 'global', NULL, '2022-02-15 22:41:01', '2022-02-15 22:41:01'),
(31, NULL, 'ip', '2409:4041:2d14:a6a9::3989:eb0a', '2022-02-15 22:41:01', '2022-02-15 22:41:01'),
(32, 3, 'user', NULL, '2022-02-15 22:41:01', '2022-02-15 22:41:01'),
(33, NULL, 'global', NULL, '2022-02-17 23:53:15', '2022-02-17 23:53:15'),
(34, NULL, 'ip', '2405:201:3016:b0e9:d456:cab2:c129:c5d4', '2022-02-17 23:53:15', '2022-02-17 23:53:15'),
(35, 1, 'user', NULL, '2022-02-17 23:53:15', '2022-02-17 23:53:15'),
(36, NULL, 'global', NULL, '2022-03-02 15:54:03', '2022-03-02 15:54:03'),
(37, NULL, 'ip', '49.15.168.203', '2022-03-02 15:54:03', '2022-03-02 15:54:03'),
(38, 1, 'user', NULL, '2022-03-02 15:54:03', '2022-03-02 15:54:03'),
(39, NULL, 'global', NULL, '2022-03-07 21:43:38', '2022-03-07 21:43:38'),
(40, NULL, 'ip', '49.36.19.43', '2022-03-07 21:43:38', '2022-03-07 21:43:38'),
(41, NULL, 'global', NULL, '2022-03-07 21:44:47', '2022-03-07 21:44:47'),
(42, NULL, 'ip', '49.36.19.43', '2022-03-07 21:44:47', '2022-03-07 21:44:47'),
(43, 1, 'user', NULL, '2022-03-07 21:44:47', '2022-03-07 21:44:47'),
(44, NULL, 'global', NULL, '2022-05-17 10:53:55', '2022-05-17 10:53:55'),
(45, NULL, 'ip', '27.61.142.136', '2022-05-17 10:53:55', '2022-05-17 10:53:55'),
(46, 3, 'user', NULL, '2022-05-17 10:53:55', '2022-05-17 10:53:55'),
(47, NULL, 'global', NULL, '2022-05-17 10:54:09', '2022-05-17 10:54:09'),
(48, NULL, 'ip', '27.61.142.136', '2022-05-17 10:54:09', '2022-05-17 10:54:09'),
(49, 1, 'user', NULL, '2022-05-17 10:54:09', '2022-05-17 10:54:09');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translation_translations`
--

CREATE TABLE `translation_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `translation_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `updater_scripts`
--

CREATE TABLE `updater_scripts` (
  `id` int(10) UNSIGNED NOT NULL,
  `script` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `updater_scripts`
--

INSERT INTO `updater_scripts` (`id`, `script`) VALUES
(1, 'V2_0_0');

-- --------------------------------------------------------

--
-- Table structure for table `up_sell_products`
--

CREATE TABLE `up_sell_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `up_sell_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `permissions`, `last_login`, `created_at`, `updated_at`) VALUES
(1, 'Jignesh', 'Trivedi', 'admin@gmail.com', '1234567890', '$2y$10$10oVqBAhXbM9gU3TZ4OWB.iP4i/2Aird/iAqO4G6M8mc6699vdqoK', '[]', '2022-06-28 10:19:36', '2021-12-31 01:13:30', '2022-06-28 10:19:36'),
(2, 'Kishan', 'Joshi', 'jigs0004@gmail.com', '9426565624', '$2y$10$yCSsWIZO37ey8UL.9FaOfe309skjh0OrcL5t/byP.38EtK.ga8Sc6', '[]', '2022-01-21 13:39:09', '2022-01-21 12:37:17', '2022-01-21 14:34:18'),
(3, 'Seller', 'Try', 'seller@gmail.com', '9981036222', '$2y$10$jvlCMU3umi4WnAYVmfvaPOzy517xPwaxYBcU96e.7qmzoWzVCpa9C', '[]', '2022-02-23 19:49:55', '2022-01-28 11:25:21', '2022-02-23 19:49:55'),
(4, 'Chetan', 'Lade', 'chetan@gmail.com', '8319007787', '$2y$10$neT1TQNj0nDzCb.D9uCvTu8FpAMwDLtYKigIOwiM7ivQXzyWDwAZG', '{\"admin.attributes.index\":true,\"admin.attributes.create\":true,\"admin.attributes.edit\":true,\"admin.attributes.destroy\":true,\"admin.brands.index\":true,\"admin.brands.create\":true,\"admin.brands.edit\":true,\"admin.brands.destroy\":true}', '2022-02-17 23:25:30', '2022-02-17 23:22:54', '2022-02-17 23:26:44'),
(5, 'Mradul', 'Testing', 'vendor@gmail.com', '9981036222', '$2y$10$4Y81gNm63nubjRzZkpUkW.U2X07ksT4EUqJpQpVVrYPQmtbJZL.2O', '[]', '2022-02-19 09:49:05', '2022-02-19 09:47:34', '2022-02-19 09:49:05');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-12-31 01:13:32', '2021-12-31 01:13:32'),
(5, 7, '2022-02-19 09:47:34', '2022-02-19 09:47:34');

-- --------------------------------------------------------

--
-- Table structure for table `wish_lists`
--

CREATE TABLE `wish_lists` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wish_lists`
--

INSERT INTO `wish_lists` (`user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(2, 3, '2022-01-21 12:38:28', '2022-01-21 12:38:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_slug_unique` (`slug`),
  ADD KEY `attributes_attribute_set_id_index` (`attribute_set_id`);

--
-- Indexes for table `attribute_categories`
--
ALTER TABLE `attribute_categories`
  ADD PRIMARY KEY (`attribute_id`,`category_id`),
  ADD KEY `attribute_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `attribute_sets`
--
ALTER TABLE `attribute_sets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_set_translations`
--
ALTER TABLE `attribute_set_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_set_translations_attribute_set_id_locale_unique` (`attribute_set_id`,`locale`);

--
-- Indexes for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_translations_attribute_id_locale_unique` (`attribute_id`,`locale`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_values_attribute_id_index` (`attribute_id`);

--
-- Indexes for table `attribute_value_translations`
--
ALTER TABLE `attribute_value_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_value_translations_attribute_value_id_locale_unique` (`attribute_value_id`,`locale`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `brand_translations`
--
ALTER TABLE `brand_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brand_translations_brand_id_locale_unique` (`brand_id`,`locale`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_translations_category_id_locale_unique` (`category_id`,`locale`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupons_code_index` (`code`);

--
-- Indexes for table `coupon_categories`
--
ALTER TABLE `coupon_categories`
  ADD PRIMARY KEY (`coupon_id`,`category_id`,`exclude`),
  ADD KEY `coupon_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `coupon_products`
--
ALTER TABLE `coupon_products`
  ADD PRIMARY KEY (`coupon_id`,`product_id`),
  ADD KEY `coupon_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `coupon_translations`
--
ALTER TABLE `coupon_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupon_translations_coupon_id_locale_unique` (`coupon_id`,`locale`);

--
-- Indexes for table `cross_sell_products`
--
ALTER TABLE `cross_sell_products`
  ADD PRIMARY KEY (`product_id`,`cross_sell_product_id`),
  ADD KEY `cross_sell_products_cross_sell_product_id_foreign` (`cross_sell_product_id`);

--
-- Indexes for table `currency_rates`
--
ALTER TABLE `currency_rates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currency_rates_currency_unique` (`currency`);

--
-- Indexes for table `default_addresses`
--
ALTER TABLE `default_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `default_addresses_customer_id_foreign` (`customer_id`),
  ADD KEY `default_addresses_address_id_foreign` (`address_id`);

--
-- Indexes for table `entity_files`
--
ALTER TABLE `entity_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entity_files_entity_type_entity_id_index` (`entity_type`,`entity_id`),
  ADD KEY `entity_files_file_id_index` (`file_id`),
  ADD KEY `entity_files_zone_index` (`zone`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_user_id_index` (`user_id`),
  ADD KEY `files_filename_index` (`filename`);

--
-- Indexes for table `flash_sales`
--
ALTER TABLE `flash_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_sale_products`
--
ALTER TABLE `flash_sale_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flash_sale_products_flash_sale_id_foreign` (`flash_sale_id`),
  ADD KEY `flash_sale_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `flash_sale_product_orders`
--
ALTER TABLE `flash_sale_product_orders`
  ADD PRIMARY KEY (`flash_sale_product_id`,`order_id`),
  ADD KEY `flash_sale_product_orders_order_id_foreign` (`order_id`);

--
-- Indexes for table `flash_sale_translations`
--
ALTER TABLE `flash_sale_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `flash_sale_translations_flash_sale_id_locale_unique` (`flash_sale_id`,`locale`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_parent_id_foreign` (`parent_id`),
  ADD KEY `menu_items_category_id_foreign` (`category_id`),
  ADD KEY `menu_items_page_id_foreign` (`page_id`),
  ADD KEY `menu_items_menu_id_index` (`menu_id`);

--
-- Indexes for table `menu_item_translations`
--
ALTER TABLE `menu_item_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_item_translations_menu_item_id_locale_unique` (`menu_item_id`,`locale`);

--
-- Indexes for table `menu_translations`
--
ALTER TABLE `menu_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_translations_menu_id_locale_unique` (`menu_id`,`locale`);

--
-- Indexes for table `meta_data`
--
ALTER TABLE `meta_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_data_entity_type_entity_id_index` (`entity_type`,`entity_id`);

--
-- Indexes for table `meta_data_translations`
--
ALTER TABLE `meta_data_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `meta_data_translations_meta_data_id_locale_unique` (`meta_data_id`,`locale`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `option_translations`
--
ALTER TABLE `option_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `option_translations_option_id_locale_unique` (`option_id`,`locale`);

--
-- Indexes for table `option_values`
--
ALTER TABLE `option_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `option_values_option_id_index` (`option_id`);

--
-- Indexes for table `option_value_translations`
--
ALTER TABLE `option_value_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `option_value_translations_option_value_id_locale_unique` (`option_value_id`,`locale`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_index` (`customer_id`),
  ADD KEY `orders_coupon_id_index` (`coupon_id`);

--
-- Indexes for table `order_downloads`
--
ALTER TABLE `order_downloads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_downloads_order_id_foreign` (`order_id`),
  ADD KEY `order_downloads_file_id_foreign` (`file_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_order_id_foreign` (`order_id`),
  ADD KEY `order_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `order_product_options`
--
ALTER TABLE `order_product_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_product_options_order_product_id_option_id_unique` (`order_product_id`,`option_id`),
  ADD KEY `order_product_options_option_id_foreign` (`option_id`);

--
-- Indexes for table `order_product_option_values`
--
ALTER TABLE `order_product_option_values`
  ADD PRIMARY KEY (`order_product_option_id`,`option_value_id`),
  ADD KEY `order_product_option_values_option_value_id_foreign` (`option_value_id`);

--
-- Indexes for table `order_taxes`
--
ALTER TABLE `order_taxes`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `order_taxes_tax_rate_id_foreign` (`tax_rate_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `page_translations_page_id_locale_unique` (`page_id`,`locale`);

--
-- Indexes for table `persistences`
--
ALTER TABLE `persistences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `persistences_code_unique` (`code`),
  ADD KEY `persistences_user_id_foreign` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_attributes_product_id_index` (`product_id`),
  ADD KEY `product_attributes_attribute_id_index` (`attribute_id`);

--
-- Indexes for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD PRIMARY KEY (`product_attribute_id`,`attribute_value_id`),
  ADD KEY `product_attribute_values_attribute_value_id_foreign` (`attribute_value_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `product_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_options`
--
ALTER TABLE `product_options`
  ADD PRIMARY KEY (`product_id`,`option_id`),
  ADD KEY `product_options_option_id_foreign` (`option_id`);

--
-- Indexes for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`product_id`,`tag_id`),
  ADD KEY `product_tags_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_translations_product_id_locale_unique` (`product_id`,`locale`);
ALTER TABLE `product_translations` ADD FULLTEXT KEY `name` (`name`);

--
-- Indexes for table `related_products`
--
ALTER TABLE `related_products`
  ADD PRIMARY KEY (`product_id`,`related_product_id`),
  ADD KEY `related_products_related_product_id_foreign` (`related_product_id`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminders_user_id_foreign` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_reviewer_id_index` (`reviewer_id`),
  ADD KEY `reviews_product_id_index` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_translations`
--
ALTER TABLE `role_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_translations_role_id_locale_unique` (`role_id`,`locale`);

--
-- Indexes for table `search_terms`
--
ALTER TABLE `search_terms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `search_terms_term_unique` (`term`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_translations_setting_id_locale_unique` (`setting_id`,`locale`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_slides`
--
ALTER TABLE `slider_slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slider_slides_slider_id_foreign` (`slider_id`);

--
-- Indexes for table `slider_slide_translations`
--
ALTER TABLE `slider_slide_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slider_slide_translations_slider_slide_id_locale_unique` (`slider_slide_id`,`locale`);

--
-- Indexes for table `slider_translations`
--
ALTER TABLE `slider_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slider_translations_slider_id_locale_unique` (`slider_id`,`locale`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indexes for table `tag_translations`
--
ALTER TABLE `tag_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tag_translations_tag_id_locale_unique` (`tag_id`,`locale`);

--
-- Indexes for table `tax_classes`
--
ALTER TABLE `tax_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_class_translations`
--
ALTER TABLE `tax_class_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_class_translations_tax_class_id_locale_unique` (`tax_class_id`,`locale`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tax_rates_tax_class_id_index` (`tax_class_id`);

--
-- Indexes for table `tax_rate_translations`
--
ALTER TABLE `tax_rate_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_rate_translations_tax_rate_id_locale_unique` (`tax_rate_id`,`locale`);

--
-- Indexes for table `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_foreign` (`user_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transactions_order_id_unique` (`order_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_key_index` (`key`);

--
-- Indexes for table `translation_translations`
--
ALTER TABLE `translation_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translation_translations_translation_id_locale_unique` (`translation_id`,`locale`);

--
-- Indexes for table `updater_scripts`
--
ALTER TABLE `updater_scripts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `up_sell_products`
--
ALTER TABLE `up_sell_products`
  ADD PRIMARY KEY (`product_id`,`up_sell_product_id`),
  ADD KEY `up_sell_products_up_sell_product_id_foreign` (`up_sell_product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD PRIMARY KEY (`user_id`,`product_id`),
  ADD KEY `wish_lists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `attribute_sets`
--
ALTER TABLE `attribute_sets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `attribute_set_translations`
--
ALTER TABLE `attribute_set_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attribute_value_translations`
--
ALTER TABLE `attribute_value_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brand_translations`
--
ALTER TABLE `brand_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon_translations`
--
ALTER TABLE `coupon_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currency_rates`
--
ALTER TABLE `currency_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `default_addresses`
--
ALTER TABLE `default_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entity_files`
--
ALTER TABLE `entity_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `flash_sales`
--
ALTER TABLE `flash_sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `flash_sale_products`
--
ALTER TABLE `flash_sale_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `flash_sale_translations`
--
ALTER TABLE `flash_sale_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `menu_item_translations`
--
ALTER TABLE `menu_item_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `menu_translations`
--
ALTER TABLE `menu_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `meta_data`
--
ALTER TABLE `meta_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `meta_data_translations`
--
ALTER TABLE `meta_data_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `option_translations`
--
ALTER TABLE `option_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `option_values`
--
ALTER TABLE `option_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `option_value_translations`
--
ALTER TABLE `option_value_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_downloads`
--
ALTER TABLE `order_downloads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_product_options`
--
ALTER TABLE `order_product_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `page_translations`
--
ALTER TABLE `page_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `persistences`
--
ALTER TABLE `persistences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_translations`
--
ALTER TABLE `product_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `role_translations`
--
ALTER TABLE `role_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `search_terms`
--
ALTER TABLE `search_terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;

--
-- AUTO_INCREMENT for table `setting_translations`
--
ALTER TABLE `setting_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slider_slides`
--
ALTER TABLE `slider_slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `slider_slide_translations`
--
ALTER TABLE `slider_slide_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `slider_translations`
--
ALTER TABLE `slider_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tag_translations`
--
ALTER TABLE `tag_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tax_classes`
--
ALTER TABLE `tax_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tax_class_translations`
--
ALTER TABLE `tax_class_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_rate_translations`
--
ALTER TABLE `tax_rate_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translation_translations`
--
ALTER TABLE `translation_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `updater_scripts`
--
ALTER TABLE `updater_scripts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activations`
--
ALTER TABLE `activations`
  ADD CONSTRAINT `activations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attributes`
--
ALTER TABLE `attributes`
  ADD CONSTRAINT `attributes_attribute_set_id_foreign` FOREIGN KEY (`attribute_set_id`) REFERENCES `attribute_sets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_categories`
--
ALTER TABLE `attribute_categories`
  ADD CONSTRAINT `attribute_categories_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_set_translations`
--
ALTER TABLE `attribute_set_translations`
  ADD CONSTRAINT `attribute_set_translations_attribute_set_id_foreign` FOREIGN KEY (`attribute_set_id`) REFERENCES `attribute_sets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  ADD CONSTRAINT `attribute_translations_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_value_translations`
--
ALTER TABLE `attribute_value_translations`
  ADD CONSTRAINT `attribute_value_translations_attribute_value_id_foreign` FOREIGN KEY (`attribute_value_id`) REFERENCES `attribute_values` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupon_categories`
--
ALTER TABLE `coupon_categories`
  ADD CONSTRAINT `coupon_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coupon_categories_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupon_products`
--
ALTER TABLE `coupon_products`
  ADD CONSTRAINT `coupon_products_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coupon_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupon_translations`
--
ALTER TABLE `coupon_translations`
  ADD CONSTRAINT `coupon_translations_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cross_sell_products`
--
ALTER TABLE `cross_sell_products`
  ADD CONSTRAINT `cross_sell_products_cross_sell_product_id_foreign` FOREIGN KEY (`cross_sell_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cross_sell_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `default_addresses`
--
ALTER TABLE `default_addresses`
  ADD CONSTRAINT `default_addresses_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `default_addresses_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `entity_files`
--
ALTER TABLE `entity_files`
  ADD CONSTRAINT `entity_files_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `flash_sale_products`
--
ALTER TABLE `flash_sale_products`
  ADD CONSTRAINT `flash_sale_products_flash_sale_id_foreign` FOREIGN KEY (`flash_sale_id`) REFERENCES `flash_sales` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `flash_sale_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `flash_sale_product_orders`
--
ALTER TABLE `flash_sale_product_orders`
  ADD CONSTRAINT `flash_sale_product_orders_flash_sale_product_id_foreign` FOREIGN KEY (`flash_sale_product_id`) REFERENCES `flash_sale_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `flash_sale_product_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `flash_sale_translations`
--
ALTER TABLE `flash_sale_translations`
  ADD CONSTRAINT `flash_sale_translations_flash_sale_id_foreign` FOREIGN KEY (`flash_sale_id`) REFERENCES `flash_sales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_items_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_item_translations`
--
ALTER TABLE `menu_item_translations`
  ADD CONSTRAINT `menu_item_translations_menu_item_id_foreign` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_translations`
--
ALTER TABLE `menu_translations`
  ADD CONSTRAINT `menu_translations_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meta_data_translations`
--
ALTER TABLE `meta_data_translations`
  ADD CONSTRAINT `meta_data_translations_meta_data_id_foreign` FOREIGN KEY (`meta_data_id`) REFERENCES `meta_data` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `option_translations`
--
ALTER TABLE `option_translations`
  ADD CONSTRAINT `option_translations_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `option_values`
--
ALTER TABLE `option_values`
  ADD CONSTRAINT `option_values_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `option_value_translations`
--
ALTER TABLE `option_value_translations`
  ADD CONSTRAINT `option_value_translations_option_value_id_foreign` FOREIGN KEY (`option_value_id`) REFERENCES `option_values` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_downloads`
--
ALTER TABLE `order_downloads`
  ADD CONSTRAINT `order_downloads_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_downloads_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_product_options`
--
ALTER TABLE `order_product_options`
  ADD CONSTRAINT `order_product_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_product_options_order_product_id_foreign` FOREIGN KEY (`order_product_id`) REFERENCES `order_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_product_option_values`
--
ALTER TABLE `order_product_option_values`
  ADD CONSTRAINT `order_product_option_values_option_value_id_foreign` FOREIGN KEY (`option_value_id`) REFERENCES `option_values` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_product_option_values_order_product_option_id_foreign` FOREIGN KEY (`order_product_option_id`) REFERENCES `order_product_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_taxes`
--
ALTER TABLE `order_taxes`
  ADD CONSTRAINT `order_taxes_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_taxes_tax_rate_id_foreign` FOREIGN KEY (`tax_rate_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD CONSTRAINT `page_translations_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `persistences`
--
ALTER TABLE `persistences`
  ADD CONSTRAINT `persistences_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD CONSTRAINT `product_attributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_attributes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD CONSTRAINT `product_attribute_values_attribute_value_id_foreign` FOREIGN KEY (`attribute_value_id`) REFERENCES `attribute_values` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_attribute_values_product_attribute_id_foreign` FOREIGN KEY (`product_attribute_id`) REFERENCES `product_attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_categories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_options`
--
ALTER TABLE `product_options`
  ADD CONSTRAINT `product_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_options_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD CONSTRAINT `product_tags_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD CONSTRAINT `product_translations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `related_products`
--
ALTER TABLE `related_products`
  ADD CONSTRAINT `related_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `related_products_related_product_id_foreign` FOREIGN KEY (`related_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reminders`
--
ALTER TABLE `reminders`
  ADD CONSTRAINT `reminders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_translations`
--
ALTER TABLE `role_translations`
  ADD CONSTRAINT `role_translations_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD CONSTRAINT `setting_translations_setting_id_foreign` FOREIGN KEY (`setting_id`) REFERENCES `settings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slider_slides`
--
ALTER TABLE `slider_slides`
  ADD CONSTRAINT `slider_slides_slider_id_foreign` FOREIGN KEY (`slider_id`) REFERENCES `sliders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slider_slide_translations`
--
ALTER TABLE `slider_slide_translations`
  ADD CONSTRAINT `slider_slide_translations_slider_slide_id_foreign` FOREIGN KEY (`slider_slide_id`) REFERENCES `slider_slides` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slider_translations`
--
ALTER TABLE `slider_translations`
  ADD CONSTRAINT `slider_translations_slider_id_foreign` FOREIGN KEY (`slider_id`) REFERENCES `sliders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tag_translations`
--
ALTER TABLE `tag_translations`
  ADD CONSTRAINT `tag_translations_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_class_translations`
--
ALTER TABLE `tax_class_translations`
  ADD CONSTRAINT `tax_class_translations_tax_class_id_foreign` FOREIGN KEY (`tax_class_id`) REFERENCES `tax_classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD CONSTRAINT `tax_rates_tax_class_id_foreign` FOREIGN KEY (`tax_class_id`) REFERENCES `tax_classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_rate_translations`
--
ALTER TABLE `tax_rate_translations`
  ADD CONSTRAINT `tax_rate_translations_tax_rate_id_foreign` FOREIGN KEY (`tax_rate_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `throttle`
--
ALTER TABLE `throttle`
  ADD CONSTRAINT `throttle_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `translation_translations`
--
ALTER TABLE `translation_translations`
  ADD CONSTRAINT `translation_translations_translation_id_foreign` FOREIGN KEY (`translation_id`) REFERENCES `translations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_sell_products`
--
ALTER TABLE `up_sell_products`
  ADD CONSTRAINT `up_sell_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_sell_products_up_sell_product_id_foreign` FOREIGN KEY (`up_sell_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD CONSTRAINT `wish_lists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wish_lists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
