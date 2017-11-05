-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2017 at 03:29 AM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dockyard`
--
CREATE DATABASE IF NOT EXISTS `dockyard` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `dockyard`;

-- --------------------------------------------------------

--
-- Table structure for table `boat`
--

CREATE TABLE `boat` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `type` enum('sail','motor') COLLATE utf8_bin NOT NULL,
  `length` decimal(4,2) NOT NULL,
  `work_description` text COLLATE utf8_bin NOT NULL,
  `photo` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `arrival_date` datetime NOT NULL,
  `delivery_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `boat`
--

INSERT INTO `boat` (`id`, `name`, `type`, `length`, `work_description`, `photo`, `arrival_date`, `delivery_date`) VALUES
(1, 'Boat One', 'sail', '7.60', 'Needs a new anchor', 'http://via.placeholder.com/350x150/51A143', '2017-04-23 10:00:00', '2017-04-27 10:00:00'),
(2, 'Boat Two', 'motor', '8.30', 'Needs a new engine', 'http://via.placeholder.com/350x150/269AB3', '2017-05-02 11:00:00', '2017-05-07 11:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `boat_worker`
--

CREATE TABLE `boat_worker` (
  `id` int(11) NOT NULL,
  `boat_id` int(11) NOT NULL,
  `worker_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `boat_worker`
--

INSERT INTO `boat_worker` (`id`, `boat_id`, `worker_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `worker`
--

CREATE TABLE `worker` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `phone` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `worker`
--

INSERT INTO `worker` (`id`, `name`, `phone`, `photo`) VALUES
(1, 'Worker One', '11111111', 'http://via.placeholder.com/150x150/DE8142'),
(2, 'Worker Two', '22222222', 'http://via.placeholder.com/150x150/B66AA3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `boat`
--
ALTER TABLE `boat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `boat_worker`
--
ALTER TABLE `boat_worker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `boat_id` (`boat_id`),
  ADD KEY `worker_id` (`worker_id`);

--
-- Indexes for table `worker`
--
ALTER TABLE `worker`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `boat`
--
ALTER TABLE `boat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `boat_worker`
--
ALTER TABLE `boat_worker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `worker`
--
ALTER TABLE `worker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `boat_worker`
--
ALTER TABLE `boat_worker`
  ADD CONSTRAINT `boat_worker_ibfk_1` FOREIGN KEY (`boat_id`) REFERENCES `boat` (`id`),
  ADD CONSTRAINT `boat_worker_ibfk_2` FOREIGN KEY (`worker_id`) REFERENCES `worker` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
