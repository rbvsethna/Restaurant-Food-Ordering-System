-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2020 at 06:18 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_orders`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(70) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='details of all categoried';

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Starters'),
(2, 'BreakFast'),
(3, 'Lunch'),
(4, 'Snacks and Drinks');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(45) NOT NULL DEFAULT '',
  `qnt` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cost` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='item detail';

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `category_id`, `name`, `qnt`, `cost`) VALUES
(1, 1, 'Papad', 1, '20'),
(2, 1, 'Soup', 1, '50'),
(3, 2, 'Omlette', 2, '100'),
(4, 3, 'Biryani', 1, '80');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(45) NOT NULL DEFAULT '',
  `pass` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `user_name`, `pass`) VALUES
(1, 'cook', 'cook'),
(2, 'Ridmal', 'Ridmal');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `item_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `qnt` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `item_id`, `qnt`, `status`) VALUES
(27, 23, 2, 2, 'STARTED');

-- --------------------------------------------------------

--
-- Table structure for table `order_master`
--

CREATE TABLE `order_master` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_no` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(20) NOT NULL DEFAULT '',
  `order_date` date NOT NULL DEFAULT '0000-00-00',
  `order_time` time NOT NULL DEFAULT '00:00:00',
  `status` varchar(15) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_master`
--

INSERT INTO `order_master` (`id`, `table_no`, `name`, `order_date`, `order_time`, `status`) VALUES
(13, 1, '11', '2018-11-07', '11:04:29', 'IN_PROCESS'),
(14, 1, '23', '2018-11-07', '11:04:57', 'COOKED'),
(15, 1, 'NOW!', '2018-11-07', '16:55:48', 'JUST_ORDERED'),
(16, 1, '1', '2018-11-08', '15:40:55', 'IN_PROCESS'),
(17, 1, 'Starterss!', '2018-11-08', '16:30:18', 'JUST_ORDERED'),
(18, 1, '1', '2018-11-08', '16:30:57', 'JUST_ORDERED'),
(19, 1, '1', '2018-11-08', '16:31:12', 'JUST_ORDERED'),
(21, 1, 'Lunch', '2020-03-29', '12:45:35', 'DELIVERED'),
(22, 1, 'Dinner', '2020-03-29', '12:46:20', 'IN_PROCESS'),
(23, 1, 'Group Lunch', '2020-03-31', '10:11:17', 'JUST_ORDERED');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_master`
--
ALTER TABLE `order_master`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `order_master`
--
ALTER TABLE `order_master`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
