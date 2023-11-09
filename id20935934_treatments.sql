-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 27, 2023 at 04:59 PM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id20935934_treatments`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `doctor_id` int(11) NOT NULL,
  `doctor_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`doctor_id`, `doctor_name`) VALUES
(1, 'Dr. Smith'),
(2, 'Mike Sheifen');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `patient_id` int(11) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `patient_phno` varchar(10) NOT NULL,
  `patient_address` text NOT NULL,
  `patient_age` varchar(100) NOT NULL,
  `patient_gender` tinyint(1) DEFAULT NULL,
  `patient_total` varchar(255) DEFAULT NULL,
  `treatment_date` date DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`patient_id`, `patient_name`, `patient_phno`, `patient_address`, `patient_age`, `patient_gender`, `patient_total`, `treatment_date`, `created_date`) VALUES
(1, 'Surya', '8309603262', 'agraharam street , bobbili , vizianagaram district', '20', 1, NULL, '2023-12-31', '2023-06-19 18:13:24'),
(2, 'Testing', '6546465465', 'test', '35', 1, NULL, '2023-12-31', '2023-06-20 04:24:41'),
(3, 'a', '1234567890', 'sdcs', '23', 1, NULL, '2023-06-20', '2023-06-20 10:17:20'),
(4, 'testing', '3453535353', 'test', '30', 1, NULL, '2023-12-30', '2023-06-26 09:55:39'),
(5, 'testing', '6546546546', 'test', '20', 2, NULL, '2023-12-31', '2023-06-26 09:58:30'),
(6, 'Surya', '8309603262', 'agraharam street , bobbili , vizianagaram district', '25', 1, NULL, '2023-12-31', '2023-06-26 17:38:32'),
(7, 'testing1', '8309603262', 'agraharam street , bobbili , vizianagaram district', '20', 2, NULL, '2023-12-31', '2023-06-27 00:55:45'),
(8, 'teste2', '8309603262', 'agraharam street , bobbili , vizianagaram district', '20', 2, NULL, '2023-12-31', '2023-06-27 01:01:13'),
(9, 'test3', '8309603262', 'agraharam street , bobbili , vizianagaram district', '20', 2, NULL, '2023-12-31', '2023-06-27 01:03:02'),
(10, 'test4', '8309603262', 'agraharam street , bobbili , vizianagaram district', '20', 1, NULL, '2023-12-31', '2023-06-27 01:05:09'),
(11, 'suresh', '8309603262', 'agraharam street , bobbili , vizianagaram district', '20', 1, NULL, '2023-12-31', '2023-06-27 01:06:32'),
(12, 'testcheck6', '8309603262', 'agraharam street , bobbili , vizianagaram district', '20', 1, NULL, '2023-12-31', '2023-06-27 01:36:34'),
(13, 'checksaira', '8309603262', 'agraharam street , bobbili , vizianagaram district', '20', 1, NULL, '2023-12-31', '2023-06-27 01:59:50'),
(14, 'jaswanth', '7306468658', 'xyz', '23', 1, NULL, '2023-06-27', '2023-06-27 05:54:42'),
(15, 'tesrer', '6546544654', 'test', '20', 1, NULL, '2023-12-31', '2023-06-27 10:09:30'),
(16, 'testing', '6546544654', 'testing address', '34', 1, NULL, '2023-12-31', '2023-06-27 10:14:55'),
(17, 'testing name', '6546544654', 'testing address', '20', 1, NULL, '2023-12-31', '2023-06-27 10:15:42'),
(18, 'jaswanth', '6546544654', 'test', '23', 1, NULL, '2023-06-27', '2023-06-27 10:27:29'),
(19, 'testing', '6546544654', 'test', '20', 1, NULL, '2023-12-31', '2023-06-27 10:30:18'),
(20, 'Mahesh', '6546544654', 'testing', '20', 1, NULL, '2023-12-31', '2023-06-27 11:16:21'),
(21, 'bfb', '6546544654', 'tfyf', '23', 1, NULL, '2023-06-27', '2023-06-27 11:34:13'),
(22, 'test', '6546544654', 'TESt', '22', 2, NULL, '2023-06-21', '2023-06-27 11:46:24'),
(23, 'robo', '6546544654', 'mvp', '23', 1, NULL, '2023-06-27', '2023-06-27 11:48:15'),
(24, 'robooo', '6546544654', 'cdvd', '23', 1, NULL, '2023-06-27', '2023-06-27 11:49:39'),
(25, 'suresh chandra', '6546544654', 'agraharam street , bobbili , vizianagaram district', '20', 1, NULL, '2023-12-31', '2023-06-27 15:56:33'),
(26, 'john', '6546544654', 'agraharam street , bobbili , vizianagaram district', '20', 1, NULL, '2023-12-31', '2023-06-27 15:58:14'),
(27, 'suresh chandra', '6546544654', 'agraharam street , bobbili , vizianagaram district', '20', 1, NULL, '2023-12-31', '2023-06-27 15:58:36'),
(28, 'suresh chandra', '6546544654', 'agraharam street , bobbili , vizianagaram district', '20', 1, NULL, '2023-12-31', '2023-06-27 16:00:30'),
(29, 'john', '6546544654', 'agraharam street , bobbili , vizianagaram district', '20', 1, NULL, '2023-12-31', '2023-06-27 16:25:59'),
(30, 'Master', '6546544654', 'agraharam street , bobbili , vizianagaram district', '20', 1, NULL, '2023-12-31', '2023-06-27 16:34:36'),
(31, 'test27', '6546544654', 'test233333', '23', 1, NULL, '2023-06-27', '2023-06-27 16:54:52'),
(32, 'testing prod', '6546544654', 'testing prod mvp', '23', 1, NULL, '2023-06-27', '2023-06-27 16:59:26');

