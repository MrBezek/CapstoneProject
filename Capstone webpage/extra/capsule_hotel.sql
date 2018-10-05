-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Aug 11, 2016 at 01:23 PM
-- Server version: 5.5.49-log
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capsule_hotel`
--
CREATE DATABASE IF NOT EXISTS `capsule_hotel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `capsule_hotel`;

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

DROP TABLE IF EXISTS `billing`;
CREATE TABLE IF NOT EXISTS `billing` (
  `BillingID` int(11) NOT NULL,
  `BillingCCNumber` varchar(19) NOT NULL,
  `BillingCCexpmonth` int(11) NOT NULL,
  `BillingCCexpyear` int(11) NOT NULL,
  `BillingCCSecurity` varchar(4) NOT NULL,
  `BillingCCName` varchar(45) NOT NULL,
  `Person_PersonID` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`BillingID`, `BillingCCNumber`, `BillingCCexpmonth`, `BillingCCexpyear`, `BillingCCSecurity`, `BillingCCName`, `Person_PersonID`) VALUES
(16, '4111111111111111', 11, 21, '123', 'Jim Beam', 28),
(17, '340000000000009', 2, 17, '778', 'Susan A. Smith', 29),
(18, '340000000000009', 2, 17, '778', 'Susan A. Smith', 30),
(19, '340000000000009', 2, 17, '778', 'Susan A. Smith', 31),
(20, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 32),
(21, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 33),
(22, '4111111111111111', 11, 21, '123', 'Jim Beam', 34),
(23, '4111111111111111', 11, 21, '123', 'Jim Beam', 35),
(24, '4111111111111111', 11, 21, '123', 'Jim Beam', 36),
(25, '4111111111111111', 11, 21, '123', 'Jim Beam', 37),
(26, '340000000000009', 2, 17, '778', 'Susan A. Smith', 38),
(27, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 39),
(28, '4111111111111111', 11, 21, '123', 'Jim Beam', 40),
(29, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 41),
(30, '340000000000009', 2, 17, '778', 'Susan A. Smith', 42),
(31, '340000000000009', 2, 17, '778', 'Susan A. Smith', 43),
(32, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 44),
(33, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 45),
(34, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 46),
(35, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 47),
(36, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 48),
(37, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 49),
(38, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 50),
(39, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 51),
(40, '4111111111111111', 11, 21, '123', 'Jim Beam', 52),
(41, '4111111111111111', 11, 21, '123', 'Jim Beam', 53),
(42, '4111111111111111', 11, 21, '123', 'Jim Beam', 54),
(43, '4111111111111111', 11, 21, '123', 'Jim Beam', 55),
(44, '4111111111111111', 11, 21, '123', 'Jim Beam', 56),
(45, '4111111111111111', 11, 21, '123', 'Jim Beam', 57),
(46, '4111111111111111', 11, 21, '123', 'Jim Beam', 58),
(47, '4111111111111111', 11, 21, '123', 'Jim Beam', 59),
(48, '4111111111111111', 11, 21, '123', 'Jim Beam', 60),
(49, '4111111111111111', 11, 21, '123', 'Jim Beam', 61),
(50, '4111111111111111', 11, 21, '123', 'Jim Beam', 62),
(51, '4111111111111111', 11, 21, '123', 'Jim Beam', 63),
(52, '4111111111111111', 11, 21, '123', 'Jim Beam', 64),
(53, '4111111111111111', 11, 21, '123', 'Jim Beam', 65),
(54, '4111111111111111', 11, 21, '123', 'Jim Beam', 66),
(55, '4111111111111111', 11, 21, '123', 'Jim Beam', 67),
(56, '4111111111111111', 11, 21, '123', 'Jim Beam', 68),
(57, '4111111111111111', 11, 21, '123', 'Jim Beam', 69),
(58, '4111111111111111', 11, 21, '123', 'Jim Beam', 70),
(59, '4111111111111111', 11, 21, '123', 'Jim Beam', 71),
(60, '4111111111111111', 11, 21, '123', 'Jim Beam', 72),
(61, '4111111111111111', 11, 21, '123', 'Jim Beam', 73),
(62, '4111111111111111', 11, 21, '123', 'Jim Beam', 74),
(63, '4111111111111111', 11, 21, '123', 'Jim Beam', 75),
(64, '4111111111111111', 11, 21, '123', 'Jim Beam', 76),
(65, '4111111111111111', 11, 21, '123', 'Jim Beam', 77),
(66, '4111111111111111', 11, 21, '123', 'Jim Beam', 78),
(67, '4111111111111111', 11, 21, '123', 'Jim Beam', 79),
(68, '4111111111111111', 11, 21, '123', 'Jim Beam', 80),
(69, '4111111111111111', 11, 21, '123', 'Jim Beam', 81),
(70, '4111111111111111', 11, 21, '123', 'Jim Beam', 82),
(71, '4111111111111111', 11, 21, '123', 'Jim Beam', 83),
(72, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 84),
(73, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 85),
(74, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 86),
(75, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 87),
(76, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 88),
(77, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 89),
(78, '340000000000009', 2, 17, '778', 'Susan A. Smith', 90),
(79, '4111111111111111', 11, 21, '123', 'Jim Beam', 91),
(80, '340000000000009', 2, 17, '778', 'Susan A. Smith', 92),
(81, '5500000000000004', 1, 16, '304', 'Larry T. Lobster', 93),
(82, '340000000000009', 2, 17, '778', 'Susan A. Smith', 94),
(83, '4111111111111111', 11, 21, '123', 'Jim Beam', 95),
(84, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 96),
(85, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 97),
(86, '340000000000009', 2, 17, '778', 'Susan A. Smith', 98),
(87, '4111111111111111', 11, 21, '123', 'Jim Beam', 99),
(88, '5000000000223232', 7, 27, '123', 'Damen A. Bezek', 100),
(89, '5500000000003333', 7, 27, '456', 'Lindsey E. Bezek', 101),
(90, '340000000000009', 2, 17, '778', 'Susan A. Smith', 102),
(91, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 103),
(92, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 104),
(93, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 105),
(94, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 106),
(95, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 107),
(96, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 108),
(97, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 109),
(98, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 110),
(99, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 111),
(100, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 112),
(101, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 113),
(102, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 114),
(103, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 115),
(104, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 116),
(105, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 117),
(106, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 118),
(107, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 119),
(108, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 120),
(109, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 121),
(110, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 122),
(111, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 123),
(112, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 124),
(113, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 125),
(114, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 126),
(115, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 127),
(116, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 128),
(117, '5500000000000004', 7, 24, '304', 'Larry T. Lobster', 129),
(118, '4111111111111111', 11, 21, '123', 'Jim Beam', 130);

