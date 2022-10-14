-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 14, 2022 at 03:13 PM
-- Server version: 10.3.34-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `MYCA`
--

-- --------------------------------------------------------

--
-- Table structure for table `anticheat_settings`
--

CREATE TABLE `anticheat_settings` (
  `ac_code` int(2) NOT NULL,
  `ac_code_trigger_type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `anticheat_settings`
--

INSERT INTO `anticheat_settings` (`ac_code`, `ac_code_trigger_type`) VALUES
(0, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 2),
(39, 1),
(40, 0),
(41, 0),
(42, 2),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 0),
(49, 0),
(50, 0),
(51, 1),
(52, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

CREATE TABLE `bans` (
  `id` int(10) NOT NULL,
  `username` varchar(24) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `bannedby` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `reason` varchar(128) DEFAULT NULL,
  `permanent` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bans`
--

INSERT INTO `bans` (`id`, `username`, `ip`, `bannedby`, `date`, `reason`, `permanent`) VALUES
(2, 'n/a', '255.255.255.255', 'lei_sy', '2022-10-04 16:33:09', 'N/A', 0),
(3, 'Rapido_Alvarez', '122.54.145.0', 'lei_sy', '2022-10-04 16:55:30', 'wag kana bumalik di ka need dito abuser ', 0),
(5, 'Ogbaboy_El_Groove', '180.190.125.94', 'Myca_Yurong', '2022-10-06 18:54:10', '.', 0),
(6, 'Jp_Antonio', '120.29.110.121', 'Myca_Cute', '2022-10-10 06:53:13', 'PM MOKO ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `businesses`
--

CREATE TABLE `businesses` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT 0,
  `owner` varchar(24) DEFAULT 'Nobody',
  `name` varchar(64) DEFAULT 'Unamed Business',
  `message` varchar(128) DEFAULT 'Welcome to the business!',
  `type` tinyint(2) DEFAULT 0,
  `price` int(10) DEFAULT 0,
  `entryfee` int(10) DEFAULT 0,
  `locked` tinyint(1) DEFAULT 1,
  `timestamp` int(10) DEFAULT 0,
  `pos_x` float DEFAULT 0,
  `pos_y` float DEFAULT 0,
  `pos_z` float DEFAULT 0,
  `pos_a` float DEFAULT 0,
  `int_x` float DEFAULT 0,
  `int_y` float DEFAULT 0,
  `int_z` float DEFAULT 0,
  `int_a` float DEFAULT 0,
  `interior` tinyint(2) DEFAULT 0,
  `world` int(10) DEFAULT 0,
  `outsideint` tinyint(2) DEFAULT 0,
  `outsidevw` int(10) DEFAULT 0,
  `cash` int(10) DEFAULT 0,
  `products` int(10) DEFAULT 500,
  `robbed` smallint(6) NOT NULL DEFAULT 3,
  `robbing` int(11) DEFAULT NULL,
  `prices0` int(11) NOT NULL DEFAULT 0,
  `prices1` int(11) NOT NULL DEFAULT 0,
  `prices2` int(11) NOT NULL DEFAULT 0,
  `prices3` int(11) NOT NULL DEFAULT 0,
  `prices4` int(11) NOT NULL DEFAULT 0,
  `prices5` int(11) NOT NULL DEFAULT 0,
  `prices6` int(11) NOT NULL DEFAULT 0,
  `prices7` int(11) NOT NULL DEFAULT 0,
  `prices8` int(11) NOT NULL DEFAULT 0,
  `prices9` int(11) NOT NULL DEFAULT 0,
  `prices10` int(11) NOT NULL DEFAULT 0,
  `prices11` int(11) NOT NULL DEFAULT 0,
  `prices12` int(11) NOT NULL DEFAULT 0,
  `prices13` int(11) NOT NULL DEFAULT 0,
  `prices14` int(11) NOT NULL DEFAULT 0,
  `prices15` int(11) NOT NULL DEFAULT 0,
  `prices16` int(11) NOT NULL DEFAULT 0,
  `prices17` int(11) NOT NULL DEFAULT 0,
  `prices18` int(11) NOT NULL DEFAULT 0,
  `prices19` int(11) NOT NULL DEFAULT 0,
  `prices20` int(11) NOT NULL DEFAULT 0,
  `prices21` int(11) NOT NULL DEFAULT 0,
  `prices22` int(11) NOT NULL DEFAULT 0,
  `prices23` int(11) NOT NULL DEFAULT 0,
  `prices24` int(11) NOT NULL DEFAULT 0,
  `Car0PosX` float NOT NULL DEFAULT 0,
  `Car0PosY` float NOT NULL DEFAULT 0,
  `Car0PosZ` float NOT NULL DEFAULT 0,
  `Car0PosAngle` float NOT NULL DEFAULT 0,
  `Car0ModelId` int(11) NOT NULL DEFAULT 0,
  `Car0Price` int(11) NOT NULL DEFAULT 0,
  `Car1PosX` float NOT NULL DEFAULT 0,
  `Car1PosY` float NOT NULL DEFAULT 0,
  `Car1PosZ` float NOT NULL DEFAULT 0,
  `Car1PosAngle` float NOT NULL DEFAULT 0,
  `Car1ModelId` int(11) NOT NULL DEFAULT 0,
  `Car1Price` int(11) NOT NULL DEFAULT 0,
  `Car2PosX` float NOT NULL DEFAULT 0,
  `Car2PosY` float NOT NULL DEFAULT 0,
  `Car2PosZ` float NOT NULL DEFAULT 0,
  `Car2PosAngle` float NOT NULL DEFAULT 0,
  `Car2ModelId` int(11) NOT NULL DEFAULT 0,
  `Car2Price` int(11) NOT NULL DEFAULT 0,
  `Car3PosX` float NOT NULL DEFAULT 0,
  `Car3PosY` float NOT NULL DEFAULT 0,
  `Car3PosZ` float NOT NULL DEFAULT 0,
  `Car3PosAngle` float NOT NULL DEFAULT 0,
  `Car3ModelId` int(11) NOT NULL DEFAULT 0,
  `Car3Price` int(11) NOT NULL DEFAULT 0,
  `Car1Stock` int(11) NOT NULL DEFAULT 0,
  `Car2Stock` int(11) NOT NULL DEFAULT 0,
  `Car3Stock` int(11) NOT NULL DEFAULT 0,
  `Car1Order` int(11) NOT NULL DEFAULT 0,
  `Car2Order` int(11) NOT NULL DEFAULT 0,
  `Car3Order` int(11) NOT NULL DEFAULT 0,
  `Car4PosX` float NOT NULL DEFAULT 0,
  `Car4PosY` float NOT NULL DEFAULT 0,
  `Car4PosZ` float NOT NULL DEFAULT 0,
  `Car4PosAngle` float NOT NULL DEFAULT 0,
  `Car4ModelId` int(11) NOT NULL DEFAULT 0,
  `Car4Price` int(11) NOT NULL DEFAULT 0,
  `Car5PosX` int(11) NOT NULL DEFAULT 0,
  `Car5PosY` float NOT NULL DEFAULT 0,
  `Car5PosZ` float NOT NULL DEFAULT 0,
  `Car5PosAngle` float NOT NULL DEFAULT 0,
  `Car5ModelId` int(11) NOT NULL DEFAULT 0,
  `Car5Price` int(11) NOT NULL DEFAULT 0,
  `Car6PosX` float NOT NULL DEFAULT 0,
  `Car6PosY` float NOT NULL DEFAULT 0,
  `Car6PosZ` float NOT NULL DEFAULT 0,
  `Car6PosAngle` float NOT NULL DEFAULT 0,
  `Car6ModelId` int(11) NOT NULL DEFAULT 0,
  `Car6Price` int(11) NOT NULL DEFAULT 0,
  `Car7PosX` float NOT NULL DEFAULT 0,
  `Car7PosY` float NOT NULL DEFAULT 0,
  `Car7PosZ` float NOT NULL DEFAULT 0,
  `Car7PosAngle` float NOT NULL DEFAULT 0,
  `Car7ModelId` int(11) NOT NULL DEFAULT 0,
  `Car7Price` int(11) NOT NULL DEFAULT 0,
  `Car8PosX` float NOT NULL DEFAULT 0,
  `Car8PosY` float NOT NULL DEFAULT 0,
  `Car8PosZ` float NOT NULL DEFAULT 0,
  `Car8PosAngle` float NOT NULL DEFAULT 0,
  `Car8ModelId` int(11) NOT NULL DEFAULT 0,
  `Car8Price` int(11) NOT NULL DEFAULT 0,
  `Car9PosX` float NOT NULL DEFAULT 0,
  `Car9PosY` float NOT NULL DEFAULT 0,
  `Car9PosZ` float NOT NULL DEFAULT 0,
  `Car9PosAngle` float NOT NULL DEFAULT 0,
  `Car9ModelId` int(11) NOT NULL DEFAULT 0,
  `Car9Price` int(11) NOT NULL DEFAULT 0,
  `PurchaseX` float NOT NULL DEFAULT 0,
  `PurchaseY` float NOT NULL DEFAULT 0,
  `PurchaseZ` float NOT NULL DEFAULT 0,
  `PurchaseAngle` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `businesses`
--

INSERT INTO `businesses` (`id`, `ownerid`, `owner`, `name`, `message`, `type`, `price`, `entryfee`, `locked`, `timestamp`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `int_x`, `int_y`, `int_z`, `int_a`, `interior`, `world`, `outsideint`, `outsidevw`, `cash`, `products`, `robbed`, `robbing`, `prices0`, `prices1`, `prices2`, `prices3`, `prices4`, `prices5`, `prices6`, `prices7`, `prices8`, `prices9`, `prices10`, `prices11`, `prices12`, `prices13`, `prices14`, `prices15`, `prices16`, `prices17`, `prices18`, `prices19`, `prices20`, `prices21`, `prices22`, `prices23`, `prices24`, `Car0PosX`, `Car0PosY`, `Car0PosZ`, `Car0PosAngle`, `Car0ModelId`, `Car0Price`, `Car1PosX`, `Car1PosY`, `Car1PosZ`, `Car1PosAngle`, `Car1ModelId`, `Car1Price`, `Car2PosX`, `Car2PosY`, `Car2PosZ`, `Car2PosAngle`, `Car2ModelId`, `Car2Price`, `Car3PosX`, `Car3PosY`, `Car3PosZ`, `Car3PosAngle`, `Car3ModelId`, `Car3Price`, `Car1Stock`, `Car2Stock`, `Car3Stock`, `Car1Order`, `Car2Order`, `Car3Order`, `Car4PosX`, `Car4PosY`, `Car4PosZ`, `Car4PosAngle`, `Car4ModelId`, `Car4Price`, `Car5PosX`, `Car5PosY`, `Car5PosZ`, `Car5PosAngle`, `Car5ModelId`, `Car5Price`, `Car6PosX`, `Car6PosY`, `Car6PosZ`, `Car6PosAngle`, `Car6ModelId`, `Car6Price`, `Car7PosX`, `Car7PosY`, `Car7PosZ`, `Car7PosAngle`, `Car7ModelId`, `Car7Price`, `Car8PosX`, `Car8PosY`, `Car8PosZ`, `Car8PosAngle`, `Car8ModelId`, `Car8Price`, `Car9PosX`, `Car9PosY`, `Car9PosZ`, `Car9PosAngle`, `Car9ModelId`, `Car9Price`, `PurchaseX`, `PurchaseY`, `PurchaseZ`, `PurchaseAngle`) VALUES
(1, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} 7/11 (500 Products left). Type /buy to purchase from this business.', 0, 10000000, 0, 0, 0, 1154.73, -1440.29, 15.797, 94.873, -27.438, -57.611, 1003.55, 0, 6, 3000001, 0, 0, -2489, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Clothing Line (500 Products left). Type /buy to purchase from this business.', 2, 10000000, 0, 0, 0, 1154.73, -1458.18, 15.797, 81.626, 204.386, -168.459, 1000.52, 0, 14, 3000002, 0, 0, 0, 306, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 21, 'Myca_Cute', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Ammunation (500 Products left). Type /buy to purchase from this business.', 1, 12000000, 0, 0, 1664895138, 1369, -1279.67, 13.547, 96.024, 316.287, -169.647, 999.601, 0, 6, 3000003, 0, 0, 36096, 484, 0, 0, 10000, 10000, 10000, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Resturant (500 Products left). Type /buy to purchase from this business.', 4, 10000000, 0, 0, 0, 1102.41, -1440.17, 15.797, -90.384, 363.328, -74.65, 1001.51, 315, 10, 3000004, 0, 0, 0, 358, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Pharmacy (500 Products left). Type /buy to purchase from this business.', 7, 10000000, 0, 0, 0, 1102.41, -1458.1, 15.797, -93.221, 6.016, -31.035, 1003.55, 0, 10, 3000005, 0, 0, 0, 450, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Advertisement Agency. /(ad)vertise to make an advertisement.', 5, 5000000, 0, 0, 0, 1098.6, -1473.55, 15.797, -104.999, 834.152, 7.41, 1004.19, 90, 3, 3000006, 0, 0, 0, 500, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Club/Bar (500 Products left). Type /buy to purchase from this business.', 6, 8000000, 0, 0, 0, 1158.49, -1473.52, 15.797, 119.565, 501.869, -68.005, 998.758, 179.612, 11, 3000008, 0, 0, 0, 492, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} 7/11 (500 Products left). Type /buy to purchase from this business.', 0, 10000000, 0, 0, 0, 376.042, -2067.19, 7.836, -175.978, -27.438, -57.611, 1003.55, 0, 6, 3000009, 0, 0, 0, 492, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Ammunation (500 Products left). Type /buy to purchase from this business.', 1, 12000000, 0, 0, 0, 1157.48, -1506.89, 15.797, 71.897, 316.287, -169.647, 999.601, 0, 6, 3000010, 0, 0, 0, 442, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Gym. /buy to purchase a fighting style.', 3, 3000000, 0, 0, 0, 1099.54, -1507.14, 15.797, -62.1, 773.78, -78.258, 1000.66, 0, 7, 3000011, 0, 0, 0, 500, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} 7/11 (500 Products left). Type /buy to purchase from this business.', 0, 10000000, 0, 0, 0, 1112.35, -1521.11, 15.797, -11.628, -27.438, -57.611, 1003.55, 0, 6, 3000013, 0, 0, -1163, 469, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Resturant (500 Products left). Type /buy to purchase from this business.', 4, 10000000, 0, 0, 0, 1144.19, -1521.24, 15.797, 22.211, 363.328, -74.65, 1001.51, 315, 10, 3000014, 0, 0, 0, 486, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} 7/11 (500 Products left). Type /buy to purchase from this business.', 0, 10000000, 0, 0, 0, 855.118, -1212.54, 17.152, 177.6, -27.438, -57.611, 1003.55, 0, 6, 3000015, 0, 0, 0, 494, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} 7/11 (500 Products left). Type /buy to purchase from this business.', 0, 10000000, 0, 0, 0, 1352.42, -1759.25, 13.508, -1.223, -27.438, -57.611, 1003.55, 0, 6, 3000016, 0, 0, 0, 500, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} 7/11 (500 Products left). Type /buy to purchase from this business.', 0, 10000000, 0, 0, 0, 1000.58, -919.854, 42.328, 104.785, -27.438, -57.611, 1003.55, 0, 6, 3000017, 0, 0, 0, 500, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} 7/11 (500 Products left). Type /buy to purchase from this business.', 0, 10000000, 0, 0, 0, 2247.66, 2396.17, 10.82, -3.873, -27.438, -57.611, 1003.55, 0, 6, 3000018, 0, 0, 0, 499, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Resturant (500 Products left). Type /buy to purchase from this business.', 4, 10000000, 0, 0, 0, 1199.22, -918.146, 43.123, -177.663, 363.328, -74.65, 1001.51, 315, 10, 3000019, 0, 0, 0, 500, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Resturant (500 Products left). Type /buy to purchase from this business.', 4, 10000000, 0, 1, 0, 928.916, -1352.89, 13.344, 91.421, 363.328, -74.65, 1001.51, 315, 10, 3000020, 0, 0, 0, 500, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Resturant (500 Products left). Type /buy to purchase from this business.', 4, 10000000, 0, 0, 0, 810.485, -1616.29, 13.547, -94.275, 363.328, -74.65, 1001.51, 315, 10, 3000021, 0, 0, 0, 500, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Resturant (500 Products left). Type /buy to purchase from this business.', 4, 10000000, 0, 0, 0, 852.092, -2126.47, 2.51, -179.242, 363.328, -74.65, 1001.51, 315, 10, 3000022, 0, 0, 0, 498, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} 7/11 (500 Products left). Type /buy to purchase from this business.', 0, 10000000, 0, 0, 0, 1567.99, -1898.01, 13.561, -1.924, -27.438, -57.611, 1003.55, 0, 6, 3000023, 0, 0, 0, 500, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Clothing Line (500 Products left). Type /buy to purchase from this business.', 2, 10000000, 0, 0, 0, 499.509, -1360.62, 16.369, -15.504, 204.386, -168.459, 1000.52, 0, 14, 3000024, 0, 0, 0, 500, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Pharmacy (500 Products left). Type /buy to purchase from this business.', 7, 10000000, 0, 0, 0, 781.319, -1572.83, 13.547, 72.659, 6.016, -31.035, 1003.55, 0, 10, 3000025, 0, 0, 0, 500, 1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Club/Bar (500 Products left). Type /buy to purchase from this business.', 6, 8000000, 0, 0, 0, 816.032, -1386.08, 13.597, -173.035, 501.869, -68.005, 998.758, 179.612, 11, 3000026, 0, 0, 0, 500, 1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `changes`
--

CREATE TABLE `changes` (
  `slot` tinyint(2) DEFAULT NULL,
  `text` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `charges`
--

CREATE TABLE `charges` (
  `id` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `chargedby` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `reason` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `charges`
--

INSERT INTO `charges` (`id`, `uid`, `chargedby`, `date`, `reason`) VALUES
(12, 47, 'Dex_montana', '2022-10-04 12:34:39', 'holdup'),
(13, 47, 'Dex_montana', '2022-10-04 12:34:47', 'murder'),
(17, 7, 'Dex_montana', '2022-10-04 15:11:42', 'murder'),
(18, 7, 'Dex_montana', '2022-10-04 15:11:51', 'multiple murder'),
(19, 32, 'Kai_Itchi', '2022-10-04 15:13:37', 'robbery'),
(20, 22, 'Dex_montana', '2022-10-05 02:13:31', 'attempted murder'),
(21, 55, 'Dex_montana', '2022-10-05 12:39:41', 'attempted murder'),
(23, 16, 'Kaizen_Fang', '2022-10-08 10:06:58', 'atempted murder'),
(24, 16, 'Dex_montana', '2022-10-08 12:31:23', 'murder'),
(25, 16, 'Dex_montana', '2022-10-08 12:34:47', 'multiple murder'),
(26, 97, 'Dex_montana', '2022-10-08 16:08:26', 'arrogant');

-- --------------------------------------------------------

--
-- Table structure for table `clothing`
--

CREATE TABLE `clothing` (
  `id` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `modelid` smallint(5) DEFAULT NULL,
  `boneid` tinyint(2) DEFAULT NULL,
  `attached` tinyint(1) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `rot_x` float DEFAULT NULL,
  `rot_y` float DEFAULT NULL,
  `rot_z` float DEFAULT NULL,
  `scale_x` float DEFAULT NULL,
  `scale_y` float DEFAULT NULL,
  `scale_z` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clothing`
--

INSERT INTO `clothing` (`id`, `uid`, `name`, `modelid`, `boneid`, `attached`, `pos_x`, `pos_y`, `pos_z`, `rot_x`, `rot_y`, `rot_z`, `scale_x`, `scale_y`, `scale_z`) VALUES
(7, 26, 'Wave back cap', 18940, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 26, 'Spiralled shades', 19011, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 21, 'Wavy glasses', 19035, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 30, 'Plain black shades', 19033, 2, 0, 0.097, 0.034, -0.004, -28.5, 90.3, 122.5, 1, 1.098, 1),
(11, 30, 'SWATArmour1', 19142, 1, 0, 0.153, 0, 0, 0, -1.7, 0, 0.71, 1.091, 1.094),
(12, 30, 'Black bucket hat', 18967, 2, 0, 0.11, 0.028, -0.002, 100.3, 91.6, -10.4, 1.043, 1.076, 1.015),
(13, 30, 'Cigarette', 19625, 2, 0, 0.008, 0.098, 0.011, 7.3, -2.8, -178.9, 1, 1, 1),
(16, 33, 'Katana', 3028, 1, 1, 0.351, -0.133, 0.253, 5.7, 63.2, -3.7, 1, 1, 1),
(17, 33, 'Katana', 3028, 1, 0, 0.426, -0.146, -0.102, -3.3, 127.3, 3.9, 1, 1, 1),
(18, 33, 'Bag of money', 1550, 1, 0, 0.208, -0.237, -0.029, -167.8, 89.6, -21.6, 1, 1, 1),
(20, 36, 'Blue shades', 19140, 2, 1, 0.087, 0.028, -0.001, 94.1, 90.8, -5, 1.046, 0.955, 1),
(21, 36, 'Grey armor', 19515, 1, 1, 0.081, 0.039, 0.012, 0, 0, 0, 0.982, 1.225, 1.06),
(24, 24, 'SWATArmour1', 19142, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, 46, 'Cigarette', 19625, 2, 1, 0.07, 0.11, 0.018, 9.4, 27.9, -170, 1, 1, 1),
(27, 47, 'm4', 356, 1, 1, -0.07, -0.176, 0, -1, 17.9, 10.4, 1, 1, 1),
(28, 46, 'm4', 356, 1, 1, -0.034, -0.172, 0, 0.7, 30.7, 4.2, 1, 1, 1),
(29, 47, 'Black bandana', 18896, 2, 1, -0.614, -0.068, 0, 0, 0, 0, 1, 1, 1),
(31, 47, 'Black bandana mask', 18912, 2, 0, -0.597, 0.008, -0.04, 0.1, 87.7, 95.1, 1, 1, 1),
(33, 7, 'm4', 356, 1, 1, 0.205, -0.136, -0.101, 177.3, 152.9, 5.2, 1, 1, 1),
(34, 47, 'Cigarette', 19625, 2, 1, 0.034, 0.246, 0, 0, 0, 0, 1, 1, 1),
(36, 56, 'Bag of money', 1550, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(38, 24, 'Motorcycle helmet', 18645, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(39, 40, 'Cigarette', 19625, 2, 1, 0.02, 0.096, -0.01, 174.4, 1.2, 0, 1.51, 1.766, 1.378),
(40, 40, 'Cigarette', 19625, 2, 1, 0.016, 0.112, 0.012, 13, -3, -179, 3, 3, 3),
(41, 40, 'Cigarette', 19625, 2, 1, 0.012, 0.1, -0.03, 159.6, 0, 0, 3, 3, 3),
(42, 61, 'Cigarette', 19625, 2, 1, 0.063, 0.106, 0.016, 151, -69.1, -36.5, 1, 1, 1),
(43, 61, 'm4', 356, 1, 1, 0, -0.272, 0.042, 0.6, 52.7, 0, 1, 1, 1),
(44, 61, 'shotgspa', 351, 5, 1, 0, 0.078, 0.039, 141.9, -3.1, -2.4, 1, 1, 1),
(47, 26, 'Bag of money', 1550, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(48, 33, 'Cigarette', 19625, 2, 0, 0.015, 0.065, 0.016, 0, 0, -173, 1, 1, 1),
(51, 33, 'Red bandana', 18892, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53, 65, 'Devil mask', 11704, 2, 1, 0.021, 0.127, 0.012, -12.7, 81.9, -169, 0.462, 3, 0.418),
(54, 22, 'Black bandana mask', 18912, 2, 1, 0.054, 0.045, 0, -93, -8.6, -85.4, 1, 1, 1),
(55, 22, 'Sports bag', 11745, 1, 1, -0.019, -0.03, 0.048, -49.5, 125.1, 145.3, 1, 1, 1),
(56, 22, 'SWATArmour1', 19142, 1, 1, 0.069, 0.052, 0.005, 0, 0, 0, 1, 1, 1),
(61, 56, 'SWATArmour1', 19142, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(62, 56, 'm4', 356, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(72, 87, 'shotgspa', 351, 2, 0, -0.022, 10.576, -0.72, 0, 0, 0, 0, 0, 0),
(73, 87, 'Plain black shades', 19033, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(80, 16, 'Holster', 19773, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(81, 16, 'Holster', 19773, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82, 8, 'Devil mask', 11704, 2, 1, 0.079, 0.091, 0, -174.3, 93.3, -9, 0.298, 0.437, 0.378),
(84, 98, 'm4', 356, 1, 1, 0.005, -0.184, 0.02, -0.7, 37.8, 0, 1, 1, 1),
(85, 87, 'shotgspa', 351, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(86, 87, 'Cigarette', 19625, 2, 1, 0.009, 0.108, 0.023, -131.8, 23.1, -16.7, 0.977, 0.981, 1.043);

-- --------------------------------------------------------

--
-- Table structure for table `crates`
--

CREATE TABLE `crates` (
  `id` int(11) NOT NULL,
  `cbObject` int(11) DEFAULT 964,
  `Facility` int(11) NOT NULL DEFAULT 0,
  `Group` int(11) NOT NULL DEFAULT -1,
  `CrateX` float(20,5) NOT NULL DEFAULT 0.00000,
  `CrateY` float(20,5) NOT NULL DEFAULT 0.00000,
  `CrateZ` float(20,5) NOT NULL DEFAULT 0.00000,
  `InVehicle` int(11) NOT NULL DEFAULT -1,
  `OnVehicle` int(11) NOT NULL DEFAULT -1,
  `Int` int(11) NOT NULL DEFAULT 0,
  `VW` int(11) NOT NULL DEFAULT 0,
  `Materials` int(11) NOT NULL DEFAULT 0,
  `Gun1` int(11) NOT NULL DEFAULT 0,
  `GunAmount1` int(11) NOT NULL DEFAULT 0,
  `Gun2` int(11) NOT NULL DEFAULT 0,
  `GunAmount2` int(11) NOT NULL DEFAULT 0,
  `Gun3` int(11) NOT NULL DEFAULT 0,
  `GunAmount3` int(11) NOT NULL DEFAULT 0,
  `Gun4` int(11) NOT NULL DEFAULT 0,
  `GunAmount4` int(11) NOT NULL DEFAULT 0,
  `Gun5` int(11) NOT NULL DEFAULT 0,
  `GunAmount5` int(11) NOT NULL DEFAULT 0,
  `Gun6` int(11) NOT NULL DEFAULT 0,
  `GunAmount6` int(11) NOT NULL DEFAULT 0,
  `Gun7` int(11) NOT NULL DEFAULT 0,
  `GunAmount7` int(11) NOT NULL DEFAULT 0,
  `Gun8` int(11) NOT NULL DEFAULT 0,
  `GunAmount8` int(11) NOT NULL DEFAULT 0,
  `Gun9` int(11) NOT NULL DEFAULT 0,
  `GunAmount9` int(11) NOT NULL DEFAULT 0,
  `Gun10` int(11) NOT NULL DEFAULT 0,
  `GunAmount10` int(11) NOT NULL DEFAULT 0,
  `Gun11` int(11) NOT NULL DEFAULT 0,
  `GunAmount11` int(11) NOT NULL DEFAULT 0,
  `Gun12` int(11) NOT NULL DEFAULT 0,
  `GunAmount12` int(11) NOT NULL DEFAULT 0,
  `Gun13` int(11) NOT NULL DEFAULT 0,
  `GunAmount13` int(11) NOT NULL DEFAULT 0,
  `Gun14` int(11) NOT NULL DEFAULT 0,
  `GunAmount14` int(11) NOT NULL DEFAULT 0,
  `Gun15` int(11) NOT NULL DEFAULT 0,
  `GunAmount16` int(11) NOT NULL DEFAULT 0,
  `GunAmount15` int(11) NOT NULL DEFAULT 0,
  `Gun16` int(11) NOT NULL DEFAULT 0,
  `PlacedBy` varchar(24) NOT NULL DEFAULT 'Unknown',
  `Lifespan` int(11) NOT NULL DEFAULT 0,
  `Transfer` int(1) NOT NULL DEFAULT 0,
  `DoorID` int(11) NOT NULL DEFAULT -1,
  `DoorType` int(11) NOT NULL DEFAULT -1,
  `Price` int(11) NOT NULL DEFAULT 0,
  `Paid` int(1) NOT NULL DEFAULT 0,
  `Active` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` tinyint(2) DEFAULT NULL,
  `divisionid` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `divisionid`, `name`) VALUES
(1, 1, 'I.N.T.E.L.C'),
(1, 2, 'S.W.A.T'),
(1, 3, 'H.P.G (hignway patrol)'),
(1, 4, 'O.F.F.I.C.E.R (incharge for int'),
(1, 0, 'S.A.F (Special.Action.Force)');

-- --------------------------------------------------------

--
-- Table structure for table `entrances`
--

CREATE TABLE `entrances` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT 0,
  `owner` varchar(24) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `iconid` smallint(5) DEFAULT 1239,
  `locked` tinyint(1) DEFAULT 0,
  `radius` float DEFAULT 3,
  `pos_x` float DEFAULT 0,
  `pos_y` float DEFAULT 0,
  `pos_z` float DEFAULT 0,
  `pos_a` float DEFAULT 0,
  `int_x` float DEFAULT 0,
  `int_y` float DEFAULT 0,
  `int_z` float DEFAULT 0,
  `int_a` float DEFAULT 0,
  `interior` tinyint(2) DEFAULT 0,
  `world` int(10) DEFAULT 0,
  `outsideint` tinyint(2) DEFAULT 0,
  `outsidevw` int(10) DEFAULT 0,
  `adminlevel` tinyint(2) DEFAULT 0,
  `factiontype` tinyint(2) DEFAULT 0,
  `vip` tinyint(2) DEFAULT 0,
  `vehicles` tinyint(1) DEFAULT 0,
  `freeze` tinyint(1) DEFAULT 0,
  `password` varchar(64) DEFAULT 'None',
  `label` tinyint(1) DEFAULT 1,
  `mapicon` tinyint(2) NOT NULL DEFAULT -1,
  `color` int(10) NOT NULL DEFAULT -256
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entrances`
--

INSERT INTO `entrances` (`id`, `ownerid`, `owner`, `name`, `iconid`, `locked`, `radius`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `int_x`, `int_y`, `int_z`, `int_a`, `interior`, `world`, `outsideint`, `outsidevw`, `adminlevel`, `factiontype`, `vip`, `vehicles`, `freeze`, `password`, `label`, `mapicon`, `color`) VALUES
(25, 0, NULL, 'Los Santos Police Department', 1247, 0, 3, 1554.04, -1675.71, 16.195, 278.581, -1947.87, -838.597, 4439.8, 180.762, 1, 1, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 30, -256),
(27, 0, NULL, 'All Saints Hospital', 1240, 0, 3, 1172.08, -1325.34, 15.407, 93.503, -1110.8, 2000.95, -58.92, 177.119, 0, 2, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 22, -256),
(28, 0, NULL, 'City Hall', 1313, 0, 3, 1480.88, -1774.48, 15.356, 181.508, 1249.02, -651.732, 1090.79, 273.93, 1, 1, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 56, -256),
(30, 0, NULL, 'Backdoor', 1313, 0, 3, 1656.07, -971.614, 683.683, 89.792, 1433.84, -967.634, 37.391, 56.506, 0, 0, 1, 4000029, 0, 0, 0, 0, 1, 'None', 1, -1, -256),
(33, 0, NULL, 'DMV', 1581, 0, 3, 2485.25, -1958.75, 13.581, 177.673, -2039.2, -134.043, -50.914, 356.771, 1, 4000033, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 53, -256),
(44, 0, NULL, 'Casino', 1239, 0, 3, 1286.61, -1349.8, 13.57, 90.558, 1049.94, -74.952, 1003.85, 264.708, 1, 0, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 12, -256),
(50, 0, NULL, 'Crack Lab', 1239, 0, 3, 2352, -1170.67, 28.075, -0.12, 2352.79, -1180.94, 1027.98, 92.316, 5, 4000050, 0, 0, 0, 0, 0, 0, 0, 'None', 1, 12, -256),
(51, 0, NULL, 'Drug House', 1239, 0, 3, 2165.92, -1671.21, 15.073, -135.096, 318.829, 1114.48, 1083.88, 359.864, 5, 4000051, 0, 0, 0, 0, 0, 0, 0, 'None', 1, 24, -256),
(70, 0, NULL, 'Drug Factory', 1239, 0, 3, 412.019, -1729.02, 9.285, -4.595, 2204.4, 1552.29, 1008.72, 93.624, 1, 4000070, 0, 0, 0, 0, 0, 0, 0, 'None', 1, 23, -256),
(73, 0, NULL, 'Material House', 1239, 0, 3, 2379.07, -2017.45, 14.833, -3.391, 2203.4, -1250.49, 1529.11, 88.234, 1, 4000073, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 23, -256),
(84, 0, NULL, 'Whitehouse Entrance', 1239, 0, 3, 1123.3, -2037.09, 69.887, -90.731, 288.034, 1827.14, 628.015, 85.998, 0, 1, 0, 0, 0, 0, 0, 0, 1, 'None', 1, -1, -256),
(107, 0, NULL, 'County General Hospital', 1241, 0, 5, 2034.23, -1401.67, 17.295, 170.394, -1110.74, 2000.95, -58.92, 182.484, 0, 1, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 22, -256),
(109, 0, NULL, 'VIP Garage', 19130, 0, 3, 1220.98, -1676.72, 12.654, 3.971, -4398.43, 874.6, 986.38, 169.638, 0, 0, 0, 0, 0, 0, 1, 1, 1, 'None', 1, 0, -256),
(111, 0, NULL, 'Press \' y \' to enter', 1239, 0, 15, -4430.15, 902.225, 986.728, 358.935, 1283.72, -1669.51, 13.547, 267.062, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'None', 1, 0, -256),
(115, 0, NULL, 'CHURCH', 1239, 0, 3, 1720.47, -1740.93, 13.547, 170.388, -2029.07, 1019.36, 1418.5, 89.606, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 0, -256),
(123, 0, NULL, 'Varrio Nuevo Killa', 1239, 0, 3, 2233.22, -1159.74, 25.891, -93.12, 2468.63, -1698.22, 1013.51, 269.843, 2, 4000123, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(130, 0, NULL, 'SANEWS', 1239, 0, 3, 648.533, -1360.76, 13.588, 93.283, 248.619, 1783.67, 701.086, 183.202, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 40, -256),
(136, 0, NULL, 'OPEN MEETING ROOM', 1239, 0, 3, 368.27, 194.207, 1008.38, -45.57, 0, 0, 0, 0, 0, 4000136, 3, 1, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(137, 0, NULL, '1st FLOOR - GROUND FLOOR', 1239, 0, 3, 350.143, 178.594, 1014.19, -172.571, 0, 0, 0, 0, 0, 4000137, 3, 1, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(138, 0, NULL, '2nd floor to 3rd floor', 1239, 0, 3, 344.676, 178.503, 1014.19, -171.318, 0, 0, 0, 0, 0, 4000138, 3, 1, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(139, 0, NULL, 'canteen', 1239, 0, 3, 333.397, 160.522, 1014.19, -79.534, 0, 0, 0, 0, 0, 4000139, 3, 1, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(144, 0, NULL, 'Paradise Bureau Of Investigatio', 1239, 0, 3, 328.335, -1512.14, 36.039, 54.586, 246.887, 62.41, 1003.64, 2.717, 6, 4000144, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 30, -256),
(150, 0, NULL, 'Tower', 1239, 0, 3, 1571.3, -1336.77, 16.484, 135.322, 1548.72, -1363.99, 326.218, 180.564, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(152, 101, 'Jp_Antonio', '\"Prison Outside\"', 1239, 0, 3, -2776.08, 1294.35, 3127.16, -89.043, 170.325, 1401.57, 10.586, 185.816, 0, 0, 6, 1, 0, 0, 0, 0, 1, 'None', 1, -1, -256),
(166, 0, NULL, 'Rooftop', 1239, 0, 3, 306.399, -159.17, 999.594, -83.922, 1406.08, -1257.71, 33.56, 358.009, 0, 4000166, 6, 3000015, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(168, 0, NULL, 'Paradise City Arena', 1239, 0, 3, 409.251, -1756.66, 8.289, 179.048, 386.111, 1257.12, -59.793, 357.171, 1, 1000, 0, 0, 0, 0, 0, 0, 1, 'None', 1, -1, -256),
(169, 0, NULL, 'Las Venturas Hospital', 11738, 0, 3, 1607.19, 1815.24, 10.88, 176.715, -1110.8, 2000.95, -58.92, 177.119, 0, 3, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 22, -256),
(170, 0, NULL, 'Las Venturas MetroBank', 1274, 0, 3, 2364.9, 2377.55, 10.82, 91.794, 1667.39, -995.437, 683.691, 354.686, 1, 102312, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 52, -256),
(171, 0, NULL, 'Las Venturas Police Station', 1247, 0, 3, 2337.18, 2459.31, 14.974, 179.517, 288.797, 166.957, 1007.17, 359.892, 3, 10323, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 30, -256),
(172, 0, NULL, 'Las Venturas CityHall', 1314, 0, 3, 2196.93, 1677.11, 12.367, 92.081, 1249.02, -651.732, 1090.79, 273.93, 1, 100032, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 56, -256),
(173, 0, NULL, 'Pawnshop', 19135, 0, 3, 1163.17, -1489.63, 15.418, 91.178, 82.089, 2496.31, 2001.09, 358.576, 1, 0, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 0, -256),
(174, 0, NULL, 'Mechanic Office', 1239, 0, 3, 861.051, -1196.09, 17.654, -90.736, -2026.95, -103.674, 1035.17, 179.849, 3, 32131, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 26, -256),
(185, 0, NULL, 'Allsaints Rooftop', 1239, 0, 3, -1111.06, 1957.7, -58.914, 0.276, 1161.18, -1336.73, 31.502, 178.473, 0, 0, 0, 2, 0, 0, 0, 0, 1, 'None', 1, -1, -256),
(186, 0, NULL, 'Paradise City Prison', 1239, 0, 3, 238.292, 1367.51, 11.066, -90.157, -2807.87, 1316.94, 3127.16, 177.568, 6, 1, 0, 0, 0, 10, 0, 0, 1, 'None', 1, -1, -256),
(198, 0, NULL, 'Poloce Department Rooftop', 1239, 0, 3, 238.784, 138.627, 1003.02, 1.209, 2260.11, 2458.09, 38.684, 0.407, 0, 0, 3, 10323, 0, 0, 0, 0, 1, 'None', 1, -1, -256),
(199, 0, NULL, 'Las Venturas Hp Rooftop', 1239, 0, 3, -1111.11, 1957.75, -58.914, 176.067, 1596.15, 1785.98, 30.469, 1.491, 0, 0, 0, 3, 0, 0, 0, 0, 1, 'None', 1, -1, -256),
(201, 0, NULL, 'Tambayan NG Mga Kupal', 1239, 0, 3, 1279.72, -1424.85, 14.953, -0.386, 1207.29, -1422.84, 44.727, 8.172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(202, 0, NULL, 'Star City Bank', 1239, 0, 3, 1459.42, -1009.92, 26.874, 177.513, 1667.13, -995.998, 683.691, 1.665, 1, 4000029, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 52, -256),
(203, 0, NULL, 'La Citadel Kohser [HQ]', 1313, 0, 3, 1022.27, -1121.36, 23.865, 180.693, 1282.07, -1140.88, 980.046, 352.238, 4, 4000203, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(204, 0, NULL, 'Terrorist [HQ]', 19605, 0, 3, -1438.67, -1544.63, 102.187, 358.676, 967.542, -53.279, 1001.12, 90.023, 3, 4000204, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(205, 0, NULL, 'DONATION MAPPINGS', 1239, 0, 3, 113.76, -1702.19, 9.394, 96.029, 0, 0, 0, 0, 0, 4000205, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(206, 0, NULL, 'FOR DANATION MAPPING ONLY', 1239, 0, 3, 2344.16, -874.21, 113.879, -176.537, 0, 0, 0, 0, 0, 4000206, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(207, 0, NULL, 'LOCKER ROOM', 1239, 0, 3, -1954.21, -840.026, 4439.8, 79.459, -1954.96, -840.096, 4439.8, 93.118, 1, 4000207, 1, 1, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(210, 0, NULL, 'Geng Geng [HQ]', 1313, 0, 3, 2495.3, -1691.14, 14.766, 187.58, 2218.4, -1076.22, 1050.48, 93.212, 1, 4000210, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(211, 0, NULL, 'El Valentino [HQ]', 1313, 0, 3, 2751.52, -1962.96, 13.547, 266.562, 493.395, -24.56, 1000.68, 10.174, 17, 4000211, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(213, 0, NULL, 'HITMAN AGENCY', 1239, 0, 3, 870.458, -24.945, 63.978, 147.97, 223.125, 1287.08, 1082.14, 181.068, 1, 4000213, 0, 0, 0, 0, 0, 0, 1, 'None', 1, -1, -256),
(215, 0, NULL, 'HITMAN AGENCY', 1239, 0, 3, 870.334, -25.191, 63.963, 159.45, 0, 0, 0, 0, 0, 4000215, 0, 2, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(217, 0, NULL, 'DONATION ONLY FOR SALE MAPPINGS', 1239, 0, 3, 2852.37, -366.291, 8.01, 95.8, 0, 0, 0, 0, 0, 4000217, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(218, 0, NULL, 'FOR DOTANATION MAPPINGS ONLY', 1239, 0, 3, -141.562, -1169.65, 7.996, -106.168, 0, 0, 0, 0, 0, 4000218, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(219, 0, NULL, 'FOR DOTANATION MAPPINGS ONLY', 1239, 0, 3, -165.088, -1245.05, 10.351, -107.513, 0, 0, 0, 0, 0, 4000219, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(220, 0, NULL, 'FOR DOTANATION MAPPINGS ONLY', 1239, 0, 3, 322.087, -1189.07, 76.351, -141.884, 0, 0, 0, 0, 0, 4000220, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(221, 0, NULL, 'FOR DOTANATION MAPPINGS ONLY', 1239, 0, 3, 263.013, -1232.02, 73.772, -139.317, 0, 0, 0, 0, 0, 4000221, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(222, 0, NULL, 'FOR DOTANATION MAPPINGS ONLY', 1239, 0, 3, 253.291, -1269.94, 74.429, 41.268, 0, 0, 0, 0, 0, 4000222, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(223, 0, NULL, 'FOR DOTANATION MAPPINGS ONLY', 1239, 0, 3, 219.085, -1250.52, 78.336, -177.335, 0, 0, 0, 0, 0, 4000223, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(224, 0, NULL, 'rooftop', 1239, 0, 3, -1977.95, -848.264, 4441.2, 86.47, 1565.21, -1666.96, 28.396, 17.403, 0, 0, 1, 4000207, 0, 0, 0, 0, 1, 'None', 1, -1, -256),
(227, 0, NULL, 'Four Corner Hustler [HQ]', 1313, 0, 3, 2259.44, -1019.09, 59.297, 55.604, 493.479, -24.961, 1000.67, 167.187, 17, 4000227, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(233, 0, NULL, 'outside', 1239, 0, 3, 1832.75, -1300.4, 832.183, 178.787, 847.215, -2173.89, 2.339, 177.284, 0, 4000233, 1, 1000030, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(234, 0, NULL, 'Outside', 1239, 0, 3, 1832.63, -1299.86, 832.183, -176.231, 2398.43, 119, 28.442, 356.488, 0, 4000234, 1, 1000029, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(249, 0, NULL, 'Cosa Nostra Familia', 1313, 0, 3, 1325.95, -1067.85, 31.555, 84.61, 493.482, -24.956, 1000.67, 165.825, 17, 4000249, 0, 0, 0, 0, 0, 0, 0, 'None', 1, 23, -256);

-- --------------------------------------------------------

--
-- Table structure for table `factionpay`
--

CREATE TABLE `factionpay` (
  `id` tinyint(2) DEFAULT NULL,
  `rank` tinyint(2) DEFAULT NULL,
  `amount` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `factionpay`
--

INSERT INTO `factionpay` (`id`, `rank`, `amount`) VALUES
(1, 1, 10000),
(1, 2, 10000),
(1, 3, 10000),
(1, 4, 10000),
(1, 5, 20000),
(1, 6, 20000),
(1, 7, 20000),
(1, 8, 20000),
(1, 9, 20000),
(1, 10, 30000),
(1, 11, 30000),
(1, 12, 30000),
(1, 13, 30000),
(1, 14, 30000),
(4, 1, 10000),
(4, 2, 10000),
(4, 3, 10000),
(4, 4, 10000),
(4, 5, 20000),
(4, 6, 20000),
(4, 7, 20000),
(4, 8, 20000),
(4, 9, 20000),
(4, 10, 20000),
(4, 11, 20000),
(4, 12, 30000),
(4, 13, 30000),
(4, 14, 30000),
(2, 1, 2000),
(2, 2, 7000),
(2, 14, 25000),
(2, 13, 20000),
(2, 11, 20000),
(2, 12, 20000),
(2, 10, 18000),
(2, 9, 17000),
(2, 3, 10000),
(2, 4, 12000),
(2, 5, 14000),
(2, 6, 15000),
(2, 7, 15000),
(2, 8, 15000),
(2, 0, 1000),
(3, 7, 20000),
(3, 8, 20000),
(3, 9, 20000),
(3, 11, 20000),
(3, 12, 20000),
(3, 13, 20000),
(3, 14, 20000),
(6, 1, 5000),
(6, 2, 10000),
(6, 3, 10000),
(6, 4, 10000),
(6, 0, 5000),
(6, 5, 10000),
(6, 6, 20000),
(6, 7, 20000),
(6, 8, 20000),
(6, 9, 20000),
(6, 10, 20000),
(6, 11, 30000),
(6, 12, 30000),
(6, 13, 30000),
(6, 14, 30000),
(14, 0, 5000),
(14, 1, 10000),
(14, 2, 10000),
(14, 3, 20000),
(14, 4, 20000),
(14, 5, 20000),
(14, 6, 20000),
(14, 7, 20000),
(14, 8, 20000),
(14, 9, 30000),
(14, 10, 30000),
(14, 11, 30000),
(14, 12, 30000),
(14, 13, 30000),
(14, 14, 30000),
(1, 0, 5000),
(4, 0, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `factionranks`
--

CREATE TABLE `factionranks` (
  `id` tinyint(2) DEFAULT NULL,
  `rank` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `factionranks`
--

INSERT INTO `factionranks` (`id`, `rank`, `name`) VALUES
(1, 1, 'Cadet'),
(1, 2, 'Officer 1'),
(1, 3, 'Officer 2'),
(1, 4, 'Officer 3'),
(1, 5, 'Senior Officer 1'),
(1, 0, 'Trainee'),
(1, 6, 'Senior Officer 2'),
(1, 7, 'Senior Officer 3'),
(1, 8, 'Junior Inspector'),
(1, 9, 'Senior Inspector'),
(1, 10, 'Lieutenant Colonel'),
(1, 11, 'Colonel'),
(1, 12, 'Major General'),
(1, 13, 'Deputy Director General'),
(1, 14, 'Director General'),
(4, 0, 'Mechanic Trainee'),
(4, 1, 'Mechanic '),
(4, 2, 'Mechanic 1'),
(4, 3, 'Mechanic 2'),
(4, 4, 'Mechanic 3'),
(4, 5, 'Junior Mechanic 1'),
(4, 6, 'Junior Mechanic 2'),
(4, 7, 'Junior Mechanic 3'),
(4, 8, 'General Mechanic 1'),
(4, 9, 'General Mechanic 2'),
(4, 10, 'Senior Mechanic 1'),
(4, 11, 'Senior Mechanic 2'),
(4, 12, 'Executive Mechanic '),
(4, 13, 'Co-Head Mechanic '),
(4, 14, 'Head Of Mechanic'),
(2, 0, 'Trainee'),
(2, 1, 'Probationary'),
(2, 2, 'EMT l'),
(2, 3, 'EMT ll'),
(2, 4, 'EMT lll'),
(2, 5, 'Junior Paramedic'),
(2, 6, 'Senior Paramedic'),
(2, 7, 'Chief Paramedic'),
(2, 8, 'Medical Paramedic'),
(2, 9, 'Junior Captain'),
(2, 10, 'Senior Captain'),
(2, 11, 'Medical Captain'),
(2, 12, 'Medical Chief'),
(2, 13, 'Medical Co-Head'),
(2, 14, 'Medical head'),
(6, 0, 'Trainee'),
(6, 1, 'Intern'),
(6, 2, 'Probationary Agent l'),
(6, 3, 'Probationary Agent ll'),
(6, 4, 'Agent l'),
(6, 5, 'Agent ll'),
(6, 6, 'Senior Agent'),
(6, 7, 'Special Agent'),
(6, 8, 'Inspector l'),
(6, 9, 'Inspector ll'),
(6, 10, 'Inspector lll'),
(6, 11, 'Chief Inspector'),
(6, 14, 'Director'),
(6, 13, 'Deputy Director'),
(6, 12, 'Assistant Director'),
(8, 0, 'Bagohan'),
(8, 9, 'Commander '),
(3, 14, 'President'),
(3, 13, 'Vice President'),
(3, 12, 'Mayor'),
(3, 11, 'Vice Mayor'),
(3, 10, 'Psg III'),
(3, 9, 'Psg II'),
(3, 8, 'Psg '),
(14, 0, 'Traine'),
(14, 13, 'General'),
(14, 12, 'First Lieutenant General'),
(14, 14, 'General Of The Army'),
(14, 2, 'private'),
(14, 1, 'cadet'),
(14, 11, 'Lieutenant General'),
(14, 10, 'Major general'),
(3, 7, 'District Attorny'),
(14, 3, 'Corporal'),
(14, 4, 'Comander Sergeant major '),
(14, 5, 'Sergeant major of the army'),
(14, 6, 'Captain'),
(14, 7, 'Major'),
(14, 8, 'Colonel'),
(14, 9, 'Brigadier General ');

-- --------------------------------------------------------

--
-- Table structure for table `factions`
--

CREATE TABLE `factions` (
  `id` tinyint(2) DEFAULT NULL,
  `name` varchar(48) DEFAULT NULL,
  `shortname` tinytext DEFAULT NULL,
  `leader` varchar(24) DEFAULT 'No-one',
  `type` tinyint(2) DEFAULT 0,
  `color` int(10) DEFAULT -1,
  `rankcount` tinyint(2) DEFAULT 6,
  `lockerx` float DEFAULT 0,
  `lockery` float DEFAULT 0,
  `lockerz` float DEFAULT 0,
  `lockerinterior` tinyint(2) DEFAULT 0,
  `lockerworld` int(10) DEFAULT 0,
  `turftokens` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `factions`
--

INSERT INTO `factions` (`id`, `name`, `shortname`, `leader`, `type`, `color`, `rankcount`, `lockerx`, `lockery`, `lockerz`, `lockerinterior`, `lockerworld`, `turftokens`) VALUES
(1, 'Star City Police Department', NULL, 'Dex_montana', 1, 2359040, 15, -1963.48, -840.082, 4441.2, 1, 4000207, 19),
(2, 'Star City Fire and Medic Department', NULL, 'No-one', 2, -16733696, 15, -1101.34, 1980.18, -58.914, 0, 2, 0),
(3, 'Star City Government', NULL, 'Kairo_Drexel', 4, -5111808, 15, 280.481, 1832.45, 628.002, 0, 1, 0),
(4, 'Star City Autoparts', NULL, 'Toshiro_Khalixta', 7, -2080440320, 15, -2031.29, -114.721, 1035.17, 3, 32131, 0),
(5, 'Star City News', NULL, 'No-one', 3, 33546752, 10, 256.008, 1778.29, 701.086, 0, 0, 0),
(6, 'Star City Bureau of Investigation', NULL, 'No-one', 6, 1701554688, 15, 255.385, 77.273, 1003.64, 6, 4000144, 10),
(7, 'Hitman Agency', NULL, 'No-one', 5, -1482184960, 5, 219.922, 1289.77, 1082.14, 1, 2, 0),
(8, 'Star City Terrorist', NULL, 'No-one', 8, -16777216, 10, 956.43, -54.371, 1001.12, 3, 4000204, 0),
(9, 'NONE', NULL, 'No-one', 10, 10774784, 5, 0, 0, 0, 0, 0, 0),
(10, 'NONE', NULL, 'No-one', 12, 3793664, 15, 260.763, 192.553, 1008.17, 3, 10323, 10),
(11, 'NONE', NULL, 'No-one', 11, -16589568, 15, -1100.86, 1980.01, -58.914, 0, 3, 0),
(12, 'NONE', NULL, 'No-one', 7, 2097086976, 15, 1173.49, 1346.58, 10.922, 0, 0, 0),
(13, 'NONE', NULL, 'No-one', 4, -7470592, 6, 1271.36, -667.829, 1090.79, 1, 100032, 0),
(14, 'Star City Armed Forces', NULL, 'Kaizen_Fang', 9, 1384400896, 15, 1107.17, -306.132, 74.162, 0, 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `factionskins`
--

CREATE TABLE `factionskins` (
  `id` tinyint(2) DEFAULT NULL,
  `slot` tinyint(2) DEFAULT NULL,
  `skinid` smallint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `factionskins`
--

INSERT INTO `factionskins` (`id`, `slot`, `skinid`) VALUES
(6, 0, 186),
(1, 0, 71),
(1, 1, 280),
(1, 2, 281),
(1, 3, 282),
(1, 4, 283),
(1, 5, 284),
(1, 6, 285),
(1, 7, 288),
(1, 8, 310),
(1, 9, 311),
(1, 10, 309),
(1, 11, 306),
(1, 12, 303),
(1, 13, 304),
(1, 14, 305),
(4, 0, 42),
(4, 1, 50),
(4, 2, 59),
(4, 3, 192),
(4, 4, 192),
(4, 5, 298),
(2, 0, 274),
(2, 1, 275),
(2, 2, 276),
(2, 3, 278),
(2, 4, 279),
(2, 5, 277),
(2, 6, 70),
(2, 7, 307),
(2, 8, 308),
(2, 9, 309),
(14, 0, 121),
(14, 1, 287),
(14, 2, 73),
(14, 3, 250),
(14, 4, 255),
(6, 1, 286),
(14, 5, 191),
(14, 6, 298),
(6, 2, 295),
(6, 3, 166),
(6, 4, 164),
(6, 5, 163),
(6, 6, 294);

-- --------------------------------------------------------

--
-- Table structure for table `flags`
--

CREATE TABLE `flags` (
  `id` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `flaggedby` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `furniture`
--

CREATE TABLE `furniture` (
  `id` int(10) NOT NULL,
  `houseid` int(10) DEFAULT NULL,
  `modelid` smallint(5) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `rot_x` float DEFAULT NULL,
  `rot_y` float DEFAULT NULL,
  `rot_z` float DEFAULT NULL,
  `interior` tinyint(2) DEFAULT NULL,
  `world` int(10) DEFAULT NULL,
  `door_opened` tinyint(1) DEFAULT 0,
  `door_locked` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `furniture`
--

INSERT INTO `furniture` (`id`, `houseid`, `modelid`, `name`, `price`, `pos_x`, `pos_y`, `pos_z`, `rot_x`, `rot_y`, `rot_z`, `interior`, `world`, `door_opened`, `door_locked`) VALUES
(19, 10, 2229, 'Small black speaker', 1250, 2208, -1078.38, 1049.92, 0, 0, 178.315, 1, 1000010, 0, 0),
(20, 10, 2229, 'Small black speaker', 1250, 2210.23, -1078.44, 1049.89, 0, 0, 178.222, 1, 1000010, 0, 0),
(21, 10, 2891, 'Cocaine packet', 150, 2208.48, -1070.64, 1050.15, 0, 0, 346.97, 1, 1000010, 0, 0),
(22, 10, 1577, 'Yellow package', 50, 2207.63, -1070.87, 1050.21, 0, 0, -2.429, 1, 1000010, 0, 0),
(23, 10, 19617, 'Gold record', 100, 2207.91, -1070.28, 1051.48, 0, 0, 0.571, 1, 1000010, 0, 0),
(24, 10, 1578, 'Green package', 50, 2207.96, -1070.67, 1050.27, 0, 0, 24.185, 1, 1000010, 0, 0),
(25, 10, 1576, 'Orange package', 50, 2208.25, -1070.55, 1050.38, 0, 0, 358.807, 1, 1000010, 0, 0),
(26, 10, 1580, 'Red package', 50, 2207.81, -1070.77, 1050.38, 0, 0, 33.587, 1, 1000010, 0, 0),
(27, 10, 1550, 'Bag of money', 50, 2208.73, -1071.15, 1049.8, 0, 0, 320.29, 1, 1000010, 0, 0),
(28, 10, 1550, 'Bag of money', 50, 2208.39, -1071.13, 1049.77, 0, 0, 353.19, 1, 1000010, 0, 0),
(29, 10, 1279, 'Drug bundle', 150, 2207.97, -1071.73, 1049.4, 0, 0, -43.715, 1, 1000010, 0, 0),
(30, 10, 2805, 'Meat Sack', 50, 2204.46, -1070.59, 1049.91, 0, 0, 5.505, 1, 1000010, 0, 0),
(31, 10, 2805, 'Meat Sack', 50, 2203.96, -1070.65, 1049.89, 0, 0, 6.445, 1, 1000010, 0, 0),
(32, 10, 2805, 'Meat Sack', 50, 2204.45, -1070.95, 1049.95, 0, 0, 353.599, 1, 1000010, 0, 0),
(33, 10, 1576, 'Orange package', 50, 2203.38, -1075.3, 1050.22, 0, 0, 98.59, 1, 1000010, 0, 0),
(34, 10, 1579, 'Blue package', 50, 2203.03, -1075.4, 1050.24, 0, 0, 103.603, 1, 1000010, 0, 0),
(35, 10, 1279, 'Drug bundle', 150, 2202.99, -1073.54, 1050.48, 0, 0, 98.59, 1, 1000010, 0, 0),
(36, 10, 1575, 'White package', 150, 2203.19, -1075.29, 1050.36, 0, 0, 88.563, 1, 1000010, 0, 0),
(37, 10, 1736, 'Moose head', 300, 2206.31, -1070.58, 1051.48, 0, 0, -1.417, 1, 1000010, 0, 0),
(38, 10, 2803, 'Small meat sack', 50, 2204.6, -1071.46, 1049.77, 0, 0, 65.689, 1, 1000010, 0, 0),
(39, 10, 2852, 'Scattered magazines', 50, 2203.24, -1071.31, 1049.99, 0, 0, 22.472, 1, 1000010, 0, 0),
(40, 10, 2852, 'Scattered magazines', 50, 2206.56, -1071.58, 1050.23, 0, 0, 296.955, 1, 1000010, 0, 0),
(41, 10, 2854, 'Scattered books', 50, 2205.84, -1071.95, 1050.21, 0, 0, 296.955, 1, 1000010, 0, 0),
(42, 10, 1736, 'Moose head', 300, 2203.16, -1074.7, 1050.55, -76.5, 0, 89.606, 1, 1000010, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gangranks`
--

CREATE TABLE `gangranks` (
  `id` tinyint(2) DEFAULT NULL,
  `rank` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gangranks`
--

INSERT INTO `gangranks` (`id`, `rank`, `name`) VALUES
(1, 6, 'General'),
(1, 5, 'Lieutenant'),
(1, 4, 'Royal'),
(1, 3, 'Master'),
(1, 2, 'Sergeant'),
(1, 1, 'Naval'),
(1, 0, 'Supot ');

-- --------------------------------------------------------

--
-- Table structure for table `gangs`
--

CREATE TABLE `gangs` (
  `id` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT 'None',
  `motd` varchar(128) DEFAULT 'None',
  `leader` varchar(24) DEFAULT 'No-one',
  `color` int(10) DEFAULT -256,
  `strikes` tinyint(1) DEFAULT 0,
  `level` tinyint(2) DEFAULT 1,
  `points` int(10) DEFAULT 0,
  `turftokens` int(10) DEFAULT 0,
  `stash_x` float DEFAULT 0,
  `stash_y` float DEFAULT 0,
  `stash_z` float DEFAULT 0,
  `stashinterior` tinyint(2) DEFAULT 0,
  `stashworld` int(10) DEFAULT 0,
  `cash` int(10) DEFAULT 0,
  `materials` int(10) DEFAULT 0,
  `pot` int(10) DEFAULT 0,
  `crack` int(10) DEFAULT 0,
  `meth` int(10) DEFAULT 0,
  `painkillers` int(10) DEFAULT 0,
  `pistolammo` int(10) DEFAULT 0,
  `shotgunammo` int(10) DEFAULT 0,
  `smgammo` int(10) DEFAULT 0,
  `arammo` int(10) DEFAULT 0,
  `rifleammo` int(10) DEFAULT 0,
  `hpammo` int(10) DEFAULT 0,
  `poisonammo` int(10) DEFAULT 0,
  `fmjammo` int(10) DEFAULT 0,
  `weapon_9mm` int(10) DEFAULT 0,
  `weapon_sdpistol` int(10) DEFAULT 0,
  `weapon_deagle` int(10) DEFAULT 0,
  `weapon_shotgun` int(10) DEFAULT 0,
  `weapon_spas12` int(10) DEFAULT 0,
  `weapon_sawnoff` int(10) DEFAULT 0,
  `weapon_tec9` int(10) DEFAULT 0,
  `weapon_uzi` int(10) DEFAULT 0,
  `weapon_mp5` int(10) DEFAULT 0,
  `weapon_ak47` int(10) DEFAULT 0,
  `weapon_m4` int(10) DEFAULT 0,
  `weapon_rifle` int(10) DEFAULT 0,
  `weapon_sniper` int(10) DEFAULT 0,
  `weapon_molotov` int(10) DEFAULT 0,
  `armsdealer` tinyint(1) DEFAULT 0,
  `drugdealer` tinyint(1) DEFAULT 0,
  `arms_x` float DEFAULT 0,
  `arms_y` float DEFAULT 0,
  `arms_z` float DEFAULT 0,
  `arms_a` float DEFAULT 0,
  `drug_x` float DEFAULT 0,
  `drug_y` float DEFAULT 0,
  `drug_z` float DEFAULT 0,
  `drug_a` float DEFAULT 0,
  `armsworld` int(10) DEFAULT 0,
  `drugworld` int(10) DEFAULT 0,
  `drugpot` int(10) DEFAULT 0,
  `drugcrack` int(10) DEFAULT 0,
  `drugmeth` int(10) DEFAULT 0,
  `armsmaterials` int(10) DEFAULT 0,
  `armsprice_1` int(10) DEFAULT 0,
  `armsprice_2` int(10) DEFAULT 0,
  `armsprice_3` int(10) DEFAULT 0,
  `armsprice_4` int(10) DEFAULT 0,
  `armsprice_5` int(10) DEFAULT 0,
  `armsprice_6` int(10) DEFAULT 0,
  `armsprice_7` int(10) DEFAULT 0,
  `armsprice_8` int(10) DEFAULT 0,
  `armsprice_9` int(10) NOT NULL DEFAULT 0,
  `armsprice_10` int(10) NOT NULL DEFAULT 0,
  `armsprice_11` int(10) NOT NULL DEFAULT 0,
  `armsprice_12` tinyint(2) NOT NULL DEFAULT 0,
  `pot_price` int(10) DEFAULT 0,
  `crack_price` int(10) DEFAULT 0,
  `meth_price` int(10) DEFAULT 0,
  `armshpammo` int(10) DEFAULT 0,
  `armspoisonammo` int(10) DEFAULT 0,
  `armsfmjammo` int(10) DEFAULT 0,
  `alliance` int(10) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gangs`
--

INSERT INTO `gangs` (`id`, `name`, `motd`, `leader`, `color`, `strikes`, `level`, `points`, `turftokens`, `stash_x`, `stash_y`, `stash_z`, `stashinterior`, `stashworld`, `cash`, `materials`, `pot`, `crack`, `meth`, `painkillers`, `pistolammo`, `shotgunammo`, `smgammo`, `arammo`, `rifleammo`, `hpammo`, `poisonammo`, `fmjammo`, `weapon_9mm`, `weapon_sdpistol`, `weapon_deagle`, `weapon_shotgun`, `weapon_spas12`, `weapon_sawnoff`, `weapon_tec9`, `weapon_uzi`, `weapon_mp5`, `weapon_ak47`, `weapon_m4`, `weapon_rifle`, `weapon_sniper`, `weapon_molotov`, `armsdealer`, `drugdealer`, `arms_x`, `arms_y`, `arms_z`, `arms_a`, `drug_x`, `drug_y`, `drug_z`, `drug_a`, `armsworld`, `drugworld`, `drugpot`, `drugcrack`, `drugmeth`, `armsmaterials`, `armsprice_1`, `armsprice_2`, `armsprice_3`, `armsprice_4`, `armsprice_5`, `armsprice_6`, `armsprice_7`, `armsprice_8`, `armsprice_9`, `armsprice_10`, `armsprice_11`, `armsprice_12`, `pot_price`, `crack_price`, `meth_price`, `armshpammo`, `armspoisonammo`, `armsfmjammo`, `alliance`) VALUES
(1, 'Cosa Nostra Familia', 'None', 'No-one', 12307456, 0, 1, 90, 12, 475.179, -10.686, 1003.7, 17, 4000249, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 1, 5, 9, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1);

-- --------------------------------------------------------

--
-- Table structure for table `gangskins`
--

CREATE TABLE `gangskins` (
  `id` tinyint(2) DEFAULT NULL,
  `slot` tinyint(2) DEFAULT NULL,
  `skinid` smallint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gangskins`
--

INSERT INTO `gangskins` (`id`, `slot`, `skinid`) VALUES
(1, 0, 114),
(1, 1, 115),
(1, 2, 116),
(1, 3, 193),
(1, 4, 172),
(1, 5, 86);

-- --------------------------------------------------------

--
-- Table structure for table `garages`
--

CREATE TABLE `garages` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT 0,
  `owner` varchar(24) DEFAULT NULL,
  `type` tinyint(1) DEFAULT 0,
  `price` int(10) DEFAULT 0,
  `locked` tinyint(1) DEFAULT 0,
  `timestamp` int(10) DEFAULT 0,
  `pos_x` float DEFAULT 0,
  `pos_y` float DEFAULT 0,
  `pos_z` float DEFAULT 0,
  `pos_a` float DEFAULT 0,
  `exit_x` float DEFAULT 0,
  `exit_y` float DEFAULT 0,
  `exit_z` float DEFAULT 0,
  `exit_a` float DEFAULT 0,
  `world` int(10) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `garages`
--

INSERT INTO `garages` (`id`, `ownerid`, `owner`, `type`, `price`, `locked`, `timestamp`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `exit_x`, `exit_y`, `exit_z`, `exit_a`, `world`) VALUES
(1, 14, 'Justine_Crimel', 2, 250000, 0, 1664861951, 282.711, -1359.16, 53.109, 302.679, 280.185, -1360.78, 53.109, 122.679, 2000001);

-- --------------------------------------------------------

--
-- Table structure for table `garbage`
--

CREATE TABLE `garbage` (
  `garbageID` int(12) NOT NULL,
  `garbageModel` int(12) DEFAULT 1236,
  `garbageCapacity` int(12) DEFAULT 0,
  `garbageX` float DEFAULT 0,
  `garbageY` float DEFAULT 0,
  `garbageZ` float DEFAULT 0,
  `garbageA` float DEFAULT 0,
  `garbageInterior` int(12) DEFAULT 0,
  `garbageWorld` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `garbage`
--

INSERT INTO `garbage` (`garbageID`, `garbageModel`, `garbageCapacity`, `garbageX`, `garbageY`, `garbageZ`, `garbageA`, `garbageInterior`, `garbageWorld`) VALUES
(34, 1236, 19, 2225.45, -1953.1, 13.54, 277.966, 0, 0),
(35, 1236, 17, 2232.02, -1987.16, 13.547, 263.552, 0, 0),
(36, 1236, 17, 1842.43, -1854.95, 13.383, 273.009, 0, 0),
(37, 1236, 19, 1653.85, -1723.04, 13.547, 352.109, 0, 0),
(38, 1300, 16, 1538.5, -1671.58, 13.383, 268.117, 0, 0),
(39, 1300, 20, 1280.96, -1386.86, 13.396, 1.096, 0, 0),
(40, 1300, 20, 1184.32, -1386.24, 13.563, 276.11, 0, 0),
(41, 1236, 17, 1083.48, -1383.88, 13.781, 91.184, 0, 0),
(42, 1236, 20, 1099.52, -1413.32, 13.633, 179.579, 0, 0),
(43, 1300, 18, 1154.2, -1438.65, 15.797, 184.09, 0, 0),
(44, 1236, 20, 1464.07, -1491.23, 13.547, 2.482, 0, 0),
(45, 1236, 18, 1475.69, -1741.28, 13.547, 179.294, 0, 0),
(46, 1236, 20, 2045.59, -1740.73, 13.547, 266.166, 0, 0),
(47, 1236, 16, 1970.2, -1969.94, 13.581, 264.172, 0, 0),
(48, 1236, 20, 1947.74, -2073.83, 13.551, 1.72, 0, 0),
(49, 1300, 18, 1616.01, -2240.78, 13.528, 272.263, 0, 0),
(50, 1300, 19, 1661.58, -2240.55, 13.535, 270.07, 0, 0),
(51, 1300, 19, 1698.74, -2240.6, 13.54, 270.383, 0, 0),
(52, 1236, 17, 1683.95, -2204.08, 13.547, 186.063, 0, 0),
(53, 1236, 18, 1814.28, -2065.08, 13.547, 98.057, 0, 0),
(54, 1236, 20, 1905.44, -1924.21, 13.547, 358.492, 0, 0),
(55, 1236, 17, 1633.58, -1862.69, 13.547, 7.11, 0, 0),
(56, 1300, 20, 942.391, -1767.15, 13.946, 75.944, 0, 0),
(57, 1300, 20, 780.752, -1758.91, 13.177, 81.244, 0, 0),
(58, 1236, 16, 437.448, -1730.92, 9.672, 184.1, 0, 0),
(59, 1300, 16, 161.371, -1746.41, 4.883, 191.467, 0, 0),
(60, 1300, 20, 103.648, -1683.18, 10.143, 100.954, 0, 0),
(61, 1236, 18, -162.141, -1357.67, 2.99, 90.101, 0, 0),
(62, 1236, 16, -81.705, -1184.99, 1.75, 332.656, 0, 0),
(63, 1236, 20, -35.594, -1588.48, 3.282, 56.444, 0, 0),
(64, 1236, 17, 336.091, -1177.64, 76.763, 40.268, 0, 0),
(65, 1236, 17, 287.332, -1237.9, 74.821, 307.664, 0, 0),
(66, 1236, 20, 272.072, -1325.97, 53.542, 205.287, 0, 0),
(67, 1300, 20, 537.819, -1263.55, 16.403, 224.799, 0, 0),
(68, 1300, 20, 622.325, -1278.23, 16.529, 96.343, 0, 0),
(69, 1300, 20, 796.843, -1666.96, 13.521, 355.909, 0, 0),
(70, 1236, 16, 957.935, -1560.61, 13.569, 267.34, 0, 0),
(71, 1300, 20, 1260.61, -1578.48, 13.533, 183.439, 0, 0),
(72, 1236, 17, 1350.49, -1567.24, 13.539, 346.851, 0, 0),
(73, 1236, 16, 1420.58, -1617.93, 13.547, 98.946, 0, 0),
(74, 1236, 18, 1556.93, -1579.96, 13.547, 89.353, 0, 0),
(75, 1300, 20, 1721.67, -1612.26, 13.547, 171.128, 0, 0),
(76, 1236, 19, 1809.74, -1674.91, 13.547, 82.61, 0, 0),
(77, 1236, 20, 1289.35, -1646.02, 13.547, 87.914, 0, 0),
(78, 1236, 16, 1254.42, -917.931, 42.823, 359.795, 0, 0),
(79, 1236, 18, 1065.58, -940.554, 42.992, 357.103, 0, 0),
(80, 1236, 19, 672.868, -631.905, 16.336, 99.208, 0, 0),
(81, 1236, 19, 661.577, -439.191, 16.336, 5.68, 0, 0),
(82, 1236, 17, 217.282, -313.832, 1.83, 254.065, 0, 0),
(83, 1236, 16, 341.539, -111.214, 1.424, 290.469, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gates`
--

CREATE TABLE `gates` (
  `gateID` int(12) NOT NULL,
  `gateModel` int(12) DEFAULT 980,
  `gateSpeed` float DEFAULT 0,
  `gateTime` int(12) DEFAULT 0,
  `gateX` float DEFAULT 0,
  `gateY` float DEFAULT 0,
  `gateZ` float DEFAULT 0,
  `gateRX` float DEFAULT 0,
  `gateRY` float DEFAULT 0,
  `gateRZ` float DEFAULT 0,
  `gateInterior` int(12) DEFAULT 0,
  `gateWorld` int(12) DEFAULT 0,
  `gateMoveX` float DEFAULT 0,
  `gateMoveY` float DEFAULT 0,
  `gateMoveZ` float DEFAULT 0,
  `gateMoveRX` float DEFAULT 0,
  `gateMoveRY` float DEFAULT 0,
  `gateMoveRZ` float DEFAULT 0,
  `gateLinkID` int(12) DEFAULT 0,
  `gateFaction` int(12) DEFAULT 0,
  `gatePass` varchar(32) DEFAULT NULL,
  `gateRadius` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gates`
--

INSERT INTO `gates` (`gateID`, `gateModel`, `gateSpeed`, `gateTime`, `gateX`, `gateY`, `gateZ`, `gateRX`, `gateRY`, `gateRZ`, `gateInterior`, `gateWorld`, `gateMoveX`, `gateMoveY`, `gateMoveZ`, `gateMoveRX`, `gateMoveRY`, `gateMoveRZ`, `gateLinkID`, `gateFaction`, `gatePass`, `gateRadius`) VALUES
(1, 2909, 3, 0, 1544.82, -1627.14, 11.9428, 0, 0, 177.505, 0, 0, 1544.82, -1627.14, 10.9828, 0, 0, 177.505, -1, 1, '', 8),
(3, 0, 10, 0, 994.738, -1337.57, 15.0628, 0, 0, 3.8291, 0, 0, 994.738, -1337.57, 9.5527, 0, 0, 3.8291, -1, -1, '123', 5),
(13, 986, 8, 0, 768.231, -1418.4, 14.2419, 0, 0, 0.5217, 0, 0, 768.231, -1418.4, 6.6419, 0, 0, 0.5217, -1, -1, 'flaphq', 10),
(18, 19913, 3, 0, 724.339, -1525.92, 5.0443, 0, 0, -179.592, 0, 0, 724.339, -1525.92, 13.6543, 0, 0, -179.592, -1, -1, 'FLAPHQ', 20),
(22, 1495, 3, 0, 1847.32, -1722.57, 5201.53, 0, 0, 90.0273, 0, 0, 1847.32, -1722.57, 5201.53, 0, 0, -176.372, -1, 1, '', 5),
(23, 19303, 3, 0, 1843.85, -1714.28, 5202.8, 0, 0, -0.0621, 0, 0, 1845.22, -1714.28, 5202.8, 0, 0, -0.0621, -1, -1, '', 1),
(24, 19303, 3, 0, 1840.62, -1714.3, 5202.8, 0, 0, 1.5412, 0, 0, 1842.05, -1714.26, 5202.8, 0, 0, 1.5412, -1, -1, '', 1),
(25, 19303, 3, 0, 1837.42, -1714.29, 5202.8, 0, 0, -0.4263, 0, 0, 1838.84, -1714.3, 5202.8, 0, 0, -0.4263, -1, -1, '', 1),
(26, 19303, 3, 0, 1843.63, -1729.19, 5202.8, 0, 0, 179.372, 0, 0, 1842.2, -1729.17, 5202.8, 0, 0, 179.372, -1, -1, '', 1),
(27, 19303, 3, 0, 1840.46, -1729.2, 5202.79, 0, 0, 179.472, 0, 0, 1838.99, -1729.19, 5202.79, 0, 0, 179.472, -1, -1, '', 1),
(28, 19303, 3, 0, 1837.24, -1729.22, 5202.82, 0, 0, 179.932, 0, 0, 1835.78, -1729.22, 5202.82, 0, 0, 179.932, -1, -1, '', 1),
(29, 19303, 3, 0, 1843.85, -1714.33, 5209.9, 0, 0, 0.15, 0, 0, 1845.27, -1714.33, 5209.9, 0, 0, 0.15, -1, -1, '', 1),
(30, 19303, 3, 0, 1827.62, -1729.21, 5209.9, 0, 0, -178.647, 6, 0, 1826.2, -1729.24, 5209.9, 0, 0, -178.647, -1, -1, '', 1),
(31, 19303, 3, 0, 1830.81, -1729.21, 5209.91, 0, 0, -179.653, 6, 0, 1829.4, -1729.22, 5209.91, 0, 0, -179.653, -1, -1, '', 1),
(32, 19303, 3, 0, 1834.04, -1729.2, 5209.91, 0, 0, 179.814, 6, 0, 1832.61, -1729.19, 5209.91, 0, 0, 179.814, -1, -1, '', 1),
(34, 19303, 3, 0, 1834.03, -1729.21, 5202.8, 0, 0, -178.137, 0, 0, 1832.6, -1729.26, 5202.8, 0, 0, -178.137, -1, -1, '', 1),
(35, 19303, 3, 0, 1830.83, -1729.21, 5202.8, 0, 0, -179.534, 0, 0, 1829.36, -1729.22, 5202.8, 0, 0, -179.534, -1, -1, '', 1),
(36, 19303, 3, 0, 1827.67, -1729.16, 5202.8, 0, 0, 180.386, 0, 0, 1826.21, -1729.17, 5202.8, 0, 0, 180.386, -1, -1, '', 1),
(37, 19303, 3, 0, 1834.19, -1714.29, 5202.8, 0, 0, 0.0559, 0, 0, 1835.63, -1714.29, 5202.8, 0, 0, 0.0559, -1, -1, '', 1),
(38, 19303, 3, 0, 1827.8, -1714.34, 5202.79, 0, 0, -0.1919, 0, 0, 1829.24, -1714.34, 5202.79, 0, 0, -0.1919, -1, -1, '', 1),
(39, 19303, 3, 0, 1831.03, -1714.29, 5202.82, 0, 0, 1.6642, 0, 0, 1832.51, -1714.25, 5202.82, 0, 0, 1.6642, -1, -1, '', 1),
(40, 19303, 3, 0, 1827.62, -1729.21, 5206.42, 0, 0, -179.935, 0, 0, 1826.12, -1729.21, 5206.42, 0, 0, -179.935, -1, -1, '', 1),
(41, 19303, 3, 0, 1827.8, -1714.31, 5206.42, 0, 0, 1.3177, 0, 0, 1829.25, -1714.28, 5206.42, 0, 0, 1.3177, -1, -1, '', 1),
(42, 19303, 3, 0, 1830.81, -1729.22, 5206.42, 0, 0, 179.754, 0, 0, 1829.33, -1729.22, 5206.42, 0, 0, 179.754, -1, -1, '', 1),
(43, 19303, 3, 0, 1831, -1714.3, 5206.44, 0, 0, 0.2244, 0, 0, 1832.47, -1714.29, 5206.44, 0, 0, 0.2244, -1, -1, '', 1),
(44, 19303, 3, 0, 1834, -1729.22, 5206.43, 0, 0, -179.906, 0, 0, 1832.53, -1729.22, 5206.43, 0, 0, -179.906, -1, -1, '', 1),
(45, 19303, 3, 0, 1834.21, -1714.3, 5206.43, 0, 0, 0.871, 0, 0, 1835.66, -1714.28, 5206.43, 0, 0, 0.871, -1, -1, '', 1),
(46, 19303, 3, 0, 1837.21, -1729.17, 5206.42, 0, 0, 179.944, 0, 0, 1835.73, -1729.17, 5206.42, 0, 0, 179.944, -1, -1, '', 1),
(47, 19303, 3, 0, 1840.39, -1729.24, 5206.42, 0, 0, -179.754, 0, 0, 1838.93, -1729.25, 5206.42, 0, 0, -179.754, -1, -1, '', 1),
(48, 19303, 3, 0, 1837.4, -1714.34, 5206.42, 0, 0, 0.2601, 0, 0, 1838.83, -1714.34, 5206.42, 0, 0, 0.2601, -1, -1, '', 1),
(49, 19303, 3, 0, 1843.61, -1729.22, 5206.44, 0, 0, 179.925, 0, 0, 1842.12, -1729.22, 5206.44, 0, 0, 179.925, -1, -1, '', 1),
(50, 19303, 3, 0, 1840.6, -1714.31, 5206.44, 0, 0, 0.3244, 0, 0, 1842.07, -1714.3, 5206.44, 0, 0, 0.3244, -1, -1, '', 1),
(53, 19303, 1, 0, 1837.21, -1729.23, 5209.92, 0, 0, -179.872, 0, 0, 1835.75, -1729.23, 5209.92, 0, 0, -179.872, -1, -1, '', 1),
(54, 19303, 1, 0, 1840.4, -1729.16, 5209.91, 0, 0, 180.375, 0, 0, 1839, -1729.17, 5209.91, 0, 0, 180.375, -1, -1, '', 1),
(55, 19303, 1, 0, 1843.64, -1729.16, 5209.92, 0, 0, -179.594, 0, 0, 1842.17, -1729.17, 5209.92, 0, 0, -179.594, -1, -1, '', 1),
(56, 19303, 3, 0, 1827.84, -1714.27, 5209.92, 0, 0, 0.1928, 0, 0, 1829.31, -1714.26, 5209.92, 0, 0, 0.1928, -1, -1, '', 1),
(57, 19303, 3, 0, 1827.64, -1729.21, 5209.9, 0, 0, 179.904, 0, 0, 1826.18, -1729.21, 5209.9, 0, 0, 179.904, -1, -1, '', 1),
(58, 19303, 3, 0, 1831.03, -1714.27, 5209.93, 0, 0, -0.2984, 0, 0, 1832.5, -1714.28, 5209.93, 0, 0, -0.2984, -1, -1, '', 1),
(59, 19303, 3, 0, 1830.83, -1729.21, 5209.93, 0, 0, 179.877, 0, 0, 1829.4, -1729.21, 5209.93, 0, 0, 179.877, -1, -1, '', 1),
(60, 19303, 3, 0, 1834.23, -1714.24, 5209.92, 0, 0, 0.4475, 0, 0, 1835.7, -1714.23, 5209.92, 0, 0, 0.4475, -1, -1, '', 1),
(61, 19303, 3, 0, 1834.03, -1729.23, 5209.88, 0, 0, -179.823, 0, 0, 1832.58, -1729.24, 5209.88, 0, 0, -179.823, -1, -1, '', 1),
(62, 19303, 1, 0, 1837.43, -1714.34, 5209.91, 0, 0, -0.969, 0, 0, 1838.86, -1714.35, 5209.91, 0, 0, 0.0309, -1, -1, '', 1),
(63, 19303, 3, 0, 1840.63, -1714.24, 5209.94, 0, 0, -0.5563, 0, 0, 1842.11, -1714.26, 5209.94, 0, 0, -0.5563, -1, -1, '', 1),
(64, 2945, 3, 0, 1824.52, -1724.36, 5210.04, 0, 0, 90.4699, 0, 0, 1824.5, -1721.93, 5210.04, 0, 0, 90.4699, -1, -1, 'NWRPPRISON', 5),
(66, 980, 3, 0, 1043.9, -1026.01, 32.1015, 0, 0, -0.0151, 0, 0, 1043.9, -1026.01, 28.4015, 0, 0, -0.0151, -1, -1, 'ADMIN', 5),
(67, 980, 3, 0, 2071.56, -1834.2, 14.6668, 0, 0, 89.7654, 0, 0, 2071.56, -1834.2, 9.7268, 0, 0, 89.7654, -1, -1, 'ADMIN', 5),
(68, 980, 3, 0, 1024.91, -1029.38, 32.4786, 0, 0, 0.0422, 0, 0, 1024.91, -1029.38, 28.4286, 0, 0, 0.0422, -1, -1, 'ADMIN', 5),
(69, 980, 3, 0, 488.499, -1735.3, 11.8919, 0, 0, 172.137, 0, 0, 488.499, -1735.3, 7.3919, 0, 0, 172.137, -1, -1, 'ADMIN', 5),
(70, 980, 3, 0, 1843.24, -1852.66, 13.2328, 0, 0, 89.9752, 0, 0, 1843.24, -1852.66, 9.6228, 0, 0, 89.9752, -1, -1, '8ballautos', 5),
(71, 980, 3, 0, 2643.23, -2039.15, 13.554, 0, 0, 0.1352, 0, 0, 2643.23, -2039.15, 9.814, 0, 0, 0.1352, -1, -1, 'lowride', 5),
(72, 980, 3, 0, 2386.56, 1043.37, 10.6203, 0, 0, -0.0053, 0, 0, 2386.56, 1043.37, 7.1202, 0, 0, -0.0053, -1, -1, 'ADMIN', 5),
(73, 980, 3, 0, -1935.39, 239.163, 34.5525, 0, 0, 2.0447, 0, 0, -1935.39, 239.163, 30.6724, 0, 0, 2.0447, -1, -1, 'ADMIN', 5),
(74, 980, 3, 0, -1903.56, 277.932, 42.8268, 0, 0, 358.885, 0, 0, -1903.56, 277.932, 37.3469, 0, 0, 358.885, -1, -1, 'ADMIN', 5),
(75, 980, 3, 0, -2716.16, 217.536, 4.7051, 0, 0, 90.8007, 0, 0, -2716.16, 217.536, 0.6351, 0, 0, 90.8007, -1, -1, 'ADMIN', 5),
(76, 2933, 3, 0, 1003.33, -644.343, 122.177, 0, -1.8999, -157.937, 0, 0, 1003.17, -644.407, 117, 0, -1.8999, -157.937, -1, -1, 'franzbaho', 15),
(77, 980, 3, 0, 786.141, -1152.43, 25.3463, 0, 0, 270.963, 0, 0, 786.141, -1152.43, 18.9662, 0, 0, 270.963, -1, -1, 'NICKYYY', 5),
(78, 16775, 0, 0, 659.892, -1227.13, 15.5876, 0, 0, 66.4244, 0, 0, 659.892, -1227.13, 5.5876, -1000, -1000, -1000, -1, -1, '', 0),
(79, 16775, 0, 0, 665.683, -1309.33, 14.4409, 0, 0, 356.574, 0, 0, 665.683, -1309.33, 3.4609, -1000, -1000, -1000, -1, -1, '', 0),
(81, 980, 3, 0, 1590.3, -1638.12, 14.7629, 0, 0, -0.0478, 0, 0, 1590.3, -1638.12, 6.7628, 0, 0, -0.0478, -1, 1, '', 5),
(93, 980, 3, 0, 2449.77, 693.216, 10.7409, 0, 0, -0.1931, 0, 0, 2449.77, 693.216, 7.7009, 0, 0, -0.1931, -1, -1, '', 5),
(94, 19913, 0, 0, 727.154, -1526.03, -6.2685, 0, 0, 179.867, 0, 0, 727.154, -1526.17, -10.5684, -1000, -1000, -1000, -1, -1, '', 0),
(95, 980, 8, 0, 953.45, -927.824, 44.9118, 0, 0, 184.283, 0, 0, 943.129, -928.597, 44.9118, 0, 0, 184.283, -1, -1, 'ABG', 15),
(97, 980, 3, 0, 261.883, -1231.48, 74.3485, 0, -5.5, 35.305, 0, 0, 262.224, -1231.24, 70.0085, 0, -5.5, 35.305, -1, -1, 'nxpsolid', 5),
(99, 980, 3, 0, 283.309, -1542.59, 26.3263, 0, 0, 145.113, 0, 0, 291.214, -1548.09, 26.3263, 0, 0, 145.113, -1, 6, '', 5),
(100, 980, 3, 0, 321.163, -1488.52, 26.2837, 0, 0, -34.6674, 0, 0, 313.308, -1483.09, 26.2837, 0, 0, -34.6674, -1, 6, '', 5),
(101, 980, 3, 0, 885.102, -712.343, 108.204, 0, 0, 64.4043, 0, 0, 885.102, -712.343, 103.114, 0, 0, 64.4043, -1, -1, 'john', 5),
(106, 980, 3, 0, 264.402, -1333.46, 53.278, 0, 0, 31.898, 0, 0, 264.402, -1333.46, 43.278, -1000, -1000, -1000, -1, -1, 'justine', 5),
(108, 980, 3, 0, 321.587, -1188.12, 77.2244, 0, 0, 216.111, 0, 0, 321.587, -1188.12, 67.2244, -1000, -1000, -1000, -1, -1, 'james', 5),
(111, 980, 3, 0, 2345.41, -873.645, 114.521, 0, 0, 7.461, 0, 0, 2345.41, -873.645, 109.921, 0, 0, 7.461, -1, -1, 'sicario', 5),
(112, 980, 3, 0, 2185.11, -1776.37, 15.1683, 0, 0, 0.3386, 0, 0, 2185.11, -1776.37, 9.6484, 0, 0, 0.3386, -1, -1, 'KILLER', 5),
(121, 980, 3, 0, 553.95, -1886.33, 3.6947, 0, 0, 177.256, 0, 0, 553.95, -1886.33, -6.3052, -1000, -1000, -1000, -1, -1, '123', 5),
(125, 980, 3, 0, 777.759, -1384.64, 13.9604, 0, 0, 179.907, 0, 0, 777.759, -1384.64, 9.9704, 0, 0, 179.907, -1, 3, '', 5),
(126, 980, 3, 0, 777.729, -1330.33, 13.7529, 0, 0, -0.2932, 0, 0, 777.729, -1330.33, 9.7829, 0, 0, -0.2932, -1, 3, '', 5),
(127, 980, 3, 0, 708.296, -1417.2, 15.1415, 0, 0, -0.4727, 0, 0, 708.296, -1417.2, 9.7915, 0, 0, -0.4727, -1, -1, 'DM4LIFE', 5),
(128, 980, 3, 0, 745.594, -1475.85, 6.1985, 0, 0, 190.733, 0, 0, 745.594, -1475.85, -3.8014, -1000, -1000, -1000, -1, -1, 'DM4LIFE', 5),
(129, 980, 3, 0, -2424.98, 1027.95, 51.8406, 0, 0, 179.467, 0, 0, -2424.98, 1027.95, 50.2906, 0, 0, 179.467, -1, -1, '', 5),
(131, 8229, 3, 0, -2045.92, -102.567, 36.684, 0, 0, -0.8983, 0, 0, -2045.92, -102.567, 32.034, 0, 0, -0.8983, -1, 7, 'mech999', 20),
(133, 980, 3, 0, -2596.41, 328.775, 2.5284, 0, 0, 90.1387, 0, 0, -2596.41, 328.775, 0.5984, 0, 0, 90.1387, -1, -1, '1', 5),
(134, 980, 3, 0, -2548.95, 320.394, 17.7462, 0, 0, -91.4054, 0, 0, -2548.95, 320.394, 15.8562, 0, 0, -91.4054, -1, -1, '2', 5),
(135, 980, 3, 0, 135.37, 1941.3, 20.9063, 0, 0, 1.1576, 0, 0, 146.708, 1941.53, 20.9063, 0, 0, 1.1576, -1, 9, '', 5),
(136, 980, 3, 0, 2335.56, 2443.64, 7.1138, 0, 0, -119.184, 0, 0, 2335.56, 2443.64, 2.0838, 0, 0, -119.184, -1, 12, '', 5),
(137, 980, 3, 0, 2237.43, 2453.05, 9.6718, 0, 0, 89.7891, 0, 0, 2237.47, 2463.57, 9.6718, 0, 0, 89.7891, -1, 12, '', 5),
(138, 980, 3, 0, 1300.36, -2050.67, 59.1832, 0, 0, 268.441, 0, 0, 1300.36, -2050.67, 54.4732, 0, 0, 268.441, -1, 4, '', 5),
(139, 980, 3, 0, 1299.97, -2062.99, 59.1866, 0, 0, 271.678, 0, 0, 1299.97, -2062.99, 54.5266, 0, 0, 271.678, -1, 4, '', 5),
(140, 980, 3, 0, 1264.21, -2048.94, 60.9324, -2.9999, 1.2999, -1.6118, 0, 0, 1264.08, -2049.21, 55.6709, -2.9999, 1.2999, -1.6118, -1, 4, '', 5),
(146, 980, 3, 0, 922.956, -1213.99, 18.2904, 0, 0, 266.897, 0, 0, 922.956, -1213.99, 8.2904, -1000, -1000, -1000, -1, 7, '', 5),
(156, 980, 3, 0, 923.63, -1226.95, 16.9765, 0, 0, 269.728, 0, 0, 923.63, -1226.95, 6.9765, -1000, -1000, -1000, -1, 7, '', 5),
(157, 980, 3, 0, 2774.47, -2418.23, 13.645, 0, 0, 267.756, 0, 0, 2774.47, -2418.23, 3.6449, -1000, -1000, -1000, -1, -1, '2233', 5),
(160, 980, 3, 0, 1021.1, -376.793, 74.7863, 0, 0, -179.028, 0, 0, 1021.1, -376.793, 69.0864, 0, 0, -179.028, -1, 9, '', 5),
(185, 980, 3, 0, 1343.62, -1059.18, 26.6708, 0, 0, 83.5724, 0, 0, 1343.62, -1059.18, 16.6708, -1000, -1000, -1000, -1, -1, '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `graffiti`
--

CREATE TABLE `graffiti` (
  `graffitiID` int(12) DEFAULT NULL,
  `graffitiX` float DEFAULT 0,
  `graffitiY` float DEFAULT 0,
  `graffitiZ` float DEFAULT 0,
  `graffitiAngle` float DEFAULT 0,
  `graffitiColor` int(12) DEFAULT 0,
  `graffitiText` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT 0,
  `owner` varchar(24) DEFAULT 'Nobody',
  `type` tinyint(2) DEFAULT 0,
  `price` int(10) DEFAULT 0,
  `rentprice` int(10) DEFAULT 0,
  `level` tinyint(2) DEFAULT 0,
  `locked` tinyint(1) DEFAULT 0,
  `timestamp` int(10) DEFAULT 0,
  `pos_x` float DEFAULT 0,
  `pos_y` float DEFAULT 0,
  `pos_z` float DEFAULT 0,
  `pos_a` float DEFAULT 0,
  `int_x` float DEFAULT 0,
  `int_y` float DEFAULT 0,
  `int_z` float DEFAULT 0,
  `int_a` float DEFAULT 0,
  `interior` tinyint(2) DEFAULT 0,
  `world` int(10) DEFAULT 0,
  `outsideint` int(10) DEFAULT 0,
  `outsidevw` int(10) DEFAULT 0,
  `cash` int(10) DEFAULT 0,
  `materials` int(10) DEFAULT 0,
  `pot` int(10) DEFAULT 0,
  `crack` int(10) DEFAULT 0,
  `meth` int(10) DEFAULT 0,
  `painkillers` int(10) DEFAULT 0,
  `weapon_1` tinyint(2) DEFAULT 0,
  `weapon_2` tinyint(2) DEFAULT 0,
  `weapon_3` tinyint(2) DEFAULT 0,
  `weapon_4` tinyint(2) DEFAULT 0,
  `weapon_5` tinyint(2) DEFAULT 0,
  `weapon_6` tinyint(2) DEFAULT 0,
  `weapon_7` tinyint(2) DEFAULT 0,
  `weapon_8` tinyint(2) DEFAULT 0,
  `weapon_9` tinyint(2) DEFAULT 0,
  `weapon_10` tinyint(2) DEFAULT 0,
  `ammo_1` smallint(5) DEFAULT 0,
  `ammo_2` smallint(5) DEFAULT 0,
  `ammo_3` smallint(5) DEFAULT 0,
  `ammo_4` smallint(5) DEFAULT 0,
  `ammo_5` smallint(5) DEFAULT 0,
  `ammo_6` tinyint(2) DEFAULT 0,
  `ammo_7` tinyint(2) DEFAULT 0,
  `ammo_8` tinyint(2) DEFAULT 0,
  `ammo_9` tinyint(2) DEFAULT 0,
  `ammo_10` tinyint(2) DEFAULT 0,
  `pistolammo` smallint(5) DEFAULT 0,
  `shotgunammo` smallint(5) DEFAULT 0,
  `smgammo` smallint(5) DEFAULT 0,
  `arammo` smallint(5) DEFAULT 0,
  `rifleammo` smallint(5) DEFAULT 0,
  `hpammo` smallint(5) DEFAULT 0,
  `poisonammo` smallint(5) DEFAULT 0,
  `fmjammo` smallint(5) DEFAULT 0,
  `robbed` smallint(6) NOT NULL DEFAULT 3,
  `robbing` smallint(6) NOT NULL DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`id`, `ownerid`, `owner`, `type`, `price`, `rentprice`, `level`, `locked`, `timestamp`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `int_x`, `int_y`, `int_z`, `int_a`, `interior`, `world`, `outsideint`, `outsidevw`, `cash`, `materials`, `pot`, `crack`, `meth`, `painkillers`, `weapon_1`, `weapon_2`, `weapon_3`, `weapon_4`, `weapon_5`, `weapon_6`, `weapon_7`, `weapon_8`, `weapon_9`, `weapon_10`, `ammo_1`, `ammo_2`, `ammo_3`, `ammo_4`, `ammo_5`, `ammo_6`, `ammo_7`, `ammo_8`, `ammo_9`, `ammo_10`, `pistolammo`, `shotgunammo`, `smgammo`, `arammo`, `rifleammo`, `hpammo`, `poisonammo`, `fmjammo`, `robbed`, `robbing`) VALUES
(3, 14, 'Justine_Crimel', 18, 5000000, 0, 5, 0, 1664899770, 243.363, -1375.64, 53.988, 135.653, 1298.87, -796.205, 1084.01, 0, 5, 1000003, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(4, 0, 'Nobody', 9, 1000000, 0, 0, 0, 0, 416.707, -1154.1, 76.688, -29.08, 1363.76, -2145.7, 1050.59, 0, 3, 1000004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(5, 0, 'Nobody', 11, 1600000, 0, 0, 0, 0, 352.38, -1197.95, 76.516, 39.224, 2184.1, -1130.39, 1128.77, 270, 11, 1000005, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(6, 0, 'Nobody', 11, 1600000, 0, 0, 0, 0, 471.014, -1164.27, 66.718, 72.833, 2184.1, -1130.39, 1128.77, 270, 11, 1000006, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(7, 0, 'Nobody', 15, 2800000, 0, 0, 0, 0, 700.319, -1060.23, 49.422, 21.514, 1282.06, -1140.21, 980.052, 0, 4, 1000007, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(8, 0, 'Nobody', 8, 850000, 0, 0, 0, 0, 827.809, -857.988, 70.331, -161.666, 1320.11, -167.617, 1088.07, 90, 5, 1000008, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(9, 0, 'Nobody', 15, 12000000, 0, 0, 0, 0, 1442.7, -628.835, 95.719, -178.195, 1282.06, -1140.21, 980.052, 0, 4, 1000009, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(10, 22, 'Arthur_La_Citadel', 5, 400000, 0, 0, 0, 1665146053, 1179.89, -1261.05, 18.898, -90.434, 2217.98, -1076.25, 1050.48, 90, 1, 1000010, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(14, 0, 'Nobody', 4, 500000, 200000, 0, 0, 0, 1179.89, -1261.05, 15.18, -92.209, 2233.65, -1114.78, 1050.88, 0, 5, 1000014, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(15, 0, 'Nobody', 4, 500000, 200000, 0, 0, 0, 1187.44, -1260.97, 15.18, 104.358, 2233.65, -1114.78, 1050.88, 0, 5, 1000015, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(16, 0, 'Nobody', 4, 500000, 200000, 0, 0, 0, 1179.81, -1254.93, 15.18, -89.333, 2233.65, -1114.78, 1050.88, 0, 5, 1000016, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(17, 0, 'Nobody', 4, 500000, 200000, 0, 0, 0, 1187.36, -1254.69, 15.18, 89.495, 2233.65, -1114.78, 1050.88, 0, 5, 1000017, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(18, 0, 'Nobody', 4, 500000, 200000, 0, 0, 0, 1187.44, -1260.88, 18.898, 83.749, 2233.65, -1114.78, 1050.88, 0, 5, 1000018, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(19, 0, 'Nobody', 4, 500000, 200000, 0, 0, 0, 1179.81, -1254.82, 18.891, -97.56, 2233.65, -1114.78, 1050.88, 0, 5, 1000019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(20, 0, 'Nobody', 4, 500000, 300000, 0, 0, 0, 1187.36, -1254.65, 18.891, 99.785, 2233.65, -1114.78, 1050.88, 0, 5, 1000020, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(21, 0, 'Nobody', 5, 800000, 0, 0, 0, 0, 1179.89, -1233.46, 18.555, -86.151, 2217.98, -1076.25, 1050.48, 90, 1, 1000021, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(22, 0, 'Nobody', 5, 800000, 300000, 0, 0, 0, 1187.44, -1233.3, 18.555, 84.346, 2217.98, -1076.25, 1050.48, 90, 1, 1000022, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(23, 0, 'Nobody', 5, 800000, 300000, 0, 0, 0, 1179.81, -1227.16, 18.555, -97.515, 2217.98, -1076.25, 1050.48, 90, 1, 1000023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(24, 0, 'Nobody', 5, 800000, 300000, 0, 0, 0, 1187.36, -1227.03, 18.555, 99.227, 2217.98, -1076.25, 1050.48, 90, 1, 1000024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(25, 0, 'Nobody', 5, 800000, 300000, 0, 0, 0, 1187.36, -1227.06, 22.133, 102.659, 2217.98, -1076.25, 1050.48, 90, 1, 1000025, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(26, 0, 'Nobody', 5, 800000, 300000, 0, 0, 0, 1187.44, -1233.28, 22.141, 105.52, 2217.98, -1076.25, 1050.48, 90, 1, 1000026, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(27, 0, 'Nobody', 5, 800000, 300000, 0, 0, 0, 1179.89, -1233.35, 22.141, -93.688, 2217.98, -1076.25, 1050.48, 90, 1, 1000027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(29, 106, 'Shyne_Deleon', 16, 10000000, 10000, 5, 0, 1665332015, 2398.41, 111.527, 28.442, 187.554, 1834.31, -1278.36, 832.161, 182.055, 1, 1000029, 0, 4000232, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(30, 101, 'Chaknu', 16, 10000000, 10000, 5, 0, 1665338527, 844.838, -2164.73, 3.339, 14.498, 1834.24, -1278.77, 832.16, 180, 1, 1000030, 0, 4000233, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `kills`
--

CREATE TABLE `kills` (
  `id` int(10) NOT NULL,
  `killer_uid` int(10) DEFAULT NULL,
  `target_uid` int(10) DEFAULT NULL,
  `killer` varchar(24) DEFAULT NULL,
  `target` varchar(24) DEFAULT NULL,
  `reason` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kills`
--

INSERT INTO `kills` (`id`, `killer_uid`, `target_uid`, `killer`, `target`, `reason`, `date`) VALUES
(1, 4, 4, 'Hay_Dry', 'Hay_Dry', 'Explosion', '2022-06-05 13:34:03'),
(2, 4, 4, 'Hay_Dry', 'Hay_Dry', 'Explosion', '2022-06-05 13:34:29'),
(3, 24, 8, 'Arnulfo_Ipis', 'Dwayne_Johnson', 'M4', '2022-10-04 02:29:04'),
(4, 8, 8, 'Dwayne_Johnson', 'Dwayne_Johnson', 'Explosion', '2022-10-04 02:29:24'),
(5, 32, 16, 'Leon_Cordova', 'Peter_La_Citadel', 'M4', '2022-10-04 05:16:15'),
(6, 32, 16, 'Leon_Cordova', 'Peter_La_Citadel', 'Combat shotgun', '2022-10-04 05:16:44'),
(7, 32, 13, 'Leon_Cordova', 'Gabriel_Smith', 'Deagle', '2022-10-04 05:17:14'),
(8, 18, 36, 'Genji_Locco', 'Dex_montana', 'M4', '2022-10-04 05:17:18'),
(9, 32, 36, 'Leon_Cordova', 'Dex_montana', 'M4', '2022-10-04 05:22:37'),
(10, 32, 36, 'Leon_Cordova', 'Dex_montana', 'Deagle', '2022-10-04 05:23:11'),
(11, 36, 36, 'Dex_montana', 'Dex_montana', 'Explosion', '2022-10-04 07:29:30'),
(12, 32, 13, 'Leon_Cordova', 'Gabriel_Smith', 'Combat shotgun', '2022-10-04 07:41:54'),
(13, 10, 10, 'Wilbert_Cordova', 'Wilbert_Cordova', 'Explosion', '2022-10-04 07:49:17'),
(14, 38, 16, 'Carlito_Valentino', 'Peter_La_Citadel', 'Deagle', '2022-10-04 07:57:42'),
(15, 7, 16, 'Chumito_Locco', 'Peter_La_Citadel', 'Sniper', '2022-10-04 10:19:32'),
(16, 35, 35, 'Hachi_Montefalco', 'Hachi_Montefalco', 'Explosion', '2022-10-04 11:27:05'),
(17, 35, 35, 'Hachi_Montefalco', 'Hachi_Montefalco', 'Explosion', '2022-10-04 11:27:29'),
(18, 16, 35, 'Peter_La_Citadel', 'Hachi_Montefalco', 'Fists', '2022-10-04 11:45:54'),
(19, 32, 35, 'Leon_Cordova', 'Hachi_Montefalco', 'Deagle', '2022-10-04 12:15:10'),
(20, 32, 35, 'Leon_Cordova', 'Hachi_Montefalco', 'Deagle', '2022-10-04 12:15:24'),
(21, 47, 35, 'Hector_Cordova', 'Hachi_Montefalco', 'AK-47', '2022-10-04 12:30:52'),
(22, 32, 35, 'Leon_Cordova', 'Hachi_Montefalco', 'Deagle', '2022-10-04 12:31:38'),
(23, 37, 16, 'Kai_Itchi', 'Peter_La_Citadel', 'M4', '2022-10-04 12:43:37'),
(24, 47, 32, 'Hector_Cordova', 'Leon_Cordova', 'AK-47', '2022-10-04 12:43:49'),
(25, 46, 47, 'Pablo_Y._Cordova', 'Hector_Cordova', 'M4', '2022-10-04 12:43:50'),
(26, 35, 35, 'Hachi_Montefalco', 'Hachi_Montefalco', 'Explosion', '2022-10-04 12:54:23'),
(27, 7, 26, 'Chumito_Locco', 'John_Mendoza', 'M4', '2022-10-04 12:55:12'),
(28, 32, 26, 'Leon_Cordova', 'John_Mendoza', 'Deagle', '2022-10-04 12:55:40'),
(29, 21, 15, 'Myca_Yurong', 'Jay_Yurong', 'Deagle', '2022-10-04 13:07:23'),
(30, 21, 15, 'Myca_Yurong', 'Jay_Yurong', 'Deagle', '2022-10-04 13:09:26'),
(31, 33, 33, 'Midas_Doofenshmirtzz', 'Midas_Doofenshmirtzz', 'Explosion', '2022-10-04 13:15:06'),
(32, 33, 33, 'Midas_Doofenshmirtzz', 'Midas_Doofenshmirtzz', 'Explosion', '2022-10-04 13:18:09'),
(33, 31, 32, 'Asher_Soza', 'Leon_Locco', 'AK-47', '2022-10-04 13:34:41'),
(34, 7, 36, 'Chumito_Locco', 'Dex_montana', 'M4', '2022-10-04 13:49:22'),
(35, 7, 35, 'Chumito_Locco', 'Hachi_Montefalco', 'M4', '2022-10-04 13:49:36'),
(36, 36, 36, 'Dex_montana', 'Dex_montana', 'Explosion', '2022-10-04 13:50:39'),
(37, 7, 31, 'Chumito_Locco', 'Asher_Soza', 'M4', '2022-10-04 13:57:44'),
(38, 32, 31, 'Leon_Locco', 'Asher_Soza', 'MP5', '2022-10-04 13:58:54'),
(39, 35, 32, 'Hachi_Montefalco', 'Leon_Locco', 'M4', '2022-10-04 15:02:21'),
(40, 37, 7, 'Kai_Itchi', 'Chumito_Locco', 'M4', '2022-10-04 15:03:20'),
(41, 7, 7, 'Chumito_Locco', 'Chumito_Locco', 'Explosion', '2022-10-04 15:03:47'),
(42, 8, 8, 'Dwayne_Johnson', 'Dwayne_Johnson', 'Explosion', '2022-10-04 15:06:12'),
(43, 7, 37, 'Chumito_Locco', 'Kai_Itchi', 'M4', '2022-10-04 15:20:48'),
(44, 7, 35, 'Chumito_Locco', 'Hachi_Montefalco', 'M4', '2022-10-04 15:21:06'),
(45, 7, 36, 'Chumito_Locco', 'Dex_montana', 'M4', '2022-10-04 15:21:17'),
(46, 32, 36, 'Leon_Locco', 'Dex_montana', 'MP5', '2022-10-04 15:22:04'),
(47, 32, 35, 'Leon_Locco', 'Hachi_Montefalco', 'MP5', '2022-10-04 15:22:18'),
(48, 31, 32, 'Rapido_Alvarez', 'Leon_Locco', 'M4', '2022-10-04 15:39:35'),
(49, 7, 27, 'Chumito_Locco', 'Kairo_Drexel', 'M4', '2022-10-04 15:40:28'),
(50, 7, 37, 'Chumito_Locco', 'Kai_Itchi', 'M4', '2022-10-04 15:41:17'),
(51, 32, 32, 'Leon_Locco', 'Leon_Locco', 'Explosion', '2022-10-04 15:41:21'),
(52, 31, 31, 'Rapido_Alvarez', 'Rapido_Alvarez', 'Explosion', '2022-10-04 15:41:35'),
(53, 37, 37, 'Kai_Itchi', 'Kai_Itchi', 'Explosion', '2022-10-04 15:41:43'),
(54, 21, 15, 'Myca_Yurong', 'Jay_Yurong', 'Deagle', '2022-10-04 15:58:30'),
(55, 7, 14, 'Chumito_Locco', 'Justine_Crimel', 'Combat shotgun', '2022-10-04 16:06:23'),
(56, 32, 14, 'Leon_Locco', 'Justine_Crimel', 'Combat shotgun', '2022-10-04 16:08:16'),
(57, 7, 32, 'Chumito_Locco', 'Leon_Locco', 'Combat shotgun', '2022-10-04 16:10:37'),
(58, 32, 32, 'Leon_Locco', 'Leon_Locco', 'Explosion', '2022-10-04 16:12:39'),
(59, 31, 18, 'Rapido_Alvarez', 'Genji_Locco', 'Sniper', '2022-10-04 16:41:57'),
(60, 31, 59, 'Rapido_Alvarez', 'lei_sy', 'Sniper', '2022-10-04 16:52:10'),
(61, 7, 21, 'Chumito_Locco', 'Myca_Yurong', 'Deagle', '2022-10-04 17:02:32'),
(62, 27, 7, 'Kairo_Drexel', 'Chumito_Locco', 'Combat shotgun', '2022-10-04 17:03:24'),
(63, 27, 21, 'Kairo_Drexel', 'Myca_Yurong', 'Combat shotgun', '2022-10-04 17:03:26'),
(64, 27, 18, 'Kairo_Drexel', 'Genji_Locco', 'Combat shotgun', '2022-10-04 17:03:30'),
(65, 18, 21, 'Genji_Locco', 'Myca_Yurong', 'Explosion', '2022-10-04 17:14:01'),
(66, 7, 21, 'Chumito_Locco', 'Myca_Yurong', 'Deagle', '2022-10-04 17:46:29'),
(67, 36, 36, 'Dex_montana', 'Dex_montana', 'Explosion', '2022-10-05 00:13:25'),
(68, 36, 36, 'Dex_montana', 'Dex_montana', 'Explosion', '2022-10-05 00:13:41'),
(69, 22, 16, 'Arthur_La_Citadel', 'Peter_La_Citadel', 'M4', '2022-10-05 00:38:36'),
(70, 35, 16, 'Hachi_Montefalco', 'Peter_La_Citadel', 'Deagle', '2022-10-05 00:44:39'),
(71, 8, 16, 'Dwayne_Johnson', 'Peter_La_Citadel', 'Deagle', '2022-10-05 00:48:22'),
(72, 63, 22, 'Pierre_Montefalco', 'Arthur_La_Citadel', 'Car parking', '2022-10-05 02:09:22'),
(73, 22, 22, 'Arthur_La_Citadel', 'Arthur_La_Citadel', 'Explosion', '2022-10-05 02:09:45'),
(74, 63, 22, 'Pierre_Montefalco', 'Arthur_La_Citadel', 'Fists', '2022-10-05 02:11:34'),
(75, 63, 35, 'Pierre_Montefalco', 'Hachi_Montefalco', 'Fists', '2022-10-05 02:21:15'),
(76, 35, 35, 'Hachi_Montefalco', 'Hachi_Montefalco', 'Explosion', '2022-10-05 02:22:09'),
(77, 56, 56, 'kai_dior', 'kai_dior', 'Explosion', '2022-10-05 02:33:50'),
(78, 24, 56, 'Arnulfo_Ipis', 'kai_dior', 'M4', '2022-10-05 02:48:24'),
(79, 38, 35, 'Carlito_Valentino', 'Hachi_Montefalco', 'AK-47', '2022-10-05 03:46:11'),
(80, 45, 35, 'Pudong_Valentino', 'Hachi_Montefalco', 'AK-47', '2022-10-05 03:46:51'),
(81, 38, 38, 'Carlito_Valentino', 'Carlito_Valentino', 'Explosion', '2022-10-05 03:50:21'),
(82, 21, 21, 'Myca_Yurong', 'Myca_Yurong', 'Explosion', '2022-10-05 05:20:29'),
(83, 21, 21, 'Myca_Yurong', 'Myca_Yurong', 'Explosion', '2022-10-05 05:25:52'),
(84, 8, 21, 'Dwayne_Johnson', 'Myca_Yurong', 'Deagle', '2022-10-05 06:51:29'),
(85, 8, 21, 'Dwayne_Johnson', 'Myca_Yurong', 'Deagle', '2022-10-05 06:57:30'),
(86, 8, 65, 'Dwayne_Johnson', 'Tetsuya_Sugo', 'Deagle', '2022-10-05 06:57:38'),
(87, 8, 65, 'Dwayne_Johnson', 'Tetsuya_Sugo', 'Deagle', '2022-10-05 06:57:50'),
(88, 8, 21, 'Dwayne_Johnson', 'Myca_Yurong', 'Deagle', '2022-10-05 06:58:02'),
(89, 8, 65, 'Dwayne_Johnson', 'Tetsuya_Sugo', 'Deagle', '2022-10-05 06:58:41'),
(90, 8, 65, 'Dwayne_Johnson', 'Tetsuya_Sugo', 'Deagle', '2022-10-05 06:59:32'),
(91, 32, 65, 'Leon_Locco', 'Tetsuya_Sugo', 'Deagle', '2022-10-05 07:14:14'),
(92, 32, 65, 'Leon_Locco', 'Tetsuya_Sugo', 'Deagle', '2022-10-05 07:14:24'),
(93, 21, 27, 'Myca_Yurong', 'Kairo_Drexel', 'Deagle', '2022-10-05 07:25:59'),
(94, 27, 21, 'Kairo_Drexel', 'Myca_Yurong', 'M4', '2022-10-05 07:28:34'),
(95, 21, 27, 'Myca_Yurong', 'Kairo_Drexel', 'Deagle', '2022-10-05 07:28:45'),
(96, 36, 26, 'Dex_montana', 'John_Mendoza', 'Sniper', '2022-10-05 08:15:46'),
(97, 36, 26, 'Dex_montana', 'John_Mendoza', 'MP5', '2022-10-05 08:16:15'),
(98, 21, 27, 'Myca_Yurong', 'Kairo_Drexel', 'Fists', '2022-10-05 08:31:46'),
(99, 7, 27, 'Chumito_Locco', 'Kairo_Drexel', 'Combat shotgun', '2022-10-05 09:19:07'),
(100, 7, 18, 'Chumito_Locco', 'Genji_Locco', 'Combat shotgun', '2022-10-05 09:19:40'),
(101, 7, 27, 'Chumito_Locco', 'Kairo_Drexel', 'M4', '2022-10-05 09:20:16'),
(102, 7, 27, 'Chumito_Locco', 'Kairo_Drexel', 'M4', '2022-10-05 09:22:14'),
(103, 10, 10, 'Wilbert_Cordova', 'Wilbert_Cordova', 'Explosion', '2022-10-05 09:27:53'),
(104, 10, 10, 'Wilbert_Cordova', 'Wilbert_Cordova', 'Explosion', '2022-10-05 09:33:06'),
(105, 21, 7, 'Myca_Yurong', 'Chumito_Locco', 'Explosion', '2022-10-05 09:39:32'),
(106, 21, 13, 'Myca_Yurong', 'Gabriel_Smith', 'Explosion', '2022-10-05 09:39:55'),
(107, 7, 65, 'Chumito_Locco', 'Tetsuya_Sugo', 'M4', '2022-10-05 10:24:30'),
(108, 65, 15, 'Tetsuya_Sugo', 'Jay_Yurong', 'MP5', '2022-10-05 10:37:52'),
(109, 7, 65, 'Chumito_Locco', 'Tetsuya_Sugo', 'Deagle', '2022-10-05 10:40:14'),
(110, 33, 7, 'Midas_Doofenshmirtzz', 'Chumito_Locco', 'Fists', '2022-10-05 12:02:11'),
(111, 16, 36, 'Peter_La_Citadel', 'Dex_montana', 'Deagle', '2022-10-05 13:16:08'),
(112, 72, 7, 'Marcos_Tonkin', 'Chumito_Locco', 'MP5', '2022-10-05 13:24:47'),
(113, 27, 21, 'Kairo_Drexel', 'Myca_Yurong', 'Explosion', '2022-10-05 13:57:40'),
(114, 7, 26, 'Chumito_Locco', 'John_Mendoza', 'M4', '2022-10-05 14:07:58'),
(115, 7, 15, 'Chumito_Locco', 'Jay_Yurong', 'Combat shotgun', '2022-10-05 14:08:52'),
(116, 8, 8, 'Dwayne_Johnson', 'Dwayne_Johnson', 'Explosion', '2022-10-05 15:23:34'),
(117, 8, 8, 'Dwayne_Johnson', 'Dwayne_Johnson', 'Explosion', '2022-10-05 15:25:48'),
(118, 15, 21, 'Jay_Yurong', 'Myca_Yurong', 'Explosion', '2022-10-05 16:10:07'),
(119, 15, 21, 'Jay_Yurong', 'Myca_Yurong', 'MP5', '2022-10-05 16:18:21'),
(120, 21, 15, 'Myca_Yurong', 'Jay_Yurong', 'MP5', '2022-10-05 16:19:08'),
(121, 15, 21, 'Jay_Yurong', 'Myca_Yurong', 'MP5', '2022-10-05 16:24:15'),
(122, 15, 21, 'Jay_Yurong', 'Myca_Yurong', 'MP5', '2022-10-05 16:30:06'),
(123, 40, 40, 'Enock_Cadiao', 'Enock_Cadiao', 'Explosion', '2022-10-05 16:37:28'),
(124, 59, 59, 'Lei_Young', 'Lei_Young', 'Explosion', '2022-10-05 16:53:14'),
(125, 59, 59, 'Lei_Young', 'Lei_Young', 'Explosion', '2022-10-05 16:53:28'),
(126, 61, 61, 'Devin_John', 'Devin_John', 'Explosion', '2022-10-05 17:51:49'),
(127, 8, 8, 'Dwayne_Johnson', 'Dwayne_Johnson', 'Explosion', '2022-10-06 03:29:02'),
(128, 8, 8, 'Dwayne_Johnson', 'Dwayne_Johnson', 'Explosion', '2022-10-06 05:23:05'),
(129, 21, 13, 'Myca_Yurong', 'Gabriel_Smith', 'MP5', '2022-10-06 10:08:00'),
(130, 21, 13, 'Myca_Yurong', 'Gabriel_Smith', 'MP5', '2022-10-06 10:08:53'),
(131, 13, 21, 'Gabriel_Smith', 'Myca_Yurong', 'MP5', '2022-10-06 10:10:23'),
(132, 21, 13, 'Myca_Yurong', 'Gabriel_Smith', 'MP5', '2022-10-06 10:11:26'),
(133, 13, 21, 'Gabriel_Smith', 'Myca_Yurong', 'MP5', '2022-10-06 10:12:13'),
(134, 21, 13, 'Myca_Yurong', 'Gabriel_Smith', 'MP5', '2022-10-06 10:12:29'),
(135, 65, 16, 'Tetsuya_Sugo', 'Peter_La_Citadel', 'MP5', '2022-10-06 11:28:23'),
(136, 8, 8, 'Dwayne_Johnson', 'Dwayne_Johnson', 'Explosion', '2022-10-06 13:40:01'),
(137, 8, 8, 'Dwayne_Johnson', 'Dwayne_Johnson', 'Explosion', '2022-10-06 14:02:28'),
(138, 15, 21, 'Jay_Yurong', 'Myca_Yurong', 'MP5', '2022-10-06 15:18:36'),
(139, 21, 15, 'Myca_Yurong', 'Jay_Yurong', 'MP5', '2022-10-06 15:19:34'),
(140, 21, 15, 'Myca_Yurong', 'Jay_Yurong', 'MP5', '2022-10-06 15:20:06'),
(141, 15, 21, 'Jay_Yurong', 'Myca_Yurong', 'MP5', '2022-10-06 15:25:29'),
(142, 15, 21, 'Jay_Yurong', 'Myca_Yurong', 'MP5', '2022-10-06 15:26:01'),
(143, 7, 21, 'Xean_Hernandez', 'Myca_Yurong', 'Deagle', '2022-10-06 15:27:16'),
(144, 7, 21, 'Xean_Hernandez', 'Myca_Yurong', 'Deagle', '2022-10-06 15:27:28'),
(145, 15, 21, 'Jay_Yurong', 'Myca_Yurong', 'Deagle', '2022-10-06 15:30:03'),
(146, 15, 21, 'Jay_Yurong', 'Myca_Yurong', 'Deagle', '2022-10-06 15:30:11'),
(147, 15, 21, 'Jay_Yurong', 'Myca_Yurong', 'Deagle', '2022-10-06 15:31:27'),
(148, 21, 15, 'Myca_Yurong', 'Jay_Yurong', 'MP5', '2022-10-06 15:36:22'),
(149, 21, 15, 'Myca_Yurong', 'Jay_Yurong', 'MP5', '2022-10-06 15:36:34'),
(150, 21, 15, 'Myca_Yurong', 'Jay_Yurong', 'MP5', '2022-10-06 15:36:43'),
(151, 7, 21, 'Xean_Hernandez', 'Myca_Yurong', 'Deagle', '2022-10-06 15:38:17'),
(152, 21, 7, 'Myca_Yurong', 'Xean_Hernandez', 'Deagle', '2022-10-06 15:39:19'),
(153, 21, 7, 'Myca_Yurong', 'Xean_Hernandez', 'Deagle', '2022-10-06 15:40:15'),
(154, 21, 7, 'Myca_Yurong', 'Xean_Hernandez', 'Deagle', '2022-10-06 15:41:01'),
(155, 7, 15, 'Xean_Hernandez', 'Jay_Yurong', 'Explosion', '2022-10-06 16:06:28'),
(156, 7, 15, 'Xean_Hernandez', 'Jay_Yurong', 'Explosion', '2022-10-06 16:10:50'),
(157, 15, 21, 'Jay_Yurong', 'Myca_Yurong', 'Minigun', '2022-10-06 16:16:45'),
(158, 7, 15, 'Xean_Hernandez', 'Jay_Yurong', 'Minigun', '2022-10-06 16:16:49'),
(159, 7, 21, 'Xean_Hernandez', 'Myca_Yurong', 'Minigun', '2022-10-06 16:17:02'),
(160, 15, 21, 'Jay_Yurong', 'Myca_Yurong', 'Minigun', '2022-10-06 16:17:10'),
(161, 15, 21, 'Jay_Yurong', 'Myca_Yurong', 'Minigun', '2022-10-06 16:17:19'),
(162, 7, 15, 'Xean_Hernandez', 'Jay_Yurong', 'Minigun', '2022-10-06 16:17:24'),
(163, 7, 21, 'Xean_Hernandez', 'Myca_Yurong', 'Minigun', '2022-10-06 16:17:36'),
(164, 7, 21, 'Xean_Hernandez', 'Myca_Yurong', 'Minigun', '2022-10-06 16:18:07'),
(165, 7, 27, 'Xean_Hernandez', 'Kairo_Drexel', 'M4', '2022-10-06 19:17:57'),
(166, 21, 7, 'Myca_Yurong', 'Xean_Hernandez', 'Grenade', '2022-10-06 19:23:38'),
(167, 16, 16, 'Peter_La_Citadel', 'Peter_La_Citadel', 'Explosion', '2022-10-07 02:51:31'),
(168, 27, 27, 'Kairo_Drexel', 'Kairo_Drexel', 'Explosion', '2022-10-07 03:56:52'),
(169, 21, 27, 'Myca_Yurong', 'Kairo_Drexel', 'MP5', '2022-10-07 03:59:25'),
(170, 21, 27, 'Myca_Yurong', 'Kairo_Drexel', 'MP5', '2022-10-07 04:00:03'),
(171, 21, 16, 'Myca_Yurong', 'Peter_La_Citadel', 'MP5', '2022-10-07 04:00:22'),
(172, 16, 27, 'Peter_La_Citadel', 'Kairo_Drexel', 'Deagle', '2022-10-07 04:00:34'),
(173, 15, 15, 'Jay_Yurong', 'Jay_Yurong', 'Explosion', '2022-10-07 05:00:15'),
(174, 16, 33, 'Peter_La_Citadel', 'Midas_Doofenshmirtzz', 'Deagle', '2022-10-07 08:18:42'),
(175, 15, 21, 'Jay_Yurong', 'Myca_Yurong', 'MP5', '2022-10-07 09:51:18'),
(176, 15, 21, 'Jay_Yurong', 'Myca_Yurong', 'MP5', '2022-10-07 09:51:31'),
(177, 7, 21, 'Xean_Hernandez', 'Myca_Yurong', 'M4', '2022-10-07 10:49:14'),
(178, 7, 87, 'Xean_Hernandez', 'Diyun_taniman', 'Deagle', '2022-10-07 10:49:50'),
(179, 7, 7, 'Xean_Hernandez', 'Xean_Hernandez', 'Explosion', '2022-10-07 10:50:32'),
(180, 27, 90, 'Kairo_Drexel', 'gee_Osidemafia', 'Grenade', '2022-10-07 11:39:30'),
(181, 88, 16, 'Kaizer_Vagos', 'Peter_La_Citadel', 'M4', '2022-10-07 11:46:55'),
(182, 88, 16, 'Kaizer_Vagos', 'Peter_La_Citadel', 'M4', '2022-10-07 11:47:09'),
(183, 88, 16, 'Kaizer_Vagos', 'Peter_La_Citadel', 'M4', '2022-10-07 11:57:38'),
(184, 88, 16, 'Kaizer_Vagos', 'Peter_La_Citadel', 'M4', '2022-10-07 11:57:49'),
(185, 16, 16, 'Peter_La_Citadel', 'Peter_La_Citadel', 'Explosion', '2022-10-07 12:10:38'),
(186, 7, 88, 'Xean_Hernandez', 'Kaizer_Vagos', 'MP5', '2022-10-07 12:59:20'),
(187, 7, 15, 'Xean_Hernandez', 'Jay_Yurong', 'MP5', '2022-10-07 12:59:29'),
(188, 36, 8, 'Dex_montana', 'Dwayne_Johnson', 'Deagle', '2022-10-07 13:09:46'),
(189, 84, 84, 'Jeffrey_Dahmer', 'Jeffrey_Dahmer', 'Explosion', '2022-10-07 13:40:54'),
(190, 7, 36, 'Xean_Hernandez', 'Dex_montana', 'AK-47', '2022-10-07 13:51:44'),
(191, 7, 15, 'Xean_Hernandez', 'Jay_Yurong', 'AK-47', '2022-10-07 13:52:22'),
(192, 7, 88, 'Xean_Hernandez', 'Kaizer_Vagos', 'AK-47', '2022-10-07 13:53:42'),
(193, 7, 7, 'Xean_Hernandez', 'Xean_Hernandez', 'Explosion', '2022-10-07 14:03:14'),
(194, 56, 87, 'kai_dior', 'Diyun_taniman', 'Fists', '2022-10-07 14:33:46'),
(195, 56, 87, 'kai_dior', 'Diyun_taniman', 'Fists', '2022-10-07 14:34:16'),
(196, 21, 87, 'Myca_Yurong', 'Diyun_taniman', 'MP5', '2022-10-07 15:07:36'),
(197, 21, 87, 'Myca_Yurong', 'Diyun_taniman', 'MP5', '2022-10-07 15:09:43'),
(198, 21, 87, 'Myca_Yurong', 'Diyun_taniman', 'MP5', '2022-10-07 15:13:11'),
(199, 87, 77, 'Diyun_taniman', 'Mhick_Smith', 'MP5', '2022-10-07 15:18:14'),
(200, 21, 87, 'Myca_Yurong', 'Diyun_taniman', 'MP5', '2022-10-07 15:18:19'),
(201, 77, 87, 'Mhick_Smith', 'Diyun_taniman', 'MP5', '2022-10-07 15:18:45'),
(202, 77, 87, 'Mhick_Smith', 'Diyun_taniman', 'MP5', '2022-10-07 15:23:30'),
(203, 91, 45, 'Sylvester_Stallon', 'Pudong_Valentino', 'M4', '2022-10-08 02:28:20'),
(204, 38, 91, 'Carlito_Valentino', 'Sylvester_Stallon', 'M4', '2022-10-08 02:29:27'),
(205, 38, 36, 'Carlito_Valentino', 'Dex_montana', 'M4', '2022-10-08 02:29:42'),
(206, 91, 91, 'Sylvester_Stallon', 'Sylvester_Stallon', 'Explosion', '2022-10-08 02:30:03'),
(207, 36, 36, 'Dex_montana', 'Dex_montana', 'Explosion', '2022-10-08 02:31:35'),
(208, 16, 36, 'Peter_La_Citadel', 'Dex_montana', 'Deagle', '2022-10-08 02:39:55'),
(209, 16, 91, 'Peter_La_Citadel', 'Sylvester_Stallon', 'Deagle', '2022-10-08 02:40:06'),
(210, 21, 16, 'Myca_Yurong', 'Peter_La_Citadel', 'Explosion', '2022-10-08 02:41:10'),
(211, 45, 45, 'Pudong_Valentino', 'Pudong_Valentino', 'Explosion', '2022-10-08 02:41:27'),
(212, 91, 56, 'Sylvester_Stallon', 'kai_dior', 'M4', '2022-10-08 04:21:56'),
(213, 91, 56, 'Sylvester_Stallon', 'kai_dior', 'M4', '2022-10-08 04:22:17'),
(214, 56, 56, 'kai_dior', 'kai_dior', 'Explosion', '2022-10-08 04:33:57'),
(215, 16, 56, 'Peter_La_Citadel', 'kai_dior', 'Deagle', '2022-10-08 04:36:12'),
(216, 16, 56, 'Peter_La_Citadel', 'kai_dior', 'Deagle', '2022-10-08 04:36:48'),
(217, 16, 56, 'Peter_La_Citadel', 'kai_dior', 'Deagle', '2022-10-08 04:37:10'),
(218, 21, 87, 'Eva_Quinn', 'Diyun_taniman', 'MP5', '2022-10-08 07:04:06'),
(219, 16, 21, 'Peter_La_Citadel', 'Eva_Quinn', 'Deagle', '2022-10-08 07:04:08'),
(220, 45, 39, 'Pudong_Valentino', 'Boogey_Valentino', 'M4', '2022-10-08 07:05:36'),
(221, 21, 87, 'Eva_Quinn', 'Diyun_taniman', 'MP5', '2022-10-08 07:46:46'),
(222, 21, 16, 'Eva_Quinn', 'Peter_La_Citadel', 'MP5', '2022-10-08 07:46:53'),
(223, 16, 87, 'Peter_La_Citadel', 'Diyun_taniman', 'Deagle', '2022-10-08 07:54:54'),
(224, 16, 87, 'Peter_La_Citadel', 'Diyun_taniman', 'Deagle', '2022-10-08 08:08:06'),
(225, 16, 87, 'Peter_La_Citadel', 'Diyun_taniman', 'Deagle', '2022-10-08 08:19:06'),
(226, 16, 87, 'Peter_La_Citadel', 'Diyun_taniman', 'Deagle', '2022-10-08 08:48:08'),
(227, 7, 21, 'Xean_Hernandez', 'Eva_Quinn', 'AK-47', '2022-10-08 09:36:17'),
(228, 21, 7, 'Eva_Quinn', 'Xean_Hernandez', 'Fists', '2022-10-08 09:37:12'),
(229, 16, 15, 'Peter_La_Citadel', 'Kaizen_Fang', 'Deagle', '2022-10-08 10:04:49'),
(230, 27, 21, 'Kairo_Drexel', 'Eva_Quinn', 'AK-47', '2022-10-08 10:38:14'),
(231, 7, 27, 'Xean_Hernandez', 'Kairo_Drexel', 'AK-47', '2022-10-08 10:38:21'),
(232, 7, 87, 'Xean_Hernandez', 'Diyun_taniman', 'AK-47', '2022-10-08 10:42:32'),
(233, 7, 27, 'Xean_Hernandez', 'Kairo_Drexel', 'AK-47', '2022-10-08 10:43:12'),
(234, 7, 87, 'Xean_Hernandez', 'Diyun_taniman', 'AK-47', '2022-10-08 10:43:28'),
(235, 7, 21, 'Xean_Hernandez', 'Eva_Quinn', 'AK-47', '2022-10-08 10:44:03'),
(236, 7, 21, 'Xean_Hernandez', 'Eva_Quinn', 'AK-47', '2022-10-08 10:45:52'),
(237, 7, 87, 'Xean_Hernandez', 'Diyun_taniman', 'Silenced pistol', '2022-10-08 10:49:35'),
(238, 27, 21, 'Kairo_Drexel', 'Eva_Quinn', 'Silenced pistol', '2022-10-08 10:49:53'),
(239, 27, 7, 'Kairo_Drexel', 'Xean_Hernandez', 'Silenced pistol', '2022-10-08 10:50:37'),
(240, 27, 7, 'Kairo_Drexel', 'Xean_Hernandez', 'Silenced pistol', '2022-10-08 10:51:44'),
(241, 21, 87, 'Eva_Quinn', 'Diyun_taniman', 'Minigun', '2022-10-08 10:52:27'),
(242, 27, 87, 'Kairo_Drexel', 'Diyun_taniman', 'AK-47', '2022-10-08 10:52:53'),
(243, 7, 27, 'Xean_Hernandez', 'Kairo_Drexel', 'Silenced pistol', '2022-10-08 10:52:58'),
(244, 7, 27, 'Xean_Hernandez', 'Kairo_Drexel', 'Silenced pistol', '2022-10-08 10:53:46'),
(245, 7, 87, 'Xean_Hernandez', 'Diyun_taniman', 'Silenced pistol', '2022-10-08 10:54:18'),
(246, 7, 21, 'Xean_Hernandez', 'Eva_Quinn', 'Silenced pistol', '2022-10-08 10:54:27'),
(247, 7, 87, 'Xean_Hernandez', 'Diyun_taniman', 'Silenced pistol', '2022-10-08 10:55:44'),
(248, 7, 87, 'Xean_Hernandez', 'Diyun_taniman', 'Silenced pistol', '2022-10-08 11:10:30'),
(249, 87, 7, 'Diyun_taniman', 'Xean_Hernandez', 'AK-47', '2022-10-08 11:10:46'),
(250, 7, 87, 'Xean_Hernandez', 'Diyun_taniman', 'Sniper', '2022-10-08 11:11:36'),
(251, 7, 21, 'Xean_Hernandez', 'Eva_Quinn', 'MP5', '2022-10-08 11:14:23'),
(252, 7, 87, 'Xean_Hernandez', 'Diyun_taniman', 'MP5', '2022-10-08 11:14:34'),
(253, 7, 87, 'Xean_Hernandez', 'Diyun_taniman', 'Sniper', '2022-10-08 11:15:37'),
(254, 21, 87, 'Eva_Quinn', 'Diyun_taniman', 'Explosion', '2022-10-08 11:19:32'),
(255, 21, 7, 'Eva_Quinn', 'Xean_Hernandez', 'Explosion', '2022-10-08 11:19:52'),
(256, 7, 87, 'Xean_Hernandez', 'Diyun_taniman', 'Sniper', '2022-10-08 11:21:03'),
(257, 7, 21, 'Xean_Hernandez', 'Eva_Quinn', 'Sniper', '2022-10-08 11:21:05'),
(258, 7, 87, 'Xean_Hernandez', 'Diyun_taniman', 'Sniper', '2022-10-08 11:21:33'),
(259, 7, 27, 'Xean_Hernandez', 'Kairo_Drexel', 'Sniper', '2022-10-08 11:21:36'),
(260, 7, 21, 'Xean_Hernandez', 'Eva_Quinn', 'Sniper', '2022-10-08 11:21:42'),
(261, 27, 87, 'Kairo_Drexel', 'Diyun_taniman', 'Minigun', '2022-10-08 11:23:37'),
(262, 27, 87, 'Kairo_Drexel', 'Diyun_taniman', 'Minigun', '2022-10-08 11:24:34'),
(263, 27, 87, 'Kairo_Drexel', 'Diyun_taniman', 'Minigun', '2022-10-08 11:33:23'),
(264, 7, 87, 'Xean_Hernandez', 'Diyun_taniman', 'Sniper', '2022-10-08 11:33:50'),
(265, 27, 7, 'Kairo_Drexel', 'Xean_Hernandez', 'Explosion', '2022-10-08 11:37:15'),
(266, 27, 21, 'Kairo_Drexel', 'Eva_Quinn', 'Explosion', '2022-10-08 11:37:15'),
(267, 27, 7, 'Kairo_Drexel', 'Xean_Hernandez', 'Minigun', '2022-10-08 11:38:08'),
(268, 27, 21, 'Kairo_Drexel', 'Eva_Quinn', 'Satchel', '2022-10-08 11:39:00'),
(269, 7, 87, 'Xean_Hernandez', 'Diyun_taniman', 'Sniper', '2022-10-08 12:14:37'),
(270, 27, 7, 'Kairo_Drexel', 'Xean_Hernandez', 'Minigun', '2022-10-08 12:14:48'),
(271, 27, 21, 'Kairo_Drexel', 'Eva_Quinn', 'Minigun', '2022-10-08 12:14:53'),
(272, 7, 27, 'Xean_Hernandez', 'Kairo_Drexel', 'Fists', '2022-10-08 12:18:33'),
(273, 16, 36, 'Peter_La_Citadel', 'Dex_montana', 'Explosion', '2022-10-08 12:26:41'),
(274, 36, 36, 'Dex_montana', 'Dex_montana', 'Explosion', '2022-10-08 12:30:49'),
(275, 36, 36, 'Dex_montana', 'Dex_montana', 'Explosion', '2022-10-08 12:34:56'),
(276, 36, 27, 'Dex_montana', 'Kairo_Drexel', 'Fists', '2022-10-08 12:43:11'),
(277, 27, 7, 'Kairo_Drexel', 'Xean_Hernandez', 'Satchel', '2022-10-08 12:46:58'),
(278, 36, 16, 'Dex_montana', 'Peter_La_Citadel', 'Shotgun', '2022-10-08 12:48:01'),
(279, 27, 21, 'Kairo_Drexel', 'Eva_Quinn', 'Satchel', '2022-10-08 12:48:04'),
(280, 36, 16, 'Dex_montana', 'Peter_La_Citadel', 'Combat shotgun', '2022-10-08 13:25:48'),
(281, 36, 16, 'Dex_montana', 'Peter_La_Citadel', 'Combat shotgun', '2022-10-08 13:26:24'),
(282, 36, 16, 'Dex_montana', 'Peter_La_Citadel', 'Deagle', '2022-10-08 13:34:31'),
(283, 36, 16, 'Dex_montana', 'Peter_La_Citadel', 'Deagle', '2022-10-08 13:35:02'),
(284, 36, 16, 'Dex_montana', 'Peter_La_Citadel', 'MP5', '2022-10-08 13:36:54'),
(285, 36, 27, 'Dex_montana', 'Kairo_Drexel', 'MP5', '2022-10-08 16:00:48'),
(286, 36, 87, 'Dex_montana', 'Diyun_taniman', 'MP5', '2022-10-08 16:00:51'),
(287, 27, 87, 'Kairo_Drexel', 'Diyun_taniman', 'Fists', '2022-10-08 16:06:26'),
(288, 97, 97, 'Laurence_Drexel', 'Laurence_Drexel', 'Explosion', '2022-10-08 16:10:35'),
(289, 10, 97, 'xoxo', 'Laurence_Drexel', 'Explosion', '2022-10-08 16:11:38'),
(290, 10, 97, 'xoxo', 'Laurence_Drexel', 'Explosion', '2022-10-08 16:12:26'),
(291, 10, 97, 'xoxo', 'Laurence_Drexel', 'Explosion', '2022-10-08 16:12:43'),
(292, 15, 7, 'Kaizen_Fang', 'Xean_Hernandez', 'Fists', '2022-10-08 17:49:44'),
(293, 21, 15, 'Eva_Quinn', 'Kaizen_Fang', 'MP5', '2022-10-09 04:48:11'),
(294, 21, 36, 'Eva_Quinn', 'Dex_montana', 'MP5', '2022-10-09 05:29:32'),
(295, 36, 15, 'Dex_montana', 'Kaizen_Fang', 'MP5', '2022-10-09 05:31:53'),
(296, 16, 36, 'Peter_La_Citadel', 'Dex_montana', 'Deagle', '2022-10-09 05:34:10'),
(297, 21, 16, 'Eva_Quinn', 'Peter_La_Citadel', 'MP5', '2022-10-09 05:34:18'),
(298, 15, 21, 'Kaizen_Fang', 'Eva_Quinn', 'MP5', '2022-10-09 05:42:14'),
(299, 21, 16, 'Eva_Quinn', 'Peter_La_Citadel', 'Grenade', '2022-10-09 05:44:35'),
(300, 21, 16, 'Eva_Quinn', 'Peter_La_Citadel', 'Grenade', '2022-10-09 05:45:55'),
(301, 16, 36, 'Peter_La_Citadel', 'Dex_montana', 'Grenade', '2022-10-09 05:50:20'),
(302, 36, 16, 'Dex_montana', 'Peter_La_Citadel', 'Grenade', '2022-10-09 05:51:49'),
(303, 21, 16, 'Eva_Quinn', 'Peter_La_Citadel', 'MP5', '2022-10-09 05:53:30'),
(304, 41, 41, 'Dex_Vagos', 'Dex_Vagos', 'Explosion', '2022-10-09 05:56:35'),
(305, 16, 36, 'Peter_La_Citadel', 'Dex_montana', 'Deagle', '2022-10-09 06:11:26'),
(306, 16, 21, 'Peter_La_Citadel', 'Eva_Quinn', 'Fists', '2022-10-09 06:11:42'),
(307, 16, 36, 'Peter_La_Citadel', 'Dex_montana', 'Deagle', '2022-10-09 06:17:21'),
(308, 15, 16, 'Kaizen_Fang', 'Peter_La_Citadel', 'Minigun', '2022-10-09 06:17:27'),
(309, 36, 16, 'Dex_montana', 'Peter_La_Citadel', 'Deagle', '2022-10-09 06:26:29'),
(310, 21, 77, 'Eva_Quinn', 'Mhick_Smith', 'MP5', '2022-10-09 06:29:36'),
(311, 16, 77, 'Peter_La_Citadel', 'Mhick_Smith', 'Deagle', '2022-10-09 06:44:06'),
(312, 21, 16, 'Eva_Quinn', 'Peter_La_Citadel', 'Fists', '2022-10-09 06:44:09'),
(313, 77, 16, 'Mhick_Smith', 'Peter_La_Citadel', 'MP5', '2022-10-09 06:47:02'),
(314, 8, 8, 'Dwayne_Johnson', 'Dwayne_Johnson', 'Explosion', '2022-10-09 10:32:23'),
(315, 8, 8, 'Dwayne_Johnson', 'Dwayne_Johnson', 'Explosion', '2022-10-09 10:34:51'),
(316, 8, 8, 'Dwayne_Johnson', 'Dwayne_Johnson', 'Explosion', '2022-10-09 11:50:41'),
(317, 8, 8, 'Dwayne_Johnson', 'Dwayne_Johnson', 'Explosion', '2022-10-09 11:56:47'),
(318, 8, 8, 'Dwayne_Johnson', 'Dwayne_Johnson', 'Explosion', '2022-10-09 12:13:09'),
(319, 8, 8, 'Dwayne_Johnson', 'Dwayne_Johnson', 'Explosion', '2022-10-09 12:21:03'),
(320, 8, 8, 'Dwayne_Johnson', 'Dwayne_Johnson', 'Explosion', '2022-10-09 12:34:40'),
(321, 8, 8, 'Dwayne_Johnson', 'Dwayne_Johnson', 'Explosion', '2022-10-09 12:46:44'),
(322, 8, 8, 'Dwayne_Johnson', 'Dwayne_Johnson', 'Explosion', '2022-10-09 12:47:44'),
(323, 8, 8, 'Dwayne_Johnson', 'Dwayne_Johnson', 'Explosion', '2022-10-09 12:49:10'),
(324, 8, 8, 'Dwayne_Johnson', 'Dwayne_Johnson', 'Explosion', '2022-10-09 14:38:55'),
(325, 8, 15, 'Dwayne_Johnson', 'Kaizen_Fang', 'Tec-9', '2022-10-09 14:45:09'),
(326, 8, 15, 'Dwayne_Johnson', 'Jay_Yurong', 'Tec-9', '2022-10-09 14:46:42'),
(327, 18, 21, 'Genji_Locco', 'Myca_Cute', 'Sniper', '2022-10-09 16:00:54'),
(328, 15, 18, 'Jay_Yurong', 'Genji_Locco', 'MP5', '2022-10-09 16:02:03'),
(329, 15, 21, 'Jay_Yurong', 'Myca_Cute', 'MP5', '2022-10-09 16:02:07'),
(330, 116, 116, 'Kaito_Rodriguez', 'Kaito_Rodriguez', 'Explosion', '2022-10-10 05:55:28'),
(331, 116, 116, 'Kaito_Rodriguez', 'Kaito_Rodriguez', 'Explosion', '2022-10-10 05:55:40'),
(332, 8, 8, 'Dwayne_Johnson', 'Dwayne_Johnson', 'Explosion', '2022-10-10 13:08:56'),
(333, 87, 87, 'Diyun_taniman', 'Diyun_taniman', 'Explosion', '2022-10-12 09:36:18'),
(334, 16, 87, 'Peter_La_citadel', 'Diyun_taniman', 'Deagle', '2022-10-12 09:53:21'),
(335, 21, 35, 'Myca_Cute', 'Hachi_Montefalco', 'Minigun', '2022-10-12 10:48:43'),
(336, 21, 16, 'Myca_Cute', 'Peter_La_citadel', 'Minigun', '2022-10-12 10:49:22'),
(337, 134, 134, 'Deku_Ross', 'Deku_Ross', 'Explosion', '2022-10-12 13:33:55'),
(338, 10, 27, 'Wilbert_Cordova', 'Kairo_Drexel', 'Fists', '2022-10-12 14:17:33'),
(339, 15, 15, 'Jay_Yurong', 'Jay_Yurong', 'Explosion', '2022-10-12 14:20:23'),
(340, 15, 21, 'Jay_Yurong', 'Myca_Cute', 'MP5', '2022-10-12 16:33:16'),
(341, 15, 134, 'Jay_Yurong', 'Deku_Ross', 'MP5', '2022-10-12 16:34:29'),
(342, 15, 134, 'Jay_Yurong', 'Deku_Ross', 'MP5', '2022-10-12 16:34:38'),
(343, 27, 134, 'Kairo_Drexel', 'Deku_Ross', 'M4', '2022-10-12 17:01:08'),
(344, 27, 21, 'Kairo_Drexel', 'Myca_Cute', 'M4', '2022-10-12 17:01:13'),
(345, 27, 134, 'Kairo_Drexel', 'Deku_Ross', 'M4', '2022-10-12 17:18:07'),
(346, 27, 21, 'Kairo_Drexel', 'Myca_Cute', 'M4', '2022-10-12 17:18:42'),
(347, 134, 134, 'Deku_Ross', 'Deku_Ross', 'Explosion', '2022-10-12 17:19:18'),
(348, 15, 21, 'Jay_Yurong', 'Myca_Cute', 'MP5', '2022-10-12 17:19:20'),
(349, 36, 36, 'Dex_montana', 'Dex_montana', 'Explosion', '2022-10-14 01:50:26'),
(350, 36, 36, 'Dex_montana', 'Dex_montana', 'Explosion', '2022-10-14 01:50:46'),
(351, 36, 16, 'Dex_montana', 'Peter_La_citadel', 'Deagle', '2022-10-14 03:24:30'),
(352, 36, 16, 'Dex_montana', 'Peter_La_citadel', 'Deagle', '2022-10-14 03:25:36'),
(353, 15, 21, 'Jay_Yurong', 'Myca_Cute', 'M4', '2022-10-14 06:27:18'),
(354, 15, 21, 'Jay_Yurong', 'Myca_Cute', 'M4', '2022-10-14 07:02:32'),
(355, 15, 21, 'Jay_Yurong', 'Myca_Cute', 'M4', '2022-10-14 07:04:08'),
(356, 144, 144, 'robert_balong', 'robert_balong', 'Explosion', '2022-10-14 07:06:13'),
(357, 15, 146, 'Jay_Yurong', 'Cedric_Hakim', 'M4', '2022-10-14 07:07:03'),
(358, 15, 15, 'Jay_Yurong', 'Jay_Yurong', 'Explosion', '2022-10-14 07:12:20'),
(359, 15, 146, 'Jay_Yurong', 'Cedric_Hakim', 'M4', '2022-10-14 07:14:20'),
(360, 27, 21, 'Kairo_Drexel', 'Myca_Cute', 'Fists', '2022-10-14 07:18:57'),
(361, 146, 27, 'Cedric_Hakim', 'Kairo_Drexel', 'Fists', '2022-10-14 07:18:59'),
(362, 15, 146, 'Jay_Yurong', 'Cedric_Hakim', 'Fists', '2022-10-14 07:19:30'),
(363, 15, 146, 'Jay_Yurong', 'Cedric_Hakim', 'Fists', '2022-10-14 07:19:44'),
(364, 15, 21, 'Jay_Yurong', 'Myca_Cute', 'Fists', '2022-10-14 07:19:57'),
(365, 15, 146, 'Jay_Yurong', 'Cedric_Hakim', 'M4', '2022-10-14 07:31:39'),
(366, 15, 146, 'Jay_Yurong', 'Cedric_Hakim', 'M4', '2022-10-14 07:31:45'),
(367, 27, 146, 'Kairo_Drexel', 'Cedric_Hakim', 'MP5', '2022-10-14 07:39:17'),
(368, 27, 21, 'Kairo_Drexel', 'Myca_Cute', 'MP5', '2022-10-14 07:39:24'),
(369, 15, 146, 'Jay_Yurong', 'Cedric_Hakim', 'M4', '2022-10-14 07:39:30'),
(370, 15, 21, 'Jay_Yurong', 'Myca_Cute', 'M4', '2022-10-14 07:39:46'),
(371, 15, 21, 'Jay_Yurong', 'Myca_Cute', 'Fists', '2022-10-14 07:51:02'),
(372, 27, 146, 'Kairo_Drexel', 'Cedric_Hakim', 'Deagle', '2022-10-14 07:59:02'),
(373, 21, 27, 'Myca_Cute', 'Kairo_Drexel', 'Explosion', '2022-10-14 08:20:00'),
(374, 21, 146, 'Myca_Cute', 'Cedric_Hakim', 'Explosion', '2022-10-14 08:20:32'),
(375, 21, 146, 'Myca_Cute', 'Cedric_Hakim', 'Explosion', '2022-10-14 08:20:57'),
(376, 21, 27, 'Myca_Cute', 'Kairo_Drexel', 'Explosion', '2022-10-14 08:21:54'),
(377, 21, 146, 'Myca_Cute', 'Cedric_Hakim', 'Explosion', '2022-10-14 08:25:53'),
(378, 15, 21, 'Jay_Yurong', 'Myca_Cute', 'Explosion', '2022-10-14 08:36:39'),
(379, 15, 27, 'Jay_Yurong', 'Kairo_Drexel', 'Explosion', '2022-10-14 08:36:52'),
(380, 15, 21, 'Jay_Yurong', 'Myca_Cute', 'M4', '2022-10-14 08:37:35'),
(381, 136, 146, 'Zae_Joji', 'Cedric_Hakim', 'AK-47', '2022-10-14 08:53:15'),
(382, 136, 146, 'Zae_Joji', 'Cedric_Hakim', 'AK-47', '2022-10-14 08:54:51'),
(383, 27, 146, 'Kairo_Drexel', 'Cedric_Hakim', 'Deagle', '2022-10-14 09:06:10'),
(384, 136, 146, 'Zae_Joji', 'Cedric_Hakim', 'AK-47', '2022-10-14 09:18:23'),
(385, 136, 35, 'Zae_Joji', 'Hachi_Montefalco', 'AK-47', '2022-10-14 09:20:52'),
(386, 36, 36, 'Dex_montana', 'Dex_montana', 'Explosion', '2022-10-14 11:23:33'),
(387, 36, 36, 'Dex_montana', 'Dex_montana', 'Explosion', '2022-10-14 11:23:57'),
(388, 36, 36, 'Dex_montana', 'Dex_montana', 'Explosion', '2022-10-14 12:08:42'),
(389, 36, 36, 'Dex_montana', 'Dex_montana', 'Explosion', '2022-10-14 12:08:59'),
(390, 99, 145, 'Laurence_El_Drexel', 'Toshiro_Khalixta', 'Combat shotgun', '2022-10-14 13:04:21'),
(391, 99, 145, 'Laurence_El_Drexel', 'Toshiro_Khalixta', 'MP5', '2022-10-14 13:04:35'),
(392, 27, 99, 'Kairo_Drexel', 'Laurence_El_Drexel', 'MP5', '2022-10-14 13:33:48'),
(393, 99, 99, 'Laurence_El_Drexel', 'Laurence_El_Drexel', 'Explosion', '2022-10-14 13:34:29');

-- --------------------------------------------------------

--
-- Table structure for table `landobjects`
--

CREATE TABLE `landobjects` (
  `id` int(10) NOT NULL,
  `landid` int(10) DEFAULT NULL,
  `modelid` smallint(5) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `rot_x` float DEFAULT NULL,
  `rot_y` float DEFAULT NULL,
  `rot_z` float DEFAULT NULL,
  `door_opened` tinyint(1) DEFAULT 0,
  `door_locked` tinyint(1) DEFAULT 0,
  `move_x` float DEFAULT 0,
  `move_y` float DEFAULT 0,
  `move_z` float DEFAULT 0,
  `move_rx` float DEFAULT 0,
  `move_ry` float DEFAULT 0,
  `move_rz` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lands`
--

CREATE TABLE `lands` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT 0,
  `owner` varchar(24) DEFAULT 'Nobody',
  `price` int(10) DEFAULT 0,
  `min_x` float DEFAULT 0,
  `min_y` float DEFAULT 0,
  `max_x` float DEFAULT 0,
  `max_y` float DEFAULT 0,
  `height` float DEFAULT 0,
  `lx` float NOT NULL,
  `ly` float NOT NULL,
  `lz` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_admin`
--

CREATE TABLE `log_admin` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_admin`
--

INSERT INTO `log_admin` (`id`, `date`, `description`) VALUES
(1, '2022-10-04 01:59:03', 'Jay_Yurong (uid: 15) set Jay_Yurong\'s (uid: 15) admin level to 7'),
(2, '2022-10-04 02:03:09', 'Myca_Yurong (uid: 9) set Myca_Yurong\'s (uid: 9) admin level to 7'),
(3, '2022-10-04 02:11:36', 'Myca_Yurong (uid: 21) set Myca_Yurong\'s (uid: 21) admin level to 7'),
(4, '2022-10-04 07:04:55', 'Wilbert_Cordova (uid: 10) set Wilbert_Cordova\'s (uid: 10) admin level to 7'),
(5, '2022-10-04 15:05:32', 'Dwayne_Johnson (uid: 8) set Dwayne_Johnson\'s (uid: 8) admin level to 0'),
(6, '2022-10-04 15:09:23', 'Dwayne_Johnson (uid: 8) set Dwayne_Johnson\'s (uid: 8) admin level to 7'),
(7, '2022-10-04 15:12:47', 'Jay_Yurong (uid: 15) set Jay_Yurong\'s (uid: 15) admin level to 7'),
(8, '2022-10-04 16:31:40', 'lei_sy (uid: 59) set lei_sy\'s (uid: 59) admin level to 7'),
(9, '2022-10-05 07:33:12', 'Dwayne_Johnson (uid: 8) set Dwayne_Johnson\'s (uid: 8) admin level to 0'),
(10, '2022-10-05 07:33:22', 'Dwayne_Johnson (uid: 8) set Dwayne_Johnson\'s (uid: 8) admin level to 7'),
(11, '2022-10-05 09:52:18', 'Dwayne_Johnson (uid: 8) offline fined chumito_locco for $9000000, reason: exploit bug'),
(12, '2022-10-05 09:52:57', 'Dwayne_Johnson (uid: 8) offline fined chumito_locco for $900000000, reason: exploit bug'),
(13, '2022-10-05 09:53:28', 'Dwayne_Johnson (uid: 8) offline fined jay_yurong for $900000000, reason: exploit bug'),
(14, '2022-10-05 14:36:52', 'Dwayne_Johnson (uid: 8) offline fined Chumito_Locco for $2043514880, reason: exploiting the bug'),
(15, '2022-10-05 14:37:31', 'Dwayne_Johnson (uid: 8) offline fined Jay_Yurong for $2043514880, reason: exploiting the bug'),
(16, '2022-10-06 01:07:09', 'Dwayne_Johnson (uid: 8) set Dwayne_Johnson\'s (uid: 8) admin level to 2'),
(17, '2022-10-06 02:01:00', 'Dwayne_Johnson (uid: 8) set Dwayne_Johnson\'s (uid: 8) admin level to 7'),
(18, '2022-10-11 04:03:09', 'Jay_Yurong (uid: 15) set Jay_Yurong\'s (uid: 15) admin level to 7'),
(19, '2022-10-11 05:51:36', 'Jay_Yurong (uid: 15) set Jay_Yurong\'s (uid: 15) admin level to 10'),
(20, '2022-10-11 10:13:11', 'Dwayne_Johnson (uid: 8) set Dwayne_Johnson\'s (uid: 8) admin level to 10'),
(21, '2022-10-11 13:01:00', 'Myca_Cute (uid: 21) set Myca_Cute\'s (uid: 21) admin level to 10'),
(22, '2022-10-12 10:17:35', 'Myca_Cute (uid: 21) set Mush_ibasco\'s (uid: 23) admin level to 8'),
(23, '2022-10-12 13:51:13', 'Myca_Cute (uid: 21) set Wilbert_Cordova\'s (uid: 10) admin level to 10');

-- --------------------------------------------------------

--
-- Table structure for table `log_bans`
--

CREATE TABLE `log_bans` (
  `id` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_bans`
--

INSERT INTO `log_bans` (`id`, `uid`, `date`, `description`) VALUES
(1, 32, '2022-10-04 09:05:03', 'Leon_Cordova (IP: 49.145.110.45) was banned by Anti-Cheat, reason: Car warping'),
(2, 31, '2022-10-04 16:55:30', 'Rapido_Alvarez (IP: 122.54.145.0) was banned by lei_sy, reason: wag kana bumalik di ka need dito abuser '),
(3, 7, '2022-10-05 16:41:09', 'Chumito_Locco (IP: 49.149.108.105) was banned by Dwayne_Johnson, reason: bwal bata'),
(4, 83, '2022-10-06 18:54:10', 'Ogbaboy_El_Groove (IP: 180.190.125.94) was banned by Myca_Yurong, reason: wag dito'),
(5, 83, '2022-10-06 18:55:13', 'Ogbaboy_El_Groove (IP: 180.190.125.94) was banned by Myca_Yurong, reason: .'),
(6, 101, '2022-10-10 06:53:13', 'Jp_Antonio (IP: 120.29.110.121) was banned by Myca_Cute, reason: PM MOKO ');

-- --------------------------------------------------------

--
-- Table structure for table `log_cheat`
--

CREATE TABLE `log_cheat` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_cheat`
--

INSERT INTO `log_cheat` (`id`, `date`, `description`) VALUES
(1, '2022-10-04 02:10:32', 'Verino_Valdez (uid: 20) had a desynced Sniper with 100 ammunition.'),
(2, '2022-10-04 02:16:02', 'Arthur_La_Citadel (uid: 22) had a desynced Knife with 1 ammunition.'),
(3, '2022-10-04 02:32:34', 'Arthur_La_Citadel (uid: 22) had a desynced Knife with 1 ammunition.'),
(4, '2022-10-04 02:34:10', 'Arthur_La_Citadel (uid: 22) had a desynced Knife with 1 ammunition.'),
(5, '2022-10-04 02:47:51', 'Arthur_La_Citadel (uid: 22) had a desynced Knife with 1 ammunition.'),
(6, '2022-10-04 02:47:54', 'Arthur_La_Citadel (uid: 22) had a desynced Knife with 1 ammunition.'),
(7, '2022-10-04 06:11:29', 'Donny_Macapagal (uid: 25) had a desynced Knife with -31073 ammunition.'),
(8, '2022-10-04 06:11:44', 'Donny_Macapagal (uid: 25) had a desynced Knife with -31073 ammunition.'),
(9, '2022-10-04 06:24:57', 'Arthur_La_Citadel (uid: 22) had a desynced Knife with 1 ammunition.'),
(10, '2022-10-04 06:25:28', 'Arthur_La_Citadel (uid: 22) had a desynced Knife with 2 ammunition.'),
(11, '2022-10-05 13:05:50', 'Kyle_Kyle (uid: 55) had a desynced Pool cue with 1 ammunition.'),
(12, '2022-10-07 12:23:54', 'Arthur_La_Citadel (uid: 22) had a desynced Knife with 1 ammunition.'),
(13, '2022-10-08 02:39:57', 'Sylvester_Stallon (uid: 91) had a desynced Shotgun with 5 ammunition.'),
(14, '2022-10-08 02:47:28', 'Sylvester_Stallon (uid: 91) had a desynced Shotgun with 5 ammunition.'),
(15, '2022-10-08 02:47:30', 'Sylvester_Stallon (uid: 91) had a desynced Shotgun with 5 ammunition.'),
(16, '2022-10-08 02:52:34', 'Sylvester_Stallon (uid: 91) had a desynced Shotgun with 5 ammunition.'),
(17, '2022-10-08 05:58:21', 'kai_dior (uid: 56) had a desynced Mac-10 with 150 ammunition.');

-- --------------------------------------------------------

--
-- Table structure for table `log_contracts`
--

CREATE TABLE `log_contracts` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_faction`
--

CREATE TABLE `log_faction` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_faction`
--

INSERT INTO `log_faction` (`id`, `date`, `description`) VALUES
(1, '2022-10-04 07:06:27', 'Dex_montana (uid: 36) has invited Kai_Itchi (uid: 37) to Star City Police Department (id: 1).'),
(2, '2022-10-04 13:21:13', 'Dex_montana (uid: 36) has invited Hachi_Montefalco (uid: 35) to Star City Police Department (id: 1).'),
(3, '2022-10-04 13:34:46', 'Dex_montana (uid: 36) has invited Midas_Doofenshmirtzz (uid: 33) to Star City Police Department (id: 1).'),
(4, '2022-10-04 14:33:54', 'Don_tagalog (uid: 49) has invited Peter_La_Citadel (uid: 16) to Star City Fire and Medic Department (id: 2).'),
(5, '2022-10-05 05:50:49', 'Tetsuya_Sugo (uid: 65) has invited John_Mendoza (uid: 26) to Star City Armed Forces (id: 14).'),
(6, '2022-10-05 12:23:41', 'Dex_montana (uid: 36) has invited Kyle_Kyle (uid: 55) to Star City Police Department (id: 1).'),
(7, '2022-10-05 12:54:50', 'Tetsuya_Sugo (uid: 65) has invited Marcos_Tonkin (uid: 72) to Star City Armed Forces (id: 14).'),
(8, '2022-10-07 03:46:27', 'Dex_montana (uid: 36) has invited Miguel_Katapang (uid: 54) to Star City Police Department (id: 1).'),
(9, '2022-10-08 01:43:38', 'Gabriel_Smith (uid: 13) has arrested Diyun_taniman (uid: 87) for 10 minutes, fine: $5000.'),
(10, '2022-10-08 02:07:45', 'Dex_montana (uid: 36) has invited Sylvester_Stallon (uid: 91) to Star City Police Department (id: 1).'),
(11, '2022-10-14 11:35:29', 'Dex_montana (uid: 36) has invited Cedric_Hakim (uid: 146) to Star City Police Department (id: 1).'),
(12, '2022-10-14 11:58:45', 'Dex_montana (uid: 36) has taken Cedric_Hakim\'s (uid: 146) weapons.');

-- --------------------------------------------------------

--
-- Table structure for table `log_gang`
--

CREATE TABLE `log_gang` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_gang`
--

INSERT INTO `log_gang` (`id`, `date`, `description`) VALUES
(1, '2022-10-04 02:44:15', 'Arthur_La_Citadel (uid: 22) has invited Peter_La_Citadel (uid: 16) to La Citadel Kohser (id: 1).'),
(2, '2022-10-04 03:17:46', 'Justine_Crimel (uid: 14) deposits an AK-47 in the La Citadel Kohser (id: 1) gang stash.'),
(3, '2022-10-04 03:17:53', 'Justine_Crimel (uid: 14) deposits an AK-47 in the La Citadel Kohser (id: 1) gang stash.'),
(4, '2022-10-04 03:17:56', 'Justine_Crimel (uid: 14) deposits an AK-47 in the La Citadel Kohser (id: 1) gang stash.'),
(5, '2022-10-04 03:18:00', 'Justine_Crimel (uid: 14) deposits an AK-47 in the La Citadel Kohser (id: 1) gang stash.'),
(6, '2022-10-04 03:18:04', 'Justine_Crimel (uid: 14) deposits an AK-47 in the La Citadel Kohser (id: 1) gang stash.'),
(7, '2022-10-04 03:18:13', 'Justine_Crimel (uid: 14) deposits an M4 in the La Citadel Kohser (id: 1) gang stash.'),
(8, '2022-10-04 03:18:16', 'Justine_Crimel (uid: 14) deposits an M4 in the La Citadel Kohser (id: 1) gang stash.'),
(9, '2022-10-04 03:18:19', 'Justine_Crimel (uid: 14) deposits an M4 in the La Citadel Kohser (id: 1) gang stash.'),
(10, '2022-10-04 03:18:22', 'Justine_Crimel (uid: 14) deposits an M4 in the La Citadel Kohser (id: 1) gang stash.'),
(11, '2022-10-04 03:18:29', 'Justine_Crimel (uid: 14) deposits an M4 in the La Citadel Kohser (id: 1) gang stash.'),
(12, '2022-10-04 03:18:36', 'Justine_Crimel (uid: 14) deposits an MP5 in the La Citadel Kohser (id: 1) gang stash.'),
(13, '2022-10-04 03:18:40', 'Justine_Crimel (uid: 14) deposits an MP5 in the La Citadel Kohser (id: 1) gang stash.'),
(14, '2022-10-04 03:18:43', 'Justine_Crimel (uid: 14) deposits an MP5 in the La Citadel Kohser (id: 1) gang stash.'),
(15, '2022-10-04 03:18:47', 'Justine_Crimel (uid: 14) deposits an MP5 in the La Citadel Kohser (id: 1) gang stash.'),
(16, '2022-10-04 03:18:51', 'Justine_Crimel (uid: 14) deposits an MP5 in the La Citadel Kohser (id: 1) gang stash.'),
(17, '2022-10-04 03:20:40', 'Peter_La_Citadel (uid: 16) withdraws an M4 from the La Citadel Kohser (id: 1) gang stash.'),
(18, '2022-10-04 06:11:06', 'Arthur_La_Citadel (uid: 22) withdraws an M4 from the La Citadel Kohser (id: 1) gang stash.'),
(19, '2022-10-04 06:11:31', 'Arthur_La_Citadel (uid: 22) has invited enock_cadiao (uid: 40) to La Citadel Kohser (id: 1).'),
(20, '2022-10-04 06:30:56', 'Peter_La_Citadel (uid: 16) withdraws an M4 from the La Citadel Kohser (id: 1) gang stash.'),
(21, '2022-10-04 09:15:21', 'Myca_Yurong (uid: 21) deposits an AK-47 in the Geng Geng (id: 2) gang stash.'),
(22, '2022-10-04 09:15:32', 'Myca_Yurong (uid: 21) deposits an AK-47 in the Geng Geng (id: 2) gang stash.'),
(23, '2022-10-04 09:15:41', 'Myca_Yurong (uid: 21) deposits an AK-47 in the Geng Geng (id: 2) gang stash.'),
(24, '2022-10-04 09:15:50', 'Myca_Yurong (uid: 21) deposits an AK-47 in the Geng Geng (id: 2) gang stash.'),
(25, '2022-10-04 09:16:04', 'Myca_Yurong (uid: 21) deposits an AK-47 in the Geng Geng (id: 2) gang stash.'),
(26, '2022-10-04 09:16:11', 'Myca_Yurong (uid: 21) deposits an AK-47 in the Geng Geng (id: 2) gang stash.'),
(27, '2022-10-04 09:16:20', 'Myca_Yurong (uid: 21) deposits an AK-47 in the Geng Geng (id: 2) gang stash.'),
(28, '2022-10-04 09:16:30', 'Myca_Yurong (uid: 21) deposits an AK-47 in the Geng Geng (id: 2) gang stash.'),
(29, '2022-10-04 09:16:38', 'Myca_Yurong (uid: 21) deposits an AK-47 in the Geng Geng (id: 2) gang stash.'),
(30, '2022-10-04 09:16:51', 'Myca_Yurong (uid: 21) deposits an AK-47 in the Geng Geng (id: 2) gang stash.'),
(31, '2022-10-04 09:17:03', 'Myca_Yurong (uid: 21) deposits an M4 in the Geng Geng (id: 2) gang stash.'),
(32, '2022-10-04 09:17:12', 'Myca_Yurong (uid: 21) deposits an M4 in the Geng Geng (id: 2) gang stash.'),
(33, '2022-10-04 09:17:22', 'Myca_Yurong (uid: 21) deposits an M4 in the Geng Geng (id: 2) gang stash.'),
(34, '2022-10-04 09:17:30', 'Myca_Yurong (uid: 21) deposits an M4 in the Geng Geng (id: 2) gang stash.'),
(35, '2022-10-04 09:17:40', 'Myca_Yurong (uid: 21) deposits an M4 in the Geng Geng (id: 2) gang stash.'),
(36, '2022-10-04 09:17:49', 'Myca_Yurong (uid: 21) deposits an M4 in the Geng Geng (id: 2) gang stash.'),
(37, '2022-10-04 09:17:58', 'Myca_Yurong (uid: 21) deposits an M4 in the Geng Geng (id: 2) gang stash.'),
(38, '2022-10-04 09:18:05', 'Myca_Yurong (uid: 21) deposits an M4 in the Geng Geng (id: 2) gang stash.'),
(39, '2022-10-04 09:18:14', 'Myca_Yurong (uid: 21) deposits an M4 in the Geng Geng (id: 2) gang stash.'),
(40, '2022-10-04 09:18:26', 'Myca_Yurong (uid: 21) deposits an M4 in the Geng Geng (id: 2) gang stash.'),
(41, '2022-10-04 09:18:36', 'Myca_Yurong (uid: 21) deposits an MP5 in the Geng Geng (id: 2) gang stash.'),
(42, '2022-10-04 09:18:44', 'Myca_Yurong (uid: 21) deposits an MP5 in the Geng Geng (id: 2) gang stash.'),
(43, '2022-10-04 09:18:57', 'Myca_Yurong (uid: 21) deposits an MP5 in the Geng Geng (id: 2) gang stash.'),
(44, '2022-10-04 09:19:08', 'Myca_Yurong (uid: 21) deposits an MP5 in the Geng Geng (id: 2) gang stash.'),
(45, '2022-10-04 09:19:18', 'Myca_Yurong (uid: 21) deposits an MP5 in the Geng Geng (id: 2) gang stash.'),
(46, '2022-10-04 09:19:26', 'Myca_Yurong (uid: 21) deposits an MP5 in the Geng Geng (id: 2) gang stash.'),
(47, '2022-10-04 09:19:38', 'Myca_Yurong (uid: 21) deposits an MP5 in the Geng Geng (id: 2) gang stash.'),
(48, '2022-10-04 09:19:46', 'Myca_Yurong (uid: 21) deposits an MP5 in the Geng Geng (id: 2) gang stash.'),
(49, '2022-10-04 09:19:55', 'Myca_Yurong (uid: 21) deposits an MP5 in the Geng Geng (id: 2) gang stash.'),
(50, '2022-10-04 09:20:03', 'Myca_Yurong (uid: 21) deposits an MP5 in the Geng Geng (id: 2) gang stash.'),
(51, '2022-10-04 09:29:31', 'Chumito_Locco (uid: 7) has invited Genji_Locco (uid: 18) to Geng Geng (id: 2).'),
(52, '2022-10-04 09:49:33', 'Chumito_Locco (uid: 7) withdraws an M4 from the Geng Geng (id: 2) gang stash.'),
(53, '2022-10-04 10:59:31', 'Chumito_Locco (uid: 7) withdraws an AK-47 from the Geng Geng (id: 2) gang stash.'),
(54, '2022-10-04 11:11:12', 'Chumito_Locco (uid: 7) has invited Hector_Cordova (uid: 47) to Geng Geng (id: 2).'),
(55, '2022-10-04 11:11:30', 'Chumito_Locco (uid: 7) has invited Pablo_Y._Cordova (uid: 46) to Geng Geng (id: 2).'),
(56, '2022-10-04 11:15:37', 'Chumito_Locco (uid: 7) has invited Leon_Cordova (uid: 32) to Geng Geng (id: 2).'),
(57, '2022-10-04 11:24:34', 'Pablo_Y._Cordova (uid: 46) withdraws an M4 from the Geng Geng (id: 2) gang stash.'),
(58, '2022-10-04 11:24:37', 'Pablo_Y._Cordova (uid: 46) withdraws a Desert Eagle from the Geng Geng (id: 2) gang stash.'),
(59, '2022-10-04 11:24:49', 'Pablo_Y._Cordova (uid: 46) withdraws 1 grams of meth from the gang stash.'),
(60, '2022-10-04 11:24:55', 'Pablo_Y._Cordova (uid: 46) withdraws 24 grams of meth from the gang stash.'),
(61, '2022-10-04 11:25:46', 'Leon_Cordova (uid: 32) withdraws a Desert Eagle from the Geng Geng (id: 2) gang stash.'),
(62, '2022-10-04 11:26:04', 'Leon_Cordova (uid: 32) withdraws an MP5 from the Geng Geng (id: 2) gang stash.'),
(63, '2022-10-04 11:29:13', 'Hector_Cordova (uid: 47) withdraws an AK-47 from the Geng Geng (id: 2) gang stash.'),
(64, '2022-10-04 12:00:18', 'Chumito_Locco (uid: 7) has invited Hachi_Montefalco (uid: 35) to Geng Geng (id: 2).'),
(65, '2022-10-04 12:22:53', 'Chumito_Locco (uid: 7) deposits an AK-47 in the Geng Geng (id: 2) gang stash.'),
(66, '2022-10-04 12:22:57', 'Chumito_Locco (uid: 7) withdraws an M4 from the Geng Geng (id: 2) gang stash.'),
(67, '2022-10-04 12:23:04', 'Pablo_Y._Cordova (uid: 46) withdraws 25 grams of Crack from the gang stash.'),
(68, '2022-10-04 12:25:03', 'Chumito_Locco (uid: 7) withdraws an M4 from the Geng Geng (id: 2) gang stash.'),
(69, '2022-10-04 12:25:09', 'Chumito_Locco (uid: 7) withdraws an M4 from the Geng Geng (id: 2) gang stash.'),
(70, '2022-10-04 12:25:17', 'Chumito_Locco (uid: 7) withdraws an M4 from the Geng Geng (id: 2) gang stash.'),
(71, '2022-10-04 12:25:23', 'Chumito_Locco (uid: 7) withdraws an M4 from the Geng Geng (id: 2) gang stash.'),
(72, '2022-10-04 12:30:11', 'Chumito_Locco (uid: 7) has invited Juan_Pablo (uid: 52) to Geng Geng (id: 2).'),
(73, '2022-10-04 12:56:24', 'Leon_Cordova (uid: 32) withdraws an MP5 from the Geng Geng (id: 2) gang stash.'),
(74, '2022-10-04 13:00:56', 'Hector_Cordova (uid: 47) withdraws an AK-47 from the Geng Geng (id: 2) gang stash.'),
(75, '2022-10-04 13:01:07', 'Hector_Cordova (uid: 47) withdraws an MP5 from the Geng Geng (id: 2) gang stash.'),
(76, '2022-10-04 13:01:26', 'Genji_Locco (uid: 18) withdraws an MP5 from the Geng Geng (id: 2) gang stash.'),
(77, '2022-10-04 13:01:40', 'Genji_Locco (uid: 18) deposits an MP5 in the Geng Geng (id: 2) gang stash.'),
(78, '2022-10-04 13:01:54', 'Genji_Locco (uid: 18) withdraws an M4 from the Geng Geng (id: 2) gang stash.'),
(79, '2022-10-04 13:42:19', 'Leon_Locco (uid: 32) withdraws an MP5 from the Geng Geng (id: 2) gang stash.'),
(80, '2022-10-04 15:07:07', 'Chumito_Locco (uid: 7) withdraws an M4 from the Geng Geng (id: 2) gang stash.'),
(81, '2022-10-04 15:07:57', 'Leon_Locco (uid: 32) withdraws an MP5 from the Geng Geng (id: 2) gang stash.'),
(82, '2022-10-04 16:13:24', 'Chumito_Locco (uid: 7) deposits a sniper rifle in the Geng Geng (id: 2) gang stash.'),
(83, '2022-10-04 16:13:45', 'Chumito_Locco (uid: 7) deposits a Desert Eagle in the Geng Geng (id: 2) gang stash.'),
(84, '2022-10-04 16:36:33', 'Chumito_Locco (uid: 7) has invited Leon_Locco (uid: 32) to Geng Geng (id: 2).'),
(85, '2022-10-04 16:40:06', 'Chumito_Locco (uid: 7) has invited Kairo_Drexel (uid: 27) to Geng Geng (id: 2).'),
(86, '2022-10-04 19:04:07', 'Chumito_Locco (uid: 7) has invited Devin_John (uid: 61) to Geng Geng (id: 2).'),
(87, '2022-10-04 20:14:12', 'Devin_John (uid: 61) withdraws 20 grams of meth from the gang stash.'),
(88, '2022-10-04 20:14:25', 'Devin_John (uid: 61) withdraws an AK-47 from the Geng Geng (id: 2) gang stash.'),
(89, '2022-10-04 20:14:30', 'Devin_John (uid: 61) withdraws a sniper rifle from the Geng Geng (id: 2) gang stash.'),
(90, '2022-10-04 20:16:52', 'Devin_John (uid: 61) withdraws 20 grams of Crack from the gang stash.'),
(91, '2022-10-04 20:17:29', 'Chumito_Locco (uid: 7) withdraws 10 grams of meth from the gang stash.'),
(92, '2022-10-04 20:17:32', 'Devin_John (uid: 61) withdraws an MP5 from the Geng Geng (id: 2) gang stash.'),
(93, '2022-10-04 20:17:37', 'Devin_John (uid: 61) withdraws a Desert Eagle from the Geng Geng (id: 2) gang stash.'),
(94, '2022-10-04 20:19:15', 'Chumito_Locco (uid: 7) deposits a Desert Eagle in the Geng Geng (id: 2) gang stash.'),
(95, '2022-10-04 20:19:28', 'Devin_John (uid: 61) deposits an MP5 in the Geng Geng (id: 2) gang stash.'),
(96, '2022-10-04 20:20:10', 'Devin_John (uid: 61) deposits an AK-47 in the Geng Geng (id: 2) gang stash.'),
(97, '2022-10-04 20:25:01', 'Chumito_Locco (uid: 7) deposits an M4 in the Geng Geng (id: 2) gang stash.'),
(98, '2022-10-04 20:25:07', 'Devin_John (uid: 61) deposits a sniper rifle in the Geng Geng (id: 2) gang stash.'),
(99, '2022-10-04 20:25:27', 'Chumito_Locco (uid: 7) deposits an M4 in the Geng Geng (id: 2) gang stash.'),
(100, '2022-10-04 20:26:43', 'Chumito_Locco (uid: 7) withdraws an M4 from the Geng Geng (id: 2) gang stash.'),
(101, '2022-10-04 20:26:53', 'Chumito_Locco (uid: 7) deposits a Desert Eagle in the Geng Geng (id: 2) gang stash.'),
(102, '2022-10-04 20:32:27', 'Devin_John (uid: 61) withdraws 20 grams of Crack from the gang stash.'),
(103, '2022-10-05 00:33:47', 'Arthur_La_Citadel (uid: 22) withdraws an M4 from the La Citadel Kohser (id: 1) gang stash.'),
(104, '2022-10-05 01:35:02', 'Arthur_La_Citadel (uid: 22) has invited Arnulfo_Ipis (uid: 24) to La Citadel Kohser (id: 1).'),
(105, '2022-10-05 01:35:18', 'Arthur_La_Citadel (uid: 22) withdraws an M4 from the La Citadel Kohser (id: 1) gang stash.'),
(106, '2022-10-05 02:09:55', 'Mush_Ibasco (uid: 23) deposits an M4 in the El Valentino (id: 3) gang stash.'),
(107, '2022-10-05 02:10:10', 'Mush_Ibasco (uid: 23) deposits an M4 in the El Valentino (id: 3) gang stash.'),
(108, '2022-10-05 02:10:23', 'Mush_Ibasco (uid: 23) deposits an M4 in the El Valentino (id: 3) gang stash.'),
(109, '2022-10-05 02:10:37', 'Mush_Ibasco (uid: 23) deposits an M4 in the El Valentino (id: 3) gang stash.'),
(110, '2022-10-05 02:10:48', 'Mush_Ibasco (uid: 23) deposits an M4 in the El Valentino (id: 3) gang stash.'),
(111, '2022-10-05 02:11:01', 'Mush_Ibasco (uid: 23) deposits an M4 in the El Valentino (id: 3) gang stash.'),
(112, '2022-10-05 02:11:13', 'Mush_Ibasco (uid: 23) deposits an M4 in the El Valentino (id: 3) gang stash.'),
(113, '2022-10-05 02:11:27', 'Mush_Ibasco (uid: 23) deposits an M4 in the El Valentino (id: 3) gang stash.'),
(114, '2022-10-05 02:11:38', 'Mush_Ibasco (uid: 23) deposits an M4 in the El Valentino (id: 3) gang stash.'),
(115, '2022-10-05 02:11:50', 'Mush_Ibasco (uid: 23) deposits an M4 in the El Valentino (id: 3) gang stash.'),
(116, '2022-10-05 02:12:02', 'Mush_Ibasco (uid: 23) deposits an M4 in the El Valentino (id: 3) gang stash.'),
(117, '2022-10-05 02:12:21', 'Mush_Ibasco (uid: 23) deposits an M4 in the El Valentino (id: 3) gang stash.'),
(118, '2022-10-05 02:12:44', 'Mush_Ibasco (uid: 23) deposits an M4 in the El Valentino (id: 3) gang stash.'),
(119, '2022-10-05 02:13:44', 'Mush_Ibasco (uid: 23) deposits an AK-47 in the El Valentino (id: 3) gang stash.'),
(120, '2022-10-05 02:13:59', 'Mush_Ibasco (uid: 23) deposits an AK-47 in the El Valentino (id: 3) gang stash.'),
(121, '2022-10-05 02:14:20', 'Mush_Ibasco (uid: 23) deposits an AK-47 in the El Valentino (id: 3) gang stash.'),
(122, '2022-10-05 02:14:32', 'Mush_Ibasco (uid: 23) deposits an AK-47 in the El Valentino (id: 3) gang stash.'),
(123, '2022-10-05 02:14:49', 'Mush_Ibasco (uid: 23) deposits an AK-47 in the El Valentino (id: 3) gang stash.'),
(124, '2022-10-05 02:15:00', 'Mush_Ibasco (uid: 23) deposits an AK-47 in the El Valentino (id: 3) gang stash.'),
(125, '2022-10-05 02:15:20', 'Mush_Ibasco (uid: 23) deposits an AK-47 in the El Valentino (id: 3) gang stash.'),
(126, '2022-10-05 02:15:32', 'Mush_Ibasco (uid: 23) deposits an AK-47 in the El Valentino (id: 3) gang stash.'),
(127, '2022-10-05 02:15:45', 'Mush_Ibasco (uid: 23) deposits an AK-47 in the El Valentino (id: 3) gang stash.'),
(128, '2022-10-05 02:15:54', 'Mush_Ibasco (uid: 23) deposits an AK-47 in the El Valentino (id: 3) gang stash.'),
(129, '2022-10-05 02:16:06', 'Mush_Ibasco (uid: 23) deposits an AK-47 in the El Valentino (id: 3) gang stash.'),
(130, '2022-10-05 02:16:15', 'Mush_Ibasco (uid: 23) deposits an AK-47 in the El Valentino (id: 3) gang stash.'),
(131, '2022-10-05 02:16:24', 'Mush_Ibasco (uid: 23) deposits an AK-47 in the El Valentino (id: 3) gang stash.'),
(132, '2022-10-05 02:16:34', 'Mush_Ibasco (uid: 23) deposits an AK-47 in the El Valentino (id: 3) gang stash.'),
(133, '2022-10-05 02:16:45', 'Mush_Ibasco (uid: 23) deposits an AK-47 in the El Valentino (id: 3) gang stash.'),
(134, '2022-10-05 02:16:57', 'Mush_Ibasco (uid: 23) deposits an AK-47 in the El Valentino (id: 3) gang stash.'),
(135, '2022-10-05 02:17:10', 'Mush_Ibasco (uid: 23) deposits an AK-47 in the El Valentino (id: 3) gang stash.'),
(136, '2022-10-05 02:20:48', 'Mush_Ibasco (uid: 23) deposits an MP5 in the El Valentino (id: 3) gang stash.'),
(137, '2022-10-05 02:21:51', 'Mush_Ibasco (uid: 23) deposits an MP5 in the El Valentino (id: 3) gang stash.'),
(138, '2022-10-05 02:22:03', 'Mush_Ibasco (uid: 23) deposits an MP5 in the El Valentino (id: 3) gang stash.'),
(139, '2022-10-05 02:22:17', 'Mush_Ibasco (uid: 23) deposits an MP5 in the El Valentino (id: 3) gang stash.'),
(140, '2022-10-05 02:22:28', 'Mush_Ibasco (uid: 23) deposits an MP5 in the El Valentino (id: 3) gang stash.'),
(141, '2022-10-05 02:22:37', 'Mush_Ibasco (uid: 23) deposits an MP5 in the El Valentino (id: 3) gang stash.'),
(142, '2022-10-05 02:22:47', 'Mush_Ibasco (uid: 23) deposits an MP5 in the El Valentino (id: 3) gang stash.'),
(143, '2022-10-05 02:23:05', 'Mush_Ibasco (uid: 23) deposits an MP5 in the El Valentino (id: 3) gang stash.'),
(144, '2022-10-05 02:23:16', 'Mush_Ibasco (uid: 23) deposits an MP5 in the El Valentino (id: 3) gang stash.'),
(145, '2022-10-05 02:23:25', 'Mush_Ibasco (uid: 23) deposits an MP5 in the El Valentino (id: 3) gang stash.'),
(146, '2022-10-05 02:23:50', 'Mush_Ibasco (uid: 23) deposits a Desert Eagle in the El Valentino (id: 3) gang stash.'),
(147, '2022-10-05 02:24:02', 'Mush_Ibasco (uid: 23) deposits a Desert Eagle in the El Valentino (id: 3) gang stash.'),
(148, '2022-10-05 02:24:19', 'Mush_Ibasco (uid: 23) deposits a Desert Eagle in the El Valentino (id: 3) gang stash.'),
(149, '2022-10-05 02:24:28', 'Mush_Ibasco (uid: 23) deposits a Desert Eagle in the El Valentino (id: 3) gang stash.'),
(150, '2022-10-05 02:24:37', 'Mush_Ibasco (uid: 23) deposits a Desert Eagle in the El Valentino (id: 3) gang stash.'),
(151, '2022-10-05 02:24:46', 'Mush_Ibasco (uid: 23) deposits a Desert Eagle in the El Valentino (id: 3) gang stash.'),
(152, '2022-10-05 02:25:01', 'Mush_Ibasco (uid: 23) deposits a Desert Eagle in the El Valentino (id: 3) gang stash.'),
(153, '2022-10-05 02:25:11', 'Mush_Ibasco (uid: 23) deposits a Desert Eagle in the El Valentino (id: 3) gang stash.'),
(154, '2022-10-05 02:25:20', 'Mush_Ibasco (uid: 23) deposits a Desert Eagle in the El Valentino (id: 3) gang stash.'),
(155, '2022-10-05 02:25:29', 'Mush_Ibasco (uid: 23) deposits a Desert Eagle in the El Valentino (id: 3) gang stash.'),
(156, '2022-10-05 02:25:39', 'Mush_Ibasco (uid: 23) deposits a Desert Eagle in the El Valentino (id: 3) gang stash.'),
(157, '2022-10-05 02:25:49', 'Mush_Ibasco (uid: 23) deposits a Desert Eagle in the El Valentino (id: 3) gang stash.'),
(158, '2022-10-05 02:25:58', 'Mush_Ibasco (uid: 23) deposits a Desert Eagle in the El Valentino (id: 3) gang stash.'),
(159, '2022-10-05 02:26:07', 'Mush_Ibasco (uid: 23) deposits a Desert Eagle in the El Valentino (id: 3) gang stash.'),
(160, '2022-10-05 02:26:16', 'Mush_Ibasco (uid: 23) deposits a Desert Eagle in the El Valentino (id: 3) gang stash.'),
(161, '2022-10-05 02:34:58', 'Pudong_Valentino (uid: 45) withdraws an AK-47 from the El Valentino (id: 3) gang stash.'),
(162, '2022-10-05 02:35:40', 'Pudong_Valentino (uid: 45) has invited Carlito_Valentino (uid: 38) to El Valentino (id: 3).'),
(163, '2022-10-05 03:22:33', 'Boogey_Valentino (uid: 39) withdraws an MP5 from the El Valentino (id: 3) gang stash.'),
(164, '2022-10-05 03:27:44', 'Carlito_Valentino (uid: 38) withdraws an AK-47 from the El Valentino (id: 3) gang stash.'),
(165, '2022-10-05 04:13:05', 'Carlito_Valentino (uid: 38) withdraws an M4 from the El Valentino (id: 3) gang stash.'),
(166, '2022-10-05 04:36:31', 'Pudong_Valentino (uid: 45) deposits a Desert Eagle in the El Valentino (id: 3) gang stash.'),
(167, '2022-10-05 04:36:44', 'Pudong_Valentino (uid: 45) withdraws an M4 from the El Valentino (id: 3) gang stash.'),
(168, '2022-10-05 15:35:31', 'Chumito_Locco (uid: 7) deposits an M4 in the Geng Geng (id: 2) gang stash.'),
(169, '2022-10-05 15:35:38', 'Chumito_Locco (uid: 7) deposits an M4 in the Geng Geng (id: 2) gang stash.'),
(170, '2022-10-05 15:35:47', 'Chumito_Locco (uid: 7) deposits an M4 in the Geng Geng (id: 2) gang stash.'),
(171, '2022-10-05 15:35:57', 'Chumito_Locco (uid: 7) deposits a sniper rifle in the Geng Geng (id: 2) gang stash.'),
(172, '2022-10-05 15:56:32', 'Chumito_Locco (uid: 7) withdraws 35 grams of Crack from the gang stash.'),
(173, '2022-10-05 15:56:38', 'Chumito_Locco (uid: 7) withdraws 10 grams of meth from the gang stash.'),
(174, '2022-10-05 15:56:47', 'Chumito_Locco (uid: 7) withdraws 40 grams of meth from the gang stash.'),
(175, '2022-10-05 16:03:21', 'Chumito_Locco (uid: 7) withdraws an M4 from the Geng Geng (id: 2) gang stash.'),
(176, '2022-10-05 16:03:43', 'Chumito_Locco (uid: 7) withdraws an M4 from the Geng Geng (id: 2) gang stash.'),
(177, '2022-10-05 16:03:53', 'Chumito_Locco (uid: 7) withdraws an M4 from the Geng Geng (id: 2) gang stash.'),
(178, '2022-10-05 16:04:04', 'Chumito_Locco (uid: 7) withdraws a sniper rifle from the Geng Geng (id: 2) gang stash.'),
(179, '2022-10-05 16:04:23', 'Chumito_Locco (uid: 7) withdraws a sniper rifle from the Geng Geng (id: 2) gang stash.'),
(180, '2022-10-05 16:04:35', 'Chumito_Locco (uid: 7) withdraws an M4 from the Geng Geng (id: 2) gang stash.'),
(181, '2022-10-05 16:04:45', 'Chumito_Locco (uid: 7) withdraws a Tec-9 from the Geng Geng (id: 2) gang stash.'),
(182, '2022-10-05 16:05:11', 'Chumito_Locco (uid: 7) deposits a Tec-9 in the Geng Geng (id: 2) gang stash.'),
(183, '2022-10-05 16:05:16', 'Chumito_Locco (uid: 7) withdraws a Micro Uzi from the Geng Geng (id: 2) gang stash.'),
(184, '2022-10-05 16:05:51', 'Chumito_Locco (uid: 7) withdraws an MP5 from the Geng Geng (id: 2) gang stash.'),
(185, '2022-10-05 16:06:20', 'Chumito_Locco (uid: 7) deposits an MP5 in the Geng Geng (id: 2) gang stash.'),
(186, '2022-10-05 16:06:28', 'Chumito_Locco (uid: 7) withdraws a Micro Uzi from the Geng Geng (id: 2) gang stash.'),
(187, '2022-10-05 16:21:05', 'Chumito_Locco (uid: 7) withdraws an M4 from the Geng Geng (id: 2) gang stash.'),
(188, '2022-10-06 15:26:58', 'Xean_Hernandez (uid: 7) withdraws a Desert Eagle from the Geng Geng (id: 2) gang stash.'),
(189, '2022-10-07 09:34:01', 'Xean_Hernandez (uid: 7) has invited Diyun_taniman (uid: 87) to Geng Geng (id: 2).'),
(190, '2022-10-07 11:08:44', 'Xean_Hernandez (uid: 7) has invited Kairo_Drexel (uid: 27) to Geng Geng (id: 2).'),
(191, '2022-10-07 12:23:05', 'Xean_Hernandez (uid: 7) withdraws an AK-47 from the Geng Geng (id: 2) gang stash.'),
(192, '2022-10-07 12:23:17', 'Kairo_Drexel (uid: 27) withdraws an AK-47 from the Geng Geng (id: 2) gang stash.'),
(193, '2022-10-07 12:23:48', 'Xean_Hernandez (uid: 7) withdraws an MP5 from the Geng Geng (id: 2) gang stash.'),
(194, '2022-10-07 12:24:22', 'Devin_John (uid: 61) withdraws an AK-47 from the Geng Geng (id: 2) gang stash.'),
(195, '2022-10-07 13:31:59', 'Xean_Hernandez (uid: 7) withdraws an AK-47 from the Geng Geng (id: 2) gang stash.'),
(196, '2022-10-07 13:42:51', 'Xean_Hernandez (uid: 7) deposits an MP5 in the Geng Geng (id: 2) gang stash.'),
(197, '2022-10-07 14:07:10', 'Xean_Hernandez (uid: 7) withdraws an AK-47 from the Geng Geng (id: 2) gang stash.'),
(198, '2022-10-08 03:59:34', 'Boogey_Valentino (uid: 39) deposits an AK-47 in the El Valentino (id: 3) gang stash.'),
(199, '2022-10-08 03:59:42', 'Boogey_Valentino (uid: 39) withdraws an M4 from the El Valentino (id: 3) gang stash.'),
(200, '2022-10-08 04:01:36', 'Pudong_Valentino (uid: 45) withdraws $1000000 from the gang stash.'),
(201, '2022-10-08 05:15:24', 'Chino_Swoer (uid: 94) deposits an AK-47 in the Four Corner Hustler (id: 4) gang stash.'),
(202, '2022-10-08 05:15:32', 'Chino_Swoer (uid: 94) deposits an AK-47 in the Four Corner Hustler (id: 4) gang stash.'),
(203, '2022-10-08 05:15:39', 'Chino_Swoer (uid: 94) deposits an AK-47 in the Four Corner Hustler (id: 4) gang stash.'),
(204, '2022-10-08 05:15:44', 'Chino_Swoer (uid: 94) deposits an AK-47 in the Four Corner Hustler (id: 4) gang stash.'),
(205, '2022-10-08 05:15:51', 'Chino_Swoer (uid: 94) deposits an AK-47 in the Four Corner Hustler (id: 4) gang stash.'),
(206, '2022-10-08 05:16:04', 'Chino_Swoer (uid: 94) deposits an AK-47 in the Four Corner Hustler (id: 4) gang stash.'),
(207, '2022-10-08 05:16:11', 'Chino_Swoer (uid: 94) deposits an AK-47 in the Four Corner Hustler (id: 4) gang stash.'),
(208, '2022-10-08 05:16:16', 'Chino_Swoer (uid: 94) deposits an AK-47 in the Four Corner Hustler (id: 4) gang stash.'),
(209, '2022-10-08 05:16:31', 'Chino_Swoer (uid: 94) deposits an AK-47 in the Four Corner Hustler (id: 4) gang stash.'),
(210, '2022-10-08 05:16:41', 'Chino_Swoer (uid: 94) deposits an AK-47 in the Four Corner Hustler (id: 4) gang stash.'),
(211, '2022-10-08 05:16:51', 'Chino_Swoer (uid: 94) deposits an MP5 in the Four Corner Hustler (id: 4) gang stash.'),
(212, '2022-10-08 05:16:57', 'Chino_Swoer (uid: 94) deposits an MP5 in the Four Corner Hustler (id: 4) gang stash.'),
(213, '2022-10-08 05:17:00', 'Chino_Swoer (uid: 94) deposits an MP5 in the Four Corner Hustler (id: 4) gang stash.'),
(214, '2022-10-08 05:17:04', 'Chino_Swoer (uid: 94) deposits an MP5 in the Four Corner Hustler (id: 4) gang stash.'),
(215, '2022-10-08 05:17:08', 'Chino_Swoer (uid: 94) deposits an MP5 in the Four Corner Hustler (id: 4) gang stash.'),
(216, '2022-10-08 05:17:11', 'Chino_Swoer (uid: 94) deposits an MP5 in the Four Corner Hustler (id: 4) gang stash.'),
(217, '2022-10-08 05:17:16', 'Chino_Swoer (uid: 94) deposits an MP5 in the Four Corner Hustler (id: 4) gang stash.'),
(218, '2022-10-08 05:17:21', 'Chino_Swoer (uid: 94) deposits an MP5 in the Four Corner Hustler (id: 4) gang stash.'),
(219, '2022-10-08 05:17:24', 'Chino_Swoer (uid: 94) deposits an MP5 in the Four Corner Hustler (id: 4) gang stash.'),
(220, '2022-10-08 05:17:29', 'Chino_Swoer (uid: 94) deposits an MP5 in the Four Corner Hustler (id: 4) gang stash.'),
(221, '2022-10-08 05:17:43', 'Chino_Swoer (uid: 94) deposits an M4 in the Four Corner Hustler (id: 4) gang stash.'),
(222, '2022-10-08 05:17:49', 'Chino_Swoer (uid: 94) deposits an M4 in the Four Corner Hustler (id: 4) gang stash.'),
(223, '2022-10-08 05:17:55', 'Chino_Swoer (uid: 94) deposits an M4 in the Four Corner Hustler (id: 4) gang stash.'),
(224, '2022-10-08 05:18:00', 'Chino_Swoer (uid: 94) deposits an M4 in the Four Corner Hustler (id: 4) gang stash.'),
(225, '2022-10-08 05:18:03', 'Chino_Swoer (uid: 94) deposits an M4 in the Four Corner Hustler (id: 4) gang stash.'),
(226, '2022-10-08 05:18:07', 'Chino_Swoer (uid: 94) deposits an M4 in the Four Corner Hustler (id: 4) gang stash.'),
(227, '2022-10-08 05:18:13', 'Chino_Swoer (uid: 94) deposits an M4 in the Four Corner Hustler (id: 4) gang stash.'),
(228, '2022-10-08 05:18:17', 'Chino_Swoer (uid: 94) deposits an M4 in the Four Corner Hustler (id: 4) gang stash.'),
(229, '2022-10-08 05:18:21', 'Chino_Swoer (uid: 94) deposits an M4 in the Four Corner Hustler (id: 4) gang stash.'),
(230, '2022-10-08 05:18:26', 'Chino_Swoer (uid: 94) deposits an M4 in the Four Corner Hustler (id: 4) gang stash.'),
(231, '2022-10-08 05:18:50', 'Chino_Swoer (uid: 94) deposits an MP5 in the Four Corner Hustler (id: 4) gang stash.'),
(232, '2022-10-08 05:27:41', 'Chino_Swoer (uid: 94) has invited kai_dior (uid: 56) to Four Corner Hustler (id: 4).'),
(233, '2022-10-08 05:46:24', 'kai_dior (uid: 56) withdraws an M4 from the Four Corner Hustler (id: 4) gang stash.'),
(234, '2022-10-08 10:35:08', 'Xean_Hernandez (uid: 7) deposits a Micro Uzi in the Geng Geng (id: 2) gang stash.'),
(235, '2022-10-08 10:35:25', 'Xean_Hernandez (uid: 7) withdraws a Tec-9 from the Geng Geng (id: 2) gang stash.'),
(236, '2022-10-08 10:35:56', 'Xean_Hernandez (uid: 7) deposits a Tec-9 in the Geng Geng (id: 2) gang stash.'),
(237, '2022-10-08 10:36:01', 'Xean_Hernandez (uid: 7) withdraws an AK-47 from the Geng Geng (id: 2) gang stash.'),
(238, '2022-10-08 12:07:13', 'Pudong_Valentino (uid: 45) withdraws $769514 from the gang stash.'),
(239, '2022-10-08 14:59:26', 'Xean_Hernandez (uid: 7) has invited Roberto_S._Suarez (uid: 98) to Geng Geng (id: 2).'),
(240, '2022-10-08 15:05:13', 'Roberto_S._Suarez (uid: 98) withdraws an AK-47 from the Geng Geng (id: 2) gang stash.'),
(241, '2022-10-08 15:05:16', 'Xean_Hernandez (uid: 7) deposits an MP5 in the Geng Geng (id: 2) gang stash.'),
(242, '2022-10-08 15:06:19', 'Xean_Hernandez (uid: 7) deposits an M4 in the Geng Geng (id: 2) gang stash.'),
(243, '2022-10-08 15:06:22', 'Roberto_S._Suarez (uid: 98) deposits an AK-47 in the Geng Geng (id: 2) gang stash.'),
(244, '2022-10-08 15:06:45', 'Roberto_S._Suarez (uid: 98) withdraws an M4 from the Geng Geng (id: 2) gang stash.'),
(245, '2022-10-09 15:44:13', 'Genji_Locco (uid: 18) has invited Reycee_Carl (uid: 107) to Geng Geng (id: 2).'),
(246, '2022-10-11 00:57:06', 'Chino_Swoer (uid: 94) withdraws an AK-47 from the Four Corner Hustler (id: 4) gang stash.'),
(247, '2022-10-12 13:06:54', 'Myca_Cute (uid: 21) deposits an M4 in the Cosa Nostra Familia (id: 1) gang stash.'),
(248, '2022-10-12 13:07:34', 'Myca_Cute (uid: 21) deposits an M4 in the Cosa Nostra Familia (id: 1) gang stash.'),
(249, '2022-10-12 13:07:43', 'Myca_Cute (uid: 21) deposits an M4 in the Cosa Nostra Familia (id: 1) gang stash.'),
(250, '2022-10-12 13:07:54', 'Myca_Cute (uid: 21) deposits an M4 in the Cosa Nostra Familia (id: 1) gang stash.'),
(251, '2022-10-12 13:09:10', 'Deku_Ross (uid: 134) deposits an M4 in the Cosa Nostra Familia (id: 1) gang stash.'),
(252, '2022-10-12 13:10:02', 'Deku_Ross (uid: 134) deposits an M4 in the Cosa Nostra Familia (id: 1) gang stash.'),
(253, '2022-10-12 13:10:29', 'Deku_Ross (uid: 134) deposits an M4 in the Cosa Nostra Familia (id: 1) gang stash.'),
(254, '2022-10-12 13:10:55', 'Deku_Ross (uid: 134) deposits an M4 in the Cosa Nostra Familia (id: 1) gang stash.'),
(255, '2022-10-12 13:11:02', 'Deku_Ross (uid: 134) deposits an M4 in the Cosa Nostra Familia (id: 1) gang stash.'),
(256, '2022-10-12 13:11:24', 'Deku_Ross (uid: 134) deposits an M4 in the Cosa Nostra Familia (id: 1) gang stash.'),
(257, '2022-10-12 13:11:55', 'Deku_Ross (uid: 134) deposits an AK-47 in the Cosa Nostra Familia (id: 1) gang stash.'),
(258, '2022-10-12 13:12:01', 'Deku_Ross (uid: 134) deposits an AK-47 in the Cosa Nostra Familia (id: 1) gang stash.'),
(259, '2022-10-12 13:12:06', 'Deku_Ross (uid: 134) deposits an AK-47 in the Cosa Nostra Familia (id: 1) gang stash.'),
(260, '2022-10-12 13:12:11', 'Deku_Ross (uid: 134) deposits an AK-47 in the Cosa Nostra Familia (id: 1) gang stash.'),
(261, '2022-10-12 13:12:15', 'Deku_Ross (uid: 134) deposits an AK-47 in the Cosa Nostra Familia (id: 1) gang stash.'),
(262, '2022-10-12 13:12:19', 'Deku_Ross (uid: 134) deposits an AK-47 in the Cosa Nostra Familia (id: 1) gang stash.'),
(263, '2022-10-12 13:12:23', 'Deku_Ross (uid: 134) deposits an AK-47 in the Cosa Nostra Familia (id: 1) gang stash.'),
(264, '2022-10-12 13:12:29', 'Deku_Ross (uid: 134) deposits an AK-47 in the Cosa Nostra Familia (id: 1) gang stash.'),
(265, '2022-10-12 13:12:35', 'Deku_Ross (uid: 134) deposits an AK-47 in the Cosa Nostra Familia (id: 1) gang stash.'),
(266, '2022-10-12 13:12:41', 'Deku_Ross (uid: 134) deposits an AK-47 in the Cosa Nostra Familia (id: 1) gang stash.'),
(267, '2022-10-12 13:12:48', 'Deku_Ross (uid: 134) deposits an MP5 in the Cosa Nostra Familia (id: 1) gang stash.'),
(268, '2022-10-12 13:12:56', 'Deku_Ross (uid: 134) deposits an MP5 in the Cosa Nostra Familia (id: 1) gang stash.'),
(269, '2022-10-12 13:13:04', 'Deku_Ross (uid: 134) deposits an MP5 in the Cosa Nostra Familia (id: 1) gang stash.'),
(270, '2022-10-12 13:13:09', 'Deku_Ross (uid: 134) deposits an MP5 in the Cosa Nostra Familia (id: 1) gang stash.'),
(271, '2022-10-12 13:13:15', 'Deku_Ross (uid: 134) deposits an MP5 in the Cosa Nostra Familia (id: 1) gang stash.'),
(272, '2022-10-12 13:13:20', 'Deku_Ross (uid: 134) deposits an MP5 in the Cosa Nostra Familia (id: 1) gang stash.'),
(273, '2022-10-12 13:13:24', 'Deku_Ross (uid: 134) deposits an MP5 in the Cosa Nostra Familia (id: 1) gang stash.'),
(274, '2022-10-12 13:13:28', 'Deku_Ross (uid: 134) deposits an MP5 in the Cosa Nostra Familia (id: 1) gang stash.'),
(275, '2022-10-12 13:13:33', 'Deku_Ross (uid: 134) deposits an MP5 in the Cosa Nostra Familia (id: 1) gang stash.'),
(276, '2022-10-12 13:13:52', 'Deku_Ross (uid: 134) deposits an MP5 in the Cosa Nostra Familia (id: 1) gang stash.'),
(277, '2022-10-12 13:39:59', 'Deku_Ross (uid: 134) withdraws an M4 from the Cosa Nostra Familia (id: 1) gang stash.'),
(278, '2022-10-12 15:45:40', 'Myca_Cute (uid: 21) withdraws an M4 from the Cosa Nostra Familia (id: 1) gang stash.'),
(279, '2022-10-12 15:45:58', 'Myca_Cute (uid: 21) withdraws an MP5 from the Cosa Nostra Familia (id: 1) gang stash.'),
(280, '2022-10-12 15:46:13', 'Leo_Cute (uid: 137) withdraws an M4 from the Cosa Nostra Familia (id: 1) gang stash.'),
(281, '2022-10-12 15:47:09', 'Leo_Cute (uid: 137) withdraws an AK-47 from the Cosa Nostra Familia (id: 1) gang stash.'),
(282, '2022-10-12 15:47:27', 'Leo_Cute (uid: 137) withdraws an MP5 from the Cosa Nostra Familia (id: 1) gang stash.'),
(283, '2022-10-12 16:40:54', 'Myca_Cute (uid: 21) withdraws a Desert Eagle from the Cosa Nostra Familia (id: 1) gang stash.'),
(284, '2022-10-12 16:41:04', 'Myca_Cute (uid: 21) withdraws an MP5 from the Cosa Nostra Familia (id: 1) gang stash.'),
(285, '2022-10-12 16:41:38', 'Deku_Ross (uid: 134) withdraws an AK-47 from the Cosa Nostra Familia (id: 1) gang stash.'),
(286, '2022-10-12 16:44:49', 'Deku_Ross (uid: 134) deposits an AK-47 in the Cosa Nostra Familia (id: 1) gang stash.'),
(287, '2022-10-12 16:44:56', 'Deku_Ross (uid: 134) withdraws an MP5 from the Cosa Nostra Familia (id: 1) gang stash.'),
(288, '2022-10-12 17:10:02', 'Deku_Ross (uid: 134) withdraws an MP5 from the Cosa Nostra Familia (id: 1) gang stash.'),
(289, '2022-10-12 17:23:36', 'Myca_Cute (uid: 21) withdraws an MP5 from the Cosa Nostra Familia (id: 1) gang stash.'),
(290, '2022-10-12 17:24:00', 'Myca_Cute (uid: 21) withdraws an M4 from the Cosa Nostra Familia (id: 1) gang stash.'),
(291, '2022-10-12 17:25:29', 'Deku_Ross (uid: 134) withdraws a Tec-9 from the Cosa Nostra Familia (id: 1) gang stash.'),
(292, '2022-10-12 17:25:44', 'Deku_Ross (uid: 134) deposits a Tec-9 in the Cosa Nostra Familia (id: 1) gang stash.'),
(293, '2022-10-12 17:26:01', 'Deku_Ross (uid: 134) withdraws an AK-47 from the Cosa Nostra Familia (id: 1) gang stash.'),
(294, '2022-10-12 17:26:16', 'Deku_Ross (uid: 134) deposits an AK-47 in the Cosa Nostra Familia (id: 1) gang stash.'),
(295, '2022-10-12 17:26:23', 'Deku_Ross (uid: 134) withdraws an MP5 from the Cosa Nostra Familia (id: 1) gang stash.'),
(296, '2022-10-13 03:37:27', 'Leo_Cute (uid: 137) withdraws an M4 from the Cosa Nostra Familia (id: 1) gang stash.'),
(297, '2022-10-14 07:24:26', 'Cedric_Hakim (uid: 146) withdraws an AK-47 from the Cosa Nostra Familia (id: 1) gang stash.'),
(298, '2022-10-14 07:56:22', 'Cedric_Hakim (uid: 146) withdraws an AK-47 from the Cosa Nostra Familia (id: 1) gang stash.'),
(299, '2022-10-14 09:31:21', 'Cedric_Hakim (uid: 146) withdraws a Micro Uzi from the Cosa Nostra Familia (id: 1) gang stash.');

-- --------------------------------------------------------

--
-- Table structure for table `log_give`
--

CREATE TABLE `log_give` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_namechanges`
--

CREATE TABLE `log_namechanges` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_property`
--

CREATE TABLE `log_property` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_property`
--

INSERT INTO `log_property` (`id`, `date`, `description`) VALUES
(1, '2022-10-04 04:23:24', 'Jay_Yurong (uid: 15) upgraded the stash of their Bullet (id: 42) to level 1/3.'),
(2, '2022-10-04 04:23:26', 'Jay_Yurong (uid: 15) upgraded the stash of their Bullet (id: 42) to level 2/3.'),
(3, '2022-10-04 04:23:42', 'Jay_Yurong (uid: 15) upgraded the stash of their Bullet (id: 42) to level 3/3.'),
(4, '2022-10-04 04:23:56', 'Jay_Yurong (uid: 15) purchased blue neon for their Bullet (id: 42)'),
(5, '2022-10-04 08:17:44', 'Arthur_La_Citadel (uid: 22) purchased House (id: 10) for $400000.'),
(6, '2022-10-04 10:34:45', 'Mush_Ibasco (uid: 23) purchased red neon for their Cheetah (id: 134)'),
(7, '2022-10-04 10:35:08', 'Mush_Ibasco (uid: 23) purchased red neon for their Cheetah (id: 134)'),
(8, '2022-10-04 15:44:25', 'Myca_Yurong (uid: 21) purchased pink neon for their Cheetah (id: 153)'),
(9, '2022-10-04 15:45:14', 'Myca_Yurong (uid: 21) paid $20000 to set the license plate of their Cheetah (id: 153) to MYCA CUTE .'),
(10, '2022-10-04 15:49:17', 'Myca_Yurong (uid: 21) upgraded the stash of their Cheetah (id: 153) to level 1/3.'),
(11, '2022-10-04 15:49:19', 'Myca_Yurong (uid: 21) upgraded the stash of their Cheetah (id: 153) to level 2/3.'),
(12, '2022-10-04 15:49:21', 'Myca_Yurong (uid: 21) upgraded the stash of their Cheetah (id: 153) to level 3/3.'),
(13, '2022-10-04 15:57:59', 'Rap (uid: 31) purchased a BF Injection for $520000.'),
(14, '2022-10-04 16:09:13', 'Justine_Crimel (uid: 14) sold their house (id: 3) to the state for $3750000'),
(15, '2022-10-04 19:38:27', 'Devin_John (uid: 61) purchased a Sultan for $7000000.'),
(16, '2022-10-04 19:38:58', 'Devin_John (uid: 61) purchased a Sultan for $7000000.'),
(17, '2022-10-04 19:39:31', 'Devin_John (uid: 61) (IP: 180.190.42.191) sold their Sultan (id: 156) for $1 to Chumito_Locco (uid: 7) (IP: 49.149.108.105)'),
(18, '2022-10-04 19:40:01', 'Devin_John (uid: 61) purchased a Sultan for $7000000.'),
(19, '2022-10-04 19:40:24', 'Devin_John (uid: 61) (IP: 180.190.42.191) sold their Sultan (id: 157) for $1 to Chumito_Locco (uid: 7) (IP: 49.149.108.105)'),
(20, '2022-10-04 19:40:46', 'Devin_John (uid: 61) (IP: 180.190.42.191) sold their Sultan (id: 158) for $1 to Chumito_Locco (uid: 7) (IP: 49.149.108.105)'),
(21, '2022-10-04 19:41:25', 'Devin_John (uid: 61) purchased a Sultan for $7000000.'),
(22, '2022-10-04 19:41:35', 'Devin_John (uid: 61) purchased a FCR-900 for $81000.'),
(23, '2022-10-05 05:45:19', 'Midas_Doofenshmirtzz (uid: 33) purchased a Willard for $230000.'),
(24, '2022-10-05 06:53:52', 'John_Mendoza (uid: 26) purchased a Landstalker for $120000.'),
(25, '2022-10-05 11:25:15', 'Myca_Yurong (uid: 21) (IP: 175.176.21.149) sold their Faggio (id: 125) for $10000000 to Chumito_Locco (uid: 7) (IP: 49.149.108.105)'),
(26, '2022-10-05 11:28:44', 'Myca_Yurong (uid: 21) purchased a Sultan for $7000000.'),
(27, '2022-10-05 11:29:19', 'Myca_Yurong (uid: 21) (IP: 175.176.21.149) sold their Sultan (id: 214) for $1000000 to Chumito_Locco (uid: 7) (IP: 49.149.108.105)'),
(28, '2022-10-05 11:29:32', 'Myca_Yurong (uid: 21) purchased a Sultan for $7000000.'),
(29, '2022-10-05 11:29:55', 'Myca_Yurong (uid: 21) (IP: 175.176.21.149) sold their Sultan (id: 215) for $1000000 to Chumito_Locco (uid: 7) (IP: 49.149.108.105)'),
(30, '2022-10-05 12:04:38', 'Myca_Yurong (uid: 21) purchased a Sultan for $7000000.'),
(31, '2022-10-05 12:05:04', 'Myca_Yurong (uid: 21) (IP: 175.176.21.149) sold their Sultan (id: 217) for $1000000 to Chumito_Locco (uid: 7) (IP: 49.149.108.105)'),
(32, '2022-10-05 12:05:19', 'Myca_Yurong (uid: 21) purchased a Sultan for $7000000.'),
(33, '2022-10-05 12:05:37', 'Myca_Yurong (uid: 21) (IP: 175.176.21.149) sold their Sultan (id: 218) for $10000000 to Chumito_Locco (uid: 7) (IP: 49.149.108.105)'),
(34, '2022-10-05 12:05:52', 'Myca_Yurong (uid: 21) purchased a Sultan for $7000000.'),
(35, '2022-10-05 12:06:07', 'Myca_Yurong (uid: 21) (IP: 175.176.21.149) sold their Sultan (id: 219) for $10000000 to Chumito_Locco (uid: 7) (IP: 49.149.108.105)'),
(36, '2022-10-05 12:06:18', 'Myca_Yurong (uid: 21) purchased a Sultan for $7000000.'),
(37, '2022-10-05 12:06:34', 'Myca_Yurong (uid: 21) (IP: 175.176.21.149) sold their Sultan (id: 220) for $10000000 to Chumito_Locco (uid: 7) (IP: 49.149.108.105)'),
(38, '2022-10-05 12:06:50', 'Myca_Yurong (uid: 21) purchased a Sultan for $7000000.'),
(39, '2022-10-05 12:07:04', 'Myca_Yurong (uid: 21) (IP: 175.176.21.149) sold their Sultan (id: 221) for $10000000 to Chumito_Locco (uid: 7) (IP: 49.149.108.105)'),
(40, '2022-10-05 12:07:15', 'Myca_Yurong (uid: 21) purchased a Sultan for $7000000.'),
(41, '2022-10-05 12:07:28', 'Myca_Yurong (uid: 21) (IP: 175.176.21.149) sold their Sultan (id: 222) for $10000000 to Chumito_Locco (uid: 7) (IP: 49.149.108.105)'),
(42, '2022-10-05 12:07:41', 'Myca_Yurong (uid: 21) purchased a Sultan for $7000000.'),
(43, '2022-10-05 12:07:55', 'Myca_Yurong (uid: 21) (IP: 175.176.21.149) sold their Sultan (id: 223) for $10000000 to Chumito_Locco (uid: 7) (IP: 49.149.108.105)'),
(44, '2022-10-05 12:08:08', 'Myca_Yurong (uid: 21) purchased a Sultan for $7000000.'),
(45, '2022-10-05 12:08:25', 'Myca_Yurong (uid: 21) (IP: 175.176.21.149) sold their Sultan (id: 224) for $10000000 to Chumito_Locco (uid: 7) (IP: 49.149.108.105)'),
(46, '2022-10-05 12:08:46', 'Myca_Yurong (uid: 21) purchased a Sultan for $7000000.'),
(47, '2022-10-05 12:09:33', 'Myca_Yurong (uid: 21) (IP: 175.176.21.149) sold their Sultan (id: 225) for $536529402 to Chumito_Locco (uid: 7) (IP: 49.149.108.105)'),
(48, '2022-10-05 14:41:10', 'Myca_Yurong (uid: 21) purchased a BMX for $1900.'),
(49, '2022-10-06 13:45:32', 'John_Mendoza (uid: 26) sold their Landstalker (id: 186) to the dealership for $90000'),
(50, '2022-10-06 13:52:36', 'John_Mendoza (uid: 26) purchased a Sentinel for $80000.'),
(51, '2022-10-07 03:24:38', 'Kairo_Drexel (uid: 27) purchased a Voodoo for $180000.'),
(52, '2022-10-07 03:33:57', 'Mhick_Smith (uid: 77) purchased white neon for their Voodoo (id: 235)'),
(53, '2022-10-07 06:29:46', 'Kairo_Drexel (uid: 27) sold their Faggio (id: 34) to the dealership for $0'),
(54, '2022-10-07 06:30:00', 'Kairo_Drexel (uid: 27) purchased a ZR-350 for $560000.'),
(55, '2022-10-07 06:33:31', 'Kairo_Drexel (uid: 27) purchased blue neon for their ZR-350 (id: 236)'),
(56, '2022-10-07 06:38:40', 'Kairo_Drexel (uid: 27) paid $20000 to set the license plate of their ZR-350 (id: 236) to OSM.'),
(57, '2022-10-07 06:48:13', 'Kairo_Drexel (uid: 27) sold their ZR-350 (id: 236) to the dealership for $420000'),
(58, '2022-10-07 06:51:20', 'Kairo_Drexel (uid: 27) purchased blue neon for their ZR-350 (id: 237)'),
(59, '2022-10-07 06:51:41', 'Kairo_Drexel (uid: 27) paid $20000 to set the license plate of their ZR-350 (id: 237) to OSM BLUE.'),
(60, '2022-10-07 07:49:53', 'Peter_La_Citadel (uid: 16) purchased a BMX for $1900.'),
(61, '2022-10-08 07:14:35', 'Diyun_taniman (uid: 87) purchased a BMX for $1900.'),
(62, '2022-10-08 15:57:18', 'Dwayne_Johnson (uid: 8) sold their Faggio (id: 4) to the dealership for $0'),
(63, '2022-10-08 15:57:59', 'Dwayne_Johnson (uid: 8) sold their Faggio (id: 7) to the dealership for $0'),
(64, '2022-10-08 16:01:05', 'Dwayne_Johnson (uid: 8) purchased a Sultan for $7000000.'),
(65, '2022-10-08 16:01:50', 'Dwayne_Johnson (uid: 8) sold their Sultan (id: 265) to the dealership for $5250000'),
(66, '2022-10-12 11:05:31', 'Hachi_Montefalco (uid: 35) purchased a BMX for $1900.'),
(67, '2022-10-13 19:13:14', 'robert_balong (uid: 144) purchased a FCR-900 for $81000.'),
(68, '2022-10-14 12:31:49', 'Toshiro_Khalixta (uid: 145) purchased pink neon for their Super GT (id: 312)'),
(69, '2022-10-14 12:39:03', 'Toshiro_Khalixta (uid: 145) purchased pink neon for their Super GT (id: 312)'),
(70, '2022-10-14 12:48:03', 'Toshiro_Khalixta (uid: 145) upgraded the stash of their Super GT (id: 312) to level 1/3.');

-- --------------------------------------------------------

--
-- Table structure for table `log_punishments`
--

CREATE TABLE `log_punishments` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_punishments`
--

INSERT INTO `log_punishments` (`id`, `date`, `description`) VALUES
(1, '2022-10-04 07:53:06', 'xoxo (uid: 10) kicked xoxo (uid: 10), reason: brb'),
(2, '2022-10-04 11:14:55', 'xoxo (uid: 10) kicked xoxo (uid: 10), reason: .'),
(3, '2022-10-04 13:04:39', 'Lebron (uid: 31) kicked Leon_Cordova (uid: 32), reason: PAREMOVE WEAPON.DAT'),
(4, '2022-10-04 16:32:33', 'lei_sy (uid: 59) kicked Rapido_Alvarez (uid: 31), reason: dont abuse power. :)'),
(5, '2022-10-04 16:33:09', 'lei_sy (uid: 59) has banned IP: 255.255.255.255, reason: N/A'),
(6, '2022-10-04 16:52:18', 'Kai (uid: 37) kicked Rapido_Alvarez (uid: 31), reason: !'),
(7, '2022-10-04 16:53:42', 'Kai (uid: 37) kicked Rapido_Alvarez (uid: 31), reason: !'),
(8, '2022-10-04 16:55:30', 'lei_sy (uid: 59) offline banned Rapido_Alvarez, reason: wag kana bumalik di ka need dito abuser '),
(9, '2022-10-04 17:56:08', 'Kairo_Drexel (uid: 27) kicked Kairo_Drexel (uid: 27), reason: gudnyt '),
(10, '2022-10-05 02:14:02', 'SERVER prisoned Arthur_La_Citadel (uid: 22) for 15 minutes, reason: quitting during arrest'),
(11, '2022-10-05 09:37:49', 'Wilbert_Cordova (uid: 10) kicked Wilbert_Cordova (uid: 10), reason: -_-'),
(12, '2022-10-05 12:42:23', 'Kai_Itchi (uid: 37) kicked Kyle_Kyle (uid: 55), reason: !'),
(13, '2022-10-05 12:42:23', 'SERVER prisoned Kyle_Kyle (uid: 55) for 15 minutes, reason: quitting during arrest'),
(14, '2022-10-05 13:58:58', 'Kai (uid: 37) kicked Chapo_Tailor (uid: 75), reason: off moyan naka spec ako'),
(15, '2022-10-06 14:54:58', 'Myca_Yurong (uid: 21) has unbanned Chumito_Locco.'),
(16, '2022-10-06 18:55:13', 'Myca_Yurong (uid: 21) offline banned Ogbaboy_El_Groove, reason: .'),
(17, '2022-10-07 02:34:07', 'Midas_Doofenshmirtzz (uid: 33) kicked Kurt_Russell (uid: 84), reason: wag ma kulit'),
(18, '2022-10-08 04:37:27', 'Myca_Yurong (uid: 21) kicked Peter_La_Citadel (uid: 16), reason: non rp'),
(19, '2022-10-08 12:53:28', 'Kairo_Drexel (uid: 27) kicked Kairo_Drexel (uid: 27), reason: later nlng eat lng ako HAHHAHA mwahhh'),
(20, '2022-10-08 16:34:55', 'Kairo_Drexel (uid: 27) kicked Kairo_Drexel (uid: 27), reason: goodnight sainyo'),
(21, '2022-10-09 11:15:52', 'Jp_Antonio (uid: 101) kicked Jp_Antonio (uid: 101), reason: kain muna'),
(22, '2022-10-10 06:53:22', 'Myca_Cute (uid: 21) kicked Shyne_Deleon (uid: 106), reason: . '),
(23, '2022-10-12 14:42:42', 'Jay_Yurong (uid: 15) kicked Zae_Joji (uid: 136), reason: off mo yan');

-- --------------------------------------------------------

--
-- Table structure for table `log_referrals`
--

CREATE TABLE `log_referrals` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_vip`
--

CREATE TABLE `log_vip` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `object`
--

CREATE TABLE `object` (
  `mobjID` int(11) NOT NULL,
  `mobjModel` int(11) NOT NULL DEFAULT 980,
  `mobjInterior` int(11) NOT NULL DEFAULT 0,
  `mobjWorld` int(11) NOT NULL DEFAULT 0,
  `mobjX` float NOT NULL DEFAULT 0,
  `mobjY` float NOT NULL DEFAULT 0,
  `mobjZ` float NOT NULL DEFAULT 0,
  `mobjRX` float NOT NULL DEFAULT 0,
  `mobjRY` float NOT NULL DEFAULT 0,
  `mobjRZ` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ores`
--

CREATE TABLE `ores` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `posx` float DEFAULT 0,
  `posy` float DEFAULT 0,
  `posz` float DEFAULT 0,
  `posrx` float DEFAULT 0,
  `posry` float DEFAULT 0,
  `posrz` float DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phonebook`
--

CREATE TABLE `phonebook` (
  `name` varchar(24) DEFAULT NULL,
  `number` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `id` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `capturedby` varchar(24) DEFAULT 'No-one',
  `capturedgang` tinyint(2) DEFAULT -1,
  `type` tinyint(2) DEFAULT 0,
  `profits` int(10) DEFAULT 0,
  `time` tinyint(2) DEFAULT 10,
  `point_x` float DEFAULT 0,
  `point_y` float DEFAULT 0,
  `point_z` float DEFAULT 0,
  `pointinterior` tinyint(2) DEFAULT 0,
  `pointworld` int(10) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `points`
--

INSERT INTO `points` (`id`, `name`, `capturedby`, `capturedgang`, `type`, `profits`, `time`, `point_x`, `point_y`, `point_z`, `pointinterior`, `pointworld`) VALUES
(0, 'Material Pickup 1', 'Xyan_Devil', -1, 6, 0, 0, 1424.54, -1318.98, 13.555, 0, 0),
(1, 'Material Pickup 2', 'Chumito_Locco', -1, 7, 0, 0, 2391.12, -2007.86, 13.554, 0, 0),
(2, 'Material Factory 1', 'test', -1, 8, 0, 0, 2172.95, -2264.72, 13.349, 0, 0),
(3, 'Material Factory 2', 'Foxz_Devil', -1, 9, 0, 0, 2288.19, -1104.65, 38.596, 0, 0),
(4, 'Crack Lab', 'Celer_X_Devil', -1, 3, 6875, 0, 2345.57, -1184.9, 1027.98, 5, 4000050),
(5, 'Drug House', 'Natasha_X_Devil', -1, 2, 825, 0, 323.115, 1119.06, 1083.88, 5, 4000051),
(8, 'Drug Factory', 'Pending', -1, 1, 498, 0, 52.832, -293.302, 1.682, 0, 0),
(9, 'Los Santos Cemetery', 'Pending', -1, 4, 3483297, 0, 815.124, -1108.22, 25.79, 0, 0),
(10, 'Yatch Harbour', 'Pablo_Y._Cordova', -1, 8, 0, 0, 386.804, -2028.5, 7.836, 0, 0),
(11, 'Telecom Company', 'Xyan_Devil', -1, 6, 0, 0, 1682.97, -2290.23, -1.229, 0, 0),
(6, 'Auto Export Compony', 'No-one', -1, 4, 3212544, 0, 2729.33, -2451.54, 17.594, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shots`
--

CREATE TABLE `shots` (
  `id` int(10) NOT NULL,
  `playerid` smallint(3) DEFAULT NULL,
  `weaponid` tinyint(2) DEFAULT NULL,
  `hittype` tinyint(2) DEFAULT NULL,
  `hitid` int(10) DEFAULT NULL,
  `hitplayer` varchar(24) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `timestamp` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `speedcameras`
--

CREATE TABLE `speedcameras` (
  `speedID` int(11) NOT NULL,
  `speedRange` float DEFAULT 0,
  `speedLimit` float DEFAULT 0,
  `speedX` float DEFAULT 0,
  `speedY` float DEFAULT 0,
  `speedZ` float DEFAULT 0,
  `speedAngle` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `texts`
--

CREATE TABLE `texts` (
  `id` int(10) NOT NULL,
  `sender_number` int(10) DEFAULT NULL,
  `recipient_number` int(10) DEFAULT NULL,
  `sender` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `turfs`
--

CREATE TABLE `turfs` (
  `id` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `capturedby` varchar(24) DEFAULT 'No-one',
  `capturedgang` tinyint(2) DEFAULT -1,
  `type` tinyint(2) DEFAULT 0,
  `time` tinyint(2) DEFAULT 12,
  `min_x` float DEFAULT 0,
  `min_y` float DEFAULT 0,
  `max_x` float DEFAULT 0,
  `max_y` float DEFAULT 0,
  `height` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `turfs`
--

INSERT INTO `turfs` (`id`, `name`, `capturedby`, `capturedgang`, `type`, `time`, `min_x`, `min_y`, `max_x`, `max_y`, `height`) VALUES
(2, 'Unity Station', 'Xean_Hernandez', -1, 7, 0, 1698.45, -1942.81, 1818.66, -1846.41, 13.578),
(3, 'Skate Park', 'Myca_Cute', 1, 10, 0, 1860.79, -1452.6, 1979.1, -1349.33, 13.554),
(4, 'Glen Park', 'Myca_Cute', 1, 9, 0, 1859.89, -1254.1, 2059, -1143.17, 23.898),
(5, 'Ocean Docks', 'Chong_H_Wang', 12, 7, 0, 2167.89, -2690.58, 2255.18, -2525.45, 8.296),
(6, 'LS Stadium', 'Carlito_Valentino', -1, 10, 0, 2650.34, -1869.07, 2816.95, -1660.8, 10.763),
(7, 'Business Park', 'Pudong_Valentino', -1, 10, 0, 453.554, -1582.54, 522.652, -1434.68, 15.715),
(9, 'MontGomery', 'Chumito_Locco', -1, 4, 0, 1180.11, 149.762, 1411.73, 395.403, 21.407),
(11, 'Asia Zone International Airport', 'Kairo_Drexel', -1, 5, 4, 1354.61, -2370.24, 1566.32, -2201.98, 13.547),
(10, 'Light House', 'Jay_Yurong', -1, 10, 4, 127.316, -1969.6, 168.727, -1778.69, -0.589),
(12, 'Sf Mall Turfs', 'No-one', -1, 7, 0, -2114.71, -1000.67, -1974.16, -859.937, 32.023),
(1, 'Kirov\'s Compound', 'No-one', -1, 9, 0, 236.053, -1678.14, 394.21, -1578.09, 11.085),
(8, 'Materials', 'No-one', -1, 4, 0, 1047.07, -1662.28, 1140.35, -1582.82, 13.953);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(10) NOT NULL,
  `username` varchar(24) DEFAULT NULL,
  `password` varchar(129) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `login_date` date DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `setup` tinyint(1) DEFAULT 1,
  `gender` tinyint(1) DEFAULT 1,
  `age` tinyint(3) DEFAULT 18,
  `skin` smallint(3) DEFAULT 299,
  `camera_x` float DEFAULT 0,
  `camera_y` float DEFAULT 0,
  `camera_z` float DEFAULT 0,
  `pos_x` float DEFAULT 0,
  `pos_y` float DEFAULT 0,
  `pos_z` float DEFAULT 0,
  `pos_a` float DEFAULT 0,
  `interior` tinyint(2) DEFAULT 0,
  `world` int(10) DEFAULT 0,
  `cash` int(10) DEFAULT 500,
  `bank` int(10) DEFAULT 500,
  `paycheck` int(10) DEFAULT 0,
  `level` int(10) DEFAULT 1,
  `exp` int(10) DEFAULT 0,
  `minutes` smallint(3) DEFAULT 0,
  `hours` int(10) DEFAULT 0,
  `adminlevel` int(10) DEFAULT 0,
  `adminname` varchar(24) DEFAULT 'None',
  `helperlevel` tinyint(2) DEFAULT 0,
  `health` float DEFAULT 100,
  `armor` float DEFAULT 0,
  `upgradepoints` int(10) DEFAULT 0,
  `warnings` tinyint(3) DEFAULT 0,
  `injured` tinyint(1) DEFAULT 0,
  `hospital` tinyint(1) DEFAULT 0,
  `spawnhealth` float DEFAULT 50,
  `spawnarmor` float DEFAULT 0,
  `jailtype` tinyint(1) DEFAULT 0,
  `jailtime` int(10) DEFAULT 0,
  `newbiemuted` tinyint(1) DEFAULT 0,
  `helpmuted` tinyint(1) DEFAULT 0,
  `admuted` tinyint(1) DEFAULT 0,
  `livemuted` tinyint(1) DEFAULT 0,
  `globalmuted` tinyint(1) DEFAULT 0,
  `reportmuted` tinyint(2) DEFAULT 0,
  `reportwarns` tinyint(2) DEFAULT 0,
  `fightstyle` tinyint(2) DEFAULT 4,
  `locked` tinyint(1) DEFAULT 0,
  `accent` varchar(16) DEFAULT 'None',
  `cookies` int(10) DEFAULT 0,
  `phone` int(10) DEFAULT 0,
  `job` int(10) DEFAULT -1,
  `secondjob` tinyint(2) DEFAULT -1,
  `crimes` int(10) DEFAULT 0,
  `arrested` int(10) DEFAULT 0,
  `wantedlevel` tinyint(2) DEFAULT 0,
  `materials` int(10) DEFAULT 0,
  `pot` int(10) DEFAULT 0,
  `crack` int(10) DEFAULT 0,
  `meth` int(10) DEFAULT 0,
  `painkillers` int(10) DEFAULT 0,
  `seeds` int(10) DEFAULT 0,
  `ephedrine` int(10) DEFAULT 0,
  `muriaticacid` int(10) DEFAULT 0,
  `bakingsoda` int(10) DEFAULT 0,
  `cigars` int(10) DEFAULT 0,
  `walkietalkie` tinyint(1) DEFAULT 0,
  `channel` int(10) DEFAULT 0,
  `rentinghouse` int(10) DEFAULT 0,
  `spraycans` int(10) DEFAULT 0,
  `boombox` tinyint(1) DEFAULT 0,
  `mp3player` tinyint(1) DEFAULT 0,
  `phonebook` tinyint(1) DEFAULT 0,
  `fishingrod` tinyint(1) DEFAULT 0,
  `fishingbait` int(10) DEFAULT 0,
  `fishweight` int(10) DEFAULT 0,
  `components` int(10) DEFAULT 0,
  `courierskill` int(10) DEFAULT 0,
  `fishingskill` int(10) DEFAULT 0,
  `guardskill` int(10) DEFAULT 0,
  `weaponskill` int(10) DEFAULT 0,
  `mechanicskill` int(10) DEFAULT 0,
  `lawyerskill` int(10) DEFAULT 0,
  `smugglerskill` int(10) DEFAULT 0,
  `toggletextdraws` tinyint(1) DEFAULT 0,
  `toggleooc` tinyint(1) DEFAULT 0,
  `togglephone` tinyint(1) DEFAULT 0,
  `toggleadmin` tinyint(1) DEFAULT 0,
  `togglehelper` tinyint(1) DEFAULT 0,
  `togglenewbie` tinyint(1) DEFAULT 0,
  `togglewt` tinyint(1) DEFAULT 0,
  `toggleradio` tinyint(1) DEFAULT 0,
  `togglevip` tinyint(1) DEFAULT 0,
  `togglemusic` tinyint(1) DEFAULT 0,
  `togglefaction` tinyint(1) DEFAULT 0,
  `togglegang` tinyint(1) DEFAULT 0,
  `togglenews` tinyint(1) DEFAULT 0,
  `toggleglobal` tinyint(1) DEFAULT 0,
  `togglecam` tinyint(1) DEFAULT 0,
  `carlicense` tinyint(1) DEFAULT 0,
  `pilotlicense` tinyint(1) DEFAULT 0,
  `boatlicense` tinyint(1) DEFAULT 0,
  `facemask` int(10) DEFAULT 0,
  `fmtime` int(10) DEFAULT 0,
  `vippackage` tinyint(2) NOT NULL DEFAULT 2,
  `viptime` int(10) DEFAULT 1290000,
  `vipcooldown` int(10) DEFAULT 0,
  `weapon_0` tinyint(2) DEFAULT 0,
  `weapon_1` tinyint(2) DEFAULT 0,
  `weapon_2` tinyint(2) DEFAULT 0,
  `weapon_3` tinyint(2) DEFAULT 0,
  `weapon_4` tinyint(2) DEFAULT 0,
  `weapon_5` tinyint(2) DEFAULT 0,
  `weapon_6` tinyint(2) DEFAULT 0,
  `weapon_7` tinyint(2) DEFAULT 0,
  `weapon_8` tinyint(2) DEFAULT 0,
  `weapon_9` tinyint(2) DEFAULT 0,
  `weapon_10` tinyint(2) DEFAULT 0,
  `weapon_11` tinyint(2) DEFAULT 0,
  `weapon_12` tinyint(2) DEFAULT 0,
  `ammo_0` smallint(5) DEFAULT 0,
  `ammo_1` smallint(5) DEFAULT 0,
  `ammo_2` smallint(5) DEFAULT 0,
  `ammo_3` smallint(5) DEFAULT 0,
  `ammo_4` smallint(5) DEFAULT 0,
  `ammo_5` smallint(5) DEFAULT 0,
  `ammo_6` smallint(5) DEFAULT 0,
  `ammo_7` smallint(5) DEFAULT 0,
  `ammo_8` smallint(5) DEFAULT 0,
  `ammo_9` smallint(5) DEFAULT 0,
  `ammo_10` smallint(5) DEFAULT 0,
  `ammo_11` smallint(5) DEFAULT 0,
  `ammo_12` smallint(5) DEFAULT 0,
  `faction` tinyint(2) DEFAULT -1,
  `gang` tinyint(2) DEFAULT -1,
  `factionrank` tinyint(2) DEFAULT 0,
  `gangrank` tinyint(2) DEFAULT 0,
  `division` tinyint(2) DEFAULT -1,
  `contracted` int(10) DEFAULT 0,
  `contractby` varchar(24) DEFAULT 'Nobody',
  `bombs` int(10) DEFAULT 0,
  `completedhits` int(10) DEFAULT 0,
  `failedhits` int(10) DEFAULT 0,
  `reports` int(10) DEFAULT 0,
  `helprequests` int(10) DEFAULT 0,
  `speedometer` tinyint(1) DEFAULT 1,
  `factionmod` tinyint(1) DEFAULT 0,
  `gangmod` tinyint(1) DEFAULT 0,
  `banappealer` tinyint(1) DEFAULT 0,
  `potplanted` tinyint(1) DEFAULT 0,
  `pottime` int(10) DEFAULT 0,
  `potgrams` int(10) DEFAULT 0,
  `pot_x` float DEFAULT 0,
  `pot_y` float DEFAULT 0,
  `pot_z` float DEFAULT 0,
  `pot_a` float DEFAULT 0,
  `inventoryupgrade` int(10) DEFAULT 0,
  `addictupgrade` int(10) DEFAULT 0,
  `traderupgrade` int(10) DEFAULT 0,
  `assetupgrade` int(10) DEFAULT 0,
  `laborupgrade` int(11) NOT NULL DEFAULT 0,
  `pistolammo` smallint(5) DEFAULT 0,
  `shotgunammo` smallint(5) DEFAULT 0,
  `smgammo` smallint(5) DEFAULT 0,
  `arammo` smallint(5) DEFAULT 0,
  `rifleammo` smallint(5) DEFAULT 0,
  `hpammo` smallint(5) DEFAULT 0,
  `poisonammo` smallint(5) DEFAULT 0,
  `fmjammo` smallint(5) DEFAULT 0,
  `ammotype` tinyint(2) DEFAULT 0,
  `ammoweapon` tinyint(2) DEFAULT 0,
  `dmwarnings` tinyint(2) DEFAULT 0,
  `weaponrestricted` int(10) DEFAULT 0,
  `referral_uid` int(10) DEFAULT 0,
  `refercount` int(10) DEFAULT 0,
  `watch` tinyint(1) DEFAULT 0,
  `gps` tinyint(1) DEFAULT 0,
  `prisonedby` varchar(24) DEFAULT 'No-one',
  `prisonreason` varchar(128) DEFAULT 'None',
  `togglehud` tinyint(1) DEFAULT 1,
  `clothes` smallint(3) DEFAULT -1,
  `showturfs` tinyint(1) DEFAULT 0,
  `showlands` tinyint(1) DEFAULT 0,
  `watchon` tinyint(1) DEFAULT 0,
  `gpson` tinyint(1) DEFAULT 0,
  `doublexp` int(10) DEFAULT 0,
  `couriercooldown` int(10) DEFAULT 0,
  `pizzacooldown` int(10) DEFAULT 0,
  `detectivecooldown` int(10) DEFAULT 0,
  `duty` int(10) DEFAULT 0,
  `bandana` int(10) NOT NULL DEFAULT 0,
  `detectiveskill` int(11) DEFAULT 0,
  `gascan` int(11) DEFAULT 0,
  `refunded` int(11) DEFAULT 0,
  `backpack` int(11) DEFAULT 0,
  `bpcash` int(11) DEFAULT 0,
  `bpmaterials` int(11) DEFAULT 0,
  `bppot` int(11) DEFAULT 0,
  `bpcrack` int(11) DEFAULT 0,
  `bpmeth` int(11) DEFAULT 0,
  `bppainkillers` int(11) DEFAULT 0,
  `bpweapon_0` int(11) DEFAULT 0,
  `bpweapon_1` int(11) DEFAULT 0,
  `bpweapon_2` int(11) DEFAULT 0,
  `bpweapon_3` int(11) DEFAULT 0,
  `bpweapon_4` int(11) DEFAULT 0,
  `bpweapon_5` int(11) DEFAULT 0,
  `bpweapon_6` int(11) DEFAULT 0,
  `bpweapon_7` int(11) DEFAULT 0,
  `bpweapon_8` int(11) DEFAULT 0,
  `bpweapon_9` int(11) DEFAULT 0,
  `bpweapon_10` int(11) DEFAULT 0,
  `bpweapon_11` int(11) DEFAULT 0,
  `bpweapon_12` int(11) DEFAULT 0,
  `bpweapon_13` int(11) DEFAULT 0,
  `bpweapon_14` int(11) DEFAULT 0,
  `bphpammo` int(11) DEFAULT 0,
  `bppoisonammo` int(11) DEFAULT 0,
  `bpfmjammo` int(11) DEFAULT 0,
  `formeradmin` int(2) NOT NULL DEFAULT 0,
  `deathcooldown` int(10) NOT NULL DEFAULT 0,
  `hunger` int(10) NOT NULL DEFAULT 100,
  `hungertimer` int(10) NOT NULL DEFAULT 0,
  `thirst` int(11) NOT NULL DEFAULT 100,
  `thirsttimer` int(11) NOT NULL DEFAULT 0,
  `covid` int(12) NOT NULL DEFAULT 0,
  `covidtimer` int(12) NOT NULL DEFAULT 0,
  `totalpatients` int(10) NOT NULL DEFAULT 0,
  `totalfires` int(10) NOT NULL DEFAULT 0,
  `rarecooldown` int(10) NOT NULL DEFAULT 0,
  `vipdlcooldown` int(11) NOT NULL DEFAULT 0,
  `customtitle` varchar(64) NOT NULL DEFAULT '0',
  `customcolor` varchar(16) NOT NULL DEFAULT '0',
  `mask` int(10) NOT NULL DEFAULT 0,
  `diamonds` int(11) NOT NULL DEFAULT 0,
  `ecoin` int(11) NOT NULL DEFAULT 0,
  `blindfold` int(10) NOT NULL DEFAULT 0,
  `rope` int(10) NOT NULL DEFAULT 0,
  `insurance` int(10) NOT NULL DEFAULT 0,
  `passport` int(10) NOT NULL DEFAULT 0,
  `passportname` varchar(64) DEFAULT NULL,
  `passportlevel` int(10) NOT NULL DEFAULT 0,
  `passportskin` int(10) NOT NULL DEFAULT 0,
  `passportphone` int(10) NOT NULL DEFAULT 0,
  `marriedto` int(10) NOT NULL DEFAULT -1,
  `newbies` int(10) NOT NULL DEFAULT 0,
  `chatanim` tinyint(2) NOT NULL DEFAULT 0,
  `Lottery` int(11) NOT NULL DEFAULT 0,
  `LotteryB` int(11) NOT NULL DEFAULT 0,
  `flashlight` tinyint(2) NOT NULL DEFAULT 0,
  `candy` int(11) NOT NULL DEFAULT 0,
  `gunlicense` tinyint(2) NOT NULL DEFAULT 0,
  `thiefskill` int(11) DEFAULT 0,
  `thiefcooldown` int(11) DEFAULT 0,
  `cocainecooldown` int(11) DEFAULT 0,
  `teacher` tinyint(2) NOT NULL DEFAULT 0,
  `course` tinyint(2) NOT NULL DEFAULT 0,
  `citizen` tinyint(2) NOT NULL DEFAULT 0,
  `repairkit` int(11) NOT NULL DEFAULT 0,
  `firstaid` int(11) NOT NULL DEFAULT 0,
  `nationalid` int(10) NOT NULL DEFAULT 0,
  `dirtycash` int(11) NOT NULL DEFAULT 0,
  `comserv` int(11) NOT NULL DEFAULT 0,
  `groupleader` tinyint(11) NOT NULL DEFAULT 0,
  `pgroup` tinyint(11) NOT NULL DEFAULT 0,
  `task1` int(10) NOT NULL DEFAULT 0,
  `task2` int(10) NOT NULL DEFAULT 0,
  `task3` int(10) NOT NULL DEFAULT 0,
  `task4` int(10) NOT NULL DEFAULT 0,
  `task5` int(10) NOT NULL DEFAULT 0,
  `claimed1` int(10) NOT NULL DEFAULT 0,
  `claimed2` int(10) NOT NULL DEFAULT 0,
  `claimed3` int(10) NOT NULL DEFAULT 0,
  `claimed4` int(10) NOT NULL DEFAULT 0,
  `claimed5` int(10) NOT NULL DEFAULT 0,
  `loadexpire` int(10) DEFAULT 1290000,
  `loads` int(2) DEFAULT 0,
  `carrytrash` int(11) DEFAULT 0,
  `bindslot1` varchar(128) DEFAULT 'None',
  `bindslot2` varchar(128) DEFAULT 'None',
  `bindslot3` varchar(128) DEFAULT 'None',
  `bindslot4` varchar(128) DEFAULT 'None',
  `bindslot5` varchar(128) DEFAULT 'None',
  `bindslot6` varchar(128) DEFAULT 'None',
  `bindslot7` varchar(128) DEFAULT 'None',
  `bindslot8` varchar(128) DEFAULT 'None',
  `voicechat` int(11) DEFAULT NULL,
  `discordtag` int(10) DEFAULT 0,
  `discordname` varchar(128) DEFAULT 'None',
  `discordid` varchar(25) NOT NULL DEFAULT 'None#0000',
  `verified` int(11) NOT NULL DEFAULT 0,
  `code` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `username`, `password`, `regdate`, `lastlogin`, `login_date`, `ip`, `setup`, `gender`, `age`, `skin`, `camera_x`, `camera_y`, `camera_z`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `interior`, `world`, `cash`, `bank`, `paycheck`, `level`, `exp`, `minutes`, `hours`, `adminlevel`, `adminname`, `helperlevel`, `health`, `armor`, `upgradepoints`, `warnings`, `injured`, `hospital`, `spawnhealth`, `spawnarmor`, `jailtype`, `jailtime`, `newbiemuted`, `helpmuted`, `admuted`, `livemuted`, `globalmuted`, `reportmuted`, `reportwarns`, `fightstyle`, `locked`, `accent`, `cookies`, `phone`, `job`, `secondjob`, `crimes`, `arrested`, `wantedlevel`, `materials`, `pot`, `crack`, `meth`, `painkillers`, `seeds`, `ephedrine`, `muriaticacid`, `bakingsoda`, `cigars`, `walkietalkie`, `channel`, `rentinghouse`, `spraycans`, `boombox`, `mp3player`, `phonebook`, `fishingrod`, `fishingbait`, `fishweight`, `components`, `courierskill`, `fishingskill`, `guardskill`, `weaponskill`, `mechanicskill`, `lawyerskill`, `smugglerskill`, `toggletextdraws`, `toggleooc`, `togglephone`, `toggleadmin`, `togglehelper`, `togglenewbie`, `togglewt`, `toggleradio`, `togglevip`, `togglemusic`, `togglefaction`, `togglegang`, `togglenews`, `toggleglobal`, `togglecam`, `carlicense`, `pilotlicense`, `boatlicense`, `facemask`, `fmtime`, `vippackage`, `viptime`, `vipcooldown`, `weapon_0`, `weapon_1`, `weapon_2`, `weapon_3`, `weapon_4`, `weapon_5`, `weapon_6`, `weapon_7`, `weapon_8`, `weapon_9`, `weapon_10`, `weapon_11`, `weapon_12`, `ammo_0`, `ammo_1`, `ammo_2`, `ammo_3`, `ammo_4`, `ammo_5`, `ammo_6`, `ammo_7`, `ammo_8`, `ammo_9`, `ammo_10`, `ammo_11`, `ammo_12`, `faction`, `gang`, `factionrank`, `gangrank`, `division`, `contracted`, `contractby`, `bombs`, `completedhits`, `failedhits`, `reports`, `helprequests`, `speedometer`, `factionmod`, `gangmod`, `banappealer`, `potplanted`, `pottime`, `potgrams`, `pot_x`, `pot_y`, `pot_z`, `pot_a`, `inventoryupgrade`, `addictupgrade`, `traderupgrade`, `assetupgrade`, `laborupgrade`, `pistolammo`, `shotgunammo`, `smgammo`, `arammo`, `rifleammo`, `hpammo`, `poisonammo`, `fmjammo`, `ammotype`, `ammoweapon`, `dmwarnings`, `weaponrestricted`, `referral_uid`, `refercount`, `watch`, `gps`, `prisonedby`, `prisonreason`, `togglehud`, `clothes`, `showturfs`, `showlands`, `watchon`, `gpson`, `doublexp`, `couriercooldown`, `pizzacooldown`, `detectivecooldown`, `duty`, `bandana`, `detectiveskill`, `gascan`, `refunded`, `backpack`, `bpcash`, `bpmaterials`, `bppot`, `bpcrack`, `bpmeth`, `bppainkillers`, `bpweapon_0`, `bpweapon_1`, `bpweapon_2`, `bpweapon_3`, `bpweapon_4`, `bpweapon_5`, `bpweapon_6`, `bpweapon_7`, `bpweapon_8`, `bpweapon_9`, `bpweapon_10`, `bpweapon_11`, `bpweapon_12`, `bpweapon_13`, `bpweapon_14`, `bphpammo`, `bppoisonammo`, `bpfmjammo`, `formeradmin`, `deathcooldown`, `hunger`, `hungertimer`, `thirst`, `thirsttimer`, `covid`, `covidtimer`, `totalpatients`, `totalfires`, `rarecooldown`, `vipdlcooldown`, `customtitle`, `customcolor`, `mask`, `diamonds`, `ecoin`, `blindfold`, `rope`, `insurance`, `passport`, `passportname`, `passportlevel`, `passportskin`, `passportphone`, `marriedto`, `newbies`, `chatanim`, `Lottery`, `LotteryB`, `flashlight`, `candy`, `gunlicense`, `thiefskill`, `thiefcooldown`, `cocainecooldown`, `teacher`, `course`, `citizen`, `repairkit`, `firstaid`, `nationalid`, `dirtycash`, `comserv`, `groupleader`, `pgroup`, `task1`, `task2`, `task3`, `task4`, `task5`, `claimed1`, `claimed2`, `claimed3`, `claimed4`, `claimed5`, `loadexpire`, `loads`, `carrytrash`, `bindslot1`, `bindslot2`, `bindslot3`, `bindslot4`, `bindslot5`, `bindslot6`, `bindslot7`, `bindslot8`, `voicechat`, `discordtag`, `discordname`, `discordid`, `verified`, `code`) VALUES
(1, 'Carl_Andrei', '643B48003AA0305F0D9B5B0AD468B42C63C48E4CA809A5EC9874FFBAAA55297535F2824B7904491BFE75ED5552B0240FF6AE5F123550D4E3A75105067A35E65F', '2022-06-07 05:23:40', '2022-06-07 05:29:39', NULL, '112.200.175.69', 0, 1, 17, 299, 1522.09, -2198.61, 14.444, 1518.97, -2197.11, 13.375, 66.259, 0, 0, 500, 500, 0, 17, -54, 4, 0, 0, 'None', 0, 96.04, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 140, 99, 20, 1, 20, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(2, 'Jinggoy_Estrada', 'EAA18FA9CAA3AED6BD5784C8BF8F052035E0883BBDB3F0ACE470920D543AEDB61A016E1422D39D20584AEBDAD97C163756D1871A2CC715410B23F89C01C14ED9', '2022-06-07 05:24:00', '2022-06-07 06:29:51', NULL, '49.144.41.242', 0, 1, 23, 299, 1161.49, -1492.06, 16.766, 1163.44, -1489.36, 15.386, 337.729, 0, 0, 40501, 500, 0, 14, -45, 21, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 914002, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94, 94, 91, 94, 9, 94, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(3, 'Kovalchin_Bolkov', 'F994942C8011B348B2DAA47EEE40E8A13D8852A360C5BB47CFACCF7E97294D3A935E1EB3EE300AE5F29E8A30C896A34DE453E335B2771A2D46190EB3B95B4DB8', '2022-06-07 05:31:05', '2022-06-07 06:26:14', NULL, '49.145.118.140', 0, 1, 21, 299, 1969.62, -1756.42, 14.619, 1961.18, -1754.06, 12.956, 169.552, 0, 0, 20500, 500, 0, 11, -39, 16, 0, 7, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1655184701, 0, 0, 0, 24, 27, 0, 31, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 47, 96, 107, 4, 107, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 51, 'Haydrax', '51', 1, 0),
(4, 'Bahug_Bellath', '643B48003AA0305F0D9B5B0AD468B42C63C48E4CA809A5EC9874FFBAAA55297535F2824B7904491BFE75ED5552B0240FF6AE5F123550D4E3A75105067A35E65F', '2022-06-07 05:39:28', '2022-06-07 06:23:23', NULL, '112.200.175.69', 0, 1, 27, 23, 1124.41, -1409.87, 14.307, 1127.77, -1410.73, 13.456, 356.764, 0, 0, 500, 500, 0, 12, -46, 35, 0, 7, 'BILLATH', 0, 89.77, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Auto-BOT', 'Quitting During Arrest', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 14, 82, 14, 18, 14, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 51, 'BahogBee', '55', 1, 0),
(5, 'Xenu_Cleezy', '26C757A96779E029E8998BE8FAF2617327A9719B0329D2E44A16EF319198DFB267FD0115F1245B51B3DF8826E8F5F43BF6F354FBF4324231D660499A0A3D3387', '2022-06-07 05:41:09', '2022-06-07 05:45:59', NULL, '120.29.109.43', 0, 1, 20, 299, 1486.84, -1735.71, 14.261, 1483.46, -1734.85, 13.383, 122.811, 0, 0, 0, 500, 0, 11, -35, 14, 0, 6, 'None', 0, 95.05, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 83, 94, 83, 6, 83, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 50, 'Xenu PH', '55', 1, 0),
(6, 'Rexxon_Santoyo', '254EEB956CBA92A41FCD05F8923CB65A55FC633FCADEF5CC2C278BDC0EE6A00926BE7DEA51F94CD562865D4444A5D67B9272EBBDF3DBB0157C77FB9B0A3D4713', '2022-06-07 06:10:18', '2022-06-07 06:10:18', NULL, '110.54.150.109', 0, 1, 13, 299, 1126.94, -1406.78, 15.214, 1127.9, -1409.93, 13.452, 183.732, 0, 0, 500, 500, 0, 8, -25, 14, 0, 5, 'None', 0, 75.25, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 132, 93, 12, 7, 12, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 50, 'rexxon santoyo', '57', 1, 0),
(7, 'Xean_Hernandez', 'D68D3E2DEFD34EA13A5FB6B3447E322DE62F6F6B503C405FF92408CDCE581726C8A08150E8164AE3913421E48A83A672735322CFF37119FD4F3C6DBB7828F093', '2022-10-03 08:18:58', '2022-10-08 16:54:59', NULL, '49.149.108.105', 0, 1, 23, 48, -1119.59, 1979.77, -58.257, -1119.77, 1978.41, -58.914, 173.937, 0, 1, 3216411, 21687, 0, 13, -9, 28, 45, 0, 'None', 0, 50, 0, 0, 1, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 946959, 3, -1, 2, 0, 2, 0, 99, 35, 50, 180, 0, 0, 0, 0, 19, 1, 0, 0, 10, 0, 1, 1, 1, 0, 0, 0, 0, 73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1667539264, 1, 1665501182, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'Server', 'Failing to change their name', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 1, 1, 30000, 0, 0, 0, 0, 5, 31, 31, 34, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 70, 38, 70, 12, 70, 0, 0, 0, 0, '0', '0', 1, 0, 0, 4, 6, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 2, 1, 1, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 49, 'CANCER', '57', 1, 0),
(8, 'Dwayne_Johnson', '092BC5517F41B4F382706D6130EB66ABE52ABE08E84BA288548342409C91A05A9ED919A9CEC2FD058139353BF344F9F91A62FF7F3F7C25FEA979C96D2FB83AD0', '2022-10-03 08:47:17', '2022-10-14 12:58:10', NULL, '38.10.90.242', 0, 1, 99, 294, 1109.95, -1410.39, 14.609, 1104.69, -1410.77, 13.019, 157.398, 0, 0, 15221000, 141120, 0, 5, 9, 40, 50, 10, '22222', 0, 98.55, 0, 0, 0, 0, 0, 50, 15.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 932521, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 0, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, 14, 0, -1, 0, 'Nobody', 0, 0, 0, 3, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 77, 53, 17, 50, 4342, 0, 0, 0, 0, '0', '0', 1, 4, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 51, 'pancitlang_', '52', 1, 0),
(9, 'Myca', '10EE20DF99C26FE81755D7C64D82B37EADFC0CADC98587B3F31124A7DBE63291F5F822F7EDFC3B25AA8CA0E02E5F78E413C07EE7BC6AAE3C49B32357FE906C25', '2022-10-03 09:33:43', '2022-10-04 02:05:25', NULL, '175.176.21.149', 0, 2, 20, 169, 1124.86, -1409.92, 13.558, 1128.29, -1409.81, 13.452, 290.155, 0, 0, 20500, 500, 0, 4, -11, 58, 0, 7, 'None', 0, 100, 100, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 81, 98, 71, 38, 29, 38, 0, 0, 0, 0, 'Community Owner', '-16777216', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 48, 'MycaðŸ‘‘', '49', 1, 0),
(10, 'Wilbert_Cordova', 'E7C994FFA9986A1D0BECB2E92299E31F8165E0B48229023648434E9B970FB0936FA1DFABF9138CC215C7E807FDC03701A281D23DE4F0F0EBF3DF24044BDFDA32', '2022-10-03 10:01:55', '2022-10-12 14:32:43', NULL, '175.176.10.248', 0, 1, 20, 230, 1566.03, -1274.19, 18.147, 1568.14, -1274.18, 17.434, 261.311, 0, 0, 120501, 505, 0, 4, -9, 1, 21, 10, 'xoxo', 0, 97.36, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1696599278, 0, 0, 0, 24, 27, 0, 31, 34, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 8, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 81, 107, 71, 47, 29, 47, 0, 0, 0, 0, 'Pusa', '-54525952', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 55, 'Wilbert Cordova', '53', 1, 0),
(11, 'Kirov_Yuri', 'E3B347C1F6A0653F80E13EE1FAC596D1D3591F84C54D7CAF6FD6273B9BC732F3954A47A4B0F46F1CB12E836E44427AF85B3E44FC36C46505063831F3126F2A9D', '2022-10-03 10:14:31', '2022-10-03 10:14:31', NULL, '38.10.90.242', 1, 1, 18, 299, 2208.67, -1733.71, 27.48, 2223.87, -1724.04, 13.563, 1, 0, 0, 500, 500, 0, 5, -15, 1, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 94, 100, 94, 0, 94, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(12, 'Kirov_Test1', '092BC5517F41B4F382706D6130EB66ABE52ABE08E84BA288548342409C91A05A9ED919A9CEC2FD058139353BF344F9F91A62FF7F3F7C25FEA979C96D2FB83AD0', '2022-10-04 00:40:46', '2022-10-04 00:40:46', NULL, '49.145.98.192', 0, 1, 21, 299, 1629.72, -2242.48, 14.945, 1626.15, -2245.96, 13.511, 135.338, 0, 0, 500, 500, 0, 4, -12, 0, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 19, 100, 19, 0, 19, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(13, 'Gabriel_Smith', '2815990784D66FD3FBF8F21141C93E7B8761228DB2CD45DFF18D3062E0BC1F96828FEBBAA35A40764E3099D507527CCDA78ADE7C4FC40F846B4DD72FAFB07D27', '2022-10-04 01:05:20', '2022-10-14 12:53:29', NULL, '103.3.81.250', 0, 1, 20, 1, 327.844, -1520.25, 39.354, 326.716, -1518.91, 35.867, 204.373, 0, 0, 18701, 507, 0, 4, -6, 43, 6, 0, 'None', 1, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 904850, 4, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, -1, 14, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45, 73, 17, 13, 49, 72, 0, 0, 0, 0, '0', '0', 1, 0, 0, 2, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1665713826, 2, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 52, 'Gab', '57', 1, 0),
(14, 'Justine_Crimel', 'A3AA6FD37B1537CABCE100B9EA23079A09E7142ECD75387F6A961573E11814BCDC02D79C8AA6E389E446CCB98CFD4594E2B33017D43E9D7014F9CFBCA27EB5ED', '2022-10-04 01:09:38', '2022-10-04 16:02:53', NULL, '203.189.118.79', 0, 1, 17, 294, 1125.97, -1429.32, 16.895, 1129.64, -1425.12, 15.797, 357, 0, 0, 2764391, 4949, 0, 5, -8, 10, 4, 5, 'Crimel', 0, 50, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 927356, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 10, 1, 0, 0, 10, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49, 33, 49, 93, 1, 93, 0, 0, 0, 0, 'IGOP', '49435136', 1, 1, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 52, 'ã‚¸ãƒ£ã‚¹ãƒ†ã‚£ãƒ³-', '57', 1, 0),
(15, 'Jay_Yurong', '8517BA4DF0ABFCBD8509F62F0DC9C38DF58FE319EF33FE94864FFA83F32BA8A605A4FB1C1FCFA09B8B83F4CF59FE8AD3EDA810DBA75FD71A2D9CC647DFC6DCCD', '2022-10-04 01:13:40', '2022-10-14 08:21:13', NULL, '175.176.21.59', 0, 1, 21, 266, 743.287, -2058.73, 4.477, 721.286, -2184.8, 2.473, 267.641, 0, 0, 1653001, 230963929, 0, 6, 32, 6, 37, 10, 'BRASS', 0, 100, 100, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'Chinese', 0, 944086, 13, -1, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 3, 1666113860, 0, 0, 0, 24, 0, 29, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, 14, 0, -1, 0, 'Nobody', 0, 0, 0, 19, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91, 79, 86, 19, 27, 21, 0, 0, 0, 0, 'Server Director', '16756736', 1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 6, 0, 2, 1, 1, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 48, 'SYðŸ‘‘', '49', 1, 0),
(16, 'Peter_La_Citadel', 'C54DF63C56D868D3E56CBCB02CDEA10DFC96659128271AE4FE1C90EDEED575C8D8109568578C87EEBF43609854ADE6A47C99B0784844D20FFB69AB0644A87E0C', '2022-10-04 02:05:51', '2022-10-14 09:25:47', NULL, '49.147.183.241', 0, 1, 15, 294, 1288.95, -1648.15, 14.88, 1128.3, -1388.13, 13.235, 176.698, 0, 0, 2600595, 544, 0, 3, 3, 15, 43, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 961928, -1, -1, 6, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, -1, 2, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Jay_Yurong', 'nonrp', 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 88, 95, 17, 50, 326, 4, 0, 0, 0, 'Loyal Members ', '15774208', 1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 51, 'jouh', '49', 1, 0),
(17, 'Croox_Saloma', '9B7872B73250ED61C1BB1184CBD795AE47D228E67C016C148C682314459B71E6BFDC23C4314AE5B67C823AB6825AF20381ECE8600ADA0B28F576464790312227', '2022-10-04 02:06:23', '2022-10-07 11:46:23', NULL, '122.2.108.101', 0, 1, 17, 299, -1112.03, 1983.44, -58.214, -1111.8, 1981.56, -58.914, 187.008, 0, 2, 500, 500, 0, 2, -4, 14, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 118, 94, 118, 6, 118, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(18, 'Genji_Locco', 'CF61D669792A89F65B5BDF841795514BC878BF320091742E087B4266D574336B5CC3AE4D932BA23B5BA9B0B083F4373F9AED55B21020BD85D3CE6D31F34F2934', '2022-10-04 02:06:25', '2022-10-14 13:05:15', NULL, '136.158.40.9', 0, 1, 23, 2, 1234.46, -1412.32, 14.106, 1231.26, -1412.83, 13.262, 102.323, 0, 0, 470549, 4155899, 0, 2, 13, 41, 12, 0, 'None', 0, 98.68, 50, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 996521, 3, -1, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 25, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1667539256, 0, 0, 0, 0, 0, 22, 25, 0, 31, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 77, 5, 66, 65, 26, 1, 0, 0, 0, 0, '0', '0', 1, 0, 0, 1, 1, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 6, 0, 2, 1, 1, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 50, 'Genji_Takiya', '57', 1, 0),
(19, 'Don_Marco', '24E62AFEBA97F5658694275CE635BF95BA341A3223912DB02EA464595A4F41079602D13CA9844C770B89A7423F9B67282209F6A3F4730AF358365C43D7DF229B', '2022-10-04 02:08:01', '2022-10-04 02:32:12', NULL, '112.206.252.23', 0, 1, 20, 299, 1105.84, -1440.28, 17.253, 1102.87, -1438.65, 15.797, 72.854, 0, 0, 21000, -5, 0, 2, 0, 22, 0, 0, 'None', 0, 100, 100, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93, 70, 89, 10, 11, 10, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 56, 'DON_MARCO', '49', 1, 0),
(20, 'Verino_Valdez', '4E0658D00F47D86D19A0E792E4BB94B16DB2E902D307DA5637F57CF60E7A174CB4BB6D7095621745B2065DF0C87B77AF69F5D0FBD63359AD3CC6B72F076C3E1E', '2022-10-04 02:08:54', '2022-10-04 02:08:54', NULL, '112.204.173.16', 0, 1, 15, 299, 1129.32, -1415.67, 14.357, 1129.22, -1415.43, 13.59, 16.747, 0, 0, 500, 500, 0, 1, 0, 2, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 96, 100, 96, 0, 96, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(21, 'Myca_Cute', '10EE20DF99C26FE81755D7C64D82B37EADFC0CADC98587B3F31124A7DBE63291F5F822F7EDFC3B25AA8CA0E02E5F78E413C07EE7BC6AAE3C49B32357FE906C25', '2022-10-04 02:11:04', '2022-10-14 14:47:38', NULL, '175.176.21.59', 0, 2, 20, 193, 2284.53, -936.031, 109.986, 2286.49, -936.279, 108.907, 79.383, 0, 0, 8992151, 113648, 0, 5, 23, 12, 101, 10, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 1, 3, -1, 0, 0, 0, 0, 46, 0, 0, 100, 10, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 3, 1666325478, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1, 14, 6, -1, 0, 'Nobody', 0, 0, 0, 15, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Jay_Yurong', 'sama ka dito ', 1, 169, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 73, 59, 51, 59, 40, 17, 0, 0, 0, 0, 'Cute na Owner<3', '16501760', 1, 2, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 6, 0, 1, 0, 1, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 48, 'MycaðŸ‘‘', '49', 1, 0),
(22, 'Arthur_La_Citadel', '19CC2DB8F6DD3FA92EA89DA89D6978A88768B497C2010FE59F35B50CC0052ACD94AEF0B7E389111B5B7CE0FD76E767DFEB3CA72725DA2F75992E2D9A1F4D5F3A', '2022-10-04 02:11:07', '2022-10-12 09:21:16', NULL, '203.189.116.226', 0, 1, 18, 22, 2205.94, -1077.78, 1048.79, 2205.88, -1074.29, 1042.27, 1, 0, 0, 496081, -5010, 0, 2, 1, 149, 1, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 925821, -1, -1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 25, 0, 0, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Server', 'Logging to avoid arrest', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 7, 4, 7, 50, 5527, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 2, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1665794188, 2, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 54, 'Arthur', '55', 1, 0),
(23, 'Mush_Ibasco', 'CCE08BBA3F2E3C029CD257104B06D4B075772D5F514CF1B7789506F9A69D53C51464881D2C18445AB290553B302F67A24B1C69E3E737A46215DEAF43517E4960', '2022-10-04 02:13:35', '2022-10-12 10:16:18', NULL, '175.176.41.162', 0, 1, 25, 249, 451.383, -1725.82, 11.595, 450.992, -1729.19, 10.282, 321.071, 0, 0, 99088000, 1533, 0, 1, 10, 38, 10, 8, 'Mush', 0, 90.76, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 910263, 4, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, -1, 14, 0, -1, 0, 'Nobody', 0, 0, 0, 3, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, 294, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69, 13, 54, 73, 46, 73, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'Checking Engine Of The Vehicle', 'Grabs A Piars Of Gloves And Wear It', 'Checking If The Vehicle Other Damage', 'Found The Damage Of The Vehicle', 'None', 'None', 'None', 'None', NULL, 53, 'Mush', '57', 1, 0),
(24, 'Arnulfo_Ipis', '2D16E4DEC2A8C05DEBC74C32A283F10A29EEDE53BCB496EB35C4FC1532AC1A24E3F6CE9650C5AD845B6EACEC83BA8D533CF1F013EAC6AE5A7241BB881F7A9922', '2022-10-04 02:18:27', '2022-10-05 02:47:11', NULL, '112.200.122.239', 0, 1, 20, 170, -2784.47, 1308.58, 3131.67, -2785.22, 1307.19, 3130.65, 172.429, 6, 1, 46500, 503, 0, 2, 3, 9, 2, 0, 'None', 0, 100, 42.41, 0, 0, 0, 0, 50, 0, 2, 179, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 955156, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 10, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 1, 1, 0, 0, 0, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 125, 54, 5, 46, 5, 0, 0, 0, 0, '0', '0', 0, 0, 0, 2, 2, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 55, 'Jaguar..', '49', 1, 0),
(25, 'Donny_Macapagal', 'B15ADDF3EE6AA686CC205E1D9978B4DF7F8144C12B321C9340BB2F06E2679369E49B24C9DF6D4953B272F92DF044D46B0721AEBB3096BDA0B3851B344FE6EA66', '2022-10-04 02:36:36', '2022-10-04 06:07:46', NULL, '49.144.9.66', 0, 1, 19, 108, 1169.45, -1384.39, 14.397, 1169.56, -1385.47, 13.677, 185.706, 0, 0, 500, 500, 0, 1, 0, 34, 0, 0, 'None', 0, 86.47, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 931964, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'No-one', 'None', 1, -1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 16, 84, 76, 16, 76, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'Take My Illegal Weapons From My Bag And Reloads It With A Full Magazine And Ready To Shoot Anytime', 'Take My Weapons And Aim On Strangers Head As He Attempt To Finish The Madafucker', 'Take My Knife From My Small Backpack And Aim On Strangers Neck', 'None', 'None', 'None', 'None', 'None', NULL, 55, 'Hamog', '57', 1, 0),
(26, 'John_Mendoza', '74DD71A7AE8494A9B35DC4D9B43DA22FE6C726A41355A12FB1A7CACE14976411836A86E6D0009E636DE07B64AC9FC13F859DF832E3D28EE4A8CFC979CED7F26A', '2022-10-04 02:56:19', '2022-10-09 16:44:28', NULL, '175.176.56.132', 0, 1, 25, 287, 1221.47, -1332.41, 15.098, 1118.7, -1483.92, 23.332, 44.833, 0, 0, 10000, 248015, 0, 1, 10, 7, 10, 0, 'None', 0, 96, 0, 0, 0, 1, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 985619, -1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1665588620, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 77, 48, 61, 94, 35, 17, 0, 0, 0, 0, '0', '0', 1, 1, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 2, 1, 1, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 52, 'Jann007', '49', 1, 0),
(27, 'Kairo_Drexel', 'C29CFBDF54B979557A94A32FBE2F74F20A7E9092F5200A224175CC2E5C7A56C4DC2A71269F95176CD2E0D6DC416F7A4AD14B5ECE34DE42482FCB540D08490451', '2022-10-04 03:23:14', '2022-10-14 13:12:15', NULL, '112.208.243.200', 0, 1, 19, 29, 1130.34, -1408.94, 13.848, 1130.77, -1410.95, 13.624, 159.765, 0, 0, 163051, 50960, 0, 3, 33, 51, 33, 6, 'HIDE.', 0, 97.36, 50, 0, 1, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'None', 0, 964446, -1, -1, 0, 0, 0, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1, 0, 0, 1, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1667742615, 0, 0, 0, 0, 0, 24, 0, 29, 0, 0, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, -1, 14, 0, -1, 0, 'Nobody', 0, 0, 0, 8, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 60, 44, 0, 50, 8724, 0, 0, 0, 0, '0', '0', 1, 1, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 6, 0, 2, 1, 1, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 56, 'Toshiro_khalixta', '55', 1, 0),
(28, 'Champa_Borax', '2F9959B230A44678DD2DC29F037BA1159F233AA9AB183CE3A0678EAAE002E5AA6F27F47144A1A4365116D3DB1B58EC47896623B92D85CB2F191705DAF11858B8', '2022-10-04 03:27:52', '2022-10-04 03:27:52', NULL, '131.226.64.215', 0, 1, 14, 299, 1645.39, -2242.95, 14.312, 1642.49, -2244.41, 13.491, 103.696, 0, 0, 500, 500, 0, 1, 0, 2, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 161, 99, 41, 1, 41, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(29, 'Xander_Robles', 'D6B363190C7667B0CA18D5B0EE82072D3BDD16B0EAA3AEF412D0B3104A70936A3ECF6C898B245D2F44F04CF0AEC020587F0FE0242C88C6914A924748D8B5D171', '2022-10-04 03:54:50', '2022-10-04 03:54:50', NULL, '124.106.181.33', 0, 1, 21, 299, 1605.93, -2242.53, 14.816, 1607.72, -2244.05, 13.534, 317.728, 0, 0, 20500, 500, 0, 1, 0, 3, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 16, 99, 76, 1, 76, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 48, 'hotrom', '57', 1, 0),
(30, 'Hugh_McQuinn', '80C6D0986D5A158C1D7081DE52F8CCA0F183195A7BEEF039717128DEAF9CD842C1FDE41B86DAF8AE696F01EED78996D996CF792F9186D2A8CE0D86F38D95037A', '2022-10-04 04:10:18', '2022-10-04 10:04:07', NULL, '112.200.32.87', 0, 1, 23, 119, 388.164, -1519.22, 33.764, 392.847, -1519.68, 32.273, 264.427, 0, 0, 20000, 502, 0, 1, 1, 26, 1, 0, 'None', 0, 97.36, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1665202287, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 60, 62, 0, 38, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 53, 'ãƒ…XIÆžä¸«á»¿ÄªÆžÄ', '55', 1, 0),
(31, 'Rapido_Alvarez', 'B4B30EB7763F59200E23F252EBAE1761161C365E60EB6A54A7092766D00A7A4D3DF80E894914BAD110CAC199A47F79ECB9461B1410FBBBF379960316516BBCF8', '2022-10-04 04:23:29', '2022-10-04 16:54:48', NULL, '122.54.145.0', 0, 1, 20, 124, -1055.43, 909.298, 35.78, -1055.49, 912.745, 34.578, 182.085, 0, 0, 41050, 3508, 0, 3, 2, 42, 2, 0, 'Rap', 0, 100, 0, 0, 0, 0, 0, 51.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 950744, -1, -1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, -1, 14, 0, -1, 0, 'Nobody', 0, 0, 0, 5, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, 240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 66, 29, 66, 21, 66, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 49, 'Rapido', '57', 1, 0),
(32, 'Leon_Locco', 'BFA40AE63C36184DD3D110D58C21BCDB01F85AC9F58DF46C32E035939F79F79F96B2E5B66216964EE10DF7D2FC0EDCD58AAACD6447252B6B87C4B15062CFB043', '2022-10-04 04:23:36', '2022-10-07 15:39:44', NULL, '110.54.229.92', 0, 1, 19, 2, 1130.71, -1506.63, 17.852, 1130.2, -1503.15, 18.62, 341.969, 0, 0, 3307, 515, 0, 2, 8, 20, 10, 0, 'None', 0, 100, 98.68, 0, 1, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 981657, -1, -1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1665487064, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 62, 94, 62, 6, 62, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 56, 'ricardoCordaÃ±o', '49', 1, 0),
(33, 'Midas_Doofenshmirtzz', '2D3290809138D8B2C1122BB2563FE3CFDA6947DAD94BFDB3A67BAF36FA1307391DE8EE29FD69A71AE8041A9D042D20B7A7795FA2D8C09F850E842E9AB97CC9F5', '2022-10-04 04:26:51', '2022-10-11 17:24:12', NULL, '222.127.158.233', 0, 1, 22, 294, 1538.17, -1615.29, 14.567, 1536.47, -1613, 13.547, 335.296, 0, 0, 3032900, 1396437, 0, 4, 24, 72, 24, 5, 'Stewart', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 928273, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 3, 1668187678, 0, 0, 0, 0, 25, 0, 30, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, -1, 14, 0, -1, 0, 'Nobody', 0, 0, 0, 18, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, 290, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 86, 74, 79, 74, 21, 74, 0, 0, 0, 0, 'Server Booster', '65280', 1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 52, 'Stewart', '57', 1, 0),
(34, 'Luna_Jung', '79A795B5A52A84027A8A358B1A8F7EE66B0F991A98B8BA2BA2FDDD13678D3FD22FEAC6104F5B4661A183CFA2B4A5C1C6F0E3C6F2C5759119639E040498DF1BF0', '2022-10-04 04:28:07', '2022-10-04 04:28:07', NULL, '122.2.226.38', 0, 1, 20, 299, 1280.29, -1652.22, 15.583, 1282.68, -1650.47, 13.547, 282.999, 0, 0, 20500, 500, 0, 1, 0, 5, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 116, 98, 56, 2, 56, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 56, 'Mawsu.', '55', 1, 0),
(35, 'Hachi_Montefalco', '72B3B6DBFE9EBFB4F9E3A7B1D146B72206E7169B8ACB8C9C25F5FC260A2DEFAA8B0BD3322ECE6314AAD69D9E3A35998FB8CAE01139B8C901FD54A4880CE560B9', '2022-10-04 04:42:04', '2022-10-14 09:38:32', NULL, '120.29.68.4', 0, 1, 25, 310, 946.002, -1406.97, 19.008, 952.443, -1407, 13.273, 81.248, 0, 0, 2647500, 81215, 0, 2, 11, 4, 13, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 981408, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 25, 29, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, 12, 0, 3, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'No-one', 'None', 1, 124, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 135, 34, 15, 25, 95, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 2, 1, 1, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 50, 'itsmeDavee', '57', 1, 0),
(36, 'Dex_montana', '8F44F8D93D8BC8624ADFAE394C44B053023146E10500C8666A2F950286735AA1D7D1372D1EAAF40B55880824DD394E4112E93F505D1C07CDCE5548FBF34E343F', '2022-10-04 04:54:12', '2022-10-14 14:13:08', NULL, '175.176.61.74', 0, 1, 24, 303, 1540.41, -1672.96, 15.406, 1538.58, -1672.44, 13.547, 354.991, 0, 0, 887400, 3300894, 0, 4, 25, 33, 25, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'Ukrainian', 0, 945052, 8, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 10, 1, 0, 0, 10, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1667563034, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, 14, 0, 0, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 1, 1, 'xoxo', 'use proper rp next time', 1, 124, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 79, 38, 79, 16, 53, 0, 0, 0, 0, '0', '0', 1, 0, 0, 2, 2, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 52, 'Dex_grove', '49', 1, 0);
INSERT INTO `users` (`uid`, `username`, `password`, `regdate`, `lastlogin`, `login_date`, `ip`, `setup`, `gender`, `age`, `skin`, `camera_x`, `camera_y`, `camera_z`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `interior`, `world`, `cash`, `bank`, `paycheck`, `level`, `exp`, `minutes`, `hours`, `adminlevel`, `adminname`, `helperlevel`, `health`, `armor`, `upgradepoints`, `warnings`, `injured`, `hospital`, `spawnhealth`, `spawnarmor`, `jailtype`, `jailtime`, `newbiemuted`, `helpmuted`, `admuted`, `livemuted`, `globalmuted`, `reportmuted`, `reportwarns`, `fightstyle`, `locked`, `accent`, `cookies`, `phone`, `job`, `secondjob`, `crimes`, `arrested`, `wantedlevel`, `materials`, `pot`, `crack`, `meth`, `painkillers`, `seeds`, `ephedrine`, `muriaticacid`, `bakingsoda`, `cigars`, `walkietalkie`, `channel`, `rentinghouse`, `spraycans`, `boombox`, `mp3player`, `phonebook`, `fishingrod`, `fishingbait`, `fishweight`, `components`, `courierskill`, `fishingskill`, `guardskill`, `weaponskill`, `mechanicskill`, `lawyerskill`, `smugglerskill`, `toggletextdraws`, `toggleooc`, `togglephone`, `toggleadmin`, `togglehelper`, `togglenewbie`, `togglewt`, `toggleradio`, `togglevip`, `togglemusic`, `togglefaction`, `togglegang`, `togglenews`, `toggleglobal`, `togglecam`, `carlicense`, `pilotlicense`, `boatlicense`, `facemask`, `fmtime`, `vippackage`, `viptime`, `vipcooldown`, `weapon_0`, `weapon_1`, `weapon_2`, `weapon_3`, `weapon_4`, `weapon_5`, `weapon_6`, `weapon_7`, `weapon_8`, `weapon_9`, `weapon_10`, `weapon_11`, `weapon_12`, `ammo_0`, `ammo_1`, `ammo_2`, `ammo_3`, `ammo_4`, `ammo_5`, `ammo_6`, `ammo_7`, `ammo_8`, `ammo_9`, `ammo_10`, `ammo_11`, `ammo_12`, `faction`, `gang`, `factionrank`, `gangrank`, `division`, `contracted`, `contractby`, `bombs`, `completedhits`, `failedhits`, `reports`, `helprequests`, `speedometer`, `factionmod`, `gangmod`, `banappealer`, `potplanted`, `pottime`, `potgrams`, `pot_x`, `pot_y`, `pot_z`, `pot_a`, `inventoryupgrade`, `addictupgrade`, `traderupgrade`, `assetupgrade`, `laborupgrade`, `pistolammo`, `shotgunammo`, `smgammo`, `arammo`, `rifleammo`, `hpammo`, `poisonammo`, `fmjammo`, `ammotype`, `ammoweapon`, `dmwarnings`, `weaponrestricted`, `referral_uid`, `refercount`, `watch`, `gps`, `prisonedby`, `prisonreason`, `togglehud`, `clothes`, `showturfs`, `showlands`, `watchon`, `gpson`, `doublexp`, `couriercooldown`, `pizzacooldown`, `detectivecooldown`, `duty`, `bandana`, `detectiveskill`, `gascan`, `refunded`, `backpack`, `bpcash`, `bpmaterials`, `bppot`, `bpcrack`, `bpmeth`, `bppainkillers`, `bpweapon_0`, `bpweapon_1`, `bpweapon_2`, `bpweapon_3`, `bpweapon_4`, `bpweapon_5`, `bpweapon_6`, `bpweapon_7`, `bpweapon_8`, `bpweapon_9`, `bpweapon_10`, `bpweapon_11`, `bpweapon_12`, `bpweapon_13`, `bpweapon_14`, `bphpammo`, `bppoisonammo`, `bpfmjammo`, `formeradmin`, `deathcooldown`, `hunger`, `hungertimer`, `thirst`, `thirsttimer`, `covid`, `covidtimer`, `totalpatients`, `totalfires`, `rarecooldown`, `vipdlcooldown`, `customtitle`, `customcolor`, `mask`, `diamonds`, `ecoin`, `blindfold`, `rope`, `insurance`, `passport`, `passportname`, `passportlevel`, `passportskin`, `passportphone`, `marriedto`, `newbies`, `chatanim`, `Lottery`, `LotteryB`, `flashlight`, `candy`, `gunlicense`, `thiefskill`, `thiefcooldown`, `cocainecooldown`, `teacher`, `course`, `citizen`, `repairkit`, `firstaid`, `nationalid`, `dirtycash`, `comserv`, `groupleader`, `pgroup`, `task1`, `task2`, `task3`, `task4`, `task5`, `claimed1`, `claimed2`, `claimed3`, `claimed4`, `claimed5`, `loadexpire`, `loads`, `carrytrash`, `bindslot1`, `bindslot2`, `bindslot3`, `bindslot4`, `bindslot5`, `bindslot6`, `bindslot7`, `bindslot8`, `voicechat`, `discordtag`, `discordname`, `discordid`, `verified`, `code`) VALUES
(37, 'Kai_Itchi', '9760517EE259B5245763E957897F305A68112A72F628ABCFF46903CD348215C2A1760B0A9351318E6F960A83DF24DE9FB739DFCAFB0EA92BB0C500E619F13420', '2022-10-04 04:59:56', '2022-10-11 04:29:09', NULL, '130.105.180.45', 0, 1, 19, 294, 1555.76, -1675.88, 16.91, 1555.41, -1675.51, 16.195, 1, 0, 0, 2699972, 5650, 0, 2, 9, 1, 15, 2, 'Kai', 0, 97, 0, 0, 0, 1, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 995235, 4, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1665501265, 0, 0, 0, 24, 0, 29, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, 13, 0, -1, 0, 'Nobody', 0, 0, 0, 4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, 97, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 67, 17, 67, 33, 67, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 55, 'Carl Andrei', '57', 1, 0),
(38, 'Carlito_Valentino', 'CCE08BBA3F2E3C029CD257104B06D4B075772D5F514CF1B7789506F9A69D53C51464881D2C18445AB290553B302F67A24B1C69E3E737A46215DEAF43517E4960', '2022-10-04 05:43:29', '2022-10-09 02:02:32', NULL, '158.62.8.163', 0, 1, 22, 293, 1519.49, -1663.67, 16.119, 1522.23, -1664.56, 13.547, 261.765, 0, 0, 1643500, 504, 0, 1, 2, 36, 5, 0, 'None', 0, 100, 100, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 969003, 3, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1912, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1665543506, 0, 0, 0, 0, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 71, 23, 71, 27, 71, 0, 0, 0, 0, '0', '0', 1, 0, 0, 2, 2, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 1, 0, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 49, 'ã‚·ãƒ€Tooks.', '57', 1, 0),
(39, 'Boogey_Valentino', 'DA3AA951B0E15270E4EFC52C2D8F6D319018991E3ED87085F72F63E932AD565A598927FAAFBB14EF27C2A3C7EE93A7F553EFEBE8FA309AA315C75D6C331B9A8F', '2022-10-04 05:55:14', '2022-10-08 07:03:06', NULL, '158.62.8.163', 0, 1, 20, 293, 2761.43, -1981.36, 14.344, 2760.18, -1978.15, 13.553, 36.287, 0, 0, 1882800, 506, 0, 1, 2, 26, 6, 0, 'None', 0, 50, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 977595, -1, -1, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 10, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1665544761, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 105, 50, 105, 0, 105, 0, 0, 0, 0, '0', '0', 1, 0, 0, 2, 2, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 2, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 53, 'PippeN', '56', 1, 0),
(40, 'enock_cadiao', '0935C4A8CC605436B6B50AB65504158E9A83A5310EA7B200542F679EC5FD9DDA2FED1D09012BFFE0D1AF574934D57A4ABC3FB0C0AE85AFE37522032C328E51A6', '2022-10-04 06:09:35', '2022-10-05 17:00:21', NULL, '115.147.27.1', 0, 1, 14, 270, 1536.49, -1685.82, 14.542, 1537.59, -1683.4, 13.547, 335.512, 0, 0, -29500, 1903800, 0, 3, 1, 2, 1, 0, 'None', 0, 100, 100, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 82, 76, 73, 76, 27, 76, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 49, 'enock_cadiao', '49', 1, 0),
(41, 'Dex_Vagos', 'AB224CB099178DA8A095C9077D97CF5FF48D4DF688BEF9DCA2CBE5D9A2DFE7BFE4D74700CC1234266FCAEE686E54BA9131008A3A2E639064AF6056494F40454E', '2022-10-04 07:44:31', '2022-10-12 13:10:15', NULL, '112.210.229.202', 0, 1, 15, 180, 474.509, -21.294, 1004.88, 475.186, -17.656, 1003.7, 359.239, 17, 4000249, -31000, 500, 0, 1, 0, 47, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 943974, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 150, 31, 30, 19, 29, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 48, '[PD] Dex Montefalco', '55', 1, 0),
(42, 'Sensui_Ohm', '25775588A1DB2E4C36D09E9919D345FC25D9EDF3D3E0353BB62D0A674CD5549863DF34AD1D322816F10913433B773C02DBD1DF4DF80ECAD608797A587365C6B9', '2022-10-04 08:10:49', '2022-10-04 08:10:49', NULL, '112.202.212.16', 0, 1, 18, 292, 1121.88, -1401.13, 14.754, 1123, -1399.5, 13.408, 338.284, 0, 0, 20500, 500, 0, 1, 0, 18, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 912758, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95, 159, 92, 99, 8, 99, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 54, 'jhaym.', '49', 1, 0),
(43, 'Fyzhek_Trecos', 'D48F8615DDED60C19E4852F069ECA4DB1191659C4C5E3BF7CAC326DCC0B008C0262A4A220537D48DD9C44295274F8E7714CE2F6AE2A0E4A8B4716FA6AE1CF5C1', '2022-10-04 09:07:56', '2022-10-04 09:07:56', NULL, '143.44.128.12', 0, 1, 20, 299, 1581.28, -2234.17, 14.808, 1577.51, -2231.67, 14.337, 56.489, 0, 0, 500, 500, 0, 1, 0, 1, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 67, 100, 67, 0, 67, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(44, 'ace_ace', '2985D24283E70F48D5BA4D1BCD742D4DE7A1BD40E5802407B28B37CFBFEEE7493BCC55C02DC0ED42EFBA9A416B8D6BDA380592B6A3341D62156304E644F4FBA0', '2022-10-04 09:40:20', '2022-10-04 09:40:20', NULL, '112.200.8.247', 0, 1, 34, 299, 1642.69, -2244.66, 14.267, 1642.69, -2241.16, 13.494, 0, 0, 0, 500, 500, 0, 1, 0, 8, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 123, 96, 3, 4, 3, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(45, 'Pudong_Valentino', '569812E12A42F87642E939E47F71827DBD5E1DC0882F4E38E0E04E87AB2C6C60F08E808AEB3BBF1D2092ED2CDE7CBA3B660DB0E799E0144C46C802BCAF1FA73A', '2022-10-04 10:09:17', '2022-10-10 03:57:40', NULL, '49.144.16.73', 0, 1, 22, 293, 1155.34, -1403.77, 14.659, 1153.87, -1406.2, 13.497, 36.706, 0, 0, 1469514, 1884348, 0, 2, 6, 7, 6, 0, 'None', 0, 100, 100, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 972083, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 1, 1912, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1665544700, 0, 0, 0, 0, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93, 36, 90, 96, 10, 96, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 54, 'Denzel_Rich', '49', 1, 0),
(46, 'Pablo_Y._Cordova', 'AA0C39E923D2005B1643CD45D2AF533C9FE6671A8DBF50D364F383D11C2585F50C0808BA9558FCD2562E8B625B28BF67591C6669CA4582F810938ED90166B75E', '2022-10-04 10:43:07', '2022-10-04 13:25:43', NULL, '124.83.98.198', 0, 1, 22, 19, 1203.25, -1371.49, 14.327, 1198.14, -1369.95, 13.305, 45.826, 0, 0, 960000, 481, 0, 2, 2, 31, 2, 0, 'None', 0, 100, 50.34, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 966830, -1, -1, 0, 0, 0, 0, 24, 22, 17, 6, 0, 0, 0, 0, 20, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68, 13, 52, 13, 48, 13, 0, 0, 0, 0, '0', '0', 1, 0, 0, 1, 3, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 56, 'Pablo.', '57', 1, 0),
(47, 'Hector_Cordova', 'ADFB7BBA018D53F1BFA2A5D4E1195AD49B2902B45409A46223AD95A3C42CA115F4ED9D89054429E15B1F9A2F8E2EE4B9D54EFB583AEA14BC9D6D67881BF95121', '2022-10-04 10:50:45', '2022-10-04 13:23:57', NULL, '210.1.103.233', 0, 1, 40, 28, 1179.11, -1338.26, 16.539, 1177.58, -1338.95, 15.47, 133.905, 0, 0, 1500, 502, 0, 1, 2, 32, 2, 0, 'None', 0, 47.36, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 949164, -1, -1, 2, 0, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 20, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49, 24, 49, 84, 1, 84, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 2, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 54, 'Tyrick_', '56', 1, 0),
(48, 'Jack_Plays', 'B8A3A99B1B5DE857E69FF45E94DD1C502F7C3C4E7A90DFDBF52E560A5F59DE8BD0AD449D6FDDAF6C59BA0ED6B3DA91B22A0627DDB692D3B61558B24338B45323', '2022-10-04 11:07:28', '2022-10-04 11:14:21', NULL, '136.158.2.186', 0, 1, 18, 136, 1645.08, -2254.15, 14.968, 1640.13, -2255.93, 12.996, 358.984, 0, 0, 20500, 500, 0, 1, 0, 14, 0, 0, 'None', 0, 98.333, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 123, 93, 3, 7, 3, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 49, 'Nicolai', '57', 1, 0),
(49, 'Don_tagalog', 'C3D61C0510A10EB7CA94E7F61DAEB070E5DF9908A82F4F53E19D96BEC6CABE2821758C7833C54A2BED22333D8B35326B89B890EE6AA35DEA37CCB358E98B758F', '2022-10-04 11:08:43', '2022-10-04 14:12:17', NULL, '120.29.90.20', 0, 1, 18, 70, 1181.37, -1322.59, 15.627, 1176.18, -1323.63, 14.008, 49.451, 0, 0, 20500, 501, 0, 1, 1, 52, 1, 0, 'None', 0, 100, 93.4, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 25, 0, 0, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, -1, 14, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, 299, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 85, 63, 77, 22, 40, 16, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 49, 'Don_tagalog', '49', 1, 0),
(50, 'Chums_Cordova', '9FA16301FF8259D759F4F300F0A3F990041B9FF588EBAEA9494DE134708647222667F9EFBCC4A7590226A0E9D4AFCD82F2AFEEB2E30837D1297CA5F665020A8A', '2022-10-04 11:13:03', '2022-10-04 11:13:03', NULL, '111.125.121.188', 0, 1, 18, 271, 1121.66, -1410.58, 14.204, 1125.48, -1410.56, 13.445, 125.628, 0, 0, 18882, 500, 0, 1, 0, 21, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 937087, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93, 94, 89, 34, 11, 34, 0, 0, 0, 0, '0', '0', 1, 0, 0, 2, 2, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1665747167, 2, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 53, 'Walem...', '57', 1, 0),
(51, 'Fei_Cordova', '267862EA16A3FA1BF155E4B03F0D6BC6A8AB967B3F5C8203E0C32CF764E12F1DC0C24FF25CD9378F4BE19B427F2AFB15B629901F04FA4322CA2CA7D65EA4FC9B', '2022-10-04 11:20:34', '2022-10-04 11:20:34', NULL, '209.35.167.232', 0, 1, 20, 299, 1643.28, -2254.57, 14.837, 1641.12, -2256.52, 13.32, 132.208, 0, 0, 20500, 500, 0, 1, 0, 6, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 45, 97, 45, 3, 45, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 54, 'Fei.', '57', 1, 0),
(52, 'Juan_Pablo', '2F9959B230A44678DD2DC29F037BA1159F233AA9AB183CE3A0678EAAE002E5AA6F27F47144A1A4365116D3DB1B58EC47896623B92D85CB2F191705DAF11858B8', '2022-10-04 12:12:50', '2022-10-04 12:30:58', NULL, '111.125.107.125', 0, 1, 13, 294, 1182.82, -1333.21, 14.574, 1181.02, -1333.39, 13.585, 269.482, 0, 0, 800500, 500, 0, 1, 0, 33, 0, 0, 'None', 0, 85.15, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, 142, 84, 22, 16, 22, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 52, 'Princeeeeee', '57', 1, 0),
(53, 'Kira_Shingo', '3E0867FA36AFAE6A823CFDB312508792FA4CFB417DE24B39199D1F09C0281BA86A3681939CD3F556F0C3B8931C89699430BCCDAF5B750E8A11FB4CEABA77C7A9', '2022-10-04 12:57:39', '2022-10-04 13:01:35', NULL, '136.158.1.253', 0, 1, 17, 116, 1135.09, -1410.99, 15.151, 1130.41, -1409.65, 13.462, 27.001, 0, 0, 20500, 500, 0, 2, 0, 11, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 137, 95, 77, 5, 77, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 56, 'Kira_tahimik lng', '57', 1, 0),
(54, 'Miguel_Katapang', 'DD81D9C9932F8A50AD817DEC339D4AF6C5C2A9592A56CFE48253E1B1A5354B18527D95AA80FA58F8A095818813470B0681B67F2AD9712BEE58AC67E45F2B87E5', '2022-10-04 13:07:23', '2022-10-07 03:52:05', NULL, '112.211.137.19', 0, 1, 20, 71, 930.557, -1226.68, 19.547, 934.452, -1223.59, 16.905, 308.447, 0, 0, 20000, 501, 0, 1, 1, 9, 1, 0, 'None', 0, 100, 72.36, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 24, 25, 29, 31, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, 299, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91, 76, 86, 16, 14, 16, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 51, 'Miguel_katapang', '49', 1, 0),
(55, 'Kyle_Kyle', 'CCE08BBA3F2E3C029CD257104B06D4B075772D5F514CF1B7789506F9A69D53C51464881D2C18445AB290553B302F67A24B1C69E3E737A46215DEAF43517E4960', '2022-10-04 13:43:12', '2022-10-05 13:02:31', NULL, '122.2.75.123', 0, 1, 18, 71, 127.505, 1361.01, 11.551, 126.501, 1364.19, 10.586, 254.273, 0, 0, 20500, 500, 0, 2, 0, 40, 0, 0, 'None', 0, 95.05, 0, 0, 0, 0, 0, 50, 0, 2, 876, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Server', 'Logging to avoid arrest', 1, 299, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 87, 54, 81, 114, 19, 114, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 52, 'Luffy makapogi', '57', 1, 0),
(56, 'kai_dior', '26948290AAF9A3E733F76A5FCF1C31FB9039E8BC80704D0922BA7965827F10D3DB338596CE4168E79DB4D02A834129C9CDB2168C046111FA8F0AA47CC9453661', '2022-10-04 13:43:31', '2022-10-12 17:47:09', NULL, '175.176.26.10', 0, 1, 13, 240, 1309.5, -1368.56, 14.271, 1309.31, -1366.8, 13.559, 5.514, 0, 0, 5970, 17927, 0, 2, 3, 39, 3, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 998114, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80, 64, 70, 64, 30, 64, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'out my gun from my waistline aim on the head who person shot by stranger Safety [OFF] Anytimr to fire bullshits**', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 51, 'Ryo kuzara', '49', 1, 0),
(57, 'Jacob_salvador', '432521C9586F3D01920A2B2FBE950ABE31C59C0032DC6D3F6D0315EBDD4A71686DAAE7CDA7F7ACE980D977BDC854CD239A443E8B5745147FAE28C42E02F1F36B', '2022-10-04 13:55:19', '2022-10-04 13:55:19', NULL, '103.36.19.178', 0, 1, 17, 299, 1649.32, -2263.04, 14.864, 1695.86, -2248.39, 12.979, 21.434, 0, 0, 20500, 500, 0, 1, 0, 7, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 137, 96, 17, 4, 17, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 57, 'Kyle_Trick', '49', 1, 0),
(58, 'Cardo_Salvaje', '28AA783FC7DB950EE7860B66ACDC18BB29A4138AA87AA5FEEEFB2DF9040AEC5A4C0847276769C1BE86AA87780EF4B1EAF0B087E5A9E1684CBB57B00E35C8DFA4', '2022-10-04 14:05:02', '2022-10-04 14:40:02', NULL, '180.195.128.14', 0, 1, 22, 299, 1102.4, -1439.14, 16.944, 1104.98, -1438.46, 15.407, 300.517, 0, 0, 20500, 500, 0, 2, 0, 19, 0, 0, 'None', 0, 100, 100, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93, 12, 90, 72, 10, 72, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 52, 'shiwashiwa', '57', 1, 0),
(59, 'Lei_Young', '8517BA4DF0ABFCBD8509F62F0DC9C38DF58FE319EF33FE94864FFA83F32BA8A605A4FB1C1FCFA09B8B83F4CF59FE8AD3EDA810DBA75FD71A2D9CC647DFC6DCCD', '2022-10-04 16:30:58', '2022-10-05 16:40:00', NULL, '175.176.21.45', 0, 1, 25, 299, 1543.86, -1671.63, 15.416, 1545.72, -1672.9, 13.561, 340.125, 0, 0, -1000, 501, 0, 1, 1, 6, 1, 7, 'None', 0, 100, 98.68, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 33, 44, 33, 6, 33, 0, 0, 0, 0, 'Hacker ', '8073216', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(60, 'Fredo_Santana', '4CD6405E27170038751A1F3B0DA6A42F70AC686FCD761F1A1E81BA829D1E152A4B4032198CFED75059691FDD5CD63DC43A064E4A4835724D1C8C54A36F5414F1', '2022-10-04 18:33:19', '2022-10-04 18:33:19', NULL, '119.93.199.225', 0, 1, 21, 299, 1085.32, -1390.2, 14.597, 1090.19, -1389.58, 13.757, 277.243, 0, 0, 20500, 500, 0, 1, 0, 3, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 22, 99, 82, 1, 82, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(61, 'Devin_John', '90121AD8058BA4C11D7CBB69E410EB25604CBB4F2832F93A7122C143A227014A511A19C9203A9F74EC46FE76641451EE426E24916BDD312A9A6B93CC48C8D3B3', '2022-10-04 18:56:56', '2022-10-07 12:43:28', NULL, '180.190.42.191', 0, 1, 23, 2, 1772.19, -1940.1, 18.329, 1773.74, -1937.17, 16.605, 332.157, 0, 0, 891100, 2309209, 0, 3, 4, 8, 4, 0, 'None', 0, 100, 91.75, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 972658, 3, -1, 0, 0, 0, 0, 0, 11, 0, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Server', 'Failing to change their name', 1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 5, 0, 1, 30000, 0, 20, 20, 10, 5, 31, 27, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 82, 93, 73, 93, 27, 93, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 0, 2, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'grab his gun on his spine and flicks [on/off] and ready to shoot', 'None', 'None', 'None', 'aiming on his head any lase word stranger ?', 'None', 'None', 'None', NULL, 53, 'ãƒ„Dee', '49', 1, 0),
(62, 'chou_sy', 'E9A7A592F1FE559E9882270D7F86EDAAE9885D9D22932C6882E7C021E5091AE2BE409081D84BCF7FBB24F2D49F8D233EE9C0D9C19DD39685BFFFC6FFF60ADD0A', '2022-10-04 19:17:17', '2022-10-04 19:17:17', NULL, '49.149.108.105', 0, 1, 33, 299, 1642.92, -2248.82, 13.987, 1646.02, -2249.69, 13.328, 194.672, 0, 0, 500, 500, 0, 1, 0, 6, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 2, 97, 2, 3, 2, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(63, 'Pierre_Montefalco', '9A23E2DF6BDD5D533F79F39E603762E232A3DB5A9C132E72733002ADA95F653FE1C08A653205261CC9FA4CEBB0D6183284D54A939D0E9F90D1477AD0EC7D6497', '2022-10-05 01:43:13', '2022-10-05 01:43:13', NULL, '112.206.250.135', 0, 1, 25, 299, -2783.25, 1313.89, 3131.5, -2784.33, 1312.62, 3130.65, 139.45, 6, 0, -79500, 500, 0, 1, 0, 41, 0, 0, 'None', 0, 34.99, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 87, 142, 80, 82, 20, 82, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 48, 'PierrePogii', '56', 1, 0),
(64, 'Jeric_SHhhs', 'BBDEDA5D3DE2BB7924B8000142B4EAD8121FC83B104B6D60D38383C4E436081BD9FB169269B967ECEEF8D43949C554BA079A1C0532C8CF9A2F69EAAC9EBD5053', '2022-10-05 01:49:34', '2022-10-05 01:49:34', NULL, '209.35.172.222', 0, 1, 23, 299, 1365.27, -1280.79, 15.136, 1363.51, -1283.62, 13.547, 28.86, 0, 0, 500, 500, 0, 1, 0, 11, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 912201, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 152, 95, 92, 5, 92, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(65, 'Tetsuya_Sugo', '8EE46B1ACD2FCB3B17A7918695D7A31E6242B83EE86629F99C1430A946217ED32259C1FF132C5E6DD18982EC67AB103EE4D8BF33C0190FE1CB3FC6913A50D531', '2022-10-05 02:35:37', '2022-10-12 15:06:23', NULL, '136.158.60.52', 0, 1, 20, 287, 1150.7, -1392.05, 14.639, 1146.75, -1393.65, 13.581, 113.366, 0, 0, 752900, 504, 0, 1, 3, 37, 3, 2, 'Pogiko', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 984567, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, -1, 14, 0, -1, 0, 'Nobody', 0, 0, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, 111, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 79, 112, 68, 52, 32, 52, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 53, 'tetsuya_suga', '56', 1, 0),
(66, 'Sponge_bob', '2D16E4DEC2A8C05DEBC74C32A283F10A29EEDE53BCB496EB35C4FC1532AC1A24E3F6CE9650C5AD845B6EACEC83BA8D533CF1F013EAC6AE5A7241BB881F7A9922', '2022-10-05 02:50:38', '2022-10-05 02:50:38', NULL, '112.200.122.239', 0, 1, 20, 299, 1159.79, -1397.1, 16.225, 1151.84, -1398.43, 13.418, 0.363, 0, 0, 20500, 500, 0, 1, 0, 3, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 27, 99, 87, 1, 87, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(67, 'Butch_Ibarra', 'FF7CA7AED79A16E4F2990A03F74D890D31F4F41F86781C94E933153A5B2E41704E13B5124F0067939CA1CB9C5472A86F87B612DE444EA1ED7301754E5C1E8BCF', '2022-10-05 05:14:21', '2022-10-05 05:29:42', NULL, '112.210.46.59', 0, 1, 19, 99, 1133.58, -1386.61, 15.72, 1132.35, -1389.5, 13.741, 181.584, 0, 0, 19141, 500, 0, 1, 0, 25, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 908754, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 1, 0, 0, 10, 0, 1, 1, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 103, 88, 103, 12, 103, 0, 0, 0, 0, '0', '0', 1, 0, 0, 2, 2, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1665811967, 2, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 48, 'Ibarra.', '55', 1, 0),
(68, 'Sushi_Alvarez', 'C22B24E370634005946F46BF97E811E708CA1079BE1384FE1B099D7E4780089FD60C805FD11D90AB50D0FA7AD3F2B42618D86A21125A1EC1FE050AC723D54879', '2022-10-05 06:09:53', '2022-10-05 06:31:10', NULL, '49.150.8.233', 0, 1, 22, 3, 2456.36, -1936.97, 14.366, 2458.33, -1935.83, 13.308, 259.422, 0, 0, 17500, 500, 0, 1, 0, 21, 0, 0, 'None', 0, 95.05, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94, 176, 90, 56, 10, 56, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 55, 'Sushi Alvarez', '56', 1, 0),
(69, 'Busha_Madrazo', '3DCF3995BF38D72B375F6B890171CA083C434AF6C243C95CE11BD272D4767884F3AF21CADDA08FE9C9E99D8573B7B66F5647481C4B8C7FA0240584252A4A0EC0', '2022-10-05 06:43:39', '2022-10-05 10:50:50', NULL, '110.54.230.61', 0, 1, 99, 113, 1239.49, -1654.15, 13.39, 1242.82, -1654.35, 12.654, 267.93, 0, 0, 19500, 500, 0, 1, 0, 22, 2, 0, 'None', 0, 100, 100, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1665565966, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93, 51, 90, 111, 10, 111, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 55, 'Pablo_Kalbo', '57', 1, 0),
(70, 'Busha_P_Hakim', '3DCF3995BF38D72B375F6B890171CA083C434AF6C243C95CE11BD272D4767884F3AF21CADDA08FE9C9E99D8573B7B66F5647481C4B8C7FA0240584252A4A0EC0', '2022-10-05 07:43:15', '2022-10-05 07:43:15', NULL, '138.199.46.134', 0, 1, 99, 299, 204.386, -169.086, 1001.22, 204.386, -168.459, 1000.52, 0, 14, 3000002, 20500, 500, 0, 1, 0, 3, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 141, 99, 21, 1, 21, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(71, 'Justine_Madrazo', '14EA74FBE7334AE6F0D8BEEEA80264A9DFB6EC54BEB3D5949B6B29B4C5DD4BD4E751E19EAB8E8006CF1D206C45CB3870AEA6EDCCFC82567AB77A77AB510E7ED9', '2022-10-05 09:02:47', '2022-10-05 09:02:47', NULL, '136.158.126.15', 0, 1, 20, 299, 1653.96, -2259.18, 15.246, 1650.51, -2262.31, 13.498, 91.996, 0, 0, 20500, 500, 0, 1, 0, 5, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 145, 98, 85, 2, 85, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 49, 'Its Mee', '49', 1, 0),
(72, 'Marcos_Tonkin', '4E23EE95073B978A6403B2E0ED4EF308CDA1B6EA6FC2CD47F7F064775B2B03FA2594BAC38C8CE564B174E43C7D5C75B3506F7A4C0940277AC1376F9F7CF193CF', '2022-10-05 09:45:14', '2022-10-07 14:31:23', NULL, '112.200.44.15', 0, 1, 17, 287, 1144.68, -1389.42, 16.184, 1145.38, -1384.21, 13.808, 333.149, 0, 0, 120500, 500, 0, 2, 0, 109, 0, 0, 'None', 1, 100, 67.08, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 24, 0, 29, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, -1, 12, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, 299, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 111, 44, 51, 50, 771, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 50, 'Marcos_Tonkin', '49', 1, 0);
INSERT INTO `users` (`uid`, `username`, `password`, `regdate`, `lastlogin`, `login_date`, `ip`, `setup`, `gender`, `age`, `skin`, `camera_x`, `camera_y`, `camera_z`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `interior`, `world`, `cash`, `bank`, `paycheck`, `level`, `exp`, `minutes`, `hours`, `adminlevel`, `adminname`, `helperlevel`, `health`, `armor`, `upgradepoints`, `warnings`, `injured`, `hospital`, `spawnhealth`, `spawnarmor`, `jailtype`, `jailtime`, `newbiemuted`, `helpmuted`, `admuted`, `livemuted`, `globalmuted`, `reportmuted`, `reportwarns`, `fightstyle`, `locked`, `accent`, `cookies`, `phone`, `job`, `secondjob`, `crimes`, `arrested`, `wantedlevel`, `materials`, `pot`, `crack`, `meth`, `painkillers`, `seeds`, `ephedrine`, `muriaticacid`, `bakingsoda`, `cigars`, `walkietalkie`, `channel`, `rentinghouse`, `spraycans`, `boombox`, `mp3player`, `phonebook`, `fishingrod`, `fishingbait`, `fishweight`, `components`, `courierskill`, `fishingskill`, `guardskill`, `weaponskill`, `mechanicskill`, `lawyerskill`, `smugglerskill`, `toggletextdraws`, `toggleooc`, `togglephone`, `toggleadmin`, `togglehelper`, `togglenewbie`, `togglewt`, `toggleradio`, `togglevip`, `togglemusic`, `togglefaction`, `togglegang`, `togglenews`, `toggleglobal`, `togglecam`, `carlicense`, `pilotlicense`, `boatlicense`, `facemask`, `fmtime`, `vippackage`, `viptime`, `vipcooldown`, `weapon_0`, `weapon_1`, `weapon_2`, `weapon_3`, `weapon_4`, `weapon_5`, `weapon_6`, `weapon_7`, `weapon_8`, `weapon_9`, `weapon_10`, `weapon_11`, `weapon_12`, `ammo_0`, `ammo_1`, `ammo_2`, `ammo_3`, `ammo_4`, `ammo_5`, `ammo_6`, `ammo_7`, `ammo_8`, `ammo_9`, `ammo_10`, `ammo_11`, `ammo_12`, `faction`, `gang`, `factionrank`, `gangrank`, `division`, `contracted`, `contractby`, `bombs`, `completedhits`, `failedhits`, `reports`, `helprequests`, `speedometer`, `factionmod`, `gangmod`, `banappealer`, `potplanted`, `pottime`, `potgrams`, `pot_x`, `pot_y`, `pot_z`, `pot_a`, `inventoryupgrade`, `addictupgrade`, `traderupgrade`, `assetupgrade`, `laborupgrade`, `pistolammo`, `shotgunammo`, `smgammo`, `arammo`, `rifleammo`, `hpammo`, `poisonammo`, `fmjammo`, `ammotype`, `ammoweapon`, `dmwarnings`, `weaponrestricted`, `referral_uid`, `refercount`, `watch`, `gps`, `prisonedby`, `prisonreason`, `togglehud`, `clothes`, `showturfs`, `showlands`, `watchon`, `gpson`, `doublexp`, `couriercooldown`, `pizzacooldown`, `detectivecooldown`, `duty`, `bandana`, `detectiveskill`, `gascan`, `refunded`, `backpack`, `bpcash`, `bpmaterials`, `bppot`, `bpcrack`, `bpmeth`, `bppainkillers`, `bpweapon_0`, `bpweapon_1`, `bpweapon_2`, `bpweapon_3`, `bpweapon_4`, `bpweapon_5`, `bpweapon_6`, `bpweapon_7`, `bpweapon_8`, `bpweapon_9`, `bpweapon_10`, `bpweapon_11`, `bpweapon_12`, `bpweapon_13`, `bpweapon_14`, `bphpammo`, `bppoisonammo`, `bpfmjammo`, `formeradmin`, `deathcooldown`, `hunger`, `hungertimer`, `thirst`, `thirsttimer`, `covid`, `covidtimer`, `totalpatients`, `totalfires`, `rarecooldown`, `vipdlcooldown`, `customtitle`, `customcolor`, `mask`, `diamonds`, `ecoin`, `blindfold`, `rope`, `insurance`, `passport`, `passportname`, `passportlevel`, `passportskin`, `passportphone`, `marriedto`, `newbies`, `chatanim`, `Lottery`, `LotteryB`, `flashlight`, `candy`, `gunlicense`, `thiefskill`, `thiefcooldown`, `cocainecooldown`, `teacher`, `course`, `citizen`, `repairkit`, `firstaid`, `nationalid`, `dirtycash`, `comserv`, `groupleader`, `pgroup`, `task1`, `task2`, `task3`, `task4`, `task5`, `claimed1`, `claimed2`, `claimed3`, `claimed4`, `claimed5`, `loadexpire`, `loads`, `carrytrash`, `bindslot1`, `bindslot2`, `bindslot3`, `bindslot4`, `bindslot5`, `bindslot6`, `bindslot7`, `bindslot8`, `voicechat`, `discordtag`, `discordname`, `discordid`, `verified`, `code`) VALUES
(73, 'Yukki_Ballaz', '51AEE86F710A539A5E775A919F26748559C1D8F11FC983D27133065F596733C4E0A325B4CB1CA7DB325E0005D5498C0E514D93059741DF09C7F3E269F2E2CEA7', '2022-10-05 09:48:21', '2022-10-05 09:48:21', NULL, '112.211.137.128', 0, 1, 16, 299, 1642.91, -2270.17, 19.096, 1642.28, -2265.31, 15.883, 23.585, 0, 0, 500, 500, 0, 1, 0, 3, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 177, 99, 57, 1, 57, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(74, 'Busha_Hakim', '3DCF3995BF38D72B375F6B890171CA083C434AF6C243C95CE11BD272D4767884F3AF21CADDA08FE9C9E99D8573B7B66F5647481C4B8C7FA0240584252A4A0EC0', '2022-10-05 10:02:45', '2022-10-05 10:02:45', NULL, '112.198.86.170', 1, 1, 18, 299, 2208.67, -1733.71, 27.48, 2223.87, -1724.02, 13.563, 1, 0, 0, 500, 500, 0, 1, 0, 0, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 20, 100, 20, 0, 20, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(75, 'Chapo_Tailor', '06E0E22FEA9FF33DEAFD444A1ECB9AC29525FD50B16CFCCF548CCE6AE2DD7CE0F367DA623593DA3D0598C4CD03B61646DA9C84FC2D9B4FE2A87C052CBFDA1965', '2022-10-05 13:53:58', '2022-10-05 13:53:58', NULL, '175.176.91.170', 0, 1, 21, 299, 1324.51, -1510.94, 14.536, 1324.96, -1504.58, 13.547, 355.975, 0, 0, 500, 500, 0, 1, 0, 5, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 93, 98, 33, 2, 33, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(76, 'John_Escobar', '4E0658D00F47D86D19A0E792E4BB94B16DB2E902D307DA5637F57CF60E7A174CB4BB6D7095621745B2065DF0C87B77AF69F5D0FBD63359AD3CC6B72F076C3E1E', '2022-10-05 15:35:37', '2022-10-05 15:35:37', NULL, '175.176.49.213', 0, 1, 15, 299, 1200.74, -1496.36, 61.904, 1200.34, -1495.31, 59.455, 0, 0, 0, 500, 500, 0, 1, 0, 1, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 62, 100, 62, 0, 62, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(77, 'Mhick_Smith', '4925DA7DA7A56260BAF1C37925A8FA24E46AD8B107DCD21F44E39E4751BAE1304FC70DE7ACB847FFA96126BB372DE005F5320F1EDE6F9DF07C7D53F9C160F022', '2022-10-06 03:47:51', '2022-10-12 11:10:00', NULL, '120.29.111.165', 0, 2, 20, 216, 918.403, -1211.75, 17.794, 919.508, -1215.02, 16.977, 189.243, 0, 0, 420470, 514, 0, 2, 7, 10, 7, 2, 'SUPLADA', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 931328, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1667736839, 1, 1665719774, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, -1, 14, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 121, 87, 1, 13, 1, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 2, 0, 0, 1163, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 54, 'Mhick_Smith', '56', 1, 0),
(78, 'Katsu_Mi', '0B5E40F2B3E05D562EB2A99EE0FF964824328DEF8A348383B7787EEF6EF48C9C666F918305C9C9F18DB327885EA007D6431B66B82D323DF3F51881F1F20A6277', '2022-10-06 04:45:58', '2022-10-13 08:53:28', NULL, '130.105.229.169', 0, 1, 15, 299, 2309.15, -1575.91, 18.697, 2310.04, -1576.76, 17.496, 133.717, 0, 0, 500, 501, 0, 1, 1, 6, 1, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 47, 82, 47, 18, 47, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 57, 'ImCAtCantMeow', '49', 1, 0),
(79, 'Matthew_Kurt', 'CCE08BBA3F2E3C029CD257104B06D4B075772D5F514CF1B7789506F9A69D53C51464881D2C18445AB290553B302F67A24B1C69E3E737A46215DEAF43517E4960', '2022-10-06 08:00:39', '2022-10-06 23:01:11', NULL, '222.127.158.233', 0, 1, 16, 299, 1157.77, -1506.98, 16.412, 1157.48, -1506.89, 15.797, 71.897, 0, 0, 500, 500, 0, 1, 0, 15, 0, 0, 'None', 1, 100, 100, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95, 23, 93, 83, 7, 83, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 49, 'speed', '57', 1, 0),
(80, 'Yollo_Ballaz', 'EAA18FA9CAA3AED6BD5784C8BF8F052035E0883BBDB3F0ACE470920D543AEDB61A016E1422D39D20584AEBDAD97C163756D1871A2CC715410B23F89C01C14ED9', '2022-10-06 09:19:02', '2022-10-06 09:19:02', NULL, '112.211.137.128', 0, 1, 18, 2, 2763.16, 436.107, 16.667, 2761.07, 441.043, 14.839, 94.372, 0, 0, 20500, 500, 0, 1, 0, 9, 0, 0, 'None', 0, 90.1, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 161, 96, 41, 4, 41, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(81, 'jepoy_jepoy', 'C54DF63C56D868D3E56CBCB02CDEA10DFC96659128271AE4FE1C90EDEED575C8D8109568578C87EEBF43609854ADE6A47C99B0784844D20FFB69AB0644A87E0C', '2022-10-06 11:06:00', '2022-10-08 09:41:09', NULL, '49.147.106.20', 0, 1, 15, 299, 1548.71, -2199.18, 17.752, 1552.69, -2208.1, 13.43, 2.875, 0, 0, 500, 500, 0, 1, 0, 6, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 178, 98, 118, 2, 118, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(82, 'Alco_Holic', '41D1570BA0913667D752634CAE4641371D0345860E6C3D6D1AA3A262C29CB96AFFD4406EDB7CDE973A24D2862575AEFDDFB1ED2967C240E9C11938FC4C21EFCA', '2022-10-06 15:10:58', '2022-10-06 15:10:58', NULL, '49.149.108.105', 0, 1, 99, 299, 1639.8, -2239.61, 14.946, 1641.4, -2241.85, 13.495, 173.236, 0, 0, 500, 500, 0, 1, 0, 2, 0, 0, 'None', 0, 98.68, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 156, 99, 36, 1, 36, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(83, 'Ogbaboy_El_Groove', '746CA0EB7CA8F4C249BCE17A59E6A3C901E9C26D62E81E062C8897E7800C620045F254338ECDE34299C116DAF16DF5EAA0324411E63DBE5CFFC607C273B81249', '2022-10-06 18:47:14', '2022-10-06 18:51:14', NULL, '180.190.125.94', 0, 2, 13, 12, 1145.07, -1392.08, 14.866, 1150.73, -1394.81, 13.546, 101.053, 0, 0, 500, 500, 0, 1, 0, 5, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 80, 98, 20, 2, 20, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(84, 'Jeffrey_Dahmer', 'B1370529EB89E6D8AF3C6C4867DC56107CEADC1A995E586E1557FC788AC3B2735D037769EB47AACB3DC2ED51BFED47482695AD32B1F22E9F8DD61ED83F5BBFB7', '2022-10-06 23:17:10', '2022-10-07 13:39:07', NULL, '222.127.158.233', 0, 1, 17, 290, 364.425, -2031.35, 9.726, 359.824, -2032.94, 7.836, 81.371, 0, 0, 116503, 503, 0, 1, 3, 16, 3, 0, 'None', 1, 41.75, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 998764, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, 299, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 2, 46, 62, 4, 62, 1, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 51, 'cheater', '57', 1, 0),
(85, 'Natsu_Dragnile', '3FC16D88AA88C8E2648C4C8754851C59D5E512D46AC65AA7F1BE2380D444F5D9F1B4EE10625A4595DB951FEADE1038639E320CE36CD9DADCC1D30FF86EBCAA58', '2022-10-07 01:59:03', '2022-10-07 01:59:03', NULL, '175.176.41.196', 0, 1, 20, 299, 1657.04, -2254.9, 14.272, 1654.72, -2257.44, 13.342, 118.117, 0, 0, 500, 500, 0, 1, 0, 1, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 44, 100, 44, 0, 44, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(86, 'Killua_Zoldyck', '04CF1931E93A23F52781324153AEDB9C324476660A79D88F7AC4C41E38369ED00EC791FD395D64F9C040E531E6BE5D91D5258DDA8FE798121DCE99BC33051581', '2022-10-07 03:44:41', '2022-10-07 03:44:41', NULL, '136.158.60.167', 0, 1, 23, 299, 1129.89, -1391.05, 16.025, 1132.07, -1388.89, 13.75, 312.548, 0, 0, 500, 500, 0, 1, 0, 2, 0, 0, 'None', 0, 98.68, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 109, 100, 109, 0, 109, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(87, 'Diyun_taniman', '1C9051A2EAD7BCC30C9666066C4AF4390E41CF9D2A9CB03CC476B40E21E0100579B95CA70EB5976CA0FB425256D04C931C34617525A65AAC58EA821D49023BA1', '2022-10-07 08:57:13', '2022-10-14 14:59:09', NULL, '158.62.67.105', 0, 1, 15, 175, 198.95, -160.336, 1002.15, 199.928, -160.031, 1000.52, 297.623, 14, 3000002, 283100, 519, 0, 2, 6, 12, 18, 0, 'None', 0, 98.68, 0, 0, 1, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 967017, -1, -1, 1, 1, 0, 0, 9, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1665300434, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kaizen_Fang', 'killing greenzone', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 134, 43, 14, 0, 52, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 51, 'jimrexjaen', '49', 1, 0),
(88, 'Kaizer_Vagos', '51AEE86F710A539A5E775A919F26748559C1D8F11FC983D27133065F596733C4E0A325B4CB1CA7DB325E0005D5498C0E514D93059741DF09C7F3E269F2E2CEA7', '2022-10-07 09:24:49', '2022-10-07 23:52:07', NULL, '175.176.52.73', 0, 1, 22, 287, 1020.37, -379.454, 76.006, 1015.86, -393.619, 70.267, 177.873, 0, 0, 1900, 504, 0, 2, 4, 3, 4, 0, 'None', 0, 100, 75, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 976749, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, -1, 1, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, 294, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 124, 46, 4, 4, 4, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, '/Me Grab his weapon from his back spine as he flick the safety trigger [OFF] ready to shoot anytime.', '/Do finish bebeboi', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 54, 'Justine', '49', 1, 0),
(89, 'cash_man', '5F23D304DD520ACF84B31D405E5FD681978ADAC03C1A21D9A31F8BD06C4A418A4B5114A06E8973AD51EB5C83403D43BFF152C07F4DFE22196C73157B13BF3E9F', '2022-10-07 11:25:25', '2022-10-07 11:25:25', NULL, '122.52.68.211', 0, 1, 19, 299, 161.929, 1363.91, 16.136, 163.898, 1364.39, 15.033, 174.508, 0, 0, 20500, 500, 0, 1, 0, 6, 0, 0, 'None', 0, 64.03, 0, 0, 0, 0, 0, 50, 0, 2, 373, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Server', 'Failing to change their name', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 178, 98, 118, 2, 118, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(90, 'gee_Osidemafia', '5F23D304DD520ACF84B31D405E5FD681978ADAC03C1A21D9A31F8BD06C4A418A4B5114A06E8973AD51EB5C83403D43BFF152C07F4DFE22196C73157B13BF3E9F', '2022-10-07 11:33:25', '2022-10-07 11:36:03', NULL, '122.52.68.211', 0, 1, 17, 299, -2162.33, -1586.97, 295.758, -2161.56, -1583.5, 290.827, 240.312, 0, 0, 20500, 500, 0, 1, 0, 17, 0, 0, 'None', 0, 97, 0, 0, 0, 1, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 22, 99, 82, 1, 82, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(91, 'Sylvester_Stallon', 'DC64FE3A71A7F78F6EC5EB4D141A12CDC0B9C076C1B7CE1217AF6B7605673BC11384D1A6DB78D997B3BB473C70A7D2B053492E910A4BC128D00580A916B78693', '2022-10-07 12:07:44', '2022-10-08 04:08:55', NULL, '122.52.176.244', 0, 1, 24, 310, -1948.59, -841.189, 4440.88, -1947.42, -844.445, 4439.8, 175.018, 1, 1, 15900, 504, 0, 1, 2, 35, 2, 0, 'None', 0, 100, 96.04, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 929654, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1665797759, 0, 0, 0, 24, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, 5, 0, 0, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 84, 136, 75, 16, 25, 16, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 52, 'Sylvester_Stallon', '57', 1, 0),
(92, 'Kaizer_Parker', '42AAF650A20C4A35F79C1BFAB654AFF3CABD56A396D8925F9EF372083A569C60770A6147A28EDE1E83DF132CE98A0092EC5FFA97AB2EDB44FA6270D4407AE528', '2022-10-07 18:42:41', '2022-10-07 18:42:41', NULL, '49.144.138.6', 0, 1, 23, 299, 1157.79, -1506.91, 16.486, 1156.16, -1507.18, 15.797, 118.759, 0, 0, 20500, 500, 0, 1, 0, 8, 0, 0, 'None', 0, 71.173, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 137, 96, 17, 4, 17, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(93, 'Fyzhek_William', '0E3E6E1AE4FAC6A8A26EB62FC17B5AFDACFD95243DEB5D77653F2BD887B41256945040DDC6ADE34CFEAB9A16AC67045378ECD355E04F04B0AA569C9DD5B2958A', '2022-10-08 02:50:36', '2022-10-08 02:50:36', NULL, '143.44.128.12', 0, 1, 20, 299, 1627.87, -2246.26, 15.348, 1624.99, -2246.41, 13.511, 92.998, 0, 0, 500, 500, 0, 1, 0, 1, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 80, 100, 80, 0, 80, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(94, 'Chino_Swoer', 'FA8DD49E0DF5602F744846BEE199B8D9DE31DA45B43DE99164064AF8D1673291FDF65C67D8479F980E9F367AA44B11B866B8A5CEF4C5DAE347ED8819E0C039C4', '2022-10-08 04:24:11', '2022-10-11 00:56:10', NULL, '122.52.176.244', 0, 1, 24, 3, 2161.68, -1151.36, 25.657, 2158.68, -1152.74, 23.921, 98.286, 0, 0, 20500, 502, 0, 1, 1, 34, 1, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 1, 96, 61, 4, 61, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 49, 'Cesileo_Sazumen', '49', 1, 0),
(95, 'kai_kai', 'C54DF63C56D868D3E56CBCB02CDEA10DFC96659128271AE4FE1C90EDEED575C8D8109568578C87EEBF43609854ADE6A47C99B0784844D20FFB69AB0644A87E0C', '2022-10-08 09:42:58', '2022-10-08 09:42:58', NULL, '49.147.106.20', 0, 1, 15, 299, 1625.29, -2258.08, 14.538, 1620.69, -2256.74, 12.838, 103.893, 0, 0, 500, 500, 0, 1, 0, 2, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 105, 100, 105, 0, 105, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(96, 'Joselito_Valentino', '8EF576F971B217435FB80F8DB7B8E66F74E4DFC288DC6981A5A99711F2F335F0AED91CBE28F30DFCC67F88277DB7EEBC2B6E877C07632D5D6BBD71E309C9F79A', '2022-10-08 12:45:19', '2022-10-09 01:54:17', NULL, '49.144.0.94', 0, 1, 21, 299, 1548.57, -2272.96, 15.679, 1557.47, -2269.8, 14.327, 287.346, 0, 0, 20500, 500, 0, 1, 0, 3, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 56, 99, 116, 1, 116, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(97, 'Laurence_Drexel', 'B4768700B74468171EBD6144FE504B97D63082C9B3FFCE6D7B0F0018B8434216A790619E06C93992D3698D8E4B689653CCEE810926EAE7E9427A778C22ECED8A', '2022-10-08 14:39:28', '2022-10-08 16:25:56', NULL, '110.235.178.143', 0, 1, 24, 103, 2133.57, -1118.33, 40.931, -1099.24, 1963.41, -56.666, 1, 0, 1, 1017500, 500, 0, 1, 0, 64, 0, 0, 'None', 0, 50, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 945355, -1, -1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 5, 5, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1665847494, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 56, 50, 56, 0, 56, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 55, 'Laurence El Drexel', '49', 1, 0),
(98, 'Roberto_S._Suarez', '9A0108ACB2C07E3C3AD39E08D04EBCDD12A4C0EDB0CCD5BBCF92438A3EB190F19DA133238A3678F28C7C2299DC52DC707BA223663BE9DF905F0BFC87B6662216', '2022-10-08 14:55:19', '2022-10-12 14:02:57', NULL, '49.144.1.73', 0, 1, 99, 115, 1345.13, -1064.54, 28.377, 1345.9, -1060.85, 26.552, 252.158, 0, 0, 1400000, 501, 0, 2, 1, 58, 1, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 25, 0, 31, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 5, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 3, 40, 3, 50, 1203, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 48, 'Hell-Hiro', '55', 1, 0),
(99, 'Laurence_El_Drexel', 'B4768700B74468171EBD6144FE504B97D63082C9B3FFCE6D7B0F0018B8434216A790619E06C93992D3698D8E4B689653CCEE810926EAE7E9427A778C22ECED8A', '2022-10-08 16:36:23', '2022-10-14 13:06:11', NULL, '155.137.109.128', 0, 1, 24, 103, 1343.34, -1122.43, 24.826, 1347.64, -1113.44, 23.32, 284.827, 0, 0, 717500, 402105, 0, 1, 3, 38, 3, 0, 'None', 0, 50, 0, 0, 1, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 924271, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1665907997, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 112, 47, 112, 50, 2316, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 2, 0, 1, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 51, 'Laurence_Bagay', '49', 1, 0),
(100, 'Jim_Shuty', 'E0122B3890AFD1890622BB523F889C6676147EAA63178BAC02D1CDDA6D0437D802A69A3089A02DD74BCDEEA58511C7C43C97FF1C3E3EEF38C579A64457AC7CE5', '2022-10-09 03:14:08', '2022-10-09 04:02:53', NULL, '49.145.174.76', 0, 2, 16, 12, 1635.4, -2242.9, 14.81, 1637.94, -2245.18, 13.495, 123.395, 0, 0, 500, 500, 0, 1, 0, 1, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 85, 100, 85, 0, 85, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(101, 'Jp_Antonio', '1770BF10CD7FB3E65E30CE912FDB444F4B3C74B970D69D4E697770806E75EA074FFA1E8C336E3FBE608F603B9E4E9328AFEDCB20BD56FF40FF5DB0874CB6AAEA', '2022-10-09 03:37:43', '2022-10-10 06:10:46', NULL, '120.29.110.121', 0, 1, 19, 124, 2389.66, 98.494, 27.284, 2394.97, 99.28, 26.48, 277.442, 0, 4000232, 115500, 524, 0, 1, 6, 57, 6, 0, 'Chaknu', 0, 16.51, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 3, 1665891848, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, -1, 14, 0, -1, 0, 'Nobody', 0, 0, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 151, 81, 31, 19, 31, 0, 0, 0, 0, 'Loyal', '65280', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 52, 'DON_JP', '56', 1, 0),
(102, 'James_Airon', '457D2BD2E42E6248CDBAC6DF3FAD468280A134F0B430A0900614D58B665847F736CCB37E8197377D3E9FA5308CEE023BC3ED6FA796867FF5E27E18D2EB28B006', '2022-10-09 07:20:47', '2022-10-09 07:20:47', NULL, '61.9.108.119', 0, 1, 14, 299, 1183.21, -1328.29, 14.635, 1179.89, -1327.31, 13.99, 88.272, 0, 0, 20500, 500, 0, 1, 0, 11, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 141, 95, 81, 5, 81, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 57, 'James_Airon', '56', 1, 0),
(103, 'JOHNNY_WALKER', '01666D7562654F5D4C3083F5842FF49453A0B58C2352EB0BA86FF734404BF2ACC4AD7E65DA732175029E00B6DACB6B27ECE958E3A3439D3FCAF4500CAE687B23', '2022-10-09 07:20:56', '2022-10-09 07:23:57', NULL, '111.235.93.246', 0, 1, 22, 299, 1598.23, -2247.18, 14.5, 1601.45, -2246.3, 13.535, 285.338, 0, 0, 20500, 500, 0, 1, 0, 7, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 88, 97, 88, 3, 88, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(104, 'Kirov_Nevermore', '092BC5517F41B4F382706D6130EB66ABE52ABE08E84BA288548342409C91A05A9ED919A9CEC2FD058139353BF344F9F91A62FF7F3F7C25FEA979C96D2FB83AD0', '2022-10-09 08:43:10', '2022-10-09 08:43:10', NULL, '38.10.90.242', 0, 1, 78, 299, 1642.01, -2238.23, 14.364, 1641.08, -2241.57, 13.495, 164.478, 0, 0, 500, 500, 0, 1, 0, 0, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 27, 100, 27, 0, 27, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(105, 'Kevin_Morel', '4F551BD4F19A38FB13FCE4A65CB27EE03C8AFDADB42A9D70BA66A7E6E049B6F2D969A756CB97019E92CE191903A1D51E005A3E1D27B531A29CCB36519939CE53', '2022-10-09 08:46:53', '2022-10-10 10:21:40', NULL, '223.25.24.57', 0, 1, 19, 240, 1122.44, -1388.17, 15.307, 1124.6, -1389.88, 13.674, 177.538, 0, 0, 20500, 500, 0, 1, 0, 54, 0, 0, 'None', 0, 52.48, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, -1, 13, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 82, 92, 73, 92, 27, 92, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 53, 'Carl_10', '49', 1, 0),
(106, 'Shyne_Deleon', '0DD170AFBD8EBBF2CDF4BF7E7C46C3D4C6BDFB0781D4D61A9DF1194F0D2C105D176B6846E97A22CFC9FFE7A23DB1A076DDC7BAB7A166DE56036658DC11BC2587', '2022-10-09 15:30:08', '2022-10-10 10:17:09', NULL, '136.158.56.154', 0, 2, 18, 91, 2400.96, 106.696, 28.813, 2399.28, 103.955, 26.893, 123.574, 0, 4000232, 500, 502, 0, 1, 2, 72, 2, 0, 'None', 0, 51.49, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 91, 22, 91, 50, 3451, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 50, 'Chelle', '49', 1, 0),
(107, 'Reycee_Carl', 'D68D3E2DEFD34EA13A5FB6B3447E322DE62F6F6B503C405FF92408CDCE581726C8A08150E8164AE3913421E48A83A672735322CFF37119FD4F3C6DBB7828F093', '2022-10-09 15:40:38', '2022-10-09 15:40:38', NULL, '49.149.108.105', 0, 1, 38, 299, 1475.71, -1716.91, 15.219, 1476.96, -1718.37, 14.047, 40.501, 0, 0, 20500, 500, 0, 1, 0, 20, 0, 0, 'None', 0, 100, 100, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94, 163, 90, 43, 10, 43, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(108, 'Christian_Kho', 'D68D3E2DEFD34EA13A5FB6B3447E322DE62F6F6B503C405FF92408CDCE581726C8A08150E8164AE3913421E48A83A672735322CFF37119FD4F3C6DBB7828F093', '2022-10-09 16:37:52', '2022-10-09 17:54:49', NULL, '49.149.108.105', 0, 1, 18, 299, 1119.89, -1495.47, 23.658, 1119.93, -1492.24, 22.769, 351.127, 0, 0, 20500, 501, 0, 1, 1, 41, 1, 0, 'None', 0, 98, 0, 0, 0, 1, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 28, 124, 0, 1084, 50, 7084, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0);
INSERT INTO `users` (`uid`, `username`, `password`, `regdate`, `lastlogin`, `login_date`, `ip`, `setup`, `gender`, `age`, `skin`, `camera_x`, `camera_y`, `camera_z`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `interior`, `world`, `cash`, `bank`, `paycheck`, `level`, `exp`, `minutes`, `hours`, `adminlevel`, `adminname`, `helperlevel`, `health`, `armor`, `upgradepoints`, `warnings`, `injured`, `hospital`, `spawnhealth`, `spawnarmor`, `jailtype`, `jailtime`, `newbiemuted`, `helpmuted`, `admuted`, `livemuted`, `globalmuted`, `reportmuted`, `reportwarns`, `fightstyle`, `locked`, `accent`, `cookies`, `phone`, `job`, `secondjob`, `crimes`, `arrested`, `wantedlevel`, `materials`, `pot`, `crack`, `meth`, `painkillers`, `seeds`, `ephedrine`, `muriaticacid`, `bakingsoda`, `cigars`, `walkietalkie`, `channel`, `rentinghouse`, `spraycans`, `boombox`, `mp3player`, `phonebook`, `fishingrod`, `fishingbait`, `fishweight`, `components`, `courierskill`, `fishingskill`, `guardskill`, `weaponskill`, `mechanicskill`, `lawyerskill`, `smugglerskill`, `toggletextdraws`, `toggleooc`, `togglephone`, `toggleadmin`, `togglehelper`, `togglenewbie`, `togglewt`, `toggleradio`, `togglevip`, `togglemusic`, `togglefaction`, `togglegang`, `togglenews`, `toggleglobal`, `togglecam`, `carlicense`, `pilotlicense`, `boatlicense`, `facemask`, `fmtime`, `vippackage`, `viptime`, `vipcooldown`, `weapon_0`, `weapon_1`, `weapon_2`, `weapon_3`, `weapon_4`, `weapon_5`, `weapon_6`, `weapon_7`, `weapon_8`, `weapon_9`, `weapon_10`, `weapon_11`, `weapon_12`, `ammo_0`, `ammo_1`, `ammo_2`, `ammo_3`, `ammo_4`, `ammo_5`, `ammo_6`, `ammo_7`, `ammo_8`, `ammo_9`, `ammo_10`, `ammo_11`, `ammo_12`, `faction`, `gang`, `factionrank`, `gangrank`, `division`, `contracted`, `contractby`, `bombs`, `completedhits`, `failedhits`, `reports`, `helprequests`, `speedometer`, `factionmod`, `gangmod`, `banappealer`, `potplanted`, `pottime`, `potgrams`, `pot_x`, `pot_y`, `pot_z`, `pot_a`, `inventoryupgrade`, `addictupgrade`, `traderupgrade`, `assetupgrade`, `laborupgrade`, `pistolammo`, `shotgunammo`, `smgammo`, `arammo`, `rifleammo`, `hpammo`, `poisonammo`, `fmjammo`, `ammotype`, `ammoweapon`, `dmwarnings`, `weaponrestricted`, `referral_uid`, `refercount`, `watch`, `gps`, `prisonedby`, `prisonreason`, `togglehud`, `clothes`, `showturfs`, `showlands`, `watchon`, `gpson`, `doublexp`, `couriercooldown`, `pizzacooldown`, `detectivecooldown`, `duty`, `bandana`, `detectiveskill`, `gascan`, `refunded`, `backpack`, `bpcash`, `bpmaterials`, `bppot`, `bpcrack`, `bpmeth`, `bppainkillers`, `bpweapon_0`, `bpweapon_1`, `bpweapon_2`, `bpweapon_3`, `bpweapon_4`, `bpweapon_5`, `bpweapon_6`, `bpweapon_7`, `bpweapon_8`, `bpweapon_9`, `bpweapon_10`, `bpweapon_11`, `bpweapon_12`, `bpweapon_13`, `bpweapon_14`, `bphpammo`, `bppoisonammo`, `bpfmjammo`, `formeradmin`, `deathcooldown`, `hunger`, `hungertimer`, `thirst`, `thirsttimer`, `covid`, `covidtimer`, `totalpatients`, `totalfires`, `rarecooldown`, `vipdlcooldown`, `customtitle`, `customcolor`, `mask`, `diamonds`, `ecoin`, `blindfold`, `rope`, `insurance`, `passport`, `passportname`, `passportlevel`, `passportskin`, `passportphone`, `marriedto`, `newbies`, `chatanim`, `Lottery`, `LotteryB`, `flashlight`, `candy`, `gunlicense`, `thiefskill`, `thiefcooldown`, `cocainecooldown`, `teacher`, `course`, `citizen`, `repairkit`, `firstaid`, `nationalid`, `dirtycash`, `comserv`, `groupleader`, `pgroup`, `task1`, `task2`, `task3`, `task4`, `task5`, `claimed1`, `claimed2`, `claimed3`, `claimed4`, `claimed5`, `loadexpire`, `loads`, `carrytrash`, `bindslot1`, `bindslot2`, `bindslot3`, `bindslot4`, `bindslot5`, `bindslot6`, `bindslot7`, `bindslot8`, `voicechat`, `discordtag`, `discordname`, `discordid`, `verified`, `code`) VALUES
(109, 'Matt_El_Nuevo', 'E6D4EFAE268C8BF1F9E1DAA366A27857E5D4A6795689CFA81321571E4B84182C8FFC3361B33524F6A6CF8955D78F30CBD81319DD85706417B4FC95C92442839C', '2022-10-09 18:04:57', '2022-10-09 18:04:57', NULL, '62.210.205.219', 0, 1, 24, 299, 1636.38, -2241.23, 14.577, 1632.96, -2241.25, 13.508, 105.845, 0, 0, 20500, 500, 0, 1, 0, 3, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 175, 99, 55, 1, 55, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 48, 'Johnny_brave', '57', 1, 0),
(110, 'Busha_Escobar', 'C7FFC06B30B4396EE3DCA877785E36E80C96DE53BA8B919662C8F22D6721D6FE09D95518CCF0063B23641343245806516574161B9303594C5400269AF82C638F', '2022-10-10 03:47:30', '2022-10-10 03:47:30', NULL, '175.176.8.173', 0, 1, 22, 299, 1128.72, -1406.9, 15.245, 1128.03, -1401.11, 13.032, 358.598, 0, 0, 20500, 500, 0, 1, 0, 8, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 126, 96, 6, 4, 6, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 1, 0),
(111, 'Roberto_Suarez', '569812E12A42F87642E939E47F71827DBD5E1DC0882F4E38E0E04E87AB2C6C60F08E808AEB3BBF1D2092ED2CDE7CBA3B660DB0E799E0144C46C802BCAF1FA73A', '2022-10-10 03:51:09', '2022-10-10 03:56:42', NULL, '49.144.16.73', 0, 1, 23, 299, 1639.69, -2239.8, 14.41, 1643, -2240.71, 13.495, 40.047, 0, 0, 20500, 500, 0, 1, 0, 5, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 111, 98, 51, 2, 51, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(112, 'Taiga_Kagami', '87A4FE02C9DBB478D8490733E59653EAB5ECD55B586CC3D9D10409F508DA504225E3CAF3D02429B25619A57A8C291B0E6AAFA717AF816945C4281A128ABD48B6', '2022-10-10 04:38:55', '2022-10-11 15:34:16', NULL, '49.151.228.22', 0, 1, 16, 86, 1135.84, -1435.71, 16.337, 1133.29, -1433.35, 15.797, 49.963, 0, 0, 20500, 501, 0, 1, 1, 25, 1, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80, 145, 69, 25, 31, 25, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 53, 'Dave Otilla', '49', 1, 0),
(114, 'Kent_Yakuza', '4827360720C83B121F2E1F5641B169927D7DAA4E616BFBDB452602C72FEB52796243511A27479EE1E8355DA7A4C22BBB23F9C16C87BBBF3590CD62D9B272615E', '2022-10-10 05:41:41', '2022-10-11 09:38:26', NULL, '136.158.66.64', 0, 1, 19, 299, 1648.43, -2255.01, 14.193, 1649.89, -2258.13, 13.333, 217.025, 0, 0, 20500, 500, 0, 1, 0, 2, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 113, 100, 113, 0, 113, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(117, 'Ben_Tulfo', 'D354FE0FD3F7B5D2753A2EC12946535BC8815C1AAE9D5F972735E72FF9FBFFA240C0716D9E10CA7ABCB07F471AEE3CCC25B66566C07622B8C0AF3C54D3B643CC', '2022-10-10 05:55:22', '2022-10-10 05:55:22', NULL, '112.203.123.175', 0, 1, 22, 21, 1649.84, -2263.89, 14.997, 1567.56, -2247.99, 13.042, 357.096, 0, 0, 500, 500, 0, 1, 0, 5, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 90, 98, 30, 2, 30, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(118, 'Kaito_Rodriguez', '092BC5517F41B4F382706D6130EB66ABE52ABE08E84BA288548342409C91A05A9ED919A9CEC2FD058139353BF344F9F91A62FF7F3F7C25FEA979C96D2FB83AD0', '2022-10-10 07:48:57', '2022-10-10 07:48:57', NULL, '49.145.98.192', 1, 1, 18, 299, 1059.22, -1408.45, 42.616, 1529.6, -1691.2, 13.383, 1, 0, 0, 500, 500, 0, 1, 0, 6, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 69, 98, 9, 2, 9, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(119, 'Chukoy_Esteban', 'B738431F9BC6E6D1FBF09BD499C184F379B89012EC8A3399BEA03C930EA775BD8479FDA90ACDC6A6B81829D8E8DA96CCE1CF3BBE61FBA05CB04E3F19B06185F7', '2022-10-10 09:43:33', '2022-10-10 12:13:48', NULL, '136.158.11.187', 0, 1, 23, 47, 1171.46, -1402.92, 14.746, 1170, -1405.98, 13.345, 148.453, 0, 0, 20000, 500, 0, 1, 0, 18, 0, 0, 'None', 0, 95.05, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 977798, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 98, 98, 36, 9, 96, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 1, 0),
(120, 'Koy_sarento', 'F214A7B3E79B3B299A6A96DCF6A92EFD77638DE448CB480E486BE63B32CC0FF70933263A529841EB598B323C0268E7C6AB437A3C955CE23400E33C14D3BDD83A', '2022-10-10 10:24:03', '2022-10-10 10:24:03', NULL, '120.29.88.197', 0, 1, 22, 2, 1650.51, -2243.4, 15.199, 1647.19, -2243.13, 13.499, 178.253, 0, 0, 20500, 500, 0, 1, 0, 4, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 77, 98, 17, 2, 17, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 1, 0),
(121, 'Pablo_taniman', '1C9051A2EAD7BCC30C9666066C4AF4390E41CF9D2A9CB03CC476B40E21E0100579B95CA70EB5976CA0FB425256D04C931C34617525A65AAC58EA821D49023BA1', '2022-10-10 12:37:52', '2022-10-10 12:37:52', NULL, '158.62.67.105', 0, 1, 15, 133, 1059.22, -1408.45, 42.616, 1529.6, -1691.2, 13.383, 1, 0, 0, 500, 500, 0, 1, 0, 1, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 53, 100, 53, 0, 53, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(122, 'Moreno_Trece', 'C6051F5CB726F4FC682CDB3F6195FA26B89019E8A6D01880296CE8778F0DA22DEBDFE3EB10138D26460BD061F1FBC841E281EE4045B442BF984255DEDB07BF83', '2022-10-10 15:21:54', '2022-10-10 15:21:54', NULL, '110.54.206.106', 0, 1, 22, 170, 1101.57, -1408.06, 14.537, 1105.93, -1411.26, 13.096, 95.154, 0, 0, 20500, 500, 0, 1, 0, 3, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 18, 99, 78, 1, 78, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 54, 'Ej', '57', 1, 0),
(123, 'Von_De_Pauna', 'D5EFB02769BC9A88CC1F3F78725C7ACA2A356E8302CE9DA087F220283896C8FFD7D5A4A59FBC74D0A32EB643493EA0FA6E48144BB26E4D87770E6CBDA90A452F', '2022-10-10 18:50:30', '2022-10-10 18:50:30', NULL, '180.190.154.240', 0, 1, 26, 2, 1482.12, -1629.09, 16.279, 1482.38, -1626.01, 14.047, 355.354, 0, 0, 500, 500, 0, 1, 0, 2, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 102, 100, 102, 0, 102, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(124, 'Red_Gallardo', '832E967951677506D0C70CD903DB153563C34574745E54C54CE3897AFCDAAE6A72BE25FF7C66CB25E218EA998F0475B7950001802CEDB2050677F85D2D6B4850', '2022-10-10 21:19:26', '2022-10-14 06:20:07', NULL, '180.190.230.183', 0, 1, 22, 2, 1125.94, -1388.34, 14.775, 1128.15, -1390.26, 13.694, 153.859, 0, 0, 500, 500, 0, 1, 0, 14, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 114, 95, 54, 2, 100, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 51, 'Asher', '57', 1, 0),
(125, 'Yuki_Hiras', '13395DEAE8CE57AA9A8583150245A13C09DA268296087E535363E9F00D46B04C37BBBF1B96C8D9C43B4B661853980883D9B6FEAC5CBF1FFBCA07517B280142C8', '2022-10-10 22:45:50', '2022-10-11 01:37:09', NULL, '136.158.10.142', 0, 1, 18, 2, 2388.78, -1532.82, 25.418, 2387.46, -1535.91, 24, 137.265, 0, 0, 20000, 500, 9605, 1, 0, 40, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, 4, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 86, 26, 70, 26, 21, 26, 0, 0, 0, 0, '0', '0', 0, 1, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 56, 'Steven x Yuki', '56', 1, 0),
(126, 'Matthew_Chummito', '651675DF3235144B463329D8D05B8C88A2A7ABC2EC0CDAB5FFC0F30FB1A9744C3CD6D4B36957DA0A6DCD2208AC3771CEEE6651A87ED9AF1AD6D5C4F04DC56721', '2022-10-11 01:39:03', '2022-10-11 01:39:03', NULL, '120.29.77.184', 0, 1, 21, 8, 1642.8, -2246.5, 13.701, 1642.14, -2243.26, 13.492, 173.891, 0, 0, 20500, 500, 0, 1, 0, 1, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 56, 100, 56, 0, 56, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(127, 'Dolo_Genovese', 'F1BB6630B630EC87F6B0597D4370EFD9415152F60EABC64DBB650586B60F328A5AB8441331F7D732C996CB263F38AB6B261B474C78DBED1A835D79D787126297', '2022-10-11 02:50:44', '2022-10-11 02:50:44', NULL, '158.62.41.30', 0, 1, 19, 119, 1642.69, -2244.66, 14.267, 1642.69, -2241.16, 13.494, 0, 0, 0, 500, 500, 0, 1, 0, 1, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 40, 100, 40, 0, 40, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(128, 'Kio_Rodriguez', '092BC5517F41B4F382706D6130EB66ABE52ABE08E84BA288548342409C91A05A9ED919A9CEC2FD058139353BF344F9F91A62FF7F3F7C25FEA979C96D2FB83AD0', '2022-10-11 03:52:14', '2022-10-11 03:55:40', NULL, '49.145.98.192', 0, 1, 99, 213, 1639.83, -2239.17, 14.233, 1635.78, -2243.39, 13.5, 136.186, 0, 0, 500, 500, 0, 1, 0, 1, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 113, 100, 113, 0, 113, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(129, 'Kia_Rodriguez', '092BC5517F41B4F382706D6130EB66ABE52ABE08E84BA288548342409C91A05A9ED919A9CEC2FD058139353BF344F9F91A62FF7F3F7C25FEA979C96D2FB83AD0', '2022-10-11 03:57:42', '2022-10-11 05:39:52', NULL, '49.145.98.192', 0, 1, 99, 213, 1637.6, -2244.17, 14.558, 1637.63, -2247.47, 13.492, 180.533, 0, 0, 500, 500, 0, 1, 0, 4, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 156, 98, 96, 2, 96, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(130, 'Shyna_Yee', '91801F95777C8369ACCE587B21E023EF4D57DD44C42E870E69A54CB19CB4EA132471F75A62FAAEF0309080EB94FC41E205A43BD0111CF49EF1F4C0546345506D', '2022-10-11 04:28:41', '2022-10-11 04:41:24', NULL, '136.158.30.207', 0, 2, 24, 216, 1129.75, -1396.67, 14.664, 1144.17, -1392.78, 13.104, 336.932, 0, 0, 20500, 500, 0, 1, 0, 20, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94, 136, 90, 16, 10, 16, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 57, 'shina', '49', 1, 0),
(131, 'Jay_Young', '8517BA4DF0ABFCBD8509F62F0DC9C38DF58FE319EF33FE94864FFA83F32BA8A605A4FB1C1FCFA09B8B83F4CF59FE8AD3EDA810DBA75FD71A2D9CC647DFC6DCCD', '2022-10-11 04:55:03', '2022-10-11 05:50:26', NULL, '175.176.21.194', 0, 1, 21, 2, 1641.6, -2243.89, 13.104, 1642.73, -2241.06, 13.494, 1, 0, 0, 500, 500, 0, 1, 0, 13, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 160, 93, 40, 7, 40, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(132, 'Gab_Hernandez', 'AAD6470AC40681DFEFCE312F24B1D905470D8A67A81654423C972535C765469D0C733FB349EA76B8EE3F1A52A40C7F4A2524A9CE0A3AF7EEBDD4585F5B29579E', '2022-10-11 12:05:53', '2022-10-11 12:05:53', NULL, '136.158.1.135', 0, 1, 17, 28, 1554.93, -1675.76, 17.514, 1553.12, -1675.7, 16.195, 88.174, 0, 0, 500, 500, 0, 1, 0, 6, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 6, 97, 6, 3, 6, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 51, 'Fluidd', '51', 1, 0),
(133, 'Dex_Takusa', 'AB224CB099178DA8A095C9077D97CF5FF48D4DF688BEF9DCA2CBE5D9A2DFE7BFE4D74700CC1234266FCAEE686E54BA9131008A3A2E639064AF6056494F40454E', '2022-10-12 04:41:54', '2022-10-12 17:32:41', NULL, '112.198.101.55', 0, 1, 15, 1, 1639.94, -2242.49, 15.811, 1642.69, -2241.16, 13.495, 90, 0, 0, 500, 500, 0, 1, 0, 2, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 131, 99, 11, 1, 11, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(134, 'Deku_Ross', 'BF1B59802897A7EF2C514202317691A3323835EF6D1494BE5AA5C81DBC993F7E05C61F499E3927576035A5E6B50908B4C36894540B28F6116DF77931248D9DE4', '2022-10-12 07:43:14', '2022-10-12 16:57:30', NULL, '136.158.39.16', 0, 1, 20, 115, 363.17, -1636.7, 34.002, 362.604, -1637.09, 32.891, 155.254, 0, 0, 108725, 504, 0, 1, 2, 32, 2, 0, 'None', 0, 100, 100, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 952244, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 5, 5, 0, 0, 10, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1666173124, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 5, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 68, 95, 8, 5, 8, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', '0', 1, 0),
(135, 'Janz_Qwen', '0D6004B145CC9E1A8E02A442997F9153B4B56BD7F411926EF2737ED36B3D9DD44778C55CA42E7D8B194C32236FBE7234F060B47696EE9058A94C3D56F7D4B9D8', '2022-10-12 12:21:34', '2022-10-12 12:21:34', NULL, '136.158.61.3', 0, 1, 25, 7, 1311.83, -1284.84, 14.762, 1295.85, -1283.48, 12.949, 229.048, 0, 0, 20500, 500, 0, 1, 0, 16, 0, 0, 'None', 0, 95.05, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95, 51, 93, 111, 7, 111, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 1, 0),
(136, 'Zae_Joji', 'B04515C767D21D824FCF00DD62DBCA6EE67955FDC230927491ABC8B6EBB824EEE3E361BA857BABAC6CCEE81EBAD46F33B6A0ABD5FEF0138BBF823879A091140A', '2022-10-12 14:26:27', '2022-10-14 08:47:12', NULL, '111.125.106.201', 0, 1, 20, 240, 713.912, -2184.98, 5.602, 714.774, -2186.58, 4.43, 242.292, 0, 0, 500, 501, 0, 1, 1, 37, 1, 0, 'None', 0, 95.05, 100, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 78, 18, 67, 18, 15, 117, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 52, 'zae', '57', 1, 0),
(137, 'Leo_Cute', '4925DA7DA7A56260BAF1C37925A8FA24E46AD8B107DCD21F44E39E4751BAE1304FC70DE7ACB847FFA96126BB372DE005F5320F1EDE6F9DF07C7D53F9C160F022', '2022-10-12 15:24:14', '2022-10-13 05:33:56', NULL, '158.62.56.62', 0, 1, 15, 114, 1222.24, -1356.42, 15.57, 1217.45, -1357.12, 13.558, 98.338, 0, 0, 20500, 502, 0, 1, 1, 31, 1, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 0, 29, 31, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 5, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 78, 23, 67, 23, 33, 23, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 1, 0),
(138, 'Aiya_C_Avery', 'B3530BB504CB3958651646B233ACCFC71520AC9C5D7BFAF9907A5FBF8C72968C63606D48B5A590400C1D7C81D15AEB17015AF08C6CC46F6711FE1650C2C11210', '2022-10-12 21:43:46', '2022-10-14 01:43:19', NULL, '1.37.86.61', 0, 2, 22, 193, 310.597, 2610.57, 21.648, 305.858, 2608.48, 20.672, 176.407, 0, 0, 500, 500, 0, 1, 0, 28, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 'None', 0, 994094, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91, 69, 86, 9, 14, 9, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 54, 'aiya', '49', 1, 0),
(139, 'Juanito_Trinollidiaz', 'C3286DBAE8200812099AD940CFEA62313C864DE68093A6FE9704D5E8B5AAC95DDCB769D9F809989D36A76C20A6133668F68CC8B003AF211613C9F6C415E429A2', '2022-10-13 01:00:39', '2022-10-13 01:00:39', NULL, '122.3.107.108', 0, 1, 27, 2, 1641.13, -2239.08, 14.389, 1642.62, -2242.23, 13.494, 169.402, 0, 0, 500, 500, 0, 1, 0, 1, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 51, 100, 51, 0, 51, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 50, 'Jack_Lincoln', '57', 1, 0),
(140, 'Fadiok_N_Salvatrucha', '1A6A64163E292127ECAE56167AC7799EBD98417F63F9D70E40D4E52E8537AD3C12F3765BBA6B107D58AF304F774C33C6BEEA696653EC45157CDC5C73EE4D83FF', '2022-10-13 03:49:14', '2022-10-13 03:49:14', NULL, '124.104.50.34', 0, 1, 23, 2, 1644.89, -2238.75, 15.365, 1642.66, -2241.14, 13.495, 90, 0, 0, 500, 500, 0, 1, 0, 1, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 46, 100, 46, 0, 46, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(141, 'James_N._Salvatrucha', 'ABFEFC64D6220C7DCFD07DA08C9BA1D231717CFAFFB7990C9C8EE21B7275F856A2F4FF9C5B6FBE472E6AF64EE07CC4F024AF9040B803F62C27FC01FAD6FD0D62', '2022-10-13 08:12:24', '2022-10-13 08:12:24', NULL, '175.176.53.251', 0, 1, 19, 2, 1637.81, -2241.1, 16.864, 1636.29, -2241.16, 13.101, 159.254, 0, 0, 20500, 500, 0, 1, 0, 2, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 86, 100, 86, 0, 86, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(142, 'OG_juan', '9969D6DD36D5051E21FDC8531953733106E16FC649040E096E8B1C3A838B22EF1EECFEC433A84B9069FA8F4EA7F07882E5A0514EE959A462830ADF67D008A5AF', '2022-10-13 10:40:15', '2022-10-13 10:40:15', NULL, '112.210.229.202', 0, 1, 20, 25, 1639.44, -2239.38, 13.582, 1642.44, -2241.91, 13.493, 230.688, 0, 0, 500, 500, 0, 1, 0, 1, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 84, 100, 84, 0, 84, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(143, 'Tonio_Escote', '6A2453905693D1A0E5893384101EB0B2EDBB4DE3ED262B4B317729A4F8FE5E2537F0016C2218246541F9EB083B6B077E93AFC49DE7BDB29CB0689AB8F791B00A', '2022-10-13 17:02:12', '2022-10-13 18:55:28', NULL, '130.105.195.51', 0, 1, 18, 166, 1641.58, -2243.37, 14.21, 1641.84, -2245.65, 13.489, 208.211, 0, 0, 20500, 500, 0, 1, 0, 6, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 25, 97, 25, 3, 25, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(144, 'robert_balong', 'FD9D94340DBD72C11B37EBB0D2A19B4D05E00FD78E4E2CE8923B9EA3A54E900DF181CFB112A8A73228D1F3551680E2AD9701A4FCFB248FA7FA77B95180628BB2', '2022-10-13 18:59:42', '2022-10-14 13:45:12', NULL, '49.144.102.248', 0, 1, 22, 46, 2284.91, -939.387, 110.423, 2286.37, -938.253, 108.907, 95.192, 0, 0, 10450, 91316, 0, 1, 5, 10, 5, 0, 'None', 0, 98.68, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 'None', 0, 986754, 3, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 5, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 82, 162, 72, 48, 26, 39, 0, 0, 0, 0, '0', '0', 0, 1, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 1, 0),
(145, 'Toshiro_Khalixta', 'B41A22280E1145CD1480721F0740312547A39FBE75F28BD77178B23F2F46FD07CFC2FB16A53129BD120977BB6ECCE4D4A2C7AAF9F55C915525BC8AB97BB58E00', '2022-10-14 02:16:55', '2022-10-14 14:54:02', NULL, '49.145.71.54', 0, 1, 21, 294, 2288.14, -936.491, 110.013, 2286.39, -937.412, 108.907, 105.02, 0, 0, 118990, 590870, 5292, 1, 5, 32, 5, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, 3, -1, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1666319292, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, -1, 14, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 82, 24, 54, 21, 3, 34, 0, 0, 318, 0, '0', '0', 1, 1, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 6, 0, 2, 0, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 1, 0),
(146, 'Cedric_Hakim', 'A6EBE6EC1CAE78E8E66C0E87838DC29CCE261E6C663E4FF1678165010048ECED8FAAE9D1084C7CCE7D401D2909ADB0DDFD38F8BBD4CBA74A3DCA1A2CAF76BF5E', '2022-10-14 02:32:46', '2022-10-14 11:24:12', NULL, '112.206.98.162', 0, 1, 13, 280, -1963.14, -839.521, 4442.48, -1964.46, -840.373, 4441.2, 89.262, 1, 4000207, 250600, 402, 0, 2, 6, 28, 6, 0, 'None', 0, 100, 73.68, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1666319979, 0, 0, 3, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, 4, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, 106, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 92, 6, 32, 0, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 1, 0),
(147, 'Kent_Kali', '3DA6B0D3E6037705B2ED0511E906D8CFE08FFD33930B0DF654FF58C346C740DDBF558ACCA0DB8A90A9FB4187B283255E0A9F4B98C178EB5292B929CF134F57FA', '2022-10-14 06:33:52', '2022-10-14 06:38:03', NULL, '110.54.173.54', 0, 1, 21, 290, 1643.83, -2242.27, 14.281, 1642.69, -2241.16, 13.494, 90, 0, 0, 500, 500, 0, 1, 0, 3, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 178, 99, 58, 0, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(148, 'Lori_Luna', '5DE2A739E637597A085FFB7B0C7F5D862898956459B1FB6D2FF010FE5A3A3C3AEC2469CA5FE312EA4E92299E37951AD4C594D48E2F11A9F441AE535F6CBFC463', '2022-10-14 06:34:20', '2022-10-14 06:34:20', NULL, '120.29.106.73', 0, 1, 18, 192, 1502.35, -1730.28, 15.014, 1522.79, -1728.06, 13.093, 87.255, 0, 0, 500, 500, 0, 1, 0, 4, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 91, 98, 31, 0, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 1, 0);
INSERT INTO `users` (`uid`, `username`, `password`, `regdate`, `lastlogin`, `login_date`, `ip`, `setup`, `gender`, `age`, `skin`, `camera_x`, `camera_y`, `camera_z`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `interior`, `world`, `cash`, `bank`, `paycheck`, `level`, `exp`, `minutes`, `hours`, `adminlevel`, `adminname`, `helperlevel`, `health`, `armor`, `upgradepoints`, `warnings`, `injured`, `hospital`, `spawnhealth`, `spawnarmor`, `jailtype`, `jailtime`, `newbiemuted`, `helpmuted`, `admuted`, `livemuted`, `globalmuted`, `reportmuted`, `reportwarns`, `fightstyle`, `locked`, `accent`, `cookies`, `phone`, `job`, `secondjob`, `crimes`, `arrested`, `wantedlevel`, `materials`, `pot`, `crack`, `meth`, `painkillers`, `seeds`, `ephedrine`, `muriaticacid`, `bakingsoda`, `cigars`, `walkietalkie`, `channel`, `rentinghouse`, `spraycans`, `boombox`, `mp3player`, `phonebook`, `fishingrod`, `fishingbait`, `fishweight`, `components`, `courierskill`, `fishingskill`, `guardskill`, `weaponskill`, `mechanicskill`, `lawyerskill`, `smugglerskill`, `toggletextdraws`, `toggleooc`, `togglephone`, `toggleadmin`, `togglehelper`, `togglenewbie`, `togglewt`, `toggleradio`, `togglevip`, `togglemusic`, `togglefaction`, `togglegang`, `togglenews`, `toggleglobal`, `togglecam`, `carlicense`, `pilotlicense`, `boatlicense`, `facemask`, `fmtime`, `vippackage`, `viptime`, `vipcooldown`, `weapon_0`, `weapon_1`, `weapon_2`, `weapon_3`, `weapon_4`, `weapon_5`, `weapon_6`, `weapon_7`, `weapon_8`, `weapon_9`, `weapon_10`, `weapon_11`, `weapon_12`, `ammo_0`, `ammo_1`, `ammo_2`, `ammo_3`, `ammo_4`, `ammo_5`, `ammo_6`, `ammo_7`, `ammo_8`, `ammo_9`, `ammo_10`, `ammo_11`, `ammo_12`, `faction`, `gang`, `factionrank`, `gangrank`, `division`, `contracted`, `contractby`, `bombs`, `completedhits`, `failedhits`, `reports`, `helprequests`, `speedometer`, `factionmod`, `gangmod`, `banappealer`, `potplanted`, `pottime`, `potgrams`, `pot_x`, `pot_y`, `pot_z`, `pot_a`, `inventoryupgrade`, `addictupgrade`, `traderupgrade`, `assetupgrade`, `laborupgrade`, `pistolammo`, `shotgunammo`, `smgammo`, `arammo`, `rifleammo`, `hpammo`, `poisonammo`, `fmjammo`, `ammotype`, `ammoweapon`, `dmwarnings`, `weaponrestricted`, `referral_uid`, `refercount`, `watch`, `gps`, `prisonedby`, `prisonreason`, `togglehud`, `clothes`, `showturfs`, `showlands`, `watchon`, `gpson`, `doublexp`, `couriercooldown`, `pizzacooldown`, `detectivecooldown`, `duty`, `bandana`, `detectiveskill`, `gascan`, `refunded`, `backpack`, `bpcash`, `bpmaterials`, `bppot`, `bpcrack`, `bpmeth`, `bppainkillers`, `bpweapon_0`, `bpweapon_1`, `bpweapon_2`, `bpweapon_3`, `bpweapon_4`, `bpweapon_5`, `bpweapon_6`, `bpweapon_7`, `bpweapon_8`, `bpweapon_9`, `bpweapon_10`, `bpweapon_11`, `bpweapon_12`, `bpweapon_13`, `bpweapon_14`, `bphpammo`, `bppoisonammo`, `bpfmjammo`, `formeradmin`, `deathcooldown`, `hunger`, `hungertimer`, `thirst`, `thirsttimer`, `covid`, `covidtimer`, `totalpatients`, `totalfires`, `rarecooldown`, `vipdlcooldown`, `customtitle`, `customcolor`, `mask`, `diamonds`, `ecoin`, `blindfold`, `rope`, `insurance`, `passport`, `passportname`, `passportlevel`, `passportskin`, `passportphone`, `marriedto`, `newbies`, `chatanim`, `Lottery`, `LotteryB`, `flashlight`, `candy`, `gunlicense`, `thiefskill`, `thiefcooldown`, `cocainecooldown`, `teacher`, `course`, `citizen`, `repairkit`, `firstaid`, `nationalid`, `dirtycash`, `comserv`, `groupleader`, `pgroup`, `task1`, `task2`, `task3`, `task4`, `task5`, `claimed1`, `claimed2`, `claimed3`, `claimed4`, `claimed5`, `loadexpire`, `loads`, `carrytrash`, `bindslot1`, `bindslot2`, `bindslot3`, `bindslot4`, `bindslot5`, `bindslot6`, `bindslot7`, `bindslot8`, `voicechat`, `discordtag`, `discordname`, `discordid`, `verified`, `code`) VALUES
(149, 'Jey_Kali', 'FA8DC105558CB3DAA00B95C882070C33F50C9B61D5245C21C332CC8177E30099C9687FD9D3610A59AFF3E789654588013C7E4F68DD2F61517B95D6E18B5EEF70', '2022-10-14 06:36:05', '2022-10-14 06:36:05', NULL, '120.28.245.159', 0, 1, 22, 215, 1506.25, -1732.9, 15.493, 1522.79, -1728.06, 13.093, 5.85, 0, 0, 500, 500, 0, 1, 0, 3, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 172, 99, 52, 0, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 1, 0),
(150, 'King_Jhamir', '821B35143723CC1A9B67B70CBD65BAC7719E33B2D07A38111C3B0312E6507B667FF3A5353EB99DF19C6D3BC617048DD03B3EE4EE3ABD510F3F3D2A339EB66CAD', '2022-10-14 11:49:03', '2022-10-14 12:07:04', NULL, '175.176.33.117', 0, 1, 99, 24, 1637.34, -2241, 16.723, 1637.86, -2242.65, 13.5, 201.375, 0, 0, 500, 500, 0, 1, 0, 14, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 137, 93, 17, 0, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT 0,
  `owner` varchar(24) DEFAULT 'Nobody',
  `modelid` smallint(3) DEFAULT 0,
  `price` int(10) DEFAULT 0,
  `tickets` int(10) DEFAULT 0,
  `locked` tinyint(1) DEFAULT 0,
  `dlock` tinyint(1) DEFAULT 0,
  `dlocked` tinyint(1) DEFAULT 0,
  `plate` varchar(32) DEFAULT 'None',
  `fuel` tinyint(3) DEFAULT 100,
  `health` float DEFAULT 1000,
  `pos_x` float DEFAULT 0,
  `pos_y` float DEFAULT 0,
  `pos_z` float DEFAULT 0,
  `pos_a` float DEFAULT 0,
  `color1` smallint(3) DEFAULT 0,
  `color2` smallint(3) DEFAULT 0,
  `paintjob` smallint(3) DEFAULT -1,
  `registered` int(11) DEFAULT NULL,
  `interior` tinyint(2) DEFAULT 0,
  `world` int(10) DEFAULT 0,
  `neon` smallint(5) DEFAULT 0,
  `neonenabled` tinyint(1) DEFAULT 0,
  `alarm` int(11) NOT NULL DEFAULT 0,
  `trunk` tinyint(1) DEFAULT 0,
  `mod_1` smallint(4) DEFAULT 0,
  `mod_2` smallint(4) DEFAULT 0,
  `mod_3` smallint(4) DEFAULT 0,
  `mod_4` smallint(4) DEFAULT 0,
  `mod_5` smallint(4) DEFAULT 0,
  `mod_6` smallint(4) DEFAULT 0,
  `mod_7` smallint(4) DEFAULT 0,
  `mod_8` smallint(4) DEFAULT 0,
  `mod_9` smallint(4) DEFAULT 0,
  `mod_10` smallint(4) DEFAULT 0,
  `mod_11` smallint(4) DEFAULT 0,
  `mod_12` smallint(4) DEFAULT 0,
  `mod_13` smallint(4) DEFAULT 0,
  `mod_14` smallint(4) DEFAULT 0,
  `cash` int(10) DEFAULT 0,
  `materials` int(10) DEFAULT 0,
  `pot` int(10) DEFAULT 0,
  `crack` int(10) DEFAULT 0,
  `meth` int(10) DEFAULT 0,
  `painkillers` int(10) DEFAULT 0,
  `weapon_1` tinyint(2) DEFAULT 0,
  `weapon_2` tinyint(2) DEFAULT 0,
  `weapon_3` tinyint(2) DEFAULT 0,
  `ammo_1` smallint(5) DEFAULT 0,
  `ammo_2` smallint(5) DEFAULT 0,
  `ammo_3` smallint(5) DEFAULT 0,
  `gangid` tinyint(2) DEFAULT -1,
  `factiontype` tinyint(2) DEFAULT 0,
  `job` tinyint(2) DEFAULT -1,
  `respawndelay` int(10) DEFAULT 0,
  `impounded` tinyint(1) NOT NULL DEFAULT 0,
  `pistolammo` smallint(5) DEFAULT 0,
  `shotgunammo` smallint(5) DEFAULT 0,
  `smgammo` smallint(5) DEFAULT 0,
  `arammo` smallint(5) DEFAULT 0,
  `rifleammo` smallint(5) DEFAULT 0,
  `hpammo` smallint(5) DEFAULT 0,
  `poisonammo` smallint(5) DEFAULT 0,
  `fmjammo` smallint(5) DEFAULT 0,
  `vehicletrash` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `ownerid`, `owner`, `modelid`, `price`, `tickets`, `locked`, `dlock`, `dlocked`, `plate`, `fuel`, `health`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `color1`, `color2`, `paintjob`, `registered`, `interior`, `world`, `neon`, `neonenabled`, `alarm`, `trunk`, `mod_1`, `mod_2`, `mod_3`, `mod_4`, `mod_5`, `mod_6`, `mod_7`, `mod_8`, `mod_9`, `mod_10`, `mod_11`, `mod_12`, `mod_13`, `mod_14`, `cash`, `materials`, `pot`, `crack`, `meth`, `painkillers`, `weapon_1`, `weapon_2`, `weapon_3`, `ammo_1`, `ammo_2`, `ammo_3`, `gangid`, `factiontype`, `job`, `respawndelay`, `impounded`, `pistolammo`, `shotgunammo`, `smgammo`, `arammo`, `rifleammo`, `hpammo`, `poisonammo`, `fmjammo`, `vehicletrash`) VALUES
(2, 1, 'Hay_Drax', 462, 0, 0, 0, 0, 0, 'None', 91, 1000, 1598.33, -2249.68, 12.957, 265.574, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 7, 'Don_CardoYT', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1635.65, -2245.47, 13.496, 1.493, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 10, 'Rylee_E_Escobar', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1642.69, -2239.16, 13.495, 0, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 3, 'Kovalchin_Bolkov', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1539.66, -2218.81, 13.547, 45.701, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 9, 'Myca', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 999.14, -1854.93, 12.82, 124.094, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 22, 'Arthur_La_Citadel', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1133.37, -1411.26, 13.468, 229.472, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 13, 'Gabriel_Smith', 462, 0, 0, 0, 0, 0, 'None', 100, 874.572, 1131.28, -1408.84, 13.457, 297.3, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 19, 'Don_Marco', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1065.36, -1463.13, 13.553, 167.747, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 18, 'Genji_Locco', 462, 0, 0, 0, 0, 0, 'None', 93, 955.116, 2480.91, -1938.33, 13.147, 276.865, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 15, 'Jay_Yurong', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1130.2, -1439, 15.797, 194.265, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 14, 'Justine_Crimel', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1130.33, -1413.24, 13.617, 191.875, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 23, 'Mush_Ibasco', 462, 0, 0, 0, 0, 0, 'None', 98, 994.824, 1643.38, -2248.37, 13.042, 304.931, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 24, 'Arnulfo_Ipis', 462, 0, 0, 0, 0, 0, 'None', 84, 980.186, 1628.51, -2251.77, 13.329, 134.377, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 16, 'Peter_La_Citadel', 462, 0, 0, 0, 0, 0, 'None', 67, 772.941, 554.693, -1277.55, 16.844, 175.927, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 0, 'Nobody', 490, 0, 0, 0, 0, 0, 'None', 100, 1000, 278.858, -1535.92, 24.72, 234.787, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 6, -1, 1874919423, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, 0, 'Nobody', 490, 0, 0, 0, 0, 0, 'None', 100, 1000, 281.626, -1530.94, 24.722, 232.802, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 6, -1, 1316134911, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 0, 'Nobody', 490, 0, 0, 0, 0, 0, 'None', 100, 1000, 284.346, -1526.9, 24.721, 234.649, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 6, -1, 1874919423, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, 0, 'Nobody', 528, 0, 0, 0, 0, 0, 'None', 100, 1000, 287.571, -1522.02, 24.637, 232.937, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 6, -1, 1316134911, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 0, 'Nobody', 528, 0, 0, 0, 0, 0, 'None', 100, 1000, 290.567, -1517.36, 24.637, 235.312, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 6, -1, 1874919423, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 0, 'Nobody', 560, 0, 0, 0, 0, 0, 'None', 100, 1000, 1030.18, -1117.86, 23.593, 180.028, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1, -559939585, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 0, 'Nobody', 528, 0, 0, 0, 0, 0, 'None', 100, 1000, 293.689, -1513.07, 24.637, 234.534, 2, 2, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 6, -1, -559939585, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, 0, 'Nobody', 560, 0, 0, 1, 0, 0, 'None', 100, 1000, 1033.74, -1117.77, 23.598, 179.864, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1, -559939585, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, 0, 'Nobody', 482, 0, 0, 0, 0, 0, 'None', 100, 1000, 1013.01, -1118.35, 24.016, 179.913, 2, 2, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1, -559939585, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27, 0, 'Nobody', 482, 0, 0, 0, 0, 0, 'None', 100, 1000, 1009.24, -1118.46, 24.017, 180.76, 2, 2, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1, -559939585, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28, 0, 'Nobody', 468, 0, 0, 0, 0, 0, 'None', 100, 1000, 1036.09, -1119.29, 23.565, 183.768, 2, 2, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1, -559939585, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, 0, 'Nobody', 468, 0, 0, 0, 0, 0, 'None', 100, 1000, 1038.58, -1118.94, 23.607, 177.096, 2, 2, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1, 1111111111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30, 0, 'Nobody', 521, 0, 0, 0, 0, 0, 'None', 100, 1000, 300.486, -1490.62, 24.166, 231.731, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 6, -1, 1316134911, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(31, 0, 'Nobody', 522, 0, 0, 0, 0, 0, 'None', 100, 1000, 303.173, -1486.4, 24.166, 239.554, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 6, -1, 276447231, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 0, 'Nobody', 522, 0, 0, 0, 0, 0, 'None', 100, 1000, 306.584, -1481.51, 24.164, 234.358, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 6, -1, 1569325055, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33, 0, 'Nobody', 560, 0, 0, 0, 0, 0, 'None', 100, 1000, 296.717, -1508.44, 24.299, 234.969, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 6, -1, 276447231, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(35, 26, 'John_Mendoza', 462, 0, 0, 0, 0, 0, 'None', 100, 985.243, 1124.42, -1437, 15.797, 86.279, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36, 0, 'Nobody', 560, 0, 0, 0, 0, 0, 'None', 100, 1000, 300.053, -1503.69, 24.299, 232.54, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 6, -1, 276447231, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(37, 29, 'Xander_Robles', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1607.8, -2243.47, 13.533, 83.661, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(38, 30, 'Hugh_McQuinn', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1654.02, -2049.82, 21.568, 322.388, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(39, 0, 'Nobody', 409, 0, 0, 0, 0, 0, 'None', 100, 1000, 1246.93, -2031.17, 59.6, 270.899, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 4, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(42, 15, 'Jay_Yurong', 541, 0, 0, 0, 0, 0, 'None', 98, 737.533, 1141.95, -1388.47, 13.408, 164.624, 1, 2, -1, NULL, 0, 0, 18648, 1, 0, 3, 0, 0, 0, 0, 0, 1010, 0, 1083, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(43, 0, 'Nobody', 490, 0, 0, 0, 0, 0, 'None', 100, 1000, 1245.54, -2023.23, 60.06, 271.551, 1, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 4, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(44, 0, 'Nobody', 490, 0, 0, 0, 0, 0, 'None', 100, 1000, 1245.8, -2019.04, 60.05, 274.636, 1, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 4, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45, 0, 'Nobody', 490, 0, 0, 0, 0, 0, 'None', 100, 1000, 1245.96, -2027.67, 60.047, 271.304, 1, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 4, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(46, 32, 'Leon_Locco', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1643.27, -2246.94, 13.491, 175.925, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(47, 0, 'Nobody', 490, 0, 0, 0, 0, 0, 'None', 100, 1000, 1245.7, -2014.17, 60.051, 269.637, 1, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 4, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(48, 31, 'Rapido_Alvarez', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1642.69, -2239.16, 13.495, 0, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(49, 0, 'Nobody', 560, 0, 0, 0, 0, 0, 'None', 100, 1000, 1268.22, -2009.75, 58.759, 183.024, 1, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 4, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(50, 0, 'Nobody', 560, 0, 0, 0, 0, 0, 'None', 100, 1000, 1263.49, -2009.72, 58.894, 181.483, 1, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 4, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(51, 0, 'Nobody', 560, 0, 0, 0, 0, 0, 'None', 100, 1000, 1258.43, -2009.77, 59.039, 182.77, 1, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 4, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52, 0, 'Nobody', 541, 0, 0, 0, 0, 0, 'None', 100, 1000, 1254.57, -2010.1, 59.201, 181.121, 1, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 4, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53, 0, 'Nobody', 541, 0, 0, 0, 0, 0, 'None', 100, 1000, 1249.78, -2010.22, 59.337, 183.826, 1, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 4, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(54, 34, 'Luna_Jung', 462, 0, 0, 0, 0, 0, 'None', 98, 1000, 1617.73, -2240.29, 13.527, 14.305, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(55, 0, 'Nobody', 523, 0, 0, 0, 0, 0, 'None', 100, 1000, 1276.96, -2034.08, 58.565, 89.678, 1, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 4, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56, 0, 'Nobody', 523, 0, 0, 0, 0, 0, 'None', 100, 1000, 1276.95, -2030.8, 58.561, 89.941, 1, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 4, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(57, 0, 'Nobody', 523, 0, 0, 0, 0, 0, 'None', 100, 1000, 1276.93, -2027.78, 58.547, 91.03, 1, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 4, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(58, 0, 'Nobody', 522, 0, 0, 0, 0, 0, 'None', 100, 1000, 1277.01, -2024.61, 58.533, 91.159, 1, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 4, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(59, 0, 'Nobody', 522, 0, 0, 0, 0, 0, 'None', 100, 1000, 1276.93, -2021.26, 58.526, 89.067, 1, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 4, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(60, 0, 'Nobody', 522, 0, 0, 0, 0, 0, 'None', 100, 1000, 1276.95, -2018.52, 58.505, 91.655, 1, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 4, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(61, 0, 'Nobody', 525, 0, 0, 0, 0, 0, 'None', 100, 1000, 1604.97, -1605.86, 13.259, 179.81, 1, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(62, 0, 'Nobody', 525, 0, 0, 0, 0, 0, 'None', 100, 1000, 1600.56, -1606.09, 13.205, 179.944, 1, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(63, 0, 'Nobody', 525, 0, 0, 0, 0, 0, 'None', 100, 1000, 1595.87, -1605.92, 13.156, 181.105, 1, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(64, 0, 'Nobody', 525, 0, 0, 0, 0, 0, 'None', 100, 1000, 1591.26, -1606.19, 13.122, 181.017, 1, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(65, 0, 'Nobody', 525, 0, 0, 0, 0, 0, 'None', 100, 1000, 1586.54, -1606.34, 13.12, 178.142, 1, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(66, 0, 'Nobody', 525, 0, 0, 0, 0, 0, 'None', 100, 1000, 1581.26, -1606.41, 13.127, 178.359, 1, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(67, 0, 'Nobody', 523, 0, 0, 0, 0, 0, 'None', 100, 1000, 1585.37, -1666.68, 5.468, 267.08, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(68, 0, 'Nobody', 523, 0, 0, 0, 0, 0, 'None', 100, 1000, 1585.5, -1669.84, 5.463, 274.256, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(69, 0, 'Nobody', 523, 0, 0, 0, 0, 0, 'None', 100, 1000, 1585.2, -1673.95, 5.468, 272.054, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(70, 0, 'Nobody', 523, 0, 0, 0, 0, 0, 'None', 100, 1000, 1585.13, -1677.49, 5.465, 270.652, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(71, 0, 'Nobody', 560, 0, 0, 0, 0, 0, 'None', 100, 1000, 1603.02, -1684.03, 5.465, 89.007, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(72, 0, 'Nobody', 560, 0, 0, 0, 0, 0, 'None', 100, 1000, 1603.05, -1688.07, 5.464, 89.571, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(73, 0, 'Nobody', 560, 0, 0, 0, 0, 0, 'None', 100, 1000, 1603.1, -1691.61, 5.464, 91.46, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(74, 35, 'Hachi_Montefalco', 462, 0, 0, 0, 0, 0, 'None', 95, 979.652, 1646.61, -2250.28, 13.493, 161.927, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(75, 0, 'Nobody', 560, 0, 0, 0, 0, 0, 'None', 100, 1000, 1603.07, -1696.03, 5.465, 90.491, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(76, 0, 'Nobody', 560, 0, 0, 0, 0, 0, 'None', 100, 1000, 1603.02, -1700.11, 5.461, 93.593, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(77, 0, 'Nobody', 560, 0, 0, 0, 0, 0, 'None', 100, 1000, 1603.12, -1704.32, 5.465, 89.289, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(78, 0, 'Nobody', 596, 0, 0, 0, 0, 0, 'None', 100, 1000, 1595.47, -1711.67, 5.36, 0.911, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79, 0, 'Nobody', 596, 0, 0, 0, 0, 0, 'None', 100, 1000, 1591.54, -1711.67, 5.36, 1.298, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(80, 0, 'Nobody', 596, 0, 0, 0, 0, 0, 'None', 100, 1000, 1587.43, -1711.6, 5.371, 359.032, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(81, 0, 'Nobody', 596, 0, 0, 0, 0, 0, 'None', 100, 1000, 1583.44, -1711.5, 5.36, 2.189, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82, 0, 'Nobody', 596, 0, 0, 0, 0, 0, 'None', 100, 1000, 1578.42, -1711.32, 5.36, 1.342, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(83, 0, 'Nobody', 596, 0, 0, 0, 0, 0, 'None', 100, 1000, 1574.54, -1711.11, 5.36, 1.288, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(84, 0, 'Nobody', 596, 0, 0, 0, 0, 0, 'None', 100, 1000, 1570.11, -1711.02, 5.36, 0.071, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(86, 0, 'Nobody', 596, 0, 0, 0, 0, 0, 'None', 100, 1000, 1558.84, -1710.46, 5.36, 359.476, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(87, 0, 'Nobody', 601, 0, 0, 0, 0, 0, 'None', 100, 1000, 1529.47, -1688.02, 5.649, 271.093, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(88, 0, 'Nobody', 601, 0, 0, 0, 0, 0, 'None', 100, 1000, 1529.53, -1683.89, 5.676, 270.237, -1, -1, -1, NULL, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(89, 0, 'Nobody', 427, 0, 0, 1, 0, 0, 'None', 100, 1000, 1545.09, -1684.34, 6.023, 89.132, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(90, 0, 'Nobody', 427, 0, 0, 0, 0, 0, 'None', 100, 1000, 1545.16, -1680.07, 6.022, 89.552, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(91, 0, 'Nobody', 427, 0, 0, 0, 0, 0, 'None', 100, 1000, 1545.19, -1676.15, 6.023, 90.745, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(92, 0, 'Nobody', 427, 0, 0, 0, 0, 0, 'None', 100, 1000, 1545.23, -1671.94, 6.031, 91.845, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(93, 14, 'Justine_Crimel', 481, 0, 0, 0, 0, 0, 'None', 100, 1000, 1540.01, -1649.08, 5.891, 353.111, 1, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(94, 0, 'Nobody', 528, 0, 0, 0, 0, 0, 'None', 100, 1000, 1545.94, -1667.7, 5.927, 90.226, -1, -1, -1, NULL, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(95, 0, 'Nobody', 528, 0, 0, 1, 0, 0, 'None', 100, 1000, 1545.94, -1663.08, 5.944, 89.981, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(96, 0, 'Nobody', 528, 0, 0, 0, 0, 0, 'None', 100, 1000, 1545.79, -1659.05, 5.885, 93.236, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(97, 0, 'Nobody', 528, 0, 0, 0, 0, 0, 'None', 100, 1000, 1545.81, -1655.05, 5.934, 89.701, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 11000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98, 0, 'Nobody', 528, 0, 0, 0, 0, 0, 'None', 100, 1000, 1545.86, -1651.14, 5.932, 89.16, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 11000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(99, 0, 'Nobody', 416, 0, 0, 0, 0, 0, 'None', 100, 1000, 1136.78, -1343.86, 13.91, 271.29, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 2, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(100, 0, 'Nobody', 416, 0, 0, 0, 0, 0, 'None', 100, 1000, 1136.82, -1339.03, 13.869, 270.033, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 2, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(101, 0, 'Nobody', 416, 0, 0, 0, 0, 0, 'None', 100, 1000, 1136.68, -1333.75, 13.824, 270.976, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 2, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(102, 0, 'Nobody', 407, 0, 0, 0, 0, 0, 'None', 100, 1000, 1123.94, -1330.24, 13.378, 359.609, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 2, -1, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(103, 0, 'Nobody', 407, 0, 0, 0, 0, 0, 'None', 100, 1000, 1110.79, -1330.43, 13.367, 2.457, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 2, -1, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(104, 0, 'Nobody', 407, 0, 0, 0, 0, 0, 'None', 100, 1000, 1097.49, -1330.83, 13.328, 356.86, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 2, -1, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(105, 0, 'Nobody', 525, 0, 0, 0, 0, 0, 'None', 100, 1000, 905.253, -1228.26, 16.691, 357.603, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 7, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(106, 0, 'Nobody', 525, 0, 0, 0, 0, 0, 'None', 100, 1000, 900.579, -1228.36, 16.697, 356.027, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 7, -1, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(107, 0, 'Nobody', 525, 0, 0, 0, 0, 0, 'None', 100, 1000, 896.546, -1227.98, 16.719, 355.834, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 7, -1, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(108, 0, 'Nobody', 560, 0, 0, 0, 0, 0, 'None', 100, 1000, 892.136, -1227.32, 16.546, 0.906, 1, 1, -1, NULL, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 7, -1, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(109, 0, 'Nobody', 560, 0, 0, 0, 0, 0, 'None', 100, 1000, 887.4, -1227.46, 16.363, 354.392, 1, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 7, -1, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(110, 0, 'Nobody', 522, 0, 0, 0, 0, 0, 'None', 100, 1000, 918.663, -1205.71, 16.544, 91.53, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 7, -1, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(111, 0, 'Nobody', 522, 0, 0, 0, 0, 0, 'None', 100, 1000, 918.49, -1201.68, 16.55, 98.575, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 7, -1, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(112, 0, 'Nobody', 522, 0, 0, 0, 0, 0, 'None', 100, 1000, 918.136, -1197.15, 16.554, 96.892, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 7, -1, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(113, 0, 'Nobody', 481, 0, 0, 0, 0, 0, 'None', 100, 1000, 1654.49, -2262.53, 13.023, 0.516, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(114, 0, 'Nobody', 481, 0, 0, 0, 0, 0, 'None', 100, 1000, 1656.17, -2262.47, 13.022, 2.113, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(115, 0, 'Nobody', 481, 0, 0, 0, 0, 0, 'None', 100, 1000, 1652.93, -2262.5, 13.019, 357.094, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(116, 0, 'Nobody', 481, 0, 0, 0, 0, 0, 'None', 100, 1000, 1652.08, -2262.55, 12.846, 6.176, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(117, 38, 'Carlito_Valentino', 462, 0, 0, 0, 0, 0, 'None', 87, 887.29, 1479.75, -1762.67, 13.146, 188.371, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(118, 37, 'Kai_Itchi', 462, 0, 0, 0, 0, 0, 'None', 79, 982.745, 1160.34, -1404.04, 41.889, 64.596, 0, 0, -1, NULL, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(119, 39, 'Boogey_Valentino', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1642.69, -2239.16, 13.495, 0, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(120, 40, 'enock_cadiao', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1552.81, -2238.08, 13.547, 258.818, 0, 0, -1, NULL, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(121, 33, 'Midas_Doofenshmirtzz', 462, 0, 0, 0, 0, 0, 'None', 34, 947, 1144.21, -1408.42, 13.537, 104.046, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(122, 10, 'Wilbert_Cordova', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1161.4, -1413.46, 13.563, 228.124, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123, 36, 'Dex_montana', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, -1942.16, -840.978, 4439.8, 286.888, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(124, 42, 'Sensui_Ohm', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1629.33, -2246, 13.509, 270.94, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(125, 7, 'Xean_Hernandez', 462, 0, 0, 0, 0, 0, 'None', 40, 979.901, 1131.76, -1392.51, 13.473, 297.195, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(127, 0, 'Nobody', 560, 0, 0, 1, 0, 0, 'None', 100, 1000, 2508.24, -1665.94, 13.088, 11.287, 3, 3, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, -1, -1530494977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(128, 0, 'Nobody', 560, 0, 0, 0, 0, 0, 'None', 100, 1000, 2508.18, -1672.94, 13.048, 346.628, 3, 3, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, -1, -1530494977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(129, 0, 'Nobody', 482, 0, 0, 0, 0, 0, 'None', 100, 1000, 2508.9, -1687, 13.679, 48.699, 3, 3, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, -1, -1530494977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(130, 0, 'Nobody', 482, 0, 0, 0, 0, 0, 'None', 100, 1000, 2505.74, -1651.99, 13.783, 138.623, 3, 3, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, -1, -1530494977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(131, 0, 'Nobody', 560, 0, 0, 1, 0, 0, 'None', 100, 1000, 2504.99, -1678.31, 13.056, 320.397, 3, 3, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, -1, -1530494977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(132, 0, 'Nobody', 560, 0, 0, 0, 0, 0, 'None', 100, 1000, 2505.79, -1660.82, 13.071, 34.231, 3, 3, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, -1, -1530494977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(133, 45, 'Pudong_Valentino', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1646.27, -2238.81, 13.501, 319.209, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(134, 23, 'Mush_Ibasco', 415, 0, 0, 0, 0, 0, 'None', 84, 1000, 914.915, -1226.87, 16.75, 179.842, 3, 3, -1, NULL, 0, 0, 18647, 1, 0, 0, 1003, 0, 0, 1017, 0, 1010, 1018, 1085, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(135, 45, 'Pudong_Valentino', 536, 0, 0, 0, 0, 0, 'None', 88, 955.34, 1146.03, -1382.82, 13.549, 180.13, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(136, 46, 'Pablo_Y._Cordova', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1586.05, -2242.1, 13.563, 281.384, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(137, 47, 'Hector_Cordova', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1154.04, -1181.96, 32.427, 232.584, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(138, 49, 'Don_tagalog', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1542.97, -2208.92, 13.555, 25.339, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(139, 48, 'Jack_Plays', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1254.43, -1406.33, 13.01, 90.508, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(140, 50, 'Chums_Cordova', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1812.12, -1959.37, 13.044, 240.878, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(141, 51, 'Fei_Cordova', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1645.17, -2255.42, 13.327, 13.147, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(143, 0, 'Nobody', 416, 0, 0, 0, 0, 0, 'None', 100, 1000, 1176.85, -1308.4, 14.039, 268.997, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 2, -1, -1530494977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(144, 0, 'Nobody', 416, 0, 0, 0, 0, 0, 'None', 100, 1000, 1177.46, -1338.26, 14.048, 269.48, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 2, -1, -1530494977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(145, 53, 'Kira_Shingo', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1642.21, -2242.56, 13.497, 102.968, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(146, 54, 'Miguel_Katapang', 462, 0, 0, 0, 0, 0, 'None', 99, 1000, 1536.48, -1665.53, 12.995, 276.648, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(147, 56, 'kai_dior', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1647.27, -2246.76, 13.493, 282.888, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(148, 55, 'Kyle_Kyle', 462, 0, 0, 0, 0, 0, 'None', 68, 1000, 1128.7, -1408.21, 13.46, 18.113, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(149, 57, 'Jacob_salvador', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1637.33, -2259.06, 13.485, 91.297, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(150, 58, 'Cardo_Salvaje', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1104.97, -1438.46, 15.797, 300.512, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(151, 0, 'Nobody', 487, 0, 0, 0, 0, 0, 'None', 100, 1000, 1161.92, -1374.27, 26.797, 266.863, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 2, -1, 1316134911, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(152, 0, 'Nobody', 487, 0, 0, 0, 0, 0, 'None', 100, 1000, 1161.74, -1356.09, 26.856, 270.609, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 2, -1, 1874919423, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(153, 21, 'Myca_Cute', 415, 0, 0, 0, 0, 0, 'MYCA CUTE ', 99, 1000, 1220.28, -1358.61, 13.33, 89.845, 5, 5, -1, NULL, 0, 0, 18651, 1, 0, 3, 0, 0, 0, 0, 0, 1010, 0, 1080, 0, 1087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(154, 31, 'Rap', 424, 520000, 0, 0, 0, 0, 'None', 100, 1000, 1089.03, -1380.71, 13.535, 0.417, 2, 2, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1080, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(155, 60, 'Fredo_Santana', 462, 0, 0, 0, 0, 0, 'None', 99, 978.508, 1127.56, -1411.42, 13.208, 280.271, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(159, 61, 'Devin_John', 560, 7000000, 0, 0, 0, 0, 'None', 94, 906.106, 1086.01, -1367.95, 13.569, 356.946, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(160, 61, 'Devin_John', 521, 81000, 0, 0, 0, 0, 'None', 99, 1000, 1087.42, -1383.51, 13.353, 0.081, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(161, 63, 'Pierre_Montefalco', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1542.44, -1675.55, 13.558, 90, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(162, 66, 'Sponge_bob', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1568.74, -2241.24, 13.548, 150.005, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(163, 65, 'Tetsuya_Sugo', 462, 0, 0, 0, 0, 0, 'None', 100, 911.212, 2760.34, -1970.65, 13.143, 56.018, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(166, 0, 'Nobody', 560, 0, 0, 0, 0, 0, 'None', 100, 1000, 2762.17, -1967.88, 13.081, 269.304, 43, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, -1, -469762049, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(167, 0, 'Nobody', 482, 0, 0, 0, 0, 0, 'None', 100, 1000, 2762.41, -1962.85, 13.676, 272.59, 43, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, -1, -469762049, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(168, 0, 'Nobody', 482, 0, 0, 0, 0, 0, 'None', 100, 1000, 2762.41, -1960.02, 13.676, 269.85, 43, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, -1, 1661992959, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(169, 0, 'Nobody', 468, 0, 0, 0, 0, 0, 'None', 100, 1000, 2762.14, -1969.99, 13.214, 262.166, 43, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, -1, 1661992959, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(170, 0, 'Nobody', 468, 0, 0, 0, 0, 0, 'None', 100, 1000, 2761.84, -1971.38, 13.219, 270.827, 43, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, -1, 1661992959, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(171, 0, 'Nobody', 560, 0, 0, 0, 0, 0, 'None', 100, 1000, 2762.15, -1965.46, 13.082, 270.068, 43, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, -1, 1661992959, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(172, 39, 'Boogey_Valentino', 560, 0, 0, 0, 0, 0, 'None', 100, 1000, 2773.79, -1963.43, 13.344, 299.547, 2, 2, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(173, 45, 'Pudong_Valentino', 560, 0, 0, 0, 0, 0, 'None', 80, 735.88, 1148.76, -1383.21, 13.352, 181.207, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(174, 67, 'Butch_Ibarra', 462, 0, 0, 0, 0, 0, 'None', 98, 993.421, 1131.64, -1410.42, 13.065, 89.648, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(175, 33, 'Midas_Doofenshmirtzz', 529, 230000, 0, 0, 0, 0, 'None', 100, 958.868, 1534.57, -1664.18, 13.06, 346.687, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(176, 68, 'Sushi_Alvarez', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1558.13, -2135.31, 14.493, 6.172, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(177, 0, 'Nobody', 425, 0, 0, 0, 0, 0, 'None', 100, 1000, 1073.76, -359.059, 77.352, 264.863, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 9, -1, -159383553, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(178, 0, 'Nobody', 470, 0, 0, 0, 0, 0, 'None', 100, 1000, 1053.28, -362.811, 74.003, 1.285, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 9, -1, 1316134911, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(179, 0, 'Nobody', 470, 0, 0, 0, 0, 0, 'None', 100, 1000, 1049.5, -363.064, 73.986, 1.881, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 9, -1, 1316134911, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(180, 0, 'Nobody', 470, 0, 0, 0, 0, 0, 'None', 100, 1000, 1045.86, -363.352, 73.988, 1.059, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 9, -1, 1316134911, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(181, 0, 'Nobody', 433, 0, 0, 0, 0, 0, 'None', 100, 1000, 1055.08, -290.81, 74.429, 180.308, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 9, -1, -1530494977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(182, 0, 'Nobody', 433, 0, 0, 0, 0, 0, 'None', 100, 1000, 1061.9, -290.488, 74.426, 178.043, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 9, -1, -1530494977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(183, 0, 'Nobody', 433, 0, 0, 0, 0, 0, 'None', 100, 1000, 1055.21, -299.898, 74.428, 179.375, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 9, -1, -1530494977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(184, 69, 'Busha_Madrazo', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1631.04, -2254.9, 13.327, 88.701, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(185, 0, 'Nobody', 432, 0, 0, 0, 0, 0, 'None', 100, 1000, 1088.97, -296.935, 73.974, 177.942, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 9, -1, 1874919423, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(187, 0, 'Nobody', 468, 0, 0, 0, 0, 0, 'None', 100, 1000, 1089.96, -331.347, 73.667, 87.421, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 9, -1, 1874919423, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(188, 0, 'Nobody', 468, 0, 0, 0, 0, 0, 'None', 100, 1000, 1089.98, -332.703, 73.661, 84.752, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 9, -1, 1874919423, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(189, 0, 'Nobody', 468, 0, 0, 0, 0, 0, 'None', 100, 1000, 1090.15, -333.946, 73.662, 91.731, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 9, -1, 1874919423, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(190, 0, 'Nobody', 520, 0, 0, 0, 0, 0, 'None', 100, 1000, 1044.1, -333.317, 74.755, 338.904, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 9, -1, 1874919423, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(191, 0, 'Nobody', 541, 0, 0, 0, 0, 0, 'None', 100, 1000, 291.434, -1544.71, 24.202, 54.242, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 6, -1, 1215752191, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(192, 0, 'Nobody', 601, 0, 0, 0, 0, 0, 'None', 100, 1000, 295.22, -1540.93, 24.355, 56.146, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 6, -1, 1215752191, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(193, 70, 'Busha_P_Hakim', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1637, -2252.65, 13.325, 273.758, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(194, 0, 'Nobody', 541, 0, 0, 0, 0, 0, 'None', 100, 1000, 297.891, -1536.44, 24.216, 57.156, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 6, -1, 1215752191, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(195, 71, 'Justine_Madrazo', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1647.32, -2244.62, 13.496, 271.509, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(196, 72, 'Marcos_Tonkin', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1629.79, -2248.64, 5.262, 161.707, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(197, 0, 'Nobody', 522, 0, 0, 0, 0, 0, 'None', 100, 1000, -4413.05, 875.057, 985.956, 354.1, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 999999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(198, 0, 'Nobody', 522, 0, 0, 0, 0, 0, 'None', 100, 1000, -4405.09, 874.456, 985.949, 353.56, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 999999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(199, 0, 'Nobody', 522, 0, 0, 0, 0, 0, 'None', 100, 1000, -4409.09, 874.857, 985.949, 356.282, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 999999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(200, 0, 'Nobody', 522, 0, 0, 0, 0, 0, 'None', 100, 1000, -4392.62, 873.309, 985.951, 354.805, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 999999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(201, 0, 'Nobody', 522, 0, 0, 0, 0, 0, 'None', 100, 1000, -4388.58, 872.872, 985.95, 352.182, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 999999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(202, 0, 'Nobody', 522, 0, 0, 0, 0, 0, 'None', 100, 1000, -4384.57, 872.555, 985.938, 3.872, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 999999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(203, 0, 'Nobody', 429, 0, 0, 0, 0, 0, 'None', 100, 1000, -4403.76, 891.636, 986.06, 175.116, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 999999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(204, 0, 'Nobody', 541, 0, 0, 0, 0, 0, 'None', 100, 1000, -4399.49, 891.552, 986.006, 176.298, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 999999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(205, 0, 'Nobody', 415, 0, 0, 0, 0, 0, 'None', 100, 1000, -4395.46, 891.073, 986.152, 174.635, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 999999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(206, 0, 'Nobody', 562, 0, 0, 0, 0, 0, 'None', 100, 1000, -4391.31, 891.016, 986.039, 175.466, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 999999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(207, 0, 'Nobody', 411, 0, 0, 0, 0, 0, 'None', 100, 1000, -4387.24, 890.658, 986.107, 176.494, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 999999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(208, 0, 'Nobody', 559, 0, 0, 0, 0, 0, 'None', 100, 1000, -4383.11, 890.44, 986.037, 175.835, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 999999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `vehicles` (`id`, `ownerid`, `owner`, `modelid`, `price`, `tickets`, `locked`, `dlock`, `dlocked`, `plate`, `fuel`, `health`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `color1`, `color2`, `paintjob`, `registered`, `interior`, `world`, `neon`, `neonenabled`, `alarm`, `trunk`, `mod_1`, `mod_2`, `mod_3`, `mod_4`, `mod_5`, `mod_6`, `mod_7`, `mod_8`, `mod_9`, `mod_10`, `mod_11`, `mod_12`, `mod_13`, `mod_14`, `cash`, `materials`, `pot`, `crack`, `meth`, `painkillers`, `weapon_1`, `weapon_2`, `weapon_3`, `ammo_1`, `ammo_2`, `ammo_3`, `gangid`, `factiontype`, `job`, `respawndelay`, `impounded`, `pistolammo`, `shotgunammo`, `smgammo`, `arammo`, `rifleammo`, `hpammo`, `poisonammo`, `fmjammo`, `vehicletrash`) VALUES
(209, 0, 'Nobody', 560, 0, 0, 0, 0, 0, 'None', 100, 1000, -4379.12, 890.26, 986.086, 176.415, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 999999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(210, 0, 'Nobody', 506, 0, 0, 0, 0, 0, 'None', 100, 1000, -4374.99, 889.678, 986.085, 175.485, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 999999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(211, 0, 'Nobody', 451, 0, 0, 0, 0, 0, 'None', 100, 1000, -4370.85, 889.524, 986.087, 175.843, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 999999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(212, 0, 'Nobody', 558, 0, 0, 0, 0, 0, 'None', 100, 1000, -4366.72, 889.138, 986.01, 175.946, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 999999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(213, 0, 'Nobody', 402, 0, 0, 0, 0, 0, 'None', 100, 1000, -4362.64, 888.962, 986.212, 175.562, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 999999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(216, 36, 'Dex_montana', 560, 0, 0, 0, 0, 0, 'None', 98, 780.15, 1129.58, -1409.31, 13.159, 92.118, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(226, 21, 'Myca_Cute', 481, 1900, 0, 0, 0, 0, 'None', 100, 1000, 552.818, -1284.13, 17.0007, 0, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(227, 0, 'Nobody', 487, 0, 0, 0, 0, 0, 'None', 100, 1000, 1100.98, -298.418, 79.943, 89.665, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 9, -1, 276447231, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(228, 0, 'Nobody', 487, 0, 0, 0, 0, 0, 'None', 100, 1000, 1102.38, -311.277, 79.952, 89.671, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 9, -1, 276447231, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(229, 0, 'Nobody', 548, 0, 0, 0, 0, 0, 'None', 100, 1000, 1101.27, -337.979, 81.323, 88.984, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 9, -1, 276447231, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(230, 15, 'Jay_Yurong', 451, 0, 0, 1, 0, 0, 'None', 100, 1000, 1131.08, -1391.28, 13.737, 172.592, 3, 3, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(231, 80, 'Yollo_Ballaz', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1642.69, -2239.16, 13.495, 0, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(232, 26, 'John_Mendoza', 405, 80000, 0, 0, 0, 0, 'None', 100, 976.328, 1090.03, -319.733, 73.867, 268.369, 0, 0, -1, NULL, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(233, 84, 'Jeffrey_Dahmer', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1583.64, -1692.78, 28.516, 59.247, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(234, 77, 'Mhick_Smith', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 930.642, -1220.15, 16.935, 261.687, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(235, 27, 'Kairo_Drexel', 412, 180000, 0, 0, 0, 0, 'None', 89, 906.391, 936.569, -1201.44, 17.654, 359.48, 3, 3, -1, NULL, 0, 0, 18652, 1, 0, 0, 0, 0, 0, 0, 0, 1010, 0, 1083, 0, 1087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(237, 27, 'Kairo_Drexel', 477, 0, 0, 0, 0, 0, 'OSM BLUE', 50, 882, 1219.86, -1343.21, 13.286, 92.539, 162, 198, -1, NULL, 0, 0, 18648, 1, 0, 0, 0, 0, 0, 0, 0, 1010, 0, 1080, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(238, 16, 'Peter_La_Citadel', 481, 1900, 0, 1, 0, 0, 'None', 100, 885.205, 1123.67, -1389.64, 13.132, 326.06, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(239, 88, 'Kaizer_Vagos', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1645.92, -2246.56, 13.495, 212.051, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(240, 33, 'Midas_Doofenshmirtzz', 522, 0, 0, 0, 0, 0, 'None', 100, 568.573, 1265.38, -976.471, 37.906, 179.265, 1, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(241, 87, 'Diyun_taniman', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, -1114.25, 1963.03, -55.33, 98.572, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(242, 89, 'cash_man', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1646.37, -2254.14, 13.325, 209.324, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(243, 90, 'gee_Osidemafia', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1651.59, -2258.05, 13.01, 6.175, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(244, 91, 'Sylvester_Stallon', 462, 0, 0, 0, 0, 0, 'None', 98, 989.288, 1649.66, -2259.47, -2.689, 254.349, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(245, 0, 'Nobody', 497, 0, 0, 0, 0, 0, 'None', 100, 1000, 1566.49, -1658.66, 28.566, 89.41, 0, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, -1530494977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(246, 0, 'Nobody', 497, 0, 0, 0, 0, 0, 'None', 100, 1000, 1566.88, -1648.63, 28.58, 92.821, 0, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, -1530494977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(247, 0, 'Nobody', 425, 0, 0, 0, 0, 0, 'None', 100, 1000, 1563.07, -1705.1, 28.975, 86.917, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, -1530494977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(248, 0, 'Nobody', 599, 0, 0, 0, 0, 0, 'None', 100, 1000, 1558.51, -1694.41, 6.087, 180.646, 0, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 276447231, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(249, 0, 'Nobody', 599, 0, 0, 0, 0, 0, 'None', 100, 1000, 1562.41, -1694.37, 6.09, 179.298, 0, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 276447231, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(250, 92, 'Kaizer_Parker', 462, 0, 0, 0, 0, 0, 'None', 88, 988.923, 1701.32, -2260.69, -2.727, 271.049, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(251, 33, 'Midas_Doofenshmirtzz', 494, 0, 0, 0, 0, 0, 'None', 86, 546.982, 1131.97, -1390.62, 13.754, 177.835, 0, 0, -1, NULL, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(252, 94, 'Chino_Swoer', 462, 0, 0, 0, 0, 0, 'None', 51, 1000, 1566.03, -2269.32, 13.552, 131.847, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(254, 0, 'Nobody', 560, 0, 0, 0, 0, 0, 'None', 100, 1000, 2270.47, -1033, 51.61, 135.901, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, -1, 1661992959, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(255, 0, 'Nobody', 560, 0, 0, 0, 0, 0, 'None', 100, 1000, 2273.17, -1035.69, 50.848, 137.343, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, -1, 1661992959, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(256, 0, 'Nobody', 482, 0, 0, 0, 0, 0, 'None', 100, 1000, 2275.92, -1038.83, 50.447, 135.295, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, -1, 1661992959, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(258, 0, 'Nobody', 468, 0, 0, 0, 0, 0, 'None', 100, 1000, 2275.25, -1043.47, 49.407, 50.658, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, -1, 1661992959, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(259, 0, 'Nobody', 468, 0, 0, 0, 0, 0, 'None', 100, 1000, 2274.08, -1045.17, 49.36, 51.906, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, -1, 1661992959, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(260, 0, 'Nobody', 468, 0, 0, 0, 0, 0, 'None', 100, 1000, 2272.63, -1046.59, 49.363, 50.623, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, -1, 1661992959, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(261, 87, 'Diyun_taniman', 481, 1900, 0, 0, 0, 0, 'None', 100, 1000, 552.818, -1284.13, 17.0007, 0, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(262, 96, 'Joselito_Valentino', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1626.97, -2249.84, 13.329, 112.203, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(263, 97, 'Laurence_Drexel', 462, 0, 0, 0, 0, 0, 'None', 98, 1000, 1111.94, -1410.51, 13.02, 115.89, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(264, 98, 'Roberto_S._Suarez', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1640.23, -2240.57, 13.494, 57.586, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(266, 41, 'Dex_Vagos', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1138.36, -1390.13, 13.584, 287.134, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(267, 99, 'Laurence_El_Drexel', 462, 0, 0, 0, 0, 0, 'None', 56, 953.811, 1188.31, -1385.52, 13.144, 284.839, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(268, 101, 'Jp_Antonio', 462, 0, 0, 0, 0, 0, 'None', 100, 997, 2402.29, 108.019, 27.063, 186.499, 1, 2, -1, NULL, 0, 4000232, 18648, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(269, 102, 'James_Airon', 462, 0, 0, 0, 0, 0, 'None', 100, 998.629, 1642.61, -2251.52, 13.324, 140.851, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(270, 103, 'JOHNNY_WALKER', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1632.92, -2251.55, 13.323, 93.943, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(271, 101, 'Jp_Antonio', 434, 0, 0, 0, 0, 0, 'None', 100, 669.898, 1290.26, -830.616, 83.104, 358.655, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1080, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(272, 105, 'Kevin_Morel', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1628.88, -2253.36, 13.325, 129.629, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(273, 107, 'Reycee_Carl', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1644.25, -2249.7, 13.485, 183.105, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(274, 106, 'Shyne_Deleon', 541, 0, 0, 0, 0, 0, 'None', 100, 994.141, 2406.22, 105.276, 26.693, 179.604, 6, 1, -1, NULL, 0, 4000232, 18652, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1080, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(275, 108, 'Christian_Kho', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1642.82, -2245.34, 13.491, 189.636, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(276, 15, 'Jay_Yurong', 481, 0, 0, 0, 0, 0, 'None', 100, 995.662, 2402.02, 97.539, 26.473, 187.658, 0, 0, -1, NULL, 0, 0, 18648, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(277, 106, 'Shyne_Deleon', 510, 0, 0, 0, 0, 0, 'None', 100, 988.974, 2403.98, 105.097, 26.646, 359.922, 3, 3, -1, NULL, 0, 4000232, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(278, 101, 'Jp_Antonio', 522, 0, 0, 0, 0, 0, 'None', 100, 995.258, 2402.79, 108.402, 27.138, 177.702, 6, 0, -1, NULL, 0, 4000232, 18648, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(279, 109, 'Matt_El_Nuevo', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1634.26, -2241.88, 13.503, 86.832, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(280, 101, 'Jp_Antonio', 409, 0, 0, 0, 0, 0, 'None', 100, 1000, 2406.33, 105.691, 26.933, 179.298, 6, 0, -1, NULL, 0, 4000232, 18648, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1080, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(281, 101, 'Jp_Antonio', 442, 0, 0, 0, 0, 0, 'None', 100, 1000, 2402.79, 105.839, 26.979, 180, 0, 0, -1, NULL, 0, 4000232, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1080, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(282, 101, 'Jp_Antonio', 535, 0, 0, 0, 0, 0, 'None', 100, 998.115, 2412.09, 99.863, 26.239, 270.384, 128, 1, 2, NULL, 0, 4000232, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1080, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(283, 101, 'Jp_Antonio', 565, 0, 0, 0, 0, 0, 'None', 100, 1000, 2409.22, 100.155, 26.098, 93.927, 3, 2, -1, NULL, 0, 4000232, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1080, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(284, 111, 'Roberto_Suarez', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1642.69, -2239.16, 13.495, 0, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(285, 110, 'Busha_Escobar', 462, 0, 0, 1, 0, 0, 'None', 100, 1000, 1129.38, -1408.12, 13.46, 358.59, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(286, 112, 'Taiga_Kagami', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1128.38, -1424.41, 15.797, 7.455, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(287, 114, 'Kent_Yakuza', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1649.02, -2253.53, 13.334, 123.345, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(288, 106, 'Shyne_Deleon', 470, 0, 0, 0, 0, 0, 'Chelle', 100, 999, 2403.66, 106.191, 27.235, 358.443, 126, 1, -1, NULL, 0, 4000232, 18651, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1080, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(289, 106, 'Shyne_Deleon', 415, 0, 0, 1, 0, 0, 'None', 94, 950.707, 2398.07, 105.214, 26.896, 182.611, 132, 1, -1, NULL, 0, 4000232, 18652, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1080, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(290, 119, 'Chukoy_Esteban', 462, 0, 0, 0, 0, 0, 'None', 100, 976.494, 1137.64, -1410.01, 13.097, 276.346, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(291, 120, 'Koy_sarento', 462, 0, 0, 1, 0, 0, 'None', 100, 1000, 1648.75, -2247.7, 13.501, 166.584, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(292, 122, 'Moreno_Trece', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1630.39, -2257.46, 13.327, 95.15, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(293, 125, 'Yuki_Hiras', 462, 0, 0, 0, 0, 0, 'None', 100, 753.322, 1496.38, -1749.74, 13.147, 185.395, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(294, 126, 'Matthew_Chummito', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1641.93, -2245.25, 13.492, 173.891, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(295, 130, 'Shyna_Yee', 462, 0, 0, 0, 0, 0, 'None', 100, 983.506, 1132.53, -1389.72, 13.299, 185.179, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(296, 134, 'Deku_Ross', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1635.85, -2238.12, 13.503, 67.365, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(297, 35, 'Hachi_Montefalco', 481, 1900, 0, 0, 0, 0, 'None', 100, 1000, 552.818, -1284.13, 17.0007, 0, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(298, 135, 'Janz_Qwen', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1645.96, -2243.08, 13.497, 236.178, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(299, 0, 'Nobody', 445, 0, 0, 0, 0, 0, 'None', 100, 1000, 1329.19, -1062.4, 28.654, 269.665, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1, -1981284353, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(300, 0, 'Nobody', 445, 0, 0, 0, 0, 0, 'None', 100, 1000, 1329.27, -1059.7, 28.637, 271.113, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1, -1981284353, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(301, 0, 'Nobody', 468, 0, 0, 0, 0, 0, 'None', 100, 1000, 1339.17, -1049.67, 26.982, 182.318, 246, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1, -1981284353, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(302, 0, 'Nobody', 468, 0, 0, 0, 0, 0, 'None', 100, 1000, 1337.18, -1049.74, 27.212, 183.985, 246, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1, -1981284353, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(303, 0, 'Nobody', 482, 0, 0, 0, 0, 0, 'None', 100, 1000, 1319.18, -1081.41, 25.719, 268.933, 246, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1, -1981284353, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(304, 137, 'Leo_Cute', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1643.36, -2239.71, 13.491, 3.799, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(305, 141, 'James_N._Salvatrucha', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1640.95, -2245.36, 13.493, 159.004, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(306, 143, 'Tonio_Escote', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1645.39, -2251.8, 13.326, 183.207, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(307, 144, 'robert_balong', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1642.37, -2239.31, 13.491, 26.743, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(308, 144, 'robert_balong', 521, 81000, 0, 0, 0, 0, 'None', 90, 820.285, 1221.67, -1344.83, 13.125, 93.825, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(309, 145, 'Toshiro_Khalixta', 462, 0, 0, 0, 0, 0, 'None', 100, 915.147, 919.269, -1210.36, 16.58, 270.745, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(310, 146, 'Cedric_Hakim', 462, 0, 0, 0, 0, 0, 'None', 100, 863.877, 1137.1, -1387.1, 13.382, 286.629, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(311, 21, 'Myca_Cute', 421, 0, 0, 0, 0, 0, 'None', 100, 1000, 1135.09, -1407.76, 13.467, 296.277, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(312, 21, 'Myca_Cute', 506, 0, 0, 0, 0, 0, 'None', 100, 817.452, 1219.89, -1353.86, 13.462, 90.021, 5, 5, -1, NULL, 0, 0, 18651, 1, 0, 1, 0, 0, 0, 0, 0, 1010, 0, 1075, 0, 1087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `vendorID` int(12) NOT NULL,
  `vendorModel` int(12) DEFAULT 980,
  `vendorPosX` float DEFAULT 0,
  `vendorPosY` float DEFAULT 0,
  `vendorPosZ` float DEFAULT 0,
  `vendorInterior` int(12) DEFAULT 0,
  `vendorWorld` int(12) DEFAULT 0,
  `vendorAngle` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`vendorID`, `vendorModel`, `vendorPosX`, `vendorPosY`, `vendorPosZ`, `vendorInterior`, `vendorWorld`, `vendorAngle`) VALUES
(7, 1340, 859.207, -1199.93, 16.8766, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `weapons`
--

CREATE TABLE `weapons` (
  `uid` int(10) DEFAULT NULL,
  `slot` tinyint(2) DEFAULT NULL,
  `weaponid` tinyint(2) DEFAULT NULL,
  `ammo` smallint(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anticheat_settings`
--
ALTER TABLE `anticheat_settings`
  ADD UNIQUE KEY `ac_code` (`ac_code`);

--
-- Indexes for table `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `changes`
--
ALTER TABLE `changes`
  ADD UNIQUE KEY `slot` (`slot`);

--
-- Indexes for table `charges`
--
ALTER TABLE `charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clothing`
--
ALTER TABLE `clothing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crates`
--
ALTER TABLE `crates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD UNIQUE KEY `id` (`id`,`divisionid`);

--
-- Indexes for table `entrances`
--
ALTER TABLE `entrances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `factionpay`
--
ALTER TABLE `factionpay`
  ADD UNIQUE KEY `id` (`id`,`rank`);

--
-- Indexes for table `factionranks`
--
ALTER TABLE `factionranks`
  ADD UNIQUE KEY `id` (`id`,`rank`);

--
-- Indexes for table `factions`
--
ALTER TABLE `factions`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `factionskins`
--
ALTER TABLE `factionskins`
  ADD UNIQUE KEY `id` (`id`,`slot`);

--
-- Indexes for table `flags`
--
ALTER TABLE `flags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `furniture`
--
ALTER TABLE `furniture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gangranks`
--
ALTER TABLE `gangranks`
  ADD UNIQUE KEY `id` (`id`,`rank`);

--
-- Indexes for table `gangskins`
--
ALTER TABLE `gangskins`
  ADD UNIQUE KEY `id` (`id`,`slot`);

--
-- Indexes for table `garages`
--
ALTER TABLE `garages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `garbage`
--
ALTER TABLE `garbage`
  ADD PRIMARY KEY (`garbageID`);

--
-- Indexes for table `gates`
--
ALTER TABLE `gates`
  ADD PRIMARY KEY (`gateID`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kills`
--
ALTER TABLE `kills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landobjects`
--
ALTER TABLE `landobjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lands`
--
ALTER TABLE `lands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_admin`
--
ALTER TABLE `log_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_bans`
--
ALTER TABLE `log_bans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_cheat`
--
ALTER TABLE `log_cheat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_contracts`
--
ALTER TABLE `log_contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_faction`
--
ALTER TABLE `log_faction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_gang`
--
ALTER TABLE `log_gang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_give`
--
ALTER TABLE `log_give`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_namechanges`
--
ALTER TABLE `log_namechanges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_property`
--
ALTER TABLE `log_property`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_punishments`
--
ALTER TABLE `log_punishments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_referrals`
--
ALTER TABLE `log_referrals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_vip`
--
ALTER TABLE `log_vip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `object`
--
ALTER TABLE `object`
  ADD PRIMARY KEY (`mobjID`);

--
-- Indexes for table `ores`
--
ALTER TABLE `ores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phonebook`
--
ALTER TABLE `phonebook`
  ADD UNIQUE KEY `number` (`number`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `shots`
--
ALTER TABLE `shots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speedcameras`
--
ALTER TABLE `speedcameras`
  ADD PRIMARY KEY (`speedID`);

--
-- Indexes for table `texts`
--
ALTER TABLE `texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `turfs`
--
ALTER TABLE `turfs`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`vendorID`);

--
-- Indexes for table `weapons`
--
ALTER TABLE `weapons`
  ADD UNIQUE KEY `uid` (`uid`,`slot`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bans`
--
ALTER TABLE `bans`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `businesses`
--
ALTER TABLE `businesses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `charges`
--
ALTER TABLE `charges`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `clothing`
--
ALTER TABLE `clothing`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `crates`
--
ALTER TABLE `crates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entrances`
--
ALTER TABLE `entrances`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `flags`
--
ALTER TABLE `flags`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `furniture`
--
ALTER TABLE `furniture`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `garages`
--
ALTER TABLE `garages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `garbage`
--
ALTER TABLE `garbage`
  MODIFY `garbageID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `gates`
--
ALTER TABLE `gates`
  MODIFY `gateID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `kills`
--
ALTER TABLE `kills`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=394;

--
-- AUTO_INCREMENT for table `landobjects`
--
ALTER TABLE `landobjects`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lands`
--
ALTER TABLE `lands`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_admin`
--
ALTER TABLE `log_admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `log_bans`
--
ALTER TABLE `log_bans`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `log_cheat`
--
ALTER TABLE `log_cheat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `log_contracts`
--
ALTER TABLE `log_contracts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_faction`
--
ALTER TABLE `log_faction`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `log_gang`
--
ALTER TABLE `log_gang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300;

--
-- AUTO_INCREMENT for table `log_give`
--
ALTER TABLE `log_give`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_namechanges`
--
ALTER TABLE `log_namechanges`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_property`
--
ALTER TABLE `log_property`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `log_punishments`
--
ALTER TABLE `log_punishments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `log_referrals`
--
ALTER TABLE `log_referrals`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_vip`
--
ALTER TABLE `log_vip`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `object`
--
ALTER TABLE `object`
  MODIFY `mobjID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shots`
--
ALTER TABLE `shots`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `speedcameras`
--
ALTER TABLE `speedcameras`
  MODIFY `speedID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `texts`
--
ALTER TABLE `texts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `vendorID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
