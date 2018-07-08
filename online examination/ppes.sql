-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2018 at 07:09 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppes`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE `admin_details` (
  `name` varchar(40) NOT NULL,
  `pass` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`name`, `pass`) VALUES
('mazedaar041', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `canswers`
--

CREATE TABLE `canswers` (
  `sno` int(100) NOT NULL,
  `email` varchar(40) NOT NULL,
  `QNO` int(100) NOT NULL,
  `ans` varchar(10) NOT NULL,
  `cans` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cquestions`
--

CREATE TABLE `cquestions` (
  `SNO` int(100) NOT NULL,
  `QUESTION` text NOT NULL,
  `ANS1` varchar(100) NOT NULL,
  `ANS2` varchar(100) NOT NULL,
  `ANS3` varchar(100) NOT NULL,
  `ANS4` varchar(100) NOT NULL,
  `CORRECT` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cquestions`
--

INSERT INTO `cquestions` (`SNO`, `QUESTION`, `ANS1`, `ANS2`, `ANS3`, `ANS4`, `CORRECT`) VALUES
(1, '#include \"stdio.h\"\r\nint main()\r\n{\r\n    char arr[100];\r\n    printf(\"%d\", scanf(\"%s\", arr));\r\n    /* Suppose that input value given\r\n        for above scanf is \"GeeksQuiz\" */\r\n    return 1;\r\n}\r\n', '1', '9', '100', '10', 'a'),
(2, 'How to create a dynamic array of pointers (to integers) of size 10 using new in C++? Hint: We can create a non-dynamic array using int *arr[10]', 'int *arr = new int *[10];', 'int **arr = new int *[10];', 'int *arr = new int [10];', 'Not Possible', 'b'),
(3, 'Which of the following is true about new when compared with malloc. 1) new is an operator, malloc is a function 2) new calls constructor, malloc doesn\'t 3) new returns appropriate pointer, malloc returns void * and pointer needs to typecast to appropriate type.', '1 and 3', '2 and 3', '1 and 2', 'All 1, 2 and 3', 'd');

-- --------------------------------------------------------

--
-- Table structure for table `janswers`
--

CREATE TABLE `janswers` (
  `sno` int(100) NOT NULL,
  `email` varchar(40) NOT NULL,
  `QNO` int(100) NOT NULL,
  `ans` varchar(100) NOT NULL,
  `cans` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `janswers`
--

INSERT INTO `janswers` (`sno`, `email`, `QNO`, `ans`, `cans`) VALUES
(1, 'rish@gmail.com', 1, 'c', 'c'),
(2, 'rish@gmail.com', 2, 'a', 'a'),
(3, 'rish@gmail.com', 3, 'a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `personal_details`
--

CREATE TABLE `personal_details` (
  `Name` varchar(40) NOT NULL,
  `Password` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personal_details`
--

INSERT INTO `personal_details` (`Name`, `Password`, `email`, `mobile`, `city`) VALUES
('abc', '12345', 'sdfcjknd@gmail.com', '1234554324543', 'dfdsds'),
('infinity041', '12345', 'rish@gmail.com', '7054575205', 'lko');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `SNO` int(100) NOT NULL,
  `QUESTION` text NOT NULL,
  `ANS1` varchar(100) NOT NULL,
  `ANS2` varchar(100) NOT NULL,
  `ANS3` varchar(100) NOT NULL,
  `ANS4` varchar(100) NOT NULL,
  `CORRECT` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`SNO`, `QUESTION`, `ANS1`, `ANS2`, `ANS3`, `ANS4`, `CORRECT`) VALUES
(1, 'class Base {', 'Base::show() called', 'Derived::show() called', 'Compiler Error', 'Runtime Error', 'c'),
(2, '1) Private methods are final.', '1, 2 and 4', 'Only 1 and 2', '1, 2 and 3', '2, 3and 4', 'a'),
(3, 'Output of following Java program?', 'Base,Derived,Derived', 'Base,Base,Derived', 'Base,Derived,Base', 'Compiler Error', 'a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_details`
--
ALTER TABLE `admin_details`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `canswers`
--
ALTER TABLE `canswers`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `cquestions`
--
ALTER TABLE `cquestions`
  ADD PRIMARY KEY (`SNO`);

--
-- Indexes for table `janswers`
--
ALTER TABLE `janswers`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `personal_details`
--
ALTER TABLE `personal_details`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`SNO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `canswers`
--
ALTER TABLE `canswers`
  MODIFY `sno` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `janswers`
--
ALTER TABLE `janswers`
  MODIFY `sno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
