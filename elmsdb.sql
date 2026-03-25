-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 15, 2025 at 04:08 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '9de98a7421f11c520d54fc3644cbcd85', '2025-03-15 15:30:01');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
CREATE TABLE IF NOT EXISTS `manager` (
  `id` int NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'manager', '9de98a7421f11c520d54fc3644cbcd85', '2025-03-13 17:10:50');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

DROP TABLE IF EXISTS `tbldepartments`;
CREATE TABLE IF NOT EXISTS `tbldepartments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) DEFAULT NULL,
  `DepartmentCode` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `DepartmentCode`, `CreationDate`) VALUES
(1, 'Human Resource', 'HR', 'HR01', '2023-09-01 14:50:20'),
(2, 'Information Technology', 'IT', 'IT01', '2023-09-01 14:50:20'),
(3, 'Accounts', 'Accounts', 'ACCNT01', '2023-09-01 14:50:20'),
(4, 'ADMIN', 'Admin', 'ADMN01', '2023-09-01 14:50:20');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

DROP TABLE IF EXISTS `tblemployees`;
CREATE TABLE IF NOT EXISTS `tblemployees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `EmpId` varchar(100) NOT NULL,
  `FirstName` varchar(150) DEFAULT NULL,
  `LastName` varchar(150) DEFAULT NULL,
  `EmailId` varchar(200) DEFAULT NULL,
  `Password` varchar(180) DEFAULT NULL,
  `Gender` varchar(100) DEFAULT NULL,
  `Dob` varchar(100) DEFAULT NULL,
  `Department` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(200) DEFAULT NULL,
  `Country` varchar(150) DEFAULT NULL,
  `Phonenumber` char(11) DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `cl` int NOT NULL DEFAULT '2',
  `el` int NOT NULL DEFAULT '2',
  `sl` int NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`id`, `EmpId`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `City`, `Country`, `Phonenumber`, `Status`, `RegDate`, `cl`, `el`, `sl`) VALUES
(1, '10805121', 'Rahul', 'Kumar', 'rk1995@test.com', '9de98a7421f11c520d54fc3644cbcd85', 'Male', '3 August, 1995', 'Information Technology', 'A 123 XYZ Apartment ', 'New Delhi', 'India', '12121212', 1, '2024-09-10 14:56:23', 12, 12, 12),
(2, '10235612', 'Garima', 'Yadav', 'grama123@gmail.com', '9de98a7421f11c520d54fc3644cbcd85', 'Female', '2 January, 1997', 'Accounts', 'Hno 123 ABC Colony', 'New Delhi', 'India', '7485963210', 1, '2024-09-10 14:56:23', 12, 12, 12),
(5, '7856214', 'John', 'Doe', 'jhn12@gmail.com', '9de98a7421f11c520d54fc3644cbcd85', 'Male', '3 January, 1995', 'Accounts', 'H no 1', 'Ghaziabad ', 'India', '23232323', 1, '2024-09-10 14:56:23', 12, 12, 12),
(6, '4000', 'Umarani', 'G', 'umaranigopi22@gmail.com', '9de98a7421f11c520d54fc3644cbcd85', 'Female', '22 November, 2004', 'Accounts', 'rajajii street', 'Gudiyattam', 'India', '9008007891', 1, '2025-02-08 11:59:09', 12, 12, 12),
(7, '190004', 'Saran', 'Raj', 'saran@testmail.com', '9de98a7421f11c520d54fc3644cbcd85', 'Male', '2000-01-01', 'Information Technology', 'Test', 'Chennai', 'India', '9876543210', 1, '2025-03-15 16:05:22', 12, 12, 12);

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves`
--

DROP TABLE IF EXISTS `tblleaves`;
CREATE TABLE IF NOT EXISTS `tblleaves` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LeaveType` varchar(110) DEFAULT NULL,
  `ToDate` varchar(120) DEFAULT NULL,
  `FromDate` varchar(120) DEFAULT NULL,
  `Description` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` mediumtext,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `IsRead` int DEFAULT NULL,
  `empid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `UserEmail` (`empid`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblleavetype`
--

DROP TABLE IF EXISTS `tblleavetype`;
CREATE TABLE IF NOT EXISTS `tblleavetype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleavetype`
--

INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `CreationDate`) VALUES
(1, 'Casual Leaves', 'Casual Leaves', '2024-09-01 14:52:22'),
(2, 'Earned Leaves', 'Earned Leaves', '2024-09-01 14:52:22'),
(3, 'Sick Leaves', 'Sick Leaves', '2024-09-01 14:52:22');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
