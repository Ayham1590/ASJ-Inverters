-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2023 at 08:50 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopee`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `item_id` int(11) NOT NULL,
  `item_brand` varchar(200) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` double(10,2) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_register` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`, `item_register`) VALUES
(1, 'Panasonic ', 'Panasonic 9514 BTU Inverter', 500.00, './assets/products/img1.jpg', '2020-03-28 11:08:57'),
(2, 'OIMG Portable Fan ', 'OIMG Portable Fan with 10000mAh', 250.00, './assets/products/img2.jpg', '2020-03-28 11:08:57'),
(3, 'Hisense ', 'Hisense Air Conditioning 9500 BTU.', 570.00, './assets/products/img3.jpg', '2020-03-28 11:08:57'),
(4, 'Hisense', 'Hisense 5000-BTU Portable Air Conditioner', 720.00, './assets/products/img4.jpg', '2020-03-28 11:08:57'),
(5, 'Sharp ', 'Sharp Air Conditioner J-Tech 18000 Inverter', 460.00, './assets/products/img5.jpg', '2020-03-28 11:08:57'),
(6, 'Panasonic ', 'Panasonic CS/CU-Z50VKR', 630.00, './assets/products/img6.png', '2020-03-28 11:08:57'),
(7, 'LG ', 'LG DUALCOOL Dual Inverter', 740.00, './assets/products/img7.jpg', '2020-03-28 11:08:57'),
(8, 'LG ', 'LG LP0815WNR Portable air conditioner', 800.00, './assets/products/img8.jpg', '2020-03-28 11:08:57'),
(9, 'Sharp', 'Sharp Air Cond 1.0HP AHA9XCD', 400.00, './assets/products/img9.jpg', '2020-03-28 11:08:57'),
(10, 'Hisense ', 'Hisense AS-09UR4SYDDC', 560.00, './assets/products/img10.jpg', '2020-03-28 11:08:57'),
(11, 'Sharp', 'Sharp Springer Midea MPH-12CRV1', 600.00, './assets/products/img11.jpg', '2020-03-28 11:08:57'),
(12, 'Sharp ', 'Sharp split ac xp22wmt', 560.00, './assets/products/img12.jpg', '2020-03-28 11:08:57'),
(13, 'LG ', 'LG deluxe non inverter air conditioner', 490.00, './assets/products/img13.jpg', '2020-03-28 11:08:57');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `register_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `register_date`) VALUES
(1, 'Daily', 'Tuition', '2020-03-28 13:07:17'),
(2, 'Akshay', 'Kashyap', '2020-03-28 13:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
