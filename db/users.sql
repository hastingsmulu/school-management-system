-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 09, 2019 at 09:20 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `workdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `grsxcvg_firstname` text NOT NULL,
  `grsxcvg_lastname` text NOT NULL,
  `grsxcvg_nickname` text NOT NULL,
  `group_username` text NOT NULL,
  `grsxcvg_email` text NOT NULL,
  `grsxcvg_passsword` text NOT NULL,
  `grsxcvg_phone` text NOT NULL,
  `grsxcvg_website` text NOT NULL,
  `gvsax_usertype` text NOT NULL,
  `grsxcvg_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `grsxcvg_firstname`, `grsxcvg_lastname`, `grsxcvg_nickname`, `group_username`, `grsxcvg_email`, `grsxcvg_passsword`, `grsxcvg_phone`, `grsxcvg_website`, `gvsax_usertype`, `grsxcvg_status`) VALUES
(3, 'Hastings ', 'Mulu', 'Mumo', 'Admin', 'hastingsmumo@gmail.com', '$2y$10$p1df6yJGtNP8OumlcwmRneRhyik.05OBaghaMA4onKTj63mRPJF7i', '+254790714621', 'https://softguru.com/hastingsmumo', 'Administrator', 'Active'),
(4, 'Hastings ', 'Mulu', 'Mumo', 'hastingsmumo', 'hastingsmumo@gmail.com', '$2y$10$KSof.LCQ6YdG9lSRTAirS.9UUQT.zyPJkOaA9p3SncX6sp35mtsx6', '+254790714621', 'https://softguru.com/hastingsmumo', 'Administrator', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