-- --------------------------------------------------------

--
-- Table structure for table `patient_tests`
--

CREATE TABLE `patient_tests` (
  `pt_id` int(11) NOT NULL,
  `pt_patient_id` int(255) DEFAULT NULL,
  `pt_test_id` int(11) NOT NULL,
  `pt_test_price` varchar(255) NOT NULL,
  `pt_doctor` varchar(255) DEFAULT NULL,
  `pt_test_result` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `patient_tests`
--

INSERT INTO `patient_tests` (`pt_id`, `pt_patient_id`, `pt_test_id`, `pt_test_price`, `pt_doctor`, `pt_test_result`) VALUES
(1, 1, 1, '1000', '1', '20'),
(2, 2, 1, '1000', '1', NULL),
(3, 2, 1, '1000', '1', NULL),
(4, 2, 1, '1000', '1', NULL),
(5, 3, 1, '1000', '1', '20'),
(6, 10, 16, '3000', '1', NULL),
(7, 10, 15, '3000', '1', NULL),
(8, 11, 15, '3000', '1', '\"A\"'),
(9, 11, 16, '3000', '1', NULL),
(10, 12, 25, '1000', '1', 'Negative'),
(11, 12, 23, '1000', '1', NULL),
(12, 12, 62, '1000', '1', NULL),
(13, 12, 17, '3000', '1', NULL),
(14, 12, 22, '1000', '1', NULL),
(15, 13, 26, '1000', '1', ''),
(16, 13, 33, '1000', '1', NULL),
(17, 13, 30, '1000', '1', NULL),
(18, 13, 33, '1000', '1', NULL),
(19, 13, 19, '1000', '1', NULL),
(20, 14, 56, '1000', '1', NULL),
(21, 15, 1, '1000', '1', NULL),
(22, 15, 2, '2000', '1', NULL),
(23, 15, 56, '1000', '1', NULL),
(24, 16, 23, '1000', '1', NULL),
(25, 16, 47, '1000', '1', NULL),
(26, 16, 46, '1000', '1', NULL),
(27, 17, 31, '1000', '1', NULL),
(28, 17, 38, '1000', '1', NULL),
(29, 18, 16, '3000', '1', NULL),
(30, 18, 2, '2000', '1', NULL),
(31, 19, 3, '3000', '1', NULL),
(32, 20, 88, '3000', '1', '2'),
(33, 20, 87, '500', '', NULL),
(34, 20, 96, '500', '', NULL),
(35, 20, 74, '1500', '', NULL),
(36, 20, 95, '650', '', NULL),
(37, 20, 68, '3000', '', NULL),
(38, 20, 19, '200', '', NULL),
(39, 21, 93, '550', '1', '9'),
(40, 21, 2, '100', '1', NULL),
(41, 22, 1, '50', '1', NULL),
(42, 22, 3, '100', '1', NULL),
(43, 23, 2, '100', '1', '5000'),
(44, 23, 1, '50', '1', NULL),
(45, 24, 2, '100', '1', NULL),
(46, 25, 32, '1000', '1', NULL),
(47, 26, 53, '1000', '1', NULL),
(48, 27, 12, '3000', '1', NULL),
(49, 28, 15, '50', '1', NULL),
(50, 29, 97, '1000', '1', '20'),
(51, 29, 60, '1000', '1', NULL),
(52, 30, 22, '50', '2', 'Reactive'),
(53, 30, 93, '550', '2', NULL),
(54, 30, 4, '3000', '2', NULL),
(55, 31, 1, '50', '', '11.5'),
(56, 31, 2, '100', 'undefined', NULL),
(57, 32, 3, '100', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `test_id` int(11) NOT NULL,
  `test_name` varchar(255) NOT NULL,
  `test_price` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`test_id`, `test_name`, `test_price`) VALUES
(1, 'Blood Test', '1000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `patient_tests`
--
ALTER TABLE `patient_tests`
  ADD PRIMARY KEY (`pt_id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`test_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `doctor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `patient_tests`
--
ALTER TABLE `patient_tests`
  MODIFY `pt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `test_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
