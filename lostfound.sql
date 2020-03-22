-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2020 at 07:52 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lostfound`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `item_name` varchar(30) NOT NULL,
  `item_desc` varchar(100) NOT NULL,
  `item_category` varchar(30) NOT NULL,
  `location` varchar(100) NOT NULL,
  `date-time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `image` varchar(100) NOT NULL,
  `lost_or_found` int(10) NOT NULL,
  `person_name` varchar(30) NOT NULL,
  `contact_num` varchar(25) NOT NULL,
  `contact_email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item_name`, `item_desc`, `item_category`, `location`, `date-time`, `image`, `lost_or_found`, `person_name`, `contact_num`, `contact_email`) VALUES
(1, 'One Plus 6', 'black colour phone with avengers wallpaper and black cover.', 'mobile', 'mess, castle ena', '2020-03-22 18:32:59', 'images/items/1.jpg', 0, 'Saksham Bhushan', '9876543210', 'saksham291@gmail.com'),
(2, 'Key Bunch', 'bunch of 6 keys, with a minion keyring.', 'key', 'room number B107, acad block', '2020-03-22 18:37:09', 'images/items/2.jpg', 1, 'Harry Potter', '9876543211', 'harry@potter.com');

-- --------------------------------------------------------

--
-- Table structure for table `item_category`
--

CREATE TABLE `item_category` (
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_category`
--

INSERT INTO `item_category` (`category`) VALUES
('Mobile'),
('Key'),
('ID Card'),
('Money'),
('Wallet'),
('Bag'),
('Book'),
('Mobile Accessories'),
('Others');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `name`, `email`, `password`) VALUES
('11840980', 'Saksham Bhushan', 'saksham291@gmail.com', '1234'),
('11940010', 'Harry Potter', 'harry@potter.com', '1234'),
('11840990', 'Iron Man', 'ironman@gmail.com', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
