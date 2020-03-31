-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2020 at 06:56 AM
-- Server version: 10.4.10-MariaDB
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
-- Database: `parcel2go`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminparcelupdatestatus`
--

CREATE TABLE `adminparcelupdatestatus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `awb` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Notice` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adminparcelupdatestatus`
--

INSERT INTO `adminparcelupdatestatus` (`id`, `awb`, `action`, `Notice`, `created_at`, `updated_at`) VALUES
(1, '5e81b7ca06a12', 'In progress', 'test purpose', '2020-03-30 05:42:31', '2020-03-30 07:53:31'),
(2, '5e81f49c0e6b3', 'In progress', 'aadasdasd sadsads', '2020-03-30 08:21:19', '2020-03-30 08:21:19'),
(3, '5e81fb96d1973', 'Completed', 'rwerwerwerwerwr', '2020-03-30 08:32:56', '2020-03-30 08:32:56');

-- --------------------------------------------------------

--
-- Table structure for table `admin_config`
--

CREATE TABLE `admin_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 4, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, '2020-03-30 03:03:29'),
(2, 0, 5, 'Admin', 'fa-tasks', '', NULL, NULL, '2020-03-30 03:03:29'),
(3, 2, 6, 'Users', 'fa-users', 'auth/users', NULL, NULL, '2020-03-30 03:03:29'),
(4, 2, 7, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, '2020-03-30 03:03:29'),
(5, 2, 8, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, '2020-03-30 03:03:29'),
(6, 2, 9, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, '2020-03-30 03:03:29'),
(7, 2, 10, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, '2020-03-30 03:03:29'),
(8, 0, 11, 'Helpers', 'fa-gears', '', NULL, '2020-03-30 02:58:07', '2020-03-30 03:03:29'),
(9, 8, 12, 'Scaffold', 'fa-keyboard-o', 'helpers/scaffold', NULL, '2020-03-30 02:58:07', '2020-03-30 03:03:29'),
(10, 8, 13, 'Database terminal', 'fa-database', 'helpers/terminal/database', NULL, '2020-03-30 02:58:07', '2020-03-30 03:03:29'),
(11, 8, 14, 'Laravel artisan', 'fa-terminal', 'helpers/terminal/artisan', NULL, '2020-03-30 02:58:07', '2020-03-30 03:03:29'),
(12, 8, 15, 'Routes', 'fa-list-alt', 'helpers/routes', NULL, '2020-03-30 02:58:07', '2020-03-30 03:03:29'),
(13, 0, 16, 'Log viewer', 'fa-database', 'logs', NULL, '2020-03-30 02:58:34', '2020-03-30 03:03:29'),
(14, 0, 17, 'Config', 'fa-toggle-on', 'config', NULL, '2020-03-30 02:59:06', '2020-03-30 03:03:29'),
(15, 0, 18, 'Media manager', 'fa-file', 'media', NULL, '2020-03-30 02:59:30', '2020-03-30 03:03:29'),
(16, 0, 19, 'Scheduling', 'fa-clock-o', 'scheduling', NULL, '2020-03-30 02:59:50', '2020-03-30 03:03:29'),
(17, 0, 1, 'Parcels', 'fa-inbox', 'listAllUser', '*', '2020-03-30 03:01:30', '2020-03-30 03:03:29'),
(18, 17, 2, 'single', 'fa-bars', 'listAllUser/singleParcel', '*', '2020-03-30 03:02:44', '2020-03-30 03:03:29'),
(19, 17, 3, 'multiple', 'fa-align-justify', 'listAllUser/multipleParcel', '*', '2020-03-30 03:03:19', '2020-03-30 03:03:29'),
(20, 17, 0, 'updated staus', 'fa-arrow-right', 'listAllUser/updated/parcelStatus', '*', '2020-03-30 06:08:40', '2020-03-30 06:08:40'),
(21, 0, 20, 'PHP info', 'fa-exclamation', 'phpinfo', NULL, '2020-03-30 23:10:08', '2020-03-30 23:10:08');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:17:06', '2020-03-30 02:17:06'),
(2, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:17:07', '2020-03-30 02:17:07'),
(3, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:19:10', '2020-03-30 02:19:10'),
(4, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:19:11', '2020-03-30 02:19:11'),
(5, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:20:11', '2020-03-30 02:20:11'),
(6, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:20:12', '2020-03-30 02:20:12'),
(7, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:24:02', '2020-03-30 02:24:02'),
(8, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:24:03', '2020-03-30 02:24:03'),
(9, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:24:17', '2020-03-30 02:24:17'),
(10, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:24:18', '2020-03-30 02:24:18'),
(11, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:24:36', '2020-03-30 02:24:36'),
(12, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:24:37', '2020-03-30 02:24:37'),
(13, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:25:02', '2020-03-30 02:25:02'),
(14, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:25:03', '2020-03-30 02:25:03'),
(15, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:25:22', '2020-03-30 02:25:22'),
(16, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:25:23', '2020-03-30 02:25:23'),
(17, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:27:29', '2020-03-30 02:27:29'),
(18, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:27:30', '2020-03-30 02:27:30'),
(19, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:29:24', '2020-03-30 02:29:24'),
(20, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:29:25', '2020-03-30 02:29:25'),
(21, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:29:57', '2020-03-30 02:29:57'),
(22, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:29:58', '2020-03-30 02:29:58'),
(23, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:30:03', '2020-03-30 02:30:03'),
(24, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:30:03', '2020-03-30 02:30:03'),
(25, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:30:28', '2020-03-30 02:30:28'),
(26, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:30:28', '2020-03-30 02:30:28'),
(27, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:32:17', '2020-03-30 02:32:17'),
(28, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:32:18', '2020-03-30 02:32:18'),
(29, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:32:35', '2020-03-30 02:32:35'),
(30, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:32:36', '2020-03-30 02:32:36'),
(31, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:32:54', '2020-03-30 02:32:54'),
(32, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:32:55', '2020-03-30 02:32:55'),
(33, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:33:06', '2020-03-30 02:33:06'),
(34, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:33:07', '2020-03-30 02:33:07'),
(35, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:33:46', '2020-03-30 02:33:46'),
(36, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:33:47', '2020-03-30 02:33:47'),
(37, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:35:01', '2020-03-30 02:35:01'),
(38, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:35:02', '2020-03-30 02:35:02'),
(39, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:39:15', '2020-03-30 02:39:15'),
(40, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:39:17', '2020-03-30 02:39:17'),
(41, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:42:24', '2020-03-30 02:42:24'),
(42, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:42:25', '2020-03-30 02:42:25'),
(43, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:42:29', '2020-03-30 02:42:29'),
(44, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-03-30 02:42:29', '2020-03-30 02:42:29'),
(45, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:42:30', '2020-03-30 02:42:30'),
(46, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-03-30 02:42:31', '2020-03-30 02:42:31'),
(47, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:42:31', '2020-03-30 02:42:31'),
(48, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:42:31', '2020-03-30 02:42:31'),
(49, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-03-30 02:42:32', '2020-03-30 02:42:32'),
(50, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:42:33', '2020-03-30 02:42:33'),
(51, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:42:33', '2020-03-30 02:42:33'),
(52, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-03-30 02:42:34', '2020-03-30 02:42:34'),
(53, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:42:34', '2020-03-30 02:42:34'),
(54, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:42:34', '2020-03-30 02:42:34'),
(55, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-03-30 02:42:35', '2020-03-30 02:42:35'),
(56, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:42:35', '2020-03-30 02:42:35'),
(57, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:42:35', '2020-03-30 02:42:35'),
(58, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:42:38', '2020-03-30 02:42:38'),
(59, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-03-30 02:42:38', '2020-03-30 02:42:38'),
(60, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 02:42:38', '2020-03-30 02:42:38'),
(61, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 02:44:04', '2020-03-30 02:44:04'),
(62, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 02:44:05', '2020-03-30 02:44:05'),
(63, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 02:44:17', '2020-03-30 02:44:17'),
(64, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 02:44:18', '2020-03-30 02:44:18'),
(65, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 02:44:57', '2020-03-30 02:44:57'),
(66, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 02:44:58', '2020-03-30 02:44:58'),
(67, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 02:45:58', '2020-03-30 02:45:58'),
(68, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 02:45:59', '2020-03-30 02:45:59'),
(69, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 02:47:37', '2020-03-30 02:47:37'),
(70, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 02:47:37', '2020-03-30 02:47:37'),
(71, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 02:50:02', '2020-03-30 02:50:02'),
(72, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 02:50:02', '2020-03-30 02:50:02'),
(73, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 02:51:07', '2020-03-30 02:51:07'),
(74, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 02:51:07', '2020-03-30 02:51:07'),
(75, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 02:51:24', '2020-03-30 02:51:24'),
(76, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 02:51:25', '2020-03-30 02:51:25'),
(77, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-03-30 02:55:18', '2020-03-30 02:55:18'),
(78, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 02:55:19', '2020-03-30 02:55:19'),
(79, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 02:55:22', '2020-03-30 02:55:22'),
(80, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 02:55:23', '2020-03-30 02:55:23'),
(81, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 02:55:55', '2020-03-30 02:55:55'),
(82, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 02:55:56', '2020-03-30 02:55:56'),
(83, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 02:57:23', '2020-03-30 02:57:23'),
(84, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 02:57:23', '2020-03-30 02:57:23'),
(85, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 02:57:27', '2020-03-30 02:57:27'),
(86, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 02:57:27', '2020-03-30 02:57:27'),
(87, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 02:57:28', '2020-03-30 02:57:28'),
(88, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 02:57:32', '2020-03-30 02:57:32'),
(89, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-03-30 02:57:32', '2020-03-30 02:57:32'),
(90, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 02:57:38', '2020-03-30 02:57:38'),
(91, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 02:57:38', '2020-03-30 02:57:38'),
(92, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 02:57:38', '2020-03-30 02:57:38'),
(93, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-03-30 02:58:12', '2020-03-30 02:58:12'),
(94, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-03-30 02:58:15', '2020-03-30 02:58:15'),
(95, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-03-30 02:58:39', '2020-03-30 02:58:39'),
(96, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-03-30 02:58:40', '2020-03-30 02:58:40'),
(97, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-03-30 02:59:11', '2020-03-30 02:59:11'),
(98, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-03-30 02:59:12', '2020-03-30 02:59:12'),
(99, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-03-30 02:59:33', '2020-03-30 02:59:33'),
(100, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-03-30 02:59:34', '2020-03-30 02:59:34'),
(101, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-03-30 02:59:55', '2020-03-30 02:59:55'),
(102, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-03-30 02:59:56', '2020-03-30 02:59:56'),
(103, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-03-30 03:00:00', '2020-03-30 03:00:00'),
(104, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 03:00:00', '2020-03-30 03:00:00'),
(105, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-03-30 03:00:01', '2020-03-30 03:00:01'),
(106, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-03-30 03:00:08', '2020-03-30 03:00:08'),
(107, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 03:00:08', '2020-03-30 03:00:08'),
(108, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-03-30 03:00:10', '2020-03-30 03:00:10'),
(109, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-03-30 03:00:14', '2020-03-30 03:00:14'),
(110, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 03:00:14', '2020-03-30 03:00:14'),
(111, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-03-30 03:00:15', '2020-03-30 03:00:15'),
(112, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-03-30 03:01:29', '2020-03-30 03:01:29'),
(113, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Parcels\",\"icon\":\"fa-inbox\",\"uri\":\"listAllUser\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"EiY7e4v1U26ENXryHc42yB47A15Qnzr4H8ULHMO5\"}', '2020-03-30 03:01:29', '2020-03-30 03:01:29'),
(114, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-03-30 03:01:30', '2020-03-30 03:01:30'),
(115, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-03-30 03:01:31', '2020-03-30 03:01:31'),
(116, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-03-30 03:01:33', '2020-03-30 03:01:33'),
(117, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-03-30 03:01:34', '2020-03-30 03:01:34'),
(118, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-03-30 03:01:36', '2020-03-30 03:01:36'),
(119, 1, 'admin/listAllUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 03:01:36', '2020-03-30 03:01:36'),
(120, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-03-30 03:01:36', '2020-03-30 03:01:36'),
(121, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:01:42', '2020-03-30 03:01:42'),
(122, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:01:42', '2020-03-30 03:01:42'),
(123, 1, 'admin/listAllUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 03:01:48', '2020-03-30 03:01:48'),
(124, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:01:48', '2020-03-30 03:01:48'),
(125, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:01:48', '2020-03-30 03:01:48'),
(126, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:01:48', '2020-03-30 03:01:48'),
(127, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:01:49', '2020-03-30 03:01:49'),
(128, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:01:49', '2020-03-30 03:01:49'),
(129, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:01:56', '2020-03-30 03:01:56'),
(130, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 03:01:56', '2020-03-30 03:01:56'),
(131, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:01:57', '2020-03-30 03:01:57'),
(132, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:01:58', '2020-03-30 03:01:58'),
(133, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:02:03', '2020-03-30 03:02:03'),
(134, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 03:02:03', '2020-03-30 03:02:03'),
(135, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:02:04', '2020-03-30 03:02:04'),
(136, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"17\",\"title\":\"single\",\"icon\":\"fa-bars\",\"uri\":\"listAllUser\\/singleParcel\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"EiY7e4v1U26ENXryHc42yB47A15Qnzr4H8ULHMO5\"}', '2020-03-30 03:02:44', '2020-03-30 03:02:44'),
(137, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:02:44', '2020-03-30 03:02:44'),
(138, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-03-30 03:02:44', '2020-03-30 03:02:44'),
(139, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:02:45', '2020-03-30 03:02:45'),
(140, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"multiple\",\"icon\":\"fa-align-justify\",\"uri\":\"listAllUser\\/multipleParcel\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"EiY7e4v1U26ENXryHc42yB47A15Qnzr4H8ULHMO5\"}', '2020-03-30 03:03:19', '2020-03-30 03:03:19'),
(141, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:03:19', '2020-03-30 03:03:19'),
(142, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-03-30 03:03:19', '2020-03-30 03:03:19'),
(143, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:03:20', '2020-03-30 03:03:20'),
(144, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"EiY7e4v1U26ENXryHc42yB47A15Qnzr4H8ULHMO5\",\"_order\":\"[{\\\"id\\\":17,\\\"children\\\":[{\\\"id\\\":18},{\\\"id\\\":19}]},{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12}]},{\\\"id\\\":13},{\\\"id\\\":14},{\\\"id\\\":15},{\\\"id\\\":16}]\"}', '2020-03-30 03:03:28', '2020-03-30 03:03:28'),
(145, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 03:03:30', '2020-03-30 03:03:30'),
(146, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"EiY7e4v1U26ENXryHc42yB47A15Qnzr4H8ULHMO5\",\"_order\":\"[{\\\"id\\\":17,\\\"children\\\":[{\\\"id\\\":18},{\\\"id\\\":19}]},{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12}]},{\\\"id\\\":13},{\\\"id\\\":14},{\\\"id\\\":15},{\\\"id\\\":16}]\"}', '2020-03-30 03:03:30', '2020-03-30 03:03:30'),
(147, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 03:03:30', '2020-03-30 03:03:30'),
(148, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:03:30', '2020-03-30 03:03:30'),
(149, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:03:31', '2020-03-30 03:03:31'),
(150, 1, 'admin/listAllUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 03:03:37', '2020-03-30 03:03:37'),
(151, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:03:38', '2020-03-30 03:03:38'),
(152, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:03:38', '2020-03-30 03:03:38'),
(153, 1, 'admin/listAllUser', 'GET', '127.0.0.1', '[]', '2020-03-30 03:03:40', '2020-03-30 03:03:40'),
(154, 1, 'admin/listAllUser', 'GET', '127.0.0.1', '[]', '2020-03-30 03:03:41', '2020-03-30 03:03:41'),
(155, 1, 'admin/listAllUser', 'GET', '127.0.0.1', '[]', '2020-03-30 03:03:45', '2020-03-30 03:03:45'),
(156, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 03:03:45', '2020-03-30 03:03:45'),
(157, 1, 'admin/listAllUser', 'GET', '127.0.0.1', '[]', '2020-03-30 03:03:46', '2020-03-30 03:03:46'),
(158, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 03:03:47', '2020-03-30 03:03:47'),
(159, 1, 'admin/listAllUser', 'GET', '127.0.0.1', '[]', '2020-03-30 03:03:47', '2020-03-30 03:03:47'),
(160, 1, 'admin/listAllUser', 'GET', '127.0.0.1', '[]', '2020-03-30 03:03:47', '2020-03-30 03:03:47'),
(161, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:04:45', '2020-03-30 03:04:45'),
(162, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:04:46', '2020-03-30 03:04:46'),
(163, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:04:57', '2020-03-30 03:04:57'),
(164, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:04:58', '2020-03-30 03:04:58'),
(165, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:05:16', '2020-03-30 03:05:16'),
(166, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:05:16', '2020-03-30 03:05:16'),
(167, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:05:41', '2020-03-30 03:05:41'),
(168, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:05:42', '2020-03-30 03:05:42'),
(169, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:07:28', '2020-03-30 03:07:28'),
(170, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:07:29', '2020-03-30 03:07:29'),
(171, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:07:53', '2020-03-30 03:07:53'),
(172, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:07:54', '2020-03-30 03:07:54'),
(173, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:08:32', '2020-03-30 03:08:32'),
(174, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:08:33', '2020-03-30 03:08:33'),
(175, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:08:56', '2020-03-30 03:08:56'),
(176, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:08:57', '2020-03-30 03:08:57'),
(177, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:09:23', '2020-03-30 03:09:23'),
(178, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:09:24', '2020-03-30 03:09:24'),
(179, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:22:59', '2020-03-30 03:22:59'),
(180, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:23:00', '2020-03-30 03:23:00'),
(181, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:23:34', '2020-03-30 03:23:34'),
(182, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:23:35', '2020-03-30 03:23:35'),
(183, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:24:25', '2020-03-30 03:24:25'),
(184, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:24:26', '2020-03-30 03:24:26'),
(185, 1, 'admin/listAllUser/delete/5e81a41210bd6', 'GET', '127.0.0.1', '[]', '2020-03-30 03:24:27', '2020-03-30 03:24:27'),
(186, 1, 'admin/listAllUser/delete/5e81a41210bd6', 'GET', '127.0.0.1', '[]', '2020-03-30 03:24:28', '2020-03-30 03:24:28'),
(187, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:24:48', '2020-03-30 03:24:48'),
(188, 1, 'admin/listAllUser/detail/5e81a41210bd6', 'GET', '127.0.0.1', '[]', '2020-03-30 03:24:50', '2020-03-30 03:24:50'),
(189, 1, 'admin/listAllUser/detail/5e81a41210bd6', 'GET', '127.0.0.1', '[]', '2020-03-30 03:24:50', '2020-03-30 03:24:50'),
(190, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:24:53', '2020-03-30 03:24:53'),
(191, 1, 'admin/listAllUser/deliver/5e81a41210bd6', 'GET', '127.0.0.1', '[]', '2020-03-30 03:24:54', '2020-03-30 03:24:54'),
(192, 1, 'admin/listAllUser/deliver/5e81a41210bd6', 'GET', '127.0.0.1', '[]', '2020-03-30 03:24:55', '2020-03-30 03:24:55'),
(193, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:25:02', '2020-03-30 03:25:02'),
(194, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:34:35', '2020-03-30 03:34:35'),
(195, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:34:37', '2020-03-30 03:34:37'),
(196, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:35:32', '2020-03-30 03:35:32'),
(197, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:35:33', '2020-03-30 03:35:33'),
(198, 1, 'admin/listAllUser/delete/5e81a41210bd6', 'GET', '127.0.0.1', '[]', '2020-03-30 03:35:38', '2020-03-30 03:35:38'),
(199, 1, 'admin/listAllUser/delete/5e81a41210bd6', 'GET', '127.0.0.1', '[]', '2020-03-30 03:35:38', '2020-03-30 03:35:38'),
(200, 1, 'admin/listAllUser/delete/5e81a41210bd6', 'GET', '127.0.0.1', '[]', '2020-03-30 03:36:23', '2020-03-30 03:36:23'),
(201, 1, 'admin/listAllUser/delete/5e81a41210bd6', 'GET', '127.0.0.1', '[]', '2020-03-30 03:36:24', '2020-03-30 03:36:24'),
(202, 1, 'admin/listAllUser/delete/5e81a41210bd6', 'GET', '127.0.0.1', '[]', '2020-03-30 03:39:22', '2020-03-30 03:39:22'),
(203, 1, 'admin/listAllUser/delete/5e81a41210bd6', 'GET', '127.0.0.1', '[]', '2020-03-30 03:39:23', '2020-03-30 03:39:23'),
(204, 1, 'admin/listAllUser/delete/5e81a41210bd6', 'GET', '127.0.0.1', '[]', '2020-03-30 03:40:08', '2020-03-30 03:40:08'),
(205, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:40:09', '2020-03-30 03:40:09'),
(206, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:40:10', '2020-03-30 03:40:10'),
(207, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:40:23', '2020-03-30 03:40:23'),
(208, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:40:24', '2020-03-30 03:40:24'),
(209, 1, 'admin/listAllUser/delete/5e81a8b19551d', 'GET', '127.0.0.1', '[]', '2020-03-30 03:40:26', '2020-03-30 03:40:26'),
(210, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:40:27', '2020-03-30 03:40:27'),
(211, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:40:27', '2020-03-30 03:40:27'),
(212, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:40:30', '2020-03-30 03:40:30'),
(213, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:40:30', '2020-03-30 03:40:30'),
(214, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 03:43:39', '2020-03-30 03:43:39'),
(215, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:43:39', '2020-03-30 03:43:39'),
(216, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:43:39', '2020-03-30 03:43:39'),
(217, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 03:43:41', '2020-03-30 03:43:41'),
(218, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:43:41', '2020-03-30 03:43:41'),
(219, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:45:29', '2020-03-30 03:45:29'),
(220, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 03:45:30', '2020-03-30 03:45:30'),
(221, 1, 'admin/listAllUser/detail/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 03:50:49', '2020-03-30 03:50:49'),
(222, 1, 'admin/listAllUser/detail/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 03:50:49', '2020-03-30 03:50:49'),
(223, 1, 'admin/listAllUser/detail/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 03:51:25', '2020-03-30 03:51:25'),
(224, 1, 'admin/listAllUser/detail/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 03:51:26', '2020-03-30 03:51:26'),
(225, 1, 'admin/listAllUser/detail/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 03:57:25', '2020-03-30 03:57:25'),
(226, 1, 'admin/listAllUser/detail/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 03:57:26', '2020-03-30 03:57:26'),
(227, 1, 'admin/listAllUser/detail/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 04:26:46', '2020-03-30 04:26:46'),
(228, 1, 'admin/listAllUser/detail/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 04:26:51', '2020-03-30 04:26:51'),
(229, 1, 'admin/listAllUser/detail/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 04:27:02', '2020-03-30 04:27:02'),
(230, 1, 'admin/listAllUser/detail/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 04:27:06', '2020-03-30 04:27:06'),
(231, 1, 'admin/listAllUser/detail/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 04:27:26', '2020-03-30 04:27:26'),
(232, 1, 'admin/listAllUser/detail/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 04:27:27', '2020-03-30 04:27:27'),
(233, 1, 'admin/listAllUser/detail/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 04:27:35', '2020-03-30 04:27:35'),
(234, 1, 'admin/listAllUser/detail/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 04:27:36', '2020-03-30 04:27:36'),
(235, 1, 'admin/listAllUser/detail/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 04:29:10', '2020-03-30 04:29:10'),
(236, 1, 'admin/listAllUser/detail/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 04:29:11', '2020-03-30 04:29:11'),
(237, 1, 'admin/listAllUser/detail/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 04:30:24', '2020-03-30 04:30:24'),
(238, 1, 'admin/listAllUser/detail/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 04:30:25', '2020-03-30 04:30:25'),
(239, 1, 'admin/listAllUser/detail/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 04:30:44', '2020-03-30 04:30:44'),
(240, 1, 'admin/listAllUser/detail/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 04:30:47', '2020-03-30 04:30:47'),
(241, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 04:30:48', '2020-03-30 04:30:48'),
(242, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 04:30:49', '2020-03-30 04:30:49'),
(243, 1, 'admin/listAllUser/detail/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 04:30:51', '2020-03-30 04:30:51'),
(244, 1, 'admin/listAllUser/detail/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 04:30:52', '2020-03-30 04:30:52'),
(245, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 04:31:03', '2020-03-30 04:31:03'),
(246, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 04:31:04', '2020-03-30 04:31:04'),
(247, 1, 'admin/listAllUser/detail/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 04:31:09', '2020-03-30 04:31:09'),
(248, 1, 'admin/listAllUser/detail/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 04:31:09', '2020-03-30 04:31:09'),
(249, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 04:31:16', '2020-03-30 04:31:16'),
(250, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 04:31:16', '2020-03-30 04:31:16'),
(251, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 04:31:51', '2020-03-30 04:31:51'),
(252, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 04:31:52', '2020-03-30 04:31:52'),
(253, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 04:36:55', '2020-03-30 04:36:55'),
(254, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 04:36:57', '2020-03-30 04:36:57'),
(255, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 04:37:30', '2020-03-30 04:37:30'),
(256, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 04:37:31', '2020-03-30 04:37:31'),
(257, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 04:37:57', '2020-03-30 04:37:57'),
(258, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 04:37:57', '2020-03-30 04:37:57'),
(259, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 04:46:48', '2020-03-30 04:46:48'),
(260, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 04:46:48', '2020-03-30 04:46:48'),
(261, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 04:46:48', '2020-03-30 04:46:48'),
(262, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 04:46:49', '2020-03-30 04:46:49'),
(263, 1, 'admin/listAllUser/delete/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 04:46:51', '2020-03-30 04:46:51'),
(264, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 04:46:51', '2020-03-30 04:46:51'),
(265, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 04:46:52', '2020-03-30 04:46:52'),
(266, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 04:47:46', '2020-03-30 04:47:46'),
(267, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 04:47:47', '2020-03-30 04:47:47'),
(268, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 04:48:35', '2020-03-30 04:48:35'),
(269, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 04:48:35', '2020-03-30 04:48:35'),
(270, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 04:49:11', '2020-03-30 04:49:11'),
(271, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 04:49:12', '2020-03-30 04:49:12'),
(272, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 04:50:43', '2020-03-30 04:50:43'),
(273, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 04:50:44', '2020-03-30 04:50:44'),
(274, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 04:51:48', '2020-03-30 04:51:48'),
(275, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 04:51:48', '2020-03-30 04:51:48'),
(276, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 04:51:56', '2020-03-30 04:51:56'),
(277, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 04:51:57', '2020-03-30 04:51:57'),
(278, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 04:52:18', '2020-03-30 04:52:18'),
(279, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 04:52:19', '2020-03-30 04:52:19'),
(280, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 04:53:04', '2020-03-30 04:53:04'),
(281, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 04:53:05', '2020-03-30 04:53:05'),
(282, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 04:54:54', '2020-03-30 04:54:54'),
(283, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 04:54:55', '2020-03-30 04:54:55'),
(284, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 04:55:20', '2020-03-30 04:55:20'),
(285, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 04:55:20', '2020-03-30 04:55:20'),
(286, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 05:02:05', '2020-03-30 05:02:05'),
(287, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 05:02:05', '2020-03-30 05:02:05'),
(288, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 05:05:54', '2020-03-30 05:05:54'),
(289, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 05:05:55', '2020-03-30 05:05:55'),
(290, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 05:05:57', '2020-03-30 05:05:57'),
(291, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 05:05:57', '2020-03-30 05:05:57'),
(292, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 05:05:57', '2020-03-30 05:05:57'),
(293, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 05:20:42', '2020-03-30 05:20:42'),
(294, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 05:20:43', '2020-03-30 05:20:43'),
(295, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 05:20:44', '2020-03-30 05:20:44'),
(296, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 05:23:11', '2020-03-30 05:23:11'),
(297, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 05:23:11', '2020-03-30 05:23:11'),
(298, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 05:23:12', '2020-03-30 05:23:12'),
(299, 1, 'admin/listAllUser/deliver/post/5e81b7ca06a12', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"customNotice\":null}', '2020-03-30 05:23:13', '2020-03-30 05:23:13'),
(300, 1, 'admin/listAllUser/deliver/post/5e81b7ca06a12', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"customNotice\":null}', '2020-03-30 05:26:48', '2020-03-30 05:26:48'),
(301, 1, 'admin/listAllUser/deliver/post/5e81b7ca06a12', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"customNotice\":null}', '2020-03-30 05:28:50', '2020-03-30 05:28:50'),
(302, 1, 'admin/listAllUser/deliver/post/5e81b7ca06a12', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"customNotice\":null}', '2020-03-30 05:30:59', '2020-03-30 05:30:59'),
(303, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 05:31:00', '2020-03-30 05:31:00'),
(304, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 05:31:00', '2020-03-30 05:31:00'),
(305, 1, 'admin/listAllUser/deliver/post/5e81b7ca06a12', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"customNotice\":null}', '2020-03-30 05:32:21', '2020-03-30 05:32:21'),
(306, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 05:32:21', '2020-03-30 05:32:21'),
(307, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 05:32:22', '2020-03-30 05:32:22'),
(308, 1, 'admin/listAllUser/deliver/post/5e81b7ca06a12', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"customNotice\":null}', '2020-03-30 05:32:51', '2020-03-30 05:32:51'),
(309, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 05:32:51', '2020-03-30 05:32:51'),
(310, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 05:32:52', '2020-03-30 05:32:52'),
(311, 1, 'admin/listAllUser/deliver/post/5e81b7ca06a12', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"customNotice\":null}', '2020-03-30 05:33:07', '2020-03-30 05:33:07'),
(312, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 05:33:08', '2020-03-30 05:33:08'),
(313, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 05:33:08', '2020-03-30 05:33:08'),
(314, 1, 'admin/listAllUser/deliver/post/5e81b7ca06a12', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"parcelStatus\":\"In progress\",\"customNotice\":null}', '2020-03-30 05:33:13', '2020-03-30 05:33:13'),
(315, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 05:33:13', '2020-03-30 05:33:13'),
(316, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 05:33:14', '2020-03-30 05:33:14'),
(317, 1, 'admin/listAllUser/deliver/post/5e81b7ca06a12', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"customNotice\":null}', '2020-03-30 05:33:55', '2020-03-30 05:33:55'),
(318, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 05:33:56', '2020-03-30 05:33:56'),
(319, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 05:33:56', '2020-03-30 05:33:56'),
(320, 1, 'admin/listAllUser/deliver/post/5e81b7ca06a12', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"parcelStatus\":\"Custom\",\"customNotice\":null}', '2020-03-30 05:34:22', '2020-03-30 05:34:22'),
(321, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 05:34:22', '2020-03-30 05:34:22'),
(322, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 05:34:23', '2020-03-30 05:34:23'),
(323, 1, 'admin/listAllUser/deliver/post/5e81b7ca06a12', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"awb\":\"5e81b7ca06a12\",\"customNotice\":null}', '2020-03-30 05:34:25', '2020-03-30 05:34:25'),
(324, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 05:34:25', '2020-03-30 05:34:25'),
(325, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 05:34:26', '2020-03-30 05:34:26'),
(326, 1, 'admin/listAllUser/deliver/post/5e81b7ca06a12', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"awb\":\"5e81b7ca06a12\",\"parcelStatus\":\"Completed\",\"customNotice\":null}', '2020-03-30 05:34:29', '2020-03-30 05:34:29'),
(327, 1, 'admin/listAllUser/deliver/post/5e81b7ca06a12', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"awb\":\"5e81b7ca06a12\",\"parcelStatus\":\"Completed\",\"customNotice\":null}', '2020-03-30 05:37:34', '2020-03-30 05:37:34'),
(328, 1, 'admin/listAllUser/deliver/post/5e81b7ca06a12', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"awb\":\"5e81b7ca06a12\",\"parcelStatus\":\"Completed\",\"customNotice\":null}', '2020-03-30 05:37:50', '2020-03-30 05:37:50'),
(329, 1, 'admin/listAllUser/deliver/post/5e81b7ca06a12', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"awb\":\"5e81b7ca06a12\",\"parcelStatus\":\"Completed\",\"customNotice\":null}', '2020-03-30 05:41:57', '2020-03-30 05:41:57'),
(330, 1, 'admin/listAllUser/deliver/post/5e81b7ca06a12', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"awb\":\"5e81b7ca06a12\",\"parcelStatus\":\"Completed\",\"customNotice\":null}', '2020-03-30 05:42:31', '2020-03-30 05:42:31'),
(331, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 05:42:32', '2020-03-30 05:42:32'),
(332, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 05:42:32', '2020-03-30 05:42:32'),
(333, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 05:42:52', '2020-03-30 05:42:52'),
(334, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 05:42:53', '2020-03-30 05:42:53'),
(335, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 05:43:28', '2020-03-30 05:43:28'),
(336, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 05:43:29', '2020-03-30 05:43:29'),
(337, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 05:51:13', '2020-03-30 05:51:13'),
(338, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 05:51:13', '2020-03-30 05:51:13'),
(339, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 05:51:14', '2020-03-30 05:51:14'),
(340, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 05:51:14', '2020-03-30 05:51:14'),
(341, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 05:51:16', '2020-03-30 05:51:16'),
(342, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 05:51:16', '2020-03-30 05:51:16'),
(343, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 05:51:18', '2020-03-30 05:51:18'),
(344, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 06:08:37', '2020-03-30 06:08:37'),
(345, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"17\",\"title\":\"updated staus\",\"icon\":\"fa-arrow-right\",\"uri\":\"listAllUser\\/updated\\/parcelStatus\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\"}', '2020-03-30 06:08:37', '2020-03-30 06:08:37'),
(346, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-03-30 06:08:42', '2020-03-30 06:08:42'),
(347, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 06:08:44', '2020-03-30 06:08:44'),
(348, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-03-30 06:08:53', '2020-03-30 06:08:53'),
(349, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-03-30 06:08:54', '2020-03-30 06:08:54'),
(350, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 06:09:01', '2020-03-30 06:09:01'),
(351, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-03-30 06:09:01', '2020-03-30 06:09:01'),
(352, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-03-30 06:09:01', '2020-03-30 06:09:01'),
(353, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 06:12:41', '2020-03-30 06:12:41'),
(354, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 06:12:42', '2020-03-30 06:12:42'),
(355, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 06:14:54', '2020-03-30 06:14:54'),
(356, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 06:14:55', '2020-03-30 06:14:55'),
(357, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 06:17:13', '2020-03-30 06:17:13'),
(358, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 06:17:13', '2020-03-30 06:17:13'),
(359, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 06:17:40', '2020-03-30 06:17:40'),
(360, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 06:17:40', '2020-03-30 06:17:40'),
(361, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 06:23:29', '2020-03-30 06:23:29'),
(362, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 06:23:29', '2020-03-30 06:23:29'),
(363, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 06:25:31', '2020-03-30 06:25:31'),
(364, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 06:25:31', '2020-03-30 06:25:31'),
(365, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 06:31:50', '2020-03-30 06:31:50'),
(366, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 06:31:50', '2020-03-30 06:31:50'),
(367, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 06:32:04', '2020-03-30 06:32:04'),
(368, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 06:32:05', '2020-03-30 06:32:05'),
(369, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 06:32:06', '2020-03-30 06:32:06'),
(370, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 06:32:25', '2020-03-30 06:32:25'),
(371, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 06:32:26', '2020-03-30 06:32:26'),
(372, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 06:32:28', '2020-03-30 06:32:28'),
(373, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 06:32:28', '2020-03-30 06:32:28'),
(374, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 06:35:00', '2020-03-30 06:35:00'),
(375, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 06:35:02', '2020-03-30 06:35:02'),
(376, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 06:36:52', '2020-03-30 06:36:52'),
(377, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 06:36:53', '2020-03-30 06:36:53'),
(378, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 06:37:27', '2020-03-30 06:37:27'),
(379, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 06:37:28', '2020-03-30 06:37:28'),
(380, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 06:39:45', '2020-03-30 06:39:45'),
(381, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 06:39:46', '2020-03-30 06:39:46'),
(382, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:01:42', '2020-03-30 07:01:42'),
(383, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:01:56', '2020-03-30 07:01:56'),
(384, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 07:02:54', '2020-03-30 07:02:54'),
(385, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:02:54', '2020-03-30 07:02:54'),
(386, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:02:55', '2020-03-30 07:02:55'),
(387, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:02:56', '2020-03-30 07:02:56'),
(388, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:03:03', '2020-03-30 07:03:03'),
(389, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:03:05', '2020-03-30 07:03:05'),
(390, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:04:22', '2020-03-30 07:04:22'),
(391, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:04:26', '2020-03-30 07:04:26'),
(392, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:04:39', '2020-03-30 07:04:39');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(393, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:04:40', '2020-03-30 07:04:40'),
(394, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:04:59', '2020-03-30 07:04:59'),
(395, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:05:00', '2020-03-30 07:05:00'),
(396, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:05:27', '2020-03-30 07:05:27'),
(397, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:05:31', '2020-03-30 07:05:31'),
(398, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:12:04', '2020-03-30 07:12:04'),
(399, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 07:12:04', '2020-03-30 07:12:04'),
(400, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:12:07', '2020-03-30 07:12:07'),
(401, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:12:08', '2020-03-30 07:12:08'),
(402, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:12:08', '2020-03-30 07:12:08'),
(403, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:12:09', '2020-03-30 07:12:09'),
(404, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:12:09', '2020-03-30 07:12:09'),
(405, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:12:09', '2020-03-30 07:12:09'),
(406, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:12:10', '2020-03-30 07:12:10'),
(407, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:12:10', '2020-03-30 07:12:10'),
(408, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:12:11', '2020-03-30 07:12:11'),
(409, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:12:11', '2020-03-30 07:12:11'),
(410, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:12:11', '2020-03-30 07:12:11'),
(411, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:12:12', '2020-03-30 07:12:12'),
(412, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:12:12', '2020-03-30 07:12:12'),
(413, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:12:12', '2020-03-30 07:12:12'),
(414, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:12:13', '2020-03-30 07:12:13'),
(415, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:12:13', '2020-03-30 07:12:13'),
(416, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:12:13', '2020-03-30 07:12:13'),
(417, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:12:14', '2020-03-30 07:12:14'),
(418, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:12:14', '2020-03-30 07:12:14'),
(419, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:12:14', '2020-03-30 07:12:14'),
(420, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:12:15', '2020-03-30 07:12:15'),
(421, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:12:15', '2020-03-30 07:12:15'),
(422, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:12:16', '2020-03-30 07:12:16'),
(423, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:12:36', '2020-03-30 07:12:36'),
(424, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:12:38', '2020-03-30 07:12:38'),
(425, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:12:42', '2020-03-30 07:12:42'),
(426, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:12:43', '2020-03-30 07:12:43'),
(427, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:13:09', '2020-03-30 07:13:09'),
(428, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:13:10', '2020-03-30 07:13:10'),
(429, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 07:13:32', '2020-03-30 07:13:32'),
(430, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:13:32', '2020-03-30 07:13:32'),
(431, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:13:33', '2020-03-30 07:13:33'),
(432, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 07:13:41', '2020-03-30 07:13:41'),
(433, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:13:42', '2020-03-30 07:13:42'),
(434, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 07:14:07', '2020-03-30 07:14:07'),
(435, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:14:07', '2020-03-30 07:14:07'),
(436, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 07:14:34', '2020-03-30 07:14:34'),
(437, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:14:35', '2020-03-30 07:14:35'),
(438, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 07:14:40', '2020-03-30 07:14:40'),
(439, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:14:41', '2020-03-30 07:14:41'),
(440, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 07:15:43', '2020-03-30 07:15:43'),
(441, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:15:43', '2020-03-30 07:15:43'),
(442, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 07:16:36', '2020-03-30 07:16:36'),
(443, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:16:37', '2020-03-30 07:16:37'),
(444, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 07:17:16', '2020-03-30 07:17:16'),
(445, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:17:17', '2020-03-30 07:17:17'),
(446, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 07:17:29', '2020-03-30 07:17:29'),
(447, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:17:29', '2020-03-30 07:17:29'),
(448, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 07:20:33', '2020-03-30 07:20:33'),
(449, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:20:34', '2020-03-30 07:20:34'),
(450, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 07:21:37', '2020-03-30 07:21:37'),
(451, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:21:38', '2020-03-30 07:21:38'),
(452, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 07:22:37', '2020-03-30 07:22:37'),
(453, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:22:37', '2020-03-30 07:22:37'),
(454, 1, 'admin/listAllUser/updated/parcelStatus/updateIt/1', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"awb\":\"5e81b7ca06a12\",\"customNotice\":\"dhddhjshdshfgsfgdfgsjhfgshfgshdgsjgfsjdh sgfjs fjd fgsjd fsffg sfgd\"}', '2020-03-30 07:23:17', '2020-03-30 07:23:17'),
(455, 1, 'admin/listAllUser/updated/parcelStatus/updateIt/1', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"awb\":\"5e81b7ca06a12\",\"customNotice\":\"dhddhjshdshfgsfgdfgsjhfgshfgshdgsjgfsjdh sgfjs fjd fgsjd fsffg sfgd\"}', '2020-03-30 07:30:45', '2020-03-30 07:30:45'),
(456, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:30:46', '2020-03-30 07:30:46'),
(457, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:30:46', '2020-03-30 07:30:46'),
(458, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 07:31:22', '2020-03-30 07:31:22'),
(459, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:31:22', '2020-03-30 07:31:22'),
(460, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:31:23', '2020-03-30 07:31:23'),
(461, 1, 'admin/listAllUser/updated/parcelStatus/updateIt/1', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"awb\":\"5e81b7ca06a12\",\"parcelStatus\":\"Completed\",\"customNotice\":\"dhddhjshdshfgsfgdfgsjhfgshfgshdgsjgfsjdh sgfjs fjd fgsjd fsffg sfgd\"}', '2020-03-30 07:31:34', '2020-03-30 07:31:34'),
(462, 1, 'admin/listAllUser/updated/parcelStatus/updateIt/1', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"awb\":\"5e81b7ca06a12\",\"parcelStatus\":\"Completed\",\"customNotice\":\"dhddhjshdshfgsfgdfgsjhfgshfgshdgsjgfsjdh sgfjs fjd fgsjd fsffg sfgd\"}', '2020-03-30 07:31:48', '2020-03-30 07:31:48'),
(463, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 07:31:48', '2020-03-30 07:31:48'),
(464, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 07:31:49', '2020-03-30 07:31:49'),
(465, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:31:52', '2020-03-30 07:31:52'),
(466, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:31:53', '2020-03-30 07:31:53'),
(467, 1, 'admin/listAllUser/updated/parcelStatus/updateIt/1', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"awb\":\"5e81b7ca06a12\",\"parcelStatus\":\"Completed\",\"customNotice\":\"dhddhjshdshfgsfgdfgsjhfgshfgshdgsjgfsjdh sgfjs fjd fgsjd fsffg sfgd\"}', '2020-03-30 07:31:53', '2020-03-30 07:31:53'),
(468, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 07:31:53', '2020-03-30 07:31:53'),
(469, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 07:31:54', '2020-03-30 07:31:54'),
(470, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:32:35', '2020-03-30 07:32:35'),
(471, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:32:36', '2020-03-30 07:32:36'),
(472, 1, 'admin/listAllUser/updated/parcelStatus/updateIt/1', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"awb\":\"5e81b7ca06a12\",\"parcelStatus\":\"Completed\",\"customNotice\":\"dhddhjshdshfgsfgdfgsjhfgshfgshdgsjgfsjdh sgfjs fjd fgsjd fsffg sfgd\"}', '2020-03-30 07:32:36', '2020-03-30 07:32:36'),
(473, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 07:32:37', '2020-03-30 07:32:37'),
(474, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 07:32:37', '2020-03-30 07:32:37'),
(475, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:35:28', '2020-03-30 07:35:28'),
(476, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:35:29', '2020-03-30 07:35:29'),
(477, 1, 'admin/listAllUser/updated/parcelStatus/updateIt/1', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"awb\":\"5e81b7ca06a12\",\"parcelStatus\":\"Completed\",\"customNotice\":\"dhddhjshdshfgsfgdfgsjhfgshfgshdgsjgfsjdh sgfjs fjd fgsjd fsffg sfgd\"}', '2020-03-30 07:35:34', '2020-03-30 07:35:34'),
(478, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 07:35:34', '2020-03-30 07:35:34'),
(479, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 07:35:35', '2020-03-30 07:35:35'),
(480, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:35:36', '2020-03-30 07:35:36'),
(481, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:35:37', '2020-03-30 07:35:37'),
(482, 1, 'admin/listAllUser/updated/parcelStatus/updateIt/1', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"awb\":\"5e81b7ca06a12\",\"parcelStatus\":\"Completed\",\"customNotice\":\"test purpose\"}', '2020-03-30 07:35:49', '2020-03-30 07:35:49'),
(483, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 07:35:49', '2020-03-30 07:35:49'),
(484, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 07:35:50', '2020-03-30 07:35:50'),
(485, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:44:23', '2020-03-30 07:44:23'),
(486, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:44:24', '2020-03-30 07:44:24'),
(487, 1, 'admin/listAllUser/updated/parcelStatus/updateIt/1', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"awb\":\"5e81b7ca06a12\",\"parcelStatus\":\"In progress\",\"customNotice\":\"test purpose\"}', '2020-03-30 07:44:26', '2020-03-30 07:44:26'),
(488, 1, 'admin/listAllUser/updated/parcelStatus/updateIt/1', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"awb\":\"5e81b7ca06a12\",\"parcelStatus\":\"In progress\",\"customNotice\":\"test purpose\"}', '2020-03-30 07:45:22', '2020-03-30 07:45:22'),
(489, 1, 'admin/listAllUser/updated/parcelStatus/updateIt/1', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"awb\":\"5e81b7ca06a12\",\"parcelStatus\":\"In progress\",\"customNotice\":\"test purpose\"}', '2020-03-30 07:47:48', '2020-03-30 07:47:48'),
(490, 1, 'admin/listAllUser/updated/parcelStatus/updateIt/1', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"awb\":\"5e81b7ca06a12\",\"parcelStatus\":\"In progress\",\"customNotice\":\"test purpose\"}', '2020-03-30 07:48:33', '2020-03-30 07:48:33'),
(491, 1, 'admin/listAllUser/updated/parcelStatus/updateIt/1', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"awb\":\"5e81b7ca06a12\",\"parcelStatus\":\"In progress\",\"customNotice\":\"test purpose\"}', '2020-03-30 07:51:24', '2020-03-30 07:51:24'),
(492, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 07:51:24', '2020-03-30 07:51:24'),
(493, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 07:51:25', '2020-03-30 07:51:25'),
(494, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 07:53:25', '2020-03-30 07:53:25'),
(495, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 07:53:25', '2020-03-30 07:53:25'),
(496, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 07:53:25', '2020-03-30 07:53:25'),
(497, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 07:53:25', '2020-03-30 07:53:25'),
(498, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:53:27', '2020-03-30 07:53:27'),
(499, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 07:53:28', '2020-03-30 07:53:28'),
(500, 1, 'admin/listAllUser/updated/parcelStatus/updateIt/1', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"awb\":\"5e81b7ca06a12\",\"parcelStatus\":\"In progress\",\"customNotice\":\"test purpose\"}', '2020-03-30 07:53:30', '2020-03-30 07:53:30'),
(501, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 07:53:31', '2020-03-30 07:53:31'),
(502, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 07:53:31', '2020-03-30 07:53:31'),
(503, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 07:56:48', '2020-03-30 07:56:48'),
(504, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 07:56:48', '2020-03-30 07:56:48'),
(505, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 07:56:54', '2020-03-30 07:56:54'),
(506, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 07:56:54', '2020-03-30 07:56:54'),
(507, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 07:56:54', '2020-03-30 07:56:54'),
(508, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 07:56:54', '2020-03-30 07:56:54'),
(509, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:03:36', '2020-03-30 08:03:36'),
(510, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 08:03:36', '2020-03-30 08:03:36'),
(511, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:10:13', '2020-03-30 08:10:13'),
(512, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 08:10:13', '2020-03-30 08:10:13'),
(513, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 08:10:13', '2020-03-30 08:10:13'),
(514, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:10:29', '2020-03-30 08:10:29'),
(515, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:10:30', '2020-03-30 08:10:30'),
(516, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:10:32', '2020-03-30 08:10:32'),
(517, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:10:32', '2020-03-30 08:10:32'),
(518, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:10:43', '2020-03-30 08:10:43'),
(519, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:10:44', '2020-03-30 08:10:44'),
(520, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:10:47', '2020-03-30 08:10:47'),
(521, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:10:51', '2020-03-30 08:10:51'),
(522, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:12:26', '2020-03-30 08:12:26'),
(523, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:12:27', '2020-03-30 08:12:27'),
(524, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:13:21', '2020-03-30 08:13:21'),
(525, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:13:21', '2020-03-30 08:13:21'),
(526, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:13:38', '2020-03-30 08:13:38'),
(527, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:13:39', '2020-03-30 08:13:39'),
(528, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:14:11', '2020-03-30 08:14:11'),
(529, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:14:11', '2020-03-30 08:14:11'),
(530, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:14:36', '2020-03-30 08:14:36'),
(531, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:14:36', '2020-03-30 08:14:36'),
(532, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:15:13', '2020-03-30 08:15:13'),
(533, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:15:13', '2020-03-30 08:15:13'),
(534, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:16:17', '2020-03-30 08:16:17'),
(535, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:16:17', '2020-03-30 08:16:17'),
(536, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:16:19', '2020-03-30 08:16:19'),
(537, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:16:19', '2020-03-30 08:16:19'),
(538, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:17:13', '2020-03-30 08:17:13'),
(539, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:17:13', '2020-03-30 08:17:13'),
(540, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:17:13', '2020-03-30 08:17:13'),
(541, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:17:13', '2020-03-30 08:17:13'),
(542, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:18:29', '2020-03-30 08:18:29'),
(543, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:18:29', '2020-03-30 08:18:29'),
(544, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:18:32', '2020-03-30 08:18:32'),
(545, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:18:33', '2020-03-30 08:18:33'),
(546, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:18:36', '2020-03-30 08:18:36'),
(547, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:18:36', '2020-03-30 08:18:36'),
(548, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:18:36', '2020-03-30 08:18:36'),
(549, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:18:51', '2020-03-30 08:18:51'),
(550, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:18:52', '2020-03-30 08:18:52'),
(551, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:19:01', '2020-03-30 08:19:01'),
(552, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:19:01', '2020-03-30 08:19:01'),
(553, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:19:37', '2020-03-30 08:19:37'),
(554, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:19:37', '2020-03-30 08:19:37'),
(555, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:19:38', '2020-03-30 08:19:38'),
(556, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:19:38', '2020-03-30 08:19:38'),
(557, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:19:38', '2020-03-30 08:19:38'),
(558, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:19:54', '2020-03-30 08:19:54'),
(559, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:19:55', '2020-03-30 08:19:55'),
(560, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:20:17', '2020-03-30 08:20:17'),
(561, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:20:19', '2020-03-30 08:20:19'),
(562, 1, 'admin/listAllUser/detail/5e81f49c0e6b3', 'GET', '127.0.0.1', '[]', '2020-03-30 08:20:49', '2020-03-30 08:20:49'),
(563, 1, 'admin/listAllUser/detail/5e81f49c0e6b3', 'GET', '127.0.0.1', '[]', '2020-03-30 08:20:50', '2020-03-30 08:20:50'),
(564, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:21:05', '2020-03-30 08:21:05'),
(565, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:21:06', '2020-03-30 08:21:06'),
(566, 1, 'admin/listAllUser/deliver/5e81f49c0e6b3', 'GET', '127.0.0.1', '[]', '2020-03-30 08:21:08', '2020-03-30 08:21:08'),
(567, 1, 'admin/listAllUser/deliver/5e81f49c0e6b3', 'GET', '127.0.0.1', '[]', '2020-03-30 08:21:09', '2020-03-30 08:21:09'),
(568, 1, 'admin/listAllUser/deliver/post/5e81f49c0e6b3', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"awb\":\"5e81f49c0e6b3\",\"parcelStatus\":\"In progress\",\"customNotice\":\"aadasdasd sadsads\"}', '2020-03-30 08:21:19', '2020-03-30 08:21:19'),
(569, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:21:19', '2020-03-30 08:21:19'),
(570, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:21:20', '2020-03-30 08:21:20'),
(571, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:21:29', '2020-03-30 08:21:29'),
(572, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:21:29', '2020-03-30 08:21:29'),
(573, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:21:30', '2020-03-30 08:21:30'),
(574, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:21:30', '2020-03-30 08:21:30'),
(575, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:21:37', '2020-03-30 08:21:37'),
(576, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:21:37', '2020-03-30 08:21:37'),
(577, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:21:38', '2020-03-30 08:21:38'),
(578, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:21:42', '2020-03-30 08:21:42'),
(579, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:21:42', '2020-03-30 08:21:42'),
(580, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:21:42', '2020-03-30 08:21:42'),
(581, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:21:44', '2020-03-30 08:21:44'),
(582, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:21:44', '2020-03-30 08:21:44'),
(583, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:21:45', '2020-03-30 08:21:45'),
(584, 1, 'admin/listAllUser/delete/5e81f49c0e6b3', 'GET', '127.0.0.1', '[]', '2020-03-30 08:22:09', '2020-03-30 08:22:09'),
(585, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:22:09', '2020-03-30 08:22:09'),
(586, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:22:10', '2020-03-30 08:22:10'),
(587, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:22:25', '2020-03-30 08:22:25'),
(588, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:22:25', '2020-03-30 08:22:25'),
(589, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:22:25', '2020-03-30 08:22:25'),
(590, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:22:26', '2020-03-30 08:22:26'),
(591, 1, 'admin/listAllUser/detail/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 08:22:27', '2020-03-30 08:22:27'),
(592, 1, 'admin/listAllUser/detail/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 08:22:28', '2020-03-30 08:22:28'),
(593, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:23:13', '2020-03-30 08:23:13'),
(594, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:23:14', '2020-03-30 08:23:14'),
(595, 1, 'admin/listAllUser/detail/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 08:23:15', '2020-03-30 08:23:15'),
(596, 1, 'admin/listAllUser/detail/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 08:23:15', '2020-03-30 08:23:15'),
(597, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:24:03', '2020-03-30 08:24:03'),
(598, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:24:03', '2020-03-30 08:24:03'),
(599, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:24:33', '2020-03-30 08:24:33'),
(600, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:24:33', '2020-03-30 08:24:33'),
(601, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:24:33', '2020-03-30 08:24:33'),
(602, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:24:34', '2020-03-30 08:24:34'),
(603, 1, 'admin/listAllUser/detail/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 08:24:45', '2020-03-30 08:24:45'),
(604, 1, 'admin/listAllUser/detail/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 08:24:45', '2020-03-30 08:24:45'),
(605, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:24:51', '2020-03-30 08:24:51'),
(606, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:24:53', '2020-03-30 08:24:53'),
(607, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:24:54', '2020-03-30 08:24:54'),
(608, 1, 'admin/listAllUser/detail/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 08:25:01', '2020-03-30 08:25:01'),
(609, 1, 'admin/listAllUser/detail/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 08:25:02', '2020-03-30 08:25:02'),
(610, 1, 'admin/listAllUser/detail/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 08:25:03', '2020-03-30 08:25:03'),
(611, 1, 'admin/listAllUser/detail/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 08:25:04', '2020-03-30 08:25:04'),
(612, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:25:10', '2020-03-30 08:25:10'),
(613, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:25:50', '2020-03-30 08:25:50'),
(614, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:25:50', '2020-03-30 08:25:50'),
(615, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:30:16', '2020-03-30 08:30:16'),
(616, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:30:17', '2020-03-30 08:30:17'),
(617, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:31:43', '2020-03-30 08:31:43'),
(618, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:31:43', '2020-03-30 08:31:43'),
(619, 1, 'admin/listAllUser/detail/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:31:48', '2020-03-30 08:31:48'),
(620, 1, 'admin/listAllUser/detail/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:31:49', '2020-03-30 08:31:49'),
(621, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:32:01', '2020-03-30 08:32:01'),
(622, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:32:02', '2020-03-30 08:32:02'),
(623, 1, 'admin/listAllUser/deliver/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:32:05', '2020-03-30 08:32:05'),
(624, 1, 'admin/listAllUser/deliver/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:32:06', '2020-03-30 08:32:06'),
(625, 1, 'admin/listAllUser/deliver/post/5e81fb96d1973', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"awb\":\"5e81fb96d1973\",\"parcelStatus\":\"Completed\",\"customNotice\":\"rwerwerwerwerwr\"}', '2020-03-30 08:32:56', '2020-03-30 08:32:56'),
(626, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:32:57', '2020-03-30 08:32:57'),
(627, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:32:57', '2020-03-30 08:32:57'),
(628, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 08:33:22', '2020-03-30 08:33:22'),
(629, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 08:33:22', '2020-03-30 08:33:22'),
(630, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:39:18', '2020-03-30 08:39:18'),
(631, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 08:39:18', '2020-03-30 08:39:18'),
(632, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 08:39:19', '2020-03-30 08:39:19'),
(633, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 08:39:19', '2020-03-30 08:39:19'),
(634, 1, 'admin/listAllUser/deliver/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:39:20', '2020-03-30 08:39:20'),
(635, 1, 'admin/listAllUser/deliver/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:39:21', '2020-03-30 08:39:21'),
(636, 1, 'admin/listAllUser/deliver/post/5e81fb96d1973', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"awb\":\"5e81fb96d1973\",\"parcelStatus\":\"In progress\",\"customNotice\":null}', '2020-03-30 08:39:26', '2020-03-30 08:39:26'),
(637, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:39:27', '2020-03-30 08:39:27'),
(638, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:39:27', '2020-03-30 08:39:27'),
(639, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:39:38', '2020-03-30 08:39:38'),
(640, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:39:38', '2020-03-30 08:39:38'),
(641, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:39:38', '2020-03-30 08:39:38'),
(642, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:39:39', '2020-03-30 08:39:39'),
(643, 1, 'admin/listAllUser/deliver/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:39:41', '2020-03-30 08:39:41'),
(644, 1, 'admin/listAllUser/deliver/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:39:42', '2020-03-30 08:39:42'),
(645, 1, 'admin/listAllUser/deliver/post/5e81fb96d1973', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"awb\":\"5e81fb96d1973\",\"parcelStatus\":\"Completed\",\"customNotice\":null}', '2020-03-30 08:39:47', '2020-03-30 08:39:47'),
(646, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:39:47', '2020-03-30 08:39:47'),
(647, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:39:47', '2020-03-30 08:39:47'),
(648, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:39:59', '2020-03-30 08:39:59'),
(649, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:39:59', '2020-03-30 08:39:59'),
(650, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:40:00', '2020-03-30 08:40:00'),
(651, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:40:00', '2020-03-30 08:40:00'),
(652, 1, 'admin/listAllUser/deliver/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:40:01', '2020-03-30 08:40:01'),
(653, 1, 'admin/listAllUser/deliver/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:40:01', '2020-03-30 08:40:01'),
(654, 1, 'admin/listAllUser/deliver/post/5e81fb96d1973', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"awb\":\"5e81fb96d1973\",\"parcelStatus\":\"In progress\",\"customNotice\":null}', '2020-03-30 08:40:04', '2020-03-30 08:40:04'),
(655, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:40:04', '2020-03-30 08:40:04'),
(656, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:40:05', '2020-03-30 08:40:05'),
(657, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:40:17', '2020-03-30 08:40:17'),
(658, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:40:17', '2020-03-30 08:40:17'),
(659, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:40:17', '2020-03-30 08:40:17'),
(660, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:40:18', '2020-03-30 08:40:18'),
(661, 1, 'admin/listAllUser/deliver/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:40:19', '2020-03-30 08:40:19'),
(662, 1, 'admin/listAllUser/deliver/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:40:20', '2020-03-30 08:40:20'),
(663, 1, 'admin/listAllUser/deliver/post/5e81fb96d1973', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"awb\":\"5e81fb96d1973\",\"parcelStatus\":\"In progress\",\"customNotice\":null}', '2020-03-30 08:40:22', '2020-03-30 08:40:22'),
(664, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:40:23', '2020-03-30 08:40:23'),
(665, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:40:23', '2020-03-30 08:40:23'),
(666, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:41:25', '2020-03-30 08:41:25'),
(667, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:41:25', '2020-03-30 08:41:25'),
(668, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:41:26', '2020-03-30 08:41:26'),
(669, 1, 'admin/listAllUser/deliver/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:41:27', '2020-03-30 08:41:27'),
(670, 1, 'admin/listAllUser/deliver/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:41:28', '2020-03-30 08:41:28'),
(671, 1, 'admin/listAllUser/deliver/post/5e81fb96d1973', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"awb\":\"5e81fb96d1973\",\"parcelStatus\":\"Completed\",\"customNotice\":null}', '2020-03-30 08:41:29', '2020-03-30 08:41:29'),
(672, 1, 'admin/listAllUser/deliver/post/5e81fb96d1973', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"awb\":\"5e81fb96d1973\",\"parcelStatus\":\"Completed\",\"customNotice\":null}', '2020-03-30 08:41:49', '2020-03-30 08:41:49'),
(673, 1, 'admin/listAllUser/deliver/post/5e81fb96d1973', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"awb\":\"5e81fb96d1973\",\"parcelStatus\":\"Completed\",\"customNotice\":null}', '2020-03-30 08:42:34', '2020-03-30 08:42:34'),
(674, 1, 'admin/listAllUser/deliver/post/5e81fb96d1973', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"awb\":\"5e81fb96d1973\",\"parcelStatus\":\"Completed\",\"customNotice\":null}', '2020-03-30 08:42:56', '2020-03-30 08:42:56'),
(675, 1, 'admin/listAllUser/deliver/post/5e81fb96d1973', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"awb\":\"5e81fb96d1973\",\"parcelStatus\":\"Completed\",\"customNotice\":null}', '2020-03-30 08:43:23', '2020-03-30 08:43:23'),
(676, 1, 'admin/listAllUser/deliver/post/5e81fb96d1973', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"awb\":\"5e81fb96d1973\",\"parcelStatus\":\"Completed\",\"customNotice\":null}', '2020-03-30 08:43:45', '2020-03-30 08:43:45'),
(677, 1, 'admin/listAllUser/deliver/post/5e81fb96d1973', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"awb\":\"5e81fb96d1973\",\"parcelStatus\":\"Completed\",\"customNotice\":null}', '2020-03-30 08:43:53', '2020-03-30 08:43:53'),
(678, 1, 'admin/listAllUser/deliver/post/5e81fb96d1973', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"awb\":\"5e81fb96d1973\",\"parcelStatus\":\"Completed\",\"customNotice\":null}', '2020-03-30 08:44:05', '2020-03-30 08:44:05'),
(679, 1, 'admin/listAllUser/deliver/post/5e81fb96d1973', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"awb\":\"5e81fb96d1973\",\"parcelStatus\":\"Completed\",\"customNotice\":null}', '2020-03-30 08:44:16', '2020-03-30 08:44:16'),
(680, 1, 'admin/listAllUser/deliver/post/5e81fb96d1973', 'POST', '127.0.0.1', '{\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\",\"awb\":\"5e81fb96d1973\",\"parcelStatus\":\"Completed\",\"customNotice\":null}', '2020-03-30 08:44:43', '2020-03-30 08:44:43'),
(681, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:44:44', '2020-03-30 08:44:44'),
(682, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:44:45', '2020-03-30 08:44:45'),
(683, 1, 'admin/listAllUser/detail/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:45:12', '2020-03-30 08:45:12'),
(684, 1, 'admin/listAllUser/detail/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:45:13', '2020-03-30 08:45:13'),
(685, 1, 'admin/listAllUser/detail/5e81fb96d1973', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:47:26', '2020-03-30 08:47:26'),
(686, 1, 'admin/listAllUser/detail/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:47:26', '2020-03-30 08:47:26'),
(687, 1, 'admin/listAllUser/detail/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:47:26', '2020-03-30 08:47:26'),
(688, 1, 'admin/listAllUser/detail/5e81fb96d1973', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:47:35', '2020-03-30 08:47:35'),
(689, 1, 'admin/listAllUser/detail/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:47:35', '2020-03-30 08:47:35'),
(690, 1, 'admin/listAllUser/detail/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:48:10', '2020-03-30 08:48:10'),
(691, 1, 'admin/listAllUser/detail/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:48:10', '2020-03-30 08:48:10'),
(692, 1, 'admin/listAllUser/detail/5e81fb96d1973', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:48:13', '2020-03-30 08:48:13'),
(693, 1, 'admin/listAllUser/detail/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:48:14', '2020-03-30 08:48:14'),
(694, 1, 'admin/listAllUser/detail/5e81fb96d1973', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:48:15', '2020-03-30 08:48:15'),
(695, 1, 'admin/listAllUser/detail/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:48:15', '2020-03-30 08:48:15'),
(696, 1, 'admin/listAllUser/detail/5e81fb96d1973', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:48:15', '2020-03-30 08:48:15'),
(697, 1, 'admin/listAllUser/detail/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:48:16', '2020-03-30 08:48:16'),
(698, 1, 'admin/listAllUser/detail/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:48:17', '2020-03-30 08:48:17'),
(699, 1, 'admin/listAllUser/detail/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:48:17', '2020-03-30 08:48:17'),
(700, 1, 'admin/listAllUser/detail/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:49:32', '2020-03-30 08:49:32'),
(701, 1, 'admin/listAllUser/detail/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:49:33', '2020-03-30 08:49:33'),
(702, 1, 'admin/listAllUser/detail/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:49:34', '2020-03-30 08:49:34'),
(703, 1, 'admin/listAllUser/detail/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:49:34', '2020-03-30 08:49:34'),
(704, 1, 'admin/listAllUser/detail/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:49:35', '2020-03-30 08:49:35'),
(705, 1, 'admin/listAllUser/detail/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:49:35', '2020-03-30 08:49:35'),
(706, 1, 'admin/listAllUser/detail/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:49:36', '2020-03-30 08:49:36'),
(707, 1, 'admin/listAllUser/detail/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:49:36', '2020-03-30 08:49:36'),
(708, 1, 'admin/listAllUser/detail/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:49:37', '2020-03-30 08:49:37'),
(709, 1, 'admin/listAllUser/detail/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:49:37', '2020-03-30 08:49:37'),
(710, 1, 'admin/listAllUser/detail/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:49:38', '2020-03-30 08:49:38'),
(711, 1, 'admin/listAllUser/detail/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:49:38', '2020-03-30 08:49:38'),
(712, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:49:40', '2020-03-30 08:49:40'),
(713, 1, 'admin/listAllUser/detail/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:49:40', '2020-03-30 08:49:40'),
(714, 1, 'admin/listAllUser/detail/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:49:41', '2020-03-30 08:49:41'),
(715, 1, 'admin/listAllUser/detail/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:49:43', '2020-03-30 08:49:43'),
(716, 1, 'admin/listAllUser/detail/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 08:49:44', '2020-03-30 08:49:44'),
(717, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:49:45', '2020-03-30 08:49:45'),
(718, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:49:46', '2020-03-30 08:49:46'),
(719, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:50:01', '2020-03-30 08:50:01'),
(720, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:50:01', '2020-03-30 08:50:01'),
(721, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:50:02', '2020-03-30 08:50:02'),
(722, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:50:02', '2020-03-30 08:50:02'),
(723, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:50:04', '2020-03-30 08:50:04'),
(724, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:50:04', '2020-03-30 08:50:04'),
(725, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:50:04', '2020-03-30 08:50:04'),
(726, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:50:05', '2020-03-30 08:50:05'),
(727, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:50:05', '2020-03-30 08:50:05'),
(728, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:50:06', '2020-03-30 08:50:06'),
(729, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:50:09', '2020-03-30 08:50:09'),
(730, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:50:09', '2020-03-30 08:50:09'),
(731, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:50:09', '2020-03-30 08:50:09'),
(732, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 08:59:43', '2020-03-30 08:59:43'),
(733, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 08:59:49', '2020-03-30 08:59:49'),
(734, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 09:00:17', '2020-03-30 09:00:17'),
(735, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:00:18', '2020-03-30 09:00:18'),
(736, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 09:06:59', '2020-03-30 09:06:59'),
(737, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:07:02', '2020-03-30 09:07:02'),
(738, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:07:02', '2020-03-30 09:07:02'),
(739, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:07:02', '2020-03-30 09:07:02'),
(740, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:07:03', '2020-03-30 09:07:03'),
(741, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:07:03', '2020-03-30 09:07:03'),
(742, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:07:03', '2020-03-30 09:07:03'),
(743, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:07:04', '2020-03-30 09:07:04'),
(744, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:07:04', '2020-03-30 09:07:04'),
(745, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:07:04', '2020-03-30 09:07:04'),
(746, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:07:05', '2020-03-30 09:07:05'),
(747, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:07:05', '2020-03-30 09:07:05'),
(748, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:07:05', '2020-03-30 09:07:05'),
(749, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:07:06', '2020-03-30 09:07:06');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(750, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:07:06', '2020-03-30 09:07:06'),
(751, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:07:06', '2020-03-30 09:07:06'),
(752, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:07:06', '2020-03-30 09:07:06'),
(753, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:07:07', '2020-03-30 09:07:07'),
(754, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:07:07', '2020-03-30 09:07:07'),
(755, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:07:08', '2020-03-30 09:07:08'),
(756, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:07:08', '2020-03-30 09:07:08'),
(757, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:07:08', '2020-03-30 09:07:08'),
(758, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:07:09', '2020-03-30 09:07:09'),
(759, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:07:09', '2020-03-30 09:07:09'),
(760, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:07:19', '2020-03-30 09:07:19'),
(761, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:07:20', '2020-03-30 09:07:20'),
(762, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:08:23', '2020-03-30 09:08:23'),
(763, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:08:24', '2020-03-30 09:08:24'),
(764, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:09:08', '2020-03-30 09:09:08'),
(765, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:09:09', '2020-03-30 09:09:09'),
(766, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:09:54', '2020-03-30 09:09:54'),
(767, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:09:55', '2020-03-30 09:09:55'),
(768, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:10:32', '2020-03-30 09:10:32'),
(769, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:10:33', '2020-03-30 09:10:33'),
(770, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:19:50', '2020-03-30 09:19:50'),
(771, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:19:50', '2020-03-30 09:19:50'),
(772, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:20:37', '2020-03-30 09:20:37'),
(773, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:20:37', '2020-03-30 09:20:37'),
(774, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:24:33', '2020-03-30 09:24:33'),
(775, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:24:33', '2020-03-30 09:24:33'),
(776, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:26:29', '2020-03-30 09:26:29'),
(777, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:26:30', '2020-03-30 09:26:30'),
(778, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:26:44', '2020-03-30 09:26:44'),
(779, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:26:45', '2020-03-30 09:26:45'),
(780, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:27:13', '2020-03-30 09:27:13'),
(781, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:27:14', '2020-03-30 09:27:14'),
(782, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:29:28', '2020-03-30 09:29:28'),
(783, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:29:28', '2020-03-30 09:29:28'),
(784, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:29:39', '2020-03-30 09:29:39'),
(785, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:29:40', '2020-03-30 09:29:40'),
(786, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:31:07', '2020-03-30 09:31:07'),
(787, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:31:07', '2020-03-30 09:31:07'),
(788, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:31:39', '2020-03-30 09:31:39'),
(789, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:31:40', '2020-03-30 09:31:40'),
(790, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:31:49', '2020-03-30 09:31:49'),
(791, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:31:49', '2020-03-30 09:31:49'),
(792, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:34:04', '2020-03-30 09:34:04'),
(793, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:34:04', '2020-03-30 09:34:04'),
(794, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:34:17', '2020-03-30 09:34:17'),
(795, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:34:18', '2020-03-30 09:34:18'),
(796, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:35:36', '2020-03-30 09:35:36'),
(797, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:35:36', '2020-03-30 09:35:36'),
(798, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:36:05', '2020-03-30 09:36:05'),
(799, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:36:05', '2020-03-30 09:36:05'),
(800, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:36:17', '2020-03-30 09:36:17'),
(801, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:36:18', '2020-03-30 09:36:18'),
(802, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:36:40', '2020-03-30 09:36:40'),
(803, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:36:41', '2020-03-30 09:36:41'),
(804, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:36:56', '2020-03-30 09:36:56'),
(805, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:36:57', '2020-03-30 09:36:57'),
(806, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:37:29', '2020-03-30 09:37:29'),
(807, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:37:30', '2020-03-30 09:37:30'),
(808, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:39:07', '2020-03-30 09:39:07'),
(809, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:39:08', '2020-03-30 09:39:08'),
(810, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:40:39', '2020-03-30 09:40:39'),
(811, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:40:40', '2020-03-30 09:40:40'),
(812, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:40:50', '2020-03-30 09:40:50'),
(813, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:40:50', '2020-03-30 09:40:50'),
(814, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:42:27', '2020-03-30 09:42:27'),
(815, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:42:28', '2020-03-30 09:42:28'),
(816, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:42:43', '2020-03-30 09:42:43'),
(817, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:42:44', '2020-03-30 09:42:44'),
(818, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:42:55', '2020-03-30 09:42:55'),
(819, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:42:56', '2020-03-30 09:42:56'),
(820, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:47:53', '2020-03-30 09:47:53'),
(821, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:47:54', '2020-03-30 09:47:54'),
(822, 1, 'admin/listAllUser/deliver/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 09:49:52', '2020-03-30 09:49:52'),
(823, 1, 'admin/listAllUser/deliver/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 09:49:53', '2020-03-30 09:49:53'),
(824, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 09:56:20', '2020-03-30 09:56:20'),
(825, 1, 'admin/listAllUser/deliver/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 09:56:20', '2020-03-30 09:56:20'),
(826, 1, 'admin/listAllUser/deliver/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 09:56:21', '2020-03-30 09:56:21'),
(827, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:56:21', '2020-03-30 09:56:21'),
(828, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:56:21', '2020-03-30 09:56:21'),
(829, 1, 'admin/listAllUser/deliver/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 09:56:21', '2020-03-30 09:56:21'),
(830, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:56:22', '2020-03-30 09:56:22'),
(831, 1, 'admin/listAllUser/deliver/5e81fb1f3f5c5', 'GET', '127.0.0.1', '[]', '2020-03-30 09:56:23', '2020-03-30 09:56:23'),
(832, 1, 'admin/listAllUser/deliver/5e81fb1f3f5c5', 'GET', '127.0.0.1', '[]', '2020-03-30 09:56:24', '2020-03-30 09:56:24'),
(833, 1, 'admin/listAllUser/deliver/5e81fb1f3f5c5', 'GET', '127.0.0.1', '[]', '2020-03-30 09:56:30', '2020-03-30 09:56:30'),
(834, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 09:56:30', '2020-03-30 09:56:30'),
(835, 1, 'admin/listAllUser/deliver/5e81fb1f3f5c5', 'GET', '127.0.0.1', '[]', '2020-03-30 09:56:30', '2020-03-30 09:56:30'),
(836, 1, 'admin/listAllUser/deliver/5e81fb1f3f5c5', 'GET', '127.0.0.1', '[]', '2020-03-30 09:56:31', '2020-03-30 09:56:31'),
(837, 1, 'admin/listAllUser/deliver/5e81fb1f3f5c5', 'GET', '127.0.0.1', '[]', '2020-03-30 09:56:32', '2020-03-30 09:56:32'),
(838, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 09:56:32', '2020-03-30 09:56:32'),
(839, 1, 'admin/listAllUser/deliver/5e81fb1f3f5c5', 'GET', '127.0.0.1', '[]', '2020-03-30 09:56:32', '2020-03-30 09:56:32'),
(840, 1, 'admin/listAllUser/deliver/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 09:56:33', '2020-03-30 09:56:33'),
(841, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:56:34', '2020-03-30 09:56:34'),
(842, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:56:34', '2020-03-30 09:56:34'),
(843, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:56:36', '2020-03-30 09:56:36'),
(844, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:56:37', '2020-03-30 09:56:37'),
(845, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 09:56:37', '2020-03-30 09:56:37'),
(846, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:56:38', '2020-03-30 09:56:38'),
(847, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 09:56:39', '2020-03-30 09:56:39'),
(848, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:56:40', '2020-03-30 09:56:40'),
(849, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:56:40', '2020-03-30 09:56:40'),
(850, 1, 'admin/listAllUser/deliver/5e81fb1f3f5c5', 'GET', '127.0.0.1', '[]', '2020-03-30 09:56:46', '2020-03-30 09:56:46'),
(851, 1, 'admin/listAllUser/deliver/5e81fb1f3f5c5', 'GET', '127.0.0.1', '[]', '2020-03-30 09:56:47', '2020-03-30 09:56:47'),
(852, 1, 'admin/listAllUser/deliver/5e81fb1f3f5c5', 'GET', '127.0.0.1', '[]', '2020-03-30 09:57:24', '2020-03-30 09:57:24'),
(853, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 09:57:24', '2020-03-30 09:57:24'),
(854, 1, 'admin/listAllUser/deliver/5e81fb1f3f5c5', 'GET', '127.0.0.1', '[]', '2020-03-30 09:57:25', '2020-03-30 09:57:25'),
(855, 1, 'admin/listAllUser/deliver/5e81fb1f3f5c5', 'GET', '127.0.0.1', '[]', '2020-03-30 09:57:28', '2020-03-30 09:57:28'),
(856, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 09:57:28', '2020-03-30 09:57:28'),
(857, 1, 'admin/listAllUser/deliver/5e81fb1f3f5c5', 'GET', '127.0.0.1', '[]', '2020-03-30 09:57:29', '2020-03-30 09:57:29'),
(858, 1, 'admin/listAllUser/deliver/5e81fb1f3f5c5', 'GET', '127.0.0.1', '[]', '2020-03-30 09:57:30', '2020-03-30 09:57:30'),
(859, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 09:57:30', '2020-03-30 09:57:30'),
(860, 1, 'admin/listAllUser/deliver/5e81fb1f3f5c5', 'GET', '127.0.0.1', '[]', '2020-03-30 09:57:30', '2020-03-30 09:57:30'),
(861, 1, 'admin/listAllUser/detail/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 09:57:32', '2020-03-30 09:57:32'),
(862, 1, 'admin/listAllUser/detail/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 09:57:33', '2020-03-30 09:57:33'),
(863, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:57:34', '2020-03-30 09:57:34'),
(864, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:57:35', '2020-03-30 09:57:35'),
(865, 1, 'admin/listAllUser/delete/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 09:57:36', '2020-03-30 09:57:36'),
(866, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:57:36', '2020-03-30 09:57:36'),
(867, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:57:37', '2020-03-30 09:57:37'),
(868, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:57:44', '2020-03-30 09:57:44'),
(869, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 09:57:44', '2020-03-30 09:57:44'),
(870, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:57:44', '2020-03-30 09:57:44'),
(871, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 09:57:45', '2020-03-30 09:57:45'),
(872, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 15:28:55', '2020-03-30 15:28:55'),
(873, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 15:28:55', '2020-03-30 15:28:55'),
(874, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 15:28:59', '2020-03-30 15:28:59'),
(875, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 15:28:59', '2020-03-30 15:28:59'),
(876, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 15:28:59', '2020-03-30 15:28:59'),
(877, 1, 'admin/listAllUser/detail/5e81fb1f3f5c5', 'GET', '127.0.0.1', '[]', '2020-03-30 15:33:37', '2020-03-30 15:33:37'),
(878, 1, 'admin/listAllUser/detail/5e81fb1f3f5c5', 'GET', '127.0.0.1', '[]', '2020-03-30 15:33:38', '2020-03-30 15:33:38'),
(879, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:04:11', '2020-03-30 10:04:11'),
(880, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:04:12', '2020-03-30 10:04:12'),
(881, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:04:18', '2020-03-30 10:04:18'),
(882, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:04:18', '2020-03-30 10:04:18'),
(883, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:04:18', '2020-03-30 10:04:18'),
(884, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:04:18', '2020-03-30 10:04:18'),
(885, 1, 'admin/listAllUser/updated/parcelStatus/update/5', 'GET', '127.0.0.1', '[]', '2020-03-30 10:04:20', '2020-03-30 10:04:20'),
(886, 1, 'admin/listAllUser/updated/parcelStatus/update/5', 'GET', '127.0.0.1', '[]', '2020-03-30 10:04:21', '2020-03-30 10:04:21'),
(887, 1, 'admin/listAllUser/updated/parcelStatus/update/5', 'GET', '127.0.0.1', '[]', '2020-03-30 10:04:33', '2020-03-30 10:04:33'),
(888, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:04:33', '2020-03-30 10:04:33'),
(889, 1, 'admin/listAllUser/updated/parcelStatus/update/5', 'GET', '127.0.0.1', '[]', '2020-03-30 10:04:34', '2020-03-30 10:04:34'),
(890, 1, 'admin/listAllUser/updated/parcelStatus/update/5', 'GET', '127.0.0.1', '[]', '2020-03-30 10:04:34', '2020-03-30 10:04:34'),
(891, 1, 'admin/listAllUser/updated/parcelStatus/update/5', 'GET', '127.0.0.1', '[]', '2020-03-30 10:04:39', '2020-03-30 10:04:39'),
(892, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:04:39', '2020-03-30 10:04:39'),
(893, 1, 'admin/listAllUser/updated/parcelStatus/update/5', 'GET', '127.0.0.1', '[]', '2020-03-30 10:04:39', '2020-03-30 10:04:39'),
(894, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:04:42', '2020-03-30 10:04:42'),
(895, 1, 'admin/listAllUser/updated/parcelStatus/update/5', 'GET', '127.0.0.1', '[]', '2020-03-30 10:04:43', '2020-03-30 10:04:43'),
(896, 1, 'admin/listAllUser/updated/parcelStatus/update/5', 'GET', '127.0.0.1', '[]', '2020-03-30 10:04:43', '2020-03-30 10:04:43'),
(897, 1, 'admin/listAllUser/updated/parcelStatus/update/5', 'GET', '127.0.0.1', '[]', '2020-03-30 10:04:46', '2020-03-30 10:04:46'),
(898, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:04:46', '2020-03-30 10:04:46'),
(899, 1, 'admin/listAllUser/updated/parcelStatus/update/5', 'GET', '127.0.0.1', '[]', '2020-03-30 10:04:47', '2020-03-30 10:04:47'),
(900, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:06:28', '2020-03-30 10:06:28'),
(901, 1, 'admin/listAllUser/updated/parcelStatus/update/5', 'GET', '127.0.0.1', '[]', '2020-03-30 10:06:29', '2020-03-30 10:06:29'),
(902, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:06:46', '2020-03-30 10:06:46'),
(903, 1, 'admin/listAllUser/updated/parcelStatus/update/5', 'GET', '127.0.0.1', '[]', '2020-03-30 10:06:47', '2020-03-30 10:06:47'),
(904, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:12:35', '2020-03-30 10:12:35'),
(905, 1, 'admin/listAllUser/updated/parcelStatus/update/5', 'GET', '127.0.0.1', '[]', '2020-03-30 10:12:35', '2020-03-30 10:12:35'),
(906, 1, 'admin/listAllUser/updated/delete/4', 'GET', '127.0.0.1', '[]', '2020-03-30 10:12:38', '2020-03-30 10:12:38'),
(907, 1, 'admin/listAllUser/updated/delete/4', 'GET', '127.0.0.1', '[]', '2020-03-30 10:12:38', '2020-03-30 10:12:38'),
(908, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:15:04', '2020-03-30 10:15:04'),
(909, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:15:05', '2020-03-30 10:15:05'),
(910, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:15:06', '2020-03-30 10:15:06'),
(911, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:15:06', '2020-03-30 10:15:06'),
(912, 1, 'admin/listAllUser/updated/delete/10', 'GET', '127.0.0.1', '[]', '2020-03-30 10:15:08', '2020-03-30 10:15:08'),
(913, 1, 'admin/listAllUser/updated/delete/10', 'GET', '127.0.0.1', '[]', '2020-03-30 10:15:09', '2020-03-30 10:15:09'),
(914, 1, 'admin/listAllUser/updated/delete/10', 'GET', '127.0.0.1', '[]', '2020-03-30 10:16:33', '2020-03-30 10:16:33'),
(915, 1, 'admin/listAllUser/updated/delete/10', 'GET', '127.0.0.1', '[]', '2020-03-30 10:16:34', '2020-03-30 10:16:34'),
(916, 1, 'admin/listAllUser/updated/delete/10', 'GET', '127.0.0.1', '[]', '2020-03-30 10:18:43', '2020-03-30 10:18:43'),
(917, 1, 'admin/listAllUser/updated/delete/10', 'GET', '127.0.0.1', '[]', '2020-03-30 10:18:44', '2020-03-30 10:18:44'),
(918, 1, 'admin/listAllUser/updated/delete/10', 'GET', '127.0.0.1', '[]', '2020-03-30 10:18:51', '2020-03-30 10:18:51'),
(919, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:18:51', '2020-03-30 10:18:51'),
(920, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:18:52', '2020-03-30 10:18:52'),
(921, 1, 'admin/listAllUser/updated/delete/8', 'GET', '127.0.0.1', '[]', '2020-03-30 10:19:08', '2020-03-30 10:19:08'),
(922, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:19:08', '2020-03-30 10:19:08'),
(923, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:19:09', '2020-03-30 10:19:09'),
(924, 1, 'admin/listAllUser/updated/delete/4', 'GET', '127.0.0.1', '[]', '2020-03-30 10:19:39', '2020-03-30 10:19:39'),
(925, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:19:40', '2020-03-30 10:19:40'),
(926, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:19:40', '2020-03-30 10:19:40'),
(927, 1, 'admin/listAllUser/updated/delete/5', 'GET', '127.0.0.1', '[]', '2020-03-30 10:19:41', '2020-03-30 10:19:41'),
(928, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:19:42', '2020-03-30 10:19:42'),
(929, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:19:42', '2020-03-30 10:19:42'),
(930, 1, 'admin/listAllUser/updated/delete/6', 'GET', '127.0.0.1', '[]', '2020-03-30 10:19:43', '2020-03-30 10:19:43'),
(931, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:19:43', '2020-03-30 10:19:43'),
(932, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:19:44', '2020-03-30 10:19:44'),
(933, 1, 'admin/listAllUser/updated/delete/7', 'GET', '127.0.0.1', '[]', '2020-03-30 10:19:44', '2020-03-30 10:19:44'),
(934, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:19:45', '2020-03-30 10:19:45'),
(935, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:19:45', '2020-03-30 10:19:45'),
(936, 1, 'admin/listAllUser/updated/delete/9', 'GET', '127.0.0.1', '[]', '2020-03-30 10:19:46', '2020-03-30 10:19:46'),
(937, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:19:46', '2020-03-30 10:19:46'),
(938, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:19:47', '2020-03-30 10:19:47'),
(939, 1, 'admin/listAllUser/updated/delete/11', 'GET', '127.0.0.1', '[]', '2020-03-30 10:19:47', '2020-03-30 10:19:47'),
(940, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:19:48', '2020-03-30 10:19:48'),
(941, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:19:48', '2020-03-30 10:19:48'),
(942, 1, 'admin/listAllUser/updated/delete/12', 'GET', '127.0.0.1', '[]', '2020-03-30 10:19:49', '2020-03-30 10:19:49'),
(943, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:19:49', '2020-03-30 10:19:49'),
(944, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:19:50', '2020-03-30 10:19:50'),
(945, 1, 'admin/listAllUser/updated/delete/13', 'GET', '127.0.0.1', '[]', '2020-03-30 10:19:51', '2020-03-30 10:19:51'),
(946, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:19:52', '2020-03-30 10:19:52'),
(947, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:19:56', '2020-03-30 10:19:56'),
(948, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:19:59', '2020-03-30 10:19:59'),
(949, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:19:59', '2020-03-30 10:19:59'),
(950, 1, 'admin/listAllUser/updated/delete/14', 'GET', '127.0.0.1', '[]', '2020-03-30 10:20:02', '2020-03-30 10:20:02'),
(951, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:20:02', '2020-03-30 10:20:02'),
(952, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:20:02', '2020-03-30 10:20:02'),
(953, 1, 'admin/listAllUser/updated/delete/15', 'GET', '127.0.0.1', '[]', '2020-03-30 10:20:04', '2020-03-30 10:20:04'),
(954, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:20:04', '2020-03-30 10:20:04'),
(955, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:20:05', '2020-03-30 10:20:05'),
(956, 1, 'admin/listAllUser/updated/delete/16', 'GET', '127.0.0.1', '[]', '2020-03-30 10:20:06', '2020-03-30 10:20:06'),
(957, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:20:06', '2020-03-30 10:20:06'),
(958, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:20:07', '2020-03-30 10:20:07'),
(959, 1, 'admin/listAllUser/updated/delete/17', 'GET', '127.0.0.1', '[]', '2020-03-30 10:20:08', '2020-03-30 10:20:08'),
(960, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:20:09', '2020-03-30 10:20:09'),
(961, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:20:09', '2020-03-30 10:20:09'),
(962, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:20:11', '2020-03-30 10:20:11'),
(963, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:20:12', '2020-03-30 10:20:12'),
(964, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:22:26', '2020-03-30 10:22:26'),
(965, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:22:26', '2020-03-30 10:22:26'),
(966, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:22:27', '2020-03-30 10:22:27'),
(967, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-03-30 10:22:27', '2020-03-30 10:22:27'),
(968, 1, 'admin/listAllUser/deliver/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 10:22:30', '2020-03-30 10:22:30'),
(969, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:22:30', '2020-03-30 10:22:30'),
(970, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:22:31', '2020-03-30 10:22:31'),
(971, 1, 'admin/listAllUser/delete/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 10:22:34', '2020-03-30 10:22:34'),
(972, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:22:35', '2020-03-30 10:22:35'),
(973, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:22:35', '2020-03-30 10:22:35'),
(974, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:23:28', '2020-03-30 10:23:28'),
(975, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:23:28', '2020-03-30 10:23:28'),
(976, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:23:28', '2020-03-30 10:23:28'),
(977, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:23:35', '2020-03-30 10:23:35'),
(978, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:23:35', '2020-03-30 10:23:35'),
(979, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:23:35', '2020-03-30 10:23:35'),
(980, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:24:51', '2020-03-30 10:24:51'),
(981, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:24:51', '2020-03-30 10:24:51'),
(982, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:24:51', '2020-03-30 10:24:51'),
(983, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:25:18', '2020-03-30 10:25:18'),
(984, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:25:19', '2020-03-30 10:25:19'),
(985, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:25:21', '2020-03-30 10:25:21'),
(986, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:25:21', '2020-03-30 10:25:21'),
(987, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:25:22', '2020-03-30 10:25:22'),
(988, 1, 'admin/listAllUser/detail/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 10:25:46', '2020-03-30 10:25:46'),
(989, 1, 'admin/listAllUser/detail/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 10:25:46', '2020-03-30 10:25:46'),
(990, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:29:41', '2020-03-30 10:29:41'),
(991, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:29:42', '2020-03-30 10:29:42'),
(992, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:29:47', '2020-03-30 10:29:47'),
(993, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:29:47', '2020-03-30 10:29:47'),
(994, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:29:47', '2020-03-30 10:29:47'),
(995, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:29:48', '2020-03-30 10:29:48'),
(996, 1, 'admin/listAllUser/deliver/5e81f49c0e6b3', 'GET', '127.0.0.1', '[]', '2020-03-30 10:30:07', '2020-03-30 10:30:07'),
(997, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:30:07', '2020-03-30 10:30:07'),
(998, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:30:08', '2020-03-30 10:30:08'),
(999, 1, 'admin/listAllUser/deliver/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 10:30:13', '2020-03-30 10:30:13'),
(1000, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:30:13', '2020-03-30 10:30:13'),
(1001, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:30:14', '2020-03-30 10:30:14'),
(1002, 1, 'admin/listAllUser/deliver/5e81fb1f3f5c5', 'GET', '127.0.0.1', '[]', '2020-03-30 10:30:15', '2020-03-30 10:30:15'),
(1003, 1, 'admin/listAllUser/deliver/5e81fb1f3f5c5', 'GET', '127.0.0.1', '[]', '2020-03-30 10:30:16', '2020-03-30 10:30:16'),
(1004, 1, 'admin/listAllUser/deliver/5e81fb1f3f5c5', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:32:28', '2020-03-30 10:32:28'),
(1005, 1, 'admin/listAllUser/deliver/5e81fb1f3f5c5', 'GET', '127.0.0.1', '[]', '2020-03-30 10:32:28', '2020-03-30 10:32:28'),
(1006, 1, 'admin/listAllUser/deliver/5e81fb1f3f5c5', 'GET', '127.0.0.1', '[]', '2020-03-30 10:32:29', '2020-03-30 10:32:29'),
(1007, 1, 'admin/listAllUser/deliver/5e81fb1f3f5c5', 'GET', '127.0.0.1', '[]', '2020-03-30 10:32:37', '2020-03-30 10:32:37'),
(1008, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:32:37', '2020-03-30 10:32:37'),
(1009, 1, 'admin/listAllUser/deliver/5e81fb1f3f5c5', 'GET', '127.0.0.1', '[]', '2020-03-30 10:32:37', '2020-03-30 10:32:37'),
(1010, 1, 'admin/listAllUser/detail/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 10:32:38', '2020-03-30 10:32:38'),
(1011, 1, 'admin/listAllUser/detail/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 10:32:39', '2020-03-30 10:32:39'),
(1012, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:32:40', '2020-03-30 10:32:40'),
(1013, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:32:41', '2020-03-30 10:32:41'),
(1014, 1, 'admin/listAllUser/deliver/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 10:32:42', '2020-03-30 10:32:42'),
(1015, 1, 'admin/listAllUser/deliver/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 10:32:43', '2020-03-30 10:32:43'),
(1016, 1, 'admin/listAllUser/deliver/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 10:32:54', '2020-03-30 10:32:54'),
(1017, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:32:54', '2020-03-30 10:32:54'),
(1018, 1, 'admin/listAllUser/deliver/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 10:32:54', '2020-03-30 10:32:54'),
(1019, 1, 'admin/listAllUser/deliver/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 10:32:54', '2020-03-30 10:32:54'),
(1020, 1, 'admin/listAllUser/updated/parcelStatus/update/2', 'GET', '127.0.0.1', '[]', '2020-03-30 10:32:56', '2020-03-30 10:32:56'),
(1021, 1, 'admin/listAllUser/updated/parcelStatus/update/2', 'GET', '127.0.0.1', '[]', '2020-03-30 10:32:56', '2020-03-30 10:32:56'),
(1022, 1, 'admin/listAllUser/updated/parcelStatus/update/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:33:08', '2020-03-30 10:33:08'),
(1023, 1, 'admin/listAllUser/updated/parcelStatus/update/2', 'GET', '127.0.0.1', '[]', '2020-03-30 10:33:08', '2020-03-30 10:33:08'),
(1024, 1, 'admin/listAllUser/updated/parcelStatus/update/2', 'GET', '127.0.0.1', '[]', '2020-03-30 10:33:08', '2020-03-30 10:33:08'),
(1025, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:33:13', '2020-03-30 10:33:13'),
(1026, 1, 'admin/listAllUser/updated/parcelStatus/update/2', 'GET', '127.0.0.1', '[]', '2020-03-30 10:33:13', '2020-03-30 10:33:13'),
(1027, 1, 'admin/listAllUser/updated/parcelStatus/update/2', 'GET', '127.0.0.1', '[]', '2020-03-30 10:33:13', '2020-03-30 10:33:13'),
(1028, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:33:14', '2020-03-30 10:33:14'),
(1029, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:33:15', '2020-03-30 10:33:15'),
(1030, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 10:33:38', '2020-03-30 10:33:38'),
(1031, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 10:33:39', '2020-03-30 10:33:39'),
(1032, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 10:33:58', '2020-03-30 10:33:58'),
(1033, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:33:58', '2020-03-30 10:33:58'),
(1034, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 10:33:58', '2020-03-30 10:33:58'),
(1035, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '[]', '2020-03-30 10:33:58', '2020-03-30 10:33:58'),
(1036, 1, 'admin/listAllUser/detail/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 10:34:00', '2020-03-30 10:34:00'),
(1037, 1, 'admin/listAllUser/detail/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 10:34:00', '2020-03-30 10:34:00'),
(1038, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:34:01', '2020-03-30 10:34:01'),
(1039, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:34:02', '2020-03-30 10:34:02'),
(1040, 1, 'admin/listAllUser/deliver/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 10:34:03', '2020-03-30 10:34:03'),
(1041, 1, 'admin/listAllUser/deliver/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 10:34:03', '2020-03-30 10:34:03'),
(1042, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:34:05', '2020-03-30 10:34:05'),
(1043, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:34:05', '2020-03-30 10:34:05'),
(1044, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 10:34:06', '2020-03-30 10:34:06'),
(1045, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:34:06', '2020-03-30 10:34:06'),
(1046, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:34:07', '2020-03-30 10:34:07'),
(1047, 1, 'admin/listAllUser/deliver/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 10:34:09', '2020-03-30 10:34:09'),
(1048, 1, 'admin/listAllUser/deliver/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 10:34:09', '2020-03-30 10:34:09'),
(1049, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:34:10', '2020-03-30 10:34:10'),
(1050, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:34:11', '2020-03-30 10:34:11'),
(1051, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:34:14', '2020-03-30 10:34:14'),
(1052, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:34:14', '2020-03-30 10:34:14'),
(1053, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:34:14', '2020-03-30 10:34:14'),
(1054, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:34:15', '2020-03-30 10:34:15'),
(1055, 1, 'admin/listAllUser/deliver/5e81fb1f3f5c5', 'GET', '127.0.0.1', '[]', '2020-03-30 10:34:17', '2020-03-30 10:34:17'),
(1056, 1, 'admin/listAllUser/deliver/5e81fb1f3f5c5', 'GET', '127.0.0.1', '[]', '2020-03-30 10:34:17', '2020-03-30 10:34:17'),
(1057, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:34:18', '2020-03-30 10:34:18'),
(1058, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:34:19', '2020-03-30 10:34:19'),
(1059, 1, 'admin/listAllUser/deliver/5e81f49c0e6b3', 'GET', '127.0.0.1', '[]', '2020-03-30 10:34:20', '2020-03-30 10:34:20'),
(1060, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:34:20', '2020-03-30 10:34:20'),
(1061, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:34:21', '2020-03-30 10:34:21'),
(1062, 1, 'admin/listAllUser/deliver/5e81fb96d1973', 'GET', '127.0.0.1', '[]', '2020-03-30 10:34:22', '2020-03-30 10:34:22'),
(1063, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:34:22', '2020-03-30 10:34:22'),
(1064, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:34:23', '2020-03-30 10:34:23'),
(1065, 1, 'admin/listAllUser/deliver/5e81f49c0e6b3', 'GET', '127.0.0.1', '[]', '2020-03-30 10:34:45', '2020-03-30 10:34:45'),
(1066, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:34:46', '2020-03-30 10:34:46'),
(1067, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:34:46', '2020-03-30 10:34:46'),
(1068, 1, 'admin/listAllUser/deliver/5e81fb1f3f5c5', 'GET', '127.0.0.1', '[]', '2020-03-30 10:34:47', '2020-03-30 10:34:47'),
(1069, 1, 'admin/listAllUser/deliver/5e81fb1f3f5c5', 'GET', '127.0.0.1', '[]', '2020-03-30 10:34:48', '2020-03-30 10:34:48'),
(1070, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:34:53', '2020-03-30 10:34:53'),
(1071, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:34:54', '2020-03-30 10:34:54'),
(1072, 1, 'admin/listAllUser/deliver/5e81f49c0e6b3', 'GET', '127.0.0.1', '[]', '2020-03-30 10:35:03', '2020-03-30 10:35:03'),
(1073, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:35:03', '2020-03-30 10:35:03'),
(1074, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:35:03', '2020-03-30 10:35:03'),
(1075, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:35:27', '2020-03-30 10:35:27'),
(1076, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:35:27', '2020-03-30 10:35:27'),
(1077, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:35:28', '2020-03-30 10:35:28'),
(1078, 1, 'admin/listAllUser/multipleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:35:28', '2020-03-30 10:35:28'),
(1079, 1, 'admin/listAllUser/deliver/5e81b7ca06a12', 'GET', '127.0.0.1', '[]', '2020-03-30 10:35:29', '2020-03-30 10:35:29'),
(1080, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:35:30', '2020-03-30 10:35:30'),
(1081, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:35:30', '2020-03-30 10:35:30'),
(1082, 1, 'admin/listAllUser/deliver/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 10:35:31', '2020-03-30 10:35:31'),
(1083, 1, 'admin/listAllUser/deliver/5e81a9550a729', 'GET', '127.0.0.1', '[]', '2020-03-30 10:35:32', '2020-03-30 10:35:32'),
(1084, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:35:33', '2020-03-30 10:35:33'),
(1085, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:35:34', '2020-03-30 10:35:34'),
(1086, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:35:45', '2020-03-30 10:35:45'),
(1087, 1, 'admin/listAllUser/updated/parcelStatus', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:35:45', '2020-03-30 10:35:45'),
(1088, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:35:46', '2020-03-30 10:35:46'),
(1089, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '[]', '2020-03-30 10:35:46', '2020-03-30 10:35:46'),
(1090, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:36:25', '2020-03-30 10:36:25'),
(1091, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:36:26', '2020-03-30 10:36:26'),
(1092, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:36:41', '2020-03-30 10:36:41'),
(1093, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:36:41', '2020-03-30 10:36:41'),
(1094, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:36:41', '2020-03-30 10:36:41'),
(1095, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:36:42', '2020-03-30 10:36:42'),
(1096, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:37:25', '2020-03-30 10:37:25'),
(1097, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:37:25', '2020-03-30 10:37:25'),
(1098, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:37:25', '2020-03-30 10:37:25'),
(1099, 1, 'admin/config/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:37:30', '2020-03-30 10:37:30'),
(1100, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:37:30', '2020-03-30 10:37:30'),
(1101, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:37:31', '2020-03-30 10:37:31'),
(1102, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:40:50', '2020-03-30 10:40:50'),
(1103, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:40:50', '2020-03-30 10:40:50'),
(1104, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:40:50', '2020-03-30 10:40:50'),
(1105, 1, 'admin/config/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:43:43', '2020-03-30 10:43:43'),
(1106, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:43:43', '2020-03-30 10:43:43'),
(1107, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:43:44', '2020-03-30 10:43:44'),
(1108, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:44:16', '2020-03-30 10:44:16'),
(1109, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:44:16', '2020-03-30 10:44:16'),
(1110, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:44:17', '2020-03-30 10:44:17'),
(1111, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}', '2020-03-30 10:45:10', '2020-03-30 10:45:10'),
(1112, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:45:36', '2020-03-30 10:45:36'),
(1113, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:45:36', '2020-03-30 10:45:36'),
(1114, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:45:37', '2020-03-30 10:45:37'),
(1115, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"100\"}', '2020-03-30 10:48:35', '2020-03-30 10:48:35'),
(1116, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:48:35', '2020-03-30 10:48:35'),
(1117, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:48:35', '2020-03-30 10:48:35'),
(1118, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"10\"}', '2020-03-30 10:48:37', '2020-03-30 10:48:37'),
(1119, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:48:37', '2020-03-30 10:48:37'),
(1120, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:48:38', '2020-03-30 10:48:38'),
(1121, 1, 'admin/listAllUser/singleParcel', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:48:41', '2020-03-30 10:48:41'),
(1122, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:48:41', '2020-03-30 10:48:41'),
(1123, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:48:42', '2020-03-30 10:48:42'),
(1124, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:49:25', '2020-03-30 10:49:25'),
(1125, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:49:25', '2020-03-30 10:49:25'),
(1126, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:49:25', '2020-03-30 10:49:25'),
(1127, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:49:27', '2020-03-30 10:49:27'),
(1128, 1, 'admin/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:49:27', '2020-03-30 10:49:27'),
(1129, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:49:28', '2020-03-30 10:49:28'),
(1130, 1, 'admin/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:49:41', '2020-03-30 10:49:41'),
(1131, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:49:41', '2020-03-30 10:49:41'),
(1132, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12018824\"}', '2020-03-30 10:49:44', '2020-03-30 10:49:44'),
(1133, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:49:46', '2020-03-30 10:49:46'),
(1134, 1, 'admin/logs/laravel.log', 'GET', '127.0.0.1', '{\"offset\":\"-11662475\",\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:49:46', '2020-03-30 10:49:46'),
(1135, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12018824\"}', '2020-03-30 10:49:47', '2020-03-30 10:49:47'),
(1136, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:49:47', '2020-03-30 10:49:47'),
(1137, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12018824\"}', '2020-03-30 10:49:49', '2020-03-30 10:49:49'),
(1138, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:49:49', '2020-03-30 10:49:49'),
(1139, 1, 'admin/logs/laravel.log', 'GET', '127.0.0.1', '{\"offset\":\"11662475\",\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:49:49', '2020-03-30 10:49:49'),
(1140, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:49:50', '2020-03-30 10:49:50'),
(1141, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12018824\"}', '2020-03-30 10:49:51', '2020-03-30 10:49:51'),
(1142, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12018824\"}', '2020-03-30 10:49:53', '2020-03-30 10:49:53'),
(1143, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12018824\"}', '2020-03-30 10:49:55', '2020-03-30 10:49:55'),
(1144, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12018824\"}', '2020-03-30 10:49:57', '2020-03-30 10:49:57'),
(1145, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12018824\"}', '2020-03-30 10:49:59', '2020-03-30 10:49:59'),
(1146, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12018824\"}', '2020-03-30 10:50:01', '2020-03-30 10:50:01');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1147, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12018824\"}', '2020-03-30 10:50:03', '2020-03-30 10:50:03'),
(1148, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12018824\"}', '2020-03-30 10:50:05', '2020-03-30 10:50:05'),
(1149, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12018824\"}', '2020-03-30 10:50:07', '2020-03-30 10:50:07'),
(1150, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12018824\"}', '2020-03-30 10:50:09', '2020-03-30 10:50:09'),
(1151, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:50:09', '2020-03-30 10:50:09'),
(1152, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:50:09', '2020-03-30 10:50:09'),
(1153, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:50:10', '2020-03-30 10:50:10'),
(1154, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12018824\"}', '2020-03-30 10:50:11', '2020-03-30 10:50:11'),
(1155, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12018824\"}', '2020-03-30 10:50:13', '2020-03-30 10:50:13'),
(1156, 1, 'admin/scheduling', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:50:13', '2020-03-30 10:50:13'),
(1157, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:50:14', '2020-03-30 10:50:14'),
(1158, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:50:14', '2020-03-30 10:50:14'),
(1159, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12018824\"}', '2020-03-30 10:50:17', '2020-03-30 10:50:17'),
(1160, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:50:19', '2020-03-30 10:50:19'),
(1161, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:50:21', '2020-03-30 10:50:21'),
(1162, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:50:23', '2020-03-30 10:50:23'),
(1163, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:50:25', '2020-03-30 10:50:25'),
(1164, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:50:27', '2020-03-30 10:50:27'),
(1165, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:50:29', '2020-03-30 10:50:29'),
(1166, 1, 'admin/scheduling/run', 'POST', '127.0.0.1', '{\"id\":\"1\",\"_token\":\"lud9MbwB0SUJ3nQsbj1ybeCq1d24zksWeK2ttWMW\"}', '2020-03-30 10:50:29', '2020-03-30 10:50:29'),
(1167, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:50:31', '2020-03-30 10:50:31'),
(1168, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:50:33', '2020-03-30 10:50:33'),
(1169, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:50:35', '2020-03-30 10:50:35'),
(1170, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:50:37', '2020-03-30 10:50:37'),
(1171, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:50:39', '2020-03-30 10:50:39'),
(1172, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:50:41', '2020-03-30 10:50:41'),
(1173, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:50:43', '2020-03-30 10:50:43'),
(1174, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:50:45', '2020-03-30 10:50:45'),
(1175, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:50:47', '2020-03-30 10:50:47'),
(1176, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:50:49', '2020-03-30 10:50:49'),
(1177, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:50:51', '2020-03-30 10:50:51'),
(1178, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:50:53', '2020-03-30 10:50:53'),
(1179, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:50:55', '2020-03-30 10:50:55'),
(1180, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:50:57', '2020-03-30 10:50:57'),
(1181, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:50:59', '2020-03-30 10:50:59'),
(1182, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:51:01', '2020-03-30 10:51:01'),
(1183, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:51:03', '2020-03-30 10:51:03'),
(1184, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:51:05', '2020-03-30 10:51:05'),
(1185, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:51:07', '2020-03-30 10:51:07'),
(1186, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:51:09', '2020-03-30 10:51:09'),
(1187, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:51:11', '2020-03-30 10:51:11'),
(1188, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:51:13', '2020-03-30 10:51:13'),
(1189, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:51:15', '2020-03-30 10:51:15'),
(1190, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:51:17', '2020-03-30 10:51:17'),
(1191, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:51:19', '2020-03-30 10:51:19'),
(1192, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:51:21', '2020-03-30 10:51:21'),
(1193, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:51:22', '2020-03-30 10:51:22'),
(1194, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:51:22', '2020-03-30 10:51:22'),
(1195, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:51:23', '2020-03-30 10:51:23'),
(1196, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:51:23', '2020-03-30 10:51:23'),
(1197, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:51:25', '2020-03-30 10:51:25'),
(1198, 1, 'admin/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:51:25', '2020-03-30 10:51:25'),
(1199, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:51:25', '2020-03-30 10:51:25'),
(1200, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:51:26', '2020-03-30 10:51:26'),
(1201, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:51:27', '2020-03-30 10:51:27'),
(1202, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:51:29', '2020-03-30 10:51:29'),
(1203, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:51:29', '2020-03-30 10:51:29'),
(1204, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:51:29', '2020-03-30 10:51:29'),
(1205, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:51:30', '2020-03-30 10:51:30'),
(1206, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:51:31', '2020-03-30 10:51:31'),
(1207, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:51:33', '2020-03-30 10:51:33'),
(1208, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:51:35', '2020-03-30 10:51:35'),
(1209, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:51:37', '2020-03-30 10:51:37'),
(1210, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:51:39', '2020-03-30 10:51:39'),
(1211, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:51:41', '2020-03-30 10:51:41'),
(1212, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:51:43', '2020-03-30 10:51:43'),
(1213, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:51:45', '2020-03-30 10:51:45'),
(1214, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:51:47', '2020-03-30 10:51:47'),
(1215, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:51:49', '2020-03-30 10:51:49'),
(1216, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:51:51', '2020-03-30 10:51:51'),
(1217, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:51:53', '2020-03-30 10:51:53'),
(1218, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:51:55', '2020-03-30 10:51:55'),
(1219, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:51:57', '2020-03-30 10:51:57'),
(1220, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:51:59', '2020-03-30 10:51:59'),
(1221, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:52:01', '2020-03-30 10:52:01'),
(1222, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:52:03', '2020-03-30 10:52:03'),
(1223, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:52:05', '2020-03-30 10:52:05'),
(1224, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:52:07', '2020-03-30 10:52:07'),
(1225, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:52:08', '2020-03-30 10:52:08'),
(1226, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:52:08', '2020-03-30 10:52:08'),
(1227, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:52:08', '2020-03-30 10:52:08'),
(1228, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:52:09', '2020-03-30 10:52:09'),
(1229, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:52:10', '2020-03-30 10:52:10'),
(1230, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:52:10', '2020-03-30 10:52:10'),
(1231, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:52:11', '2020-03-30 10:52:11'),
(1232, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:52:11', '2020-03-30 10:52:11'),
(1233, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:52:13', '2020-03-30 10:52:13'),
(1234, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:52:15', '2020-03-30 10:52:15'),
(1235, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:52:17', '2020-03-30 10:52:17'),
(1236, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:52:19', '2020-03-30 10:52:19'),
(1237, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:52:21', '2020-03-30 10:52:21'),
(1238, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:52:23', '2020-03-30 10:52:23'),
(1239, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:52:25', '2020-03-30 10:52:25'),
(1240, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:52:27', '2020-03-30 10:52:27'),
(1241, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:52:29', '2020-03-30 10:52:29'),
(1242, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:52:31', '2020-03-30 10:52:31'),
(1243, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:52:33', '2020-03-30 10:52:33'),
(1244, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:52:35', '2020-03-30 10:52:35'),
(1245, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:52:37', '2020-03-30 10:52:37'),
(1246, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:52:39', '2020-03-30 10:52:39'),
(1247, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:52:41', '2020-03-30 10:52:41'),
(1248, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:52:43', '2020-03-30 10:52:43'),
(1249, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:52:45', '2020-03-30 10:52:45'),
(1250, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:52:47', '2020-03-30 10:52:47'),
(1251, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 10:52:48', '2020-03-30 10:52:48'),
(1252, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:52:48', '2020-03-30 10:52:48'),
(1253, 1, 'admin/listAllUser/updated/parcelStatus/update/1', 'GET', '127.0.0.1', '[]', '2020-03-30 10:52:49', '2020-03-30 10:52:49'),
(1254, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:52:49', '2020-03-30 10:52:49'),
(1255, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:52:51', '2020-03-30 10:52:51'),
(1256, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:52:53', '2020-03-30 10:52:53'),
(1257, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:52:55', '2020-03-30 10:52:55'),
(1258, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:52:57', '2020-03-30 10:52:57'),
(1259, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:52:59', '2020-03-30 10:52:59'),
(1260, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:53:01', '2020-03-30 10:53:01'),
(1261, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:53:03', '2020-03-30 10:53:03'),
(1262, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:53:05', '2020-03-30 10:53:05'),
(1263, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:53:07', '2020-03-30 10:53:07'),
(1264, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:53:09', '2020-03-30 10:53:09'),
(1265, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:53:11', '2020-03-30 10:53:11'),
(1266, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:53:13', '2020-03-30 10:53:13'),
(1267, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:53:15', '2020-03-30 10:53:15'),
(1268, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:53:17', '2020-03-30 10:53:17'),
(1269, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:53:19', '2020-03-30 10:53:19'),
(1270, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:53:21', '2020-03-30 10:53:21'),
(1271, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:53:23', '2020-03-30 10:53:23'),
(1272, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:53:25', '2020-03-30 10:53:25'),
(1273, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:53:27', '2020-03-30 10:53:27'),
(1274, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:53:29', '2020-03-30 10:53:29'),
(1275, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:53:31', '2020-03-30 10:53:31'),
(1276, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:53:33', '2020-03-30 10:53:33'),
(1277, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:53:35', '2020-03-30 10:53:35'),
(1278, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:53:37', '2020-03-30 10:53:37'),
(1279, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:53:39', '2020-03-30 10:53:39'),
(1280, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:53:41', '2020-03-30 10:53:41'),
(1281, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:53:43', '2020-03-30 10:53:43'),
(1282, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:53:45', '2020-03-30 10:53:45'),
(1283, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:53:47', '2020-03-30 10:53:47'),
(1284, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:53:49', '2020-03-30 10:53:49'),
(1285, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:53:51', '2020-03-30 10:53:51'),
(1286, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:53:53', '2020-03-30 10:53:53'),
(1287, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:53:55', '2020-03-30 10:53:55'),
(1288, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:53:57', '2020-03-30 10:53:57'),
(1289, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:53:59', '2020-03-30 10:53:59'),
(1290, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:54:01', '2020-03-30 10:54:01'),
(1291, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:54:03', '2020-03-30 10:54:03'),
(1292, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:54:05', '2020-03-30 10:54:05'),
(1293, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:54:07', '2020-03-30 10:54:07'),
(1294, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:54:09', '2020-03-30 10:54:09'),
(1295, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:54:11', '2020-03-30 10:54:11'),
(1296, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:54:13', '2020-03-30 10:54:13'),
(1297, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:54:15', '2020-03-30 10:54:15'),
(1298, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:54:17', '2020-03-30 10:54:17'),
(1299, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:54:19', '2020-03-30 10:54:19'),
(1300, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:54:21', '2020-03-30 10:54:21'),
(1301, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:54:23', '2020-03-30 10:54:23'),
(1302, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:54:25', '2020-03-30 10:54:25'),
(1303, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:54:27', '2020-03-30 10:54:27'),
(1304, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:54:29', '2020-03-30 10:54:29'),
(1305, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:54:31', '2020-03-30 10:54:31'),
(1306, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:54:33', '2020-03-30 10:54:33'),
(1307, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:54:35', '2020-03-30 10:54:35'),
(1308, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:54:37', '2020-03-30 10:54:37'),
(1309, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:54:39', '2020-03-30 10:54:39'),
(1310, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:54:41', '2020-03-30 10:54:41'),
(1311, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:54:43', '2020-03-30 10:54:43'),
(1312, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:54:45', '2020-03-30 10:54:45'),
(1313, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:54:47', '2020-03-30 10:54:47'),
(1314, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:54:49', '2020-03-30 10:54:49'),
(1315, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:54:51', '2020-03-30 10:54:51'),
(1316, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:54:53', '2020-03-30 10:54:53'),
(1317, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:54:55', '2020-03-30 10:54:55'),
(1318, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:54:57', '2020-03-30 10:54:57'),
(1319, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:54:59', '2020-03-30 10:54:59'),
(1320, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:55:01', '2020-03-30 10:55:01'),
(1321, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:55:03', '2020-03-30 10:55:03'),
(1322, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:55:05', '2020-03-30 10:55:05'),
(1323, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:55:07', '2020-03-30 10:55:07'),
(1324, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:55:09', '2020-03-30 10:55:09'),
(1325, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:55:11', '2020-03-30 10:55:11'),
(1326, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:55:13', '2020-03-30 10:55:13'),
(1327, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:55:15', '2020-03-30 10:55:15'),
(1328, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:55:17', '2020-03-30 10:55:17'),
(1329, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:55:19', '2020-03-30 10:55:19'),
(1330, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:55:21', '2020-03-30 10:55:21'),
(1331, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:55:23', '2020-03-30 10:55:23'),
(1332, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:55:25', '2020-03-30 10:55:25'),
(1333, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:55:27', '2020-03-30 10:55:27'),
(1334, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:55:29', '2020-03-30 10:55:29'),
(1335, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:55:31', '2020-03-30 10:55:31'),
(1336, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:55:33', '2020-03-30 10:55:33'),
(1337, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:55:35', '2020-03-30 10:55:35'),
(1338, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:55:37', '2020-03-30 10:55:37'),
(1339, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:55:39', '2020-03-30 10:55:39'),
(1340, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:55:41', '2020-03-30 10:55:41'),
(1341, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:55:43', '2020-03-30 10:55:43'),
(1342, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:55:45', '2020-03-30 10:55:45'),
(1343, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:55:47', '2020-03-30 10:55:47'),
(1344, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:55:49', '2020-03-30 10:55:49'),
(1345, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:55:51', '2020-03-30 10:55:51'),
(1346, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:55:53', '2020-03-30 10:55:53'),
(1347, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:55:55', '2020-03-30 10:55:55'),
(1348, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:55:57', '2020-03-30 10:55:57'),
(1349, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:55:59', '2020-03-30 10:55:59'),
(1350, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:56:01', '2020-03-30 10:56:01'),
(1351, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:56:03', '2020-03-30 10:56:03'),
(1352, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:56:05', '2020-03-30 10:56:05'),
(1353, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:56:07', '2020-03-30 10:56:07'),
(1354, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:56:09', '2020-03-30 10:56:09'),
(1355, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:56:11', '2020-03-30 10:56:11'),
(1356, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:56:13', '2020-03-30 10:56:13'),
(1357, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:56:15', '2020-03-30 10:56:15'),
(1358, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:56:17', '2020-03-30 10:56:17'),
(1359, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:56:19', '2020-03-30 10:56:19'),
(1360, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:56:21', '2020-03-30 10:56:21'),
(1361, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:56:23', '2020-03-30 10:56:23'),
(1362, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:56:25', '2020-03-30 10:56:25'),
(1363, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:56:27', '2020-03-30 10:56:27'),
(1364, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:56:29', '2020-03-30 10:56:29'),
(1365, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:56:31', '2020-03-30 10:56:31'),
(1366, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:56:33', '2020-03-30 10:56:33'),
(1367, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:56:35', '2020-03-30 10:56:35'),
(1368, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:56:37', '2020-03-30 10:56:37'),
(1369, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:56:39', '2020-03-30 10:56:39'),
(1370, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:56:41', '2020-03-30 10:56:41'),
(1371, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:56:43', '2020-03-30 10:56:43'),
(1372, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:56:45', '2020-03-30 10:56:45'),
(1373, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:56:47', '2020-03-30 10:56:47'),
(1374, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:56:49', '2020-03-30 10:56:49'),
(1375, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:56:51', '2020-03-30 10:56:51'),
(1376, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:56:53', '2020-03-30 10:56:53'),
(1377, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:56:55', '2020-03-30 10:56:55'),
(1378, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:56:57', '2020-03-30 10:56:57'),
(1379, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:56:59', '2020-03-30 10:56:59'),
(1380, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:57:01', '2020-03-30 10:57:01'),
(1381, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:57:03', '2020-03-30 10:57:03'),
(1382, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:57:05', '2020-03-30 10:57:05'),
(1383, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:57:07', '2020-03-30 10:57:07'),
(1384, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:57:09', '2020-03-30 10:57:09'),
(1385, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:57:11', '2020-03-30 10:57:11'),
(1386, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:57:13', '2020-03-30 10:57:13'),
(1387, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:57:15', '2020-03-30 10:57:15'),
(1388, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:57:17', '2020-03-30 10:57:17'),
(1389, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:57:19', '2020-03-30 10:57:19'),
(1390, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:57:21', '2020-03-30 10:57:21'),
(1391, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:57:23', '2020-03-30 10:57:23'),
(1392, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:57:25', '2020-03-30 10:57:25'),
(1393, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:57:27', '2020-03-30 10:57:27'),
(1394, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:57:29', '2020-03-30 10:57:29'),
(1395, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:57:31', '2020-03-30 10:57:31'),
(1396, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:57:35', '2020-03-30 10:57:35'),
(1397, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:57:35', '2020-03-30 10:57:35'),
(1398, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:57:37', '2020-03-30 10:57:37'),
(1399, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:57:39', '2020-03-30 10:57:39'),
(1400, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:57:41', '2020-03-30 10:57:41'),
(1401, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:57:43', '2020-03-30 10:57:43'),
(1402, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:57:45', '2020-03-30 10:57:45'),
(1403, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:57:47', '2020-03-30 10:57:47'),
(1404, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:57:49', '2020-03-30 10:57:49'),
(1405, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:57:51', '2020-03-30 10:57:51'),
(1406, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:57:53', '2020-03-30 10:57:53'),
(1407, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:57:55', '2020-03-30 10:57:55'),
(1408, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:57:57', '2020-03-30 10:57:57'),
(1409, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:57:59', '2020-03-30 10:57:59'),
(1410, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:58:01', '2020-03-30 10:58:01'),
(1411, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:58:03', '2020-03-30 10:58:03'),
(1412, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:58:05', '2020-03-30 10:58:05'),
(1413, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:58:07', '2020-03-30 10:58:07'),
(1414, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:58:09', '2020-03-30 10:58:09'),
(1415, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:58:11', '2020-03-30 10:58:11'),
(1416, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:58:13', '2020-03-30 10:58:13'),
(1417, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:58:15', '2020-03-30 10:58:15'),
(1418, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:58:17', '2020-03-30 10:58:17'),
(1419, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:58:19', '2020-03-30 10:58:19'),
(1420, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:58:21', '2020-03-30 10:58:21'),
(1421, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:58:23', '2020-03-30 10:58:23'),
(1422, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:58:25', '2020-03-30 10:58:25'),
(1423, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:58:27', '2020-03-30 10:58:27'),
(1424, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:58:29', '2020-03-30 10:58:29'),
(1425, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:58:31', '2020-03-30 10:58:31'),
(1426, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:58:33', '2020-03-30 10:58:33'),
(1427, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:58:35', '2020-03-30 10:58:35'),
(1428, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:58:37', '2020-03-30 10:58:37'),
(1429, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:58:39', '2020-03-30 10:58:39'),
(1430, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:58:41', '2020-03-30 10:58:41'),
(1431, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:58:43', '2020-03-30 10:58:43'),
(1432, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:58:45', '2020-03-30 10:58:45'),
(1433, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:58:47', '2020-03-30 10:58:47'),
(1434, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:58:49', '2020-03-30 10:58:49'),
(1435, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:58:51', '2020-03-30 10:58:51'),
(1436, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:58:53', '2020-03-30 10:58:53'),
(1437, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:58:55', '2020-03-30 10:58:55'),
(1438, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:58:57', '2020-03-30 10:58:57'),
(1439, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:58:59', '2020-03-30 10:58:59'),
(1440, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:59:01', '2020-03-30 10:59:01'),
(1441, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:59:03', '2020-03-30 10:59:03'),
(1442, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:59:05', '2020-03-30 10:59:05'),
(1443, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:59:07', '2020-03-30 10:59:07'),
(1444, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:59:09', '2020-03-30 10:59:09'),
(1445, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:59:11', '2020-03-30 10:59:11'),
(1446, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:59:13', '2020-03-30 10:59:13'),
(1447, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:59:15', '2020-03-30 10:59:15'),
(1448, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:59:17', '2020-03-30 10:59:17'),
(1449, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:59:19', '2020-03-30 10:59:19'),
(1450, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:59:21', '2020-03-30 10:59:21'),
(1451, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:59:23', '2020-03-30 10:59:23'),
(1452, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:59:25', '2020-03-30 10:59:25'),
(1453, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:59:27', '2020-03-30 10:59:27'),
(1454, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:59:29', '2020-03-30 10:59:29'),
(1455, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:59:31', '2020-03-30 10:59:31'),
(1456, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:59:33', '2020-03-30 10:59:33'),
(1457, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:59:35', '2020-03-30 10:59:35'),
(1458, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:59:37', '2020-03-30 10:59:37'),
(1459, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:59:39', '2020-03-30 10:59:39'),
(1460, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:59:41', '2020-03-30 10:59:41'),
(1461, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:59:43', '2020-03-30 10:59:43'),
(1462, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:59:45', '2020-03-30 10:59:45'),
(1463, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:59:47', '2020-03-30 10:59:47'),
(1464, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:59:49', '2020-03-30 10:59:49'),
(1465, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:59:51', '2020-03-30 10:59:51'),
(1466, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:59:53', '2020-03-30 10:59:53'),
(1467, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:59:55', '2020-03-30 10:59:55'),
(1468, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:59:57', '2020-03-30 10:59:57'),
(1469, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 10:59:59', '2020-03-30 10:59:59'),
(1470, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:00:01', '2020-03-30 11:00:01'),
(1471, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:00:03', '2020-03-30 11:00:03'),
(1472, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:00:05', '2020-03-30 11:00:05'),
(1473, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:00:07', '2020-03-30 11:00:07'),
(1474, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:00:09', '2020-03-30 11:00:09'),
(1475, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:00:11', '2020-03-30 11:00:11'),
(1476, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:00:13', '2020-03-30 11:00:13'),
(1477, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:00:15', '2020-03-30 11:00:15'),
(1478, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:00:17', '2020-03-30 11:00:17'),
(1479, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:00:19', '2020-03-30 11:00:19'),
(1480, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:00:21', '2020-03-30 11:00:21'),
(1481, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:00:23', '2020-03-30 11:00:23'),
(1482, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:00:25', '2020-03-30 11:00:25'),
(1483, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:00:27', '2020-03-30 11:00:27'),
(1484, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:00:29', '2020-03-30 11:00:29'),
(1485, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:00:31', '2020-03-30 11:00:31'),
(1486, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:00:33', '2020-03-30 11:00:33'),
(1487, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:00:35', '2020-03-30 11:00:35'),
(1488, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:00:37', '2020-03-30 11:00:37'),
(1489, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:00:39', '2020-03-30 11:00:39'),
(1490, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:00:41', '2020-03-30 11:00:41'),
(1491, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:00:43', '2020-03-30 11:00:43'),
(1492, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:00:45', '2020-03-30 11:00:45'),
(1493, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:00:47', '2020-03-30 11:00:47'),
(1494, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:00:49', '2020-03-30 11:00:49'),
(1495, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:00:51', '2020-03-30 11:00:51'),
(1496, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:00:53', '2020-03-30 11:00:53'),
(1497, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:00:55', '2020-03-30 11:00:55'),
(1498, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:00:57', '2020-03-30 11:00:57'),
(1499, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:00:59', '2020-03-30 11:00:59'),
(1500, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:01:01', '2020-03-30 11:01:01'),
(1501, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:01:03', '2020-03-30 11:01:03'),
(1502, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:01:05', '2020-03-30 11:01:05'),
(1503, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:01:07', '2020-03-30 11:01:07'),
(1504, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:01:09', '2020-03-30 11:01:09'),
(1505, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:01:11', '2020-03-30 11:01:11'),
(1506, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:01:13', '2020-03-30 11:01:13'),
(1507, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:01:15', '2020-03-30 11:01:15'),
(1508, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:01:17', '2020-03-30 11:01:17'),
(1509, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:01:19', '2020-03-30 11:01:19'),
(1510, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:01:21', '2020-03-30 11:01:21'),
(1511, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:01:23', '2020-03-30 11:01:23'),
(1512, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:01:25', '2020-03-30 11:01:25'),
(1513, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:01:27', '2020-03-30 11:01:27'),
(1514, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:01:29', '2020-03-30 11:01:29'),
(1515, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:01:31', '2020-03-30 11:01:31');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1516, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:01:33', '2020-03-30 11:01:33'),
(1517, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:01:35', '2020-03-30 11:01:35'),
(1518, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:01:37', '2020-03-30 11:01:37'),
(1519, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:01:39', '2020-03-30 11:01:39'),
(1520, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:01:41', '2020-03-30 11:01:41'),
(1521, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:01:43', '2020-03-30 11:01:43'),
(1522, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:01:45', '2020-03-30 11:01:45'),
(1523, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:01:47', '2020-03-30 11:01:47'),
(1524, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:01:49', '2020-03-30 11:01:49'),
(1525, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:01:51', '2020-03-30 11:01:51'),
(1526, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:01:53', '2020-03-30 11:01:53'),
(1527, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:01:55', '2020-03-30 11:01:55'),
(1528, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:01:57', '2020-03-30 11:01:57'),
(1529, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:01:59', '2020-03-30 11:01:59'),
(1530, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:02:01', '2020-03-30 11:02:01'),
(1531, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:02:03', '2020-03-30 11:02:03'),
(1532, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:02:05', '2020-03-30 11:02:05'),
(1533, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:02:07', '2020-03-30 11:02:07'),
(1534, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:02:09', '2020-03-30 11:02:09'),
(1535, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:02:11', '2020-03-30 11:02:11'),
(1536, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:02:13', '2020-03-30 11:02:13'),
(1537, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:02:15', '2020-03-30 11:02:15'),
(1538, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:02:17', '2020-03-30 11:02:17'),
(1539, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:02:19', '2020-03-30 11:02:19'),
(1540, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:02:21', '2020-03-30 11:02:21'),
(1541, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:02:23', '2020-03-30 11:02:23'),
(1542, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:02:25', '2020-03-30 11:02:25'),
(1543, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:02:27', '2020-03-30 11:02:27'),
(1544, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:02:29', '2020-03-30 11:02:29'),
(1545, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:02:31', '2020-03-30 11:02:31'),
(1546, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:02:33', '2020-03-30 11:02:33'),
(1547, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:02:35', '2020-03-30 11:02:35'),
(1548, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:02:37', '2020-03-30 11:02:37'),
(1549, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:02:39', '2020-03-30 11:02:39'),
(1550, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:02:42', '2020-03-30 11:02:42'),
(1551, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:02:45', '2020-03-30 11:02:45'),
(1552, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:02:46', '2020-03-30 11:02:46'),
(1553, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:02:47', '2020-03-30 11:02:47'),
(1554, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:02:49', '2020-03-30 11:02:49'),
(1555, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:02:51', '2020-03-30 11:02:51'),
(1556, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:02:53', '2020-03-30 11:02:53'),
(1557, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:02:55', '2020-03-30 11:02:55'),
(1558, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:02:58', '2020-03-30 11:02:58'),
(1559, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:02:59', '2020-03-30 11:02:59'),
(1560, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:03:34', '2020-03-30 11:03:34'),
(1561, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:03:34', '2020-03-30 11:03:34'),
(1562, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:03:34', '2020-03-30 11:03:34'),
(1563, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:03:34', '2020-03-30 11:03:34'),
(1564, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:03:34', '2020-03-30 11:03:34'),
(1565, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:03:34', '2020-03-30 11:03:34'),
(1566, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:03:37', '2020-03-30 11:03:37'),
(1567, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:03:37', '2020-03-30 11:03:37'),
(1568, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:03:37', '2020-03-30 11:03:37'),
(1569, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:03:37', '2020-03-30 11:03:37'),
(1570, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:03:38', '2020-03-30 11:03:38'),
(1571, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:03:38', '2020-03-30 11:03:38'),
(1572, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:03:38', '2020-03-30 11:03:38'),
(1573, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:03:38', '2020-03-30 11:03:38'),
(1574, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:03:39', '2020-03-30 11:03:39'),
(1575, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:03:39', '2020-03-30 11:03:39'),
(1576, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:03:39', '2020-03-30 11:03:39'),
(1577, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:03:39', '2020-03-30 11:03:39'),
(1578, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:03:40', '2020-03-30 11:03:40'),
(1579, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:03:40', '2020-03-30 11:03:40'),
(1580, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:03:41', '2020-03-30 11:03:41'),
(1581, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:03:43', '2020-03-30 11:03:43'),
(1582, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:03:45', '2020-03-30 11:03:45'),
(1583, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:03:47', '2020-03-30 11:03:47'),
(1584, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:03:49', '2020-03-30 11:03:49'),
(1585, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:03:51', '2020-03-30 11:03:51'),
(1586, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:03:53', '2020-03-30 11:03:53'),
(1587, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:03:55', '2020-03-30 11:03:55'),
(1588, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:03:57', '2020-03-30 11:03:57'),
(1589, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:03:59', '2020-03-30 11:03:59'),
(1590, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:04:01', '2020-03-30 11:04:01'),
(1591, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:04:03', '2020-03-30 11:04:03'),
(1592, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:04:05', '2020-03-30 11:04:05'),
(1593, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:04:07', '2020-03-30 11:04:07'),
(1594, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:04:09', '2020-03-30 11:04:09'),
(1595, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:04:11', '2020-03-30 11:04:11'),
(1596, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:04:13', '2020-03-30 11:04:13'),
(1597, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:04:15', '2020-03-30 11:04:15'),
(1598, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:04:17', '2020-03-30 11:04:17'),
(1599, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:04:19', '2020-03-30 11:04:19'),
(1600, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:04:21', '2020-03-30 11:04:21'),
(1601, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:04:23', '2020-03-30 11:04:23'),
(1602, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:04:25', '2020-03-30 11:04:25'),
(1603, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:04:27', '2020-03-30 11:04:27'),
(1604, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:04:29', '2020-03-30 11:04:29'),
(1605, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:04:31', '2020-03-30 11:04:31'),
(1606, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:04:33', '2020-03-30 11:04:33'),
(1607, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:04:35', '2020-03-30 11:04:35'),
(1608, 1, 'admin/logs/laravel.log/tail', 'GET', '127.0.0.1', '{\"offset\":\"12030836\"}', '2020-03-30 11:04:37', '2020-03-30 11:04:37'),
(1609, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-03-30 23:08:36', '2020-03-30 23:08:36'),
(1610, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-03-30 23:08:42', '2020-03-30 23:08:42'),
(1611, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-03-30 23:08:56', '2020-03-30 23:08:56'),
(1612, 1, 'admin/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 23:08:56', '2020-03-30 23:08:56'),
(1613, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-03-30 23:08:56', '2020-03-30 23:08:56'),
(1614, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-03-30 23:08:57', '2020-03-30 23:08:57'),
(1615, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-03-30 23:09:00', '2020-03-30 23:09:00'),
(1616, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 23:09:00', '2020-03-30 23:09:00'),
(1617, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-03-30 23:09:01', '2020-03-30 23:09:01'),
(1618, 1, 'admin/scheduling', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 23:09:03', '2020-03-30 23:09:03'),
(1619, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-03-30 23:09:03', '2020-03-30 23:09:03'),
(1620, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-03-30 23:09:04', '2020-03-30 23:09:04'),
(1621, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-03-30 23:09:11', '2020-03-30 23:09:11'),
(1622, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 23:09:11', '2020-03-30 23:09:11'),
(1623, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-03-30 23:09:11', '2020-03-30 23:09:11'),
(1624, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 23:09:15', '2020-03-30 23:09:15'),
(1625, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-03-30 23:09:15', '2020-03-30 23:09:15'),
(1626, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-03-30 23:09:15', '2020-03-30 23:09:15'),
(1627, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-03-30 23:10:33', '2020-03-30 23:10:33'),
(1628, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-03-30 23:10:33', '2020-03-30 23:10:33'),
(1629, 1, 'admin/phpinfo', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-30 23:10:35', '2020-03-30 23:10:35'),
(1630, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-03-30 23:10:35', '2020-03-30 23:10:35'),
(1631, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-03-30 23:10:36', '2020-03-30 23:10:36');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, 'Admin helpers', 'ext.helpers', '', '/helpers/*', '2020-03-30 02:58:07', '2020-03-30 02:58:07'),
(7, 'Logs', 'ext.log-viewer', '', '/logs*', '2020-03-30 02:58:34', '2020-03-30 02:58:34'),
(8, 'Admin Config', 'ext.config', '', '/config*', '2020-03-30 02:59:06', '2020-03-30 02:59:06'),
(9, 'Media manager', 'ext.media-manager', '', '/media*', '2020-03-30 02:59:30', '2020-03-30 02:59:30'),
(10, 'Scheduling', 'ext.scheduling', '', '/scheduling*', '2020-03-30 02:59:50', '2020-03-30 02:59:50');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2020-03-30 02:16:36', '2020-03-30 02:16:36');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 17, NULL, NULL),
(1, 18, NULL, NULL),
(1, 19, NULL, NULL),
(1, 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$P2WB5b...4h.bf1SMKUiXuAJBLD4HggebVP5aStqnJGoLKSn7A5fK', 'Administrator', NULL, 'LdWeYTbLOGhfsSzoKsKknd98zpiWyl23jJWCbvS0ioMQrOlLMgjrqMb7nNIJ', '2020-03-30 02:16:35', '2020-03-30 02:16:35');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `awblist`
--

CREATE TABLE `awblist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `awbNumber` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `awbBookedBy` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `awbStatus` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2017_07_17_040159_create_config_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2020_03_24_055837_parcel_book', 1),
(7, '2020_03_24_060523_pallet_book', 1),
(8, '2020_03_24_083202_awb_list', 1),
(9, '2020_03_24_153357_parcel_book_migration', 1),
(10, '2020_03_24_161043_user_steps_list', 1),
(11, '2020_03_24_171836_choose_offer_migration', 1),
(12, '2020_03_24_172933_offer_this', 1),
(13, '2020_03_24_185221_user_profile', 1),
(14, '2020_03_25_075456_user_info_migration', 1),
(15, '2020_03_25_095420_user_contact_info', 1),
(16, '2020_03_26_124057_user_multiple_parcel', 1),
(17, '2020_03_27_100225_payment_metods', 1),
(18, '2020_03_27_172421_payment_request', 1),
(19, '2020_03_27_180224_payment_confirm', 1),
(20, '2020_03_30_103741_admin_user_parcel_update_migration', 2);

