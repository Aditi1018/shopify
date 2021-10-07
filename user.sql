-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 07, 2021 at 12:23 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user`
--

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

DROP TABLE IF EXISTS `details`;
CREATE TABLE IF NOT EXISTS `details` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(50) NOT NULL,
  `u_pass` varchar(40) NOT NULL,
  `u_mail` varchar(70) NOT NULL,
  `u_num` varchar(20) NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`u_id`, `u_name`, `u_pass`, `u_mail`, `u_num`) VALUES
(1, 'Aditi Jain', '2323', 'aditijain1018@gmail.com', '314434'),
(2, 'Naman', '5678', 'naman@gmail.com', '9812435678'),
(3, 'neha', 'neha123', 'neha@gmail.com', '9876543210'),
(4, 'neha', 'neha123', 'neha@gmail.com', '9876543210'),
(5, 'shreya', 'shreya123', 'shreya@gmail.com', '9812345675'),
(6, 'gaurav', 'hp123', 'gaurav@gmail.com', '9810233455'),
(7, 'rahul', 'rahul90', 'rahul@gmail.com', '9845231257'),
(8, 'amit', 'amit2', 'amit@gmail.com', '9876543766'),
(9, 'anil', 'anil90', 'anil@yahoo.com', '9810944755'),
(10, 'sanya', 'sanya123', 'sanya313@gmail.com', '9711243367'),
(11, 'shivam', 'shiv78', 'shiv@gmail.com', '7890544322'),
(12, 'aditya', 'adi234', 'adi@gmail.com', '981235674'),
(13, 'aditya', 'adi56', 'aditya3@gmail.com', '987534567'),
(14, 'ashish', 'ashu78', 'ashish@gmail.com', '9878675645'),
(15, 'niikhil', 'iloveaditi', 'nilkilloveaditi@gmail.com', '8368215768'),
(16, 'Adi', 'aditya&313', 'aditijain1018@gmail.com', '9876543210');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
