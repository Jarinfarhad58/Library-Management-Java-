-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2018 at 07:17 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `starlb`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_book`
--

CREATE TABLE `add_book` (
  `book_name` varchar(50) NOT NULL,
  `book_id` varchar(50) NOT NULL,
  `book_type` varchar(50) NOT NULL,
  `author_name` varchar(50) NOT NULL,
  `almera_no` int(50) NOT NULL,
  `row_no` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_book`
--

INSERT INTO `add_book` (`book_name`, `book_id`, `book_type`, `author_name`, `almera_no`, `row_no`) VALUES
('Java', '02', 'Programming', 'Balaguru', 2, 3),
('ANSI', '03', 'Programming', 'Balaguru', 2, 3),
('ANSI', '04', 'Programming', 'Balaguru', 2, 3),
('ANSI', '05', 'Programming', 'Balaguru', 2, 3),
('ANSI', '7', 'Programming', 'Balaguru', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `add_pdf`
--

CREATE TABLE `add_pdf` (
  `book_name` varchar(50) NOT NULL,
  `book_type` varchar(50) NOT NULL,
  `author_name` varchar(50) NOT NULL,
  `drive_name` varchar(50) NOT NULL,
  `folder_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_pdf`
--

INSERT INTO `add_pdf` (`book_name`, `book_type`, `author_name`, `drive_name`, `folder_name`) VALUES
('Ansi C', 'Programming', 'Balaguru', 'C', 'Programming Books'),
('Java', 'Programming', 'Balaguru', 'D', 'Programming Books'),
('MIS', 'Theory', 'O Brien', 'H', 'Books');

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `student_name` varchar(50) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `class` int(50) NOT NULL,
  `book_id` varchar(50) NOT NULL,
  `received` varchar(50) NOT NULL,
  `returnd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`student_name`, `student_id`, `class`, `book_id`, `received`, `returnd`) VALUES
('Jarin', '125', 6, '01', '20/11/18', '26/12/18'),
('Farhad', '15103125', 7, '02', '20/12/18', '30/12/18'),
('jarin', '123', 5, '123', '24/25/30', '25/30/10');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_uname` varchar(50) NOT NULL,
  `u_pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_uname`, `u_pass`) VALUES
('Jarin', 'Jarin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_book`
--
ALTER TABLE `add_book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`book_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