-- --------------------------------------------------------

--
-- Table structure for table `offertable`
--

CREATE TABLE `offertable` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `companyName` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `companyLogo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `valeWithProtection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `valueWithoutProtection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaCoverArray` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offertable`
--

INSERT INTO `offertable` (`id`, `companyName`, `companyLogo`, `valeWithProtection`, `valueWithoutProtection`, `areaCoverArray`, `created_at`, `updated_at`) VALUES
(1, 'Trycia Howe', 'https://lorempixel.com/640/480/?53003', '59984', '72790', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:53', '2020-03-30 02:16:53'),
(2, 'Ludie Ernser PhD', 'https://lorempixel.com/640/480/?49868', '642', '90387', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:54', '2020-03-30 02:16:54'),
(3, 'Ms. Jennie Cummings', 'https://lorempixel.com/640/480/?84671', '83702', '122', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:54', '2020-03-30 02:16:54'),
(4, 'Ricardo Huels', 'https://lorempixel.com/640/480/?55588', '407', '10899', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:54', '2020-03-30 02:16:54'),
(5, 'Kiel Kohler DDS', 'https://lorempixel.com/640/480/?48541', '9857', '83981', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:54', '2020-03-30 02:16:54'),
(6, 'Mr. Henry Beatty', 'https://lorempixel.com/640/480/?95202', '775', '4805', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:54', '2020-03-30 02:16:54'),
(7, 'Jeremie Huels', 'https://lorempixel.com/640/480/?98044', '9489', '14802', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:54', '2020-03-30 02:16:54'),
(8, 'Merlin Rogahn', 'https://lorempixel.com/640/480/?56692', '1625', '6205', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:54', '2020-03-30 02:16:54'),
(9, 'Silas Orn', 'https://lorempixel.com/640/480/?76531', '955', '29240', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:54', '2020-03-30 02:16:54'),
(10, 'Westley Runolfsdottir', 'https://lorempixel.com/640/480/?72633', '34323', '70247', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:54', '2020-03-30 02:16:54'),
(11, 'Kira Friesen', 'https://lorempixel.com/640/480/?38670', '769', '6355', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:54', '2020-03-30 02:16:54'),
(12, 'Mr. Lourdes Jakubowski I', 'https://lorempixel.com/640/480/?41990', '532', '915', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:54', '2020-03-30 02:16:54'),
(13, 'Skyla Cremin', 'https://lorempixel.com/640/480/?40565', '41357', '53662', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:54', '2020-03-30 02:16:54'),
(14, 'Jarrod Prohaska', 'https://lorempixel.com/640/480/?96708', '8363', '315', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:54', '2020-03-30 02:16:54'),
(15, 'Bethany Schmitt Jr.', 'https://lorempixel.com/640/480/?59409', '961', '28345', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:54', '2020-03-30 02:16:54'),
(16, 'Darren Leffler II', 'https://lorempixel.com/640/480/?13221', '591', '944', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:54', '2020-03-30 02:16:54'),
(17, 'Lois Graham', 'https://lorempixel.com/640/480/?88451', '7176', '7014', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:54', '2020-03-30 02:16:54'),
(18, 'Sincere Douglas', 'https://lorempixel.com/640/480/?96955', '192', '4565', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:55', '2020-03-30 02:16:55'),
(19, 'Jules Hackett', 'https://lorempixel.com/640/480/?96252', '8889', '46594', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:55', '2020-03-30 02:16:55'),
(20, 'Verda Moen', 'https://lorempixel.com/640/480/?14292', '2541', '496', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:55', '2020-03-30 02:16:55'),
(21, 'Jamaal Bauch Jr.', 'https://lorempixel.com/640/480/?35231', '787', '1979', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:55', '2020-03-30 02:16:55'),
(22, 'Jessika Anderson DDS', 'https://lorempixel.com/640/480/?34505', '703', '1203', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:55', '2020-03-30 02:16:55'),
(23, 'Johann Stark II', 'https://lorempixel.com/640/480/?53099', '9087', '449', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:55', '2020-03-30 02:16:55'),
(24, 'Murray Thiel', 'https://lorempixel.com/640/480/?79356', '6589', '505', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:55', '2020-03-30 02:16:55'),
(25, 'Rosario Wisozk', 'https://lorempixel.com/640/480/?48844', '192', '3807', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:55', '2020-03-30 02:16:55'),
(26, 'Mrs. Imogene Nitzsche III', 'https://lorempixel.com/640/480/?51949', '29511', '9555', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:55', '2020-03-30 02:16:55'),
(27, 'Alvena Koss', 'https://lorempixel.com/640/480/?24759', '336', '4908', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:55', '2020-03-30 02:16:55'),
(28, 'Cali Feeney', 'https://lorempixel.com/640/480/?37101', '39226', '7684', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:55', '2020-03-30 02:16:55'),
(29, 'Westley Schmeler DDS', 'https://lorempixel.com/640/480/?48980', '5810', '73425', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:55', '2020-03-30 02:16:55'),
(30, 'Casper O\'Connell DDS', 'https://lorempixel.com/640/480/?81830', '910', '765', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:55', '2020-03-30 02:16:55'),
(31, 'Prof. Lambert Douglas Sr.', 'https://lorempixel.com/640/480/?70380', '72729', '85426', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:55', '2020-03-30 02:16:55'),
(32, 'Everette Conn', 'https://lorempixel.com/640/480/?90935', '149', '5380', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:55', '2020-03-30 02:16:55'),
(33, 'Dr. Franz Emmerich', 'https://lorempixel.com/640/480/?99423', '477', '138', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:55', '2020-03-30 02:16:55'),
(34, 'Dr. Geraldine Marks DDS', 'https://lorempixel.com/640/480/?95338', '878', '39307', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:56', '2020-03-30 02:16:56'),
(35, 'Zoila Wunsch', 'https://lorempixel.com/640/480/?68214', '7837', '86560', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:56', '2020-03-30 02:16:56'),
(36, 'Mr. Jasmin Ullrich Jr.', 'https://lorempixel.com/640/480/?14985', '25492', '44928', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:56', '2020-03-30 02:16:56'),
(37, 'Jaylon Vandervort', 'https://lorempixel.com/640/480/?27268', '696', '464', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:56', '2020-03-30 02:16:56'),
(38, 'Bennie Streich II', 'https://lorempixel.com/640/480/?40754', '851', '3988', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:56', '2020-03-30 02:16:56'),
(39, 'Christine Toy V', 'https://lorempixel.com/640/480/?11023', '69718', '6965', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:56', '2020-03-30 02:16:56'),
(40, 'Miss Novella McLaughlin Jr.', 'https://lorempixel.com/640/480/?42445', '57750', '3905', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:56', '2020-03-30 02:16:56'),
(41, 'Prof. Emelie Schultz', 'https://lorempixel.com/640/480/?16418', '458', '360', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:56', '2020-03-30 02:16:56'),
(42, 'Brad Howe', 'https://lorempixel.com/640/480/?17764', '916', '330', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:56', '2020-03-30 02:16:56'),
(43, 'Mr. Samson Hamill Jr.', 'https://lorempixel.com/640/480/?89733', '6852', '3059', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:56', '2020-03-30 02:16:56'),
(44, 'Mr. Brennon Von IV', 'https://lorempixel.com/640/480/?15504', '3234', '818', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:56', '2020-03-30 02:16:56'),
(45, 'Christa Pfeffer', 'https://lorempixel.com/640/480/?87088', '115', '468', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:56', '2020-03-30 02:16:56'),
(46, 'Barton Abshire', 'https://lorempixel.com/640/480/?13937', '34898', '8019', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:56', '2020-03-30 02:16:56'),
(47, 'Ayana Dach', 'https://lorempixel.com/640/480/?84105', '932', '9316', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:56', '2020-03-30 02:16:56'),
(48, 'Ernestina Kertzmann', 'https://lorempixel.com/640/480/?70474', '23138', '7006', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:56', '2020-03-30 02:16:56'),
(49, 'Danial Rowe', 'https://lorempixel.com/640/480/?97747', '5909', '15269', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:56', '2020-03-30 02:16:56'),
(50, 'Quentin Friesen', 'https://lorempixel.com/640/480/?72328', '802', '706', '[46,45,17,47,98,72,58,27,77,89,94,41,68,82,78,4,65,25,97,42,73,93,59,40,44,48,99,37,57,16,29,79,20,63,76,71,83,43,0,13,7,90,56,18,67,31,61,24,38,32,52,100,81,10,23,39,70,11,1,87,49,15,69,86,19,26,75,5,96,51,30,74,80,34,9,33,92,60,3,14,55,84,95,2,54,6,12,50,36,62,8,53,91,88,85,64,28,22,21,35,66]', '2020-03-30 02:16:56', '2020-03-30 02:16:56');

-- --------------------------------------------------------

--
-- Table structure for table `palletbook`
--

CREATE TABLE `palletbook` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `palletFrom` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `palletFromPincode` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `palletTo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `palletToPincode` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parcelbook`
--

CREATE TABLE `parcelbook` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parcelFrom` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parcelFromPincode` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parcelTo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parcelToPincode` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parcelWeight` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `awbNumber` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parcelbook`
--

