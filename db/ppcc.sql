-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2022 at 11:59 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppcc`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `booking_date` datetime NOT NULL,
  `rental_type` int(11) NOT NULL,
  `rent` float NOT NULL,
  `special_discount` float NOT NULL,
  `police_discount` float NOT NULL,
  `police_rel_discount` float NOT NULL,
  `income` float NOT NULL,
  `name` text NOT NULL,
  `posted_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `posted_by` varchar(100) NOT NULL,
  `updated_on` datetime NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `rent` float NOT NULL,
  `square_feet` float NOT NULL,
  `man_capacity` int(11) NOT NULL,
  `dyning_capacity` int(11) NOT NULL,
  `special_discount` float NOT NULL,
  `police_discount` float NOT NULL,
  `police_rel_discount` float NOT NULL,
  `posted_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `posted_by` varchar(100) NOT NULL,
  `updated_on` datetime NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `rent`, `square_feet`, `man_capacity`, `dyning_capacity`, `special_discount`, `police_discount`, `police_rel_discount`, `posted_on`, `posted_by`, `updated_on`, `updated_by`, `is_active`) VALUES
(1, 'Panorama 1', 200000, 10000, 1000, 500, 0, 25, 15, '2022-05-30 09:55:48', 'ren', '2022-05-30 11:51:30', 'ren', 1),
(2, 'Panorama 2', 100000, 5000, 500, 300, 0, 25, 15, '2022-05-30 09:55:48', 'ren', '2022-05-30 11:51:30', 'ren', 1),
(3, 'Panorama 3', 100000, 5000, 500, 300, 0, 25, 15, '2022-05-30 09:55:48', 'ren', '2022-05-30 11:51:30', 'ren', 1),
(4, 'Panorama 4', 50000, 3000, 300, 200, 0, 25, 15, '2022-05-30 09:55:48', 'ren', '2022-05-30 11:51:30', 'ren', 1);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `posted_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `posted_by` varchar(100) NOT NULL,
  `updated_on` datetime NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `vendor_discount` float NOT NULL,
  `posted_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `posted_by` varchar(100) NOT NULL,
  `updated_on` datetime NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
