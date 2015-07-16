-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2015 at 03:44 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `app`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_rest_keys`
--

CREATE TABLE IF NOT EXISTS `app_rest_keys` (
  `id` int(11) NOT NULL,
  `key_name` varchar(100) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_rest_keys`
--

INSERT INTO `app_rest_keys` (`id`, `key_name`, `key`, `level`, `ignore_limits`, `date_created`) VALUES
(2, 'board', '123456', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `app_rest_logs`
--

CREATE TABLE IF NOT EXISTS `app_rest_logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_rest_logs`
--

INSERT INTO `app_rest_logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(1, 'load', 'get', NULL, '', '127.0.0.1', '2015-07-14 12:22:47', 0.110007, '0', 403),
(2, 'load', 'get', NULL, '', '127.0.0.1', '2015-07-14 13:23:45', 0.629036, '0', 403),
(3, 'load', 'get', NULL, '', '127.0.0.1', '2015-07-14 13:33:42', 0.218012, '0', 403),
(4, 'load', 'get', NULL, '', '127.0.0.1', '2015-07-14 13:33:55', 0.253014, '0', 403),
(5, 'load', 'get', NULL, '', '127.0.0.1', '2015-07-14 13:34:08', 0.180011, '0', 403),
(6, 'load', 'get', NULL, '123456', '127.0.0.1', '2015-07-14 13:35:06', 0.252014, '1', 0),
(7, 'load', 'get', NULL, '123456', '127.0.0.1', '2015-07-14 13:39:32', 0.102006, '1', 0),
(8, 'load/signup', 'get', NULL, '', '127.0.0.1', '2015-07-15 07:54:06', 1.55909, '0', 403),
(9, 'load/login', 'get', NULL, '', '127.0.0.1', '2015-07-15 07:54:08', 0.328019, '0', 403),
(10, 'load/signup', 'get', NULL, '', '127.0.0.1', '2015-07-15 07:54:09', 0.070004, '0', 403),
(11, 'load/signup', 'get', NULL, '', '127.0.0.1', '2015-07-15 07:54:52', 0.16601, '0', 403),
(12, 'load/login', 'get', NULL, '', '127.0.0.1', '2015-07-15 07:56:27', 0.141009, '0', 403),
(13, 'load/signup', 'get', NULL, '', '127.0.0.1', '2015-07-15 07:56:28', 0.222013, '0', 403),
(14, 'load/signup', 'get', NULL, '', '127.0.0.1', '2015-07-15 08:04:25', 0.666038, '0', 403),
(15, 'load/signup', 'get', NULL, '', '127.0.0.1', '2015-07-15 08:04:37', 0.146008, '0', 403),
(16, 'load/signup', 'get', NULL, '', '127.0.0.1', '2015-07-15 08:06:11', 0.337019, '0', 403),
(17, 'load/signup', 'get', NULL, '', '127.0.0.1', '2015-07-15 08:06:39', 0.316018, '0', 403),
(18, 'load/signup', 'get', NULL, '', '127.0.0.1', '2015-07-15 08:11:10', 0.28601, '0', 403),
(19, 'load/signup', 'get', NULL, '123456', '127.0.0.1', '2015-07-15 08:13:24', 1.08501, '1', 0),
(20, 'load', 'get', NULL, '123456', '127.0.0.1', '2015-07-15 08:14:40', 0.103005, '1', 0),
(21, 'load', 'get', NULL, '', '127.0.0.1', '2015-07-15 08:14:48', 0.124007, '0', 403),
(22, 'load', 'get', NULL, '123456', '127.0.0.1', '2015-07-15 08:14:52', 0.0840039, '1', 0),
(23, 'load', 'get', NULL, '123456', '127.0.0.1', '2015-07-15 08:15:09', 0.133008, '1', 0),
(24, 'load/signup', 'get', NULL, '', '127.0.0.1', '2015-07-15 08:22:01', 0.362021, '0', 403),
(25, 'load/signup', 'get', NULL, '', '127.0.0.1', '2015-07-15 08:22:06', 0.136008, '0', 403),
(26, 'load/signup', 'get', NULL, '123456', '127.0.0.1', '2015-07-15 09:23:10', 0.193011, '1', 0),
(27, 'load/signup_post', 'get', NULL, '', '127.0.0.1', '2015-07-15 09:24:20', 0.126007, '0', 403),
(28, 'load/signup', 'get', NULL, '123456', '127.0.0.1', '2015-07-15 09:25:41', 0.089005, '1', 0),
(29, 'load/signup', 'get', NULL, '123456', '127.0.0.1', '2015-07-15 09:26:26', 0.17301, '1', 0),
(30, 'load/signup', 'get', NULL, '123456', '127.0.0.1', '2015-07-15 09:36:42', 0.18101, '1', 0),
(31, 'load/signup_post', 'get', NULL, '', '127.0.0.1', '2015-07-15 09:36:59', 0.171009, '0', 403),
(32, 'load/signup_post', 'get', NULL, '', '127.0.0.1', '2015-07-15 09:39:37', 0.218013, '0', 403),
(33, 'load/signup_post1', 'get', NULL, '', '127.0.0.1', '2015-07-15 09:39:44', 0.193011, '0', 403),
(34, 'load/signup', 'get', NULL, '123456', '127.0.0.1', '2015-07-15 09:44:10', 0.530019, '1', 0),
(35, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:7:"aaaaaaa";s:9:"firstName";s:5:"sasas";s:8:"lastName";s:6:"asasas";}', '123456', '127.0.0.1', '2015-07-15 09:44:41', 0.152001, '1', 0),
(36, 'load/signup', 'get', NULL, '123456', '127.0.0.1', '2015-07-15 09:53:40', 0.306017, '1', 0),
(37, 'load/signMe', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"dddd";s:9:"firstName";s:4:"asas";s:8:"lastName";s:5:"asasa";}', '123456', '127.0.0.1', '2015-07-15 09:54:59', 0.118006, '1', 200),
(38, 'load/signMe', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"dddd";s:9:"firstName";s:4:"asas";s:8:"lastName";s:5:"asasa";}', '123456', '127.0.0.1', '2015-07-15 09:55:55', 0.066004, '1', 200),
(39, 'load/signup', 'get', NULL, '123456', '127.0.0.1', '2015-07-15 10:15:11', 0.114007, '1', 0),
(40, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:5:"ccccc";s:9:"firstName";s:3:"sas";s:8:"lastName";s:4:"asas";}', '123456', '127.0.0.1', '2015-07-15 10:15:28', 0.099005, '1', 200),
(41, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:5:"ccccc";s:9:"firstName";s:3:"sas";s:8:"lastName";s:4:"asas";}', '123456', '127.0.0.1', '2015-07-15 10:48:05', NULL, '1', 0),
(42, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:5:"ccccc";s:9:"firstName";s:3:"sas";s:8:"lastName";s:4:"asas";}', '123456', '127.0.0.1', '2015-07-15 10:48:41', NULL, '1', 0),
(43, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:5:"ccccc";s:9:"firstName";s:3:"sas";s:8:"lastName";s:4:"asas";}', '123456', '127.0.0.1', '2015-07-15 10:51:18', NULL, '1', 0),
(44, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:5:"ccccc";s:9:"firstName";s:3:"sas";s:8:"lastName";s:4:"asas";}', '123456', '127.0.0.1', '2015-07-15 10:52:57', 0.129002, '1', 200),
(45, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:5:"ccccc";s:9:"firstName";s:3:"sas";s:8:"lastName";s:4:"asas";}', '123456', '127.0.0.1', '2015-07-15 10:53:34', 0.0640008, '1', 0),
(46, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:5:"ccccc";s:9:"firstName";s:3:"sas";s:8:"lastName";s:4:"asas";}', '123456', '127.0.0.1', '2015-07-15 10:57:30', 0.0730009, '1', 0),
(47, 'load/signup', 'get', NULL, '123456', '127.0.0.1', '2015-07-15 10:59:38', 0.503029, '1', 0),
(48, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:5:"bbbbb";s:9:"firstName";s:5:"sdsds";s:8:"lastName";s:7:"sdvvvvv";}', '123456', '127.0.0.1', '2015-07-15 11:00:03', 0.118003, '1', 0),
(49, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:5:"bbbbb";s:9:"firstName";s:5:"sdsds";s:8:"lastName";s:7:"sdvvvvv";}', '123456', '127.0.0.1', '2015-07-15 11:00:38', 0.0530021, '1', 0),
(50, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:5:"bbbbb";s:9:"firstName";s:5:"sdsds";s:8:"lastName";s:7:"sdvvvvv";}', '123456', '127.0.0.1', '2015-07-15 11:04:06', 0.049, '1', 0),
(51, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:5:"bbbbb";s:9:"firstName";s:5:"sdsds";s:8:"lastName";s:7:"sdvvvvv";}', '123456', '127.0.0.1', '2015-07-15 11:04:52', 0.0610018, '1', 0),
(52, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:5:"bbbbb";s:9:"firstName";s:5:"sdsds";s:8:"lastName";s:7:"sdvvvvv";}', '123456', '127.0.0.1', '2015-07-15 11:05:38', 0.153004, '1', 0),
(53, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:5:"bbbbb";s:9:"firstName";s:5:"sdsds";s:8:"lastName";s:7:"sdvvvvv";}', '123456', '127.0.0.1', '2015-07-15 11:07:45', 0.069001, '1', 0),
(54, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:5:"bbbbb";s:9:"firstName";s:5:"sdsds";s:8:"lastName";s:7:"sdvvvvv";}', '123456', '127.0.0.1', '2015-07-15 11:14:48', 0.05, '1', 0),
(55, 'load/signup', 'get', NULL, '123456', '127.0.0.1', '2015-07-15 11:18:50', 0.125005, '1', 0),
(56, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"xxxx";s:9:"firstName";s:4:"asas";s:8:"lastName";s:4:"asas";}', '123456', '127.0.0.1', '2015-07-15 11:19:04', 0.117005, '1', 0),
(57, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"xxxx";s:9:"firstName";s:4:"asas";s:8:"lastName";s:4:"asas";}', '123456', '127.0.0.1', '2015-07-15 11:19:22', 0.052001, '1', 0),
(58, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"xxxx";s:9:"firstName";s:4:"asas";s:8:"lastName";s:4:"asas";}', '123456', '127.0.0.1', '2015-07-15 11:32:45', 0.088006, '1', 0),
(59, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"xxxx";s:9:"firstName";s:4:"asas";s:8:"lastName";s:4:"asas";}', '123456', '127.0.0.1', '2015-07-15 11:33:05', 0.054003, '1', 0),
(60, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"xxxx";s:9:"firstName";s:4:"asas";s:8:"lastName";s:4:"asas";}', '123456', '127.0.0.1', '2015-07-15 11:34:06', 0.0990059, '1', 0),
(61, 'load/signup', 'get', NULL, '123456', '127.0.0.1', '2015-07-15 11:41:19', 0.110007, '1', 0),
(62, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"dddd";s:9:"firstName";s:3:"sds";s:8:"lastName";s:4:"sdsd";}', '123456', '127.0.0.1', '2015-07-15 11:41:38', 0.152008, '1', 0),
(63, 'load/signup', 'get', NULL, '123456', '127.0.0.1', '2015-07-15 11:43:39', 0.502029, '1', 0),
(64, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:6:"dev123";s:9:"firstName";s:3:"Dev";s:8:"lastName";s:5:"Singh";}', '123456', '127.0.0.1', '2015-07-15 11:44:15', 0.0720041, '1', 0),
(65, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:6:"dev123";s:9:"firstName";s:3:"Dev";s:8:"lastName";s:5:"Singh";}', '123456', '127.0.0.1', '2015-07-15 11:44:31', 0.057003, '1', 0),
(66, 'load/signup', 'get', NULL, '123456', '127.0.0.1', '2015-07-15 11:46:00', 0.163009, '1', 0),
(67, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:6:"dev123";s:9:"firstName";s:3:"Dev";s:8:"lastName";s:5:"Singh";}', '123456', '127.0.0.1', '2015-07-15 11:47:52', 0.099005, '1', 0),
(68, 'load/signup', 'get', NULL, '123456', '127.0.0.1', '2015-07-15 11:53:24', 0.17201, '1', 0),
(69, 'load/signup', 'get', NULL, '123456', '127.0.0.1', '2015-07-15 11:54:36', 0.132007, '1', 0),
(70, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:6:"dev123";s:9:"firstName";s:3:"Dev";s:8:"lastName";s:5:"Singh";}', '123456', '127.0.0.1', '2015-07-15 11:55:13', 0.0900049, '1', 0),
(71, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:6:"dev123";s:9:"firstName";s:3:"Dev";s:8:"lastName";s:5:"Singh";}', '123456', '127.0.0.1', '2015-07-15 11:57:39', 0.132008, '1', 0),
(72, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:6:"dev123";s:9:"firstName";s:3:"Dev";s:8:"lastName";s:5:"Singh";}', '123456', '127.0.0.1', '2015-07-15 11:57:44', 0.101006, '1', 0),
(73, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:6:"dev123";s:9:"firstName";s:3:"Dev";s:8:"lastName";s:5:"Singh";}', '123456', '127.0.0.1', '2015-07-15 11:58:18', 0.079005, '1', 0),
(74, 'load/signup', 'post', 'a:2:{i:0;s:5:"qwqww";i:1;s:5:"qwqww";}', '123456', '127.0.0.1', '2015-07-15 12:00:47', 0.0590041, '1', 0),
(75, 'load/signup', 'post', 'a:2:{i:0;s:5:"qwqww";i:1;s:5:"qwqww";}', '123456', '127.0.0.1', '2015-07-15 12:01:11', 0.063004, '1', 0),
(76, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:6:"dev123";s:9:"firstName";s:3:"Dev";s:8:"lastName";s:5:"Singh";}', '123456', '127.0.0.1', '2015-07-15 12:05:59', 0.0460029, '1', 0),
(77, 'load/signup', 'get', NULL, '123456', '127.0.0.1', '2015-07-15 12:14:26', 0.163005, '1', 0),
(78, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"aaaa";s:9:"firstName";s:3:"ass";s:8:"lastName";s:6:"asasas";}', '123456', '127.0.0.1', '2015-07-15 12:14:43', 0.0580039, '1', 0),
(79, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"aaaa";s:9:"firstName";s:3:"ass";s:8:"lastName";s:6:"asasas";}', '123456', '127.0.0.1', '2015-07-15 12:15:35', 0.0560009, '1', 0),
(80, 'load/signup', 'get', NULL, '123456', '127.0.0.1', '2015-07-15 12:21:46', 0.133007, '1', 0),
(81, 'load/signup', 'get', NULL, '123456', '127.0.0.1', '2015-07-15 12:22:22', 0.082005, '1', 0),
(82, 'load/signup', 'post', 'a:3:{s:86:"{"email":"dev_here2@gmail_com","password":"xxxx","firstName":"asas","lastName":"asas"}";s:0:"";i:0;s:0:"";i:1;s:0:"";}', '123456', '127.0.0.1', '2015-07-15 12:22:34', 0.0880051, '1', 0),
(83, 'load/signup', 'post', 'a:3:{s:86:"{"email":"dev_here2@gmail_com","password":"xxxx","firstName":"asas","lastName":"asas"}";s:0:"";i:0;s:0:"";i:1;s:0:"";}', '123456', '127.0.0.1', '2015-07-15 12:33:55', 0.100001, '1', 0),
(84, 'load/signup', 'post', 'a:3:{s:86:"{"email":"dev_here2@gmail_com","password":"xxxx","firstName":"asas","lastName":"asas"}";s:0:"";i:0;s:0:"";i:1;s:0:"";}', '123456', '127.0.0.1', '2015-07-15 12:34:27', 0.117001, '1', 0),
(85, 'load/signup', 'get', NULL, '123456', '127.0.0.1', '2015-07-15 12:35:14', 0.110006, '1', 0),
(86, 'load/signup', 'post', 'a:3:{s:80:"{"email":"dev@dev_com","password":"qqqq","firstName":"dfdff","lastName":"fdfdf"}";s:0:"";i:0;s:0:"";i:1;s:0:"";}', '123456', '127.0.0.1', '2015-07-15 12:36:33', 0.047003, '1', 0),
(87, 'load/signup', 'post', 'a:3:{s:80:"{"email":"dev@dev_com","password":"qqqq","firstName":"dfdff","lastName":"fdfdf"}";s:0:"";i:0;s:0:"";i:1;s:0:"";}', '123456', '127.0.0.1', '2015-07-15 12:37:14', 0.0530009, '1', 0),
(88, 'load/signup', 'get', NULL, '123456', '127.0.0.1', '2015-07-15 12:40:20', 0.070004, '1', 0),
(89, 'load/signup', 'post', 'a:1:{s:4:"post";s:15:"[object Object]";}', '123456', '127.0.0.1', '2015-07-15 12:40:37', 0.0750041, '1', 0),
(90, 'load/signup', 'get', NULL, '123456', '127.0.0.1', '2015-07-15 12:42:50', 0.22601, '1', 0),
(91, 'load/signup', 'post', 'a:3:{s:86:"{"email":"dev_here2@gmail_com","password":"dfdf","firstName":"asas","lastName":"dddd"}";s:0:"";i:0;s:0:"";i:1;s:0:"";}', '123456', '127.0.0.1', '2015-07-15 12:43:04', 0.101006, '1', 0),
(92, 'load/signup', 'get', NULL, '123456', '127.0.0.1', '2015-07-15 12:44:23', 0.086004, '1', 0),
(93, 'load/signup', 'post', 'a:3:{s:86:"{"email":"dev_here2@gmail_com","password":"ssss","firstName":"asas","lastName":"asas"}";s:0:"";i:0;s:0:"";i:1;s:0:"";}', '123456', '127.0.0.1', '2015-07-15 12:44:44', 0.0840049, '1', 0),
(94, 'load/signup', 'get', NULL, '123456', '127.0.0.1', '2015-07-15 12:47:33', 0.0880048, '1', 0),
(95, 'load/signup', 'post', 'a:3:{s:87:"{"email":"dev_here2@gmail_com","password":"dddd","firstName":"dsdsd","lastName":"dddd"}";s:0:"";i:0;s:0:"";i:1;s:0:"";}', '123456', '127.0.0.1', '2015-07-15 12:47:52', 0.0800049, '1', 0),
(96, 'load/signup', 'get', NULL, '123456', '127.0.0.1', '2015-07-15 12:49:26', 0.17001, '1', 0),
(97, 'load/signup', 'post', 'a:3:{s:86:"{"email":"dev_here2@gmail_com","password":"vvvv","firstName":"dfff","lastName":"ffff"}";s:0:"";i:0;s:0:"";i:1;s:0:"";}', '123456', '127.0.0.1', '2015-07-15 12:49:45', 0.080004, '1', 0),
(98, 'load/signup', 'get', NULL, '123456', '127.0.0.1', '2015-07-15 12:56:38', 0.0680041, '1', 0),
(99, 'load/signup', 'post', 'a:1:{s:4:"fkey";a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"ssss";s:9:"firstName";s:3:"ddd";s:8:"lastName";s:4:"ssss";}}', '123456', '127.0.0.1', '2015-07-15 12:56:56', 0.122005, '1', 0),
(100, 'load/signup', 'post', 'a:1:{s:4:"fkey";a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"ssss";s:9:"firstName";s:3:"ddd";s:8:"lastName";s:4:"ssss";}}', '123456', '127.0.0.1', '2015-07-15 13:08:55', 0.064003, '1', 0),
(101, 'load/signup', 'get', NULL, '123456', '127.0.0.1', '2015-07-15 13:08:59', 0.076005, '1', 0),
(102, 'load/signup', 'post', 'a:3:{s:87:"{"email":"dev_here2@gmail_com","password":"dddd","firstName":"ssss","lastName":"sssss"}";s:0:"";i:0;s:0:"";i:1;s:0:"";}', '123456', '127.0.0.1', '2015-07-15 13:09:13', 0.0560031, '1', 0),
(103, 'load/signup', 'get', NULL, '123456', '127.0.0.1', '2015-07-15 13:12:05', 0.0840049, '1', 0),
(104, 'load/signup', 'post', 'a:1:{s:4:"data";a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:5:"ddddd";s:9:"firstName";s:4:"dddd";s:8:"lastName";s:5:"ddddd";}}', '123456', '127.0.0.1', '2015-07-15 13:12:16', 0.131007, '1', 0),
(105, 'load/signup', 'post', 'a:1:{s:4:"data";a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:5:"ddddd";s:9:"firstName";s:4:"dddd";s:8:"lastName";s:5:"ddddd";}}', '123456', '127.0.0.1', '2015-07-15 13:12:50', 0.18001, '1', 0),
(106, 'load/signup', 'get', NULL, '123456', '127.0.0.1', '2015-07-15 13:13:59', 0.126007, '1', 0),
(107, 'load/signup', 'post', 'a:3:{s:94:"{"data":{"email":"dev_here2@gmail_com","password":"dddd","firstName":"ddd","lastName":"dddd"}}";s:0:"";i:0;s:0:"";i:1;s:0:"";}', '123456', '127.0.0.1', '2015-07-15 13:14:13', 0.079005, '1', 0),
(108, 'load/signup', 'get', NULL, '123456', '127.0.0.1', '2015-07-15 13:14:47', 0.132007, '1', 0),
(109, 'load/signup', 'post', 'a:1:{s:4:"data";a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"dddd";s:9:"firstName";s:3:"ddd";s:8:"lastName";s:4:"dddd";}}', '123456', '127.0.0.1', '2015-07-15 13:14:56', 0.051003, '1', 0),
(110, 'load/signup', 'get', NULL, '123456', '127.0.0.1', '2015-07-15 13:15:52', 0.133007, '1', 0),
(111, 'load/signup', 'post', 'a:3:{s:94:"{"data":{"email":"dev_here2@gmail_com","password":"gggg","firstName":"ggg","lastName":"gggg"}}";s:0:"";i:0;s:0:"";i:1;s:0:"";}', '123456', '127.0.0.1', '2015-07-15 13:16:02', 0.122007, '1', 0),
(112, 'load/signup', 'get', NULL, '123456', '127.0.0.1', '2015-07-15 13:18:31', 0.103006, '1', 0),
(113, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"dddd";s:9:"firstName";s:4:"dddd";s:8:"lastName";s:4:"dddd";}', '123456', '127.0.0.1', '2015-07-15 13:18:43', 0.060003, '1', 0),
(114, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"dddd";s:9:"firstName";s:4:"dddd";s:8:"lastName";s:4:"dddd";}', '123456', '127.0.0.1', '2015-07-15 13:24:56', 0.057004, '1', 0),
(115, 'load/signup', 'get', NULL, '123456', '127.0.0.1', '2015-07-16 07:38:29', 0.304008, '1', 0),
(116, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 07:40:26', 0.093003, '1', 0),
(117, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 07:41:21', 0.0660012, '1', 0),
(118, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 07:41:46', 0.0970008, '1', 0),
(119, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 07:42:17', 0.222004, '1', 0),
(120, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 07:44:06', 0.0740011, '1', 0),
(121, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 07:47:40', 0.094002, '1', 0),
(122, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 07:47:43', 0.0799999, '1', 0),
(123, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 07:47:56', 0.043, '1', 0),
(124, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 08:13:20', 0.086005, '1', 0),
(125, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 08:15:15', 0.409023, '1', 0),
(126, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 08:36:10', 0.0599999, '1', 0),
(127, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 08:36:24', 0.137005, '1', 0),
(128, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 08:36:50', 0.0640011, '1', 0),
(129, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 08:38:02', 0.0550001, '1', 0),
(130, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 08:42:19', 0.071003, '1', 0),
(131, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 08:42:30', 0.0730011, '1', 0),
(132, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 08:49:40', NULL, '1', 0),
(133, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 08:52:30', 0.110001, '1', 0),
(134, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 09:00:31', 0.126007, '1', 0),
(135, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 09:01:24', 0.0599999, '1', 0),
(136, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 09:07:35', 0.0640011, '1', 0),
(137, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 09:41:36', 0.0860031, '1', 0),
(138, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 09:42:22', 0.105001, '1', 0),
(139, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 09:57:59', 0.0510011, '1', 0),
(140, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 10:03:37', 0.0910008, '1', 0),
(141, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 10:03:54', 0.059001, '1', 0),
(142, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 10:05:44', 0.0410001, '1', 0),
(143, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 10:19:14', NULL, '1', 0),
(144, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 10:20:47', 0.078001, '1', 0),
(145, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 10:21:28', 0.0670011, '1', 0),
(146, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 10:22:41', 0.0940049, '1', 0),
(147, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 10:24:05', 0.0950041, '1', 0),
(148, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 10:24:11', 0.356003, '1', 0),
(149, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 10:25:23', 0.1, '1', 0),
(150, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 10:28:39', 0.0690041, '1', 0),
(151, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 10:29:16', 0.0890028, '1', 0),
(152, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 10:29:29', 0.131004, '1', 0),
(153, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 10:32:26', 0.226008, '1', 0),
(154, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 10:39:28', 0.0699999, '1', 0),
(155, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 10:40:11', 0.0999999, '1', 0),
(156, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 10:40:52', 0.052002, '1', 0),
(157, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 10:43:59', 0.0799999, '1', 0),
(158, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 10:58:33', 0.110003, '1', 0),
(159, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 11:00:06', 0.0600021, '1', 0),
(160, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 11:02:06', 0.201003, '1', 0),
(161, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 11:02:26', 0.0760009, '1', 0),
(162, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 11:04:05', NULL, '1', 0),
(163, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 11:05:27', 0.0560031, '1', 0),
(164, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 11:05:53', 0.0609999, '1', 0),
(165, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 11:06:08', NULL, '1', 0),
(166, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 11:09:49', NULL, '1', 0),
(167, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 11:12:37', NULL, '1', 0),
(168, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 11:13:13', 0.0680039, '1', 0),
(169, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 11:13:21', 0.065001, '1', 0),
(170, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 11:13:49', 0.101, '1', 0),
(171, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 11:15:22', NULL, '1', 0),
(172, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 11:18:38', NULL, '1', 0),
(173, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 11:30:50', NULL, '1', 0),
(174, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 11:31:12', NULL, '1', 0),
(175, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 11:34:36', NULL, '1', 0),
(176, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 11:35:13', NULL, '1', 0),
(177, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 11:35:38', 0.0440001, '1', 0),
(178, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 11:35:59', NULL, '1', 0),
(179, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 11:38:00', 0.04, '1', 0),
(180, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 11:40:59', 0.0630021, '1', 0),
(181, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 11:43:57', 0.162005, '1', 0),
(182, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 11:45:04', 0.0660009, '1', 0),
(183, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 11:45:38', 0.062, '1', 0),
(184, 'load/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"wwww";s:9:"firstName";s:4:"1222";s:8:"lastName";s:5:"wewew";}', '123456', '127.0.0.1', '2015-07-16 11:47:25', 0.05, '1', 0),
(185, 'start/signup', 'get', NULL, '', '127.0.0.1', '2015-07-16 11:55:33', 0.195011, '0', 403),
(186, 'start/signup', 'get', NULL, '123456', '127.0.0.1', '2015-07-16 11:55:39', 0.096005, '1', 0),
(187, 'start/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"ssss";s:9:"firstName";s:7:"sasasas";s:8:"lastName";s:7:"assasas";}', '123456', '127.0.0.1', '2015-07-16 11:55:54', 0.051003, '1', 0),
(188, 'start/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"ssss";s:9:"firstName";s:7:"sasasas";s:8:"lastName";s:7:"assasas";}', '123456', '127.0.0.1', '2015-07-16 11:56:55', 0.116003, '1', 0),
(189, 'start/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"ssss";s:9:"firstName";s:7:"sasasas";s:8:"lastName";s:7:"assasas";}', '123456', '127.0.0.1', '2015-07-16 12:00:46', 0.038002, '1', 0),
(190, 'start/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"ssss";s:9:"firstName";s:7:"sasasas";s:8:"lastName";s:7:"assasas";}', '123456', '127.0.0.1', '2015-07-16 12:04:49', 0.0560009, '1', 0),
(191, 'start/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"ssss";s:9:"firstName";s:7:"sasasas";s:8:"lastName";s:7:"assasas";}', '123456', '127.0.0.1', '2015-07-16 12:05:04', 0.05, '1', 0),
(192, 'start/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"ssss";s:9:"firstName";s:7:"sasasas";s:8:"lastName";s:7:"assasas";}', '123456', '127.0.0.1', '2015-07-16 12:09:10', 0.062001, '1', 0),
(193, 'start/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"ssss";s:9:"firstName";s:7:"sasasas";s:8:"lastName";s:7:"assasas";}', '123456', '127.0.0.1', '2015-07-16 12:19:05', 0.196006, '1', 0),
(194, 'start/signup', 'get', NULL, '', '127.0.0.1', '2015-07-16 12:24:00', 0.133007, '0', 403),
(195, 'start/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"ssss";s:9:"firstName";s:7:"sasasas";s:8:"lastName";s:7:"assasas";}', '123456', '127.0.0.1', '2015-07-16 12:25:39', 0.045001, '1', 0),
(196, 'start/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"ssss";s:9:"firstName";s:7:"sasasas";s:8:"lastName";s:7:"assasas";}', '123456', '127.0.0.1', '2015-07-16 12:25:55', 0.0599999, '1', 0),
(197, 'start/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"ssss";s:9:"firstName";s:7:"sasasas";s:8:"lastName";s:7:"assasas";}', '123456', '127.0.0.1', '2015-07-16 12:34:29', 0.05, '1', 0),
(198, 'start/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"ssss";s:9:"firstName";s:7:"sasasas";s:8:"lastName";s:7:"assasas";}', '123456', '127.0.0.1', '2015-07-16 12:39:32', 0.116005, '1', 0),
(199, 'start/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"ssss";s:9:"firstName";s:7:"sasasas";s:8:"lastName";s:7:"assasas";}', '123456', '127.0.0.1', '2015-07-16 12:41:36', 0.068002, '1', 0),
(200, 'start/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"ssss";s:9:"firstName";s:7:"sasasas";s:8:"lastName";s:7:"assasas";}', '123456', '127.0.0.1', '2015-07-16 12:41:45', 0.0820019, '1', 0),
(201, 'start/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"ssss";s:9:"firstName";s:7:"sasasas";s:8:"lastName";s:7:"assasas";}', '123456', '127.0.0.1', '2015-07-16 12:41:59', 0.0830019, '1', 0),
(202, 'start/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"ssss";s:9:"firstName";s:7:"sasasas";s:8:"lastName";s:7:"assasas";}', '123456', '127.0.0.1', '2015-07-16 12:45:35', 0.0910008, '1', 0),
(203, 'start/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"ssss";s:9:"firstName";s:7:"sasasas";s:8:"lastName";s:7:"assasas";}', '123456', '127.0.0.1', '2015-07-16 12:45:46', 0.0840008, '1', 0),
(204, 'start/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"ssss";s:9:"firstName";s:7:"sasasas";s:8:"lastName";s:7:"assasas";}', '123456', '127.0.0.1', '2015-07-16 13:04:23', NULL, '1', 0),
(205, 'start/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"ssss";s:9:"firstName";s:7:"sasasas";s:8:"lastName";s:7:"assasas";}', '123456', '127.0.0.1', '2015-07-16 13:05:35', 0.164002, '1', 0),
(206, 'start/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"ssss";s:9:"firstName";s:7:"sasasas";s:8:"lastName";s:7:"assasas";}', '123456', '127.0.0.1', '2015-07-16 13:13:36', 0.330007, '1', 0),
(207, 'start/signup', 'get', NULL, '123456', '127.0.0.1', '2015-07-16 13:13:52', 0.136002, '1', 0),
(208, 'start/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"pppp";s:9:"firstName";s:3:"opp";s:8:"lastName";s:5:"opopo";}', '123456', '127.0.0.1', '2015-07-16 13:14:07', 0.144006, '1', 0),
(209, 'start/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"pppp";s:9:"firstName";s:3:"opp";s:8:"lastName";s:5:"opopo";}', '123456', '127.0.0.1', '2015-07-16 13:14:57', 0.0870011, '1', 0),
(210, 'start/signup', 'post', 'a:4:{s:5:"email";s:19:"dev.here2@gmail.com";s:8:"password";s:4:"pppp";s:9:"firstName";s:3:"opp";s:8:"lastName";s:5:"opopo";}', '123456', '127.0.0.1', '2015-07-16 13:15:07', 0.0900011, '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `app_table_alias`
--

CREATE TABLE IF NOT EXISTS `app_table_alias` (
  `tbAlias` int(11) NOT NULL,
  `tbAlias_name` varchar(250) NOT NULL,
  `tbAlias_alias` varchar(250) NOT NULL,
  `tbAlias_cstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tbAlias_ustamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_table_alias`
--

INSERT INTO `app_table_alias` (`tbAlias`, `tbAlias_name`, `tbAlias_alias`, `tbAlias_cstamp`, `tbAlias_ustamp`) VALUES
(1, 'app_user_register', 'userReg', '2015-07-06 12:09:10', '0000-00-00 00:00:00'),
(2, 'app_user_data', 'userData', '2015-07-06 12:09:10', '0000-00-00 00:00:00'),
(3, 'app_table_alias', 'tbAlias', '2015-07-06 12:09:10', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `app_user_data`
--

CREATE TABLE IF NOT EXISTS `app_user_data` (
  `userData_id` int(250) NOT NULL,
  `userReg_id` int(250) NOT NULL,
  `userReg_recordHash` varchar(500) NOT NULL,
  `userReg_unique_id` varchar(500) NOT NULL,
  `userReg_user_name` varchar(500) NOT NULL,
  `userReg_email_id` varchar(500) NOT NULL,
  `userReg_password` varchar(500) NOT NULL,
  `userData_firstname` varchar(100) NOT NULL,
  `userData_lastname` varchar(100) NOT NULL,
  `userData_image` text NOT NULL,
  `userData_gender` varchar(20) NOT NULL,
  `userData_birthday` varchar(100) NOT NULL,
  `userData_location` varchar(100) NOT NULL,
  `userData_hometown` varchar(100) NOT NULL,
  `userData_relationship` varchar(100) NOT NULL,
  `userData_timezone` varchar(100) NOT NULL,
  `userReg_cstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userReg_ustamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app_user_register`
--

CREATE TABLE IF NOT EXISTS `app_user_register` (
  `userReg_id` bigint(20) NOT NULL,
  `userReg_unique_id` varchar(500) NOT NULL,
  `userReg_recordHash` varchar(500) DEFAULT NULL,
  `userReg_user_name` varchar(500) NOT NULL,
  `userReg_email_id` varchar(500) NOT NULL,
  `userReg_password` varchar(500) NOT NULL,
  `userReg_status` int(10) NOT NULL,
  `userReg_unlogincount` int(20) NOT NULL,
  `userReg_cstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userReg_ustamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_user_register`
--

INSERT INTO `app_user_register` (`userReg_id`, `userReg_unique_id`, `userReg_recordHash`, `userReg_user_name`, `userReg_email_id`, `userReg_password`, `userReg_status`, `userReg_unlogincount`, `userReg_cstamp`, `userReg_ustamp`) VALUES
(1, 'qw', 'sas', 'asas', 'asas', 'asasas', 0, 0, '2015-07-16 03:23:18', '2015-07-16 03:23:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_rest_keys`
--
ALTER TABLE `app_rest_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_rest_logs`
--
ALTER TABLE `app_rest_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_table_alias`
--
ALTER TABLE `app_table_alias`
  ADD PRIMARY KEY (`tbAlias`);

--
-- Indexes for table `app_user_register`
--
ALTER TABLE `app_user_register`
  ADD PRIMARY KEY (`userReg_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_rest_keys`
--
ALTER TABLE `app_rest_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `app_rest_logs`
--
ALTER TABLE `app_rest_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=211;
--
-- AUTO_INCREMENT for table `app_table_alias`
--
ALTER TABLE `app_table_alias`
  MODIFY `tbAlias` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `app_user_register`
--
ALTER TABLE `app_user_register`
  MODIFY `userReg_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
