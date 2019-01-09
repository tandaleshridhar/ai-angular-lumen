-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2019 at 01:59 PM
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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `password` char(60) CHARACTER SET latin1 NOT NULL,
  `mobile` varchar(255) CHARACTER SET latin1 NOT NULL,
  `registration_date` datetime NOT NULL,
  `user_level` tinyint(1) UNSIGNED NOT NULL,
  `trashed` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `mobile`, `registration_date`, `user_level`, `trashed`) VALUES
(1, '', '', 'sushantranade', 'sushant.ranade@dnyandeep.com', '3a50e5527b9ab42471d4705107f8320d', '9422410520', '0000-00-00 00:00:00', 0, 1),
(2, '', '', 'bakshisourabh', 'bakshisourabh@gmail.com', 'e1b34f692ccd0b0c2b0c99ea5cd02419', '9890638088', '0000-00-00 00:00:00', 0, 1),
(3, '', '', 'svranade', 'drsvranade@gmail.com', '011dc31eaff3853a6960d404ffbf81fb', '2332601381', '0000-00-00 00:00:00', 0, 1),
(4, '', '', 'xxxxc', '0@0.aa', '0f6f6b5416a836065f933e4857c31c9a', '0000000000', '0000-00-00 00:00:00', 0, 1),
(5, '', '', 'zxxxx', 'n1@0900.nn', '670b14728ad9902aecba32e22fa4f6bd', '0000000000', '0000-00-00 00:00:00', 0, 1),
(6, '', '', 'admin', 'pravinkokate1@gmail.com', 'a66abb5684c45962d887564f08346e8d', '9422410520', '0000-00-00 00:00:00', 0, 1),
(7, 'Shridhar', 'Tandale', '', 'shridhartandale@dnyandeep.com', '$2y$10$VJl5Lwe3jbYzyUb6OIjmCeQFBxnTP8BCKIIQSYk5.uVh5eUVD8/bO', '', '2018-12-21 17:01:23', 1, 1);

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
  `id` bigint(20) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `taluka_id` bigint(20) NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `trashed` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `admin_id`, `taluka_id`, `city_name`, `trashed`) VALUES
(1, 1, 1, 'Sangli', 1),
(2, 1, 1, 'Ankali', 1),
(3, 1, 1, 'Arag', 1),
(4, 1, 1, 'Bamani', 1),
(5, 1, 3, 'Herle', 1),
(6, 1, 3, 'Hingangaon', 1),
(7, 1, 3, 'Ingali', 1),
(8, 1, 2, 'Ambewadi', 1),
(9, 1, 2, 'Antri Bk', 1),
(10, 2, 5, 'Satara', 1),
(11, 2, 4, 'Asagaon', 1),
(12, 2, 4, 'Asale', 1),
(13, 2, 4, 'Asare', 1),
(14, 2, 4, 'Badewadi', 1),
(15, 2, 7, 'Bhade', 1),
(16, 2, 7, 'Bhatghar', 1),
(17, 2, 7, 'Bholi', 1),
(18, 2, 7, 'Bori', 1),
(19, 2, 6, 'Khodshi', 1),
(20, 2, 6, 'Khubi', 1),
(21, 2, 6, 'Kirpe', 1),
(22, 2, 6, 'Kival', 1),
(23, 2, 5, 'Achali', 1),
(24, 2, 5, 'Adoshi', 1),
(25, 2, 5, 'Agalavewadi', 1),
(26, 1, 11, 'Adoli', 1),
(27, 1, 11, 'Aini', 1),
(28, 1, 9, 'Agar', 1),
(29, 1, 9, 'Akiwat', 1),
(30, 1, 9, 'abc', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_master`
--

CREATE TABLE `customer_master` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(10) CHARACTER SET latin1 NOT NULL,
  `mobile2` varchar(255) CHARACTER SET latin1 NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `trashed` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 6144 kB; (`city_id`) REFER `ai/city`(`id`)';

--
-- Dumping data for table `customer_master`
--

INSERT INTO `customer_master` (`id`, `admin_id`, `city_id`, `full_name`, `address`, `mobile`, `mobile2`, `date`, `trashed`) VALUES
(1, 1, 2, 'Nishikant Manugade', 'Julewadi', '9890888388', '', '2018-05-01 07:49:32', 1),
(2, 1, 1, 'Sourabh Bakshi', 'Sangli', '9890638088', '9860575106', '2018-05-01 07:53:16', 1),
(3, 2, 10, 'Pravin Kokate', 'Near Bhilwadi railway Station', '9422785122', '', '2018-05-04 10:46:00', 1),
(4, 2, 6, 'Shridhar Bhanudas Tandale', 'At Julewadi', '7219600144', '7588365682', '0000-00-00 00:00:00', 1),
(5, 2, 3, 'श्रीधर तांदळे', 'At Julewadi', '7219600144', '7588365682', '2018-12-03 13:02:09', 1),
(6, 1, 4, 'James Smith', 'Julewadi\nTasgaon', '7588365682', '', '2018-12-07 09:58:55', 0);

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` bigint(20) NOT NULL,
  `admin_id` bigint(11) NOT NULL,
  `district_name` varchar(255) NOT NULL,
  `trashed` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `admin_id`, `district_name`, `trashed`) VALUES
