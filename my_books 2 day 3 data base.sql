-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2022 at 08:42 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my books`
--
CREATE DATABASE IF NOT EXISTS `my books` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `my books`;

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(34) NOT NULL,
  `author_country` varchar(34) NOT NULL,
  `author_birth_date` date NOT NULL,
  `books_writen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `author_name`, `author_country`, `author_birth_date`, `books_writen`) VALUES
(1, 'Michael D. Watkins', 'Canada', '1965-12-06', 11),
(2, 'Napoleon Hill', 'US', '1975-08-04', 36),
(3, 'Sarah J. Maas', 'US', '1986-03-05', 27),
(4, 'Holly Black', 'US', '1971-11-10', 14),
(5, 'Ashley Hering Blake', 'US', '1983-04-03', 7);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `title` varchar(34) NOT NULL,
  `genre` varchar(34) NOT NULL,
  `chapters` smallint(11) NOT NULL,
  `pages` int(11) NOT NULL,
  `fk_publisher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `title`, `genre`, `chapters`, `pages`, `fk_publisher_id`) VALUES
(1, 'The First 90 Days', 'Education', 36, 351, 1),
(2, 'Think and Grow Rich', 'Education', 25, 254, 2),
(3, 'Law of Success', 'Self Help', 19, 140, 3),
(4, 'Master Your Next Move', 'Business & Economics', 8, 89, 1),
(5, 'Throne of Glass', 'Fantasy', 18, 350, 4),
(6, 'The Cruel Prince', 'Fantasy - Romance', 21, 268, 5),
(7, 'The Wicked King', 'Fantasy', 33, 198, 5),
(8, 'The Queen of Nothing', 'Romance', 34, 274, 6),
(9, 'Delilah Green Doesn\'t Care', 'Romance', 12, 164, 7);

-- --------------------------------------------------------

--
-- Table structure for table `book_author`
--

CREATE TABLE `book_author` (
  `fk_book_id` int(11) NOT NULL,
  `fk_author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_author`
--

INSERT INTO `book_author` (`fk_book_id`, `fk_author_id`) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 1),
(5, 3),
(6, 4),
(7, 4),
(8, 4),
(9, 5);

-- --------------------------------------------------------

--
-- Table structure for table `book_dates`
--

CREATE TABLE `book_dates` (
  `fk_book_id` int(11) NOT NULL,
  `fk_date_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_dates`
--

INSERT INTO `book_dates` (`fk_book_id`, `fk_date_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9);

-- --------------------------------------------------------

--
-- Table structure for table `dates`
--

CREATE TABLE `dates` (
  `date_id` int(11) NOT NULL,
  `publication_date` date NOT NULL,
  `buying` date NOT NULL,
  `start_reading` date NOT NULL,
  `end_reading` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dates`
--

INSERT INTO `dates` (`date_id`, `publication_date`, `buying`, `start_reading`, `end_reading`) VALUES
(1, '2013-05-14', '2015-03-04', '2015-03-23', '2015-04-16'),
(2, '2012-05-31', '2017-03-09', '2017-03-23', '2017-05-17'),
(3, '2004-07-26', '2006-05-26', '2006-07-12', '2006-10-15'),
(4, '2019-02-06', '2019-08-15', '2019-09-22', '2019-10-06'),
(5, '2012-08-02', '2015-02-15', '2016-05-14', '2016-10-04'),
(6, '2018-01-02', '2019-12-25', '2020-02-12', '2020-05-09'),
(7, '2019-01-08', '2020-05-03', '2020-05-18', '2020-08-04'),
(8, '2019-01-08', '2020-08-04', '2020-08-04', '2020-08-04'),
(9, '2022-02-22', '2022-02-25', '2022-02-27', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `publisher_id` int(11) NOT NULL,
  `publisher_name` varchar(34) NOT NULL,
  `publisher_city` varchar(34) NOT NULL,
  `publisher_country` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`publisher_id`, `publisher_name`, `publisher_city`, `publisher_country`) VALUES
(1, ' Harvard Business Review Press ', 'Boston', 'Massachusetts US'),
(2, 'CreateSpace Independent Publishing', 'Scots Valley ', 'Califfornia US'),
(3, 'High Roads Media', 'Johnson City', 'Tennessee US'),
(4, 'Bloomsbury', 'London', 'UK'),
(5, ' Little, Brown Books for Young Rea', 'New York City', 'US'),
(6, 'Little Brown', 'London', 'UK'),
(7, 'Berkley', 'New York City', 'US');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `fk_publisher_id` (`fk_publisher_id`);

--
-- Indexes for table `book_author`
--
ALTER TABLE `book_author`
  ADD PRIMARY KEY (`fk_book_id`,`fk_author_id`),
  ADD KEY `fk_author_id` (`fk_author_id`);

--
-- Indexes for table `book_dates`
--
ALTER TABLE `book_dates`
  ADD PRIMARY KEY (`fk_book_id`,`fk_date_id`),
  ADD KEY `fk_date_id` (`fk_date_id`);

--
-- Indexes for table `dates`
--
ALTER TABLE `dates`
  ADD PRIMARY KEY (`date_id`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`publisher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `publisher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`fk_publisher_id`) REFERENCES `publishers` (`publisher_id`);

--
-- Constraints for table `book_author`
--
ALTER TABLE `book_author`
  ADD CONSTRAINT `book_author_ibfk_1` FOREIGN KEY (`fk_book_id`) REFERENCES `books` (`book_id`),
  ADD CONSTRAINT `book_author_ibfk_2` FOREIGN KEY (`fk_author_id`) REFERENCES `author` (`author_id`);

--
-- Constraints for table `book_dates`
--
ALTER TABLE `book_dates`
  ADD CONSTRAINT `book_dates_ibfk_1` FOREIGN KEY (`fk_book_id`) REFERENCES `books` (`book_id`),
  ADD CONSTRAINT `book_dates_ibfk_2` FOREIGN KEY (`fk_book_id`) REFERENCES `books` (`book_id`),
  ADD CONSTRAINT `book_dates_ibfk_3` FOREIGN KEY (`fk_date_id`) REFERENCES `dates` (`date_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
