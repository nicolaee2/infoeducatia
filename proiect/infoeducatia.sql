-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2020 at 10:18 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `infoeducatia`
--

-- --------------------------------------------------------

--
-- Table structure for table `carti`
--

CREATE TABLE `carti` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `likes` int(11) NOT NULL,
  `available` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carti`
--

INSERT INTO `carti` (`id`, `title`, `author`, `img`, `description`, `likes`, `available`) VALUES
(12, 'A Brief History Of Time: From Big Bang To Black Holes', 'Stephen Hawking', 'https://images-na.ssl-images-amazon.com/images/I/51P8miZZ6OL.jpg', '            It begins by reviewing the great theories of the cosmos from Newton to Einstein, before delving into the secrets which still lie at the heart of space and time, from the Big Bang to black holes, via spiral galaxies and strong theory. To this day A Brief History of Time remains a staple of the scientific canon, and its succinct and clear language continues to introduce millions to the universe and its wonders    ', 1, 1),
(13, 'Ed Futures: A Collection of Short Stories on the Future of Education', 'Stavros Yiannouka ', 'https://images-na.ssl-images-amazon.com/images/I/516kUGLwuTL.jpg', 'Ordered steak. The menu item blinked in red twice in my digital lens but I didn’t care. I was very hungry and I love meat. Since it became possible to merge our genomic data with health records in the cloud synchronized with each and every digital device, choosing food has turned into a stressful activity. They wanted to tell me what and when to eat and it has made me crazy. They knew better what me and especialy.', 0, 1),
(14, 'The Count of Monte Cristo', ' Alexandre Dumas', 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1309203605l/7126.jpg', '                                            Thrown in prison for a crime he has not committed, Edmond Dantes is confined to the grim fortress of If. There he learns of a great hoard of treasure hidden on the Isle of Monte Cristo and he becomes determined not only to escape, but also to unearth the treasure and use it to plot the destruction of the three men responsible for his incarceration. Dumas’ epic tale of suffering and retribution, inspired by a real-life case of wrongful imprisonment, was a huge popular success when it was first serialized in the 1845s.\n                        ', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `bookid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `userid`, `bookid`) VALUES
(17, 42, 12);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset`
--

CREATE TABLE `password_reset` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `selector` varchar(255) NOT NULL,
  `token` longtext NOT NULL,
  `expire` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `password_reset`
--

INSERT INTO `password_reset` (`id`, `email`, `selector`, `token`, `expire`) VALUES
(15, 'user@user.com', '72d02824dc9ef21e', '$2y$10$7B1flumsnos7g1eCLWMI1u20U3R0SmCydMFF8Lsl7UzFjCPI0yv/i', '1586940206');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(11) NOT NULL,
  `phone` int(20) NOT NULL,
  `book` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `termen` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `phone`, `book`, `date`, `termen`, `email`, `status`) VALUES
(13, 730591455, 'A Brief History Of Time: From Big Bang To Black Holes', '2020-04-15', 1, 'user@user.com', -1),
(14, 744233098, 'A Brief History Of Time: From Big Bang To Black Holes', '2020-05-04', 0, 'martinescunicolaee3@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `address` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `first_name`, `last_name`, `email`, `address`, `password`, `admin`) VALUES
(40, 'user', 'user', 'user@user.com', 'user street', '$2y$10$S7Co9HPxmdwri8LPfb13ceJfE9xw9862noJI/X6aldGPy8z6i.Vm.', 0),
(41, 'admin', 'admin', 'infoeducatia@gmail.com', 'admin street', '$2y$10$y6lP2/druULVI.ZLQuhE.ePOHL4YA6TNy40EzONbIvySUwaH71xGm', 1),
(42, 'Nicolae', 'Martinescu', 'martinescunicolaee3@gmail.com', 'strada principala', '$2y$10$NFR3OpW21MaP38FSIMmKped.ADJ/YB9POm4j7SHMlN1.yYBrlevU.', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carti`
--
ALTER TABLE `carti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset`
--
ALTER TABLE `password_reset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `status` (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carti`
--
ALTER TABLE `carti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `password_reset`
--
ALTER TABLE `password_reset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
