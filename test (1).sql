-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2024 at 12:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `alert_types`
--

CREATE TABLE `alert_types` (
  `alert_type_id` int(5) NOT NULL,
  `alert_name` varchar(50) NOT NULL,
  `status` enum('1','2') NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `alert_types`
--

INSERT INTO `alert_types` (`alert_type_id`, `alert_name`, `status`, `date_time`) VALUES
(1, 'motion', '1', '2024-05-23 05:43:29'),
(2, 'person', '1', '2024-05-23 05:43:29'),
(3, 'unknown', '1', '2024-05-23 05:45:02'),
(4, 'suspect', '1', '2024-05-23 05:45:02'),
(5, 'animal', '1', '2024-05-23 05:54:27'),
(6, 'fire', '1', '2024-05-23 05:54:27'),
(7, 'child', '1', '2024-05-23 05:54:51'),
(8, 'smoking', '1', '2024-05-23 05:54:51'),
(9, 'drinking', '1', '2024-05-23 05:55:50');

-- --------------------------------------------------------

--
-- Table structure for table `app1_alert_types`
--

CREATE TABLE `app1_alert_types` (
  `alert_type_id` int(11) NOT NULL,
  `alert_name` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app1_camera`
--

CREATE TABLE `app1_camera` (
  `id` bigint(20) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `camera_name` varchar(100) DEFAULT NULL,
  `area_id` int(11) NOT NULL,
  `tank_name` varchar(255) NOT NULL,
  `guard_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app1_camera`
--

INSERT INTO `app1_camera` (`id`, `ip_address`, `camera_name`, `area_id`, `tank_name`, `guard_id_id`) VALUES
(3, 'http://namesti.mestovm.cz/mjpg/video.mjpg', 'cam1', 1, 'abc nagar', 1),
(4, 'http://104.207.27.126:8080/mjpg/video.mjpg', 'cam2', 2, 'xyz nagar', 1),
(5, 'http://217.91.112.157/mjpg/video.mjpg', 'cam3', 3, 'MBR New Tank', 1),
(6, 'http://kamera.mikulov.cz:8888/mjpg/video.mjpg', 'cam4', 4, 'xyz nagar', 1),
(7, 'http://188.113.184.246:47544/mjpg/video.mjpg', 'cam5', 5, 'abc nagar', 1),
(8, 'http://159.130.70.206/mjpg/video.mjpg', 'cam6', 6, 'abc nagar', 1),
(9, 'http://217.91.112.157/mjpg/video.mjpg', 'cam7', 7, 'xyz nagar', 1),
(10, '0', 'cam8', 2, 'abc nagar', 1);

-- --------------------------------------------------------

--
-- Table structure for table `app1_camera_alerts`
--

CREATE TABLE `app1_camera_alerts` (
  `alert_id` int(11) NOT NULL,
  `date_time` datetime(6) NOT NULL,
  `alert_type` varchar(50) NOT NULL,
  `camera_id` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app1_camera_alerts`
--

INSERT INTO `app1_camera_alerts` (`alert_id`, `date_time`, `alert_type`, `camera_id`, `action`, `status`) VALUES
(4, '2024-06-22 15:36:29.000000', '2', '10', '', '1'),
(5, '2024-06-22 15:45:59.000000', '2', '9', '', '1'),
(6, '2024-06-24 05:47:46.609685', '5', '9', '', '1'),
(7, '2024-06-24 05:48:04.391243', '5', '10', '', '1'),
(8, '2024-06-24 07:49:35.000000', '2', '8', '', '1'),
(9, '2024-06-24 15:58:51.136883', '2', '19', '', '1'),
(10, '2024-07-01 08:18:43.000000', '2', '3', '', '1'),
(11, '2024-07-01 06:23:50.572066', '2', '3', '', '1'),
(12, '2024-07-01 06:24:23.065996', '2', '3', '', '5'),
(13, '2024-07-01 06:28:03.280320', '2', '3', '', '4'),
(14, '2024-07-01 06:28:22.887304', '8', '3', '', '8'),
(15, '2024-07-01 06:30:25.034321', '4', '3', '', '4');

-- --------------------------------------------------------

--
-- Table structure for table `app1_camera_alerts_backup`
--

CREATE TABLE `app1_camera_alerts_backup` (
  `alert_id` int(11) NOT NULL,
  `date_time` datetime(6) NOT NULL,
  `alert_type` varchar(50) NOT NULL,
  `camera_id` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app1_camera_alerts_backup`
--

INSERT INTO `app1_camera_alerts_backup` (`alert_id`, `date_time`, `alert_type`, `camera_id`, `action`, `status`) VALUES
(82, '2024-06-20 12:15:37.000000', '2', '5', '', ''),
(83, '2024-06-20 12:56:45.000000', '2', '3', '', '3'),
(84, '2024-06-20 13:05:43.000000', '2', '4', '', '1'),
(85, '2024-06-20 13:12:06.000000', '2', '10', '', '3'),
(86, '2024-06-20 13:20:33.000000', '2', '6', '', '1'),
(87, '2024-06-20 14:02:41.000000', '2', '5', '', '1'),
(88, '2024-06-20 14:26:11.000000', '2', '10', '', '3'),
(89, '2024-06-20 14:26:25.000000', '2', '10', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `app1_camera_settings`
--

CREATE TABLE `app1_camera_settings` (
  `setting_id` int(11) NOT NULL,
  `date_time` date NOT NULL,
  `alert_id_id` int(11) NOT NULL,
  `camera_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app1_capture_video`
--

CREATE TABLE `app1_capture_video` (
  `captured_video_id` int(11) NOT NULL,
  `date_time` datetime(6) NOT NULL,
  `url` varchar(100) NOT NULL,
  `camera_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app1_guard`
--

CREATE TABLE `app1_guard` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` int(11) NOT NULL,
  `area` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app1_guard`
--

INSERT INTO `app1_guard` (`id`, `name`, `mobile`, `area`) VALUES
(1, 'gaurd 1', 138908902, 'area1');

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `area_id` int(10) NOT NULL,
  `area_name` varchar(250) NOT NULL,
  `area_location` varchar(100) NOT NULL,
  `status` enum('1','2') NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add alert_types', 7, 'add_alert_types'),
(26, 'Can change alert_types', 7, 'change_alert_types'),
(27, 'Can delete alert_types', 7, 'delete_alert_types'),
(28, 'Can view alert_types', 7, 'view_alert_types'),
(29, 'Can add camera', 8, 'add_camera'),
(30, 'Can change camera', 8, 'change_camera'),
(31, 'Can delete camera', 8, 'delete_camera'),
(32, 'Can view camera', 8, 'view_camera'),
(33, 'Can add guard', 9, 'add_guard'),
(34, 'Can change guard', 9, 'change_guard'),
(35, 'Can delete guard', 9, 'delete_guard'),
(36, 'Can view guard', 9, 'view_guard'),
(37, 'Can add camera_alerts', 10, 'add_camera_alerts'),
(38, 'Can change camera_alerts', 10, 'change_camera_alerts'),
(39, 'Can delete camera_alerts', 10, 'delete_camera_alerts'),
(40, 'Can view camera_alerts', 10, 'view_camera_alerts'),
(41, 'Can add camera_settings', 11, 'add_camera_settings'),
(42, 'Can change camera_settings', 11, 'change_camera_settings'),
(43, 'Can delete camera_settings', 11, 'delete_camera_settings'),
(44, 'Can view camera_settings', 11, 'view_camera_settings'),
(45, 'Can add capture_video', 12, 'add_capture_video'),
(46, 'Can change capture_video', 12, 'change_capture_video'),
(47, 'Can delete capture_video', 12, 'delete_capture_video'),
(48, 'Can view capture_video', 12, 'view_capture_video');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$c22cC59PN0dk7yNvRpSLvg$y3tsmgt7yGOgoLHf+V8VpI9IE8zLePMjF/lvkCEB/Ec=', '2024-06-22 11:14:58.811513', 1, 'admin', '', '', 'admin@corestancetech.com', 1, 1, '2024-06-18 06:21:26.599189');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `camera_alerts`
--

CREATE TABLE `camera_alerts` (
  `alert_id` int(10) NOT NULL,
  `alert_type_id` int(10) NOT NULL,
  `cam_id` int(10) NOT NULL,
  `status` enum('1','2','3','4','5','6','7','8') NOT NULL DEFAULT '1' COMMENT '1 - Created, 2 - AI Bot, 3 - Operator, 4 - Security Guard, 5 -Guard absent sent to Drone, 6 - Drone Busy Send to Police, 7 - Operation Complete',
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `camera_captured_video`
--

CREATE TABLE `camera_captured_video` (
  `captured_video_id` int(10) NOT NULL,
  `cam_id` int(10) NOT NULL,
  `video_url` varchar(250) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `camera_device_data`
--

CREATE TABLE `camera_device_data` (
  `cam_id` int(10) NOT NULL,
  `cam_type` varchar(50) NOT NULL,
  `cam_lence` varchar(50) NOT NULL,
  `cam_range` varchar(15) NOT NULL,
  `company_model` varchar(150) NOT NULL,
  `cam_location` varchar(50) NOT NULL,
  `lence_direction` varchar(10) NOT NULL,
  `alert_level` int(5) NOT NULL,
  `feed_link` varchar(250) NOT NULL,
  `area_id` int(10) NOT NULL,
  `tank_id` int(10) NOT NULL,
  `guard_id` int(10) NOT NULL,
  `status` enum('1','2') NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `camera_features`
--

CREATE TABLE `camera_features` (
  `feature_id` int(10) NOT NULL,
  `cam_id` int(10) NOT NULL,
  `alert_type_id` int(10) NOT NULL,
  `status` enum('1','2') NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `camera_features`
--

INSERT INTO `camera_features` (`feature_id`, `cam_id`, `alert_type_id`, `status`, `date_time`) VALUES
(1071, 2, 2, '1', '2024-06-18 05:21:21'),
(1073, 2, 3, '1', '2024-06-18 05:21:49'),
(1076, 2, 4, '1', '2024-06-18 05:22:50'),
(1077, 2, 5, '1', '2024-06-18 05:22:55'),
(1079, 7, 1, '1', '2024-06-18 07:42:29'),
(1080, 7, 2, '1', '2024-06-18 07:42:31'),
(1081, 5, 1, '1', '2024-06-18 07:43:40'),
(1082, 5, 2, '1', '2024-06-18 07:43:41'),
(1095, 6, 1, '1', '2024-06-20 09:15:01'),
(1096, 8, 1, '1', '2024-06-20 09:18:34'),
(1097, 4, 1, '1', '2024-06-20 12:16:11'),
(1099, 4, 3, '1', '2024-06-20 12:16:13'),
(1203, 1, 4, '1', '2024-06-24 07:46:29'),
(1204, 1, 5, '1', '2024-06-24 07:46:29'),
(1205, 1, 6, '1', '2024-06-24 07:46:44'),
(1206, 1, 7, '1', '2024-06-24 07:46:45'),
(1208, 1, 9, '1', '2024-06-24 07:46:47'),
(1209, 1, 3, '1', '2024-06-24 08:00:40'),
(1210, 1, 8, '1', '2024-06-24 08:01:31'),
(1229, 1, 1, '1', '2024-06-24 17:48:27'),
(1230, 9, 1, '1', '2024-06-28 06:33:45'),
(1231, 9, 2, '1', '2024-06-28 06:33:46'),
(1232, 9, 3, '1', '2024-06-28 06:33:47'),
(1234, 3, 3, '1', '2024-07-01 08:19:18'),
(1235, 3, 1, '1', '2024-07-01 08:20:03'),
(1236, 3, 2, '1', '2024-07-01 08:20:36');

-- --------------------------------------------------------

--
-- Table structure for table `camera_installation`
--

CREATE TABLE `camera_installation` (
  `install_id` int(10) NOT NULL,
  `cam_id` int(10) NOT NULL,
  `installer_id` int(10) NOT NULL,
  `point_no` int(10) NOT NULL,
  `point_name` varchar(150) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `compound_line_sensor`
--

CREATE TABLE `compound_line_sensor` (
  `sensor_id` int(10) NOT NULL,
  `cam_id` int(10) NOT NULL,
  `compound_sensor_id` int(10) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `compound_line_sensor_device_data`
--

CREATE TABLE `compound_line_sensor_device_data` (
  `compound_sensor_id` int(10) NOT NULL,
  `sensor_type` varchar(100) NOT NULL,
  `sensor_range` varchar(50) NOT NULL,
  `company_model` varchar(100) NOT NULL,
  `location` varchar(50) NOT NULL,
  `direction` varchar(50) NOT NULL,
  `alert_level` int(5) NOT NULL,
  `link` varchar(200) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `device_credentials`
--

CREATE TABLE `device_credentials` (
  `credential_id` int(10) NOT NULL,
  `cam_id` int(10) NOT NULL,
  `pass` varchar(250) NOT NULL,
  `ssl_key` varchar(250) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `ota_link` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-06-18 06:22:19.070086', '1', 'gaurd 1', 1, '[{\"added\": {}}]', 9, 1),
(2, '2024-06-18 06:23:12.435563', '1', '1', 1, '[{\"added\": {}}]', 8, 1),
(3, '2024-06-18 06:24:18.956212', '2', 'cam2', 1, '[{\"added\": {}}]', 8, 1),
(4, '2024-06-18 08:17:54.251557', '2', 'cam2', 3, '', 8, 1),
(5, '2024-06-18 08:17:54.255506', '1', '1', 3, '', 8, 1),
(6, '2024-06-18 08:22:25.269111', '3', 'cam1', 1, '[{\"added\": {}}]', 8, 1),
(7, '2024-06-18 08:22:47.543927', '4', 'http://104.207.27.126:8080/mjpg/video.mjpg', 1, '[{\"added\": {}}]', 8, 1),
(8, '2024-06-18 08:23:13.496803', '4', 'cam2', 2, '[{\"changed\": {\"fields\": [\"Ip address\", \"Camera name\"]}}]', 8, 1),
(9, '2024-06-18 08:23:39.159543', '5', 'cam3', 1, '[{\"added\": {}}]', 8, 1),
(10, '2024-06-18 08:24:04.804012', '6', 'cam4', 1, '[{\"added\": {}}]', 8, 1),
(11, '2024-06-18 08:24:29.466743', '7', 'cam5', 1, '[{\"added\": {}}]', 8, 1),
(12, '2024-06-18 08:24:53.264041', '8', 'cam6', 1, '[{\"added\": {}}]', 8, 1),
(13, '2024-06-18 08:25:14.777005', '9', 'cam7', 1, '[{\"added\": {}}]', 8, 1),
(14, '2024-06-20 09:31:27.695598', '80', '80', 3, '', 10, 1),
(15, '2024-06-20 09:31:27.702584', '79', '79', 3, '', 10, 1),
(16, '2024-06-20 09:31:27.702584', '78', '78', 3, '', 10, 1),
(17, '2024-06-20 09:31:27.702584', '77', '77', 3, '', 10, 1),
(18, '2024-06-20 09:31:27.717321', '3', '3', 3, '', 10, 1),
(19, '2024-06-20 11:09:44.304513', '10', 'cam8', 1, '[{\"added\": {}}]', 8, 1),
(20, '2024-06-22 11:17:28.572399', '141', '141', 1, '[{\"added\": {}}]', 10, 1),
(21, '2024-06-22 11:17:34.365560', '142', '142', 1, '[{\"added\": {}}]', 10, 1),
(22, '2024-06-22 11:17:39.569160', '143', '143', 1, '[{\"added\": {}}]', 10, 1),
(23, '2024-06-22 11:36:53.479528', '144', '144', 1, '[{\"added\": {}}]', 10, 1),
(24, '2024-06-22 11:37:11.587552', '145', '145', 1, '[{\"added\": {}}]', 10, 1),
(25, '2024-06-22 11:37:57.302539', '146', '146', 1, '[{\"added\": {}}]', 10, 1),
(26, '2024-06-22 11:38:32.130186', '147', '147', 1, '[{\"added\": {}}]', 10, 1),
(27, '2024-06-22 11:51:52.030580', '151', '151', 1, '[{\"added\": {}}]', 10, 1),
(28, '2024-06-22 11:53:53.173440', '152', '152', 1, '[{\"added\": {}}]', 10, 1),
(29, '2024-06-22 11:55:20.463885', '153', '153', 1, '[{\"added\": {}}]', 10, 1),
(30, '2024-06-22 11:56:42.692928', '154', '154', 1, '[{\"added\": {}}]', 10, 1),
(31, '2024-06-22 11:57:11.162869', '155', '155', 1, '[{\"added\": {}}]', 10, 1),
(32, '2024-06-22 11:58:35.361925', '156', '156', 1, '[{\"added\": {}}]', 10, 1),
(33, '2024-06-22 12:02:14.901084', '157', '157', 1, '[{\"added\": {}}]', 10, 1),
(34, '2024-06-22 12:02:47.471046', '158', '158', 1, '[{\"added\": {}}]', 10, 1),
(35, '2024-06-22 12:02:55.452325', '159', '159', 1, '[{\"added\": {}}]', 10, 1),
(36, '2024-06-22 12:03:50.783633', '160', '160', 1, '[{\"added\": {}}]', 10, 1),
(37, '2024-06-22 12:10:22.221111', '161', '161', 1, '[{\"added\": {}}]', 10, 1),
(38, '2024-06-22 12:10:33.093050', '162', '162', 1, '[{\"added\": {}}]', 10, 1),
(39, '2024-06-22 12:10:39.788174', '163', '163', 1, '[{\"added\": {}}]', 10, 1),
(40, '2024-06-22 12:10:53.533314', '164', '164', 1, '[{\"added\": {}}]', 10, 1),
(41, '2024-06-22 12:11:10.848137', '165', '165', 1, '[{\"added\": {}}]', 10, 1),
(42, '2024-06-22 12:11:47.789723', '166', '166', 1, '[{\"added\": {}}]', 10, 1),
(43, '2024-06-22 12:12:50.981598', '167', '167', 1, '[{\"added\": {}}]', 10, 1),
(44, '2024-06-22 12:13:02.819483', '168', '168', 1, '[{\"added\": {}}]', 10, 1),
(45, '2024-06-22 12:13:12.276490', '169', '169', 1, '[{\"added\": {}}]', 10, 1),
(46, '2024-06-22 12:13:22.094185', '170', '170', 1, '[{\"added\": {}}]', 10, 1),
(47, '2024-06-22 12:16:12.143490', '171', '171', 1, '[{\"added\": {}}]', 10, 1),
(48, '2024-06-22 12:16:33.934724', '172', '172', 1, '[{\"added\": {}}]', 10, 1),
(49, '2024-06-22 12:16:40.988406', '173', '173', 1, '[{\"added\": {}}]', 10, 1),
(50, '2024-06-22 12:16:49.346849', '174', '174', 1, '[{\"added\": {}}]', 10, 1),
(51, '2024-06-22 12:16:57.781321', '175', '175', 1, '[{\"added\": {}}]', 10, 1),
(52, '2024-06-22 12:18:17.568006', '176', '176', 1, '[{\"added\": {}}]', 10, 1),
(53, '2024-06-22 12:18:28.334308', '177', '177', 1, '[{\"added\": {}}]', 10, 1),
(54, '2024-06-22 12:18:36.374997', '178', '178', 1, '[{\"added\": {}}]', 10, 1),
(55, '2024-06-22 12:19:00.821594', '179', '179', 1, '[{\"added\": {}}]', 10, 1),
(56, '2024-06-22 12:19:14.961926', '180', '180', 1, '[{\"added\": {}}]', 10, 1),
(57, '2024-06-22 12:19:37.819530', '181', '181', 1, '[{\"added\": {}}]', 10, 1),
(58, '2024-06-22 12:19:57.119646', '182', '182', 1, '[{\"added\": {}}]', 10, 1),
(59, '2024-06-22 12:20:06.636422', '183', '183', 1, '[{\"added\": {}}]', 10, 1),
(60, '2024-06-22 12:20:12.324795', '184', '184', 1, '[{\"added\": {}}]', 10, 1),
(61, '2024-06-22 12:24:13.277053', '184', '184', 3, '', 10, 1),
(62, '2024-06-22 12:24:13.284687', '183', '183', 3, '', 10, 1),
(63, '2024-06-22 12:24:13.289247', '182', '182', 3, '', 10, 1),
(64, '2024-06-22 12:24:13.293221', '181', '181', 3, '', 10, 1),
(65, '2024-06-22 12:24:13.296264', '180', '180', 3, '', 10, 1),
(66, '2024-06-22 12:24:13.301810', '179', '179', 3, '', 10, 1),
(67, '2024-06-22 12:24:13.305435', '178', '178', 3, '', 10, 1),
(68, '2024-06-22 12:24:13.308867', '177', '177', 3, '', 10, 1),
(69, '2024-06-22 12:24:13.312469', '176', '176', 3, '', 10, 1),
(70, '2024-06-22 12:24:13.314499', '175', '175', 3, '', 10, 1),
(71, '2024-06-22 12:24:13.318037', '174', '174', 3, '', 10, 1),
(72, '2024-06-22 12:24:13.320675', '173', '173', 3, '', 10, 1),
(73, '2024-06-22 12:24:13.324551', '172', '172', 3, '', 10, 1),
(74, '2024-06-22 12:24:13.327041', '171', '171', 3, '', 10, 1),
(75, '2024-06-22 12:24:13.329708', '170', '170', 3, '', 10, 1),
(76, '2024-06-22 12:24:13.332455', '169', '169', 3, '', 10, 1),
(77, '2024-06-22 12:24:13.337322', '168', '168', 3, '', 10, 1),
(78, '2024-06-22 12:24:13.340365', '167', '167', 3, '', 10, 1),
(79, '2024-06-22 12:24:13.343149', '166', '166', 3, '', 10, 1),
(80, '2024-06-22 12:24:13.346051', '165', '165', 3, '', 10, 1),
(81, '2024-06-22 12:24:13.348729', '164', '164', 3, '', 10, 1),
(82, '2024-06-22 12:24:13.351271', '163', '163', 3, '', 10, 1),
(83, '2024-06-22 12:24:13.353919', '162', '162', 3, '', 10, 1),
(84, '2024-06-22 12:24:13.357168', '161', '161', 3, '', 10, 1),
(85, '2024-06-22 12:24:13.360034', '160', '160', 3, '', 10, 1),
(86, '2024-06-22 12:24:13.362664', '159', '159', 3, '', 10, 1),
(87, '2024-06-22 12:24:13.365117', '158', '158', 3, '', 10, 1),
(88, '2024-06-22 12:24:13.367977', '157', '157', 3, '', 10, 1),
(89, '2024-06-22 12:24:13.370670', '156', '156', 3, '', 10, 1),
(90, '2024-06-22 12:24:13.374472', '155', '155', 3, '', 10, 1),
(91, '2024-06-22 12:24:13.377095', '154', '154', 3, '', 10, 1),
(92, '2024-06-22 12:24:13.379659', '153', '153', 3, '', 10, 1),
(93, '2024-06-22 12:24:13.382072', '152', '152', 3, '', 10, 1),
(94, '2024-06-22 12:24:13.384455', '151', '151', 3, '', 10, 1),
(95, '2024-06-22 12:24:13.387423', '150', '150', 3, '', 10, 1),
(96, '2024-06-22 12:24:13.390805', '149', '149', 3, '', 10, 1),
(97, '2024-06-22 12:24:13.393114', '148', '148', 3, '', 10, 1),
(98, '2024-06-22 12:24:13.395501', '147', '147', 3, '', 10, 1),
(99, '2024-06-22 12:24:13.397670', '146', '146', 3, '', 10, 1),
(100, '2024-06-22 12:24:13.400029', '145', '145', 3, '', 10, 1),
(101, '2024-06-22 12:24:13.402354', '144', '144', 3, '', 10, 1),
(102, '2024-06-22 12:24:13.404520', '143', '143', 3, '', 10, 1),
(103, '2024-06-22 12:24:13.408232', '142', '142', 3, '', 10, 1),
(104, '2024-06-22 12:24:13.410855', '141', '141', 3, '', 10, 1),
(105, '2024-06-22 12:24:13.413406', '137', '137', 3, '', 10, 1),
(106, '2024-06-22 12:30:05.408110', '185', '185', 1, '[{\"added\": {}}]', 10, 1),
(107, '2024-06-24 05:47:46.620124', '6', '6', 1, '[{\"added\": {}}]', 10, 1),
(108, '2024-06-24 05:48:04.395006', '7', '7', 1, '[{\"added\": {}}]', 10, 1),
(109, '2024-07-01 06:23:50.578057', '11', '11', 1, '[{\"added\": {}}]', 10, 1),
(110, '2024-07-01 06:24:23.069007', '12', '12', 1, '[{\"added\": {}}]', 10, 1),
(111, '2024-07-01 06:28:03.289321', '13', '13', 1, '[{\"added\": {}}]', 10, 1),
(112, '2024-07-01 06:28:22.893315', '14', '14', 1, '[{\"added\": {}}]', 10, 1),
(113, '2024-07-01 06:30:25.035323', '15', '15', 1, '[{\"added\": {}}]', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'app1', 'alert_types'),
(8, 'app1', 'camera'),
(10, 'app1', 'camera_alerts'),
(11, 'app1', 'camera_settings'),
(12, 'app1', 'capture_video'),
(9, 'app1', 'guard'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-06-18 06:15:59.753338'),
(2, 'auth', '0001_initial', '2024-06-18 06:16:00.466682'),
(3, 'admin', '0001_initial', '2024-06-18 06:16:00.628866'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-06-18 06:16:00.638205'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-06-18 06:16:00.653846'),
(6, 'app1', '0001_initial', '2024-06-18 06:16:01.217218'),
(7, 'app1', '0002_alter_camera_settings_alert_id', '2024-06-18 06:16:01.624572'),
(8, 'app1', '0003_alter_alert_types_date_alter_alert_types_time_and_more', '2024-06-18 06:16:01.638688'),
(9, 'app1', '0004_camera_alerts_action_camera_alerts_status', '2024-06-18 06:16:01.696656'),
(10, 'app1', '0005_rename_camera_name_camera_name_and_more', '2024-06-18 06:16:01.753667'),
(11, 'app1', '0006_rename_name_camera_camera_name_and_more', '2024-06-18 06:16:01.810346'),
(12, 'app1', '0007_rename_alert_type_camera_alerts_alert_type_id', '2024-06-18 06:16:02.239614'),
(13, 'app1', '0008_rename_alert_type_id_camera_alerts_alert_type', '2024-06-18 06:16:02.646389'),
(14, 'contenttypes', '0002_remove_content_type_name', '2024-06-18 06:16:02.746892'),
(15, 'auth', '0002_alter_permission_name_max_length', '2024-06-18 06:16:02.839312'),
(16, 'auth', '0003_alter_user_email_max_length', '2024-06-18 06:16:02.867165'),
(17, 'auth', '0004_alter_user_username_opts', '2024-06-18 06:16:02.890602'),
(18, 'auth', '0005_alter_user_last_login_null', '2024-06-18 06:16:02.989014'),
(19, 'auth', '0006_require_contenttypes_0002', '2024-06-18 06:16:03.002256'),
(20, 'auth', '0007_alter_validators_add_error_messages', '2024-06-18 06:16:03.035027'),
(21, 'auth', '0008_alter_user_username_max_length', '2024-06-18 06:16:03.109442'),
(22, 'auth', '0009_alter_user_last_name_max_length', '2024-06-18 06:16:03.148422'),
(23, 'auth', '0010_alter_group_name_max_length', '2024-06-18 06:16:03.190900'),
(24, 'auth', '0011_update_proxy_permissions', '2024-06-18 06:16:03.231711'),
(25, 'auth', '0012_alter_user_first_name_max_length', '2024-06-18 06:16:03.265401'),
(26, 'sessions', '0001_initial', '2024-06-18 06:16:03.341362'),
(27, 'app1', '0009_alter_camera_alerts_alert_type_and_more', '2024-06-19 11:15:48.377651'),
(28, 'app1', '0004_alter_camera_alerts_alert_type_and_more', '2024-06-22 11:11:50.454093'),
(29, 'app1', '0005_camera_alerts_status', '2024-06-24 15:48:04.771903');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2ie63eysefnhy6iktwvyvu1qydhou3c8', '.eJxVjEEOwiAQRe_C2pBCocO4dN8zkAFGqRpISrsy3l1JutDtf-_9l_C0b9nvjVe_JHEWSpx-t0DxwaWDdKdyqzLWsq1LkF2RB21yromfl8P9O8jUcq8t4xiMUUBWIVs3JbAR0WmGyBaBruGLwDmtI6YEAAPiBBHCaMbBiPcH04w3HA:1sKyhu:uxoylCPvsx0DLHE0y0B7SL38MktR2ReKCPIGyjSSLrk', '2024-07-06 11:14:58.815487'),
('illlot0atm9z1gxsh8o460g42kn0tdv6', '.eJxVjEEOwiAQRe_C2pBCocO4dN8zkAFGqRpISrsy3l1JutDtf-_9l_C0b9nvjVe_JHEWSpx-t0DxwaWDdKdyqzLWsq1LkF2RB21yromfl8P9O8jUcq8t4xiMUUBWIVs3JbAR0WmGyBaBruGLwDmtI6YEAAPiBBHCaMbBiPcH04w3HA:1sJSDu:-QKxO7QFy3M2RmaPUsOvjUlCabRJtW-sRiHS2HNaJVs', '2024-07-02 06:21:42.839263'),
('mcj3kxk9xtpkorh2uj6vgnrl7xkz5ueb', '.eJxVjEEOwiAQRe_C2pBCocO4dN8zkAFGqRpISrsy3l1JutDtf-_9l_C0b9nvjVe_JHEWSpx-t0DxwaWDdKdyqzLWsq1LkF2RB21yromfl8P9O8jUcq8t4xiMUUBWIVs3JbAR0WmGyBaBruGLwDmtI6YEAAPiBBHCaMbBiPcH04w3HA:1sKxTj:qOPCLnfTSlzGuQnoCchpk592Cn72u6FHwFt0Zuojitw', '2024-07-06 09:56:15.455293'),
('uvnuzde7lwpboasgx8wmkbtohop1u58r', '.eJxVjEEOwiAQRe_C2pBCocO4dN8zkAFGqRpISrsy3l1JutDtf-_9l_C0b9nvjVe_JHEWSpx-t0DxwaWDdKdyqzLWsq1LkF2RB21yromfl8P9O8jUcq8t4xiMUUBWIVs3JbAR0WmGyBaBruGLwDmtI6YEAAPiBBHCaMbBiPcH04w3HA:1sKE8T:jo9vOEhLs4MtUKaw6O-gvgcuck-GNlI4_yzaNxn89fA', '2024-07-04 09:31:17.032807');

-- --------------------------------------------------------

--
-- Table structure for table `guards`
--

CREATE TABLE `guards` (
  `guard_id` int(10) NOT NULL,
  `guard_name` varchar(250) NOT NULL,
  `guard_contact` int(10) NOT NULL,
  `status` enum('1','2') NOT NULL,
  `date_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `motion_sensors`
--

CREATE TABLE `motion_sensors` (
  `sensor_id` int(10) NOT NULL,
  `cam_id` int(10) NOT NULL,
  `motion_sensor_id` int(10) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `motion_sensor_device_data`
--

CREATE TABLE `motion_sensor_device_data` (
  `motion_sensor_id` int(10) NOT NULL,
  `sensor_type` varchar(100) NOT NULL,
  `sensor_range` varchar(50) NOT NULL,
  `company_model` varchar(100) NOT NULL,
  `location` varchar(50) NOT NULL,
  `direction` varchar(50) NOT NULL,
  `alert_level` int(5) NOT NULL,
  `link` varchar(200) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `smart_lock`
--

CREATE TABLE `smart_lock` (
  `locak_id` int(10) NOT NULL,
  `cam_id` int(10) NOT NULL,
  `smart_lock_id` int(10) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `smart_lock_device_data`
--

CREATE TABLE `smart_lock_device_data` (
  `smart_lock_id` int(10) NOT NULL,
  `lock_type` varchar(100) NOT NULL,
  `lock_range` varchar(50) NOT NULL,
  `company_model` varchar(100) NOT NULL,
  `location` varchar(50) NOT NULL,
  `direction` varchar(50) NOT NULL,
  `alert_level` int(5) NOT NULL,
  `link` varchar(200) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suspect`
--

CREATE TABLE `suspect` (
  `suspect_id` int(10) NOT NULL,
  `suspect_name` varchar(100) DEFAULT NULL,
  `photo_url` varchar(250) NOT NULL,
  `status` enum('1','2') NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tanks`
--

CREATE TABLE `tanks` (
  `tank_id` int(10) NOT NULL,
  `tank_name` varchar(200) NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` enum('1','2') NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `voice_bot`
--

CREATE TABLE `voice_bot` (
  `voice_bot_id` int(10) NOT NULL,
  `bot_type` varchar(50) NOT NULL,
  `company_model` varchar(100) NOT NULL,
  `location` varchar(50) NOT NULL,
  `alert_level` int(5) NOT NULL,
  `link` varchar(250) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alert_types`
--
ALTER TABLE `alert_types`
  ADD PRIMARY KEY (`alert_type_id`);

--
-- Indexes for table `app1_alert_types`
--
ALTER TABLE `app1_alert_types`
  ADD PRIMARY KEY (`alert_type_id`);

--
-- Indexes for table `app1_camera`
--
ALTER TABLE `app1_camera`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app1_camera_guard_id_id_d386a405_fk_app1_guard_id` (`guard_id_id`);

--
-- Indexes for table `app1_camera_alerts`
--
ALTER TABLE `app1_camera_alerts`
  ADD PRIMARY KEY (`alert_id`);

--
-- Indexes for table `app1_camera_alerts_backup`
--
ALTER TABLE `app1_camera_alerts_backup`
  ADD PRIMARY KEY (`alert_id`);

--
-- Indexes for table `app1_camera_settings`
--
ALTER TABLE `app1_camera_settings`
  ADD PRIMARY KEY (`setting_id`),
  ADD KEY `app1_camera_settings_camera_id_id_9c6c7fcd_fk_app1_camera_id` (`camera_id_id`),
  ADD KEY `app1_camera_settings_alert_id_id_0b744a22_fk_app1_aler` (`alert_id_id`);

--
-- Indexes for table `app1_capture_video`
--
ALTER TABLE `app1_capture_video`
  ADD PRIMARY KEY (`captured_video_id`),
  ADD KEY `app1_capture_video_camera_id_id_901028f5_fk_app1_camera_id` (`camera_id_id`);

--
-- Indexes for table `app1_guard`
--
ALTER TABLE `app1_guard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`area_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `camera_alerts`
--
ALTER TABLE `camera_alerts`
  ADD PRIMARY KEY (`alert_id`);

--
-- Indexes for table `camera_captured_video`
--
ALTER TABLE `camera_captured_video`
  ADD PRIMARY KEY (`captured_video_id`);

--
-- Indexes for table `camera_device_data`
--
ALTER TABLE `camera_device_data`
  ADD PRIMARY KEY (`cam_id`);

--
-- Indexes for table `camera_features`
--
ALTER TABLE `camera_features`
  ADD PRIMARY KEY (`feature_id`);

--
-- Indexes for table `camera_installation`
--
ALTER TABLE `camera_installation`
  ADD PRIMARY KEY (`install_id`);

--
-- Indexes for table `compound_line_sensor`
--
ALTER TABLE `compound_line_sensor`
  ADD PRIMARY KEY (`sensor_id`);

--
-- Indexes for table `compound_line_sensor_device_data`
--
ALTER TABLE `compound_line_sensor_device_data`
  ADD PRIMARY KEY (`compound_sensor_id`);

--
-- Indexes for table `device_credentials`
--
ALTER TABLE `device_credentials`
  ADD PRIMARY KEY (`credential_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `guards`
--
ALTER TABLE `guards`
  ADD PRIMARY KEY (`guard_id`);

--
-- Indexes for table `motion_sensors`
--
ALTER TABLE `motion_sensors`
  ADD PRIMARY KEY (`sensor_id`);

--
-- Indexes for table `motion_sensor_device_data`
--
ALTER TABLE `motion_sensor_device_data`
  ADD PRIMARY KEY (`motion_sensor_id`);

--
-- Indexes for table `smart_lock_device_data`
--
ALTER TABLE `smart_lock_device_data`
  ADD PRIMARY KEY (`smart_lock_id`);

--
-- Indexes for table `suspect`
--
ALTER TABLE `suspect`
  ADD PRIMARY KEY (`suspect_id`);

--
-- Indexes for table `tanks`
--
ALTER TABLE `tanks`
  ADD PRIMARY KEY (`tank_id`);

--
-- Indexes for table `voice_bot`
--
ALTER TABLE `voice_bot`
  ADD PRIMARY KEY (`voice_bot_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alert_types`
--
ALTER TABLE `alert_types`
  MODIFY `alert_type_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `app1_alert_types`
--
ALTER TABLE `app1_alert_types`
  MODIFY `alert_type_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_camera`
--
ALTER TABLE `app1_camera`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `app1_camera_alerts`
--
ALTER TABLE `app1_camera_alerts`
  MODIFY `alert_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `app1_camera_alerts_backup`
--
ALTER TABLE `app1_camera_alerts_backup`
  MODIFY `alert_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `app1_camera_settings`
--
ALTER TABLE `app1_camera_settings`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_capture_video`
--
ALTER TABLE `app1_capture_video`
  MODIFY `captured_video_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_guard`
--
ALTER TABLE `app1_guard`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `area_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `camera_alerts`
--
ALTER TABLE `camera_alerts`
  MODIFY `alert_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `camera_captured_video`
--
ALTER TABLE `camera_captured_video`
  MODIFY `captured_video_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `camera_device_data`
--
ALTER TABLE `camera_device_data`
  MODIFY `cam_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `camera_features`
--
ALTER TABLE `camera_features`
  MODIFY `feature_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1237;

--
-- AUTO_INCREMENT for table `camera_installation`
--
ALTER TABLE `camera_installation`
  MODIFY `install_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `compound_line_sensor`
--
ALTER TABLE `compound_line_sensor`
  MODIFY `sensor_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `compound_line_sensor_device_data`
--
ALTER TABLE `compound_line_sensor_device_data`
  MODIFY `compound_sensor_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `device_credentials`
--
ALTER TABLE `device_credentials`
  MODIFY `credential_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `guards`
--
ALTER TABLE `guards`
  MODIFY `guard_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `motion_sensors`
--
ALTER TABLE `motion_sensors`
  MODIFY `sensor_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `motion_sensor_device_data`
--
ALTER TABLE `motion_sensor_device_data`
  MODIFY `motion_sensor_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `smart_lock_device_data`
--
ALTER TABLE `smart_lock_device_data`
  MODIFY `smart_lock_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suspect`
--
ALTER TABLE `suspect`
  MODIFY `suspect_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tanks`
--
ALTER TABLE `tanks`
  MODIFY `tank_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `voice_bot`
--
ALTER TABLE `voice_bot`
  MODIFY `voice_bot_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `app1_camera`
--
ALTER TABLE `app1_camera`
  ADD CONSTRAINT `app1_camera_guard_id_id_d386a405_fk_app1_guard_id` FOREIGN KEY (`guard_id_id`) REFERENCES `app1_guard` (`id`);

--
-- Constraints for table `app1_camera_settings`
--
ALTER TABLE `app1_camera_settings`
  ADD CONSTRAINT `app1_camera_settings_alert_id_id_0b744a22_fk_app1_aler` FOREIGN KEY (`alert_id_id`) REFERENCES `app1_alert_types` (`alert_type_id`),
  ADD CONSTRAINT `app1_camera_settings_camera_id_id_9c6c7fcd_fk_app1_camera_id` FOREIGN KEY (`camera_id_id`) REFERENCES `app1_camera` (`id`);

--
-- Constraints for table `app1_capture_video`
--
ALTER TABLE `app1_capture_video`
  ADD CONSTRAINT `app1_capture_video_camera_id_id_901028f5_fk_app1_camera_id` FOREIGN KEY (`camera_id_id`) REFERENCES `app1_camera` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
