-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2018 at 12:52 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rcs_web_server`
--

-- --------------------------------------------------------

--
-- Table structure for table `draugiem`
--

CREATE TABLE `draugiem` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `test` varchar(255) NOT NULL,
  `correct` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `draugiem`
--

INSERT INTO `draugiem` (`id`, `username`, `test`, `correct`) VALUES
(1, 'Ieva', 'test1', 26),
(2, 'oxty', 'test1', 0),
(3, 'william', 'test2', 0),
(4, 'alex', 'test3', 0),
(23, 'Ieva', 'test3', 11),
(56, 'Swag', 'test1', 1),
(57, '20', 'test1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `test1`
--

CREATE TABLE `test1` (
  `id` int(11) NOT NULL,
  `jautajums` varchar(255) NOT NULL,
  `atbilde1` varchar(255) NOT NULL,
  `atbilde2` varchar(255) NOT NULL,
  `atbilde3` varchar(255) NOT NULL,
  `atbilde4` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `test1`
--

INSERT INTO `test1` (`id`, `jautajums`, `atbilde1`, `atbilde2`, `atbilde3`, `atbilde4`, `answer`) VALUES
(1, 'Cik ir 2+2?', '2', '3', '4', '8', '4');

-- --------------------------------------------------------

--
-- Table structure for table `test2`
--

CREATE TABLE `test2` (
  `id` int(11) NOT NULL,
  `jautajums` varchar(255) NOT NULL,
  `atbilde1` varchar(255) NOT NULL,
  `atbilde2` varchar(255) NOT NULL,
  `atbilde3` varchar(255) NOT NULL,
  `atbilde4` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `test2`
--

INSERT INTO `test2` (`id`, `jautajums`, `atbilde1`, `atbilde2`, `atbilde3`, `atbilde4`, `answer`) VALUES
(1, 'What\'s the atomic number for chemical element oxygen?', '6', '8', '16', '2', '8');

-- --------------------------------------------------------

--
-- Table structure for table `test3`
--

CREATE TABLE `test3` (
  `id` int(11) NOT NULL,
  `jautajums` varchar(255) NOT NULL,
  `atbilde1` varchar(255) NOT NULL,
  `atbilde2` varchar(255) NOT NULL,
  `atbilde3` varchar(255) NOT NULL,
  `atbilde4` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `test` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `test3`
--

INSERT INTO `test3` (`id`, `jautajums`, `atbilde1`, `atbilde2`, `atbilde3`, `atbilde4`, `answer`, `test`) VALUES
(1, 'what\'s the radius of earth?', '6378.1 km', '534.2 km', '634.2 km', 'Earth is flat!', '6378.1 km', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `draugiem`
--
ALTER TABLE `draugiem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test1`
--
ALTER TABLE `test1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test2`
--
ALTER TABLE `test2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test3`
--
ALTER TABLE `test3`
  ADD PRIMARY KEY (`test`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `draugiem`
--
ALTER TABLE `draugiem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `test1`
--
ALTER TABLE `test1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `test2`
--
ALTER TABLE `test2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `test3`
--
ALTER TABLE `test3`
  MODIFY `test` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
