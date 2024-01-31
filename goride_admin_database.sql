-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 22, 2022 at 03:07 PM
-- Server version: 5.7.36
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `goride_admin_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `routes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `permissions` (`id`, `role_id`, `permission`, `routes`, `created_at`, `updated_at`) VALUES
(1, 1, 'god-eye', 'map', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(2, 1, 'roles', 'roles.list', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(3, 1, 'roles', 'roles.create', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(4, 1, 'roles', 'roles.store', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(5, 1, 'roles', 'roles.edit', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(6, 1, 'roles', 'roles.update', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(7, 1, 'roles', 'roles.delete', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(8, 1, 'admins', 'admin.list', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(9, 1, 'admins', 'admin.create', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(10, 1, 'admins', 'admin.store', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(11, 1, 'admins', 'admin.edit', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(12, 1, 'admins', 'admin.update', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(13, 1, 'admins', 'admin.delete', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(14, 1, 'users', 'user.list', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(15, 1, 'users', 'user.edit', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(16, 1, 'users', 'user.view', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(17, 1, 'drivers', 'driver.list', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(18, 1, 'drivers', 'driver.edit', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(19, 1, 'drivers', 'driver.view', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(20, 1, 'documents', 'document.list', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(21, 1, 'documents', 'document.create', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(22, 1, 'documents', 'document.edit', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(23, 1, 'deleted-documents', 'document.deleted', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(24, 1, 'reports', 'user.report', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(25, 1, 'reports', 'driver.report', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(26, 1, 'reports', 'ride.report', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(27, 1, 'reports', 'intercity.report', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(28, 1, 'reports', 'transaction.report', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(29, 1, 'service', 'service.list', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(30, 1, 'service', 'service.create', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(31, 1, 'service', 'service.edit', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(32, 1, 'ride_order', 'order.list', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(33, 1, 'ride_order', 'order.view', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(34, 1, 'intercity_service', 'intercity.service.list', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(35, 1, 'intercity_service', 'intercity.service.edit', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(36, 1, 'intercity_order', 'intercity.order.list', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(37, 1, 'intercity_order', 'intercity.order.view', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(38, 1, 'freight', 'freight.list', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(39, 1, 'freight', 'freight.create', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(40, 1, 'freight', 'freight.edit', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(41, 1, 'airports', 'airports.list', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(42, 1, 'airports', 'airports.create', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(43, 1, 'airports', 'airports.edit', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(44, 1, 'vehicle-type', 'vehicle.type.list', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(45, 1, 'vehicle-type', 'vehicle.type.create', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(46, 1, 'vehicle-type', 'vehicle.type.edit', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(47, 1, 'driver-rules', 'rule.list', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(48, 1, 'driver-rules', 'rule.create', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(49, 1, 'driver-rules', 'rule.edit', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(50, 1, 'deleted-driver-rules', 'rule.delete.list', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(51, 1, 'cms', 'cms.list', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(52, 1, 'cms', 'cms.create', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(53, 1, 'cms', 'cms.edit', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(54, 1, 'banners', 'banners.list', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(55, 1, 'banners', 'banners.create', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(56, 1, 'banners', 'banners.edit', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(57, 1, 'deleted-banner', 'banner.delete.list', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(58, 1, 'on-board', 'onboard.list', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(59, 1, 'on-board', 'onboard.edit', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(60, 1, 'faq', 'faq.list', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(61, 1, 'faq', 'faq.create', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(62, 1, 'faq', 'faq.edit', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(63, 1, 'sos', 'sos.list', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(64, 1, 'sos', 'sos.edit', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(65, 1, 'tax', 'tax.list', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(66, 1, 'tax', 'tax.create', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(67, 1, 'tax', 'tax.edit', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(68, 1, 'coupon', 'coupon.list', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(69, 1, 'coupon', 'coupon.create', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(70, 1, 'coupon', 'coupon.edit', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(71, 1, 'deleted-coupon', 'coupon.delete.list', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(72, 1, 'currency', 'currency.list', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(73, 1, 'currency', 'currency.create', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(74, 1, 'currency', 'currency.edit', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(75, 1, 'language', 'language.list', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(76, 1, 'language', 'language.create', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(77, 1, 'language', 'language.edit', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(78, 1, 'deleted-language', 'language.delete.list', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(79, 1, 'payout-request', 'payout-request', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(80, 1, 'drivers-wallet-transaction', 'driver.wallet.list', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(81, 1, 'users-wallet-transaction', 'user.wallet.list', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(82, 1, 'global-setting', 'global-setting', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(83, 1, 'admin-commission', 'admin-commision', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(84, 1, 'payment-method', 'payment-method', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(85, 1, 'homepageTemplate', 'home-page', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(86, 1, 'header-template', 'header', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(87, 1, 'footer-template', 'footer', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(88, 1, 'privacy', 'privacy', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(89, 1, 'terms', 'terms', '2023-12-04 10:37:46', '2023-12-04 10:37:46'),
(90, 1, 'users', 'user.delete', '2023-12-06 13:26:13', '2023-12-06 13:26:13'),
(91, 1, 'drivers', 'driver.delete', '2023-12-06 13:26:13', '2023-12-06 13:26:13'),
(92, 1, 'approve_drivers', 'approve.driver.list', '2023-12-06 13:26:13', '2023-12-06 13:26:13'),
(93, 1, 'approve_drivers', 'approve.driver.delete', '2023-12-06 13:26:13', '2023-12-06 13:26:13'),
(94, 1, 'pending_drivers', 'pending.driver.list', '2023-12-06 13:26:13', '2023-12-06 13:26:13'),
(95, 1, 'pending_drivers', 'pending.driver.delete', '2023-12-06 13:26:13', '2023-12-06 13:26:13'),
(96, 1, 'documents', 'document.delete', '2023-12-06 13:26:13', '2023-12-06 13:26:13'),
(97, 1, 'service', 'service.delete', '2023-12-06 13:26:13', '2023-12-06 13:26:13'),
(98, 1, 'intercity_service', 'intercity.service.delete', '2023-12-06 13:26:13', '2023-12-06 13:26:13'),
(99, 1, 'freight', 'freight.delete', '2023-12-06 13:26:13', '2023-12-06 13:26:13'),
(100, 1, 'airports', 'airports.delete', '2023-12-06 13:26:13', '2023-12-06 13:26:13'),
(101, 1, 'vehicle-type', 'vehicle.type.delete', '2023-12-06 13:26:13', '2023-12-06 13:26:13'),
(102, 1, 'driver-rules', 'rule.delete', '2023-12-06 13:26:13', '2023-12-06 13:26:13'),
(103, 1, 'cms', 'cms.delete', '2023-12-06 13:26:13', '2023-12-06 13:26:13'),
(104, 1, 'banners', 'banners.delete', '2023-12-06 13:26:13', '2023-12-06 13:26:13'),
(105, 1, 'faq', 'faq.delete', '2023-12-06 13:26:13', '2023-12-06 13:26:13'),
(106, 1, 'sos', 'sos.delete', '2023-12-06 13:26:13', '2023-12-06 13:26:13'),
(107, 1, 'tax', 'tax.delete', '2023-12-06 13:26:13', '2023-12-06 13:26:13'),
(108, 1, 'coupon', 'coupon.delete', '2023-12-06 13:26:13', '2023-12-06 13:26:13'),
(109, 1, 'currency', 'currency.delete', '2023-12-06 13:26:13', '2023-12-06 13:26:13'),
(110, 1, 'language', 'language.delete', '2023-12-06 13:26:13', '2023-12-06 13:26:13'),
(111, 1, 'drivers-document', 'driver.document.list', '2023-12-07 06:42:52', '2023-12-07 06:42:52'),
(112, 1, 'drivers-document', 'driver.document.edit', '2023-12-07 06:43:23', '2023-12-07 06:43:23');

-- --------------------------------------------------------
--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------
--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `role` (`id`, `role_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', '2023-11-27 05:10:43', '2023-11-27 06:36:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@goride.com', NULL, '$2y$10$4D/Oi3x7gxPwZ/zxCKtgCOlPNujUnUER0vkMjQ0moL7l3cAJwTIJa', 'zUMdz3RMe8UY6NMTsSscn1I12GDXcfJIDH4cjKjRmykMPkzKyoTkYkAdg2IO', '2022-02-26 12:22:29', '2022-03-02 08:48:06'),
(2, 'Super user', 'admin@demo.com', NULL, '$2y$10$4D/Oi3x7gxPwZ/zxCKtgCOlPNujUnUER0vkMjQ0moL7l3cAJwTIJa', 'Iv14KAPpjUvZclfqM2yCjQJ8VNmcAPaSSV1wX5AtoCRwaDellHDF6ZJlRc6o', '2022-03-02 10:18:22', '2022-03-02 10:18:22');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
