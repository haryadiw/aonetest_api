-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 16, 2024 at 08:49 PM
-- Server version: 8.0.36-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_userapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `description` text,
  `photo` text,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `title`, `description`, `photo`, `createdAt`) VALUES
(1, 'Oxford English Dictionary', '<p>Donec sed venenatis orci. Vestibulum a elit non justo placerat interdum quis sed diam. Integer tortor ipsum, ornare ut nunc cursus, hendrerit suscipit lectus. Vestibulum nec hendrerit eros. Integer porta laoreet tincidunt. Praesent eget ante vitae enim blandit tincidunt. Sed lacus turpis, tempor non erat nec, pulvinar sollicitudin dui. Proin metus nisi, scelerisque quis metus non, mollis interdum neque.</p><p>Donec sed venenatis orci. Vestibulum a elit non justo placerat interdum quis sed diam. Integer tortor ipsum, ornare ut nunc cursus, hendrerit suscipit lectus. Vestibulum nec hendrerit eros. Integer porta laoreet tincidunt. Praesent eget ante vitae enim blandit tincidunt. Sed lacus turpis, tempor non erat nec, pulvinar sollicitudin dui. Proin metus nisi, scelerisque quis metus non, mollis interdum neque.</p><p>Donec sed venenatis orci. Vestibulum a elit non justo placerat interdum quis sed diam. Integer tortor ipsum, ornare ut nunc cursus, hendrerit suscipit lectus. Vestibulum nec hendrerit eros. Integer porta laoreet tincidunt. Praesent eget ante vitae enim blandit tincidunt. Sed lacus turpis, tempor non erat nec, pulvinar sollicitudin dui. Proin metus nisi, scelerisque quis metus non, mollis interdum neque.</p>', 'https://cdn.pixabay.com/photo/2021/11/21/21/14/mountain-6815304_1280.jpg', '2024-02-16 00:02:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `firstname` varchar(150) DEFAULT NULL,
  `lastname` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `photo` text,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_login` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `photo`, `createdAt`, `is_login`) VALUES
(1, 'Budi', 'Setiawan', 'budi.setiawan@gmail.com', 'https://cdn.pixabay.com/photo/2016/09/24/03/20/man-1690965_1280.jpg', '2024-02-15 23:54:21', NULL),
(2, 'Jarwo', 'Pratama', 'jarwo.pratama@gmail.com', 'https://cdn.pixabay.com/photo/2018/04/27/03/50/portrait-3353699_1280.jpg', '2024-02-15 23:54:21', NULL),
(3, 'Bambang', 'Santoso', 'bambang.santoso@gmail.com', 'https://cdn.pixabay.com/photo/2016/03/27/17/42/man-1283235_960_720.jpg', '2024-02-15 23:54:21', 1),
(4, 'Sujiwo', 'Tedjo', 'sujiwo.tedjo@gmail.com', 'https://randomuser.me/api/portraits/men/80.jpg', '2024-02-15 23:54:21', NULL),
(5, 'Ronald', 'Kasali', 'Ronald.Kasali@gmail.com', 'https://randomuser.me/api/portraits/men/81.jpg', '2024-02-15 23:54:21', NULL),
(6, 'Caroline', 'Cervantes', 'Caroline@gmail.com', 'https://randomuser.me/api/portraits/men/82.jpg', '2024-02-15 23:54:21', NULL),
(7, 'Bailey', 'Kelly', 'Bailey@gmail.com', 'https://randomuser.me/api/portraits/men/83.jpg', '2024-02-15 23:54:21', NULL),
(8, 'Sinead', 'Fletcher', 'Sinead@gmail.com', 'https://randomuser.me/api/portraits/men/84.jpg', '2024-02-15 23:54:21', NULL),
(9, 'Aryan', 'Garcia', 'Aryan@gmail.com', 'https://randomuser.me/api/portraits/men/85.jpg', '2024-02-15 23:54:21', NULL),
(10, 'Sidney', 'Hampton', 'Sidney@gmail.com', 'https://randomuser.me/api/portraits/men/86.jpg', '2024-02-15 23:54:21', NULL),
(11, 'Tony', 'Sears', 'Tony@gmail.com', 'https://randomuser.me/api/portraits/men/87.jpg', '2024-02-15 23:54:21', NULL),
(12, 'Sumaya', 'Blaese', 'Sumaya@gmail.com', 'https://randomuser.me/api/portraits/men/88.jpg', '2024-02-15 23:54:21', NULL),
(13, 'George', 'Chandler', 'George@gmail.com', 'https://randomuser.me/api/portraits/men/89.jpg', '2024-02-15 23:54:21', NULL),
(14, 'Theresa', 'Suarez', 'Theresa@gmail.com', 'https://randomuser.me/api/portraits/men/90.jpg', '2024-02-15 23:54:21', NULL),
(15, 'Aadam', 'Clarke', 'Aadam@gmail.com', 'https://randomuser.me/api/portraits/men/91.jpg', '2024-02-15 23:54:21', NULL),
(16, 'Ridwan', 'Handoko', 'Ridwan@gmail.com', 'https://randomuser.me/api/portraits/men/92.jpg', '2024-02-15 23:54:21', NULL),
(17, 'Kinan', 'Wardono', 'Kinan@gmail.com', 'https://randomuser.me/api/portraits/men/93.jpg', '2024-02-15 23:54:21', NULL),
(18, 'Parjo', 'Subagyo', 'Parjo@gmail.com', 'https://randomuser.me/api/portraits/men/94.jpg', '2024-02-15 23:54:21', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
