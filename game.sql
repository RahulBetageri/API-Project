-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2020 at 03:58 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `game`
--

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `characters` varchar(100) NOT NULL,
  `power` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `name`, `characters`, `power`) VALUES
(1, 'Mutants', 'Apocalypse', '80'),
(2, 'Mutants', 'Professor X', '75'),
(3, 'Mutants', 'Dark Pheonix', '90'),
(4, 'Mutants', 'Magneto', '78'),
(5, 'Mutants', 'Wolverin', '64'),
(6, 'Mutants', 'Mystique', '66'),
(7, 'Anti heroes', 'Mandrin', '70'),
(8, 'Anti heroes', 'Thanos', '80'),
(9, 'Anti heroes', 'Galactus', '95'),
(10, 'Anti heroes', 'Hela', '75'),
(11, 'Anti heroes', 'Ego', '50'),
(12, 'Anti heroes', 'Dr. Doom', '78'),
(13, 'Avengers', 'Iron man', '60'),
(14, 'Avengers', 'Captain America', '68'),
(15, 'Avengers', 'Spider man', '58'),
(16, 'Avengers', 'Black Panther', '68'),
(17, 'Avengers', 'Vision', '50'),
(18, 'Avengers', 'Hawk eye', '30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
