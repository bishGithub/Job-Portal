-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 26, 2012 at 12:33 AM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cse6324`
--

-- --------------------------------------------------------

--
-- Table structure for table `cse6324_company_login`
--

DROP TABLE IF EXISTS `cse6324_company_login`;
CREATE TABLE IF NOT EXISTS `cse6324_company_login` (
  `s_no` int(11) NOT NULL AUTO_INCREMENT,
  `comp_id` int(11) NOT NULL,
  `password` int(32) NOT NULL,
  PRIMARY KEY (`s_no`),
  UNIQUE KEY `comp_id` (`comp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cse6324_company_profile`
--

DROP TABLE IF EXISTS `cse6324_company_profile`;
CREATE TABLE IF NOT EXISTS `cse6324_company_profile` (
  `s_no` int(11) NOT NULL AUTO_INCREMENT,
  `comp_id` varchar(30) NOT NULL,
  `comp_name` varchar(30) NOT NULL,
  `comp_address` varchar(150) DEFAULT NULL,
  `phone_numb` varchar(30) DEFAULT NULL,
  `fax_numb` varchar(30) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`s_no`),
  UNIQUE KEY `comp_id` (`comp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cse6324_job_posting`
--

DROP TABLE IF EXISTS `cse6324_job_posting`;
CREATE TABLE IF NOT EXISTS `cse6324_job_posting` (
  `s_no` int(11) NOT NULL,
  `comp_id` varchar(30) NOT NULL,
  `job_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `abstract` varchar(500) NOT NULL,
  `category` varchar(100) NOT NULL,
  `keywords` varchar(100) NOT NULL,
  `description` varchar(1500) NOT NULL,
  `salary_range` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`s_no`),
  UNIQUE KEY `comp_id` (`comp_id`,`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cse6324_sestudents`
--

DROP TABLE IF EXISTS `cse6324_sestudents`;
CREATE TABLE IF NOT EXISTS `cse6324_sestudents` (
  `SNo` int(11) NOT NULL AUTO_INCREMENT,
  `StudentId` int(10) NOT NULL,
  PRIMARY KEY (`SNo`),
  UNIQUE KEY `StudentId` (`StudentId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cse6324_studentlogin`
--

DROP TABLE IF EXISTS `cse6324_studentlogin`;
CREATE TABLE IF NOT EXISTS `cse6324_studentlogin` (
  `Id` int(10) NOT NULL,
  `Password` varchar(32) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cse6324_student_profile`
--

DROP TABLE IF EXISTS `cse6324_student_profile`;
CREATE TABLE IF NOT EXISTS `cse6324_student_profile` (
  `s_no` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `f_name` varchar(30) NOT NULL,
  `m_name` varchar(30) DEFAULT NULL,
  `l_name` varchar(30) NOT NULL,
  `address` varchar(150) DEFAULT NULL,
  `sex` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_no` varchar(30) DEFAULT NULL,
  `resume_uploaded` tinyint(1) NOT NULL,
  `resume_path` varchar(30) DEFAULT NULL,
  `visa_status` varchar(30) NOT NULL,
  `start_date` varchar(30) NOT NULL,
  `courses_taken` varchar(30) DEFAULT NULL,
  `edu_qual` varchar(30) DEFAULT NULL,
  `expct_salary` int(30) DEFAULT NULL,
  `tech_skills` varchar(30) DEFAULT NULL,
  `exp_achvm` varchar(30) DEFAULT NULL,
  `industry` varchar(30) DEFAULT NULL,
  `loca_pref` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`s_no`),
  UNIQUE KEY `student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
