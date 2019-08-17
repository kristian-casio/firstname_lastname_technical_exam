-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2019 at 07:54 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `youtube_app`
--
CREATE DATABASE IF NOT EXISTS `youtube_app` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `youtube_app`;

-- --------------------------------------------------------

--
-- Table structure for table `youtube_channels`
--

CREATE TABLE `youtube_channels` (
  `id` int(11) NOT NULL,
  `channel_id` varchar(30) NOT NULL,
  `channel_title` varchar(75) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `youtube_channels`
--

INSERT INTO `youtube_channels` (`id`, `channel_id`, `channel_title`, `created_at`) VALUES
(1, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'NBA', '2019-08-18 00:11:19');

-- --------------------------------------------------------

--
-- Table structure for table `youtube_channel_videos`
--

CREATE TABLE `youtube_channel_videos` (
  `id` int(11) NOT NULL,
  `video_id` varchar(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `thumbnails` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `youtube_channel_videos`
--

INSERT INTO `youtube_channel_videos` (`id`, `video_id`, `title`, `description`, `thumbnails`, `created_at`) VALUES
(1, 'uZWxEmYsvyQ', 'NBA 360 | 2019 NBA Finals', 'Get a special 360 degree, all-access look at the 2019 NBA Finals matchup between the Toronto Raptors Golden State Warriors and immerse yourself into these ...', 'https://i.ytimg.com/vi/uZWxEmYsvyQ/default.jpg', '2019-08-18 00:11:19'),
(2, '2VN_GqTTdmA', 'NBA&#39;s Top 60 Assists | 2018-19 NBA Season | #NBAAssistWeek', 'Let\'s count down the top 60 assists from the 2018-19 NBA Season Subscribe to the NBA: http://bit.ly/2rCglzY For news, stories, highlights and more, go to our ...', 'https://i.ytimg.com/vi/2VN_GqTTdmA/default.jpg', '2019-08-18 00:11:19'),
(3, '3R905lfn3ro', 'USAB Men&#39;s National Team vs. Spain Men&#39;s National Team Exhibition', 'The United States defeated Spain, 90-81. Donovan Mitchell led the United States with 13 points (5-10 FG, 2-3 3pt FG), while Kemba Walker added 11 points (4-7 ...', 'https://i.ytimg.com/vi/3R905lfn3ro/default.jpg', '2019-08-18 00:11:19'),
(4, 'U7m6Ub2bhC8', 'Ben Simmons&#39; Best Assists | 2018-19 Season | #NBAAssistWeek', 'Check out Ben Simmons\' best assists from this past season! Subscribe to the NBA: http://bit.ly/2rCglzY For news, stories, highlights and more, go to our official ...', 'https://i.ytimg.com/vi/U7m6Ub2bhC8/default.jpg', '2019-08-18 00:11:19'),
(5, 'IGQIdQzaJFA', 'Best of the Orlando Magic! | 2018-19 NBA Season', 'Check out the best plays and moments from the Orlando Magic\'s 2018-19 season! Subscribe to the NBA: http://bit.ly/2rCglzY For news, stories, highlights and ...', 'https://i.ytimg.com/vi/IGQIdQzaJFA/default.jpg', '2019-08-18 00:11:19'),
(6, 'oQ3HdoD7IkU', 'NBA&#39;s Best Assist of Every Team | 2018-19 NBA Season | #NBAAssistWeek', 'Take a look at every team\'s best assist from the NBA Season! #NBAAssistWeek Subscribe to the NBA: http://bit.ly/2rCglzY For news, stories, highlights and more, ...', 'https://i.ytimg.com/vi/oQ3HdoD7IkU/default.jpg', '2019-08-18 00:11:19'),
(7, 'hon7p2eZ4D8', 'Kyle Lowry&#39;s Best Assists | 2018-19 Season | #NBAAssistWeek', 'Take a look at Kyle Lowry\'s best assists from this past season! Subscribe to the NBA: http://bit.ly/2rCglzY For news, stories, highlights and more, go to our official ...', 'https://i.ytimg.com/vi/hon7p2eZ4D8/default.jpg', '2019-08-18 00:11:19'),
(8, '9FFgn2-cIzU', 'Best of the Denver Nuggets! | 2018-19 NBA Season', 'Check out the best plays and moments from the Denver Nuggets\' 2018-19 season! Subscribe to the NBA: http://bit.ly/2rCglzY For news, stories, highlights and ...', 'https://i.ytimg.com/vi/9FFgn2-cIzU/default.jpg', '2019-08-18 00:11:19'),
(9, 'imLkGKt9dCE', 'NBA&#39;s Best Between The Legs Assists | 2018-19 NBA Season | #NBAAssistWeek', 'Take a look at the best between the legs dimes from the NBA Season! #NBAAssistWeek Subscribe to the NBA: http://bit.ly/2rCglzY For news, stories, highlights ...', 'https://i.ytimg.com/vi/imLkGKt9dCE/default.jpg', '2019-08-18 00:11:19'),
(10, 'gZAsEBJ0pak', 'Best of the Indiana Pacers! | 2018-19 NBA Season', 'Check out the best plays from the Indiana Pacers this past season! Subscribe to the NBA: http://bit.ly/2rCglzY For news, stories, highlights and more, go to our ...', 'https://i.ytimg.com/vi/gZAsEBJ0pak/default.jpg', '2019-08-18 00:11:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `youtube_channels`
--
ALTER TABLE `youtube_channels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `channelId` (`channel_id`);

--
-- Indexes for table `youtube_channel_videos`
--
ALTER TABLE `youtube_channel_videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `video_id` (`video_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `youtube_channels`
--
ALTER TABLE `youtube_channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `youtube_channel_videos`
--
ALTER TABLE `youtube_channel_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