(1, 1, 'Sangli', 1),
(2, 1, 'Kolhapur', 1),
(3, 2, 'Satara', 1),
(4, 1, 'Satara', 1),
(5, 3, 'kolhapur', 1),
(6, 1, 'Pune', 1);

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
  `admin_id` bigint(11) NOT NULL,
  `semen_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `unit` varchar(11) CHARACTER SET latin1 NOT NULL,
  `initial_price` varchar(11) CHARACTER SET latin1 NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `trashed` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `semen`
--

INSERT INTO `semen` (`id`, `admin_id`, `semen_name`, `unit`, `initial_price`, `date`, `trashed`) VALUES
(1, 1, 'Ajay', 'nag', '10.00', '2018-05-17 11:18:38', 1),
(2, 1, 'Vijay', 'nag', '15.00', '2018-05-07 12:26:41', 1),
(3, 2, 'Charlie', 'nag', '65', '2018-05-07 12:27:40', 1),
(4, 1, 'Jersy', 'nag', '25', '2018-05-18 10:06:04', 1),
(5, 1, 'Sagar', 'nag', '00', '2018-06-14 15:08:01', 1),
(18, 1, 'Jersy', '', '55', '2018-12-22 12:10:07', 1),
(19, 1, 'Varun', '', '48', '2018-12-24 11:17:04', 1),
(20, 1, 'Mahesh', '', '60', '2018-12-26 14:28:36', 1),
(32, 2, 'Akon', 'gram', '71', '2019-01-03 15:37:15', 1);

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

--
-- Dumping data for table `semen_buyer`
--

INSERT INTO `semen_buyer` (`id`, `admin_id`, `semen_id`, `balance`, `price_per_item`, `total_amount`, `total_quantity`, `other_expenses`, `date`, `trashed`) VALUES
(1, 1, 1, '5', '8', '40', '15', '2000', '2018-05-09 16:05:59', 1),
(2, 1, 2, '5', '10', '50.00', '20.00', '5000', '2018-05-09 16:11:20', 1),
(3, 1, 4, '18', '22.00', '396.00', '18.00', '100.00', '2018-05-18 10:06:45', 1),
(4, 1, 4, '100', '200.00', '20,000.00', '100.00', '1,000.00', '2018-06-14 11:38:11', 1),
(5, 1, 1, '8', '5.00', '40.00', '18.00', '1,000.00', '2018-06-27 11:26:00', 1),
(6, 1, 1, '12', '8.00', '96.00', '22.00', '500.00', '2018-06-27 11:27:36', 1),
(7, 1, 4, '10', '10', '100', '10', '10', '2018-07-27 16:56:18', 1),
(8, 1, 4, '5', '5', '25', '15', '5', '2018-07-27 16:56:44', 1),
(9, 2, 3, '5', '5', '25', '25', '5', '2018-07-27 16:59:20', 1),
(10, 2, 3, '5', '5', '25', '30', '5', '2018-07-27 16:59:31', 1),
(11, 1, 4, '5', '5', '25', '20', '5', '2018-07-30 16:25:43', 1),
(12, 1, 4, '5', '9', '45', '25', '17', '2018-09-20 07:50:44', 1);

-- --------------------------------------------------------

--
-- Table structure for table `taluka`
--

CREATE TABLE `taluka` (
  `id` bigint(20) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `district_id` bigint(20) NOT NULL,
  `taluka_name` varchar(255) NOT NULL,
  `trashed` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `taluka`
--

INSERT INTO `taluka` (`id`, `admin_id`, `district_id`, `taluka_name`, `trashed`) VALUES
(1, 1, 1, 'Miraj', 1),
(2, 1, 1, 'Shirala', 1),
(3, 1, 2, 'Hatkanangale', 1),
(4, 2, 3, 'Wai', 1),
(5, 2, 3, 'Jaoli', 1),
(6, 2, 3, 'Karad', 1),
(7, 2, 3, 'Khandala', 1),
(8, 1, 2, 'Panhala', 1),
(9, 1, 2, 'Shirol', 1),
(10, 1, 2, 'Karveer', 1),
(11, 1, 2, 'Radhanagari', 1),
(12, 1, 4, 'Patan', 1),
(13, 3, 5, 'abc', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` mediumint(6) UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `village` varchar(50) NOT NULL,
  `taluka` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `registration_date` datetime NOT NULL,
  `password` char(60) NOT NULL,
  `user_level` tinyint(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `mobile`, `email`, `address`, `village`, `taluka`, `district`, `registration_date`, `password`, `user_level`) VALUES
