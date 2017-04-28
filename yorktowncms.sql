-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2017 at 03:26 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yorktowncms`
--

-- --------------------------------------------------------

--
-- Table structure for table `apparatusassignment`
--

DROP TABLE IF EXISTS `apparatusassignment`;
CREATE TABLE `apparatusassignment` (
  `id` int(4) NOT NULL,
  `vehicle_type` varchar(30) NOT NULL,
  `seat_position` varchar(30) NOT NULL,
  `seat_number` int(2) DEFAULT NULL,
  `seats_remaining` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apparatusassignment`
--

INSERT INTO `apparatusassignment` (`id`, `vehicle_type`, `seat_position`, `seat_number`, `seats_remaining`) VALUES
(1, 'Turntable Ladder', 'Driver', 6, 6),
(2, 'Tiller Truck', 'Driver', 7, 7),
(3, 'Rescue Apparatus', 'Hose', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `event_name` varchar(70) NOT NULL,
  `location` varchar(70) NOT NULL,
  `event_date` varchar(30) NOT NULL,
  `event_time` varchar(30) NOT NULL,
  `number_requested` int(2) NOT NULL,
  `number_joined` int(2) NOT NULL DEFAULT '0',
  `description` text,
  `users_joined` varchar(500) NOT NULL DEFAULT '_'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_name`, `location`, `event_date`, `event_time`, `number_requested`, `number_joined`, `description`, `users_joined`) VALUES
(11, 'Parade Detail', 'Streets', '5/29/17', '09:00 - 13:00', 3, -14, 'Take L64 and T69.\r\n\r\nAt least one FF needs FR or greater.', '_'),
(10, 'Sporting event standby', 'The ball field', '3/26/17', '16:00 - 19:00', 4, 0, 'Take SQ60.\r\n\r\nAt least one FF needs FR or greater.', '_');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `menu_name` varchar(30) NOT NULL,
  `position` int(3) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `content` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `subject_id`, `menu_name`, `position`, `visible`, `content`) VALUES
(20, 11, 'Logout', 1, 1, 'FILLER'),
(11, 1, 'View Calendar', 1, 1, 'FILLER'),
(8, 7, 'Details', 1, 1, 'FILLER'),
(15, 2, 'View Shifts', 1, 1, 'FILLER');

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

DROP TABLE IF EXISTS `shifts`;
CREATE TABLE `shifts` (
  `id` int(4) NOT NULL,
  `date` varchar(30) NOT NULL,
  `D` varchar(30) DEFAULT NULL,
  `O` varchar(30) DEFAULT NULL,
  `FF1` varchar(30) DEFAULT NULL,
  `FF2` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shifts`
--

INSERT INTO `shifts` (`id`, `date`, `D`, `O`, `FF1`, `FF2`) VALUES
(5, '6/26/2017', 'Crisp', 'Strunk', 'Pinter', '');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `menu_name` varchar(30) NOT NULL,
  `position` int(3) NOT NULL,
  `visible` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `menu_name`, `position`, `visible`) VALUES
(1, 'View Calendar', 1, 1),
(2, 'Station Cleaning Shifts', 2, 1),
(7, 'My Account', 3, 1),
(11, 'Logout', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `hashed_password` varchar(60) NOT NULL,
  `first_and_last_name` varchar(60) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(60) NOT NULL,
  `administrator` tinyint(1) NOT NULL,
  `FR` tinyint(1) NOT NULL,
  `EMT` tinyint(1) NOT NULL,
  `EMTA` tinyint(1) NOT NULL,
  `EMTP` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `hashed_password`, `first_and_last_name`, `phone`, `email`, `administrator`, `FR`, `EMT`, `EMTA`, `EMTP`) VALUES
(5, 'root', '$2y$10$NmNjNmRjOTYwZjg4ZTk5N.5zWdIF6l8EUAG/VsnRDKrXcxiGWXcL6', 'Test Guy', '467-297-7392', 'mondoman@hotmail.com', 1, 0, 0, 0, 0),
(30, 'test', '$2y$10$NjdjZWY3M2RmYmVjMzRmYeraA96icTW3pva0GRzXOCxhkk/QXJA72', 'Rip Willy', '411', 'junk@mail.com', 0, 0, 0, 0, 0),
(31, 'admin', '$2y$10$YjE2NmNmM2FmYmY0ZGIxO.pL1sjnoeozFnhflFO38ScNJ/cJQdtdW', 'admin', '123', 'goop@loop.com', 1, 0, 0, 0, 0),
(32, 'mamulkey', '$2y$10$NDY2MDExMjQwNzM5ZTI5ZeMEjqRrv6MMoHprQ.jPQzIlCQHgVknqa', 'Alex Mulkey', '3176268830', 'mulkeyalex@gmail.com', 1, 1, 1, 1, 1),
(33, 'dboone', '$2y$10$NzA5OWU1ZDQzNzIyODc3O.Bn3CIEG6AajDEZpTOus/0TUf8gkKx5O', 'David Boone', '7657303997', 'dboone@yfd-in.org', 1, 1, 1, 1, 1),
(34, 'bnstrunck', '$2y$10$ZDc3NTVlNDJlODU4YjFhZeKG8vSQEG5Udhe0TsBacRW5fkQIbuMyW', 'Benton Strunck', '7651924857', 'bnstrunck@bsu.edu', 1, 1, 1, 0, 0),
(35, 'mcrisp', '$2y$10$MWMxOTVmY2JhNDZjZDZmZ.o.hNRFFREtaY4c7FFuIZAdP5Q6Czhoi', 'Mike Crisp', '7654921287', 'mcrisp123@gmail.com', 0, 0, 0, 0, 0),
(36, 'csmith', '$2y$10$ZWE0MzIzY2NkNzExYTIwYuFhsQzx8CHcYWFOIPnzE6VO3CqQUfu76', 'Carl Smith', '7659531287', 'csmith11@gmail.com', 0, 0, 0, 0, 0),
(37, 'tterry', '$2y$10$MzI2Mjg2NjBhNDIzOTMzNuN86NYFjv6p/ZbAd8gq38ZTcr3mjWahq', 'Ted Terry', '7654493849', 'tterry@gmail.com', 0, 0, 0, 0, 0),
(38, 'mwarfel', '$2y$10$MDE4MGM4Nzc5YTBhN2ZmZ.hogwL4VQrYGnTQdgFu.kPhH0xCHtnrq', 'Mark Warfel', '7654329981', 'mwarfel@gmail.com', 0, 1, 1, 1, 1),
(39, 'jdavis', '$2y$10$Y2UyMjAwMWJlYTFhMDZhZed7iY1yjnx0RSXAdF2EzEgWji69wL5RS', 'Jim Davis', '7652435564', 'jdavis@gmail.com', 0, 1, 1, 0, 0),
(40, 'ogarrett', '$2y$10$YzljNDU3N2QzN2ZlNTJkMeVa6VPHd048T4EHGQI3yWqsGE7DnqYd2', 'Oliver Garrett', '76534439237', 'ogarrett@gmail.com', 0, 1, 0, 0, 0),
(41, 'testguy', '$2y$10$MTJiYzMyNDczODNkZjIyZ.SprVfgigitTK.797CLeU8gFQb09hV6i', 'askdjasl', '911', 'jhjkkj', 0, 1, 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apparatusassignment`
--
ALTER TABLE `apparatusassignment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
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
-- AUTO_INCREMENT for table `apparatusassignment`
--
ALTER TABLE `apparatusassignment`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