INSERT INTO `parcelbook` (`id`, `parcelFrom`, `parcelFromPincode`, `parcelTo`, `parcelToPincode`, `parcelWeight`, `awbNumber`, `created_at`, `updated_at`) VALUES
(1, 'Bikaner', NULL, 'haryana', NULL, '45', '5e81a41210bd6', '2020-03-30 02:17:30', '2020-03-30 02:17:30'),
(2, 'Bikaner', NULL, 'delhi', NULL, '45', '5e81a8b19551d', '2020-03-30 02:37:14', '2020-03-30 02:37:14'),
(3, 'Bikaner', NULL, 'delhi', NULL, '7597365', '5e81a9550a729', '2020-03-30 02:39:57', '2020-03-30 02:39:57'),
(4, 'Bikaner', NULL, 'delhi', NULL, '45', '5e81b7ca06a12', '2020-03-30 03:41:38', '2020-03-30 03:41:38'),
(5, 'Bikaner', '334001', 'delhi', '445203', '45', '5e81fb1f3f5c5', '2020-03-30 08:28:55', '2020-03-30 08:28:55');

-- --------------------------------------------------------

--
-- Table structure for table `parcelbooktable`
--

CREATE TABLE `parcelbooktable` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `maximumSteps` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `minimumSteps` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `paymentmethods`
--

