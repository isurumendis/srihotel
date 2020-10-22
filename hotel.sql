-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2020 at 05:37 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookhotel`
--

CREATE TABLE `bookhotel` (
  `id` int(11) NOT NULL,
  `postid` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phonenumber` int(200) NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `norooms` int(200) NOT NULL,
  `ppnumber` varchar(200) NOT NULL,
  `message` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookhotel`
--

INSERT INTO `bookhotel` (`id`, `postid`, `name`, `email`, `phonenumber`, `checkin`, `checkout`, `norooms`, `ppnumber`, `message`) VALUES
(1, 34, 'isuru', 'agaggagag', 66446545, '2020-10-30', '2020-10-31', 5, '544', 'adad');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(200) NOT NULL,
  `hotelname` varchar(6000) NOT NULL,
  `description` varchar(6000) NOT NULL,
  `contactno` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `links` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `hotelname`, `description`, `contactno`, `email`, `name`, `links`) VALUES
(25, 'sfsfsfsfsfsf', 'fafafafafaagga', '000000', 'jakhhkadjadhjada', 'agagasgsgagag', 'agagagagagag'),
(34, 'sfsgsGGGGGgg', 'sgsgsggsgsgsgsg', '5564544', 'sgsgsgsgsgsg', 'sgsgsgsgsgs', 'gsgsgsgsgsgssg'),
(35, 'zvvvzvxvzzbz', 'bzbzbzbbbzbzb', '5233535', 'vzvzvzbzbzbbbbbbzbz', 'zbzbzbzbzbzb', 'zbzbzbbzbzbzbzb'),
(36, 'ffafafagaggagga', 'gsgggwgwgwgwgwgwgwg', '51515665', 'waetaatawtegs', 'sgsgsgsgsgsgss', 'sgsgsgsgsgsgsg'),
(37, 'sfgsgsgskgnkfnklgag', 'aflhakfakfbklafafa', '23123', 'afafafafugakjbfafaf', 'afjagfugajfaf', 'www.facebook.com'),
(38, 'Hilton Grand Hotel', 'Hilton Hotels & Resorts is a global brand of full-service hotels and resorts and the flagship brand of American multinational hospitality company Hilton. The original company was founded by Conrad Hilton. ', '0112652254', 'development.americas@hilton.com', 'isuru', 'https://www.google.com'),
(39, 'hotel galadari', '\r\nGaladari Hotel Colombo - Quick and Secure Booking\r\nAdÂ·\r\nwww.booking.com/\r\nChoose from a wide range of properties which Booking.com offers. Search now! B', '250555', 'afaffafafaf', 'afafafaff', 'https://www.facebook.com'),
(40, 'galaszc', 'svsvsvv', '84564', 'ssfsfsfs', 'ssvsvvs', 'www.google.com');

-- --------------------------------------------------------

--
-- Table structure for table `eventbookd`
--

CREATE TABLE `eventbookd` (
  `id` int(11) NOT NULL,
  `postid` int(200) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phonenumber` int(200) NOT NULL,
  `birth` date NOT NULL,
  `participate` varchar(200) NOT NULL,
  `inumber` varchar(200) NOT NULL,
  `ppnumber` varchar(200) NOT NULL,
  `message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eventbookd`
--

INSERT INTO `eventbookd` (`id`, `postid`, `name`, `email`, `phonenumber`, `birth`, `participate`, `inumber`, `ppnumber`, `message`) VALUES
(1, 1, 'issa', 'mobitechmax@gmail.com', 702720439, '2020-10-08', '5', '85645', '554ddd', 'aadad');

-- --------------------------------------------------------

--
-- Table structure for table `ratin`
--

CREATE TABLE `ratin` (
  `id` int(11) NOT NULL,
  `hname` varchar(250) NOT NULL,
  `rval` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ratin`
--

INSERT INTO `ratin` (`id`, `hname`, `rval`) VALUES
(1, '1', 3);

-- --------------------------------------------------------

--
-- Table structure for table `registerf`
--

CREATE TABLE `registerf` (
  `id` int(200) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `pnumber` int(200) NOT NULL,
  `ppnumber` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registerf`
--

INSERT INTO `registerf` (`id`, `fname`, `lname`, `email`, `password`, `country`, `address`, `pnumber`, `ppnumber`) VALUES
(1, 'wrrwrw', 'wrwrwrw', 'sfsfsf', 'sfsfsf', 'ffhfhfh', 'fjfjfjfj', 56515, 5151),
(2, 'ggsgsgs', 'gsgsgsgsg', 'sgsgsgsgsg', 'sgsgsgsgs', 'sgsgsgsg', 'sgsgsgsgs', 546454, 445465),
(3, 'jayantha', 'mendis', 'mobitechmax@gmail.com', 'issa123', 'sri lanka', '70/5', 702720439, 55645),
(4, 'dilki', 'mendis', 'mobitechmax@gmail.com', 'issa123', 'sri lanka', '70/5', 702720439, 55645);

-- --------------------------------------------------------

--
-- Table structure for table `uplod`
--

CREATE TABLE `uplod` (
  `id` int(200) NOT NULL,
  `title` text NOT NULL,
  `stitle` text NOT NULL,
  `description` text NOT NULL,
  `reporter` varchar(250) NOT NULL,
  `pnumber` int(200) NOT NULL,
  `links` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uplod`
--

INSERT INTO `uplod` (`id`, `title`, `stitle`, `description`, `reporter`, `pnumber`, `links`) VALUES
(1, 'wfwffwfwfwwfw', 'fwfwfwfwfwfwfwfwfwf', 'wfwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwlafglwyffffgvwaygffgygbhbhwvyfwvyufwyfvywfwf', 'wfwjfwfbjwbf', 1566456, ''),
(2, 'sssssfsfsfs', 'sfsfsfsfsfsfsff', '', 'isuru', 98984984, 'https://www.google.com/'),
(3, 'isssssssssssa', 'sfsfsfsfsfsfsff', '', 'sgsgsgsgs', 98984984, 'https://www.google.com/');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookhotel`
--
ALTER TABLE `bookhotel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eventbookd`
--
ALTER TABLE `eventbookd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratin`
--
ALTER TABLE `ratin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registerf`
--
ALTER TABLE `registerf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uplod`
--
ALTER TABLE `uplod`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookhotel`
--
ALTER TABLE `bookhotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `eventbookd`
--
ALTER TABLE `eventbookd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ratin`
--
ALTER TABLE `ratin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `registerf`
--
ALTER TABLE `registerf`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `uplod`
--
ALTER TABLE `uplod`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
