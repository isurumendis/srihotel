-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2020 at 05:38 AM
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
-- Database: `event`
--

-- --------------------------------------------------------

--
-- Table structure for table `passchang`
--

CREATE TABLE `passchang` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `oldpassword` varchar(250) NOT NULL,
  `changedate` datetime NOT NULL,
  `action` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wedd`
--

CREATE TABLE `wedd` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `wday` date NOT NULL,
  `pword` varchar(250) NOT NULL,
  `cpword` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wedd`
--

INSERT INTO `wedd` (`id`, `name`, `email`, `wday`, `pword`, `cpword`) VALUES
(1, 'sdsds', 'sdsds', '2020-08-04', 'hhhhh', 'adadad'),
(2, 'sdsds', 'sdsds', '2020-08-04', 'hhhhh', 'adadad'),
(3, 'zdsds', 'mobitechmax@gmail.com', '2020-08-01', 'sssssssssds', 'sdsdsdssds'),
(4, 'ddfd', 'dfdfdf', '2020-08-06', 'dfdfdfdf', 'dfdfdfdfdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `passchang`
--
ALTER TABLE `passchang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wedd`
--
ALTER TABLE `wedd`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `passchang`
--
ALTER TABLE `passchang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wedd`
--
ALTER TABLE `wedd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