CREATE TABLE `paymentmethods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `paymentGatewayName` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentGatewayLinkLive` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentGatewayAppName` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentGatewayLiveAccount` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentGatewayRedirectLink` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentGatewaySecretCode` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentGatewayMerchantCode` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentGatewayCurrency` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentGatewayAdditionalData` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentGatewayTested` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paymentrecord`
--

CREATE TABLE `paymentrecord` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `awb` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentMerchant` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentStatus` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentToken` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentId` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payerId` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extraInfo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paymentrecord`
--

INSERT INTO `paymentrecord` (`id`, `awb`, `paymentMerchant`, `paymentStatus`, `paymentToken`, `paymentId`, `payerId`, `extraInfo`, `created_at`, `updated_at`) VALUES
(1, '5e81b7ca06a12', 'EC-64969053M80197123', 'success', 'EC-64969053M80197123', 'PAYID-L2A3QVY1EN85798LC573034C', 'YFPZ64QWHWXKG', '', '2020-03-30 03:45:22', '2020-03-30 03:45:22');

-- --------------------------------------------------------

--
-- Table structure for table `paymentrequest`
--

CREATE TABLE `paymentrequest` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `awb` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentToken` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentCommand` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentMerchant` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentAmount` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paymentrequest`
--

INSERT INTO `paymentrequest` (`id`, `awb`, `paymentToken`, `paymentCommand`, `paymentMerchant`, `paymentAmount`, `currency`, `created_at`, `updated_at`) VALUES
(1, '5e81b7ca06a12', 'EC-64969053M80197123', '_express-checkout', 'paypal', '72790', 'USD', '2020-03-30 03:44:01', '2020-03-30 03:44:01');

