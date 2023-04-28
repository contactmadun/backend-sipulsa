-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2023 at 05:43 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sipulsa`
--

-- --------------------------------------------------------

--
-- Table structure for table `marketplace_brand`
--

CREATE TABLE `marketplace_brand` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketplace_brand`
--

INSERT INTO `marketplace_brand` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(2, 'Vgen', '2023-04-20 07:08:52', '2023-04-20 07:08:52'),
(3, 'Robot', '2023-04-20 07:09:11', '2023-04-20 07:09:11'),
(4, 'Olike', '2023-04-20 07:09:17', '2023-04-20 07:09:17'),
(5, 'Luna', '2023-04-24 15:12:45', '2023-04-24 15:12:45');

-- --------------------------------------------------------

--
-- Table structure for table `marketplace_category`
--

CREATE TABLE `marketplace_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketplace_category`
--

INSERT INTO `marketplace_category` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'Kabel Data', '2023-04-14 13:43:03', '2023-04-14 14:00:30'),
(10, 'Car Charging', '2023-04-24 15:17:13', '2023-04-24 15:17:13'),
(11, 'Headseat', '2023-04-24 15:24:18', '2023-04-24 15:24:18');

-- --------------------------------------------------------

--
-- Table structure for table `marketplace_product`
--

