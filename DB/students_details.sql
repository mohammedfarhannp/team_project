-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2025 at 02:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `students_details`
--

-- --------------------------------------------------------

--
-- Table structure for table `students_details`
--

CREATE TABLE `students_details` (
  `Register_number` varchar(15) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Phone_number` bigint(13) NOT NULL,
  `Email_id` varchar(30) NOT NULL,
  `Year` varchar(7) NOT NULL,
  `Course` varchar(20) NOT NULL,
  `Semester_undergoing` int(1) NOT NULL,
  `S1` float NOT NULL,
  `S2` float DEFAULT NULL,
  `S3` float DEFAULT NULL,
  `S4` float DEFAULT NULL,
  `CGPA` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students_details`
--

INSERT INTO `students_details` (`Register_number`, `Name`, `Phone_number`, `Email_id`, `Year`, `Course`, `Semester_undergoing`, `S1`, `S2`, `S3`, `S4`, `CGPA`) VALUES
('IT24GMCAD11', 'Mohammed Farhan N P', 9874512458, 'mohammedfarhannp@gmail.com', '2024-26', 'MCA', 2, 8.24, NULL, NULL, NULL, 8.24),
('IT24GMCAD22', 'Archana T K', 7865412558, 'achumalu@gmail.com', '2024-26', 'MCA', 2, 8, NULL, NULL, NULL, 8),
('IT24GMCAD24', 'Fahma Rudhsha Latheef .K.T', 9812457852, 'fahmamca@gmail.com', '2024-26', 'MCA', 2, 7.81, NULL, NULL, NULL, 7.81),
('IT24GMCAD31', 'Nada Fathima', 9812457812, 'nadaevk@gmail.com', '2024-26', 'MCA', 2, 8.62, NULL, NULL, NULL, 8.62);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students_details`
--
ALTER TABLE `students_details`
  ADD PRIMARY KEY (`Register_number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
