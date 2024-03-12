-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2020 at 02:40 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `twofactor`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintbl`
--

CREATE TABLE IF NOT EXISTS `admintbl` (
`id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `skey` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `admintbl`
--

INSERT INTO `admintbl` (`id`, `username`, `password`, `skey`) VALUES
(1, 'cloud', '123', 123),
(3, 'admin', '123', 111);

-- --------------------------------------------------------

--
-- Table structure for table `drequest`
--

CREATE TABLE IF NOT EXISTS `drequest` (
`drequestId` int(255) NOT NULL,
  `userId` int(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `encdec`
--

CREATE TABLE IF NOT EXISTS `encdec` (
`id` int(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `encdec`
--

INSERT INTO `encdec` (`id`, `name`, `mobile`, `address`) VALUES
(1, 'admin', '9652744129', 'H-N0 3_6, Rayannapalem'),
(2, 'N0JV1kjlwxvbBLn/8GgPfg==', 'POa8GyKRzIinNNJcVqJZ+A==', '3hojtXp82cXjKnypL2Yj2Hdr0ZsNZD4i18d0mh5S26s=');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE IF NOT EXISTS `files` (
`fileId` int(255) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `fdata` text,
  `fdate` varchar(255) DEFAULT NULL,
  `akey` varchar(255) DEFAULT NULL,
  `tkey` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `uploadedby` varchar(255) DEFAULT NULL,
  `expiredate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`fileId`, `fname`, `fdata`, `fdate`, `akey`, `tkey`, `status`, `uploadedby`, `expiredate`) VALUES
(1, 'cloud.txt', 'zBC4NwPZmaHHw4t/bM2H+oXaH/MzWyRaBji5U+t3ALGckzGcL5CQifHvekKybAOve3ZsEVw0pNM7gHK+XP7SQDbW7ZcDzccXiGBISnynI4nJ1g/49Ux1yt07LRu/EIXq3heSfK0tyb+jIBbrSSXctCrW4xmnJ6hAphx+0LQL0IOOb3n+ImWKvrPCIAoXPG3iMVIFBYyuNPc0Mm+Ktl41aK9rKRU3ALUzav+YsjbUgjhwH2whW9TAc1sOd0b5rWoxQVB6acexGbqbmu3NlSclQ+Aqj26jNmctTMEXFUiuu6A571uLcuH/U4fMJ/qCIsyaA+SFQojEZzsLMlZnxyeCnICpQp4ZES1R7RvsodeOa6HnBEaZsP/xK3hggBqucZlxsEYj00AMd+MzPTWMfKnrpTx9rVSDJFyIf22hy3D3O/reifIL9UjcCiVSIfwGHlG9cLEERqq4g8W924qDWXUKxc5F/S0SipJ9HdKA9LTyrUXi/AFwnvzNLxQ1iVxCTr5Hm1y4hhXZ48yHt/lTOKQcSPDHw68bN/UtMgdV8goTk23VvhIltJjMq4WhVELYOQijLKn7I3lQ/XPBRO4rLtlJUg==', '2020-07-02 18:07:54', 'javax.crypto.spec.SecretKeySpec@fffe8de2', '386704', 'uploaded', 'satee107@gmail.com', '03/07/2020');

-- --------------------------------------------------------

--
-- Table structure for table `noti`
--

CREATE TABLE IF NOT EXISTS `noti` (
`notiId` int(255) NOT NULL,
  `fileId` int(255) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `task` varchar(255) DEFAULT NULL,
  `tby` varchar(255) DEFAULT NULL,
  `tdate` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `uploadedby` varchar(255) DEFAULT NULL,
  `expiredate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=97 ;

--
-- Dumping data for table `noti`
--

INSERT INTO `noti` (`notiId`, `fileId`, `fname`, `task`, `tby`, `tdate`, `role`, `uploadedby`, `expiredate`) VALUES
(88, 67, 'cloud.txt', 'UPLOADED', 'Authority', '2020-06-05 13:03:59', 'Authority', 'satee107@gmail.com', '06/06/2020'),
(89, 67, 'cloud.txt', 'DOWNLOADED', 'sateesh kumar', '2020-06-05 13:35:48', 'User', NULL, NULL),
(90, 68, 'raju.txt', 'UPLOADED', 'Authority', '2020-06-05 14:54:56', 'Authority', 'satee107@gmail.com', '06/06/2020'),
(91, 69, 'raju.txt', 'UPLOADED', 'Authority', '2020-06-05 15:01:07', 'Authority', 'sateesh.itech@gmail.com', '06/06/2020'),
(92, 69, 'raju.txt', 'DOWNLOADED', 'sateesh kumar', '2020-06-05 15:16:11', 'User', NULL, NULL),
(93, 69, 'raju.txt', 'DOWNLOADED', 'kumar', '2020-06-05 15:26:31', 'User', NULL, NULL),
(94, 68, 'raju.txt', 'Deleted', 'System', '2020-06-06 22:33:05', 'System', 'System', '06/06/2020'),
(95, 69, 'raju.txt', 'Deleted', 'System', '2020-06-06 22:33:08', 'System', 'System', '06/06/2020'),
(96, 1, 'cloud.txt', 'UPLOADED', 'Authority', '2020-07-02 18:07:55', 'Authority', 'satee107@gmail.com', '03/07/2020');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE IF NOT EXISTS `request` (
`requestId` int(255) NOT NULL,
  `fileId` int(255) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `rto` varchar(255) DEFAULT NULL,
  `rby` varchar(255) DEFAULT NULL,
  `datee` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`requestId`, `fileId`, `fname`, `rto`, `rby`, `datee`, `status`) VALUES
(30, 69, 'raju.txt', 'admin', 'satee107@gmail.com', '2020-06-05 15:18:02', 'Admin Key Sent'),
(31, 69, 'raju.txt', 'sateesh.itech@gmail.com', 'satee107@gmail.com', '2020-06-05 15:23:16', 'Owner Key Sent');

-- --------------------------------------------------------

--
-- Table structure for table `share`
--

CREATE TABLE IF NOT EXISTS `share` (
`sid` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `fileId` varchar(50) DEFAULT NULL,
  `shareto` varchar(255) DEFAULT NULL,
  `shareby` varchar(255) DEFAULT NULL,
  `dateofshare` varchar(255) DEFAULT NULL,
  `tkey` varchar(255) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `share`
--

INSERT INTO `share` (`sid`, `fname`, `fileId`, `shareto`, `shareby`, `dateofshare`, `tkey`) VALUES
(19, 'raju.txt', '69', 'satee107@gmail.com', 'sateesh.itech@gmail.com', '2020-06-05 15:01:34', '89008');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`userId` int(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `empid` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `name`, `email`, `pass`, `gender`, `phone`, `address`, `empid`, `role`, `otp`, `ip`, `status`) VALUES
(24, 'sateesh kumar', 'satee107@gmail.com', '/EB36OG6hURw2HCEsJuGEg==', 'male', '9010990285', 'kphb,hyderbad', '101', 'Android developer', NULL, '0:0:0:0:0:0:0:1', 1),
(25, 'kumar', 'sateesh.itech@gmail.com', 'Bx+mdqM9MSax4sFFbDP5Iw==', 'male', '7893636382', 'kphb,hyderbad', '111', 'java developer', NULL, '0:0:0:0:0:0:0:1', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admintbl`
--
ALTER TABLE `admintbl`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drequest`
--
ALTER TABLE `drequest`
 ADD PRIMARY KEY (`drequestId`);

--
-- Indexes for table `encdec`
--
ALTER TABLE `encdec`
 ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
 ADD PRIMARY KEY (`fileId`);

--
-- Indexes for table `noti`
--
ALTER TABLE `noti`
 ADD PRIMARY KEY (`notiId`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
 ADD PRIMARY KEY (`requestId`);

--
-- Indexes for table `share`
--
ALTER TABLE `share`
 ADD UNIQUE KEY `sid` (`sid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`userId`,`email`,`empid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admintbl`
--
ALTER TABLE `admintbl`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `drequest`
--
ALTER TABLE `drequest`
MODIFY `drequestId` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `encdec`
--
ALTER TABLE `encdec`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
MODIFY `fileId` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `noti`
--
ALTER TABLE `noti`
MODIFY `notiId` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
MODIFY `requestId` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `share`
--
ALTER TABLE `share`
MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `userId` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
