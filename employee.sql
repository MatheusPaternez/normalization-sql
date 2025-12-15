-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 15, 2025 at 10:21 PM
-- Server version: 8.0.44
-- PHP Version: 8.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Deptcode` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `Deptlocation` varchar(200) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Deptcode`, `Deptlocation`) VALUES
('0L', 'Campinas'),
('1A', 'Lemery'),
('1C', 'Changhua'),
('1X', 'Joceni'),
('2C', 'Jaragua'),
('2X', 'Aniver'),
('3D', 'Sidokumpul'),
('4A', 'Vancouver'),
('4B', 'Lilla Edet'),
('4H', 'Sao Paulo'),
('5G', 'Jcen'),
('7N', 'Banff'),
('7R', 'Munkaruna'),
('8M', 'Locev'),
('9J', 'Jundiai'),
('9K', 'Ourinhos'),
('9N', 'LVR');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Empno` int NOT NULL,
  `Deptcode` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `Name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Job` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `hiredate` date NOT NULL,
  `salary` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Empno`, `Deptcode`, `Name`, `Job`, `hiredate`, `salary`) VALUES
(1, '2X', 'Carry Jerratsch', 'Structural Engineer', '2025-11-03', 24847.1),
(2, '4H', 'Cameron Mauser', 'Analog Circuit Design manager', '2025-06-26', 17619.8),
(3, '5G', 'Lukas Tindley', 'Geologist III', '2025-05-13', 18907.7),
(4, '7R', 'Ram Graber', 'Assistant Manager', '2025-05-10', 27052.8),
(5, '9J', 'Alicea Jado', 'Staff Accountant III', '2025-04-03', 26390.5),
(6, '9J', 'Hubert Pensom', 'Structural Analysis Engineer', '2025-05-24', 20887.7),
(7, '9J', 'Raquel Biscomb', 'Senior Cost Accountant', '2025-10-10', 25730.6),
(8, '8M', 'Codie Wilkinson', 'Staff Scientist', '2025-12-08', 9537.15),
(9, '9N', 'Marni Abramof', 'Account Executive', '2025-06-19', 10930.3),
(10, '7R', 'Doroteya Candlish', 'Analog Circuit Design manager', '2025-10-14', 11461.1),
(11, '7R', 'Rochester Gregg', 'Structural Engineer', '2025-04-30', 24140.2),
(12, '1A', 'Jaymie Sherwood', 'Food Chemist', '2025-04-02', 29953),
(13, '4H', 'Lucius Caves', 'Financial Analyst', '2025-07-13', 6259.17),
(14, '4B', 'Katey Bater', 'Professor', '2025-07-21', 24576),
(15, '0L', 'Rourke Ventom', 'Pharmacist', '2025-10-22', 7761.92),
(16, '1C', 'Sibyl Danzig', 'Sales Representative', '2025-09-26', 9909.61),
(17, '1C', 'Odilia Lackeye', 'Human Resources Manager', '2025-12-02', 28381.9),
(18, '5G', 'Orsa Tatham', 'Developer I', '2025-09-16', 17011.4),
(19, '3D', 'Alon Seeks', 'Geologist III', '2025-11-15', 14558.4),
(20, '9J', 'Fancy Cureton', 'Associate Professor', '2025-11-29', 11537.5),
(21, '4A', 'Roseline Danihel', 'VP Quality Control', '2025-09-30', 28913.8),
(22, '2X', 'Helenelizabeth Balls', 'Geological Engineer', '2025-09-11', 5159.21),
(23, '2C', 'Olga Josskowitz', 'Sales Associate', '2025-02-01', 18723.7),
(24, '1C', 'Hershel Deacon', 'Chemical Engineer', '2025-05-16', 6628.71),
(25, '9N', 'Devi Talks', 'Technical Writer', '2025-11-21', 24788.7),
(26, '9K', 'Had Exelby', 'Desktop Support Technician', '2025-08-26', 18989),
(27, '4H', 'Anthia Janczewski', 'Junior Executive', '2025-02-01', 7011.5),
(28, '5G', 'Ebenezer Gorse', 'Executive Secretary', '2025-06-04', 17946.3),
(29, '4A', 'Juliane Deverson', 'Computer Systems Analyst IV', '2025-02-22', 21494.3),
(30, '8M', 'Kellia Amner', 'Electrical Engineer', '2025-10-23', 14741.2),
(31, '2X', 'Albie Leirmonth', 'Financial Analyst', '2025-02-15', 24496.8),
(32, '7N', 'Miner Lawrence', 'Recruiting Manager', '2025-04-22', 22364.2),
(33, '7R', 'Bartel Kelberer', 'Quality Control Specialist', '2025-05-06', 21413),
(34, '9J', 'Meredithe Kleinstern', 'Sales Associate', '2024-12-21', 6958.34),
(35, '2C', 'Gracie Cheek', 'Clinical Specialist', '2025-03-16', 10515),
(36, '7R', 'Myrwyn Desson', 'Chemical Engineer', '2025-07-11', 12238.4),
(37, '8M', 'Karlee Dowry', 'Occupational Therapist', '2025-05-04', 16522.4),
(38, '1X', 'Charmaine Riddoch', 'Accountant IV', '2025-01-10', 14777.6),
(39, '4B', 'Clywd Lake', 'Human Resources Manager', '2025-05-29', 16470.3),
(40, '5G', 'Craggie Lacotte', 'Product Engineer', '2025-04-22', 28728.7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Deptcode`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Empno`),
  ADD KEY `Deptcode` (`Deptcode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `Empno` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`Deptcode`) REFERENCES `department` (`Deptcode`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
