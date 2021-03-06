-- phpMyAdmin SQL Dump
-- version 4.0.10deb1ubuntu0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 18, 2018 at 03:47 PM
-- Server version: 5.5.61-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `Bloodtable`
--

CREATE TABLE IF NOT EXISTS `Bloodtable` (
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `bday` date NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `mobnum` varchar(10) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(20) NOT NULL,
  `pincode` int(10) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `blood` varchar(5) NOT NULL,
  `weight` int(5) NOT NULL,
  `height` int(5) NOT NULL,
  `lastdonation` date NOT NULL,
  `q1.1` varchar(3) NOT NULL,
  `q1.2` varchar(3) NOT NULL,
  `q1.3` varchar(3) NOT NULL,
  `q1.4` varchar(3) NOT NULL,
  `q1.5` varchar(3) NOT NULL,
  `q1.6a` varchar(3) NOT NULL,
  `q1.6b` varchar(3) NOT NULL,
  `q1.6c` varchar(3) NOT NULL,
  `q1.6d` varchar(3) NOT NULL,
  `q1.6e` varchar(3) NOT NULL,
  `q1.7` varchar(3) NOT NULL,
  `q1.8a` varchar(3) NOT NULL,
  `q1.8b` varchar(3) NOT NULL,
  `q1.9` varchar(3) NOT NULL,
  `q1.9a` varchar(3) NOT NULL,
  `q1.9b` varchar(3) NOT NULL,
  `q1.9c` varchar(3) NOT NULL,
  `q1.10` varchar(3) NOT NULL,
  `q1.11` varchar(3) NOT NULL,
  `q2.1` varchar(3) NOT NULL,
  `q2.2` varchar(3) NOT NULL,
  `q2.3` varchar(3) NOT NULL,
  `q2.4` varchar(3) NOT NULL,
  `eligible` varchar(10) NOT NULL,
  `curdate` date NOT NULL,
  PRIMARY KEY (`mobnum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Bloodtable`
--

INSERT INTO `Bloodtable` (`first_name`, `last_name`, `bday`, `emailid`, `mobnum`, `gender`, `address`, `city`, `pincode`, `state`, `country`, `occupation`, `blood`, `weight`, `height`, `lastdonation`, `q1.1`, `q1.2`, `q1.3`, `q1.4`, `q1.5`, `q1.6a`, `q1.6b`, `q1.6c`, `q1.6d`, `q1.6e`, `q1.7`, `q1.8a`, `q1.8b`, `q1.9`, `q1.9a`, `q1.9b`, `q1.9c`, `q1.10`, `q1.11`, `q2.1`, `q2.2`, `q2.3`, `q2.4`, `eligible`, `curdate`) VALUES
('vimon', 'pv', '2018-11-12', 'vimonpv@gmail.com', '8129831375', 'Male', '', 'thrissur', 680552, 'kerala', 'India', '', 'A+', 60, 175, '2018-11-15', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'donated', '2018-11-15');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE IF NOT EXISTS `doctor` (
  `d_id` int(4) NOT NULL AUTO_INCREMENT,
  `dname` varchar(30) NOT NULL,
  `degree` text NOT NULL,
  `dep` varchar(30) NOT NULL,
  `mon` varchar(15) NOT NULL,
  `tues` varchar(15) NOT NULL,
  `wed` varchar(15) NOT NULL,
  `thurs` varchar(15) NOT NULL,
  `fri` varchar(15) NOT NULL,
  `sat` varchar(15) NOT NULL,
  `sun` varchar(15) NOT NULL,
  `ldate` text NOT NULL,
  `phnum` varchar(15) NOT NULL,
  `age` decimal(5,0) NOT NULL,
  `exp` int(10) NOT NULL,
  `rate` varchar(10) NOT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1002 ;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`d_id`, `dname`, `degree`, `dep`, `mon`, `tues`, `wed`, `thurs`, `fri`, `sat`, `sun`, `ldate`, `phnum`, `age`, `exp`, `rate`) VALUES
(1000, 'Dr. Mrigendra Nath Gantait', 'MBBS, P.G. Certificate in Acupuncture (China)', 'Acupuncture', '1 PM (104)', '', '1 PM (113)', '', '1 PM (113)', '', '', 'from:\r\nto:', '2345687698', 30, 5, '****'),
(1001, 'Dr Sumanta Chatterjee', 'MBBS, MD (MED), DM (CARD)', 'Cardiology', '9 AM (116)', '9 AM (116)', '7 PM (116)', '', '', '', '', '12/08/2018\r\n13/08/2018\r\n', '9876543210', 32, 7, '****');

-- --------------------------------------------------------

--
-- Table structure for table `ptable`
--

CREATE TABLE IF NOT EXISTS `ptable` (
  `pid` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) NOT NULL,
  `bday` date NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `mobnum` varchar(10) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(20) NOT NULL,
  `pincode` int(10) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `blood` varchar(5) NOT NULL,
  `dep` varchar(30) NOT NULL,
  `dname` varchar(50) NOT NULL,
  `wno` int(4) NOT NULL,
  `symtoms` text NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=122 ;

--
-- Dumping data for table `ptable`
--

INSERT INTO `ptable` (`pid`, `first_name`, `last_name`, `bday`, `emailid`, `mobnum`, `gender`, `address`, `city`, `pincode`, `state`, `country`, `occupation`, `blood`, `dep`, `dname`, `wno`, `symtoms`) VALUES
(100, 'pipiri', 'v', '1997-10-30', 'pippiri@gmail.com', '9876543321', 'Male', 'mundur', 'thrissur', 354643, 'kerala', 'India', 'student', 'B+', 'Acupuncture', 'Dr. Mrigendra Nath Gantait', 8, 'lazy');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `passcode` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `passcode`, `type`) VALUES
(1, 'admin', '123', 'admin'),
(3, 'buser1', '123', 'buser'),
(4, 'doc1', '123', 'doctor'),
(5, 'pa1', '123', 'patient'),
(6, 'badmin', '123', 'badmin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
