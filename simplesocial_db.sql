-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2022 at 10:41 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simplesocial_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `post_id` int(10) UNSIGNED DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `image` varchar(1024) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `image`, `date`) VALUES
(2, 2, 2, 'another comment with image and edit', 'uploads/1669416310wedding-photography-1024x662.jpg', '2022-11-25 23:20:44'),
(3, 2, 2, 'testing more comments', '', '2022-11-25 23:22:21'),
(4, 3, 8, 'my first comment', '', '2022-11-26 00:23:29'),
(5, 3, 4, 'my comment as john here', '', '2022-11-26 00:24:11'),
(6, 5, 10, 'this is my comment', '', '2022-11-26 00:33:36'),
(7, 5, 10, 'another comment', 'uploads/1669419230ideas-for-wedding-reception.jpg', '2022-11-26 00:33:51'),
(9, 5, 7, 'nice photo guys', '', '2022-11-26 00:34:56');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `post` text DEFAULT NULL,
  `image` varchar(1024) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post`, `image`, `date`) VALUES
(1, 1, 'this is a test post', NULL, '2022-11-23 21:28:21'),
(2, 2, '2another post with image', NULL, '2022-11-23 21:37:44'),
(3, 1, 'This is a post with an image', '', '2022-11-23 21:50:47'),
(4, 1, 'another test', 'uploads/1669236664ebb6d295-187d-47b5-b2ad-c8f83ba6e7bf.webp', '2022-11-23 21:51:05'),
(7, 2, 'another post with image', 'uploads/166939966116MINI-GoldmanRuiz-02-mobileMasterAt3x.jpg', '2022-11-25 18:51:37'),
(8, 3, 'this is my first post', 'uploads/1669418598depositphotos_62175471-stock-photo-wedding-couple-enjoying-romantic-moments.jpg', '2022-11-26 00:23:18'),
(9, 5, 'this is my first post', '', '2022-11-26 00:32:23'),
(10, 5, 'a post with an image that is edited', 'uploads/1669419196istockphoto-1334542509-612x612.jpg', '2022-11-26 00:32:36'),
(11, 1, 'My morning post', 'uploads/1669525622vegetable-stock.jpg', '2022-11-27 06:07:02'),
(12, 1, 'Riri', 'uploads/1669525747Rihanna.-Photo-W-Magazine.jpg', '2022-11-27 06:09:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `image` varchar(1024) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `image`, `email`, `password`, `date`) VALUES
(1, 'Eathorne', 'uploads/1669236336162317.jpeg', 'email@email.com', '$2y$10$RxpnQL37dj8FgVLJhO5sb.1irW7vMwcLtYltUkkBbMNBTLF2.DC/6', '2022-11-21 19:42:53'),
(2, 'Mary', 'uploads/1669416993istockphoto-1300471625-612x612.jpg', 'mary@email.com', '$2y$10$ilJFOpzsHhWMEPoaZt94Y.BXxJ/W1Sa3hc3GI3eGCAWYf8P4J3Wvm', '2022-11-23 22:17:36'),
(3, 'John', 'uploads/1669418586jbfn009105029f_slate.jpg', 'john@email.com', '$2y$10$fC6DT3vpns7kDLRGE4lrxuU3kOrHUZvIPRGu8Pq/U3.hl0TFKwSKe', '2022-11-26 00:20:03'),
(4, 'Book', NULL, 'book@email.com', '$2y$10$KAYIi16e0KatyW9tdR.MdO67Rtk3di8avII1sysMbqBD9bAuitSwG', '2022-11-26 00:22:36'),
(5, 'Sam', 'uploads/1669419105sq-740658be0504413a8a77d501ba133df6.jpg', 'sam@email.com', '$2y$10$WWwVwXr6U6sWvMa2wCbZKuAZthan16gksANi0Q59NpuKiNparXrXa', '2022-11-26 00:31:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `date` (`date`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `date` (`date`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
