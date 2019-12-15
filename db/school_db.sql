-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 15, 2019 at 03:33 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `account_number` varchar(40) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `name`, `account_number`, `status`) VALUES
(1, 'Bank of America', '00000132254545', 'Active'),
(2, 'Equity Bank', '351672718822', 'Active'),
(3, 'KCB Bank', '98262891719', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `classattendance`
--

CREATE TABLE `classattendance` (
  `id` int(11) NOT NULL,
  `subject` varchar(40) NOT NULL,
  `student` varchar(40) NOT NULL,
  `regno` varchar(40) NOT NULL,
  `class` varchar(40) NOT NULL,
  `stream` varchar(40) NOT NULL,
  `attended` varchar(40) NOT NULL,
  `date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(100) NOT NULL,
  `name` text NOT NULL,
  `details` text NOT NULL,
  `date` varchar(40) NOT NULL,
  `Posted_By` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `details`, `date`, `Posted_By`, `status`) VALUES
(1, 'Games Day', 'All Students to participate in school games for recruitment ', '2019-07-22', 'admin', 'On');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `id` int(100) NOT NULL,
  `Class` varchar(40) NOT NULL,
  `Subject` text NOT NULL,
  `total_marks` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`id`, `Class`, `Subject`, `total_marks`) VALUES
(1, '2', 'Mathematics', 100);

-- --------------------------------------------------------

--
-- Table structure for table `examresults`
--

CREATE TABLE `examresults` (
  `id` int(10) NOT NULL,
  `studentsnames` text NOT NULL,
  `regno` text NOT NULL,
  `class` text NOT NULL,
  `stream` text NOT NULL,
  `term` text NOT NULL,
  `subject1` text NOT NULL,
  `subject2` text NOT NULL,
  `subject3` text NOT NULL,
  `subject4` text NOT NULL,
  `subject5` text NOT NULL,
  `subject6` text NOT NULL,
  `subject7` text NOT NULL,
  `subject8` text NOT NULL,
  `subject9` text NOT NULL,
  `subject10` text NOT NULL,
  `subject11` text NOT NULL,
  `total marks` int(100) NOT NULL,
  `grade` text NOT NULL,
  `comments` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examresults`
--

INSERT INTO `examresults` (`id`, `studentsnames`, `regno`, `class`, `stream`, `term`, `subject1`, `subject2`, `subject3`, `subject4`, `subject5`, `subject6`, `subject7`, `subject8`, `subject9`, `subject10`, `subject11`, `total marks`, `grade`, `comments`, `status`) VALUES
(1, 'William Carter', '8584', '2', 'East', '1', '55', '45', '35', '45', '36', '55', '68', '74', '34', '88', '35', 515, 'C', 'Pass', 'Work hard');

-- --------------------------------------------------------

--
-- Table structure for table `feescollection`
--

CREATE TABLE `feescollection` (
  `id` int(10) NOT NULL,
  `Student` varchar(40) NOT NULL,
  `RegNo` varchar(40) NOT NULL,
  `Class` varchar(40) NOT NULL,
  `Session` varchar(40) NOT NULL,
  `PaidAmount` int(10) NOT NULL,
  `Balance` int(10) NOT NULL,
  `Branch` varchar(40) NOT NULL,
  `Date` date NOT NULL,
  `Remarks` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feestructure`
--

CREATE TABLE `feestructure` (
  `id` int(10) NOT NULL,
  `class` text NOT NULL,
  `particulars` text NOT NULL,
  `total` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hostels`
--

CREATE TABLE `hostels` (
  `id` int(10) NOT NULL,
  `name` varchar(40) NOT NULL,
  `bednumber` varchar(40) NOT NULL,
  `status` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostels`
--

INSERT INTO `hostels` (`id`, `name`, `bednumber`, `status`) VALUES
(1, 'Kimatu', '64 Bouble Beds', 'Available'),
(2, 'Syokimau', '50 Bouble Beds', 'Available'),
(3, 'Mwatu', '55 Bouble Beds', 'Full'),
(4, 'Masaku', '85 Bouble Beds', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `Notice`
--

CREATE TABLE `Notice` (
  `id` int(10) NOT NULL,
  `name` varchar(40) NOT NULL,
  `date` date NOT NULL,
  `details` text NOT NULL,
  `Posted_By` varchar(40) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Notice`
--

INSERT INTO `Notice` (`id`, `name`, `date`, `details`, `Posted_By`, `status`) VALUES
(2, 'Spirng Carnival', '2018-07-30', 'To inform all the students about the Spring Carnival Event which is going to be held on school premises. All the students are requested to take part in different activities. For more details contact RTE.', 'admin', 'New');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(10) NOT NULL,
  `term` int(10) NOT NULL,
  `status` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `term`, `status`) VALUES
(1, 1, 'Active'),
(2, 2, 'Active'),
(3, 3, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `stream`
--

CREATE TABLE `stream` (
  `id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stream`
--

INSERT INTO `stream` (`id`, `Name`, `status`) VALUES
(1, 'East', 'Active'),
(2, 'South', 'Active'),
(3, 'North', 'Active'),
(4, 'West', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `studentclasses`
--

CREATE TABLE `studentclasses` (
  `id` int(100) NOT NULL,
  `Name` text NOT NULL,
  `Status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentclasses`
--

INSERT INTO `studentclasses` (`id`, `Name`, `Status`) VALUES
(1, '1 ', 'Active'),
(5, '2', 'Active'),
(9, '3', 'Active'),
(13, '4', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `ID` int(10) UNSIGNED NOT NULL,
  `FullName` varchar(40) NOT NULL,
  `Gender` varchar(40) NOT NULL,
  `DOB` date NOT NULL,
  `Photo` varchar(40) DEFAULT NULL,
  `RegNo` varchar(40) NOT NULL,
  `Class` varchar(10) NOT NULL,
  `Stream` varchar(40) NOT NULL,
  `Session` varchar(40) NOT NULL,
  `Hostel` varchar(10) NOT NULL,
  `DOJ` date NOT NULL,
  `Category` int(10) UNSIGNED DEFAULT NULL,
  `AcademicYear` int(10) UNSIGNED NOT NULL,
  `TotalFees` int(10) UNSIGNED NOT NULL,
  `AdvanceFees` int(11) NOT NULL,
  `Balance` int(11) DEFAULT NULL,
  `grsxcvg_status` text NOT NULL,
  `Parent` text NOT NULL,
  `Parent_contacts` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`ID`, `FullName`, `Gender`, `DOB`, `Photo`, `RegNo`, `Class`, `Stream`, `Session`, `Hostel`, `DOJ`, `Category`, `AcademicYear`, `TotalFees`, `AdvanceFees`, `Balance`, `grsxcvg_status`, `Parent`, `Parent_contacts`) VALUES
(1, 'Wafula Chebukati', 'Male', '1916-01-18', NULL, 'IEBC/2017', '2', 'W', '1', '1', '2018-05-02', NULL, 1, 1, 10500, 500, 'In', 'Anna Chebukati', '07546894545'),
(2, 'Harry Den', 'Male', '1996-02-05', NULL, '852', '1', 'W', '1', '1', '2018-07-30', 0, 1, 1, 500, 3500, 'In', 'Sarah Den Wendi', '07523468945'),
(3, 'Christine Gray', 'Female', '1997-04-17', '04619000_1532957454.jpg', '123', '3', 'N', '1', '0', '2018-07-30', 0, 1, 0, 5000, 3500, 'In', 'Bob Gary Gray', '07456832156'),
(4, 'Johnny Doe', 'Male', '1996-03-16', '68070100_1532957566.png', '80', '1', 'E', '1', '1', '2018-07-30', 0, 1, 1, 6000, 3500, 'In', 'Jane Doe', '07123456896'),
(5, 'Bruno Den', 'Male', '1996-12-18', '24894200_1532957631.png', '366', '4', 'S', '1', '1', '2018-07-30', 0, 1, 1, 2000, 3500, 'In', 'John Den Doe', '074584123212'),
(6, 'William Carter', 'Male', '1996-09-15', '08808400_1532959007.png', '852', '2', 'E', '1', '0', '2018-07-30', 0, 1, 0, 1500, 13500, 'In', 'Lil Wayne Carter', '074125345621');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(100) NOT NULL,
  `name` text NOT NULL,
  `type` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `type`, `status`) VALUES
(1, 'Mathematics', 'Science', 'Active'),
(2, 'English', 'Language', 'Active'),
(3, 'Swahili', 'Language', 'Active'),
(4, 'Chemistry', 'Science', 'Active'),
(5, 'Physics', 'Science', 'Active'),
(6, 'Biology', 'Science', 'Active'),
(7, 'Busines', 'Humanities', 'Active'),
(8, 'History', 'Humanities', 'Active'),
(9, 'Computer Studies', 'Humanities', 'Active'),
(10, 'Christian Religion', 'Religion', 'Active'),
(11, 'Islamic religion', 'Religion', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(100) NOT NULL,
  `name` text NOT NULL,
  `subject` text NOT NULL,
  `other_Subject` text NOT NULL,
  `duties` varchar(40) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `subject`, `other_Subject`, `duties`, `status`) VALUES
(1, 'Mr Kimani', 'Physics\r\n\r\n\r\n\r\n', 'Chemistry ', 'On Duty', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `id` int(100) NOT NULL,
  `class` varchar(40) NOT NULL,
  `subject` varchar(40) NOT NULL,
  `teacher` text NOT NULL,
  `starttime` varchar(40) NOT NULL,
  `endtime` varchar(40) NOT NULL,
  `day` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examresults`
--
ALTER TABLE `examresults`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feescollection`
--
ALTER TABLE `feescollection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feestructure`
--
ALTER TABLE `feestructure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Notice`
--
ALTER TABLE `Notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stream`
--
ALTER TABLE `stream`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentclasses`
--
ALTER TABLE `studentclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `examresults`
--
ALTER TABLE `examresults`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feescollection`
--
ALTER TABLE `feescollection`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `feestructure`
--
ALTER TABLE `feestructure`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stream`
--
ALTER TABLE `stream`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `studentclasses`
--
ALTER TABLE `studentclasses`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