-- --------------------------------------------------------

--
-- Table structure for table `userinfocontact`
--

CREATE TABLE `userinfocontact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `awb` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contactPhoneNumber` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contactEmail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contactTimingFrom` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contactTimingTo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userinfocontact`
--

INSERT INTO `userinfocontact` (`id`, `awb`, `contactPhoneNumber`, `contactEmail`, `contactTimingFrom`, `contactTimingTo`, `created_at`, `updated_at`) VALUES
(1, '5e81a41210bd6', '7597365803', 'dharmendra@gmail.com', '12:59', '00:59', '2020-03-30 02:18:45', '2020-03-30 02:18:45'),
(2, '5e81a8b19551d', '95294699789', 'fddfd@gmail.vo', '13:00', '00:59', '2020-03-30 02:38:46', '2020-03-30 02:38:46'),
(3, '5e81a9550a729', '56852357', 'dharm@gh.com', '13:00', '00:58', '2020-03-30 02:40:56', '2020-03-30 02:40:56'),
(4, '5e81b7ca06a12', '6564451236', 'dharm@hj.com', '00:00', '12:59', '2020-03-30 03:42:48', '2020-03-30 03:42:48'),
(5, '5e81f49c0e6b3', '456225896', '568236@gmai.ci', '00:00', '12:59', '2020-03-30 08:02:03', '2020-03-30 08:02:03'),
(6, '5e81fb1f3f5c5', '653697598', '7597365803sws@gmil.com', '12:59', '01:00', '2020-03-30 08:29:55', '2020-03-30 08:29:55'),
(7, '5e81fb96d1973', '562369598', '45@gs.com', '12:59', '01:00', '2020-03-30 08:31:25', '2020-03-30 08:31:25');

