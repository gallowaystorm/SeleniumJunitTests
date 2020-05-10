-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 03, 2020 at 07:58 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `caffeineDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `customerCart`
--

CREATE TABLE `customerCart` (
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `productName` varchar(50) NOT NULL,
  `purchaseQuantity` int(5) NOT NULL,
  `productTotal` double(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customerCredentials`
--

CREATE TABLE `customerCredentials` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerCredentials`
--

INSERT INTO `customerCredentials` (`username`, `password`, `email`) VALUES
('ajithmatrik', 'test', 'ajikee1@umbc.edu'),
('ajikee1', 'test123', 'ajithmatrik@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `customerDetails`
--

CREATE TABLE `customerDetails` (
  `customerID` int(11) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `street` varchar(50) NOT NULL,
  `county` varchar(20) NOT NULL,
  `state` varchar(2) NOT NULL,
  `zip` int(5) NOT NULL,
  `email` varchar(100) NOT NULL,
  `activationCode` varchar(15) NOT NULL,
  `activationStatus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerDetails`
--

INSERT INTO `customerDetails` (`customerID`, `firstName`, `lastName`, `street`, `county`, `state`, `zip`, `email`, `activationCode`, `activationStatus`) VALUES
(63, 'Ajith', 'KEE', '1 main street', 'Dover', 'DE', 21228, 'ajikee1@umbc.edu', '84882', 'true'),
(67, 'test', 'test', '1 test street', 'baltimore', 'IA', 21223, 'ajithmatrik@gmail.com', '99182', 'true'),
(68, '', '', '', '', 'DE', 0, '', '52213', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `picid` int(11) NOT NULL,
  `description` varchar(40) DEFAULT NULL,
  `image` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`picid`, `description`, `image`) VALUES
(8, 'echo', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productId` int(3) NOT NULL,
  `productName` varchar(50) NOT NULL,
  `productPrice` double(5,2) NOT NULL,
  `stock` varchar(5) NOT NULL,
  `productDescription` varchar(1000) NOT NULL,
  `productImage` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productId`, `productName`, `productPrice`, `stock`, `productDescription`, `productImage`) VALUES
(18, 'Echo Dot', 50.00, '50', 'The Amazon Echo Dot is a hockey puck-shaped smart speaker.', 0x6563686f446f742e6a706567),
(19, 'Nest Thermostat', 250.00, '100', 'It is an electronic, programmable, and self-learning Wi-Fi-enabled thermostat that optimizes heating and cooling of homes and businesses to conserve energy', 0x6e657374546865726d6f737461742e706e67),
(23, 'August Smart Lock', 97.00, '500', 'Add an August Connect Wi-Fi Bridge (sold separately) to remotely lock/unlock and monitor your door as well to integrate with Alexa, Google Assistant, Airbnb, Home Away Simplisafe and others.\r\nSecure, keyless entry for your smart home. Lock and unlock your door, control keyless access and keep track of who comes and goes, all from your phone. Works with your existing single-cylinder deadbolt\r\nKeep your existing lock and keys. Easily attaches to your existing deadbolt, so everyone can still use their keys.\r\nSend guest keys from anywhere instantlyâ€”all from the August app.\r\nControl access for anyone. Grant access for a few weeks, a few hours, a few minutes. Itâ€™s up to you.\r\nBe sure you are secure with Door Sense. Only August has Door Sense to tell you the door is completely closed and locked.\r\nLocks automatically as you leave and unlocks when you arrive.\r\nSimple, DIY installation. Install in about 10 minutes with just a screwdriver.', 0x6175677573745f736d6172744c6f636b2e6a7067),
(24, 'Irobot Vaccum', 199.00, '200', '-POWERFUL SUCTION: 1600Pa of intense suction picks up dust, crumbs, and dirts. Ideal for hard wood floor carpet\r\n-Easy operation with remote control, or auto clean all at one touch.\r\nEFFICIENT AND INTELLIGENT: GOOVI slim robot vacuum automatically returns to charging base to recharge when in low power, ensuring itâ€™s always charged and ready to clean.\r\nTHOROUGH CLEANING: 2.83â€ low profile design enables vacuum cleaner glide underneath beds and sofa with ease, cleaning under beds, sofa where dirt hides.\r\nWORRY-FREE CLEANING: Large wheels roll over carpets and climb over door ledges to get to the mess. Multiple cleaning modes and a pre-set vacuuming time ensure an effortless clean while you do other things or nothing at all.\r\nWhat You Get: GOOVI Robotic Vacuum, 4x side brushes, 1x extra high efficiency filter, 1x main brush, 1x remote control (2AAA batteries included), 1x cleaning brush, 1x charging dock, 1x adapter, 1-Year Warranty.', 0x69726f626f742e6a7067);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customerDetails`
--
ALTER TABLE `customerDetails`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`picid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD KEY `productId` (`productId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customerDetails`
--
ALTER TABLE `customerDetails`
  MODIFY `customerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `picid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productId` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
