-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 04, 2021 at 06:59 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_order`
--
CREATE DATABASE IF NOT EXISTS `food_order` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `food_order`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `tbl_admin`:
--

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(13, 'Asadullah Bin Rahman', 'galib', '03847129f14d98cbcba02ab00b8aadf5'),
(14, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(15, 'Bushra Sheikh', 'bushra', 'fa0f6f6768c23171b84bcef5aeb1e0c3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `tbl_category`:
--

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(4, 'Pizza', 'Food_Category_790.jpg', 'Yes', 'Yes'),
(5, 'Burger', 'Food_Category_344.jpg', 'Yes', 'Yes'),
(6, 'MoMo', 'Food_Category_77.jpg', 'Yes', 'Yes'),
(8, 'Quia est ipsum id id', 'Food_Category_929.jpg', 'No', 'Yes'),
(9, 'Coffee', 'Food-Category-1004.jpg', 'Yes', 'Yes'),
(11, 'nothing2', '', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `tbl_food`:
--

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(3, 'Dumplings Specials', 'Chicken Dumpling with herbs from Mountains', '5.00', 'Food-Name-3649.jpg', 6, 'Yes', 'Yes'),
(4, 'Best Burger', 'Burger with Ham, Pineapple and lots of Cheese.', '4.00', 'Food-Name-6340.jpg', 5, 'Yes', 'Yes'),
(5, 'Smoky BBQ Pizza', 'Best Firewood Pizza in Town.', '6.00', 'Food-Name-8298.jpg', 4, 'No', 'Yes'),
(6, 'Sadeko Momo', 'Best Spicy Momo for Winter', '6.00', 'Food-Name-7387.jpg', 6, 'Yes', 'Yes'),
(7, 'Mixed Pizza', 'Pizza with chicken, Ham, Buff, Mushroom and Vegetables', '10.00', 'Food-Name-7833.jpg', 4, 'Yes', 'Yes'),
(8, 'Sed ipsum cillum in', 'Sed aut officiis qui', '52.00', '', 5, 'No', 'No'),
(11, 'nothing2', 'dfsafsda123', '123.00', 'Food-Name-1004.jpg', 11, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `f_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `tbl_order`:
--

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`, `f_id`) VALUES
(1, 'Sadeko Momo', '6.00', 3, '18.00', '2020-11-30 03:49:48', 'On Delivery', 'Bradley Farrell', '+1 (576) 504-4657', 'zuhafiq@mailinator.com', 'Duis aliqua Qui lor', 0),
(2, 'Best Burger', '4.00', 4, '16.00', '2020-11-30 03:52:43', 'Delivered', 'Kelly Dillard', '+1 (908) 914-3106', 'fexekihor@mailinator.com', 'Incidunt ipsum ad d', 0),
(3, 'Mixed Pizza', '10.00', 2, '20.00', '2020-11-30 04:07:17', 'Delivered', 'Jana Bush', '+1 (562) 101-2028', 'tydujy@mailinator.com', 'Minima iure ducimus', 0),
(4, 'Best Burger', '4.00', 1, '4.00', '2021-09-23 13:44:51', 'Ordered', 'Galib', '01701080021', 'abrgalib@gmail.com', 'Khansama, Dinajpur', 0),
(5, 'Best Burger', '4.00', 3, '12.00', '2021-09-23 13:46:31', 'Ordered', 'Galib', '1234567891112', 'abrgalib@gmail.com', 'fasdfsdfsdfsdfsdfsd', 0),
(6, 'Sadeko Momo', '6.00', 1, '6.00', '2021-09-23 13:48:29', 'Ordered', 'Galib', '1234567891011', 'abrgalib@gmail.com', 'adfasfasdfsdfsdfadsfewrasdsac', 0),
(7, 'nothing2', '123.00', 1, '123.00', '2021-09-23 18:48:12', 'Ordered', 'Galib', '01701080021', 'abrgalib@gmail.com', 'sadfasfsafsafsadfsdf', 0),
(8, 'Smoky BBQ Pizza', '6.00', 1, '6.00', '2021-10-04 17:57:36', 'Ordered', 'Asadullah Bin Rahman Galib', '1234556677', 'abrgalib@gmail.com', 'asdfsadfsadf', 5),
(9, 'Sadeko Momo', '6.00', 1, '6.00', '2021-10-04 17:57:36', 'Ordered', 'Asadullah Bin Rahman Galib', '1234556677', 'abrgalib@gmail.com', 'asdfsadfsadf', 6),
(10, 'nothing2', '123.00', 1, '123.00', '2021-10-04 17:57:36', 'Ordered', 'Asadullah Bin Rahman Galib', '1234556677', 'abrgalib@gmail.com', 'asdfsadfsadf', 11),
(11, 'Smoky BBQ Pizza', '6.00', 1, '6.00', '2021-10-04 18:00:24', 'Ordered', 'Bushra Sheikh', '1234566778', 'bushraankhari@gmail.com', 'sdafasdfsadfsadfsaf', 5),
(12, 'Sadeko Momo', '6.00', 1, '6.00', '2021-10-04 18:00:24', 'Ordered', 'Bushra Sheikh', '1234566778', 'bushraankhari@gmail.com', 'sdafasdfsadfsadfsaf', 6),
(13, 'nothing2', '123.00', 1, '123.00', '2021-10-04 18:00:24', 'Ordered', 'Bushra Sheikh', '1234566778', 'bushraankhari@gmail.com', 'sdafasdfsadfsadfsaf', 11),
(14, 'Smoky BBQ Pizza', '6.00', 1, '6.00', '2021-10-04 18:02:18', 'Ordered', 'enduser1', '12345678909', 'xyz@xyz.com', 'enduser1', 5),
(15, 'Sadeko Momo', '6.00', 1, '6.00', '2021-10-04 18:02:18', 'Ordered', 'enduser1', '12345678909', 'xyz@xyz.com', 'enduser1', 6),
(16, 'nothing2', '123.00', 1, '123.00', '2021-10-04 18:02:18', 'Ordered', 'enduser1', '12345678909', 'xyz@xyz.com', 'enduser1', 11),
(17, 'Smoky BBQ Pizza', '6.00', 1, '6.00', '2021-10-04 18:08:01', 'Ordered', 'xyz', '12345667', 'xyz@xyz.com', 'asdfsadfsdaf', 5),
(18, 'Sadeko Momo', '6.00', 1, '6.00', '2021-10-04 18:08:01', 'Ordered', 'xyz', '12345667', 'xyz@xyz.com', 'asdfsadfsdaf', 6),
(19, 'nothing2', '123.00', 1, '123.00', '2021-10-04 18:08:01', 'Ordered', 'xyz', '12345667', 'xyz@xyz.com', 'asdfsadfsdaf', 11),
(20, 'Smoky BBQ Pizza', '6.00', 1, '6.00', '2021-10-04 18:15:46', 'Ordered', 'enduser2', '123435678910', 'xyz@xyz.com', 'enduser1', 5),
(21, 'Sadeko Momo', '6.00', 1, '6.00', '2021-10-04 18:15:46', 'Ordered', 'enduser2', '123435678910', 'xyz@xyz.com', 'enduser1', 6),
(22, 'nothing2', '123.00', 1, '123.00', '2021-10-04 18:15:46', 'Ordered', 'enduser2', '123435678910', 'xyz@xyz.com', 'enduser1', 11),
(23, 'Smoky BBQ Pizza', '6.00', 1, '6.00', '2021-10-04 18:24:49', 'Ordered', 'Asadullah Bin Rahman Galib', '12345678911', 'asadullahgalib007@gmail.com', 'asadullahgalib007@gmail.com', 5),
(24, 'Sadeko Momo', '6.00', 1, '6.00', '2021-10-04 18:24:49', 'Ordered', 'Asadullah Bin Rahman Galib', '12345678911', 'asadullahgalib007@gmail.com', 'asadullahgalib007@gmail.com', 6),
(25, 'nothing2', '123.00', 2, '246.00', '2021-10-04 18:24:49', 'Ordered', 'Asadullah Bin Rahman Galib', '12345678911', 'asadullahgalib007@gmail.com', 'asadullahgalib007@gmail.com', 11),
(26, 'Mixed Pizza', '10.00', 1, '10.00', '2021-10-04 18:36:07', 'Ordered', 'Asadullah Bin Rahman Galib', '1234565778', 'abrgalib@gmail.com', 'asdfsadfsadf', 7),
(27, 'Cake', '19.00', 1, '19.00', '2021-10-04 18:36:07', 'Ordered', 'Asadullah Bin Rahman Galib', '1234565778', 'abrgalib@gmail.com', 'asdfsadfsadf', 9),
(28, 'Best Burger', '4.00', 1, '4.00', '2021-10-04 18:45:16', 'Ordered', 'Asadullah Bin Rahman Galib', '12345678908', 'abrgalib@gmail.com', 'abrgalib@gmail.com', 4),
(29, 'Dalgona Coffee', '5.00', 1, '5.00', '2021-10-04 18:45:16', 'Ordered', 'Asadullah Bin Rahman Galib', '12345678908', 'abrgalib@gmail.com', 'abrgalib@gmail.com', 15),
(30, 'Sadeko Momo', '6.00', 1, '6.00', '2021-10-04 18:45:16', 'Ordered', 'Asadullah Bin Rahman Galib', '12345678908', 'abrgalib@gmail.com', 'abrgalib@gmail.com', 6),
(31, 'Cake', '19.00', 2, '38.00', '2021-10-04 18:45:16', 'Ordered', 'Asadullah Bin Rahman Galib', '12345678908', 'abrgalib@gmail.com', 'abrgalib@gmail.com', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