CREATE TABLE `marketplace_product` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `id_brand` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `stok` varchar(255) DEFAULT NULL,
  `price_1` int(11) DEFAULT NULL,
  `price_2` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketplace_product`
--

INSERT INTO `marketplace_product` (`id`, `id_category`, `id_brand`, `name`, `stok`, `price_1`, `price_2`, `description`, `image`, `createdAt`, `updatedAt`) VALUES
(16, 1, 5, 'Luna C1A8 For Gamers', 'tersedia', 12500, 16000, 'kabel data terbaik', 'http://localhost:3000/images/1682421714842-fb.png', '2023-04-25 11:21:54', '2023-04-25 11:21:54'),
(17, 1, 2, 'Adaptor 3.4A', 'tersedia', 20000, 22000, 'terbaik juga bosq', 'http://localhost:3000/images/1682421757253-fg2.png', '2023-04-25 11:22:37', '2023-04-25 11:22:37'),
(18, 10, 4, 'Power Car Charger R1', 'tersedia', 5500, 8500, 'ini juga terbaik bosq', 'http://localhost:3000/images/1682421788271-login.png', '2023-04-25 11:23:08', '2023-04-25 11:23:08');

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20230414125715-create-table-marketplace.js'),
('20230415083649-create-table-users.js'),
('20230420063105-create-table-brand.js'),
('20230421072958-create-table-product.js');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `phoneNumber` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `logged` int(11) DEFAULT NULL,
  `pin` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `commision` int(11) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `uplink` varchar(255) DEFAULT NULL,
  `imageProfil` varchar(255) DEFAULT NULL,
  `referal` varchar(255) DEFAULT NULL,
  `refreshToken` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `phoneNumber`, `address`, `logged`, `pin`, `balance`, `commision`, `point`, `status`, `uplink`, `imageProfil`, `referal`, `refreshToken`, `createdAt`, `updatedAt`) VALUES
(1, 'Aditya Nugraha', 'aditya@gmail.com', '$2b$10$5DZbdUV23V6EUwtkmZ6dQOBwW91yCHt39ROXVwOLqSaKKMEKXgRv2', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsIm5hbWUiOiJBZGl0eWEgTnVncmFoYSIsImVtYWlsIjoiYWRpdHlhQGdtYWlsLmNvbSIsInJvbGUiOiJ1c2VyIiwibG9naW4iOjEsImlhdCI6MTY4MTU2MjAxMCwiZXhwIjoxNjgxNjQ4NDEwfQ.8O5t4nj-Dx09k8dZn7WSocm0YkaNKf3eSqWn4Ze65Dk', '2023-04-15 11:35:28', '2023-04-15 12:33:30'),
(2, 'Maulana', 'rizki.ilhami31@gmail.com', '$2b$10$2vhIWTkeJB8qrv7Z.h/bpeozMTkpmOfpo.ssjalxlp842me9IETXu', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-15 17:45:32', '2023-04-15 17:45:32'),
(3, 'Ginan', 'ginan@gmail.com', '$2b$10$r.dJnq8ltDttzusTj4SRK.u30AnMHOOAburZRdfqiiiKG/bsNu.3i', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-15 17:46:45', '2023-04-15 17:46:45'),
(4, 'gemilang', 'galang@gmail.com', '$2b$10$GQERLekN.d4uvi3EpnKTq.ni/UBfFR4q22tkINnLt565hkvehopqq', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-16 06:29:56', '2023-04-16 06:29:56'),
(5, 'ahmed', 'memed@gmail.com', '$2b$10$RdEvOrEjxOExBL8N9Xjcsu9.LQ1FzuTc6/yIwMCAXHakSRrAitpLa', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-16 06:36:55', '2023-04-16 06:36:55'),
(6, 'Andini', 'dono@gmail.com', '$2b$10$9gfDffWwZgU54iie8qzqV.BLAAULVqTmpnwJrGnEA5TsrL8or7j9y', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-16 06:40:36', '2023-04-16 06:40:36'),
(7, 'sahar', 'binsahar@gmail.com', '$2b$10$lLqCH9voXp16B1g4keQfZ.c7MwSmnOnlUOQLg6nG7f.HBudeG4Z4K', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-16 06:44:16', '2023-04-16 06:44:16'),
(8, '', '', '$2b$10$w56icoWYhJpmHUEzGrSilefxF9UPm2LYiOnPU5BGCYKTIC6ycxFta', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-16 06:44:23', '2023-04-16 06:44:23'),
(9, 'dana', 'mangdana@gmail.com', '$2b$10$5TMkRdUZR9uLWf2ut28h.OZ/a.OeEyeQKzZhfEGkn4/Jk0qM0eHH.', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-16 06:46:57', '2023-04-16 06:46:57'),
(10, 'Nurdin', 'Nurd@gmail.com', '$2b$10$9VrLndB6NuZq4Pm716EehuQ3ZNMKTN7tfjT/5ZPoD7fW4oKWg/2Q6', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-16 07:02:47', '2023-04-16 07:02:47'),
(11, 'lala', 'lili@gmail.com', '$2b$10$wFzysFxdXVjBCngOnLn5G.2WwPAWDaqiLT3hFRuvnHXY46hZqPks2', 'user', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjExLCJuYW1lIjoibGFsYSIsImVtYWlsIjoibGlsaUBnbWFpbC5jb20iLCJyb2xlIjoidXNlciIsImxvZ2luIjoxLCJpYXQiOjE2ODE2MzMwMzcsImV4cCI6MTY4MTcxOTQzN30.l0ggwl1ra0TonF2G7NxtKOrho_Ic5kou9UYlYMKuENw', '2023-04-16 07:04:15', '2023-04-16 08:17:17'),
(12, 'Madun', 'contact.madun@gmail.com', '$2b$10$RepyhSeiua0tX/ZydSBgg.akz18.V4Jkh5nUVbXMZUv1/UdMUaHma', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyLCJuYW1lIjoiTWFkdW4iLCJlbWFpbCI6ImNvbnRhY3QubWFkdW5AZ21haWwuY29tIiwicm9sZSI6InVzZXIiLCJsb2dpbiI6MSwiaWF0IjoxNjgyNDE0NjE0LCJleHAiOjE2ODI1MDEwMTR9.8rzMSnTUz0MPD54M_-5TXHgMdpYYK6JiSMvSNokruY0', '2023-04-25 09:23:20', '2023-04-25 09:23:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `marketplace_brand`
--
ALTER TABLE `marketplace_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketplace_category`
--
ALTER TABLE `marketplace_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketplace_product`
--
ALTER TABLE `marketplace_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `marketplace_brand`
--
ALTER TABLE `marketplace_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `marketplace_category`
--
ALTER TABLE `marketplace_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `marketplace_product`
--
ALTER TABLE `marketplace_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
