-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 05, 2020 at 08:39 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buildingbytes`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Rec_Email` varchar(50) DEFAULT NULL,
  `Password` varchar(50) NOT NULL,
  `Phone_No` bigint(20) NOT NULL,
  `Q1` varchar(50) NOT NULL,
  `Q2` varchar(50) NOT NULL,
  `Q3` varchar(50) NOT NULL,
  `A1` varchar(15) NOT NULL,
  `A2` varchar(15) NOT NULL,
  `A3` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `books_pdf`
--

DROP TABLE IF EXISTS `books_pdf`;
CREATE TABLE IF NOT EXISTS `books_pdf` (
  `Topic` varchar(30) NOT NULL,
  `Book` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `challenges_posted`
--

DROP TABLE IF EXISTS `challenges_posted`;
CREATE TABLE IF NOT EXISTS `challenges_posted` (
  `C_ID` varchar(5) NOT NULL,
  `CH_ID` varchar(6) NOT NULL,
  `Challenge` text NOT NULL,
  `chid` varchar(4) DEFAULT 'CHID',
  `endid` int(4) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`CH_ID`),
  UNIQUE KEY `endid` (`endid`),
  KEY `C_ID` (`C_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
CREATE TABLE IF NOT EXISTS `company` (
  `C_ID` varchar(5) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Prim_Email` varchar(50) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `ISO_Num` varchar(20) NOT NULL,
  `Emp_ID` varchar(5) NOT NULL,
  `Q1` varchar(50) DEFAULT NULL,
  `Q2` varchar(50) DEFAULT NULL,
  `Q3` varchar(50) DEFAULT NULL,
  `Ans1` varchar(15) DEFAULT NULL,
  `Ans2` varchar(15) DEFAULT NULL,
  `Ans3` varchar(15) DEFAULT NULL,
  `comstr` varchar(3) NOT NULL DEFAULT 'COM',
  `comid` int(4) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`C_ID`),
  UNIQUE KEY `comid` (`comid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`C_ID`, `Name`, `Prim_Email`, `Password`, `ISO_Num`, `Emp_ID`, `Q1`, `Q2`, `Q3`, `Ans1`, `Ans2`, `Ans3`, `comstr`, `comid`) VALUES
('COM01', 'IBM', 'ibm@gmail.com', 'pass', 'ISO/IEC 27001:2013', 'EMP05', 'birthplace', 'headq', 'employee', 'United States', 'America', 'ABC', 'COM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company_profile`
--

DROP TABLE IF EXISTS `company_profile`;
CREATE TABLE IF NOT EXISTS `company_profile` (
  `C_ID` varchar(5) NOT NULL,
  `Sec_Email` varchar(50) NOT NULL,
  `Phone_No` bigint(20) NOT NULL,
  `Description` text NOT NULL,
  `Prim_Address` varchar(50) NOT NULL,
  `Sec_Address` varchar(50) DEFAULT NULL,
  `Headquarter` varchar(50) NOT NULL,
  `Company_Size` varchar(15) NOT NULL,
  PRIMARY KEY (`C_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_article`
--

DROP TABLE IF EXISTS `c_article`;
CREATE TABLE IF NOT EXISTS `c_article` (
  `Ar_ID` varchar(5) NOT NULL,
  `C_ID` varchar(50) NOT NULL,
  `Article` text NOT NULL,
  `startid` varchar(4) NOT NULL DEFAULT 'CAID',
  `endid` int(4) NOT NULL AUTO_INCREMENT,
  `Article_Head` text NOT NULL,
  PRIMARY KEY (`Ar_ID`),
  UNIQUE KEY `endid` (`endid`),
  KEY `C_ID` (`C_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `e_cell`
--

DROP TABLE IF EXISTS `e_cell`;
CREATE TABLE IF NOT EXISTS `e_cell` (
  `S_ID` varchar(50) NOT NULL,
  `Idea_ID` varchar(5) NOT NULL,
  `Idea` text NOT NULL,
  `stuid` varchar(3) NOT NULL DEFAULT 'IDE',
  `endid` int(4) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Idea_ID`),
  UNIQUE KEY `endid` (`endid`),
  KEY `S_ID` (`S_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `A1` varchar(50) NOT NULL,
  `A2` varchar(50) NOT NULL,
  `A3` varchar(50) NOT NULL,
  `A4` varchar(50) NOT NULL,
  `A5` varchar(50) NOT NULL,
  `message` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `job_posted`
--

DROP TABLE IF EXISTS `job_posted`;
CREATE TABLE IF NOT EXISTS `job_posted` (
  `C_ID` varchar(5) NOT NULL,
  `JB_ID` varchar(6) NOT NULL,
  `Description` text NOT NULL,
  `chid` varchar(4) DEFAULT 'CHID',
  `endid` int(4) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`JB_ID`),
  UNIQUE KEY `endid` (`endid`),
  KEY `C_ID` (`C_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lecture_notes`
--

DROP TABLE IF EXISTS `lecture_notes`;
CREATE TABLE IF NOT EXISTS `lecture_notes` (
  `Topic` varchar(30) NOT NULL,
  `Notes` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lecture_videos`
--

DROP TABLE IF EXISTS `lecture_videos`;
CREATE TABLE IF NOT EXISTS `lecture_videos` (
  `Topic` varchar(20) NOT NULL,
  `Video` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecture_videos`
--

INSERT INTO `lecture_videos` (`Topic`, `Video`) VALUES
('COA', 0x68747470733a2f2f7777772e796f75747562652e636f6d2f656d6265642f506c364b7162634b655167),
('AI ML', 0x68747470733a2f2f7777772e796f75747562652e636f6d2f656d6265642f545546752d47636b6e3463),
('JVP', 0x68747470733a2f2f7777772e796f75747562652e636f6d2f656d6265642f524f74536c6a465f426277),
('SE', 0x68747470733a2f2f7777772e796f75747562652e636f6d2f656d6265642f6e414c70494b6456485873),
('IWT', 0x68747470733a2f2f7777772e796f75747562652e636f6d2f656d6265642f666131535958357347534d),
('DBMS', 0x68747470733a2f2f7777772e796f75747562652e636f6d2f656d6265642f387074355148506d525455),
('DS', 0x68747470733a2f2f7777772e796f75747562652e636f6d2f656d6265642f51727458537434354b6c55),
('DCN', 0x68747470733a2f2f7777772e796f75747562652e636f6d2f656d6265642f4b79494d4f5f5469307538);

-- --------------------------------------------------------

--
-- Table structure for table `practice_set`
--

DROP TABLE IF EXISTS `practice_set`;
CREATE TABLE IF NOT EXISTS `practice_set` (
  `C_ID` varchar(5) NOT NULL,
  `Practice_paper` blob NOT NULL,
  PRIMARY KEY (`C_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `query`
--

DROP TABLE IF EXISTS `query`;
CREATE TABLE IF NOT EXISTS `query` (
  `S_ID` varchar(50) NOT NULL,
  `Query_ID` varchar(5) NOT NULL,
  `Query` text NOT NULL,
  `stuid` varchar(3) NOT NULL DEFAULT 'QRY',
  `endid` int(4) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Query_ID`),
  UNIQUE KEY `endid` (`endid`),
  KEY `S_ID` (`S_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `query_contact`
--

DROP TABLE IF EXISTS `query_contact`;
CREATE TABLE IF NOT EXISTS `query_contact` (
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_no` int(20) NOT NULL,
  `message` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `S_ID` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Q1` varchar(50) DEFAULT NULL,
  `Q2` varchar(50) DEFAULT NULL,
  `Q3` varchar(50) DEFAULT NULL,
  `Ans1` varchar(15) DEFAULT NULL,
  `Ans2` varchar(15) DEFAULT NULL,
  `Ans3` varchar(15) DEFAULT NULL,
  `stustr` varchar(3) NOT NULL DEFAULT 'STU',
  `stuid` int(4) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`S_ID`),
  UNIQUE KEY `stuid` (`stuid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`S_ID`, `Name`, `Email`, `Password`, `Q1`, `Q2`, `Q3`, `Ans1`, `Ans2`, `Ans3`, `stustr`, `stuid`) VALUES
('STU01', 'STUTI PANDEY', 'sp@gmail.com', 'pass', 'birthplace', 'dog name', 'house name', 'kolkata', 'druppy', 'guddu', 'STU', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_profile`
--

DROP TABLE IF EXISTS `student_profile`;
CREATE TABLE IF NOT EXISTS `student_profile` (
  `S_ID` varchar(50) NOT NULL,
  `Rec_Email` varchar(50) NOT NULL,
  `Phone_No` bigint(20) DEFAULT NULL,
  `Photo` blob,
  `XIIth_Per` float(4,2) NOT NULL,
  `Xth_Per` float(4,2) NOT NULL,
  `University` varchar(50) NOT NULL,
  `Course` varchar(50) NOT NULL,
  `Year` varchar(10) NOT NULL,
  `Skill` text,
  `Project` text,
  `Resume` blob,
  PRIMARY KEY (`S_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_profile`
--

INSERT INTO `student_profile` (`S_ID`, `Rec_Email`, `Phone_No`, `Photo`, `XIIth_Per`, `Xth_Per`, `University`, `Course`, `Year`, `Skill`, `Project`, `Resume`) VALUES
('STU01', 'sp2098@gmail.com', 8809174052, NULL, 82.00, 93.10, 'Banasthali Vidyapith', 'B.Tech', '3rd Year', 'Public Speaking, Reading, Coding', 'Building Bytes, Movie Ticket Booking System, Student Portal', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `s_article`
--

DROP TABLE IF EXISTS `s_article`;
CREATE TABLE IF NOT EXISTS `s_article` (
  `Ar_ID` varchar(5) NOT NULL,
  `S_ID` varchar(50) NOT NULL,
  `Article` text NOT NULL,
  `startid` varchar(4) NOT NULL DEFAULT 'SAID',
  `endid` int(4) NOT NULL AUTO_INCREMENT,
  `Article_Head` text NOT NULL,
  PRIMARY KEY (`Ar_ID`),
  UNIQUE KEY `endid` (`endid`),
  KEY `S_ID` (`S_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