-- --------------------------------------------------------

--
-- Table structure for table `usermultipleparcel`
--

CREATE TABLE `usermultipleparcel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `awb` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalQuantity` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parcelFrom` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fromPincode` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `toPincode` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productDetails` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usermultipleparcel`
--

INSERT INTO `usermultipleparcel` (`id`, `awb`, `totalQuantity`, `parcelFrom`, `fromPincode`, `to`, `toPincode`, `productDetails`, `created_at`, `updated_at`) VALUES
(1, '5e81f49c0e6b3', '2', 'Bikaner', '334001', 'Ajmer', '410235', '[{\"productId\":\"1\",\"weight\":\"5\",\"width\":\"12\",\"height\":\"45\",\"length\":\"78\"},{\"productId\":\"2\",\"weight\":\"12\",\"width\":\"5\",\"height\":\"45\",\"length\":\"96\"}]', '2020-03-30 08:01:08', '2020-03-30 08:01:08'),
(2, '5e81fb96d1973', '2', 'Bikaner', '45546565', 'Bikaner', '1234556', '[{\"productId\":\"1\",\"weight\":\"1223\",\"width\":\"212\",\"height\":\"5\",\"length\":\"565\"},{\"productId\":\"2\",\"weight\":\"45\",\"width\":\"56\",\"height\":\"23\",\"length\":\"56\"}]', '2020-03-30 08:30:54', '2020-03-30 08:30:54');