-- --------------------------------------------------------

--
-- Table structure for table `capsule`
--

DROP TABLE IF EXISTS `capsule`;
CREATE TABLE IF NOT EXISTS `capsule` (
  `CapsuleID` int(11) NOT NULL,
  `CapsuleNumber` int(11) NOT NULL,
  `CapsuleStatus` varchar(1) NOT NULL,
  `Person_PersonID` int(11) DEFAULT NULL,
  `Maintenance_MaintenanceID` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `capsule`
--

INSERT INTO `capsule` (`CapsuleID`, `CapsuleNumber`, `CapsuleStatus`, `Person_PersonID`, `Maintenance_MaintenanceID`) VALUES
(1, 1, 'a', NULL, NULL),
(2, 2, 'a', NULL, NULL),
(3, 3, 'c', NULL, NULL),
(4, 4, 'c', NULL, NULL),
(5, 5, 'a', NULL, NULL),
(6, 6, 'a', NULL, NULL),
(7, 7, 'o', 94, NULL),
(8, 8, 'a', NULL, NULL),
(9, 9, 'a', NULL, NULL),
(10, 10, 'a', NULL, NULL),
(11, 11, 'a', NULL, NULL),
(12, 12, 'a', NULL, NULL),
(13, 13, 'a', NULL, NULL),
(14, 14, 'a', NULL, NULL),
(15, 15, 'a', NULL, NULL),
(16, 16, 'a', NULL, NULL),
(17, 17, 'a', NULL, NULL),
(18, 18, 'a', NULL, NULL),
(19, 19, 'a', NULL, NULL),
(20, 20, 'a', NULL, NULL),
(21, 21, 'a', NULL, NULL),
(22, 22, 'a', NULL, NULL),
(23, 23, 'a', NULL, NULL),
(24, 24, 'a', NULL, NULL),
(25, 25, 'a', NULL, NULL),
(26, 26, 'a', NULL, NULL),
(27, 27, 'o', 100, NULL),
(28, 28, 'a', NULL, NULL),
(29, 29, 'o', 127, NULL),
(30, 30, 'a', NULL, NULL),
(31, 31, 'a', NULL, NULL),
(32, 32, 'a', NULL, NULL),
(33, 33, 'a', NULL, NULL),
(34, 34, 'a', NULL, NULL),
(35, 35, 'a', NULL, NULL),
(36, 36, 'a', NULL, NULL),
(37, 37, 'c', NULL, NULL),
(38, 38, 'm', NULL, 3),
(39, 39, 'a', NULL, NULL),
(40, 40, 'a', NULL, NULL),
(41, 41, 'a', NULL, NULL),
(42, 42, 'a', NULL, NULL),
(43, 43, 'a', NULL, NULL),
(44, 44, 'a', NULL, NULL),
(45, 45, 'a', NULL, NULL),
(46, 46, 'a', NULL, NULL),
(47, 47, 'a', NULL, NULL),
(48, 48, 'a', NULL, NULL),
(49, 49, 'a', NULL, NULL),
(50, 50, 'o', 130, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cost`
--

DROP TABLE IF EXISTS `cost`;
CREATE TABLE IF NOT EXISTS `cost` (
  `costKey` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `cost` float NOT NULL,
  `rate` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cost`
--

INSERT INTO `cost` (`costKey`, `type`, `cost`, `rate`) VALUES
(1, 'capsule', 5, 'hourly');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance`
--

DROP TABLE IF EXISTS `maintenance`;
CREATE TABLE IF NOT EXISTS `maintenance` (
  `MaintenanceID` int(11) NOT NULL,
  `MaintenanceProbTV` tinyint(1) DEFAULT NULL,
  `MaintenanceProbCC` tinyint(1) DEFAULT NULL,
  `MaintenanceProbLight` tinyint(1) DEFAULT NULL,
  `MaintenanceProbBody` tinyint(1) DEFAULT NULL,
  `MaintenanceNotes` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `maintenance`
--

INSERT INTO `maintenance` (`MaintenanceID`, `MaintenanceProbTV`, `MaintenanceProbCC`, `MaintenanceProbLight`, `MaintenanceProbBody`, `MaintenanceNotes`) VALUES
(1, 0, 0, 1, 1, 'Light burnt out, body is cracked'),
(2, 0, 0, 1, 1, 'some stuff is messed up'),
(3, 0, 1, 0, 0, 'Center console busted');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
CREATE TABLE IF NOT EXISTS `person` (
  `PersonID` int(11) NOT NULL,
  `PersonFirstName` varchar(45) NOT NULL,
  `PersonLastName` varchar(45) NOT NULL,
  `PersonAddressLine1` varchar(60) NOT NULL,
  `PersonAddressLine2` varchar(60) DEFAULT NULL,
  `PersonAddressCity` varchar(20) NOT NULL,
  `PersonState` varchar(16) NOT NULL,
  `PersonZipCode` varchar(9) NOT NULL,
  `PersonLengthOfStay` int(11) DEFAULT NULL,
  `PersonGender` varchar(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`PersonID`, `PersonFirstName`, `PersonLastName`, `PersonAddressLine1`, `PersonAddressLine2`, `PersonAddressCity`, `PersonState`, `PersonZipCode`, `PersonLengthOfStay`, `PersonGender`) VALUES
(28, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(29, 'Susan', 'Smith', '30330 Rompchester', '', 'Denver', 'colorado', '80123', 11, 'f'),
(30, 'Susan', 'Smith', '30330 Rompchester', '', 'Denver', 'colorado', '80123', 11, 'f'),
(31, 'Susan', 'Smith', '30330 Rompchester', '', 'Denver', 'colorado', '80123', 11, 'f'),
(32, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(33, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(34, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(35, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(36, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(37, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(38, 'Susan', 'Smith', '30330 Rompchester', '', 'Denver', 'colorado', '80123', 11, 'f'),
(39, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(40, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(41, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(42, 'Susan', 'Smith', '30330 Rompchester', '', 'Denver', 'colorado', '80123', 11, 'f'),
(43, 'Susan', 'Smith', '30330 Rompchester', '', 'Denver', 'colorado', '80123', 11, 'f'),
(44, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(45, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(46, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(47, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(48, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(49, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(50, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(51, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(52, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(53, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(54, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(55, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(56, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(57, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(58, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(59, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(60, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(61, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(62, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(63, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(64, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(65, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(66, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(67, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(68, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(69, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(70, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(71, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(72, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(73, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(74, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(75, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(76, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(77, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(78, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(79, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(80, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(81, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(82, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(83, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(84, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(85, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(86, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(87, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(88, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(89, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(90, 'Susan', 'Smith', '30330 Rompchester', '', 'Denver', 'colorado', '80123', 11, 'f'),
(91, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(92, 'Susan', 'Smith', '30330 Rompchester', '', 'Denver', 'colorado', '80123', 11, 'f'),
(93, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'alabama', '65615', 1, 'm'),
(94, 'Susan', 'Smith', '30330 Rompchester', '', 'Denver', 'colorado', '80123', 11, 'f'),
(95, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(96, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(97, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(98, 'Susan', 'Smith', '30330 Rompchester', '', 'Denver', 'colorado', '80123', 11, 'f'),
(99, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm'),
(100, 'Damen', 'Bezek', 'Some place AVE', '', 'Aurora', 'colorado', '80016', 10, 'm'),
(101, 'Lindsey', 'Bezek', 'Some place', '', 'Aurora', 'colorado', '80016', 8, 'f'),
(102, 'Susan', 'Smith', '30330 Rompchester', '', 'Denver', 'colorado', '80123', 11, 'f'),
(103, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(104, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(105, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(106, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(107, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(108, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(109, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(110, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(111, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(112, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(113, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(114, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(115, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(116, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(117, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(118, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(119, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(120, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(121, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(122, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(123, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(124, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(125, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(126, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(127, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(128, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(129, 'Larry', 'Lobster', '1550 Raspberry ct', 'apt 304', 'Branson', 'missouri', '65615', 6, 'm'),
(130, 'Jim', 'Beam', '18887 1st st', '', 'Clermont', 'kentucky', '34711', 2, 'm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`BillingID`),
  ADD KEY `fk_Billing_Person_idx` (`Person_PersonID`);

--
-- Indexes for table `capsule`
--
ALTER TABLE `capsule`
  ADD PRIMARY KEY (`CapsuleID`),
  ADD KEY `fk_Capsule_Person1_idx` (`Person_PersonID`),
  ADD KEY `fk_Capsule_Maintenance1_idx` (`Maintenance_MaintenanceID`);

--
-- Indexes for table `cost`
--
ALTER TABLE `cost`
  ADD PRIMARY KEY (`costKey`);

--
-- Indexes for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD PRIMARY KEY (`MaintenanceID`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`PersonID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `BillingID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT for table `capsule`
--
ALTER TABLE `capsule`
  MODIFY `CapsuleID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `cost`
--
ALTER TABLE `cost`
  MODIFY `costKey` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `maintenance`
--
ALTER TABLE `maintenance`
  MODIFY `MaintenanceID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `PersonID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=131;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `billing`
--
ALTER TABLE `billing`
  ADD CONSTRAINT `fk_Billing_Person` FOREIGN KEY (`Person_PersonID`) REFERENCES `person` (`PersonID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `capsule`
--
ALTER TABLE `capsule`
  ADD CONSTRAINT `fk_Capsule_Maintenance1` FOREIGN KEY (`Maintenance_MaintenanceID`) REFERENCES `maintenance` (`MaintenanceID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Capsule_Person1` FOREIGN KEY (`Person_PersonID`) REFERENCES `person` (`PersonID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
