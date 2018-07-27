-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2018 at 06:55 AM
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
  `testchange` varchar(255) NOT NULL,
  `correct` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `draugiem`
--

INSERT INTO `draugiem` (`id`, `username`, `test`, `testchange`, `correct`) VALUES
(1, 'Edgars', 'test1', 'test111', '2'),
(2, 'Edgars', 'test2', 'test211', '1'),
(3, 'Edgars', 'test3', 'test311', '3');

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
(1, 'Cik ir 64/8?', '6', '8', '16', '2', '8');

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
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `test3`
--

INSERT INTO `test3` (`id`, `jautajums`, `atbilde1`, `atbilde2`, `atbilde3`, `atbilde4`, `answer`) VALUES
(1, 'Kads ir zemes radiuss?', '6378.1 km', '534.2 km', '634.2 km', 'Zeme ir plakana!', '6378.1 km');

-- --------------------------------------------------------

--
-- Table structure for table `test11`
--

CREATE TABLE `test11` (
  `id` int(11) NOT NULL,
  `jautajums` varchar(255) NOT NULL,
  `atbilde1` varchar(255) NOT NULL,
  `atbilde2` varchar(255) NOT NULL,
  `atbilde3` varchar(255) NOT NULL,
  `atbilde4` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `test11`
--

INSERT INTO `test11` (`id`, `jautajums`, `atbilde1`, `atbilde2`, `atbilde3`, `atbilde4`, `answer`) VALUES
(1, 'Kas ir lielakais cilveka organs?', 'sirds', 'plaushas', 'ada', 'smadzenes', 'ada');

-- --------------------------------------------------------

--
-- Table structure for table `test21`
--

CREATE TABLE `test21` (
  `id` int(11) NOT NULL,
  `jautajums` varchar(255) NOT NULL,
  `atbilde1` varchar(255) NOT NULL,
  `atbilde2` varchar(255) NOT NULL,
  `atbilde3` varchar(255) NOT NULL,
  `atbilde4` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `test21`
--

INSERT INTO `test21` (`id`, `jautajums`, `atbilde1`, `atbilde2`, `atbilde3`, `atbilde4`, `answer`) VALUES
(1, 'Kur dzivo zivis?', 'udeni', 'zeme', 'kosmosa', 'liesmas', 'udeni');

-- --------------------------------------------------------

--
-- Table structure for table `test31`
--

CREATE TABLE `test31` (
  `id` int(11) NOT NULL,
  `jautajums` varchar(255) NOT NULL,
  `atbilde1` varchar(255) NOT NULL,
  `atbilde2` varchar(255) NOT NULL,
  `atbilde3` varchar(255) NOT NULL,
  `atbilde4` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `test31`
--

INSERT INTO `test31` (`id`, `jautajums`, `atbilde1`, `atbilde2`, `atbilde3`, `atbilde4`, `answer`) VALUES
(1, 'Cik ir 6-9?', '0', '3', '-0', '-3', '-3');

-- --------------------------------------------------------

--
-- Table structure for table `test111`
--

CREATE TABLE `test111` (
  `id` int(11) NOT NULL,
  `jautajums` varchar(255) NOT NULL,
  `atbilde1` varchar(255) NOT NULL,
  `atbilde2` varchar(255) NOT NULL,
  `atbilde3` varchar(255) NOT NULL,
  `atbilde4` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `test111`
--

INSERT INTO `test111` (`id`, `jautajums`, `atbilde1`, `atbilde2`, `atbilde3`, `atbilde4`, `answer`) VALUES
(1, 'Kas ir smagaks?', '1kg', '1000g', '1ml', '1t', '1t');

-- --------------------------------------------------------

--
-- Table structure for table `test211`
--

CREATE TABLE `test211` (
  `id` int(11) NOT NULL,
  `jautajums` varchar(255) NOT NULL,
  `atbilde1` varchar(255) NOT NULL,
  `atbilde2` varchar(255) NOT NULL,
  `atbilde3` varchar(255) NOT NULL,
  `atbilde4` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `test211`
--

INSERT INTO `test211` (`id`, `jautajums`, `atbilde1`, `atbilde2`, `atbilde3`, `atbilde4`, `answer`) VALUES
(1, 'Cik burtu ir Italu alfabeta?', '27', '33', '21', '26', '21');

-- --------------------------------------------------------

--
-- Table structure for table `test311`
--

CREATE TABLE `test311` (
  `id` int(11) NOT NULL,
  `jautajums` varchar(255) NOT NULL,
  `atbilde1` varchar(255) NOT NULL,
  `atbilde2` varchar(255) NOT NULL,
  `atbilde3` varchar(255) NOT NULL,
  `atbilde4` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `test311`
--

INSERT INTO `test311` (`id`, `jautajums`, `atbilde1`, `atbilde2`, `atbilde3`, `atbilde4`, `answer`) VALUES
(1, 'Kads ir Latvijas telefonu indeks?', '+301', '-371', '371', '+371', '+371');

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
-- Indexes for table `test11`
--
ALTER TABLE `test11`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test21`
--
ALTER TABLE `test21`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test31`
--
ALTER TABLE `test31`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test111`
--
ALTER TABLE `test111`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test211`
--
ALTER TABLE `test211`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test311`
--
ALTER TABLE `test311`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `draugiem`
--
ALTER TABLE `draugiem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- AUTO_INCREMENT for table `test11`
--
ALTER TABLE `test11`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `test21`
--
ALTER TABLE `test21`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `test31`
--
ALTER TABLE `test31`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `test111`
--
ALTER TABLE `test111`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `test211`
--
ALTER TABLE `test211`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `test311`
--
ALTER TABLE `test311`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