-- --------------------------------------------------------

--
-- Table structure for table `userpickupanddrop`
--

CREATE TABLE `userpickupanddrop` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `awb` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickUpaddressOne` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickUpAddresstwo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickUpCity` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickupDistict` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickUpState` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickUpCountry` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickUpPin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dropaddressOne` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dropAddresstwo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dropCity` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dropDistict` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dropState` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dropCountry` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dropPin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userpickupanddrop`
--

INSERT INTO `userpickupanddrop` (`id`, `awb`, `pickUpaddressOne`, `pickUpAddresstwo`, `pickUpCity`, `pickupDistict`, `pickUpState`, `pickUpCountry`, `pickUpPin`, `dropaddressOne`, `dropAddresstwo`, `dropCity`, `dropDistict`, `dropState`, `dropCountry`, `dropPin`, `created_at`, `updated_at`) VALUES
(1, '5e81a41210bd6', 'aadarsh colony', 'budhwar street', 'bikaner', 'bikaner', 'rajasthan', 'India', '334001', 'dharmendra', 'dharmendra', 'sdsdbjhjh', 'jhghjgjhk', 'jkhgjhkjgjhkg', 'india', '334001', '2020-03-30 02:17:58', '2020-03-30 02:17:58'),
(2, '5e81a8b19551d', 'BHOMARAM, AMBASAR, BIKANER', 'blader', 'BIKANER', 'india', 'RAJASTHAN', 'india', '334402', 'fwyuyutyuityui', 'tyuityutyuiyui', 'yuityutyuityuit', 'yuituiytuiytuiyt', 'iutuiytuiutyu', 'india', '334001', '2020-03-30 02:37:49', '2020-03-30 02:37:49'),
(3, '5e81a9550a729', 'BHOMARAM, AMBASAR, BIKANER', 'blader', 'BIKANER', '45456', 'RAJASTHAN', 'India', '334402', 'dharmendra', 'dharmendra@gmail.com', 'bikaner', 'bikaner', 'rajasthan', 'india', '334001', '2020-03-30 02:40:35', '2020-03-30 02:40:35'),
(4, '5e81b7ca06a12', 'dharmendra shah', 'dharmendraa shah', 'bikaner', 'bikanr', 'rajasthan', 'india', '334001', 'dharmendra shah', 'bianakd', 'bikaner', 'bikaner', 'rajasthan', 'india', '334001', '2020-03-30 03:42:26', '2020-03-30 03:42:26'),
(5, '5e81f49c0e6b3', 'dharmendra shah', 'bianakd', 'bikaner', 'jksdfsdf', 'rajasthan', 'India', '334001', 'jhsdfjh', 'kljgilggiilgu', 'hklgig', 'giugiuiugiu', 'yiutiutuituytuyt', 'yufufuifyt', '11002', '2020-03-30 08:01:40', '2020-03-30 08:01:40'),
(6, '5e81fb1f3f5c5', 'BHOMARAM, AMBASAR, BIKANER', 'blader', 'BIKANER', 'Bikaner', 'RAJASTHAN', 'India', '334402', 'ROAD NO 6, KAYAM NAGAR RANI BAZAR', 'bianakd', 'Bikaner', 'bikaner', 'Rajasthan', 'India', '334001', '2020-03-30 08:29:21', '2020-03-30 08:29:21'),
(7, '5e81fb96d1973', 'dharmendra shah', 'bianakd', 'bikaner', 'bikaner', 'rajasthan', 'India', '334001', 'dharmendra shah', 'bianakd', 'bikaner', 'bikaner', 'rajasthan', 'India', '334001', '2020-03-30 08:31:09', '2020-03-30 08:31:09');

-- --------------------------------------------------------

--
-- Table structure for table `userprofile`
--

CREATE TABLE `userprofile` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `awb` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selectedOfferId` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addressOne` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addresstwo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stateProvince` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinZip` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userprofile`
--