(1, 'Shridhar', 'Tandale', '7219600144', 'tandaleshridhar27@gmail.com', '', '', '', '', '2018-12-18 23:06:33', '$2y$10$lvPwCI.ImyJYJYXKeANo9.x4KTCRnKSmGGDO6APWlLnYw50IjfxUi', 1),
(2, 'James', 'Smith', '9561238965', 'jsmith@myisp.co.uk', '', '', '', '', '2018-12-18 23:37:09', '$2y$10$q6AddaqwXkpu2sa43Kic1ugHBEJWnxrbyXJhmi8s/713VJKRiEgzS', 1),
(3, 'Olive', 'Branch', '9890753954', 'obranch@myisp.co.uk', '', '', '', '', '2018-12-19 11:12:54', '$2y$10$IBXFs9RUt5T/edn/OAKHoubNEcTAxYoKKjFPYUZMdXsFiIyUBDFWG', 0),
(4, 'Frank', 'Incense', '9422410520', 'fincense@myisp.net', '', '', '', '', '2018-12-19 11:13:24', '$2y$10$OnMEegoW0XWw7z3Bl8Fsx.RBxu5R.38yQ.1hIsiKnlhS6yTAoL50i', 0),
(5, 'Connie', 'Firs', '9561478964', 'cfirst@myisp.com', '', '', '', '', '2018-12-19 11:13:48', '$2y$10$IsoJl8QGieIW2myKzywrSueUKQgzM44ec/eEnICt6NTukP08.Z8Gi', 0),
(6, 'Shridhar', 'Tandale', '7219254896', 'tandaleshridhar@yahoo.com', '', '', '', '', '2018-12-19 11:29:32', '$2y$10$4euXrr8pOBVM7vh4skk3O.mBtF/wrfreCyz8eY7QZwa3GoqBEHYqS', 1),
(7, 'Shridhar', 'Tandale', '7588365682', 'tandaleshridhar27@gmail.com', 'Vijaynagar', '', '', '', '2018-12-19 15:54:14', '$2y$10$qE9nxJ0tXIAfFWswZAYufeFSF4DKfyoVQGTT9n6b8tje9Ax2qmkuK', 1),
(8, 'Percy', 'Veer', '9975014865', 'pveer@myisp.com', '', '', '', '', '2018-12-19 22:43:44', '$2y$10$rASqXt.x7XgbesQZwP9oTuuXiyf6T7ubJnw7DiyROH6TKhyJWE/72', 0),
(9, 'Stan', 'Dard', '0', 'sdard@myisp.net', '', '', '', '', '2018-12-19 22:44:11', '$2y$10$hl9FoJW6Lg3ac7fnE34rjeiywnO0NQAfdyaUlwmBSHzmgyZPIX6ge', 0),
(10, 'Nora', 'Bone', '0', 'nbone@myisp.com', '', '', '', '', '2018-12-19 22:44:39', '$2y$10$m8L5dTWv44GZeSfthc/8l.Mh0ASZOedPrRgMqASZ1SYjxXSAfRuL6', 0),
(11, 'Barry', 'Cade', '0', 'bcade@myisp.co.uk', '', '', '', '', '2018-12-19 22:45:09', '$2y$10$uKwW5hewbR5l976w6buoheVW4C1uitRAXwcJYeKD/nsIjyTyfyNNa', 0),
(12, 'Dee', 'Jected', '0', 'djected@myisp.ork.uk', '', '', '', '', '2018-12-19 22:45:42', '$2y$10$MahsRhQAoKGr7Xfnl9z6TOsnNePOmRQEb5nfBEEnbctaEsRFOh.ra', 0),
(13, 'Lynn', 'Steed', '0', 'lseed@myisp.com', '', '', '', '', '2018-12-19 22:46:11', '$2y$10$JvRcyAM7I0RIgjyf6w50k.xEKvIRxBohUD2kD4dl4urM2mcm3Bm8C', 0),
(14, 'Barry', 'Tone', '0', 'btone@myisp.net', '', '', '', '', '2018-12-19 22:46:36', '$2y$10$uuT3DSEc7DvBPHVOsXwN6.EQW02G/.G3PVdj6h4VGawH0.rODSnmO', 0),
(15, 'Helen', 'Back', '0', 'hback@myisp.net', '', '', '', '', '2018-12-19 22:48:37', '$2y$10$zY2yCtviasqtXTQ4j/GPZeAnTdJ7hei6L64WqxFgCK/ijffsX037S', 0),
(16, 'Justin', 'Case', '0', 'jcase@myisp.co.uk', '', '', '', '', '2018-12-19 22:49:07', '$2y$10$bsN/oCDSPxkL1j5DPwTwlOF8FA/Gq3QA9UiCyLjdcMNu2fOklWEce', 0),
(17, 'Jerry', 'Attrik', '0', 'jattrik@myisp.com', '', '', '', '', '2018-12-19 22:49:36', '$2y$10$Xbwc3rJLh5FvDdbfGuLLuOMEJS6nK4eIJzprGhf/cJMq7gVtj3a7C', 0),
(18, 'James', 'Smith', '0', 'jimsmith@myisp.org.uk', '', '', '', '', '2018-12-20 11:41:15', '$2y$10$2PPWlfWZRx0zgXbESkPk8eBH1KMbQK9hBaOqRX7L.BagXXP0knxje', 0),
(20, 'James', 'Smith', '0', 'Jimmy.smith@myisp.co.uk', '', '', '', '', '2018-12-20 11:42:09', '$2y$10$nAW7reSENpk.Qy5Q0/0mkOx/DLYXDGIvWsnNk1HjK9dSeilxRKbwS', 0),
(22, 'Amit', 'Mane', '7588636984', 'maneamit@gmail.com', 'Tasgaon', 'Tasgaon', 'Tasgaon', 'Sangli', '2018-12-21 10:36:45', '', 0),
(23, 'Prakash', 'Jadhav', '9665167846', 'prakashjadhav@gmail.com', 'Julewadi', 'Julewadi', 'Tasgaon', 'Sangli', '2018-12-21 10:43:58', '', 0),
(24, 'Arvind ', 'Yadav', '9422586247', 'arvindyadav@gmail.com', 'Sangli', 'Sangli', 'Miraj', 'Sangli', '0000-00-00 00:00:00', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `visit`
--

CREATE TABLE `visit` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `customer_id` int(11) NOT NULL,
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_master`
--
ALTER TABLE `customer_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cityId` (`city_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration_master`
--
ALTER TABLE `registration_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semen`
--
ALTER TABLE `semen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminId` (`admin_id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

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
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `customer_master`
--
ALTER TABLE `customer_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `registration_master`
--
ALTER TABLE `registration_master`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `semen`
--
ALTER TABLE `semen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `semen_buyer`
--
ALTER TABLE `semen_buyer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `taluka`
--
ALTER TABLE `taluka`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` mediumint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `semen`
--
ALTER TABLE `semen`
  ADD CONSTRAINT `adminId` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`);

--
-- Constraints for table `semen_buyer`
--
ALTER TABLE `semen_buyer`
  ADD CONSTRAINT `admin_Id` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`),
  ADD CONSTRAINT `semenId` FOREIGN KEY (`semen_id`) REFERENCES `semen` (`id`);

--
-- Constraints for table `visit`
--
ALTER TABLE `visit`
  ADD CONSTRAINT `visit_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer_master` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
