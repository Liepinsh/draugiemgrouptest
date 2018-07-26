-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2018 at 03:51 PM
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
(57, '20', 'test1', 0),
(58, 'Nigg', 'test2', 0),
(59, 'Nigg', 'test1', 3);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `username`, `text`, `created_at`, `updated_at`) VALUES
(1, 'Edgars', 'Hello world!', NULL, NULL),
(2, 'Es', 'Pipele', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_06_22_111826_create_messages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` text,
  `productname` text,
  `price` int(11) DEFAULT NULL,
  `producttype` text,
  `typeinput` text,
  `AutoIncrement` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productname`, `price`, `producttype`, `typeinput`, `AutoIncrement`) VALUES
('GGWP007 ', 'War ', 20, 'book ', 'Weight: 2Kg ', 1),
('JVC200123 ', 'Acme Disc ', 1, 'disc ', 'Size: 700MB ', 2),
('TR120555', 'Chair', 250, 'furniture', 'Dimension: 240x450x150mm', 5),
('GGWP40', 'Peace', 90, 'book', 'Weight: 2Kg', 21);

-- --------------------------------------------------------

--
-- Table structure for table `skaistai`
--

CREATE TABLE `skaistai` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `skaistai`
--

INSERT INTO `skaistai` (`id`, `username`, `password`) VALUES
(1, 'Ieva', 'password');

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
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `test1`
--

INSERT INTO `test1` (`id`, `jautajums`, `atbilde1`, `atbilde2`, `atbilde3`, `answer`) VALUES
(1, 'Cik ir 2+2?', '2', '3', '4', '4');

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
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `test3`
--

INSERT INTO `test3` (`id`, `jautajums`, `atbilde1`, `atbilde2`, `atbilde3`, `atbilde4`, `answer`) VALUES
(1, 'what\'s the radius of earth?', '6378.1 kilometers', '534.2 kilometers', '634.2 kilometers', 'Earth is flat!', '6378.1 kilometers');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `password`, `email`) VALUES
(1, 'Jane', 'Doe', '11111111', 'jane@doe.com'),
(2, 'Gay2', 'Lesbian2', '$2y$10$zSU/ehQZapVVn13P4ND/u.61pGEZf.eKnvhKOg42uRry0o/ZpiKgW', 'Ieva'),
(3, 'Al', 'Ex', '$2y$10$NH2m9ViGXmBPghDULNNsQuWvhjAnvZaf5IKOUp5zAAy3EcqkxpzIK', 'alex'),
(4, 'Ed', '', 'cc4723995ce819915e734147a77850427a9e95f9', 'niko.vilnis@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users1`
--

CREATE TABLE `users1` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users1`
--

INSERT INTO `users1` (`id`, `name`, `email`, `password`) VALUES
(1, 'Edgar', 'edgars.liepajnieks@gmail.com', 'a642a77abd7d4f51bf9226ceaf891fcbb5b299b8');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `draugiem`
--
ALTER TABLE `draugiem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`AutoIncrement`);

--
-- Indexes for table `skaistai`
--
ALTER TABLE `skaistai`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users1`
--
ALTER TABLE `users1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `draugiem`
--
ALTER TABLE `draugiem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `AutoIncrement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `skaistai`
--
ALTER TABLE `skaistai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users1`
--
ALTER TABLE `users1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
