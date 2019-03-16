-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2019 at 04:58 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ai-php`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `city` varchar(50) NOT NULL,
  `city_id` int(11) NOT NULL,
  `taluka` varchar(50) CHARACTER SET latin1 NOT NULL,
  `district` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `mobile` varchar(255) CHARACTER SET latin1 NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `mobile`, `created_at`) VALUES
(8, 'Shridhar Tandale', 'tandaleshridhar27@gmail.com', '$2y$10$owa6AqBds19vCBs/a4lyoeVz7Hzq68rMhvab8BhgVBTATrPb5FGoe', '', '2019-03-05 10:58:36');

-- --------------------------------------------------------

--
-- Table structure for table `animal`
--

CREATE TABLE `animal` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `animal_type_id` int(11) NOT NULL,
  `tag` varchar(255) CHARACTER SET latin1 NOT NULL,
  `name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `breed` varchar(50) CHARACTER SET latin1 NOT NULL,
  `color` varchar(50) CHARACTER SET latin1 NOT NULL,
  `sex` varchar(10) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `animal_type`
--

CREATE TABLE `animal_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `animal_type`
--

INSERT INTO `animal_type` (`id`, `name`) VALUES
(1, 'गाय'),
(2, 'म्हैस'),
(3, 'पाडी'),
(4, 'रेडकू'),
(5, 'Sagar');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `taluka_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `village` varchar(50) NOT NULL,
  `taluka` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `first_name`, `last_name`, `mobile`, `email`, `address`, `village`, `taluka`, `district`, `created_at`) VALUES
(25, 'Shridhar', 'Tandale', '7588365682', 'tandaleshridhar27@gmail.com', 'Julewadi', 'Julewadi', 'Tasgaon', 'Sangli', '2019-03-05 11:48:19'),
(26, 'Amit', 'Mane', '9890256987', 'maneamit@gmail.com', 'Patil Galli', 'Kundal', 'Palus', 'Sangli', '2019-03-05 11:48:19'),
(38, 'asdas', 'dsa', '9895365482', NULL, 'asdas', 'ad', 'palus', NULL, '2019-03-11 14:32:47');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `name`) VALUES
(7, 'Sangli'),
(8, 'Kolhapur');

-- --------------------------------------------------------

--
-- Table structure for table `registration_master`
--

CREATE TABLE `registration_master` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile_number` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `doctor_type` varchar(255) NOT NULL,
  `trashed` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `semen`
--

CREATE TABLE `semen` (
  `id` int(11) NOT NULL,
  `semen_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `unit` varchar(11) CHARACTER SET latin1 NOT NULL,
  `initial_price` varchar(11) CHARACTER SET latin1 NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `trashed` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `semen`
--

INSERT INTO `semen` (`id`, `semen_name`, `unit`, `initial_price`, `date`, `trashed`) VALUES
(1, 'Ajay', '', '45', '2019-03-12 11:25:35', 1),
(2, 'Vijay', '', '32', '2019-03-16 13:48:22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `semen_buyer`
--

CREATE TABLE `semen_buyer` (
  `id` int(11) NOT NULL,
  `admin_id` bigint(11) NOT NULL,
  `semen_id` int(11) NOT NULL,
  `balance` varchar(255) NOT NULL,
  `price_per_item` varchar(255) NOT NULL,
  `total_amount` varchar(255) NOT NULL,
  `total_quantity` varchar(255) NOT NULL,
  `other_expenses` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `trashed` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `taluka`
--

CREATE TABLE `taluka` (
  `id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `visit`
--

CREATE TABLE `visit` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `customer_id` int(11) UNSIGNED NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `animal_type` int(11) NOT NULL,
  `tag_no` int(11) NOT NULL,
  `animal_desc` varchar(255) CHARACTER SET latin1 NOT NULL,
  `animal_health` varchar(255) NOT NULL,
  `semen_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `image` varchar(255) CHARACTER SET latin1 NOT NULL,
  `recording` varchar(255) CHARACTER SET latin1 NOT NULL,
  `hit_estimate` date NOT NULL,
  `pd_estimate` date NOT NULL,
  `delivery_estimate` date NOT NULL,
  `birth_gender` varchar(50) NOT NULL,
  `fee` decimal(10,0) NOT NULL,
  `other_fee` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taluka_id` (`taluka_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `registration_master`
--
ALTER TABLE `registration_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semen`
--
ALTER TABLE `semen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semen_buyer`
--
ALTER TABLE `semen_buyer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_Id` (`admin_id`),
  ADD KEY `semenId` (`semen_id`);

--
-- Indexes for table `taluka`
--
ALTER TABLE `taluka`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `district_id` (`district_id`);

--
-- Indexes for table `visit`
--
ALTER TABLE `visit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `registration_master`
--
ALTER TABLE `registration_master`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `semen`
--
ALTER TABLE `semen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `semen_buyer`
--
ALTER TABLE `semen_buyer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taluka`
--
ALTER TABLE `taluka`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`taluka_id`) REFERENCES `taluka` (`id`);

--
-- Constraints for table `semen_buyer`
--
ALTER TABLE `semen_buyer`
  ADD CONSTRAINT `admin_Id` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`),
  ADD CONSTRAINT `semenId` FOREIGN KEY (`semen_id`) REFERENCES `semen` (`id`);

--
-- Constraints for table `taluka`
--
ALTER TABLE `taluka`
  ADD CONSTRAINT `taluka_ibfk_1` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`);

--
-- Constraints for table `visit`
--
ALTER TABLE `visit`
  ADD CONSTRAINT `fk_customer` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
