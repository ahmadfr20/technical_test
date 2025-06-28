-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2025 at 07:18 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electronic_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(38,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `description`, `name`, `price`, `stock`, `image_url`, `active`) VALUES
(2, 'Kipas angin 3 kecepatan', 'Kipas Angim', 250000.00, 22, NULL, b'0'),
(52, 'sdad', 'asdasd', 2.00, 8, NULL, b'0'),
(53, 'asljdaslkd', 'kipas angng', 12312313.00, 35, NULL, b'0'),
(102, 'ssdasd', 'kulkas lg 2 pinti', 200000.00, 10, '/images/3110fd91-472b-421b-85ed-a8611e656c2b_Screenshot 2023-07-03 144305.png', b'0'),
(152, 'kipas angin wadesta', 'Kipas angin wadesta', 2000000.00, 0, '/images/a3b37eec-da5a-4948-9269-c04d71786a8d_Capture.PNG', b'0'),
(153, 'aksdasd', 'Kipas angin wadesta', 123123123.00, 9, '/images/1126f269-b6c4-4980-8caa-9363bd88c7f2_Annotation 2023-06-04 151908.png', b'0'),
(202, 'asdasd', 'aasdasd', 123.00, 123, '/images/a9532d1f-ebf3-4f0b-8eb4-9684530cd664_sarap.png', b'0'),
(252, 'kulkas', 'Kulkas 2 pintu', 22222.00, 22, '/images/b2f1a4d1-3100-4223-905c-1434a85f1d91_3.png', b'0'),
(253, 'kulkas', 'Kulkas 2 pintu', 22222.00, 22, '/images/0837bd4c-6d62-4ca9-9c3f-83a8b86794e4_3.png', b'0'),
(254, 'Minat inbox', 'Kulkas LG 2 Pintu', 12333.00, 123, '/images/494bb48f-4cd5-4f95-a789-6f4dbb0156b2_sarap.png', b'0'),
(302, '21123', 'asdasd', 123123.00, 4434, '/images/310e9fe3-c2c7-4a90-8e21-703bc09c0b79_Screenshot (1699).png', b'0'),
(352, 'asdasd', 'asdqas', 1231233.00, 111, '/uploads/7be361de-218d-42bb-a6a4-ffc828c9b9ff_Screenshot 2023-07-17 171106.png', b'0'),
(402, 'minat inbox', 'Kulkas lg 2 pintu', 1000000.00, 12, '/uploads/8cce3f38-5686-40fa-9ccd-75f2e50f5f69_DZ-13.avif', b'0'),
(403, 'kulkas 2 pintu', 'kulkas lg 2 pitnu', 2222222.00, 22, '/uploads/33be2688-333b-40db-a362-59e2586564a1_thum-1600x1062.avif', b'1'),
(452, 'asasdasd', 'asdasda', 2222.00, 3, '/uploads/b75edbdb-902e-489b-b813-ea6756623e4e_PasFoto_AhmadFR.jpg', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `product_seq`
--

CREATE TABLE `product_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_seq`
--

INSERT INTO `product_seq` (`next_val`) VALUES
(551);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` bigint(20) NOT NULL,
  `total_amount` decimal(38,2) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `total_amount`, `type`, `user_id`) VALUES
(1, 0.00, 'sale', 1),
(2, 0.00, 'sale', 1),
(3, 0.00, 'sale', 1),
(4, 250000.00, 'sale', 1),
(52, 500000.00, 'purchase', 1),
(53, 10.00, 'purchase', 1),
(54, 24624626.00, 'purchase', 1),
(102, 250000.00, 'purchase', 1),
(152, 200000.00, 'sale', 2),
(153, 0.00, 'sale', 2),
(154, 4000000.00, 'sale', 2),
(155, 0.00, 'sale', 2),
(156, 123123123.00, 'sale', 2),
(202, 200000.00, 'sale', 1),
(252, 14774796.00, 'sale', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_item`
--

CREATE TABLE `transaction_item` (
  `id` bigint(20) NOT NULL,
  `price` decimal(38,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `transaction_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_item`
--

INSERT INTO `transaction_item` (`id`, `price`, `quantity`, `product_id`, `transaction_id`) VALUES
(1, 250000.00, 1, 2, 4),
(2, 250000.00, 2, 2, 52),
(3, 2.00, 5, 52, 53),
(4, 12312313.00, 2, 53, 54),
(52, 250000.00, 1, 2, 102),
(102, 200000.00, 1, 102, 152),
(103, 2000000.00, 3, 152, 153),
(104, 2000000.00, 2, 152, 154),
(105, 2000000.00, 1, 152, 155),
(106, 123123123.00, 1, 153, 156),
(152, 200000.00, 1, 102, 202),
(202, 1231233.00, 12, 352, 252);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_item_seq`
--

CREATE TABLE `transaction_item_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_item_seq`
--

INSERT INTO `transaction_item_seq` (`next_val`) VALUES
(301);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_seq`
--

CREATE TABLE `transaction_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_seq`
--

INSERT INTO `transaction_seq` (`next_val`) VALUES
(351);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `role`, `username`) VALUES
(1, 'admin@example.com', '123456', 'staff', 'admin'),
(2, 'afatonir@gmail.com', '12345678', 'staff', 'ahmadfr');

-- --------------------------------------------------------

--
-- Table structure for table `user_seq`
--

CREATE TABLE `user_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_seq`
--

INSERT INTO `user_seq` (`next_val`) VALUES
(101);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKsg7jp0aj6qipr50856wf6vbw1` (`user_id`);

--
-- Indexes for table `transaction_item`
--
ALTER TABLE `transaction_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKovhir4crv87qlgshhqbitn4et` (`product_id`),
  ADD KEY `FK1wc2dvhj3oos47in473fqi3q8` (`transaction_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKob8kqyqqgmefl0aco34akdtpe` (`email`),
  ADD UNIQUE KEY `UKsb8bbouer5wak8vyiiy4pf2bx` (`username`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `FKsg7jp0aj6qipr50856wf6vbw1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `transaction_item`
--
ALTER TABLE `transaction_item`
  ADD CONSTRAINT `FK1wc2dvhj3oos47in473fqi3q8` FOREIGN KEY (`transaction_id`) REFERENCES `transaction` (`id`),
  ADD CONSTRAINT `FKovhir4crv87qlgshhqbitn4et` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
