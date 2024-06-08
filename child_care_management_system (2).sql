-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2024 at 08:25 AM
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
-- Database: `child care management system`
--

-- --------------------------------------------------------

--
-- Table structure for table `child`
--

CREATE TABLE `child` (
  `child_id` int(11) NOT NULL,
  `child_name` varchar(50) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `blood_group` varchar(20) NOT NULL,
  `doctor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `child`
--

INSERT INTO `child` (`child_id`, `child_name`, `parent_id`, `blood_group`, `doctor_id`) VALUES
(1, 'Riya', 2, 'O+', 2),
(2, 'Dola', 3, 'B+', 2),
(3, 'Priya', 4, 'AB+', 1),
(4, 'Mina', 1, 'O+', 1);

-- --------------------------------------------------------

--
-- Table structure for table `child_care_center`
--

CREATE TABLE `child_care_center` (
  `center_id` int(11) NOT NULL,
  `center_name` varchar(20) NOT NULL,
  `room_no` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `child_care_center`
--

INSERT INTO `child_care_center` (`center_id`, `center_name`, `room_no`, `address`) VALUES
(1, 'Greenlife', '401', '3rd_floor'),
(2, 'Kids_garden', '301', '2nd_floor');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctor_id` int(11) NOT NULL,
  `doctor_name` varchar(50) NOT NULL,
  `duty_time` varchar(50) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctor_id`, `doctor_name`, `duty_time`, `contact`, `address`) VALUES
(1, 'Dr.Roy', '9am-6pm', '01712123000', 'Dhaka'),
(2, 'Dr.Islam', '6pm-9am', '01799123000', 'Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `doctors_salary`
--

CREATE TABLE `doctors_salary` (
  `doctor_id` int(11) NOT NULL,
  `working_hours` varchar(20) NOT NULL,
  `salary` varchar(20) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctors_salary`
--

INSERT INTO `doctors_salary` (`doctor_id`, `working_hours`, `salary`, `date`) VALUES
(1, '9hours', '60,000', '2024-06-08 05:35:33'),
(2, '9hours', '60,000', '2024-06-08 05:35:50');

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `nurse_id` int(11) NOT NULL,
  `nurse_name` varchar(50) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`nurse_id`, `nurse_name`, `doctor_id`, `contact`) VALUES
(1, 'Ms.Rahima', 1, '0131000000'),
(2, 'Ms.Marufa', 2, '01457678677'),
(3, 'Ms.Rina', 1, '01357678677'),
(4, 'Ms.Lota', 2, '01880988789');

-- --------------------------------------------------------

--
-- Table structure for table `nurse_salary`
--

CREATE TABLE `nurse_salary` (
  `nurse_id` int(11) NOT NULL,
  `working_hours` varchar(20) NOT NULL,
  `salary` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nurse_salary`
--

INSERT INTO `nurse_salary` (`nurse_id`, `working_hours`, `salary`) VALUES
(1, '9hours', '20,000'),
(2, '9hours', '20,000'),
(3, '9hours', '20,000'),
(4, '9hours', '20,000');

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `parent_id` int(11) NOT NULL,
  `parent_name` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact` varchar(20) NOT NULL,
  `center_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`parent_id`, `parent_name`, `address`, `contact`, `center_id`) VALUES
(1, 'Md.Hasan', 'Dhaka', '01712123123', 1),
(2, 'Md.Kamal', 'Dhaka', '01310098098', 1),
(3, 'Mrs.Mariyam', 'Barishal', '01310098998', 2),
(4, 'Md.Rony', 'Rajshahi', '01310098999', 2);

-- --------------------------------------------------------

--
-- Table structure for table `payment of child`
--

CREATE TABLE `payment of child` (
  `child_id` int(11) NOT NULL,
  `parent_name` varchar(50) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment of child`
--

INSERT INTO `payment of child` (`child_id`, `parent_name`, `payment_method`, `date`) VALUES
(1, 'Md.Kamal', 'bank', '2024-06-06'),
(2, 'Mrs.Mariyam', 'rocket', '2024-06-04'),
(3, 'Md.Rony', 'bank', '2024-06-04'),
(4, 'Md.Hasan', 'Bkash', '2024-06-04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `child`
--
ALTER TABLE `child`
  ADD PRIMARY KEY (`child_id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `instructor_id` (`doctor_id`);

--
-- Indexes for table `child_care_center`
--
ALTER TABLE `child_care_center`
  ADD PRIMARY KEY (`center_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `doctors_salary`
--
ALTER TABLE `doctors_salary`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`nurse_id`);

--
-- Indexes for table `nurse_salary`
--
ALTER TABLE `nurse_salary`
  ADD PRIMARY KEY (`nurse_id`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`parent_id`),
  ADD KEY `center_id` (`center_id`);

--
-- Indexes for table `payment of child`
--
ALTER TABLE `payment of child`
  ADD PRIMARY KEY (`child_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `child`
--
ALTER TABLE `child`
  MODIFY `child_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `child_care_center`
--
ALTER TABLE `child_care_center`
  MODIFY `center_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doctor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctors_salary`
--
ALTER TABLE `doctors_salary`
  MODIFY `doctor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nurse`
--
ALTER TABLE `nurse`
  MODIFY `nurse_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nurse_salary`
--
ALTER TABLE `nurse_salary`
  MODIFY `nurse_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `parent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `child`
--
ALTER TABLE `child`
  ADD CONSTRAINT `child_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `parent` (`parent_id`),
  ADD CONSTRAINT `child_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`);

--
-- Constraints for table `child_care_center`
--
ALTER TABLE `child_care_center`
  ADD CONSTRAINT `child_care_center_ibfk_1` FOREIGN KEY (`center_id`) REFERENCES `parent` (`center_id`);

--
-- Constraints for table `doctors_salary`
--
ALTER TABLE `doctors_salary`
  ADD CONSTRAINT `doctors_salary_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`);

--
-- Constraints for table `nurse_salary`
--
ALTER TABLE `nurse_salary`
  ADD CONSTRAINT `nurse_salary_ibfk_1` FOREIGN KEY (`nurse_id`) REFERENCES `nurse` (`nurse_id`);

--
-- Constraints for table `parent`
--
ALTER TABLE `parent`
  ADD CONSTRAINT `parent_ibfk_1` FOREIGN KEY (`center_id`) REFERENCES `child_care_center` (`center_id`);

--
-- Constraints for table `payment of child`
--
ALTER TABLE `payment of child`
  ADD CONSTRAINT `payment of child_ibfk_1` FOREIGN KEY (`child_id`) REFERENCES `child` (`child_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
