-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 21, 2020 at 11:10 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agrimanagment`
--

-- --------------------------------------------------------

--
-- Table structure for table `orderproduct`
--

DROP TABLE IF EXISTS `orderproduct`;
CREATE TABLE IF NOT EXISTS `orderproduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderproduct`
--

INSERT INTO `orderproduct` (`id`, `s_id`, `product_id`) VALUES
(36, 3, 26),
(34, 3, 22),
(33, 3, 4),
(28, 3, 23),
(37, 3, 21),
(31, 3, 24),
(25, 3, 17);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL,
  `price` int(30) NOT NULL,
  `date` varchar(20) NOT NULL,
  `productStatus` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `user_id`, `price`, `date`, `productStatus`) VALUES
(26, 'orange', 2, 56, '1/2/2020', 'ordered'),
(23, 'onion', 2, 12, '12/20/2019', 'ordered'),
(4, 'aa', 1, 3234, '12/20/2019', 'ordered'),
(22, 'teff', 2, 2001, '12/20/2019', 'ordered'),
(21, 'teff', 2, 2001, '12/20/2019', 'ordered'),
(24, 'potato', 2, 13, '1/29/2020', 'ordered'),
(25, 'onion', 2, 25, '1/7/2020', 'available'),
(27, 'bannana', 2, 30, '1/2/2020', 'available');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `region` varchar(30) NOT NULL,
  `zone` varchar(30) NOT NULL,
  `kebele` varchar(30) NOT NULL,
  `phoneNumber` varchar(30) NOT NULL,
  `idNumber` varchar(30) NOT NULL,
  `userType` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstName`, `lastName`, `region`, `zone`, `kebele`, `phoneNumber`, `idNumber`, `userType`, `username`, `password`) VALUES
(2, 'Abera', 'Abebe', 'Adma', '2000', '546', '091187345675', '2545', 'farmer', 'farmer', '$2a$10$YjX6JtDXdtxrsDvRWzSYFuJcg9z0diKXDhJSHzVVhLRDnP7P5kLfm'),
(3, 'Aklilu', 'Abera', 'Gonder', '3000', '234', '0902876434', '8797', 'seller', 'seller', '$2a$10$UhPeXNx3KDMzm6r0VaWu4.waK/pv3Ldiv7iCeRfQg6T.vTRIugLnW'),
(33, 'Kebede', 'Debebe', 'Addis Ababa', '3000', '23', '0911872334', '3466', 'farmer', 'farmer2', '$2a$10$hP8y7ft15v/CzY4cS/1WyeO6ESxq/FLwSVuQ7pD.6N/tJmXBT6LBq'),
(32, 'Kebede', 'Debebe', 'Addis Ababa', '3000', '23', '0911872334', '3466', 'farmer', 'farmer2', '$2a$10$TE4AjeN4APGDmUSP6J4Mx.se53v5R44Seusr8pzk16/ZZAz1KnAR2'),
(45, 'Debebe', 'Alemayew', 'Adama', '1000', '34', '0923765413', '32455', 'seller', 'seller2', '$2a$10$40WNFJB2nIE44SHkNhhzoeK6G7xUqRvaOPMD5E4uyTJdhraBjsMIu');

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

DROP TABLE IF EXISTS `usertype`;
CREATE TABLE IF NOT EXISTS `usertype` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'farmer'),
(3, 'seller');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
