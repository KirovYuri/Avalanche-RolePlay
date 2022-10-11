-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 07, 2022 at 06:34 AM
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
-- Database: `odkmlvax44`
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
(38, 0),
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
(1, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} 7/11 (500 Products left). Type /buy to purchase from this business.', 0, 10000000, 0, 0, 0, 1154.73, -1440.29, 15.797, 94.873, -27.438, -57.611, 1003.55, 0, 6, 3000001, 0, 0, 0, 499, 2, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

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
(27, 0, NULL, 'All Saints Hospital', 11738, 0, 3, 1172.08, -1325.34, 15.407, 93.503, -1110.8, 2000.95, -58.92, 177.119, 0, 2, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 22, -256),
(28, 0, NULL, 'City Hall', 1314, 0, 3, 1480.88, -1774.48, 15.356, 181.508, 1249.02, -651.732, 1090.79, 273.93, 1, 1, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 56, -256),
(30, 0, NULL, 'Backdoor', 1239, 0, 3, 1656.07, -971.614, 683.683, 89.792, 1433.84, -967.634, 37.391, 56.506, 0, 0, 1, 4000029, 0, 0, 0, 0, 1, 'None', 1, -1, -256),
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
(131, 0, NULL, '((Press Y to exit))', 1239, 0, 3, 1564.97, -1667, 28.396, -59.325, -1977.77, -848.698, 4441.2, 94.901, 1, 1, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 0, -256),
(136, 0, NULL, 'OPEN MEETING ROOM', 1239, 0, 3, 368.27, 194.207, 1008.38, -45.57, 0, 0, 0, 0, 0, 4000136, 3, 1, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(137, 0, NULL, '1st FLOOR - GROUND FLOOR', 1239, 0, 3, 350.143, 178.594, 1014.19, -172.571, 0, 0, 0, 0, 0, 4000137, 3, 1, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(138, 0, NULL, '2nd floor to 3rd floor', 1239, 0, 3, 344.676, 178.503, 1014.19, -171.318, 0, 0, 0, 0, 0, 4000138, 3, 1, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(139, 0, NULL, 'canteen', 1239, 0, 3, 333.397, 160.522, 1014.19, -79.534, 0, 0, 0, 0, 0, 4000139, 3, 1, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(144, 0, NULL, 'Paradise Bureau Of Investigatio', 1239, 0, 3, 328.335, -1512.14, 36.039, 54.586, 246.887, 62.41, 1003.64, 2.717, 6, 4000144, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 30, -256),
(150, 0, NULL, 'Tower', 1239, 0, 3, 1571.3, -1336.77, 16.484, 135.322, 1548.72, -1363.99, 326.218, 180.564, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(152, 0, NULL, '\"Prison Outside\"', 1239, 0, 3, -2776.08, 1294.35, 3127.16, -89.043, 170.325, 1401.57, 10.586, 185.816, 0, 0, 6, 1, 0, 0, 0, 0, 1, 'None', 1, -1, -256),
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
(202, 0, NULL, 'Banko Sentral Ng Paradise', 1239, 0, 3, 1459.42, -1009.92, 26.874, 177.513, 1667.13, -995.998, 683.691, 1.665, 1, 4000029, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 52, -256);

-- --------------------------------------------------------

--
-- Table structure for table `factionpay`
--

CREATE TABLE `factionpay` (
  `id` tinyint(2) DEFAULT NULL,
  `rank` tinyint(2) DEFAULT NULL,
  `amount` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `factionranks`
--

CREATE TABLE `factionranks` (
  `id` tinyint(2) DEFAULT NULL,
  `rank` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 'Los Santos Police Department', NULL, 'No-one', 1, 2359040, 15, -1963.13, -840.026, 4441.2, 1, 1, 3),
(2, 'Los Santos Fire And Medic Department', NULL, 'No-one', 2, -16733696, 15, -1101.34, 1980.18, -58.914, 0, 2, 0),
(3, 'Los Santos Government', NULL, 'No-one', 4, -5111808, 15, 280.481, 1832.45, 628.002, 0, 1, 0),
(4, 'Los Santos Auto Parts', NULL, 'No-one', 7, -2080440320, 15, -2031.29, -114.721, 1035.17, 3, 32131, 0),
(5, 'Paradise City News', NULL, 'No-one', 3, 33546752, 10, 256.008, 1778.29, 701.086, 0, 0, 0),
(6, 'Paradise City Bureau Of Investigation', NULL, 'No-one', 6, 1701554688, 15, 255.385, 77.273, 1003.64, 6, 4000144, 8),
(7, 'Paradise City Hitman Agency', NULL, 'No-one', 5, -1482184960, 5, 736.801, -1472.47, 22.516, 0, 0, 0),
(8, 'Paradise City Terrorist', NULL, 'No-one', 8, 1610612736, 10, 1107.17, -306.156, 74.162, 0, 0, 0),
(9, 'Paradise City Jail Management', NULL, 'No-one', 10, 10774784, 5, 0, 0, 0, 0, 0, 0),
(10, 'Las Venturas Police Department', NULL, 'No-one', 12, 3793664, 15, 260.763, 192.553, 1008.17, 3, 10323, 8),
(11, 'Las Venturas Fire And Medic Department', NULL, 'No-one', 11, -16589568, 15, -1100.86, 1980.01, -58.914, 0, 3, 0),
(12, 'Las Venturas Auto Parts', NULL, 'No-one', 7, 2097086976, 15, 1173.49, 1346.58, 10.922, 0, 0, 0),
(13, 'Las Venturas Government', NULL, 'No-one', 4, -7470592, 6, 1271.36, -667.829, 1090.79, 1, 100032, 0),
(14, 'Paradise City Armed Forces', NULL, 'No-one', 9, 1384400896, 15, 248.159, 1859.79, 14.084, 0, 0, 7);

-- --------------------------------------------------------

--
-- Table structure for table `factionskins`
--

CREATE TABLE `factionskins` (
  `id` tinyint(2) DEFAULT NULL,
  `slot` tinyint(2) DEFAULT NULL,
  `skinid` smallint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `gangranks`
--

CREATE TABLE `gangranks` (
  `id` tinyint(2) DEFAULT NULL,
  `rank` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `gangskins`
--

CREATE TABLE `gangskins` (
  `id` tinyint(2) DEFAULT NULL,
  `slot` tinyint(2) DEFAULT NULL,
  `skinid` smallint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(14, 0, 3, 0, 388.537, -2060.86, 10.7133, 0, 0, 160.486, 0, 0, 388.537, -2060.86, 0.7133, -1000, -1000, -1000, -1, -1, '', 5),
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
(52, 19303, 3, 0, 1843.8, -1714.33, 5206.41, 0, 0, -0.3555, 0, 0, 1845.25, -1714.34, 5206.41, 0, 0, -0.3555, -1, -1, '', 1),
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
(106, 980, 3, 0, 264.402, -1333.46, 53.2781, 0, 0, 31.8981, 0, 0, 264.402, -1333.46, 43.2781, -1000, -1000, -1000, -1, -1, 'jill', 5),
(108, 980, 3, 0, 321.587, -1188.12, 77.2244, 0, 0, 216.111, 0, 0, 321.587, -1188.12, 67.2244, -1000, -1000, -1000, -1, -1, 'james', 5),
(111, 980, 3, 0, 2345.41, -873.645, 114.521, 0, 0, 7.461, 0, 0, 2345.41, -873.645, 109.921, 0, 0, 7.461, -1, -1, 'sicario', 5),
(112, 980, 3, 0, 2185.11, -1776.37, 15.1683, 0, 0, 0.3386, 0, 0, 2185.11, -1776.37, 9.6484, 0, 0, 0.3386, -1, -1, 'KILLER', 5),
(121, 980, 3, 0, 553.95, -1886.33, 3.6947, 0, 0, 177.256, 0, 0, 553.95, -1886.33, -6.3052, -1000, -1000, -1000, -1, -1, '123', 5),
(124, 980, 3, 0, 1021.49, -376.576, 74.6533, 0, 0, 179.146, 0, 0, 929.404, -1689.74, 12.4816, 0, 0, 273.399, -1, -1, 'army', 5),
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
(137, 980, 3, 0, 2237.43, 2453.05, 9.6718, 0, 0, 89.7891, 0, 0, 2237.47, 2463.57, 9.6718, 0, 0, 89.7891, -1, 12, '', 5);

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
(2, 4, 4, 'Hay_Dry', 'Hay_Dry', 'Explosion', '2022-06-05 13:34:29');

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

-- --------------------------------------------------------

--
-- Table structure for table `log_cheat`
--

CREATE TABLE `log_cheat` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `log_gang`
--

CREATE TABLE `log_gang` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `log_punishments`
--

CREATE TABLE `log_punishments` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 'Material Pickup 2', 'Xyan_Devil', -1, 7, 0, 0, 2391.12, -2007.86, 13.554, 0, 0),
(2, 'Material Factory 1', 'Dwayne_X_Devil', -1, 8, 0, 0, 2172.95, -2264.72, 13.349, 0, 0),
(3, 'Material Factory 2', 'Foxz_Devil', -1, 9, 0, 0, 2288.19, -1104.65, 38.596, 0, 0),
(4, 'Crack Lab', 'Celer_X_Devil', -1, 3, 6875, 0, 2345.57, -1184.9, 1027.98, 5, 4000050),
(5, 'Drug House', 'Natasha_X_Devil', -1, 2, 0, 0, 323.115, 1119.06, 1083.88, 5, 4000051),
(6, 'Auto Export Company', 'Xyan_Devil', -1, 4, 134059, 0, 2729.33, -2451.36, 17.594, 0, 0),
(7, 'Fossil and Fuel Company', 'Xyan_Devil', -1, 5, 4, 0, 2629.83, -2108.5, 16.953, 0, 0),
(8, 'Drug Factory', 'Pending', -1, 1, 498, 0, 52.832, -293.302, 1.682, 0, 0),
(9, 'Los Santos Cemetery', 'Pending', -1, 4, 67509, 0, 815.124, -1108.22, 25.79, 0, 0),
(10, 'Yatch Harbour', 'Xyan_Devil', -1, 8, 0, 0, 386.804, -2028.5, 7.836, 0, 0),
(11, 'Telecom Company', 'Xyan_Devil', -1, 6, 0, 0, 1682.97, -2290.23, -1.229, 0, 0);

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
(1, 'Asia Zone Market', 'John_Angelo', 4, 10, 0, 1050.39, -1565.29, 1189.83, -1413.02, 13.547),
(2, 'Unity Station', 'Natasha_X_Devil', 12, 7, 0, 1698.45, -1942.81, 1818.66, -1846.41, 13.578),
(3, 'Skate Park', 'Bravo_Simon', 9, 10, 0, 1860.79, -1452.6, 1979.1, -1349.33, 13.554),
(4, 'Glen Park', 'John_Angelo', 4, 9, 0, 1859.89, -1254.1, 2059, -1143.17, 23.898),
(5, 'Ocean Docks', 'Chong_H_Wang', 12, 7, 0, 2167.89, -2690.58, 2255.18, -2525.45, 8.296),
(6, 'LS Stadium', 'Vhan_Devil', 12, 10, 0, 2650.34, -1869.07, 2816.95, -1660.8, 10.763),
(7, 'Business Park', 'Boy_Golden', 10, 10, 0, 453.554, -1582.54, 522.652, -1434.68, 15.715),
(8, 'Asia Zone Studio', 'Mark_Baisa', 10, 4, 0, 801.952, -1313.88, 936.26, -1155.15, 13.383),
(9, 'MontGomery', 'Boy_Golden', 10, 4, 0, 1180.11, 149.762, 1411.73, 395.403, 21.407),
(11, 'Asia Zone International Airport', 'Xyan_Devil', 12, 5, 0, 1354.61, -2370.24, 1566.32, -2201.98, 13.547),
(10, 'Light House', 'Xyan_Devil', 12, 10, 0, 127.316, -1969.6, 168.727, -1778.69, -0.589),
(12, 'Sf Mall Turfs', 'No-one', -1, 7, 0, -2114.71, -1000.67, -1974.16, -859.937, 32.023);

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

INSERT INTO `users` (`uid`, `username`, `password`, `regdate`, `lastlogin`, `login_date`, `ip`, `setup`, `gender`, `age`, `skin`, `camera_x`, `camera_y`, `camera_z`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `interior`, `world`, `cash`, `bank`, `paycheck`, `level`, `exp`, `minutes`, `hours`, `adminlevel`, `adminname`, `helperlevel`, `health`, `armor`, `upgradepoints`, `warnings`, `injured`, `hospital`, `spawnhealth`, `spawnarmor`, `jailtype`, `jailtime`, `newbiemuted`, `helpmuted`, `admuted`, `livemuted`, `globalmuted`, `reportmuted`, `reportwarns`, `fightstyle`, `locked`, `accent`, `cookies`, `phone`, `job`, `secondjob`, `crimes`, `arrested`, `wantedlevel`, `materials`, `pot`, `crack`, `meth`, `painkillers`, `seeds`, `ephedrine`, `muriaticacid`, `bakingsoda`, `cigars`, `walkietalkie`, `channel`, `rentinghouse`, `spraycans`, `boombox`, `mp3player`, `phonebook`, `fishingrod`, `fishingbait`, `fishweight`, `components`, `courierskill`, `fishingskill`, `guardskill`, `weaponskill`, `mechanicskill`, `lawyerskill`, `smugglerskill`, `toggletextdraws`, `toggleooc`, `togglephone`, `toggleadmin`, `togglehelper`, `togglenewbie`, `togglewt`, `toggleradio`, `togglevip`, `togglemusic`, `togglefaction`, `togglegang`, `togglenews`, `toggleglobal`, `togglecam`, `carlicense`, `pilotlicense`, `boatlicense`, `facemask`, `fmtime`, `vippackage`, `viptime`, `vipcooldown`, `weapon_0`, `weapon_1`, `weapon_2`, `weapon_3`, `weapon_4`, `weapon_5`, `weapon_6`, `weapon_7`, `weapon_8`, `weapon_9`, `weapon_10`, `weapon_11`, `weapon_12`, `ammo_0`, `ammo_1`, `ammo_2`, `ammo_3`, `ammo_4`, `ammo_5`, `ammo_6`, `ammo_7`, `ammo_8`, `ammo_9`, `ammo_10`, `ammo_11`, `ammo_12`, `faction`, `gang`, `factionrank`, `gangrank`, `division`, `contracted`, `contractby`, `bombs`, `completedhits`, `failedhits`, `reports`, `helprequests`, `speedometer`, `factionmod`, `gangmod`, `banappealer`, `potplanted`, `pottime`, `potgrams`, `pot_x`, `pot_y`, `pot_z`, `pot_a`, `inventoryupgrade`, `addictupgrade`, `traderupgrade`, `assetupgrade`, `laborupgrade`, `pistolammo`, `shotgunammo`, `smgammo`, `arammo`, `rifleammo`, `hpammo`, `poisonammo`, `fmjammo`, `ammotype`, `ammoweapon`, `dmwarnings`, `weaponrestricted`, `referral_uid`, `refercount`, `watch`, `gps`, `prisonedby`, `prisonreason`, `togglehud`, `clothes`, `showturfs`, `showlands`, `watchon`, `gpson`, `doublexp`, `couriercooldown`, `pizzacooldown`, `detectivecooldown`, `duty`, `bandana`, `detectiveskill`, `gascan`, `refunded`, `backpack`, `bpcash`, `bpmaterials`, `bppot`, `bpcrack`, `bpmeth`, `bppainkillers`, `bpweapon_0`, `bpweapon_1`, `bpweapon_2`, `bpweapon_3`, `bpweapon_4`, `bpweapon_5`, `bpweapon_6`, `bpweapon_7`, `bpweapon_8`, `bpweapon_9`, `bpweapon_10`, `bpweapon_11`, `bpweapon_12`, `bpweapon_13`, `bpweapon_14`, `bphpammo`, `bppoisonammo`, `bpfmjammo`, `formeradmin`, `deathcooldown`, `hunger`, `hungertimer`, `thirst`, `thirsttimer`, `covid`, `covidtimer`, `totalpatients`, `totalfires`, `rarecooldown`, `vipdlcooldown`, `customtitle`, `customcolor`, `mask`, `diamonds`, `ecoin`, `blindfold`, `rope`, `insurance`, `passport`, `passportname`, `passportlevel`, `passportskin`, `passportphone`, `marriedto`, `newbies`, `chatanim`, `Lottery`, `LotteryB`, `flashlight`, `candy`, `gunlicense`, `thiefskill`, `thiefcooldown`, `cocainecooldown`, `teacher`, `course`, `citizen`, `repairkit`, `firstaid`, `nationalid`, `dirtycash`, `comserv`, `groupleader`, `pgroup`, `task1`, `task2`, `task3`, `task4`, `task5`, `claimed1`, `claimed2`, `claimed3`, `claimed4`, `claimed5`, `loadexpire`, `loads`, `bindslot1`, `bindslot2`, `bindslot3`, `bindslot4`, `bindslot5`, `bindslot6`, `bindslot7`, `bindslot8`, `voicechat`, `discordtag`, `discordname`, `discordid`, `verified`, `code`) VALUES
(1, 'Carl_Andrei', '643B48003AA0305F0D9B5B0AD468B42C63C48E4CA809A5EC9874FFBAAA55297535F2824B7904491BFE75ED5552B0240FF6AE5F123550D4E3A75105067A35E65F', '2022-06-07 05:23:40', '2022-06-07 05:29:39', NULL, '112.200.175.69', 0, 1, 17, 299, 1522.09, -2198.61, 14.444, 1518.97, -2197.11, 13.375, 66.259, 0, 0, 500, 500, 0, 1, 0, 4, 0, 0, 'None', 0, 96.04, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 140, 99, 20, 1, 20, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(2, 'Jinggoy_Estrada', 'EAA18FA9CAA3AED6BD5784C8BF8F052035E0883BBDB3F0ACE470920D543AEDB61A016E1422D39D20584AEBDAD97C163756D1871A2CC715410B23F89C01C14ED9', '2022-06-07 05:24:00', '2022-06-07 06:29:51', NULL, '49.144.41.242', 0, 1, 23, 299, 1161.49, -1492.06, 16.766, 1163.44, -1489.36, 15.386, 337.729, 0, 0, 40501, 500, 0, 1, 0, 21, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 914002, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94, 94, 91, 94, 9, 94, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 0, 'None', 'None#0000', 0, 0),
(3, 'Kovalchin_Bolkov', 'F994942C8011B348B2DAA47EEE40E8A13D8852A360C5BB47CFACCF7E97294D3A935E1EB3EE300AE5F29E8A30C896A34DE453E335B2771A2D46190EB3B95B4DB8', '2022-06-07 05:31:05', '2022-06-07 06:26:14', NULL, '49.145.118.140', 0, 1, 21, 299, 1969.62, -1756.42, 14.619, 1961.18, -1754.06, 12.956, 169.552, 0, 0, 20500, 500, 0, 1, 0, 16, 0, 7, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1655184701, 0, 0, 0, 24, 27, 0, 31, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 47, 96, 107, 4, 107, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 51, 'Haydrax', '51', 1, 0),
(4, 'Bahug_Bellath', '643B48003AA0305F0D9B5B0AD468B42C63C48E4CA809A5EC9874FFBAAA55297535F2824B7904491BFE75ED5552B0240FF6AE5F123550D4E3A75105067A35E65F', '2022-06-07 05:39:28', '2022-06-07 06:23:23', NULL, '112.200.175.69', 0, 1, 27, 23, 1124.41, -1409.87, 14.307, 1127.77, -1410.73, 13.456, 356.764, 0, 0, 500, 500, 0, 1, 0, 35, 0, 7, 'BILLATH', 0, 89.77, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 14, 82, 14, 18, 14, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 51, 'BahogBee', '55', 1, 0),
(5, 'Xenu_Cleezy', '26C757A96779E029E8998BE8FAF2617327A9719B0329D2E44A16EF319198DFB267FD0115F1245B51B3DF8826E8F5F43BF6F354FBF4324231D660499A0A3D3387', '2022-06-07 05:41:09', '2022-06-07 05:45:59', NULL, '120.29.109.43', 0, 1, 20, 299, 1486.84, -1735.71, 14.261, 1483.46, -1734.85, 13.383, 122.811, 0, 0, 0, 500, 0, 1, 0, 14, 0, 6, 'None', 0, 95.05, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 83, 94, 83, 6, 83, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 50, 'Xenu PH', '55', 1, 0),
(6, 'Rexxon_Santoyo', '254EEB956CBA92A41FCD05F8923CB65A55FC633FCADEF5CC2C278BDC0EE6A00926BE7DEA51F94CD562865D4444A5D67B9272EBBDF3DBB0157C77FB9B0A3D4713', '2022-06-07 06:10:18', '2022-06-07 06:10:18', NULL, '110.54.150.109', 0, 1, 13, 299, 1126.94, -1406.78, 15.214, 1127.9, -1409.93, 13.452, 183.732, 0, 0, 500, 500, 0, 1, 0, 14, 0, 5, 'None', 0, 75.25, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 132, 93, 12, 7, 12, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', NULL, 50, 'rexxon santoyo', '57', 1, 0);

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
  `fmjammo` smallint(5) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `ownerid`, `owner`, `modelid`, `price`, `tickets`, `locked`, `dlock`, `dlocked`, `plate`, `fuel`, `health`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `color1`, `color2`, `paintjob`, `registered`, `interior`, `world`, `neon`, `neonenabled`, `alarm`, `trunk`, `mod_1`, `mod_2`, `mod_3`, `mod_4`, `mod_5`, `mod_6`, `mod_7`, `mod_8`, `mod_9`, `mod_10`, `mod_11`, `mod_12`, `mod_13`, `mod_14`, `cash`, `materials`, `pot`, `crack`, `meth`, `painkillers`, `weapon_1`, `weapon_2`, `weapon_3`, `ammo_1`, `ammo_2`, `ammo_3`, `gangid`, `factiontype`, `job`, `respawndelay`, `impounded`, `pistolammo`, `shotgunammo`, `smgammo`, `arammo`, `rifleammo`, `hpammo`, `poisonammo`, `fmjammo`) VALUES
(2, 1, 'Hay_Drax', 462, 0, 0, 0, 0, 0, 'None', 91, 1000, 1598.33, -2249.68, 12.957, 265.574, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 7, 'Don_CardoYT', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1635.65, -2245.47, 13.496, 1.493, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 8, 'Gon_Bovino', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1636.45, -2245.11, 13.496, 125.311, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 10, 'Rylee_E_Escobar', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1642.69, -2239.16, 13.495, 0, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 3, 'Kovalchin_Bolkov', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1539.66, -2218.81, 13.547, 45.701, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `businesses`
--
ALTER TABLE `businesses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `charges`
--
ALTER TABLE `charges`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `clothing`
--
ALTER TABLE `clothing`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `crates`
--
ALTER TABLE `crates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entrances`
--
ALTER TABLE `entrances`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `flags`
--
ALTER TABLE `flags`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `furniture`
--
ALTER TABLE `furniture`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `garages`
--
ALTER TABLE `garages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gates`
--
ALTER TABLE `gates`
  MODIFY `gateID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kills`
--
ALTER TABLE `kills`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_bans`
--
ALTER TABLE `log_bans`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_cheat`
--
ALTER TABLE `log_cheat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_contracts`
--
ALTER TABLE `log_contracts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_faction`
--
ALTER TABLE `log_faction`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_gang`
--
ALTER TABLE `log_gang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_punishments`
--
ALTER TABLE `log_punishments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

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
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `vendorID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