INSERT INTO `userprofile` (`id`, `userid`, `awb`, `selectedOfferId`, `addressOne`, `addresstwo`, `district`, `stateProvince`, `country`, `pinZip`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, '1', '5e81a41210bd6', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2', '5e81a8b19551d', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '3', '5e81a9550a729', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '4', '5e81b7ca06a12', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '1', '5e81f49c0e6b3', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '5', '5e81fb1f3f5c5', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '2', '5e81fb96d1973', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uniqNum` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uniqNum`, `name`, `mobile`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '5e81a41210bd6', 'dhaarmendra', '7597365803', 'dharmendra@gmail.com', 'dhaarmendra', NULL, '$2y$10$.R5EowUQFHuO.t7Xqn09yuC7bQpbKrWf02kNIEuS/aF8zINj6arZa', NULL, '2020-03-30 02:19:05', '2020-03-30 02:19:05'),
(2, '5e81a8b19551d', 'dharmendra shah', '95294699789', 'fddfd@gmail.vo', 'fdfdfdfdfd', NULL, '$2y$10$O0Glkc7BgCZRghbYDjsCmuPuE4wyW8k/nHeny1QtB/p8nK6is33S2', NULL, '2020-03-30 02:39:09', '2020-03-30 02:39:09'),
(3, '5e81a9550a729', 'aasasa', '56852357', 'dharm@gh.com', 'yuyugjkhjgjh', NULL, '$2y$10$fYdoIXnN6.jMCDJM8dgRo.3feg5tx7rvsxNYnJXdrcWBVbg25OKVC', NULL, '2020-03-30 02:42:21', '2020-03-30 02:42:21'),
(4, '5e81b7ca06a12', 'Bikaner', '6564451236', 'dharm@hj.com', '74hjadsdf', NULL, '$2y$10$Zk/BbTlqzw09KEGD5iVqZOZRMthHVonY6sP6jbDF8/SLRZHTY9lNm', NULL, '2020-03-30 03:43:34', '2020-03-30 03:43:34'),
(5, '5e81f49c0e6b3', 'dharmendra shah', '456225896', '568236@gmai.ci', 'dharmendrdfkdj', NULL, '$2y$10$Kc/DgigDfV/NZuw10u0NQ.XXfrEowMK9MkZQftq9PJHtVbunjdybS', NULL, '2020-03-30 08:03:26', '2020-03-30 08:03:26'),
(6, '5e81fb1f3f5c5', 'dharmendra shah', '653697598', '7597365803sws@gmil.com', 'dharmemndradjhh', NULL, '$2y$10$pG3sc4z/5wL3ihUZue8UVef/mzTVnxts17Pim6DBqEGatVtUNCjqS', NULL, '2020-03-30 08:30:13', '2020-03-30 08:30:13'),
(7, '5e81fb96d1973', 'dharmeendra shah', '562369598', '45@gs.com', 'dhhdsdfhe', NULL, '$2y$10$/EmwjYE.NtFoBglDP/P6peK5gS/UFe3PrI4U3qGxa2ovOUMBPM4CK', NULL, '2020-03-30 08:31:41', '2020-03-30 08:31:41');

-- --------------------------------------------------------

--
-- Table structure for table `usersteps`
--

CREATE TABLE `usersteps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `awbNumber` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalSteps` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stepsComplete` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `isMultipleParcel` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usersteps`
--

INSERT INTO `usersteps` (`id`, `userId`, `awbNumber`, `totalSteps`, `stepsComplete`, `isMultipleParcel`, `created_at`, `updated_at`) VALUES
(3, '3', '5e81a9550a729', '7', '6', 'N', '2020-03-30 02:39:57', '2020-03-30 02:39:57'),
(4, '4', '5e81b7ca06a12', '7', '7', 'N', '2020-03-30 03:41:38', '2020-03-30 03:41:38'),
(5, '1', '5e81f49c0e6b3', '7', '6', 'Y', '2020-03-30 08:01:09', '2020-03-30 08:01:09'),
(6, '5', '5e81fb1f3f5c5', '7', '6', 'Y', '2020-03-30 08:28:55', '2020-03-30 08:28:55'),
(7, '2', '5e81fb96d1973', '7', '6', 'Y', '2020-03-30 08:30:55', '2020-03-30 10:22:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminparcelupdatestatus`
--
ALTER TABLE `adminparcelupdatestatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_config`
--
ALTER TABLE `admin_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_config_name_unique` (`name`);

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `awblist`
--
ALTER TABLE `awblist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offertable`
--
ALTER TABLE `offertable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `palletbook`
--
ALTER TABLE `palletbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parcelbook`
--
ALTER TABLE `parcelbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parcelbooktable`
--
ALTER TABLE `parcelbooktable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `paymentmethods`
--
ALTER TABLE `paymentmethods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paymentrecord`
--
ALTER TABLE `paymentrecord`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paymentrequest`
--
ALTER TABLE `paymentrequest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userinfocontact`
--
ALTER TABLE `userinfocontact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usermultipleparcel`
--
ALTER TABLE `usermultipleparcel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userpickupanddrop`
--
ALTER TABLE `userpickupanddrop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userprofile`
--
ALTER TABLE `userprofile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`) USING HASH;

--
-- Indexes for table `usersteps`
--
ALTER TABLE `usersteps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usersteps_awbnumber_unique` (`awbNumber`) USING HASH;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminparcelupdatestatus`
--
ALTER TABLE `adminparcelupdatestatus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `admin_config`
--
ALTER TABLE `admin_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1632;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `awblist`
--
ALTER TABLE `awblist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `offertable`
--
ALTER TABLE `offertable`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `palletbook`
--
ALTER TABLE `palletbook`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parcelbook`
--
ALTER TABLE `parcelbook`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `parcelbooktable`
--
ALTER TABLE `parcelbooktable`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paymentmethods`
--
ALTER TABLE `paymentmethods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paymentrecord`
--
ALTER TABLE `paymentrecord`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paymentrequest`
--
ALTER TABLE `paymentrequest`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `userinfocontact`
--
ALTER TABLE `userinfocontact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `usermultipleparcel`
--
ALTER TABLE `usermultipleparcel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `userpickupanddrop`
--
ALTER TABLE `userpickupanddrop`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `userprofile`
--
ALTER TABLE `userprofile`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `usersteps`
--
ALTER TABLE `usersteps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
