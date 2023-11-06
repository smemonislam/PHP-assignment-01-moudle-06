-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 05, 2023 at 09:36 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `business_operations`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `slug` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', 'electronics', '2023-11-05 21:22:49', '2023-11-05 21:22:49'),
(2, 'Clothing', 'clothing', '2023-11-05 21:22:49', '2023-11-05 21:22:49'),
(3, 'Books', 'books', '2023-11-05 21:22:49', '2023-11-05 21:22:49'),
(4, 'Toys', 'toys', '2023-11-05 21:33:10', '2023-11-05 21:33:10'),
(5, 'Furniture', 'furniture', '2023-11-05 21:33:10', '2023-11-05 21:33:10'),
(6, 'Kitchenware', 'kitchenware', '2023-11-05 21:33:10', '2023-11-05 21:33:10'),
(7, 'Sporting Goods', 'sporting-goods', '2023-11-05 21:33:10', '2023-11-05 21:33:10'),
(8, 'Beauty Products', 'beauty-products', '2023-11-05 21:33:10', '2023-11-05 21:33:10'),
(9, 'Garden Supplies', 'garden-supplies', '2023-11-05 21:33:10', '2023-11-05 21:33:10'),
(10, 'Pet Care', 'pet-care', '2023-11-05 21:33:10', '2023-11-05 21:33:10');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `location`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'john.doe@example.com', 'New York', '2023-11-05 21:21:34', '2023-11-05 21:21:34'),
(2, 'Jane Smith', 'jane.smith@example.com', 'Los Angeles', '2023-11-05 21:21:34', '2023-11-05 21:21:34'),
(3, 'Bob Johnson', 'bob.johnson@example.com', 'Chicago', '2023-11-05 21:21:34', '2023-11-05 21:21:34'),
(4, 'Alice Johnson', 'alice.johnson@example.com', 'Houston', '2023-11-05 21:30:25', '2023-11-05 21:30:25'),
(5, 'David Brown', 'david.brown@example.com', 'Miami', '2023-11-05 21:30:25', '2023-11-05 21:30:25'),
(6, 'Sarah Williams', 'sarah.williams@example.com', 'San Francisco', '2023-11-05 21:30:25', '2023-11-05 21:30:25'),
(7, 'Michael Lee', 'michael.lee@example.com', 'Dallas', '2023-11-05 21:30:25', '2023-11-05 21:30:25'),
(8, 'Laura Smith', 'laura.smith@example.com', 'Chicago', '2023-11-05 21:30:25', '2023-11-05 21:30:25'),
(9, 'Kevin Davis', 'kevin.davis@example.com', 'Los Angeles', '2023-11-05 21:30:25', '2023-11-05 21:30:25'),
(10, 'Jennifer Miller', 'jennifer.miller@example.com', 'New York', '2023-11-05 21:30:25', '2023-11-05 21:30:25');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `order_date` datetime NOT NULL,
  `total_amount` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_date`, `total_amount`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-01-15 00:00:00', '999.99', '2023-11-05 21:26:58', '2023-11-05 21:26:58'),
(2, 2, '2023-01-16 00:00:00', '19.99', '2023-11-05 21:26:58', '2023-11-05 21:26:58'),
(3, 3, '2023-01-17 00:00:00', '14.99', '2023-11-05 21:26:58', '2023-11-05 21:26:58'),
(4, 4, '2023-02-20 00:00:00', '29.99', '2023-11-05 21:35:14', '2023-11-05 21:35:14'),
(5, 5, '2023-02-21 00:00:00', '199.99', '2023-11-05 21:35:14', '2023-11-05 21:35:14'),
(6, 6, '2023-02-22 00:00:00', '79.99', '2023-11-05 21:35:14', '2023-11-05 21:35:14'),
(7, 7, '2023-02-23 00:00:00', '19.99', '2023-11-05 21:35:14', '2023-11-05 21:35:14'),
(8, 8, '2023-02-24 00:00:00', '9.99', '2023-11-05 21:35:14', '2023-11-05 21:35:14'),
(9, 9, '2023-02-25 00:00:00', '24.99', '2023-11-05 21:35:14', '2023-11-05 21:35:14'),
(10, 10, '2023-02-26 00:00:00', '14.99', '2023-11-05 21:35:14', '2023-11-05 21:35:14');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `unit_price` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '1', '999.99', '2023-11-05 21:28:25', '2023-11-05 21:28:25'),
(2, 2, 3, '2', '29.98', '2023-11-05 21:28:25', '2023-11-05 21:28:25'),
(3, 3, 2, '3', '59.97', '2023-11-05 21:28:25', '2023-11-05 21:28:25'),
(4, 4, 4, '1', '29.99', '2023-11-05 21:35:40', '2023-11-05 21:35:40'),
(5, 5, 5, '1', '199.99', '2023-11-05 21:35:40', '2023-11-05 21:35:40'),
(6, 6, 6, '2', '159.98', '2023-11-05 21:35:40', '2023-11-05 21:35:40'),
(7, 7, 7, '3', '59.97', '2023-11-05 21:35:40', '2023-11-05 21:35:40'),
(8, 8, 8, '2', '19.98', '2023-11-05 21:35:40', '2023-11-05 21:35:40'),
(9, 9, 9, '1', '24.99', '2023-11-05 21:35:40', '2023-11-05 21:35:40'),
(10, 10, 10, '4', '59.96', '2023-11-05 21:35:40', '2023-11-05 21:35:40');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 'Laptop', 'High-performance laptop', '999.99', '2023-11-05 21:25:18', '2023-11-05 21:25:18'),
(2, 2, 'T-shirt', 'Cotton T-shirt', '19.99', '2023-11-05 21:25:18', '2023-11-05 21:25:18'),
(3, 3, 'Book', 'Bestseller novel', '14.99', '2023-11-05 21:25:18', '2023-11-05 21:25:18'),
(4, 4, 'Toy Car', 'Remote-controlled toy car', '29.99', '2023-11-05 21:34:48', '2023-11-05 21:34:48'),
(5, 5, 'Coffee Table', 'Wooden coffee table', '199.99', '2023-11-05 21:34:48', '2023-11-05 21:34:48'),
(6, 6, 'Blender', 'High-speed blender', '79.99', '2023-11-05 21:34:48', '2023-11-05 21:34:48'),
(7, 7, 'Soccer Ball', 'Official size and weight soccer ball', '19.99', '2023-11-05 21:34:48', '2023-11-05 21:34:48'),
(8, 8, 'Shampoo', 'Moisturizing shampoo', '9.99', '2023-11-05 21:34:48', '2023-11-05 21:34:48'),
(9, 9, 'Garden Hose', '50-foot garden hose', '24.99', '2023-11-05 21:34:48', '2023-11-05 21:34:48'),
(10, 10, 'Pet Food', 'Premium pet food', '14.99', '2023-11-05 21:34:48', '2023-11-05 21:34:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coustomer_id` (`customer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
