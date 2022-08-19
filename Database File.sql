-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2022 at 06:05 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parkinn1`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `adminid` int(10) NOT NULL,
  `adminusername` varchar(20) DEFAULT NULL,
  `adminpassword` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`adminid`, `adminusername`, `adminpassword`) VALUES
(1, 'Yadav', '1234@'),
(3, 'Nagendra', '1234@'),
(4, 'Mahesh', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `customerinfo`
--

CREATE TABLE `customerinfo` (
  `customerid` int(10) NOT NULL,
  `title` varchar(5) DEFAULT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `emailid` varchar(50) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `phonenumber` decimal(10,0) DEFAULT NULL,
  `roomtype` varchar(20) DEFAULT NULL,
  `bedtype` varchar(20) DEFAULT NULL,
  `roomnos` decimal(2,0) DEFAULT NULL,
  `mealtype` varchar(20) DEFAULT NULL,
  `checkindate` date DEFAULT NULL,
  `checkoutdate` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `days` decimal(10,0) DEFAULT NULL,
  `people` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customerinfo`
--

INSERT INTO `customerinfo` (`customerid`, `title`, `fname`, `lname`, `emailid`, `nationality`, `country`, `phonenumber`, `roomtype`, `bedtype`, `roomnos`, `mealtype`, `checkindate`, `checkoutdate`, `status`, `days`, `people`) VALUES
(11, 'Dr', 'Kairam ', 'Vaashi', 'kairamvaashi@gmail.com', 'Indian', 'India', '9878987898', 'Standard Rooms', 'Single', '1', 'Full Board', '2022-02-12', '2022-02-18', 'Confirm', '6', '3'),
(13, 'Mr', 'Mahesh', 'Yadav', 'mahesh@gmail.com', 'Indian', 'India', '9999999999', 'Deluxe Rooms', 'Single', '1', 'Breakfast Only', '2022-02-13', '2022-02-23', 'Not Confirm', '10', '2'),
(15, 'Mr', 'kaushik', 'Yadav', 'kaushik@gmail.com', 'Indian', 'India', '9898989898', 'Apartment style', 'Double', '2', 'Breakfast and lunch', '2022-02-13', '2022-02-15', 'Not Confirm', '2', '1');

-- --------------------------------------------------------

--
-- Table structure for table `customerpayment`
--

CREATE TABLE `customerpayment` (
  `customerid` int(10) NOT NULL,
  `title` varchar(5) DEFAULT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `people` decimal(10,0) DEFAULT NULL,
  `roomtype` varchar(20) DEFAULT NULL,
  `bedtype` varchar(20) DEFAULT NULL,
  `checkindate` date DEFAULT NULL,
  `checkoutdate` date DEFAULT NULL,
  `mealtype` varchar(20) DEFAULT NULL,
  `roomprice` decimal(10,0) DEFAULT NULL,
  `bedprice` decimal(10,0) DEFAULT NULL,
  `mealprice` decimal(10,0) DEFAULT NULL,
  `grandtotal` decimal(10,0) DEFAULT NULL,
  `noofdays` decimal(10,0) DEFAULT NULL,
  `noroom` decimal(1,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customerpayment`
--

INSERT INTO `customerpayment` (`customerid`, `title`, `fname`, `lname`, `people`, `roomtype`, `bedtype`, `checkindate`, `checkoutdate`, `mealtype`, `roomprice`, `bedprice`, `mealprice`, `grandtotal`, `noofdays`, `noroom`) VALUES
(11, 'Dr', 'Kairam ', 'Vaashi', '3', 'Standard Rooms', 'Single', '2022-02-12', '2022-02-18', 'Full Board', '6000', '600', '36000', '42600', '6', '1');

-- --------------------------------------------------------

--
-- Table structure for table `hotelrooms`
--

CREATE TABLE `hotelrooms` (
  `roomid` int(10) NOT NULL,
  `roomtype` varchar(20) DEFAULT NULL,
  `beddingtype` varchar(20) DEFAULT NULL,
  `place` varchar(20) DEFAULT NULL,
  `cusid` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotelrooms`
--

INSERT INTO `hotelrooms` (`roomid`, `roomtype`, `beddingtype`, `place`, `cusid`) VALUES
(1, 'Standard Rooms', 'Single', 'Not Free', 11),
(2, 'Standard Rooms', 'Double', '0', 2),
(3, 'Standard Rooms', 'Triple', '0', NULL),
(4, 'Standard Rooms', 'Quad', '0', NULL),
(5, 'Deluxe Rooms', 'Single', 'Not Free', 8),
(6, 'Deluxe Rooms', 'Double', '0', 0),
(7, 'Deluxe Rooms', 'Triple', '0', 0),
(8, 'Deluxe Rooms', 'Quad', '0', NULL),
(9, 'Joint Rooms', 'Single', '0', NULL),
(10, 'Joint Rooms', 'Double', 'Not Free', 10),
(11, 'Joint Rooms', 'Triple', '0', NULL),
(12, 'Joint Rooms', 'Quad', '0', NULL),
(13, 'Apartment style', 'Single', '0', NULL),
(14, 'Apartment style', 'Double', '0', NULL),
(15, 'Apartment style', 'Triple', '0', NULL),
(16, 'Apartment style', 'Quad', '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `subscribersid` int(10) NOT NULL,
  `fullname` varchar(20) DEFAULT NULL,
  `phoneno` decimal(10,0) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `subscribeddate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`subscribersid`, `fullname`, `phoneno`, `email`, `subscribeddate`) VALUES
(1, 'Mahesh Yadav G', '9898989898', 'maheshyadav0170@gmai', '2022-02-12'),
(2, 'Nagendra G P', '9898989898', 'nagendragp@gmail.com', '2022-02-12'),
(3, 'Gaurav Chaudary', '9898989898', 'gaurav@gmail.com', '2022-02-12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `customerinfo`
--
ALTER TABLE `customerinfo`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `customerpayment`
--
ALTER TABLE `customerpayment`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `hotelrooms`
--
ALTER TABLE `hotelrooms`
  ADD PRIMARY KEY (`roomid`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`subscribersid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `adminid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customerinfo`
--
ALTER TABLE `customerinfo`
  MODIFY `customerid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `hotelrooms`
--
ALTER TABLE `hotelrooms`
  MODIFY `roomid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `subscribersid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customerpayment`
--
ALTER TABLE `customerpayment`
  ADD CONSTRAINT `customerpayment_ibfk_1` FOREIGN KEY (`customerid`) REFERENCES `customerinfo` (`customerid`),
  ADD CONSTRAINT `customerpayment_ibfk_2` FOREIGN KEY (`customerid`) REFERENCES `customerinfo` (`customerid`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
