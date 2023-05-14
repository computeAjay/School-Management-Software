-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2023 at 03:55 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dev_school`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_class`
--

CREATE TABLE `add_class` (
  `id` int(11) NOT NULL,
  `class` varchar(50) NOT NULL,
  `grade` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_class`
--

INSERT INTO `add_class` (`id`, `class`, `grade`) VALUES
(2, '6th', 'Bc'),
(3, '12th', 'bb'),
(4, '10th', 'A'),
(5, '7th', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `f_name` varchar(55) NOT NULL,
  `f_teacher` varchar(55) NOT NULL,
  `f_message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `f_name`, `f_teacher`, `f_message`) VALUES
(16, 'grg', 'thth', '<p>kjcbvijbpojkif</p>'),
(17, 'grg', 'thth', '<p>kjcbvijbpojkif</p>'),
(23, 'Ramesh', 'Durga Sir', '<h1>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>Durga sir&nbsp;</strong></h1>\r\n\r\n<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class=\"marker\">Durga</span> is not better sir because watching movieo in class of All students.</strong></p>\r\n'),
(24, 'Ramesh', 'Durga Sir', '<h1>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>Durga sir&nbsp;</strong></h1>\r\n\r\n<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class=\"marker\">Durga</span> is not better sir because watching movieo in class of All students.</strong></p>\r\n'),
(25, 'Ramesh', 'Durga Sir', '<h1>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>Durga sir&nbsp;</strong></h1>\r\n\r\n<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class=\"marker\">Durga</span> is not better sir because watching movieo in class of All students.</strong></p>\r\n'),
(26, 'Ravi miss', 'mahesh', '<h1><span class=\"marker\">Reference site</span></h1>\r\n\r\n<p>about&nbsp;<em>Lorem Ipsum</em>, giving information on its origins, as well as a random Lipsum generator.</p>\r\n\r\n<p>You&#39;ve visited this page 2 times. Last visit: 6/11/22</p>\r\n'),
(28, 'rajdeep kumar', 'ajay', '<p>ajay sir&nbsp;</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `admission` varchar(55) NOT NULL,
  `grade` varchar(55) NOT NULL,
  `class_roll` varchar(55) NOT NULL,
  `st_fees` float NOT NULL,
  `st_total` float NOT NULL,
  `balance` float NOT NULL,
  `date` varchar(44) NOT NULL,
  `Mark` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `name`, `admission`, `grade`, `class_roll`, `st_fees`, `st_total`, `balance`, `date`, `Mark`) VALUES
(93, 'maha das ', '', '', '', 200, 1000, 800, '2023-04-19T13:42', 'Two hundred rupees'),
(108, 'nilam', '', '', '', 600, 1000, 400, '2023-05-06T06:13', 'Two hundred rupees only'),
(109, 'kiran saw', '', '', '', 200, 1200, 1000, '2023-05-12T06:26', 'Two hundred rupees'),
(110, 'Tinku kumar', '2023-05-06', '6th', '', 200, 1200, 1000, '2023-05-06', 'Two Hundred rupees '),
(111, 'Lilam Kumari', '2023-05-08', '12th', '30', 200, 1200, 1000, '2023-05-06', 'Two hundred ruppes'),
(112, 'rajdeep kumar', '2023-05-13', '10th', '10', 2000, 4200, 2200, '2023-05-13', 'one thousand rupees ');

-- --------------------------------------------------------

--
-- Table structure for table `fees_tran`
--

CREATE TABLE `fees_tran` (
  `stid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `due_balance` float NOT NULL,
  `pay` float NOT NULL,
  `date` date NOT NULL,
  `remark` varchar(55) NOT NULL,
  `g_balance` float NOT NULL,
  `Total_paid` float NOT NULL,
  `courses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fees_tran`
--

INSERT INTO `fees_tran` (`stid`, `id`, `name`, `due_balance`, `pay`, `date`, `remark`, `g_balance`, `Total_paid`, `courses`) VALUES
(180, 93, 'maha das ', 0, 200, '2023-04-19', 'Two hundred rupees', 0, 0, 1000),
(201, 108, 'nilam', 0, 200, '2023-05-06', 'Two hundred rupees only', 0, 200, 1000),
(202, 108, 'nilam', 800, 400, '2023-05-06', 'vbfbfgb', 400, 600, 1000),
(203, 109, 'kiran saw', 0, 200, '2023-05-12', 'Two hundred rupees', 0, 200, 1200),
(204, 110, 'Tinku kumar', 0, 200, '2023-05-06', 'Two Hundred rupees ', 0, 200, 1200),
(205, 111, 'Lilam Kumari', 0, 200, '2023-05-06', 'Two hundred ruppes', 0, 200, 1200),
(206, 112, 'rajdeep kumar', 0, 1000, '2023-05-13', 'one thousand rupees ', 0, 1000, 4200),
(207, 112, 'rajdeep kumar', 3200, 1000, '2023-05-13', 'One thousand rupees', 2200, 2000, 4200);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `email`, `password`) VALUES
(1, 'Ajay', 'ajayparsad7012@gmail.com', '123'),
(2, 'Mukesh', 'admin@webdamn.com', '12345'),
(3, 'Raj', 'tea@tea.tea', '123456'),
(4, 'Ajaykumar', 'ajayparsad7012@gmail.com', 'ajay12345');

-- --------------------------------------------------------

--
-- Table structure for table `stud_info`
--

CREATE TABLE `stud_info` (
  `id` int(11) NOT NULL,
  `st_name` varchar(55) NOT NULL,
  `st_class` varchar(55) NOT NULL,
  `st_father` varchar(55) NOT NULL,
  `dob` date NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(55) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stud_info`
--

INSERT INTO `stud_info` (`id`, `st_name`, `st_class`, `st_father`, `dob`, `mobile`, `email`, `address`) VALUES
(1, 'rekha', '7th', 'deva mandal', '2023-03-25', '7021539478', 'stu@stu.stu', 'Miss'),
(2, 'raj', '12th', 'lo', '2023-03-18', '7021539478', 'ajayparshad@gmail.com', 'Atka'),
(3, 'rajdeep', '10th', 'birendra', '2007-01-01', '9142785468', 'rajdeeprmandal@gmail.com', 'atka');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_class`
--
ALTER TABLE `add_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `fees_tran`
--
ALTER TABLE `fees_tran`
  ADD PRIMARY KEY (`stid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stud_info`
--
ALTER TABLE `stud_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_class`
--
ALTER TABLE `add_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `fees_tran`
--
ALTER TABLE `fees_tran`
  MODIFY `stid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `stud_info`
--
ALTER TABLE `stud_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
