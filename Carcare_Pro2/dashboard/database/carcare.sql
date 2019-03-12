-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 08, 2019 at 10:42 AM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carcare`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `user`, `pass`) VALUES
(1, 'admin', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `carid` int(10) NOT NULL,
  `cartype` varchar(100) NOT NULL,
  `carsize` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`carid`, `cartype`, `carsize`) VALUES
(1, 'รถยนต์', 'M'),
(2, 'จักรยานยนต์', 'S');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cusid` int(10) NOT NULL,
  `cusno` text NOT NULL,
  `cusname` varchar(100) NOT NULL,
  `cusbirth` varchar(80) NOT NULL,
  `cusold` varchar(50) NOT NULL,
  `cusaddress` varchar(300) NOT NULL,
  `custal` text NOT NULL,
  `cuscar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cusid`, `cusno`, `cusname`, `cusbirth`, `cusold`, `cusaddress`, `custal`, `cuscar`) VALUES
(1, '001', 'อรรฆพล ศรีเรือง', '02/10/2539', '23', '218 ม1 ต.ศร อ.ชน จ.ขอน', '0942766441', 'บล2554'),
(4, '002', 'ดกด', '454/1514', '12', 'fdf', '0212', 'กดกด');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `empid` int(10) NOT NULL,
  `empname` varchar(200) NOT NULL,
  `empaddress` varchar(200) NOT NULL,
  `empold` int(10) NOT NULL,
  `emptal` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empid`, `empname`, `empaddress`, `empold`, `emptal`) VALUES
(1, 'ปาน', '23/52 ม1 ', 22, '0942766441'),
(2, 'po', 'dfdfdf', 84, '0854215472');

-- --------------------------------------------------------

--
-- Table structure for table `orderproduct`
--

CREATE TABLE `orderproduct` (
  `ordid` int(10) NOT NULL,
  `ordproduct` varchar(100) NOT NULL,
  `ordnum` int(20) NOT NULL,
  `ordprice` int(20) NOT NULL,
  `orddate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `paymant`
--

CREATE TABLE `paymant` (
  `payid` int(10) NOT NULL,
  `cusname` varchar(100) NOT NULL,
  `service` varchar(200) NOT NULL,
  `total` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `serid` int(10) NOT NULL,
  `cusname` varchar(100) NOT NULL,
  `sercar` varchar(200) NOT NULL,
  `cartype` varchar(200) NOT NULL,
  `carsize` varchar(200) NOT NULL,
  `servname` varchar(100) NOT NULL,
  `serprice` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`serid`, `cusname`, `sercar`, `cartype`, `carsize`, `servname`, `serprice`) VALUES
(6, 'จิงจัง', 'วง5365', '', '', '', 700),
(7, 'ยา', 'ดพ8775', 'รถยนต์', 'M', 'ล้างสีภายนอก', 40);

-- --------------------------------------------------------

--
-- Table structure for table `servicetype`
--

CREATE TABLE `servicetype` (
  `servid` int(10) NOT NULL,
  `servname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `servicetype`
--

INSERT INTO `servicetype` (`servid`, `servname`) VALUES
(1, 'ล้างสีภายนอก'),
(2, 'ล้างห้องเครื่อง'),
(3, 'ล้างดูดฝุ่นทำความสะอาดภายใน'),
(4, 'เคลือบสี'),
(5, 'ขัดเคลือบสี');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`carid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cusid`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `orderproduct`
--
ALTER TABLE `orderproduct`
  ADD PRIMARY KEY (`ordid`);

--
-- Indexes for table `paymant`
--
ALTER TABLE `paymant`
  ADD PRIMARY KEY (`payid`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`serid`);

--
-- Indexes for table `servicetype`
--
ALTER TABLE `servicetype`
  ADD PRIMARY KEY (`servid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cusid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `empid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `serid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `servicetype`
--
ALTER TABLE `servicetype`
  MODIFY `servid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
