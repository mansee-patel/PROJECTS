-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Dec 05, 2020 at 06:52 AM
-- Server version: 5.7.28
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectbase`
--

-- --------------------------------------------------------

--
-- Table structure for table `discipline`
--

DROP TABLE IF EXISTS `discipline`;
CREATE TABLE IF NOT EXISTS `discipline` (
  `projectID` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discipline`
--

INSERT INTO `discipline` (`projectID`, `Name`) VALUES
(1, 'ce'),
(1, 'me');

-- --------------------------------------------------------

--
-- Table structure for table `investigator`
--

DROP TABLE IF EXISTS `investigator`;
CREATE TABLE IF NOT EXISTS `investigator` (
  `projectID` int(11) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Designation` varchar(20) NOT NULL,
  `Emp No.` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `investigator`
--

INSERT INTO `investigator` (`projectID`, `Name`, `Designation`, `Emp No.`) VALUES
(1, 'taru bloch', 'primary investigator', 'ABC123'),
(1, 'mansee patel', 'co-investigator', 'BCD123');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
CREATE TABLE IF NOT EXISTS `project` (
  `ProjectID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(80) NOT NULL,
  `projectfield` varchar(50) NOT NULL,
  `Duration` int(11) NOT NULL,
  `Eligibility` float NOT NULL,
  `discipline` varchar(30) DEFAULT NULL,
  `primary_investigator` varchar(50) DEFAULT NULL,
  `co_investigator` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ProjectID`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`ProjectID`, `Name`, `projectfield`, `Duration`, `Eligibility`, `discipline`, `primary_investigator`, `co_investigator`) VALUES
(6, 'Robotics', 'Computer science', 5, 8, 'CE,ME', 'taru bloch', 'kartik patel'),
(5, 'AI', 'Computer science', 5, 9, 'ce', 'taru bloch', 'mohit patel'),
(7, 'machine learning', 'Mechanical engineering', 7, 8, 'ME', 'mansee patel', 'aryan sutariya'),
(8, 'Nanotubes', 'Nanotechnology', 3, 8, 'ME', 'amee unadkat', 'avantika '),
(9, 'Electric cars', 'Electrical Engineering', 5, 9, 'EE', 'Titixa kamani', 'akshay'),
(10, 'Fluid dynamics', 'Mechanical engineering', 9, 8, 'ME', 'neel kapuria', 'neelam'),
(11, 'JSP', 'Computer science', 8, 8, 'CSE', 'prayag joshi', 'pragya'),
(12, ' electric motors', 'mechanical engineering', 6, 8, 'ME,EE', 'amee unadkat', 'jaya'),
(13, 'drone', 'digital electronics', 6, 9, 'EE', 'neel kapuria', 'jay'),
(14, 'electric motors\r\n', 'electrical engineering', 7, 8, 'EE', 'prayag joshi', 'vivek'),
(15, 'electric bus', 'Electrical engineering', 34, 7.5, 'CE,CSE', 'taru bloch', 'kapish'),
(16, 'LAN network', 'computer network', 45, 5.6, 'EE', 'taru bloch', 'mahi'),
(17, 'Iot', 'Iot', 8, 9, 'CSE', 'taru bloch', 'vandana');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `ProjectID` int(11) NOT NULL,
  `Name` varchar(80) NOT NULL DEFAULT '',
  `rollno` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ProjectID`, `Name`, `rollno`) VALUES
(6, 'mansee ', '91800103076');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `Name` varchar(30) NOT NULL,
  `father_name` varchar(50) DEFAULT NULL,
  `rollno` varchar(50) DEFAULT NULL,
  `student_id` mediumint(9) DEFAULT NULL,
  `stream` varchar(50) NOT NULL,
  `Academicyear` int(11) DEFAULT NULL,
  `admission_sem` varchar(20) DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `cast` varchar(30) NOT NULL,
  `cast_category` varchar(30) DEFAULT NULL,
  `bdate` date NOT NULL,
  `bgroup` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `empno` varchar(40) DEFAULT NULL,
  `Password` varchar(20) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `designation` varchar(10) NOT NULL,
  `emp_id` mediumint(9) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Name`, `father_name`, `rollno`, `student_id`, `stream`, `Academicyear`, `admission_sem`, `gender`, `cast`, `cast_category`, `bdate`, `bgroup`, `address`, `phone_number`, `empno`, `Password`, `Email`, `designation`, `emp_id`) VALUES
('mansee ', 'kishan patel', '91800103076', 105086, 'Computer engineering', 2018, 'SEM 1', 'Female', 'Patel', 'General', '2020-10-06', 'B+', 'Morbi', '9998084545', '', '456', 'manseepatel@gmail.com', 'student', 0),
('taru bloch', NULL, NULL, NULL, 'computer engineering', NULL, NULL, 'female', 'patel', NULL, '2020-10-20', 'A+', 'Rajkot', '88877766655', 'ABC123', '67890', 'tarubloch@gmail.com', 'professor', 11223),
('kapish', 'kishan patel', '91800103056', 105076, 'computer engineeering', 2018, 'SEM 2', 'male', 'patel', 'general', '2020-10-03', 'b+', 'morbi', '39384903840', NULL, '789', 'kapishpatel@gmail.com', 'student', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
