-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 24, 2018 at 05:53 AM
-- Server version: 5.5.60-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `product`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminaddprod`
--

CREATE TABLE IF NOT EXISTS `adminaddprod` (
  `ProductName` varchar(100) NOT NULL,
  `ProductID` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Price` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminaddprod`
--

INSERT INTO `adminaddprod` (`ProductName`, `ProductID`, `Category`, `Price`) VALUES
('saree', '1', 'clothing', '2000'),
('samsungS8', '2', 'electronics', '35000'),
('titan_watch', '3', 'accessories', '4500'),
('wooden_cot', '4', 'furniture', '35000'),
('kurti', '1002', 'clothing', '650'),
('laptop', '2002', 'electronics', '30000'),
('goggles', '3002', 'accessories', '1750'),
('sofa_set', '4002', 'furniture', '56000');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `First Name` varchar(100) NOT NULL,
  `Last Name` varchar(100) NOT NULL,
  `Mobile number` varchar(100) NOT NULL,
  `Email Id` varchar(100) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`First Name`, `Last Name`, `Mobile number`, `Email Id`, `UserName`, `Password`) VALUES
('null', 'null', 'null', 'null', 'null', 'null'),
('supriya', 'PS', '7338', 'pssupriya98@gmail.com', 'sup', 'sup'),
('null', 'null', 'null', 'null', 'null', 'null'),
('sai', 'sruthi', '9445', 'vsaisruthi5@gmail.com', 'sai', 'sruthi');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
