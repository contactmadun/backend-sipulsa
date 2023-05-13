-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2023 at 03:18 PM
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
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `real` varchar(255) DEFAULT NULL,
  `order` enum('prepaid','postpadi') DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `code`, `name`, `type`, `real`, `order`, `createdAt`, `updatedAt`) VALUES
(1, 'telkomsel', 'TELKOMSEL', NULL, 'Pulsa', 'prepaid', '2023-05-09 15:22:41', '2023-05-09 15:22:41'),
(2, 'PLN', 'PLN', NULL, 'PLN', 'prepaid', '2023-05-09 15:22:41', '2023-05-09 15:22:41'),
(3, 'DANA', 'DANA', NULL, 'E-Money', 'prepaid', '2023-05-09 15:22:42', '2023-05-09 15:22:42'),
(4, 'indosat', 'INDOSAT', NULL, 'Pulsa', 'prepaid', '2023-05-09 15:22:44', '2023-05-09 15:22:44'),
(5, 'axis', 'AXIS', NULL, 'Pulsa', 'prepaid', '2023-05-09 15:22:45', '2023-05-09 15:22:45'),
(6, 'smartfren', 'SMARTFREN', NULL, 'Pulsa', 'prepaid', '2023-05-09 15:22:45', '2023-05-09 15:22:45'),
(7, 'tri', 'TRI', NULL, 'Pulsa', 'prepaid', '2023-05-09 15:22:47', '2023-05-09 15:22:47'),
(8, 'XL', 'XL', NULL, 'Pulsa', 'prepaid', '2023-05-09 15:22:48', '2023-05-09 15:22:48'),
(9, 'MOBILE LEGENDS', 'MOBILE LEGENDS', NULL, 'Games', 'prepaid', '2023-05-09 15:22:52', '2023-05-09 15:22:52'),
(10, 'FREE FIRE', 'FREE FIRE', NULL, 'Games', 'prepaid', '2023-05-09 15:22:53', '2023-05-09 15:22:53'),
(11, 'OVO', 'OVO', NULL, 'E-Money', 'prepaid', '2023-05-09 15:22:58', '2023-05-09 15:22:58'),
(12, 'GO PAY', 'GO PAY', NULL, 'E-Money', 'prepaid', '2023-05-09 15:23:00', '2023-05-09 15:23:00'),
(13, 'LinkAja', 'LinkAja', NULL, 'E-Money', 'prepaid', '2023-05-09 15:23:03', '2023-05-09 15:23:03'),
(14, 'SHOPEE PAY', 'SHOPEE PAY', NULL, 'E-Money', 'prepaid', '2023-05-09 15:23:04', '2023-05-09 15:23:04'),
(15, 'BRI BRIZZI', 'BRI BRIZZI', NULL, 'E-Money', 'prepaid', '2023-05-09 15:23:15', '2023-05-09 15:23:15'),
(16, 'MANDIRI E-TOLL', 'MANDIRI E-TOLL', NULL, 'E-Money', 'prepaid', '2023-05-09 15:23:15', '2023-05-09 15:23:15'),
(17, 'TAPCASH BNI', 'TAPCASH BNI', NULL, 'E-Money', 'prepaid', '2023-05-09 15:23:16', '2023-05-09 15:23:16'),
(18, 'Mitra Shopee', 'Mitra Shopee', NULL, 'E-Money', 'prepaid', '2023-05-09 15:23:16', '2023-05-09 15:23:16'),
(19, 'GRAB', 'GRAB', NULL, 'E-Money', 'prepaid', '2023-05-09 15:23:17', '2023-05-09 15:23:17'),
(20, 'Shopee Food Driver', 'Shopee Food Driver', NULL, 'E-Money', 'prepaid', '2023-05-09 15:23:17', '2023-05-09 15:23:17'),
(21, 'Sakuku', 'Sakuku', NULL, 'E-Money', 'prepaid', '2023-05-09 15:23:18', '2023-05-09 15:23:18'),
(22, 'i.saku', 'i.saku', NULL, 'E-Money', 'prepaid', '2023-05-09 15:23:18', '2023-05-09 15:23:18'),
(23, 'MAXIM', 'MAXIM', NULL, 'E-Money', 'prepaid', '2023-05-09 15:23:19', '2023-05-09 15:23:19');

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `id` int(11) NOT NULL,
  `refId` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `storeName` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `status` enum('proses','sukses','gagal') DEFAULT 'proses',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`id`, `refId`, `user`, `storeName`, `method`, `amount`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'eubd26jb', 'rizki.ilhami31@gmail.com', NULL, 'cash', 100000, 'sukses', '2023-05-08 10:51:49', '2023-05-08 15:19:01'),
(2, '9x4wj5yc', 'rizki.ilhami31@gmail.com', NULL, 'cash', 50000, 'sukses', '2023-05-08 13:27:06', '2023-05-08 15:22:51'),
(4, 'x8hvdg8g', 'rizki.ilhami31@gmail.com', NULL, 'cash', 10000, 'sukses', '2023-05-08 15:24:49', '2023-05-08 15:25:11'),
(5, 'jq8a7ixg', 'rizki.ilhami31@gmail.com', NULL, 'cash', 15000, 'sukses', '2023-05-08 15:26:11', '2023-05-08 15:26:18'),
(6, 'g7y5sojh', 'rizki.ilhami31@gmail.com', NULL, 'cash', 23000, 'sukses', '2023-05-08 15:27:10', '2023-05-08 15:27:18'),
(7, '896kprp2', 'rizki.ilhami31@gmail.com', NULL, 'cash', 15000, 'sukses', '2023-05-08 15:28:22', '2023-05-08 15:28:33'),
(8, 'j8yiafx6', 'rizki.ilhami31@gmail.com', NULL, 'cash', 15000, '', '2023-05-08 15:28:48', '2023-05-08 15:28:56'),
(9, 'qx2oeirq', 'rizki.ilhami31@gmail.com', NULL, 'cash', 80000, 'gagal', '2023-05-08 15:30:12', '2023-05-08 15:31:03');

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
(13, 'Adaptor', '2023-04-29 15:33:24', '2023-04-29 15:33:24'),
(15, 'Headseat', '2023-04-29 15:42:31', '2023-04-29 15:42:31'),
(16, 'Receiver', '2023-04-29 15:42:34', '2023-04-29 15:42:34'),
(17, 'Roko', '2023-04-29 15:42:38', '2023-04-29 15:42:38'),
(18, 'Softcase', '2023-04-29 15:42:43', '2023-04-29 15:42:43'),
(19, 'Adaptor', '2023-04-29 15:42:47', '2023-04-29 15:42:47');

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
-- Table structure for table `mutation`
--

CREATE TABLE `mutation` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `type` enum('-','+') NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `category` enum('transaksi','deposit','cashback','lainnya') DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mutation`
--

INSERT INTO `mutation` (`id`, `user`, `type`, `amount`, `note`, `category`, `createdAt`, `updatedAt`) VALUES
(1, 'rizki.ilhami31@gmail.com', '+', 100000, 'deposit cash', 'deposit', '2023-05-08 15:19:01', '2023-05-08 15:19:01'),
(2, 'rizki.ilhami31@gmail.com', '+', 50000, 'deposit cash', 'deposit', '2023-05-08 15:22:51', '2023-05-08 15:22:51'),
(3, 'rizki.ilhami31@gmail.com', '+', 10000, 'deposit cash', 'deposit', '2023-05-08 15:25:11', '2023-05-08 15:25:11'),
(4, 'rizki.ilhami31@gmail.com', '+', 15000, 'deposit cash', 'deposit', '2023-05-08 15:26:18', '2023-05-08 15:26:18'),
(5, 'rizki.ilhami31@gmail.com', '+', 23000, 'deposit cash', 'deposit', '2023-05-08 15:27:18', '2023-05-08 15:27:18'),
(6, 'rizki.ilhami31@gmail.com', '+', 15000, 'deposit cash', 'deposit', '2023-05-08 15:28:33', '2023-05-08 15:28:33');

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
('20230421072958-create-table-product.js'),
('20230508045228-create-table-deposit.js'),
('20230508144009-create-table-mutation.js'),
('20230509122515-create-table-srv.js'),
('20230509122800-create-table-category.js');

-- --------------------------------------------------------

--
-- Table structure for table `srv`
--

CREATE TABLE `srv` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `min` int(11) DEFAULT NULL,
  `max` int(11) DEFAULT NULL,
  `refil` enum('1','0') DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `price_sale` int(11) DEFAULT NULL,
  `status` enum('available','empty') DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `srv`
--

INSERT INTO `srv` (`id`, `type`, `code`, `name`, `note`, `min`, `max`, `refil`, `price`, `price_sale`, `status`, `brand`, `category`, `createdAt`, `updatedAt`) VALUES
(1, 'prepaid', 'PULSAsREGTSEL1', 'Telkomsel 1.000', 'Pulsa Telkomsel Rp 1.000', NULL, NULL, NULL, 1300, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:06', '2023-05-09 15:22:41'),
(2, 'prepaid', 'TOKEN20', 'PLN 20.000', 'masukkan nomor meter/id pelanggan', NULL, NULL, NULL, 20100, NULL, 'available', 'PLN', 'PLN', '2023-05-09 14:46:06', '2023-05-09 15:22:41'),
(3, 'prepaid', 'DANA10', 'DANA 10.000', '-', NULL, NULL, NULL, 10155, NULL, 'available', 'DANA', 'E-Money', '2023-05-09 14:46:07', '2023-05-09 15:22:42'),
(4, 'prepaid', 'TOKEN15', 'PLN 15.000', 'masukkan nomor meter/id pelanggan', NULL, NULL, NULL, 15765, NULL, 'empty', 'PLN', 'PLN', '2023-05-09 14:46:07', '2023-05-09 15:22:42'),
(5, 'prepaid', 'INTSEL1', 'Aktivasi Voucher Telkomsel 1.5 GB / 3 Hari', 'Produk ini untuk isi Voucher kosongan. perhatikan zona dan regional voucher.', NULL, NULL, NULL, 6635, NULL, 'available', 'TELKOMSEL', 'Aktivasi Voucher', '2023-05-09 14:46:07', '2023-05-09 15:22:42'),
(6, 'prepaid', 'PULSAREGTSEL3', 'Telkomsel 3.000', 'Pulsa Telkomsel Rp 3.000', NULL, NULL, NULL, 3775, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:07', '2023-05-09 15:22:42'),
(7, 'prepaid', 'PULSAREGTSEL5', 'Telkomsel 5.000', 'Pulsa Telkomsel Rp 5.000', NULL, NULL, NULL, 5331, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:07', '2023-05-09 15:22:42'),
(8, 'prepaid', 'PULSAREGTSEL10', 'Telkomsel 10.000', 'Pulsa Telkomsel Rp 10.000', NULL, NULL, NULL, 10200, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:07', '2023-05-09 15:22:42'),
(9, 'prepaid', 'PULSAREGTSEL15', 'Telkomsel 15.000', 'Pulsa Telkomsel Rp 15.000', NULL, NULL, NULL, 14975, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:07', '2023-05-09 15:22:42'),
(10, 'prepaid', 'PULSAREGTSEL20', 'Telkomsel 20.000', 'Pulsa Telkomsel Rp 20.000', NULL, NULL, NULL, 19975, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:07', '2023-05-09 15:22:42'),
(11, 'prepaid', 'PULSAREGTSEL25', 'Telkomsel 25.000', 'Pulsa Telkomsel Rp 25.000', NULL, NULL, NULL, 25300, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:07', '2023-05-09 15:22:42'),
(12, 'prepaid', 'PULSAREGTSEL30', 'Telkomsel 30.000', 'Pulsa Telkomsel Rp 30.000', NULL, NULL, NULL, 29875, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:07', '2023-05-09 15:22:42'),
(13, 'prepaid', 'PULSAREGTSEL35', 'Telkomsel 35.000', 'Pulsa Telkomsel Rp 35.000', NULL, NULL, NULL, 34975, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:07', '2023-05-09 15:22:42'),
(14, 'prepaid', 'PULSAREGTSEL40', 'Telkomsel 40.000', 'Pulsa Telkomsel Rp 40.000', NULL, NULL, NULL, 39825, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:08', '2023-05-09 15:22:42'),
(15, 'prepaid', 'PULSAREGTSEL45', 'Telkomsel 45.000', 'Pulsa Telkomsel Rp 45.000', NULL, NULL, NULL, 44950, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:08', '2023-05-09 15:22:43'),
(16, 'prepaid', 'PULSAREGTSEL50', 'Telkomsel 50.000', 'Telkomsel 50.000', NULL, NULL, NULL, 49950, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:08', '2023-05-09 15:22:43'),
(17, 'prepaid', 'PULSAREGTSEL55', 'Telkomsel 55.000', 'Pulsa Telkomsel Rp 55.000', NULL, NULL, NULL, 54900, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:08', '2023-05-09 15:22:43'),
(18, 'prepaid', 'PULSAREGTSEL60', 'Telkomsel 60.000', 'Pulsa Telkomsel Rp 60.000', NULL, NULL, NULL, 59775, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:08', '2023-05-09 15:22:43'),
(19, 'prepaid', 'PULSAREGTSEL65', 'Telkomsel 65.000', 'Pulsa Telkomsel Rp 65.000', NULL, NULL, NULL, 64825, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:08', '2023-05-09 15:22:43'),
(20, 'prepaid', 'PULSAREGTSEL70', 'Telkomsel 70.000', 'Pulsa Telkomsel Rp 70.000', NULL, NULL, NULL, 69750, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:08', '2023-05-09 15:22:43'),
(21, 'prepaid', 'PULSAREGTSEL75', 'Telkomsel 75.000', 'Pulsa Telkomsel Rp 75.000', NULL, NULL, NULL, 74600, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:08', '2023-05-09 15:22:43'),
(22, 'prepaid', 'PULSAREGTSEL80', 'Telkomsel 80.000', 'Pulsa Telkomsel Rp 80.000', NULL, NULL, NULL, 79800, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:08', '2023-05-09 15:22:43'),
(23, 'prepaid', 'PULSAREGTSEL85', 'Telkomsel 85.000', 'Pulsa Telkomsel Rp 85.000', NULL, NULL, NULL, 84750, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:08', '2023-05-09 15:22:43'),
(24, 'prepaid', 'PULSAREGTSEL90', 'Telkomsel 90.000', 'Pulsa Telkomsel Rp 90.000', NULL, NULL, NULL, 89650, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:08', '2023-05-09 15:22:43'),
(25, 'prepaid', 'PULSAREGTSEL', 'Telkomsel 95.000', 'Pulsa Telkomsel Rp 95.000', NULL, NULL, NULL, 94700, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:08', '2023-05-09 15:22:43'),
(26, 'prepaid', 'PULSAREGTSEL100', 'Telkomsel 100.000', 'Telkomsel 100.000', NULL, NULL, NULL, 99750, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:08', '2023-05-09 15:22:43'),
(27, 'prepaid', 'PULSAREGTSEL150', 'Telkomsel 150.000', 'Pulsa Telkomsel Rp 150.000', NULL, NULL, NULL, 149525, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:08', '2023-05-09 15:22:44'),
(28, 'prepaid', 'PULSAREGTSEL200', 'Telkomsel 200.000', 'Pulsa Telkomsel Rp 200.000', NULL, NULL, NULL, 199525, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:08', '2023-05-09 15:22:44'),
(29, 'prepaid', 'PULSAREGIND5', 'Indosat 5.000', 'Pulsa Indosat Rp 5.000', NULL, NULL, NULL, 5750, NULL, 'available', 'INDOSAT', 'Pulsa', '2023-05-09 14:46:08', '2023-05-09 15:22:44'),
(30, 'prepaid', 'PULSAREGIND10', 'Indosat 10.000', 'Pulsa Indosat Rp 10.000', NULL, NULL, NULL, 10725, NULL, 'available', 'INDOSAT', 'Pulsa', '2023-05-09 14:46:08', '2023-05-09 15:22:44'),
(31, 'prepaid', 'PULSAREGIND15', 'Indosat 15.000', 'Pulsa Indosat Rp 15.000', NULL, NULL, NULL, 14900, NULL, 'available', 'INDOSAT', 'Pulsa', '2023-05-09 14:46:08', '2023-05-09 15:22:44'),
(32, 'prepaid', 'PULSAREGIND20', 'Indosat 20.000', 'Pulsa Indosat Rp 20.000', NULL, NULL, NULL, 19900, NULL, 'available', 'INDOSAT', 'Pulsa', '2023-05-09 14:46:09', '2023-05-09 15:22:44'),
(33, 'prepaid', 'PULSAREGIND25', 'Indosat 25.000', 'Pulsa Indosat Rp 25.000', NULL, NULL, NULL, 24850, NULL, 'available', 'INDOSAT', 'Pulsa', '2023-05-09 14:46:09', '2023-05-09 15:22:44'),
(34, 'prepaid', 'PULSAREGIND30', 'Indosat 30.000', 'Pulsa Indosat Rp 30.000', NULL, NULL, NULL, 29625, NULL, 'available', 'INDOSAT', 'Pulsa', '2023-05-09 14:46:09', '2023-05-09 15:22:44'),
(35, 'prepaid', 'PULSAREGIND40', 'Indosat 40.000', 'Pulsa Indosat Rp 40.000', NULL, NULL, NULL, 39425, NULL, 'available', 'INDOSAT', 'Pulsa', '2023-05-09 14:46:09', '2023-05-09 15:22:44'),
(36, 'prepaid', 'PULSAREGIND50', 'Indosat 50.000', 'Pulsa Indosat Rp 50.000', NULL, NULL, NULL, 47935, NULL, 'available', 'INDOSAT', 'Pulsa', '2023-05-09 14:46:09', '2023-05-09 15:22:44'),
(37, 'prepaid', 'PULSAREGIND60', 'Indosat 60.000', 'Pulsa Indosat Rp 60.000', NULL, NULL, NULL, 57446, NULL, 'available', 'INDOSAT', 'Pulsa', '2023-05-09 14:46:09', '2023-05-09 15:22:44'),
(38, 'prepaid', 'PULSAREGIND70', 'Indosat 70.000', 'Pulsa Indosat Rp 70.000', NULL, NULL, NULL, 68045, NULL, 'available', 'INDOSAT', 'Pulsa', '2023-05-09 14:46:09', '2023-05-09 15:22:44'),
(39, 'prepaid', 'PULSAREGIND80', 'Indosat 80.000', 'Pulsa Indosat Rp 80.000', NULL, NULL, NULL, 76268, NULL, 'available', 'INDOSAT', 'Pulsa', '2023-05-09 14:46:09', '2023-05-09 15:22:44'),
(40, 'prepaid', 'PULSAREGIND90', 'Indosat 90.000', 'Pulsa Indosat Rp 90.000', NULL, NULL, NULL, 87015, NULL, 'available', 'INDOSAT', 'Pulsa', '2023-05-09 14:46:09', '2023-05-09 15:22:44'),
(41, 'prepaid', 'PULSAREGIND100', 'Indosat 100.000', 'Pulsa Indosat Rp 100.000', NULL, NULL, NULL, 94800, NULL, 'available', 'INDOSAT', 'Pulsa', '2023-05-09 14:46:09', '2023-05-09 15:22:45'),
(42, 'prepaid', 'PULSAREGIND150', 'Indosat 150.000', 'Pulsa Indosat Rp 150.000', NULL, NULL, NULL, 142950, NULL, 'available', 'INDOSAT', 'Pulsa', '2023-05-09 14:46:09', '2023-05-09 15:22:45'),
(43, 'prepaid', 'PULSAREGAXS5', 'Axis 5.000', 'Pulsa Axis Rp 5.000', NULL, NULL, NULL, 5851, NULL, 'available', 'AXIS', 'Pulsa', '2023-05-09 14:46:09', '2023-05-09 15:22:45'),
(44, 'prepaid', 'PULSAREGAXS10', 'Axis 10.000', 'Pulsa Axis Rp 10.000', NULL, NULL, NULL, 10826, NULL, 'available', 'AXIS', 'Pulsa', '2023-05-09 14:46:09', '2023-05-09 15:22:45'),
(45, 'prepaid', 'PULSAREGAXS15', 'Axis 15.000', 'Pulsa Axis Rp 15.000', NULL, NULL, NULL, 14985, NULL, 'available', 'AXIS', 'Pulsa', '2023-05-09 14:46:09', '2023-05-09 15:22:45'),
(46, 'prepaid', 'PULSAREGAXS25', 'Axis 25.000', 'Pulsa Axis Rp 25.000', NULL, NULL, NULL, 24995, NULL, 'available', 'AXIS', 'Pulsa', '2023-05-09 14:46:09', '2023-05-09 15:22:45'),
(47, 'prepaid', 'PULSAREGAXS20', 'Axis 30.000', 'Pulsa Axis Rp 30.000', NULL, NULL, NULL, 29950, NULL, 'available', 'AXIS', 'Pulsa', '2023-05-09 14:46:09', '2023-05-09 15:22:45'),
(48, 'prepaid', 'PULSAREGAXS50', 'Axis 50.000', 'Pulsa Axis Rp 50.000', NULL, NULL, NULL, 49800, NULL, 'available', 'AXIS', 'Pulsa', '2023-05-09 14:46:09', '2023-05-09 15:22:45'),
(49, 'prepaid', 'PULSAREGAXS100', 'Axis 100.000', 'Pulsa Axis Rp 100.000', NULL, NULL, NULL, 98995, NULL, 'available', 'AXIS', 'Pulsa', '2023-05-09 14:46:09', '2023-05-09 15:22:45'),
(50, 'prepaid', 'PULSAREGAXS200', 'Axis 200.000', 'Pulsa Axis Rp 200.000', NULL, NULL, NULL, 199775, NULL, 'available', 'AXIS', 'Pulsa', '2023-05-09 14:46:09', '2023-05-09 15:22:45'),
(51, 'prepaid', 'PULSAREGSMART5', 'Smartfren 5.000', 'Pulsa Smart Rp 5.000', NULL, NULL, NULL, 5105, NULL, 'available', 'SMARTFREN', 'Pulsa', '2023-05-09 14:46:09', '2023-05-09 15:22:45'),
(52, 'prepaid', 'PULSAREGSMART10', 'Smartfren 10.000', 'Pulsa Smart Rp 10.000', NULL, NULL, NULL, 10105, NULL, 'available', 'SMARTFREN', 'Pulsa', '2023-05-09 14:46:10', '2023-05-09 15:22:45'),
(53, 'prepaid', 'PULSAREGSMART15', 'Smartfren 15.000', 'Pulsa Smart Rp 15.000', NULL, NULL, NULL, 14665, NULL, 'empty', 'SMARTFREN', 'Pulsa', '2023-05-09 14:46:10', '2023-05-09 15:22:46'),
(54, 'prepaid', 'PULSAREGSMART20', 'Smartfren 20.000', 'Pulsa Smart Rp 20.000', NULL, NULL, NULL, 19535, NULL, 'available', 'SMARTFREN', 'Pulsa', '2023-05-09 14:46:10', '2023-05-09 15:22:46'),
(55, 'prepaid', 'PULSAREGSMART25', 'Smartfren 25.000', 'Pulsa Smart Rp 25.000', NULL, NULL, NULL, 24325, NULL, 'available', 'SMARTFREN', 'Pulsa', '2023-05-09 14:46:10', '2023-05-09 15:22:46'),
(56, 'prepaid', 'PULSAREGSMART30', 'Smartfren 30.000', 'Pulsa Smart Rp 30.000', NULL, NULL, NULL, 29320, NULL, 'empty', 'SMARTFREN', 'Pulsa', '2023-05-09 14:46:10', '2023-05-09 15:22:46'),
(57, 'prepaid', 'PULSAREGSMART35', 'Smartfren 35.000', 'Pulsa Smart Rp 35.000', NULL, NULL, NULL, 34275, NULL, 'available', 'SMARTFREN', 'Pulsa', '2023-05-09 14:46:10', '2023-05-09 15:22:46'),
(58, 'prepaid', 'PULSAREGSMART40', 'Smartfren 40.000', 'Pulsa Smart Rp 40.000', NULL, NULL, NULL, 39150, NULL, 'available', 'SMARTFREN', 'Pulsa', '2023-05-09 14:46:10', '2023-05-09 15:22:46'),
(59, 'prepaid', 'PULSAREGSMART45', 'Smartfren 45.000', 'Pulsa Smart Rp 45.000', NULL, NULL, NULL, 44125, NULL, 'available', 'SMARTFREN', 'Pulsa', '2023-05-09 14:46:10', '2023-05-09 15:22:46'),
(60, 'prepaid', 'PULSAREGSMART50', 'Smartfren 50.000', 'Pulsa Smart Rp 50.000', NULL, NULL, NULL, 48480, NULL, 'available', 'SMARTFREN', 'Pulsa', '2023-05-09 14:46:10', '2023-05-09 15:22:46'),
(61, 'prepaid', 'PULSAREGSMART55', 'Smartfren 55.000', 'Pulsa Smart Rp 55.000', NULL, NULL, NULL, 53925, NULL, 'available', 'SMARTFREN', 'Pulsa', '2023-05-09 14:46:10', '2023-05-09 15:22:46'),
(62, 'prepaid', 'PULSAREGSMART60', 'Smartfren 60.000', 'Pulsa Smart Rp 60.000', NULL, NULL, NULL, 58525, NULL, 'available', 'SMARTFREN', 'Pulsa', '2023-05-09 14:46:10', '2023-05-09 15:22:46'),
(63, 'prepaid', 'PULSAREGSMART65', 'Smartfren 65.000', 'Pulsa Smart Rp 65.000', NULL, NULL, NULL, 63575, NULL, 'available', 'SMARTFREN', 'Pulsa', '2023-05-09 14:46:10', '2023-05-09 15:22:46'),
(64, 'prepaid', 'PULSAREGSMART70', 'Smartfren 70.000', 'Pulsa Smart Rp 70.000', NULL, NULL, NULL, 68390, NULL, 'empty', 'SMARTFREN', 'Pulsa', '2023-05-09 14:46:10', '2023-05-09 15:22:46'),
(65, 'prepaid', 'PULSAREGSMART75', 'Smartfren 75.000', 'Pulsa Smart Rp 75.000', NULL, NULL, NULL, 73260, NULL, 'empty', 'SMARTFREN', 'Pulsa', '2023-05-09 14:46:10', '2023-05-09 15:22:46'),
(66, 'prepaid', 'PULSAREGSMART80', 'Smartfren 80.000', 'Pulsa Smart Rp 80.000', NULL, NULL, NULL, 78145, NULL, 'empty', 'SMARTFREN', 'Pulsa', '2023-05-09 14:46:10', '2023-05-09 15:22:46'),
(67, 'prepaid', 'PULSAREGSMART85', 'Smartfren 85.000', 'Pulsa Smart Rp 85.000', NULL, NULL, NULL, 83125, NULL, 'available', 'SMARTFREN', 'Pulsa', '2023-05-09 14:46:10', '2023-05-09 15:22:46'),
(68, 'prepaid', 'PULSAREGSMART90', 'Smartfren 90.000', 'Pulsa Smart Rp 90.000', NULL, NULL, NULL, 88045, NULL, 'available', 'SMARTFREN', 'Pulsa', '2023-05-09 14:46:10', '2023-05-09 15:22:46'),
(69, 'prepaid', 'PULSAREGSMART95', 'Smartfren 95.000', 'Pulsa Smart Rp 95.000', NULL, NULL, NULL, 93125, NULL, 'available', 'SMARTFREN', 'Pulsa', '2023-05-09 14:46:10', '2023-05-09 15:22:46'),
(70, 'prepaid', 'PULSAREGSMART100', 'Smartfren 100.000', 'Pulsa Smart Rp 100.000', NULL, NULL, NULL, 98975, NULL, 'available', 'SMARTFREN', 'Pulsa', '2023-05-09 14:46:10', '2023-05-09 15:22:46'),
(71, 'prepaid', 'PULSAREGTRI1', 'Three 1.000', 'Pulsa Three Rp 1.000', NULL, NULL, NULL, 1325, NULL, 'available', 'TRI', 'Pulsa', '2023-05-09 14:46:11', '2023-05-09 15:22:47'),
(72, 'prepaid', 'PULSAREGTRI2', 'Three 2.000', 'Pulsa Three Rp 2.000', NULL, NULL, NULL, 2300, NULL, 'available', 'TRI', 'Pulsa', '2023-05-09 14:46:11', '2023-05-09 15:22:47'),
(73, 'prepaid', 'PULSAREGTRI3', 'Three 3.000', 'Pulsa Three Rp 3.000', NULL, NULL, NULL, 3275, NULL, 'available', 'TRI', 'Pulsa', '2023-05-09 14:46:11', '2023-05-09 15:22:47'),
(74, 'prepaid', 'PULSAREGTRI5', 'Three 5.000', 'Pulsa Three Rp 5.000', NULL, NULL, NULL, 5555, NULL, 'available', 'TRI', 'Pulsa', '2023-05-09 14:46:11', '2023-05-09 15:22:47'),
(75, 'prepaid', 'PULSAREGTRI10', 'Three 10.000', 'Pulsa Three Rp 10.000', NULL, NULL, NULL, 10421, NULL, 'available', 'TRI', 'Pulsa', '2023-05-09 14:46:11', '2023-05-09 15:22:47'),
(76, 'prepaid', 'PULSAREGTRI15', 'Three 15.000', 'Pulsa Three Rp 15.000', NULL, NULL, NULL, 14960, NULL, 'available', 'TRI', 'Pulsa', '2023-05-09 14:46:11', '2023-05-09 15:22:47'),
(77, 'prepaid', 'PULSAREGTRI20', 'Three 20.000', 'Pulsa Three Rp 20.000', NULL, NULL, NULL, 19810, NULL, 'available', 'TRI', 'Pulsa', '2023-05-09 14:46:11', '2023-05-09 15:22:47'),
(78, 'prepaid', 'PULSAREGTRI25', 'Three 25.000', 'Pulsa Three Rp 25.000', NULL, NULL, NULL, 24678, NULL, 'available', 'TRI', 'Pulsa', '2023-05-09 14:46:11', '2023-05-09 15:22:47'),
(79, 'prepaid', 'PULSAREGTRI30', 'Three 30.000', 'Pulsa Three Rp 30.000', NULL, NULL, NULL, 29730, NULL, 'available', 'TRI', 'Pulsa', '2023-05-09 14:46:11', '2023-05-09 15:22:47'),
(80, 'prepaid', 'PULSAREGTRI40', 'Three 40.000', 'Pulsa Three Rp 40.000', NULL, NULL, NULL, 39495, NULL, 'empty', 'TRI', 'Pulsa', '2023-05-09 14:46:11', '2023-05-09 15:22:47'),
(81, 'prepaid', 'PULSAREGTRI50', 'Three 50.000', 'Pulsa Three Rp 50.000', NULL, NULL, NULL, 49250, NULL, 'available', 'TRI', 'Pulsa', '2023-05-09 14:46:11', '2023-05-09 15:22:47'),
(82, 'prepaid', 'PULSAREGTRI75', 'Three 75.000', 'Pulsa Three Rp 75.000', NULL, NULL, NULL, 72649, NULL, 'empty', 'TRI', 'Pulsa', '2023-05-09 14:46:11', '2023-05-09 15:22:47'),
(83, 'prepaid', 'PULSAREGTRI80', 'Three 80.000', 'Pulsa Three Rp 80.000', NULL, NULL, NULL, 75015, NULL, 'available', 'TRI', 'Pulsa', '2023-05-09 14:46:11', '2023-05-09 15:22:47'),
(84, 'prepaid', 'PULSAREGTRI100', 'Three 100.000', 'Pulsa Three Rp 100.000', NULL, NULL, NULL, 97945, NULL, 'available', 'TRI', 'Pulsa', '2023-05-09 14:46:11', '2023-05-09 15:22:47'),
(85, 'prepaid', 'PULSAREGTRI150', 'Three 150.000', 'Pulsa Three Rp 150.000', NULL, NULL, NULL, 144649, NULL, 'empty', 'TRI', 'Pulsa', '2023-05-09 14:46:11', '2023-05-09 15:22:48'),
(86, 'prepaid', 'PULSAREGXL5', 'Xl 5.000', 'Pulsa Xl Rp 5.000', NULL, NULL, NULL, 5930, NULL, 'available', 'XL', 'Pulsa', '2023-05-09 14:46:11', '2023-05-09 15:22:48'),
(87, 'prepaid', 'PULSAREGXL10', 'Xl 10.000', 'Pulsa Xl Rp 10.000', NULL, NULL, NULL, 10826, NULL, 'available', 'XL', 'Pulsa', '2023-05-09 14:46:11', '2023-05-09 15:22:48'),
(88, 'prepaid', 'PULSAREGXL15', 'Xl 15.000', 'Pulsa Xl Rp 15.000', NULL, NULL, NULL, 14925, NULL, 'available', 'XL', 'Pulsa', '2023-05-09 14:46:11', '2023-05-09 15:22:48'),
(89, 'prepaid', 'PULSAREGXL25', 'Xl 25.000', 'Pulsa Xl Rp 25.000', NULL, NULL, NULL, 24885, NULL, 'available', 'XL', 'Pulsa', '2023-05-09 14:46:11', '2023-05-09 15:22:48'),
(90, 'prepaid', 'PULSAREGXL30', 'XL 30.000', 'Pulsa Xl Rp 30.000', NULL, NULL, NULL, 29850, NULL, 'available', 'XL', 'Pulsa', '2023-05-09 14:46:11', '2023-05-09 15:22:48'),
(91, 'prepaid', 'PULSAREGXL50', 'Xl 50.000', 'Pulsa Xl Rp 50.000', NULL, NULL, NULL, 49710, NULL, 'available', 'XL', 'Pulsa', '2023-05-09 14:46:12', '2023-05-09 15:22:48'),
(92, 'prepaid', 'PULSAREGXL100', 'Xl 100.000', 'Pulsa Xl Rp 100.000', NULL, NULL, NULL, 98250, NULL, 'available', 'XL', 'Pulsa', '2023-05-09 14:46:12', '2023-05-09 15:22:48'),
(93, 'prepaid', 'PULSAREGXL150', 'Xl 150.000', 'Pulsa Xl Rp 150.000', NULL, NULL, NULL, 149225, NULL, 'available', 'XL', 'Pulsa', '2023-05-09 14:46:12', '2023-05-09 15:22:48'),
(94, 'prepaid', 'DATATSELCOM1', 'Telkomsel Data Combo Sakti 1.5 GB', 'Internet 1.5 GB, Nelpon sesama 150 Menit, SMS sesama 400 SMS, berlaku 30 Hari', NULL, NULL, NULL, 16110, NULL, 'available', 'TELKOMSEL', 'Data', '2023-05-09 14:46:12', '2023-05-09 15:22:48'),
(95, 'prepaid', 'DATATSELCOM2', 'Telkomsel Data Combo Sakti 2.5 GB', 'Telkomsel Data Combo Sakti 2.5 GB, 30 Hari', NULL, NULL, NULL, 27510, NULL, 'available', 'TELKOMSEL', 'Data', '2023-05-09 14:46:12', '2023-05-09 15:22:48'),
(96, 'prepaid', 'DATATSELCOM3', 'Telkomsel Data Combo Sakti 3 GB', 'Internet 3 GB, Nelpon sesama 150 Menit, SMS sesama 400 SMS, berlaku 30 Hari', NULL, NULL, NULL, 31510, NULL, 'available', 'TELKOMSEL', 'Data', '2023-05-09 14:46:12', '2023-05-09 15:22:48'),
(97, 'prepaid', 'DATATSELCOM4', 'Telkomsel Data Combo Sakti 5 GB', 'Telkomsel Data Combo Sakti 5 GB, 30 Hari', NULL, NULL, NULL, 45525, NULL, 'available', 'TELKOMSEL', 'Data', '2023-05-09 14:46:12', '2023-05-09 15:22:48'),
(98, 'prepaid', 'DATATSELCOM5', 'Telkomsel Data Combo Sakti 10 GB', 'Telkomsel Data Combo Sakti 10 GB, 30 Hari', NULL, NULL, NULL, 54525, NULL, 'available', 'TELKOMSEL', 'Data', '2023-05-09 14:46:12', '2023-05-09 15:22:49'),
(99, 'prepaid', 'DATATSELCOM6', 'Telkomsel Data Combo Sakti 11 GB', 'Internet 11 GB, Nelpon sesama 150 Menit, SMS sesama 400 SMS, berlaku 30 Hari', NULL, NULL, NULL, 59125, NULL, 'available', 'TELKOMSEL', 'Data', '2023-05-09 14:46:12', '2023-05-09 15:22:49'),
(100, 'prepaid', 'DATATSELCOM7', 'Telkomsel Data Combo Sakti 13 GB', 'Internet 13 GB, Nelpon sesama 150 Menit, SMS sesama 400 SMS, Unlimited(SosChat, Games, Music, TikTok), berlaku 30 Hari', NULL, NULL, NULL, 61525, NULL, 'available', 'TELKOMSEL', 'Data', '2023-05-09 14:46:12', '2023-05-09 15:22:49'),
(101, 'prepaid', 'DATATSELCOM8', 'Telkomsel Data Combo Sakti 15 GB', 'Telkomsel Data Combo Sakti 15 GB, 30 Hari', NULL, NULL, NULL, 74525, NULL, 'available', 'TELKOMSEL', 'Data', '2023-05-09 14:46:12', '2023-05-09 15:22:49'),
(102, 'prepaid', 'DATATSELCOM9', 'Telkomsel Data Combo Sakti 17 GB', 'Internet 17 GB, Nelpon sesama 300 Menit, SMS sesama 400 SMS, Unlimited(SosChat, Games, Music, TikTok), berlaku 30 Hari', NULL, NULL, NULL, 92525, NULL, 'available', 'TELKOMSEL', 'Data', '2023-05-09 14:46:12', '2023-05-09 15:22:49'),
(103, 'prepaid', 'DATATSELCOM10', 'Telkomsel Data Combo Sakti 20 GB', 'Telkomsel Data Combo Sakti 20 GB, 30 Hari', NULL, NULL, NULL, 100475, NULL, 'available', 'TELKOMSEL', 'Data', '2023-05-09 14:46:12', '2023-05-09 15:22:49'),
(104, 'prepaid', 'DATATSELCOM11', 'Telkomsel Data Combo Sakti 24 GB', 'Telkomsel Data Combo Sakti 24 GB, 30 Hari', NULL, NULL, NULL, 107525, NULL, 'available', 'TELKOMSEL', 'Data', '2023-05-09 14:46:12', '2023-05-09 15:22:49'),
(105, 'prepaid', 'DATATSELCOM12', 'Telkomsel Data Combo Sakti 25 GB', 'Internet 25 GB, Nelpon sesama 300 Menit, SMS sesama 400 SMS, Unlimited(SosChat, Video, Games, Music, TikTok), berlaku 30 Hari', NULL, NULL, NULL, 114525, NULL, 'available', 'TELKOMSEL', 'Data', '2023-05-09 14:46:12', '2023-05-09 15:22:49'),
(106, 'prepaid', 'DATATSELULMAX1', 'Telkomsel Data UnlimitedMAX 20.000', '3GB (0.5GB Nasional + 2.5GB Lokal) + Unlimited Apps (WhatsApp, LINE, GamesMAX, MusicMAX), 30 Hari', NULL, NULL, NULL, 26000, NULL, 'empty', 'TELKOMSEL', 'Data', '2023-05-09 14:46:12', '2023-05-09 15:22:49'),
(107, 'prepaid', 'DATATSELULMAX2', 'Telkomsel Data UnlimitedMAX 30.000', '7GB (1GB Nasional + 6GB Lokal) + Unlimited Apps (Facebook, Instagram. WhatsApp, LINE, GamesMAX, MusicMAX), 30 Hari', NULL, NULL, NULL, 36000, NULL, 'available', 'TELKOMSEL', 'Data', '2023-05-09 14:46:12', '2023-05-09 15:22:49'),
(108, 'prepaid', 'DATATSELULMAX3', 'Telkomsel Data UnlimitedMAX 50.000', '15GB (2GB Nasional + 13GB Lokal) + Unlimited Apps (Facebook, Instagram. WhatsApp, LINE, GamesMAX, MusicMAX), 30 Hari', NULL, NULL, NULL, 56000, NULL, 'available', 'TELKOMSEL', 'Data', '2023-05-09 14:46:12', '2023-05-09 15:22:49'),
(109, 'prepaid', 'DATATSELULMAX4', 'Telkomsel Data UnlimitedMAX 70.000', '25GB (2GB Nasional + 23GB Lokal) + Unlimited Apps (YouTube, MAXstream, Facebook, Instagram, WhatsApp, LINE, GamesMAX, MusicMAX), 30 Hari', NULL, NULL, NULL, 85000, NULL, 'empty', 'TELKOMSEL', 'Data', '2023-05-09 14:46:12', '2023-05-09 15:22:49'),
(110, 'prepaid', 'DATATSELULMAX5', 'Telkomsel Data UnlimitedMAX 100.000', '38GB (3GB Nasional + 35GB Lokal) + Unlimited Apps (YouTube, MAXstream, Facebook, Instagram, WhatsApp, LINE, GamesMAX, MusicMAX), 30 Hari', NULL, NULL, NULL, 109750, NULL, 'available', 'TELKOMSEL', 'Data', '2023-05-09 14:46:12', '2023-05-09 15:22:49'),
(111, 'prepaid', 'DATATSELINTMAX1', 'Telkomsel Data InternetMAX 2 GB / 30 Hari', 'Paket InternetMAX 2 GB berlaku 30 Hari dengan kuota utama 2GB, kuota nasional 0.5GB, kuota lokal 1.5GB', NULL, NULL, NULL, 14000, NULL, 'available', 'TELKOMSEL', 'Data', '2023-05-09 14:46:12', '2023-05-09 15:22:49'),
(112, 'prepaid', 'DATATSELINTMAX2', 'Telkomsel Data InternetMAX 6 GB / 30 Hari', 'Paket InternetMAX 6 GB berlaku 30 Hari dengan kuota utama 3GB, kuota nasional 0.5GB, kuota local 2.5GB, kuota apps 3 GB Kuota Chat (WhatsApp, Line, Games Max, Music Max)', NULL, NULL, NULL, 31000, NULL, 'available', 'TELKOMSEL', 'Data', '2023-05-09 14:46:12', '2023-05-09 15:22:49'),
(113, 'prepaid', 'DATATSELINTMAX3', 'Telkomsel Data InternetMAX 9 GB / 30 Hari', 'Paket InternetMAX 9 GB berlaku 30 Hari dengan kuota utama 4GB, kuota nasional 1GB, kuota local 3GB, kuota apps 5 GB Kuota Sosmed (Facebook, Instagram, WhatsApp, Line, Games Max, Music Max)', NULL, NULL, NULL, 37025, NULL, 'empty', 'TELKOMSEL', 'Data', '2023-05-09 14:46:13', '2023-05-09 15:22:49'),
(114, 'prepaid', 'DATATSELINTMAX4', 'Telkomsel Data InternetMAX 16 GB / 30 Hari', 'Paket InternetMAX 16 GB berlaku 30 Hari dengan kuota utama 6GB, kuota nasional 1.5GB, kuota local 4.5GB, kuota apps 10 GB Kuota Sosmed (Facebook, Instagram, WhatsApp, Line, Games Max, Music Max)', NULL, NULL, NULL, 55025, NULL, 'available', 'TELKOMSEL', 'Data', '2023-05-09 14:46:13', '2023-05-09 15:22:49'),
(115, 'prepaid', 'DATAINDCOM1', 'Indosat Freedom Combo 4 GB / 30 Hari', '3 GB Utama + 1 GB Malam + 5 menit all op + nelpon sesama sepuasnya, 30 hari', NULL, NULL, NULL, 29090, NULL, 'available', 'INDOSAT', 'Data', '2023-05-09 14:46:13', '2023-05-09 15:22:50'),
(116, 'prepaid', 'DATAINDCOM2', 'Indosat Freedom Combo 8 GB / 30 Hari', '8GB (4GB + 2GB Lokal, 2 GB Malam, Telepon 20 Mnt All 30hr) Paket hanya berlaku di area Jakarta, Botabek, West Java, Central Java, East Java, Kalimantan.', NULL, NULL, NULL, 39200, NULL, 'available', 'INDOSAT', 'Data', '2023-05-09 14:46:13', '2023-05-09 15:22:50'),
(117, 'prepaid', 'DATAINDCOM3', 'Indosat Freedom Combo 10 GB / 30 Hari', '7 GB Utama + 3 GB Malam + 10 menit all op + nelpon sesama sepuasnya, 30 hari', NULL, NULL, NULL, 40475, NULL, 'available', 'INDOSAT', 'Data', '2023-05-09 14:46:13', '2023-05-09 15:22:50'),
(118, 'prepaid', 'DATAINDCOM4', 'Indosat Freedom Combo 14 GB / 30 Hari', '14GB (7.5GB + 3.5GB Lokal, 3GB Mlm, Telepon 30 Mnt ALL 30hr) Paket hanya berlaku di area Jakarta, Botabek, West Java, Central Java, East Java, Kalimantan.', NULL, NULL, NULL, 58815, NULL, 'available', 'INDOSAT', 'Data', '2023-05-09 14:46:13', '2023-05-09 15:22:50'),
(119, 'prepaid', 'DATAINDCOM5', 'Indosat Freedom Combo 20 GB / 30 Hari', '15 GB Utama + 5 GB Malam + 15 menit all op + nelpon sesama sepuasnya, 30 hari', NULL, NULL, NULL, 79270, NULL, 'available', 'INDOSAT', 'Data', '2023-05-09 14:46:13', '2023-05-09 15:22:50'),
(120, 'prepaid', 'DATAINDFREEHA1', 'Indosat Freedom Kuota Harian 7 GB / 7 Hari', 'Total Kuota 7GB dengan batas pemakaian harian 1GB/hari. Setelah batas pemakaian harian, pemakaian internet gratis dgn Pulsa Safe kecepatan s.d 64Kbps. Masa aktif 7 hari', NULL, NULL, NULL, 26360, NULL, 'available', 'INDOSAT', 'Data', '2023-05-09 14:46:13', '2023-05-09 15:22:50'),
(121, 'prepaid', 'DATAINDFREEHA2', 'Indosat Freedom Kuota Harian 14 GB / 14 Hari', 'Total Kuota 14GB dengan batas pemakaian harian 1GB/hari. Setelah batas pemakaian harian, pemakaian internet gratis dgn Pulsa Safe kecepatan s.d 64Kbps. Masa aktif 14 hari', NULL, NULL, NULL, 47975, NULL, 'available', 'INDOSAT', 'Data', '2023-05-09 14:46:13', '2023-05-09 15:22:50'),
(122, 'prepaid', 'DATAINDFREEHA3', 'Indosat Freedom Kuota Harian 28 GB / 28 Hari', 'Total Kuota 28GB dengan batas pemakaian harian 1GB/hari. Setelah batas pemakaian harian, pemakaian internet gratis dgn Pulsa Safe kecepatan s.d 64Kbps. Masa aktif 28 hari', NULL, NULL, NULL, 84025, NULL, 'available', 'INDOSAT', 'Data', '2023-05-09 14:46:13', '2023-05-09 15:22:50'),
(123, 'prepaid', 'DATAINDFREU1', 'Indosat Freedom U 500 MB + 1 GB Apps / 2 Hari', 'cek di https://www.indosatooredoo.com/portal/id/psfreedomu', NULL, NULL, NULL, 5625, NULL, 'available', 'INDOSAT', 'Data', '2023-05-09 14:46:13', '2023-05-09 15:22:50'),
(124, 'prepaid', 'DATAINDFREU2', 'Indosat Freedom U 1 GB + 4.5 GB Apps / 30 Hari', 'cek di https://www.indosatooredoo.com/portal/id/psfreedomu', NULL, NULL, NULL, 28920, NULL, 'available', 'INDOSAT', 'Data', '2023-05-09 14:46:13', '2023-05-09 15:22:50'),
(125, 'prepaid', 'DATAINDFREU3', 'Indosat Freedom U 2 GB + 8 GB Apps / 30 Hari', 'cek di https://www.indosatooredoo.com/portal/id/psfreedomu', NULL, NULL, NULL, 47675, NULL, 'available', 'INDOSAT', 'Data', '2023-05-09 14:46:13', '2023-05-09 15:22:50'),
(126, 'prepaid', 'DATAINDFREU4', 'Indosat Freedom U 3 GB + 17 GB Apps / 30 Hari', 'cek di https://www.indosatooredoo.com/portal/id/psfreedomu', NULL, NULL, NULL, 67380, NULL, 'available', 'INDOSAT', 'Data', '2023-05-09 14:46:13', '2023-05-09 15:22:50'),
(127, 'prepaid', 'DATAINDFREU5', 'Indosat Freedom U 7 GB + 28 GB Apps / 30 Hari', 'cek di https://www.indosatooredoo.com/portal/id/psfreedomu', NULL, NULL, NULL, 87305, NULL, 'available', 'INDOSAT', 'Data', '2023-05-09 14:46:13', '2023-05-09 15:22:50'),
(128, 'prepaid', 'DATAAXISBRONET1', 'Axis Data BRONET 1.5 GB / 30 Hari', '-', NULL, NULL, NULL, 12998, NULL, 'available', 'AXIS', 'Data', '2023-05-09 14:46:13', '2023-05-09 15:22:50'),
(129, 'prepaid', 'DATAAXISBRONET2', 'Axis Data BRONET 2 GB / 30 Hari', '24 jam', NULL, NULL, NULL, 17810, NULL, 'available', 'AXIS', 'Data', '2023-05-09 14:46:13', '2023-05-09 15:22:50'),
(130, 'prepaid', 'DATAAXISBRONET3', 'Axis Data BRONET 3 GB / 30 Hari', 'Kuota 3GB. 24 Jam', NULL, NULL, NULL, 23850, NULL, 'empty', 'AXIS', 'Data', '2023-05-09 14:46:14', '2023-05-09 15:22:51'),
(131, 'prepaid', 'DATAAXISBRONET4', 'Axis Data BRONET 5 GB / 30 Hari', 'Kuota 5GB. 24 Jam', NULL, NULL, NULL, 53100, NULL, 'available', 'AXIS', 'Data', '2023-05-09 14:46:14', '2023-05-09 15:22:51'),
(132, 'prepaid', 'DATAAXISBRONET5', 'Axis Data BRONET 12 GB / 30 hari', '-', NULL, NULL, NULL, 61000, NULL, 'empty', 'AXIS', 'Data', '2023-05-09 14:46:14', '2023-05-09 15:22:51'),
(133, 'prepaid', 'DATAAXISOWS1', 'OWSEM 1 GB + 1 GB 4G / 30 Hari', 'BRONET 4G OWSEM 1GB+1GB(4G)+2GB Aplikasi, 24 jam 30HR', NULL, NULL, NULL, 16576, NULL, 'available', 'AXIS', 'Data', '2023-05-09 14:46:14', '2023-05-09 15:22:51'),
(134, 'prepaid', 'DATAAXISOWS2', 'OWSEM 1 GB + 3 GB 4G / 30 Hari', 'BRONET 4G OWSEM 1GB+3GB(4G)+4GB Aplikasi, 24 jam 30HR', NULL, NULL, NULL, 28275, NULL, 'available', 'AXIS', 'Data', '2023-05-09 14:46:14', '2023-05-09 15:22:51'),
(135, 'prepaid', 'DATAAXISOWS3', 'OWSEM 2 GB + 6 GB 4G / 30 Hari', 'BRONET 4G OWSEM 2GB+6GB(4G)+8GB Aplikasi, 24 jam 30HR', NULL, NULL, NULL, 44575, NULL, 'available', 'AXIS', 'Data', '2023-05-09 14:46:14', '2023-05-09 15:22:51'),
(136, 'prepaid', 'DATAAXISOWS4', 'OWSEM 3 GB + 9 GB 4G / 30 Hari', 'BRONET 4G OWSEM 3GB+9GB(4G)+12GB Aplikasi, 24 jam 30HR', NULL, NULL, NULL, 59525, NULL, 'available', 'AXIS', 'Data', '2023-05-09 14:46:14', '2023-05-09 15:22:51'),
(137, 'prepaid', 'DATASMARTUNL1', 'Smartfren Data Unlimited Harian 1 GB Berlaku 7 Hari', 'Batas pemakaian wajar 1GB/hari, Unlimited 24 Jam, Gratis Nelpon ke sesama smartfren, Berlaku 7 hari', NULL, NULL, NULL, 22810, NULL, 'empty', 'SMARTFREN', 'Data', '2023-05-09 14:46:14', '2023-05-09 15:22:51'),
(138, 'prepaid', 'SMARTUNL2', 'Smartfren Data Unlimited Harian 1 GB Berlaku 14 Hari', 'Batas pemakaian wajar 1GB/hari, Unlimited 24 Jam, Gratis Nelpon ke sesama smartfren, Berlaku 14 hari', NULL, NULL, NULL, 42275, NULL, 'available', 'SMARTFREN', 'Data', '2023-05-09 14:46:14', '2023-05-09 15:22:51'),
(139, 'prepaid', 'DATASMARTUNL3', 'Smartfren Data Unlimited Harian 500 MB Berlaku 28 Hari', 'Batas pemakaian wajar 500MB/hari, Unlimited 24 Jam, Gratis Nelpon ke sesama smartfren, Berlaku 28 hari', NULL, NULL, NULL, 63500, NULL, 'empty', 'SMARTFREN', 'Data', '2023-05-09 14:46:14', '2023-05-09 15:22:51'),
(140, 'prepaid', 'SMARTUNL4', 'Smartfren Data Unlimited Harian 2 GB Berlaku 28 Hari', 'Batas pemakaian wajar 2GB/hari, Unlimited 24 Jam, Gratis Nelpon ke sesama smartfren, Berlaku 28 hari', NULL, NULL, NULL, 76603, NULL, 'available', 'SMARTFREN', 'Data', '2023-05-09 14:46:14', '2023-05-09 15:22:51'),
(141, 'prepaid', 'DATASMARTNS1', 'Smartfren Kuota Nonstop 30.000', '6 GB 24 jam Nonstop, Kecepatan setelah kuota habis 256Kbps aktif selama 28 hari', NULL, NULL, NULL, 32325, NULL, 'available', 'SMARTFREN', 'Data', '2023-05-09 14:46:14', '2023-05-09 15:22:51'),
(142, 'prepaid', 'DATASMARTNS2', 'Smartfren Kuota Nonstop 45.000', '10 GB 24 jam Nonstop, Tambahan 4 GB (1 GB setiap minggu), Kecepatan setelah kuota habis 256Kbps aktif selama 28 hari', NULL, NULL, NULL, 47630, NULL, 'available', 'SMARTFREN', 'Data', '2023-05-09 14:46:14', '2023-05-09 15:22:51'),
(143, 'prepaid', 'DATASMARTNS3', 'Smartfren Kuota Nonstop 65.000', '18 GB 24 jam Nonstop, Tambahan 8 GB (2 GB setiap minggu), Kecepatan setelah kuota habis 256Kbps aktif selama 28 hari', NULL, NULL, NULL, 65795, NULL, 'available', 'SMARTFREN', 'Data', '2023-05-09 14:46:14', '2023-05-09 15:22:51'),
(144, 'prepaid', 'DATAXLHOT2', 'XL HOTROD 2 GB / 7 Hari', '-', NULL, NULL, NULL, 16500, NULL, 'empty', 'XL', 'Data', '2023-05-09 14:46:14', '2023-05-09 15:22:51'),
(145, 'prepaid', 'DATAXLHOT3', 'XL HOTROD 3 GB / 7 Hari', '-', NULL, NULL, NULL, 22550, NULL, 'empty', 'XL', 'Data', '2023-05-09 14:46:15', '2023-05-09 15:22:51'),
(146, 'prepaid', 'DATAXLHOT4', 'XL HOTROD 5 GB / 7 Hari', '-', NULL, NULL, NULL, 26000, NULL, 'empty', 'XL', 'Data', '2023-05-09 14:46:15', '2023-05-09 15:22:51'),
(147, 'prepaid', 'DATAXLFLEXS', 'XL Xtra Combo Flex S', '1.5 GB utama, tambahan kuota lokal, 5 menit semua op, 30 Hari', NULL, NULL, NULL, 15395, NULL, 'available', 'XL', 'Data', '2023-05-09 14:46:15', '2023-05-09 15:22:51'),
(148, 'prepaid', 'DATAXLFLEXM', 'XL Xtra Combo Flex M', '4 GB utama, tambahan kuota lokal, 5 menit semua op, 30 Hari', NULL, NULL, NULL, 35425, NULL, 'available', 'XL', 'Data', '2023-05-09 14:46:15', '2023-05-09 15:22:51'),
(149, 'prepaid', 'DATAXLFLEXL', 'XL Xtra Combo Flex L', '9 GB utama, tambahan kuota lokal, 5 menit semua op, 30 Hari', NULL, NULL, NULL, 53725, NULL, 'available', 'XL', 'Data', '2023-05-09 14:46:15', '2023-05-09 15:22:51'),
(150, 'prepaid', 'DATAXLFLEXSXL', 'XL Xtra Combo Flex XL', '15 GB utama, tambahan kuota lokal, 5 menit semua op, 30 Hari', NULL, NULL, NULL, 75625, NULL, 'available', 'XL', 'Data', '2023-05-09 14:46:15', '2023-05-09 15:22:52'),
(151, 'prepaid', 'DATAXLHOT1', 'XL HOTROD 1 GB / 7 Hari', '-', NULL, NULL, NULL, 9600, NULL, 'empty', 'XL', 'Data', '2023-05-09 14:46:15', '2023-05-09 15:22:52'),
(152, 'prepaid', 'DML5', 'MOBILELEGEND - 5 Diamond', 'no pelanggan = gabungan antara user_id dan zone_id', NULL, NULL, NULL, 1515, NULL, 'available', 'MOBILE LEGENDS', 'Games', '2023-05-09 14:46:15', '2023-05-09 15:22:52'),
(153, 'prepaid', 'DML12', 'MOBILELEGEND - 12 Diamond', 'no pelanggan = gabungan antara user_id dan zone_id', NULL, NULL, NULL, 3500, NULL, 'available', 'MOBILE LEGENDS', 'Games', '2023-05-09 14:46:15', '2023-05-09 15:22:52'),
(154, 'prepaid', 'DML19', 'MOBILELEGEND - 19 Diamond', 'no pelanggan = gabungan antara user_id dan zone_id', NULL, NULL, NULL, 5290, NULL, 'available', 'MOBILE LEGENDS', 'Games', '2023-05-09 14:46:15', '2023-05-09 15:22:52'),
(155, 'prepaid', 'DML28', 'MOBILELEGEND - 28 Diamond', 'no pelanggan = gabungan antara user_id dan zone_id', NULL, NULL, NULL, 6700, NULL, 'available', 'MOBILE LEGENDS', 'Games', '2023-05-09 14:46:15', '2023-05-09 15:22:52'),
(156, 'prepaid', 'DML36', 'MOBILELEGEND - 36 Diamond', 'no pelanggan = gabungan antara user_id dan zone_id', NULL, NULL, NULL, 10450, NULL, 'available', 'MOBILE LEGENDS', 'Games', '2023-05-09 14:46:15', '2023-05-09 15:22:52'),
(157, 'prepaid', 'DML42', 'MOBILELEGEND - 42 Diamond', 'no pelanggan = gabungan antara user_id dan zone_id', NULL, NULL, NULL, 9455, NULL, 'available', 'MOBILE LEGENDS', 'Games', '2023-05-09 14:46:15', '2023-05-09 15:22:52'),
(158, 'prepaid', 'DML59', 'MOBILELEGEND - 59 Diamond', 'no pelanggan = gabungan antara user_id dan zone_id', NULL, NULL, NULL, 15000, NULL, 'available', 'MOBILE LEGENDS', 'Games', '2023-05-09 14:46:15', '2023-05-09 15:22:52'),
(159, 'prepaid', 'DML74', 'MOBILELEGEND - 74 Diamond', 'no pelanggan = gabungan antara user_id dan zone_id', NULL, NULL, NULL, 19075, NULL, 'available', 'MOBILE LEGENDS', 'Games', '2023-05-09 14:46:15', '2023-05-09 15:22:53'),
(160, 'prepaid', 'DML85', 'MOBILELEGEND - 85 Diamond', 'no pelanggan = gabungan antara user_id dan zone_id', NULL, NULL, NULL, 18825, NULL, 'available', 'MOBILE LEGENDS', 'Games', '2023-05-09 14:46:15', '2023-05-09 15:22:53'),
(161, 'prepaid', 'DML170', 'MOBILELEGEND - 170 Diamond', 'no pelanggan = gabungan antara user_id dan zone_id', NULL, NULL, NULL, 38475, NULL, 'available', 'MOBILE LEGENDS', 'Games', '2023-05-09 14:46:15', '2023-05-09 15:22:53'),
(162, 'prepaid', 'DML185', 'MOBILELEGEND - 185 Diamond', 'no pelanggan = gabungan antara user_id dan zone_id', NULL, NULL, NULL, 45150, NULL, 'available', 'MOBILE LEGENDS', 'Games', '2023-05-09 14:46:15', '2023-05-09 15:22:53'),
(163, 'prepaid', 'DML222', 'MOBILELEGEND - 222 Diamond', 'no pelanggan = gabungan antara user_id dan zone_id', NULL, NULL, NULL, 56000, NULL, 'available', 'MOBILE LEGENDS', 'Games', '2023-05-09 14:46:15', '2023-05-09 15:22:53'),
(164, 'prepaid', 'DFF5', 'Free Fire 5 Diamond', 'Free Fire 5 Diamond', NULL, NULL, NULL, 835, NULL, 'available', 'FREE FIRE', 'Games', '2023-05-09 14:46:15', '2023-05-09 15:22:53'),
(165, 'prepaid', 'DFF10', 'Free Fire 10 Diamond', 'Free Fire 10 Diamond', NULL, NULL, NULL, 1665, NULL, 'available', 'FREE FIRE', 'Games', '2023-05-09 14:46:16', '2023-05-09 15:22:53'),
(166, 'prepaid', 'DFF12', 'Free Fire 12 Diamond', 'Free Fire 12 Diamond', NULL, NULL, NULL, 1855, NULL, 'available', 'FREE FIRE', 'Games', '2023-05-09 14:46:16', '2023-05-09 15:22:53'),
(167, 'prepaid', 'DFF20', 'Free Fire 20 Diamond', 'Free Fire 20 Diamond', NULL, NULL, NULL, 3750, NULL, 'available', 'FREE FIRE', 'Games', '2023-05-09 14:46:16', '2023-05-09 15:22:53'),
(168, 'prepaid', 'DFF30', 'Free Fire 30 Diamond', 'Free Fire 30 Diamond', NULL, NULL, NULL, 5022, NULL, 'empty', 'FREE FIRE', 'Games', '2023-05-09 14:46:16', '2023-05-09 15:22:53'),
(169, 'prepaid', 'DFF40', 'Free Fire 40 Diamond', 'Free Fire 40 Diamond', NULL, NULL, NULL, 5486, NULL, 'available', 'FREE FIRE', 'Games', '2023-05-09 14:46:16', '2023-05-09 15:22:53'),
(170, 'prepaid', 'FF7', 'Free Fire 50 Diamond', 'Free Fire 50 Diamond', NULL, NULL, NULL, 6700, NULL, 'available', 'FREE FIRE', 'Games', '2023-05-09 14:46:16', '2023-05-09 15:22:53'),
(171, 'prepaid', 'DFF70', 'Free Fire 70 Diamond', 'Free Fire 70 Diamond', NULL, NULL, NULL, 8900, NULL, 'available', 'FREE FIRE', 'Games', '2023-05-09 14:46:16', '2023-05-09 15:22:53'),
(172, 'prepaid', 'DFF80', 'Free Fire 80 Diamond', 'Free Fire 80 Diamond', NULL, NULL, NULL, 10366, NULL, 'available', 'FREE FIRE', 'Games', '2023-05-09 14:46:16', '2023-05-09 15:22:53'),
(173, 'prepaid', 'DFF90', 'Free Fire 90 Diamond', 'Free Fire 90 Diamond', NULL, NULL, NULL, 11957, NULL, 'available', 'FREE FIRE', 'Games', '2023-05-09 14:46:16', '2023-05-09 15:22:53'),
(174, 'prepaid', 'DFF100', 'Free Fire 100 Diamond', 'Free Fire 100 Diamond', NULL, NULL, NULL, 14010, NULL, 'available', 'FREE FIRE', 'Games', '2023-05-09 14:46:16', '2023-05-09 15:22:53'),
(175, 'prepaid', 'DFF120', 'Free Fire 120 Diamond', 'Free Fire 120 Diamond', NULL, NULL, NULL, 15139, NULL, 'available', 'FREE FIRE', 'Games', '2023-05-09 14:46:16', '2023-05-09 15:22:54'),
(176, 'prepaid', 'DFF140', 'Free Fire 140 Diamond', 'Free Fire 140 Diamond', NULL, NULL, NULL, 18178, NULL, 'available', 'FREE FIRE', 'Games', '2023-05-09 14:46:16', '2023-05-09 15:22:54'),
(177, 'prepaid', 'DFF190', 'Free Fire 190 Diamond', 'Free Fire 190 Diamond', NULL, NULL, NULL, 25645, NULL, 'available', 'FREE FIRE', 'Games', '2023-05-09 14:46:16', '2023-05-09 15:22:54'),
(178, 'prepaid', 'DFF250', 'Free Fire 250 Diamond', 'Free Fire 250 Diamond', NULL, NULL, NULL, 32911, NULL, 'available', 'FREE FIRE', 'Games', '2023-05-09 14:46:16', '2023-05-09 15:22:54'),
(179, 'prepaid', 'DFF355', 'Free Fire 355 Diamond', 'Free Fire 355 Diamond', NULL, NULL, NULL, 45125, NULL, 'available', 'FREE FIRE', 'Games', '2023-05-09 14:46:16', '2023-05-09 15:22:54'),
(180, 'prepaid', 'VDTSEL1', 'Voucher Telkomsel 1.5 GB / 3 Hari (Jawa Barat)', 'Voucher Telkomsel Jawa Barat 1.5 GB / 3 Hari, daftar wilayah cek di https://www.telkomsel.com/en/voucherfisik', NULL, NULL, NULL, 7305, NULL, 'available', 'TELKOMSEL', 'Voucher', '2023-05-09 14:46:16', '2023-05-09 15:22:54'),
(181, 'prepaid', 'VDTSEL2', 'Voucher Telkomsel 2.5 GB / 5 Hari (Jawa Barat)', 'Voucher Telkomsel Jawa Barat 2.5 GB / 5 Hari, daftar wilayah cek di https://www.telkomsel.com/en/voucherfisik', NULL, NULL, NULL, 10550, NULL, 'available', 'TELKOMSEL', 'Voucher', '2023-05-09 14:46:17', '2023-05-09 15:22:54'),
(182, 'prepaid', 'VDTSEL3', 'Voucher Telkomsel 4.5 GB / 5 Hari (Jawa Barat)', 'Voucher Telkomsel Jawa Barat 4.5 GB / 5 Hari, daftar wilayah cek di https://www.telkomsel.com/en/voucherfisik', NULL, NULL, NULL, 18720, NULL, 'empty', 'TELKOMSEL', 'Voucher', '2023-05-09 14:46:17', '2023-05-09 15:22:54'),
(183, 'prepaid', 'VDTSEL4', 'Voucher Telkomsel 5.5 GB / 5 Hari (Jawa Barat)', 'Voucher Telkomsel Jawa Barat 5.5 GB / 5 Hari, daftar wilayah cek di https://www.telkomsel.com/en/voucherfisik', NULL, NULL, NULL, 13000, NULL, 'empty', 'TELKOMSEL', 'Voucher', '2023-05-09 14:46:17', '2023-05-09 15:22:54'),
(184, 'prepaid', 'VDTSEL6', 'Voucher Telkomsel 4 GB / 30 Hari (Jawa Barat)', 'Voucher Telkomsel Jawa Barat 4 GB / 30 Hari, daftar wilayah cek di https://www.telkomsel.com/en/voucherfisik', NULL, NULL, NULL, 30900, NULL, 'empty', 'TELKOMSEL', 'Voucher', '2023-05-09 14:46:17', '2023-05-09 15:22:54'),
(185, 'prepaid', 'VDTSEL7', 'Voucher Telkomsel 10 GB / 30 Hari (Jawa Barat)', 'Voucher Telkomsel Jawa Barat 10 GB / 30 Hari, daftar wilayah cek di https://www.telkomsel.com/en/voucherfisik', NULL, NULL, NULL, 60500, NULL, 'empty', 'TELKOMSEL', 'Voucher', '2023-05-09 14:46:17', '2023-05-09 15:22:55'),
(186, 'prepaid', 'VDTSEL8', 'Voucher Telkomsel 14 GB / 30 Hari (Jawa Barat)', 'Voucher Telkomsel Jawa Barat 14 GB / 30 Hari, daftar wilayah cek di https://www.telkomsel.com/en/voucherfisik', NULL, NULL, NULL, 75770, NULL, 'available', 'TELKOMSEL', 'Voucher', '2023-05-09 14:46:17', '2023-05-09 15:22:55'),
(187, 'prepaid', 'VDINDHARI1', 'Voucher Indosat Freedom Kuota Harian 7 GB / 7 Hari', 'kuota 1GB/Hari', NULL, NULL, NULL, 24210, NULL, 'empty', 'INDOSAT', 'Voucher', '2023-05-09 14:46:17', '2023-05-09 15:22:55'),
(188, 'prepaid', 'VDINDHARI2', 'Voucher Indosat Freedom Kuota Harian 14 GB / 14 Hari', 'Kuota 1GB/Hari', NULL, NULL, NULL, 50999, NULL, 'available', 'INDOSAT', 'Voucher', '2023-05-09 14:46:17', '2023-05-09 15:22:55'),
(189, 'prepaid', 'VDINDHARI3', 'Voucher Indosat Freedom Kuota Harian 28 GB / 28 Hari', 'kuota 1GB/Hari', NULL, NULL, NULL, 88200, NULL, 'available', 'INDOSAT', 'Voucher', '2023-05-09 14:46:17', '2023-05-09 15:22:55'),
(190, 'prepaid', 'VDINDUL1', 'Voucher Indosat Freedom U 1 GB + 4.5 GB Apps / 30 Hari', 'cek di https://www.indosatooredoo.com/portal/id/psfreedomu', NULL, NULL, NULL, 29800, NULL, 'available', 'INDOSAT', 'Voucher', '2023-05-09 14:46:17', '2023-05-09 15:22:55'),
(191, 'prepaid', 'VDINDUL2', 'Voucher Indosat Freedom U 2 GB + 8 GB Apps / 30 Hari', 'cek di https://www.indosatooredoo.com/portal/id/psfreedomu', NULL, NULL, NULL, 49275, NULL, 'available', 'INDOSAT', 'Voucher', '2023-05-09 14:46:17', '2023-05-09 15:22:55'),
(192, 'prepaid', 'VDINDUL3', 'Voucher Indosat Freedom U 3 GB + 17 GB Apps / 30 Hari', 'cek di https://www.indosatooredoo.com/portal/id/psfreedomu', NULL, NULL, NULL, 65875, NULL, 'available', 'INDOSAT', 'Voucher', '2023-05-09 14:46:17', '2023-05-09 15:22:55'),
(193, 'prepaid', 'VDINDUL4', 'Voucher Indosat Freedom U 7 GB + 28 GB Apps / 30 Hari', 'cek di https://www.indosatooredoo.com/portal/id/psfreedomu', NULL, NULL, NULL, 90275, NULL, 'available', 'INDOSAT', 'Voucher', '2023-05-09 14:46:17', '2023-05-09 15:22:55'),
(194, 'prepaid', 'VDAXSMINI1', 'Voucher Axis Data Mini 1 GB / 5 Hari', 'Setelah mendapat SN, ketik *838*kodevoucher# untuk mengaktifkan paket', NULL, NULL, NULL, 9250, NULL, 'available', 'AXIS', 'Voucher', '2023-05-09 14:46:17', '2023-05-09 15:22:55'),
(195, 'prepaid', 'VDAXSMINI2', 'Voucher Axis Data Mini 2 GB / 5 Hari', 'Setelah mendapat SN, ketik *838*kodevoucher# untuk mengaktifkan paket', NULL, NULL, NULL, 12805, NULL, 'available', 'AXIS', 'Voucher', '2023-05-09 14:46:17', '2023-05-09 15:22:55'),
(196, 'prepaid', 'VDAXSMINI3', 'Voucher Axis Data Mini 5 GB / 5 Hari', 'Setelah mendapat SN, ketik *838*kodevoucher# untuk mengaktifkan paket', NULL, NULL, NULL, 19610, NULL, 'available', 'AXIS', 'Voucher', '2023-05-09 14:46:17', '2023-05-09 15:22:55'),
(197, 'prepaid', 'VDAXSMINI4', 'Voucher Axis Data Mini 3 GB / 15 Hari', 'Setelah mendapat SN, ketik *838*kodevoucher# untuk mengaktifkan paket', NULL, NULL, NULL, 22888, NULL, 'available', 'AXIS', 'Voucher', '2023-05-09 14:46:17', '2023-05-09 15:22:55'),
(198, 'prepaid', 'VDAXSMINI5', 'Voucher Axis Data Mini 5 GB / 15 Hari', 'Setelah mendapat SN, ketik *838*kodevoucher# untuk mengaktifkan paket', NULL, NULL, NULL, 33888, NULL, 'available', 'AXIS', 'Voucher', '2023-05-09 14:46:17', '2023-05-09 15:22:55'),
(199, 'prepaid', 'VDSMARTUL1', 'Voucher Smartfren Unlimited Harian 1 GB 7 Hari', 'Voucher Batas pemakaian wajar 1GB/hari, Unlimited 24 Jam, Gratis Nelpon ke sesama smartfren, Berlaku 7 hari', NULL, NULL, NULL, 22999, NULL, 'available', 'SMARTFREN', 'Voucher', '2023-05-09 14:46:17', '2023-05-09 15:22:55'),
(200, 'prepaid', 'VDSMARTUL2', 'Voucher Smartfren Unlimited Harian 500 MB 28 Hari', 'Voucher Batas pemakaian wajar 500MB/hari, Unlimited 24 Jam, Gratis Nelpon ke sesama smartfren, Berlaku 28 hari', NULL, NULL, NULL, 60099, NULL, 'empty', 'SMARTFREN', 'Voucher', '2023-05-09 14:46:18', '2023-05-09 15:22:55'),
(201, 'prepaid', 'VDSMARTUL3', 'Voucher Smartfren Unlimited Harian 2 GB 28 Hari', 'Voucher Batas pemakaian wajar 2GB/hari, Unlimited 24 Jam, Gratis Nelpon ke sesama smartfren, Berlaku 28 hari', NULL, NULL, NULL, 75999, NULL, 'available', 'SMARTFREN', 'Voucher', '2023-05-09 14:46:18', '2023-05-09 15:22:55'),
(202, 'prepaid', 'VDSMARTNS1', 'Voucher Smartfren Kuota Nonstop 30.000', 'Voucher 6 GB 24 jam Nonstop, Kecepatan setelah kuota habis 256Kbps aktif selama 28 hari', NULL, NULL, NULL, 32699, NULL, 'available', 'SMARTFREN', 'Voucher', '2023-05-09 14:46:18', '2023-05-09 15:22:55'),
(203, 'prepaid', 'VDSMARTNS2', 'Voucher Smartfren Kuota Nonstop 45.000', 'Voucher 10 GB 24 jam Nonstop, Tambahan 4 GB (1 GB setiap minggu), Kecepatan setelah kuota habis 256Kbps aktif selama 28 hari', NULL, NULL, NULL, 46650, NULL, 'available', 'SMARTFREN', 'Voucher', '2023-05-09 14:46:18', '2023-05-09 15:22:56'),
(204, 'prepaid', 'VDSMARTNS3', 'Voucher Smartfren Kuota Nonstop 65.000', 'Voucher 18 GB 24 jam Nonstop, Tambahan 8 GB (2 GB setiap minggu), Kecepatan setelah kuota habis 256Kbps aktif selama 28 hari', NULL, NULL, NULL, 68550, NULL, 'available', 'SMARTFREN', 'Voucher', '2023-05-09 14:46:18', '2023-05-09 15:22:56'),
(205, 'prepaid', 'VDTRIMINI1', 'Voucher Tri Mini 1 GB / 3 Hari', 'Voucher Tri Mini 1 GB / 3 Hari, lokal', NULL, NULL, NULL, 6255, NULL, 'available', 'TRI', 'Voucher', '2023-05-09 14:46:18', '2023-05-09 15:22:56'),
(206, 'prepaid', 'VDTRIMINI2', 'Voucher Tri Mini 1 GB / 5 Hari', '1 GB Lokal, 5 Hari', NULL, NULL, NULL, 9500, NULL, 'empty', 'TRI', 'Voucher', '2023-05-09 14:46:18', '2023-05-09 15:22:56'),
(207, 'prepaid', 'VDTRIUNL', 'Voucher Tri 6 GB + Unlimited / 30 Hari', 'Unlimited pada jam 01.00 - 17.00, Claim Voucher dengan cara *111*SN#', NULL, NULL, NULL, 59375, NULL, 'available', 'TRI', 'Voucher', '2023-05-09 14:46:18', '2023-05-09 15:22:56'),
(208, 'prepaid', 'VDTRIAON1', 'Voucher Tri AlwaysOn 1.5 GB', '1 GB Nasional, 500 MB lokal, Mengikuti Masa Aktif Kartu', NULL, NULL, NULL, 15500, NULL, 'available', 'TRI', 'Voucher', '2023-05-09 14:46:18', '2023-05-09 15:22:56'),
(209, 'prepaid', 'VDTRIAON2', 'Voucher Tri AlwaysOn 2 GB', '1.5 GB Nasional,500 MB lokal, Mengikuti Masa Aktif Kartu', NULL, NULL, NULL, 17550, NULL, 'available', 'TRI', 'Voucher', '2023-05-09 14:46:18', '2023-05-09 15:22:56'),
(210, 'prepaid', 'VDTRIAON3', 'Voucher Tri AlwaysOn 3 GB', '2 GB Nasional, 1 GB lokal, Mengikuti Masa Aktif Kartu', NULL, NULL, NULL, 23200, NULL, 'available', 'TRI', 'Voucher', '2023-05-09 14:46:18', '2023-05-09 15:22:56'),
(211, 'prepaid', 'VDTRIAON4', 'Voucher Tri AlwaysOn 6 GB', '5 GB Nasional, 1 GB lokal, Mengikuti Masa Aktif Kartu', NULL, NULL, NULL, 27200, NULL, 'available', 'TRI', 'Voucher', '2023-05-09 14:46:18', '2023-05-09 15:22:56'),
(212, 'prepaid', 'VDXLHOT1', 'Voucher XL Data Hotrod 1 GB / 7 Hari', '-', NULL, NULL, NULL, 12100, NULL, 'available', 'XL', 'Voucher', '2023-05-09 14:46:18', '2023-05-09 15:22:56'),
(213, 'prepaid', 'VDXLHOT2', 'Voucher XL Data Hotrod 2.5 GB / 7 Hari', '-', NULL, NULL, NULL, 11900, NULL, 'available', 'XL', 'Voucher', '2023-05-09 14:46:18', '2023-05-09 15:22:56'),
(214, 'prepaid', 'VDXLHOT3', 'Voucher XL Data Hotrod 3 GB / 7 Hari', '-', NULL, NULL, NULL, 25510, NULL, 'available', 'XL', 'Voucher', '2023-05-09 14:46:18', '2023-05-09 15:22:56'),
(215, 'prepaid', 'VDXLHOT4', 'Voucher XL Data Hotrod 4 GB / 7 Hari', '-', NULL, NULL, NULL, 15510, NULL, 'available', 'XL', 'Voucher', '2023-05-09 14:46:18', '2023-05-09 15:22:57'),
(216, 'prepaid', 'VDXLFLEX1', 'Voucher XL Xtra Combo Flex S', 'Voucher XL Xtra Combo Flex S', NULL, NULL, NULL, 14250, NULL, 'empty', 'XL', 'Voucher', '2023-05-09 14:46:18', '2023-05-09 15:22:57'),
(217, 'prepaid', 'VDXLFLEX2', 'Voucher XL Xtra Combo Flex M', 'Voucher XL Xtra Combo Flex M', NULL, NULL, NULL, 33740, NULL, 'empty', 'XL', 'Voucher', '2023-05-09 14:46:18', '2023-05-09 15:22:57'),
(218, 'prepaid', 'VDXLFLEX3', 'Voucher XL Xtra Combo Flex L', 'Voucher XL Xtra Combo Flex L', NULL, NULL, NULL, 50250, NULL, 'empty', 'XL', 'Voucher', '2023-05-09 14:46:18', '2023-05-09 15:22:57'),
(219, 'prepaid', 'VDXLFLEX4', 'Voucher XL Xtra Combo Flex XL', 'Voucher XL Xtra Combo Flex XL', NULL, NULL, NULL, 74790, NULL, 'empty', 'XL', 'Voucher', '2023-05-09 14:46:18', '2023-05-09 15:22:57'),
(220, 'prepaid', 'DANA15', 'DANA 15.000', '-', NULL, NULL, NULL, 15060, NULL, 'available', 'DANA', 'E-Money', '2023-05-09 14:46:18', '2023-05-09 15:22:57'),
(221, 'prepaid', 'DANA20', 'DANA 20.000', '-', NULL, NULL, NULL, 20150, NULL, 'available', 'DANA', 'E-Money', '2023-05-09 14:46:18', '2023-05-09 15:22:57'),
(222, 'prepaid', 'DANA25', 'DANA 25.000', '-', NULL, NULL, NULL, 25060, NULL, 'available', 'DANA', 'E-Money', '2023-05-09 14:46:18', '2023-05-09 15:22:57'),
(223, 'prepaid', 'DANA30', 'DANA 30.000', '-', NULL, NULL, NULL, 30075, NULL, 'available', 'DANA', 'E-Money', '2023-05-09 14:46:18', '2023-05-09 15:22:57'),
(224, 'prepaid', 'DANA35', 'DANA 35.000', '-', NULL, NULL, NULL, 35075, NULL, 'available', 'DANA', 'E-Money', '2023-05-09 14:46:18', '2023-05-09 15:22:57'),
(225, 'prepaid', 'DANA40', 'DANA 40.000', '-', NULL, NULL, NULL, 40075, NULL, 'available', 'DANA', 'E-Money', '2023-05-09 14:46:18', '2023-05-09 15:22:57'),
(226, 'prepaid', 'DANA45', 'DANA 45.000', '-', NULL, NULL, NULL, 45110, NULL, 'available', 'DANA', 'E-Money', '2023-05-09 14:46:19', '2023-05-09 15:22:57'),
(227, 'prepaid', 'DANA50', 'DANA 50.000', '-', NULL, NULL, NULL, 50150, NULL, 'available', 'DANA', 'E-Money', '2023-05-09 14:46:19', '2023-05-09 15:22:57'),
(228, 'prepaid', 'DANA55', 'DANA 55.000', '-', NULL, NULL, NULL, 55075, NULL, 'available', 'DANA', 'E-Money', '2023-05-09 14:46:19', '2023-05-09 15:22:57'),
(229, 'prepaid', 'DANA60', 'DANA 60.000', '-', NULL, NULL, NULL, 60075, NULL, 'available', 'DANA', 'E-Money', '2023-05-09 14:46:19', '2023-05-09 15:22:57');
INSERT INTO `srv` (`id`, `type`, `code`, `name`, `note`, `min`, `max`, `refil`, `price`, `price_sale`, `status`, `brand`, `category`, `createdAt`, `updatedAt`) VALUES
(230, 'prepaid', 'DANA65', 'DANA 65.000', '-', NULL, NULL, NULL, 65075, NULL, 'available', 'DANA', 'E-Money', '2023-05-09 14:46:19', '2023-05-09 15:22:58'),
(231, 'prepaid', 'DANA70', 'DANA 70.000', '-', NULL, NULL, NULL, 70075, NULL, 'available', 'DANA', 'E-Money', '2023-05-09 14:46:19', '2023-05-09 15:22:58'),
(232, 'prepaid', 'DANA75', 'DANA 75.000', '-', NULL, NULL, NULL, 75110, NULL, 'available', 'DANA', 'E-Money', '2023-05-09 14:46:19', '2023-05-09 15:22:58'),
(233, 'prepaid', 'DANA80', 'DANA 80.000', '-', NULL, NULL, NULL, 80075, NULL, 'available', 'DANA', 'E-Money', '2023-05-09 14:46:19', '2023-05-09 15:22:58'),
(234, 'prepaid', 'DANA85', 'DANA 85.000', '-', NULL, NULL, NULL, 85075, NULL, 'available', 'DANA', 'E-Money', '2023-05-09 14:46:19', '2023-05-09 15:22:58'),
(235, 'prepaid', 'DANA90', 'DANA 90.000', '-', NULL, NULL, NULL, 90110, NULL, 'available', 'DANA', 'E-Money', '2023-05-09 14:46:19', '2023-05-09 15:22:58'),
(236, 'prepaid', 'DANA95', 'DANA 95.000', '--', NULL, NULL, NULL, 95075, NULL, 'available', 'DANA', 'E-Money', '2023-05-09 14:46:19', '2023-05-09 15:22:58'),
(237, 'prepaid', 'DANA100', 'DANA 100.000', '-', NULL, NULL, NULL, 100110, NULL, 'available', 'DANA', 'E-Money', '2023-05-09 14:46:19', '2023-05-09 15:22:58'),
(238, 'prepaid', 'DANA125', 'DANA 125.000', '-', NULL, NULL, NULL, 125150, NULL, 'empty', 'DANA', 'E-Money', '2023-05-09 14:46:19', '2023-05-09 15:22:58'),
(239, 'prepaid', 'DANA150', 'DANA 150.000', '-', NULL, NULL, NULL, 150075, NULL, 'available', 'DANA', 'E-Money', '2023-05-09 14:46:19', '2023-05-09 15:22:58'),
(240, 'prepaid', 'DANA200', 'DANA 200.000', '-', NULL, NULL, NULL, 200150, NULL, 'available', 'DANA', 'E-Money', '2023-05-09 14:46:19', '2023-05-09 15:22:58'),
(241, 'prepaid', 'OVO10', 'OVO 10.000', 'OVO 10.000', NULL, NULL, NULL, 10475, NULL, 'available', 'OVO', 'E-Money', '2023-05-09 14:46:19', '2023-05-09 15:22:58'),
(242, 'prepaid', 'OVO15', 'OVO 15.000', 'OVO 15.000', NULL, NULL, NULL, 15480, NULL, 'available', 'OVO', 'E-Money', '2023-05-09 14:46:19', '2023-05-09 15:22:59'),
(243, 'prepaid', 'OVO20', 'OVO 20.000', 'OVO 20.000', NULL, NULL, NULL, 20480, NULL, 'available', 'OVO', 'E-Money', '2023-05-09 14:46:20', '2023-05-09 15:22:59'),
(244, 'prepaid', 'OVO25', 'OVO 25.000', 'OVO 25.000', NULL, NULL, NULL, 25480, NULL, 'available', 'OVO', 'E-Money', '2023-05-09 14:46:20', '2023-05-09 15:22:59'),
(245, 'prepaid', 'OVO30', 'OVO 30.000', 'OVO 30.000', NULL, NULL, NULL, 30495, NULL, 'available', 'OVO', 'E-Money', '2023-05-09 14:46:20', '2023-05-09 15:22:59'),
(246, 'prepaid', 'OVO35', 'OVO 35.000', 'OVO 35.000', NULL, NULL, NULL, 35495, NULL, 'available', 'OVO', 'E-Money', '2023-05-09 14:46:20', '2023-05-09 15:22:59'),
(247, 'prepaid', 'OVO40', 'OVO 40.000', 'OVO 40.000', NULL, NULL, NULL, 40495, NULL, 'available', 'OVO', 'E-Money', '2023-05-09 14:46:20', '2023-05-09 15:22:59'),
(248, 'prepaid', 'OVO45', 'OVO 45.000', 'OVO 45.000', NULL, NULL, NULL, 45495, NULL, 'available', 'OVO', 'E-Money', '2023-05-09 14:46:20', '2023-05-09 15:22:59'),
(249, 'prepaid', 'OVO50', 'OVO 50.000', 'OVO 50.000', NULL, NULL, NULL, 50495, NULL, 'available', 'OVO', 'E-Money', '2023-05-09 14:46:20', '2023-05-09 15:22:59'),
(250, 'prepaid', 'OVO55', 'OVO 55.000', 'OVO 55.000', NULL, NULL, NULL, 55495, NULL, 'available', 'OVO', 'E-Money', '2023-05-09 14:46:20', '2023-05-09 15:22:59'),
(251, 'prepaid', 'OVO60', 'OVO 60.000', 'OVO 60.000', NULL, NULL, NULL, 60495, NULL, 'available', 'OVO', 'E-Money', '2023-05-09 14:46:20', '2023-05-09 15:22:59'),
(252, 'prepaid', 'OVO65', 'OVO 65.000', 'OVO 65.000', NULL, NULL, NULL, 65495, NULL, 'available', 'OVO', 'E-Money', '2023-05-09 14:46:20', '2023-05-09 15:22:59'),
(253, 'prepaid', 'OVO70', 'OVO 70.000', 'OVO 70.000', NULL, NULL, NULL, 70495, NULL, 'available', 'OVO', 'E-Money', '2023-05-09 14:46:20', '2023-05-09 15:22:59'),
(254, 'prepaid', 'OVO75', 'OVO 75.000', 'OVO 75.000', NULL, NULL, NULL, 75495, NULL, 'available', 'OVO', 'E-Money', '2023-05-09 14:46:20', '2023-05-09 15:22:59'),
(255, 'prepaid', 'OVO80', 'OVO 80.000', 'OVO 80.000', NULL, NULL, NULL, 80495, NULL, 'available', 'OVO', 'E-Money', '2023-05-09 14:46:20', '2023-05-09 15:22:59'),
(256, 'prepaid', 'OVO85', 'OVO 85.000', 'OVO 85.000', NULL, NULL, NULL, 85495, NULL, 'available', 'OVO', 'E-Money', '2023-05-09 14:46:20', '2023-05-09 15:22:59'),
(257, 'prepaid', 'OVO90', 'OVO 90.000', 'OVO 90.000', NULL, NULL, NULL, 90495, NULL, 'available', 'OVO', 'E-Money', '2023-05-09 14:46:20', '2023-05-09 15:23:00'),
(258, 'prepaid', 'OVO95', 'OVO 95.000', 'OVO 95.000', NULL, NULL, NULL, 95495, NULL, 'available', 'OVO', 'E-Money', '2023-05-09 14:46:20', '2023-05-09 15:23:00'),
(259, 'prepaid', 'OVO100', 'OVO 100.000', 'OVO 100.000', NULL, NULL, NULL, 100495, NULL, 'available', 'OVO', 'E-Money', '2023-05-09 14:46:20', '2023-05-09 15:23:00'),
(260, 'prepaid', 'OVO125', 'OVO 125.000', 'OVO 125.000', NULL, NULL, NULL, 125150, NULL, 'empty', 'OVO', 'E-Money', '2023-05-09 14:46:20', '2023-05-09 15:23:00'),
(261, 'prepaid', 'OVO150', 'OVO 150.000', 'OVO 150.000', NULL, NULL, NULL, 150150, NULL, 'empty', 'OVO', 'E-Money', '2023-05-09 14:46:20', '2023-05-09 15:23:00'),
(262, 'prepaid', 'GOPAYCUST10', 'Go Pay 10.000', 'Masukan no HP', NULL, NULL, NULL, 10280, NULL, 'available', 'GO PAY', 'E-Money', '2023-05-09 14:46:20', '2023-05-09 15:23:00'),
(263, 'prepaid', 'GOPAYCUST15', 'Go Pay 15.000', 'Masukan no HP', NULL, NULL, NULL, 15900, NULL, 'available', 'GO PAY', 'E-Money', '2023-05-09 14:46:20', '2023-05-09 15:23:00'),
(264, 'prepaid', 'GOPAYCUST20', 'Go Pay 20.000', 'Masukan no HP', NULL, NULL, NULL, 20900, NULL, 'available', 'GO PAY', 'E-Money', '2023-05-09 14:46:20', '2023-05-09 15:23:00'),
(265, 'prepaid', 'GOPAYCUST25', 'Go Pay 25.000', 'Masukan no HP', NULL, NULL, NULL, 25235, NULL, 'available', 'GO PAY', 'E-Money', '2023-05-09 14:46:20', '2023-05-09 15:23:00'),
(266, 'prepaid', 'GOPAYCUST30', 'Go Pay 30.000', 'Masukan no HP', NULL, NULL, NULL, 30250, NULL, 'available', 'GO PAY', 'E-Money', '2023-05-09 14:46:20', '2023-05-09 15:23:00'),
(267, 'prepaid', 'GOPAYCUST35', 'Go Pay 35.000', 'Masukan no HP', NULL, NULL, NULL, 35250, NULL, 'available', 'GO PAY', 'E-Money', '2023-05-09 14:46:20', '2023-05-09 15:23:00'),
(268, 'prepaid', 'GOPAYCUST40', 'Go Pay 40.000', 'Masukan no HP', NULL, NULL, NULL, 40250, NULL, 'available', 'GO PAY', 'E-Money', '2023-05-09 14:46:20', '2023-05-09 15:23:00'),
(269, 'prepaid', 'GOPAYCUST45', 'Go Pay 45.000', 'Masukan no HP', NULL, NULL, NULL, 45250, NULL, 'available', 'GO PAY', 'E-Money', '2023-05-09 14:46:21', '2023-05-09 15:23:00'),
(270, 'prepaid', 'GOPAYCUST50', 'Go Pay 50.000', 'Masukan no HP', NULL, NULL, NULL, 50250, NULL, 'available', 'GO PAY', 'E-Money', '2023-05-09 14:46:21', '2023-05-09 15:23:00'),
(271, 'prepaid', 'GOPAYCUST55', 'Go Pay 55.000', 'Masukan no HP', NULL, NULL, NULL, 55275, NULL, 'available', 'GO PAY', 'E-Money', '2023-05-09 14:46:21', '2023-05-09 15:23:00'),
(272, 'prepaid', 'GOPAYCUST60', 'Go Pay 60.000', 'Masukkan no HP', NULL, NULL, NULL, 60275, NULL, 'available', 'GO PAY', 'E-Money', '2023-05-09 14:46:21', '2023-05-09 15:23:00'),
(273, 'prepaid', 'GOPAYCUST65', 'Go Pay 65.000', 'Masukkan no HP', NULL, NULL, NULL, 65275, NULL, 'available', 'GO PAY', 'E-Money', '2023-05-09 14:46:21', '2023-05-09 15:23:01'),
(274, 'prepaid', 'GOPAYCUST70', 'Go Pay 70.000', 'Masukan no HP', NULL, NULL, NULL, 70285, NULL, 'empty', 'GO PAY', 'E-Money', '2023-05-09 14:46:21', '2023-05-09 15:23:01'),
(275, 'prepaid', 'GOPAYCUST75', 'Go Pay 75.000', 'Masukan no HP', NULL, NULL, NULL, 75285, NULL, 'empty', 'GO PAY', 'E-Money', '2023-05-09 14:46:21', '2023-05-09 15:23:01'),
(276, 'prepaid', 'GOPAYCUST80', 'Go Pay 80.000', 'Masukkan no HP', NULL, NULL, NULL, 80285, NULL, 'empty', 'GO PAY', 'E-Money', '2023-05-09 14:46:21', '2023-05-09 15:23:01'),
(277, 'prepaid', 'GOPAYCUST85', 'Go Pay 85.000', 'Masukkan no HP', NULL, NULL, NULL, 85325, NULL, 'empty', 'GO PAY', 'E-Money', '2023-05-09 14:46:21', '2023-05-09 15:23:01'),
(278, 'prepaid', 'GOPAYCUST90', 'Go Pay 90.000', 'Masukkan no HP', NULL, NULL, NULL, 90385, NULL, 'empty', 'GO PAY', 'E-Money', '2023-05-09 14:46:21', '2023-05-09 15:23:01'),
(279, 'prepaid', 'GOPAYCUST95', 'Go Pay 95.000', 'Masukkan no HP', NULL, NULL, NULL, 95325, NULL, 'empty', 'GO PAY', 'E-Money', '2023-05-09 14:46:21', '2023-05-09 15:23:01'),
(280, 'prepaid', 'GOPAYCUST100', 'Go Pay 100.000', 'Masukan no HP', NULL, NULL, NULL, 100325, NULL, 'empty', 'GO PAY', 'E-Money', '2023-05-09 14:46:21', '2023-05-09 15:23:01'),
(281, 'prepaid', 'GODRIVE10', 'Go Pay Driver 10.000', 'KHUSUS DRIVER - Masukan no HP', NULL, NULL, NULL, 10055, NULL, 'empty', 'GO PAY', 'E-Money', '2023-05-09 14:46:21', '2023-05-09 15:23:01'),
(282, 'prepaid', 'GODRIVE15', 'Go Pay Driver 15.000', 'KHUSUS DRIVER - Masukan no HP', NULL, NULL, NULL, 15060, NULL, 'empty', 'GO PAY', 'E-Money', '2023-05-09 14:46:21', '2023-05-09 15:23:01'),
(283, 'prepaid', 'GODRIVE20', 'Go Pay Driver 20.000', 'KHUSUS DRIVER - Masukan no HP', NULL, NULL, NULL, 20060, NULL, 'empty', 'GO PAY', 'E-Money', '2023-05-09 14:46:21', '2023-05-09 15:23:01'),
(284, 'prepaid', 'GODRIVE25', 'Go Pay Driver 25.000', 'KHUSUS DRIVER - Masukan no HP', NULL, NULL, NULL, 25060, NULL, 'empty', 'GO PAY', 'E-Money', '2023-05-09 14:46:21', '2023-05-09 15:23:01'),
(285, 'prepaid', 'GODRIVE30', 'Go Pay Driver 30.000', 'KHUSUS DRIVER - Masukan no HP', NULL, NULL, NULL, 30100, NULL, 'empty', 'GO PAY', 'E-Money', '2023-05-09 14:46:21', '2023-05-09 15:23:01'),
(286, 'prepaid', 'GODRIVE35', 'Go Pay Driver 35.000', 'KHUSUS DRIVER - Masukan no HP', NULL, NULL, NULL, 35100, NULL, 'empty', 'GO PAY', 'E-Money', '2023-05-09 14:46:21', '2023-05-09 15:23:01'),
(287, 'prepaid', 'GODRIVE40', 'Go Pay Driver 40.000', 'KHUSUS DRIVER - Masukan no HP', NULL, NULL, NULL, 40100, NULL, 'empty', 'GO PAY', 'E-Money', '2023-05-09 14:46:22', '2023-05-09 15:23:01'),
(288, 'prepaid', 'GODRIVE45', 'Go Pay Driver 45.000', 'KHUSUS DRIVER - Masukan no HP', NULL, NULL, NULL, 45100, NULL, 'empty', 'GO PAY', 'E-Money', '2023-05-09 14:46:22', '2023-05-09 15:23:02'),
(289, 'prepaid', 'GODRIVE50', 'Go Pay Driver 50.000', 'KHUSUS DRIVER - Masukan no HP', NULL, NULL, NULL, 50100, NULL, 'empty', 'GO PAY', 'E-Money', '2023-05-09 14:46:22', '2023-05-09 15:23:02'),
(290, 'prepaid', 'GODRIVE55', 'Go Pay Driver 55.000', 'KHUSUS DRIVER - Masukan no HP', NULL, NULL, NULL, 55300, NULL, 'available', 'GO PAY', 'E-Money', '2023-05-09 14:46:22', '2023-05-09 15:23:02'),
(291, 'prepaid', 'GODRIVE60', 'Go Pay Driver 60.000', 'KHUSUS DRIVER - Masukan no HP', NULL, NULL, NULL, 60300, NULL, 'available', 'GO PAY', 'E-Money', '2023-05-09 14:46:22', '2023-05-09 15:23:02'),
(292, 'prepaid', 'GODRIVE65', 'Go Pay Driver 65.000', 'KHUSUS DRIVER - Masukan no HP', NULL, NULL, NULL, 65200, NULL, 'available', 'GO PAY', 'E-Money', '2023-05-09 14:46:22', '2023-05-09 15:23:02'),
(293, 'prepaid', 'GODRIVE70', 'Go Pay Driver 70.000', 'KHUSUS DRIVER - Masukan no HP', NULL, NULL, NULL, 70300, NULL, 'available', 'GO PAY', 'E-Money', '2023-05-09 14:46:22', '2023-05-09 15:23:02'),
(294, 'prepaid', 'GODRIVE75', 'Go Pay Driver 75.000', 'KHUSUS DRIVER - Masukan no HP', NULL, NULL, NULL, 75300, NULL, 'available', 'GO PAY', 'E-Money', '2023-05-09 14:46:22', '2023-05-09 15:23:02'),
(295, 'prepaid', 'GODRIVE80', 'Go Pay Driver 80.000', 'KHUSUS DRIVER - Masukan no HP', NULL, NULL, NULL, 80300, NULL, 'available', 'GO PAY', 'E-Money', '2023-05-09 14:46:22', '2023-05-09 15:23:02'),
(296, 'prepaid', 'GODRIVE85', 'Go Pay Driver 85.000', 'KHUSUS DRIVER - Masukan no HP', NULL, NULL, NULL, 85300, NULL, 'available', 'GO PAY', 'E-Money', '2023-05-09 14:46:22', '2023-05-09 15:23:02'),
(297, 'prepaid', 'GODRIVE90', 'Go Pay Driver 90.000', 'KHUSUS DRIVER - Masukan no HP', NULL, NULL, NULL, 90200, NULL, 'available', 'GO PAY', 'E-Money', '2023-05-09 14:46:22', '2023-05-09 15:23:03'),
(298, 'prepaid', 'GODRIVE95', 'Go Pay Driver 95.000', 'KHUSUS DRIVER - Masukan no HP', NULL, NULL, NULL, 95300, NULL, 'available', 'GO PAY', 'E-Money', '2023-05-09 14:46:22', '2023-05-09 15:23:03'),
(299, 'prepaid', 'LINKAJA10', 'LinkAja Rp 10.000', '-', NULL, NULL, NULL, 10050, NULL, 'empty', 'LinkAja', 'E-Money', '2023-05-09 14:46:22', '2023-05-09 15:23:03'),
(300, 'prepaid', 'LINKAJA15', 'LinkAja Rp 15.000', '-', NULL, NULL, NULL, 15325, NULL, 'available', 'LinkAja', 'E-Money', '2023-05-09 14:46:22', '2023-05-09 15:23:03'),
(301, 'prepaid', 'LINKAJA20', 'LinkAja Rp 20.000', '-', NULL, NULL, NULL, 20325, NULL, 'available', 'LinkAja', 'E-Money', '2023-05-09 14:46:22', '2023-05-09 15:23:03'),
(302, 'prepaid', 'LINKAJA25', 'LinkAja Rp 25.000', '-', NULL, NULL, NULL, 25325, NULL, 'available', 'LinkAja', 'E-Money', '2023-05-09 14:46:22', '2023-05-09 15:23:03'),
(303, 'prepaid', 'LINKAJA30', 'LinkAja Rp 30.000', '-', NULL, NULL, NULL, 30325, NULL, 'available', 'LinkAja', 'E-Money', '2023-05-09 14:46:22', '2023-05-09 15:23:03'),
(304, 'prepaid', 'LINKAJA35', 'LinkAja Rp 35.000', '-', NULL, NULL, NULL, 35325, NULL, 'available', 'LinkAja', 'E-Money', '2023-05-09 14:46:23', '2023-05-09 15:23:03'),
(305, 'prepaid', 'LINKAJA40', 'LinkAja Rp 40.000', '-', NULL, NULL, NULL, 40325, NULL, 'available', 'LinkAja', 'E-Money', '2023-05-09 14:46:23', '2023-05-09 15:23:03'),
(306, 'prepaid', 'LINKAJA45', 'LinkAja Rp 45.000', '-', NULL, NULL, NULL, 46060, NULL, 'empty', 'LinkAja', 'E-Money', '2023-05-09 14:46:23', '2023-05-09 15:23:03'),
(307, 'prepaid', 'LINKAJA50', 'LinkAja Rp 50.000', '-', NULL, NULL, NULL, 50325, NULL, 'available', 'LinkAja', 'E-Money', '2023-05-09 14:46:23', '2023-05-09 15:23:03'),
(308, 'prepaid', 'LINKA55JA', 'LinkAja Rp 55.000', '-', NULL, NULL, NULL, 55275, NULL, 'available', 'LinkAja', 'E-Money', '2023-05-09 14:46:23', '2023-05-09 15:23:03'),
(309, 'prepaid', 'LINKAJA60', 'LinkAja Rp 60.000', '-', NULL, NULL, NULL, 60675, NULL, 'available', 'LinkAja', 'E-Money', '2023-05-09 14:46:23', '2023-05-09 15:23:03'),
(310, 'prepaid', 'LINKAJA65', 'LinkAja Rp 65.000', '-', NULL, NULL, NULL, 65275, NULL, 'available', 'LinkAja', 'E-Money', '2023-05-09 14:46:23', '2023-05-09 15:23:03'),
(311, 'prepaid', 'LINKAJA70', 'LinkAja Rp 70.000', '-', NULL, NULL, NULL, 71060, NULL, 'empty', 'LinkAja', 'E-Money', '2023-05-09 14:46:23', '2023-05-09 15:23:03'),
(312, 'prepaid', 'LINKAJA75', 'LinkAja Rp 75.000', '-', NULL, NULL, NULL, 75450, NULL, 'available', 'LinkAja', 'E-Money', '2023-05-09 14:46:23', '2023-05-09 15:23:04'),
(313, 'prepaid', 'LINKA80JA', 'LinkAja Rp 80.000', '-', NULL, NULL, NULL, 80675, NULL, 'available', 'LinkAja', 'E-Money', '2023-05-09 14:46:23', '2023-05-09 15:23:04'),
(314, 'prepaid', 'LINKAJA85', 'LinkAja Rp 85.000', '-', NULL, NULL, NULL, 85275, NULL, 'available', 'LinkAja', 'E-Money', '2023-05-09 14:46:23', '2023-05-09 15:23:04'),
(315, 'prepaid', 'LINKAJA90', 'LinkAja Rp 90.000', '-', NULL, NULL, NULL, 90675, NULL, 'available', 'LinkAja', 'E-Money', '2023-05-09 14:46:23', '2023-05-09 15:23:04'),
(316, 'prepaid', 'LINKAJA95', 'LinkAja Rp 95.000', '-', NULL, NULL, NULL, 95275, NULL, 'available', 'LinkAja', 'E-Money', '2023-05-09 14:46:23', '2023-05-09 15:23:04'),
(317, 'prepaid', 'LINKAJA100', 'LinkAja Rp 100.000', '-', NULL, NULL, NULL, 100675, NULL, 'available', 'LinkAja', 'E-Money', '2023-05-09 14:46:23', '2023-05-09 15:23:04'),
(318, 'prepaid', 'LINKAJA125', 'LinkAja Rp 125.000', '-', NULL, NULL, NULL, 125450, NULL, 'available', 'LinkAja', 'E-Money', '2023-05-09 14:46:23', '2023-05-09 15:23:04'),
(319, 'prepaid', 'LINKAJA150', 'LinkAja Rp 150.000', '-', NULL, NULL, NULL, 150250, NULL, 'available', 'LinkAja', 'E-Money', '2023-05-09 14:46:23', '2023-05-09 15:23:04'),
(320, 'prepaid', 'SHOPEE10', 'SHOPEE PAY 10.000', 'SHOPEE PAY 10.000', NULL, NULL, NULL, 10200, NULL, 'empty', 'SHOPEE PAY', 'E-Money', '2023-05-09 14:46:23', '2023-05-09 15:23:04'),
(321, 'prepaid', 'SHOPEE15', 'SHOPEE PAY 15.000', 'SHOPEE PAY 15.000', NULL, NULL, NULL, 14375, NULL, 'available', 'SHOPEE PAY', 'E-Money', '2023-05-09 14:46:23', '2023-05-09 15:23:04'),
(322, 'prepaid', 'SHOPEE20', 'SHOPEE PAY 20.000', 'SHOPEE PAY 20.000', NULL, NULL, NULL, 19375, NULL, 'available', 'SHOPEE PAY', 'E-Money', '2023-05-09 14:46:24', '2023-05-09 15:23:04'),
(323, 'prepaid', 'SHOPEEPAY4', 'SHOPEE PAY 25.000', 'SHOPEE PAY 25.000', NULL, NULL, NULL, 24140, NULL, 'available', 'SHOPEE PAY', 'E-Money', '2023-05-09 14:46:24', '2023-05-09 15:23:04'),
(324, 'prepaid', 'SHOPEE30', 'SHOPEE PAY 30.000', 'SHOPEE PAY 30.000', NULL, NULL, NULL, 30500, NULL, 'available', 'SHOPEE PAY', 'E-Money', '2023-05-09 14:46:24', '2023-05-09 15:23:04'),
(325, 'prepaid', 'SHOPEE35', 'SHOPEE PAY 35.000', 'SHOPEE PAY 35.000', NULL, NULL, NULL, 34375, NULL, 'available', 'SHOPEE PAY', 'E-Money', '2023-05-09 14:46:24', '2023-05-09 15:23:04'),
(326, 'prepaid', 'SHOPEE40', 'SHOPEE PAY 40.000', 'SHOPEE PAY 40.000', NULL, NULL, NULL, 39375, NULL, 'available', 'SHOPEE PAY', 'E-Money', '2023-05-09 14:46:24', '2023-05-09 15:23:04'),
(327, 'prepaid', 'SHOPEE45', 'SHOPEE PAY 45.000', 'SHOPEE PAY 45.000', NULL, NULL, NULL, 44375, NULL, 'available', 'SHOPEE PAY', 'E-Money', '2023-05-09 14:46:24', '2023-05-09 15:23:04'),
(328, 'prepaid', 'SHOPEE50', 'SHOPEE PAY 50.000', 'SHOPEE PAY 50.000', NULL, NULL, NULL, 49375, NULL, 'available', 'SHOPEE PAY', 'E-Money', '2023-05-09 14:46:24', '2023-05-09 15:23:04'),
(329, 'prepaid', 'SHOPEE55', 'SHOPEE PAY 55.000', 'SHOPEE PAY 55.000', NULL, NULL, NULL, 54375, NULL, 'available', 'SHOPEE PAY', 'E-Money', '2023-05-09 14:46:24', '2023-05-09 15:23:05'),
(330, 'prepaid', 'SHOPEE60', 'SHOPEE PAY 60.000', 'SHOPEE PAY 60.000', NULL, NULL, NULL, 59375, NULL, 'available', 'SHOPEE PAY', 'E-Money', '2023-05-09 14:46:24', '2023-05-09 15:23:05'),
(331, 'prepaid', 'SHOPEE65', 'SHOPEE PAY 65.000', 'SHOPEE PAY 65.000', NULL, NULL, NULL, 64375, NULL, 'available', 'SHOPEE PAY', 'E-Money', '2023-05-09 14:46:24', '2023-05-09 15:23:05'),
(332, 'prepaid', 'SHOPEE70', 'SHOPEE PAY 70.000', 'SHOPEE PAY 70.000', NULL, NULL, NULL, 69375, NULL, 'available', 'SHOPEE PAY', 'E-Money', '2023-05-09 14:46:24', '2023-05-09 15:23:05'),
(333, 'prepaid', 'SHOPEE75', 'SHOPEE PAY 75.000', 'SHOPEE PAY 75.000', NULL, NULL, NULL, 74375, NULL, 'available', 'SHOPEE PAY', 'E-Money', '2023-05-09 14:46:24', '2023-05-09 15:23:05'),
(334, 'prepaid', 'SHOPEE80', 'SHOPEE PAY 80.000', 'SHOPEE PAY 80.000', NULL, NULL, NULL, 79375, NULL, 'available', 'SHOPEE PAY', 'E-Money', '2023-05-09 14:46:25', '2023-05-09 15:23:05'),
(335, 'prepaid', 'SHOPEE85', 'SHOPEE PAY 85.000', 'SHOPEE PAY 85.000', NULL, NULL, NULL, 84375, NULL, 'available', 'SHOPEE PAY', 'E-Money', '2023-05-09 14:46:25', '2023-05-09 15:23:05'),
(336, 'prepaid', 'SHOPEE90', 'SHOPEE PAY 90.000', 'SHOPEE PAY 90.000', NULL, NULL, NULL, 89450, NULL, 'available', 'SHOPEE PAY', 'E-Money', '2023-05-09 14:46:25', '2023-05-09 15:23:05'),
(337, 'prepaid', 'SHOPEE95', 'SHOPEE PAY 95.000', 'SHOPEE PAY 95.000', NULL, NULL, NULL, 94375, NULL, 'available', 'SHOPEE PAY', 'E-Money', '2023-05-09 14:46:25', '2023-05-09 15:23:05'),
(338, 'prepaid', 'SHOPEE100', 'SHOPEE PAY 100.000', 'SHOPEE PAY 100.000', NULL, NULL, NULL, 99375, NULL, 'available', 'SHOPEE PAY', 'E-Money', '2023-05-09 14:46:25', '2023-05-09 15:23:05'),
(339, 'prepaid', 'SHOPEE150', 'SHOPEE PAY 150.000', 'SHOPEE PAY 150.000', NULL, NULL, NULL, 149375, NULL, 'available', 'SHOPEE PAY', 'E-Money', '2023-05-09 14:46:25', '2023-05-09 15:23:05'),
(340, 'prepaid', 'SHOPEE200', 'SHOPEE PAY 200.000', 'SHOPEE PAY 200.000', NULL, NULL, NULL, 199375, NULL, 'available', 'SHOPEE PAY', 'E-Money', '2023-05-09 14:46:25', '2023-05-09 15:23:05'),
(341, 'prepaid', 'TOKEN50', 'PLN 50.000', 'masukkan nomor meter/id pelanggan', NULL, NULL, NULL, 50100, NULL, 'available', 'PLN', 'PLN', '2023-05-09 14:46:25', '2023-05-09 15:23:05'),
(342, 'prepaid', 'TOKEN100', 'PLN 100.000', 'masukkan nomor meter/id pelanggan', NULL, NULL, NULL, 100100, NULL, 'available', 'PLN', 'PLN', '2023-05-09 14:46:25', '2023-05-09 15:23:05'),
(343, 'prepaid', 'TOKEN200', 'PLN 200.000', 'masukkan nomor meter/id pelanggan', NULL, NULL, NULL, 200100, NULL, 'available', 'PLN', 'PLN', '2023-05-09 14:46:25', '2023-05-09 15:23:05'),
(344, 'prepaid', 'INTSEL2', 'Aktivasi Voucher Telkomsel 2.5 GB / 5 Hari', 'Produk ini untuk isi Voucher kosongan. perhatikan zona dan regional voucher.', NULL, NULL, NULL, 9955, NULL, 'empty', 'TELKOMSEL', 'Aktivasi Voucher', '2023-05-09 14:46:25', '2023-05-09 15:23:05'),
(345, 'prepaid', 'INTSEL3', 'Aktivasi Voucher Telkomsel 3.5 GB / 7 Hari', 'Produk ini untuk isi Voucher kosongan. perhatikan zona dan regional voucher.', NULL, NULL, NULL, 17675, NULL, 'available', 'TELKOMSEL', 'Aktivasi Voucher', '2023-05-09 14:46:25', '2023-05-09 15:23:05'),
(346, 'prepaid', 'INTSEL4', 'Aktivasi Voucher Telkomsel 4 GB / 30 Hari', 'Produk ini untuk isi Voucher kosongan. perhatikan zona dan regional voucher.', NULL, NULL, NULL, 32025, NULL, 'available', 'TELKOMSEL', 'Aktivasi Voucher', '2023-05-09 14:46:25', '2023-05-09 15:23:05'),
(347, 'prepaid', 'INTSEL5', 'Aktivasi Voucher Telkomsel 10 GB / 30 Hari', 'Produk ini untuk isi Voucher kosongan. perhatikan zona dan regional voucher.', NULL, NULL, NULL, 62025, NULL, 'available', 'TELKOMSEL', 'Aktivasi Voucher', '2023-05-09 14:46:25', '2023-05-09 15:23:06'),
(348, 'prepaid', 'INTSEL6', 'Aktivasi Voucher Telkomsel 14 GB / 30 Hari', 'Produk ini untuk isi Voucher kosongan. perhatikan zona dan regional voucher.', NULL, NULL, NULL, 76025, NULL, 'available', 'TELKOMSEL', 'Aktivasi Voucher', '2023-05-09 14:46:25', '2023-05-09 15:23:06'),
(349, 'prepaid', 'ININDUL2', 'Aktivasi Voucher Indosat 2 GB (3G/4G) + UNLIMITED APLIKASI / 30 Hari', 'Produk ini untuk isi Voucher kosongan.', NULL, NULL, NULL, 52025, NULL, 'available', 'INDOSAT', 'Aktivasi Voucher', '2023-05-09 14:46:25', '2023-05-09 15:23:06'),
(350, 'prepaid', 'ININDUL3', 'Aktivasi Voucher Indosat 3 GB (3G/4G) + UNLIMITED (APP+SMS SESAMA) / 30 Hari', 'Produk ini untuk isi Voucher kosongan.', NULL, NULL, NULL, 70925, NULL, 'available', 'INDOSAT', 'Aktivasi Voucher', '2023-05-09 14:46:25', '2023-05-09 15:23:06'),
(351, 'prepaid', 'INAXS1', 'Aktivasi Voucher Axis Owsem 1 GB + 1 GB 4G + 2 GB Game / 30 Hari', 'Produk ini untuk isi Voucher kosongan.', NULL, NULL, NULL, 16400, NULL, 'available', 'AXIS', 'Aktivasi Voucher', '2023-05-09 14:46:26', '2023-05-09 15:23:06'),
(352, 'prepaid', 'INAXS2', 'Aktivasi Voucher Axis Owsem 1 GB + 3 GB 4G + 4 GB Game / 30 Hari', 'Produk ini untuk isi Voucher kosongan.', NULL, NULL, NULL, 27900, NULL, 'available', 'AXIS', 'Aktivasi Voucher', '2023-05-09 14:46:26', '2023-05-09 15:23:06'),
(353, 'prepaid', 'INAXS3', 'Aktivasi Voucher Axis Owsem 2 GB + 6 GB 4G + 8 GB Game / 30 Hari', 'Produk ini untuk isi Voucher kosongan.', NULL, NULL, NULL, 44600, NULL, 'available', 'AXIS', 'Aktivasi Voucher', '2023-05-09 14:46:26', '2023-05-09 15:23:06'),
(354, 'prepaid', 'INAXS4', 'Aktivasi Voucher Axis Owsem 3 GB + 9 GB 4G + 12 GB Game / 30 Hari', 'Produk ini untuk isi Voucher kosongan.', NULL, NULL, NULL, 59100, NULL, 'available', 'AXIS', 'Aktivasi Voucher', '2023-05-09 14:46:26', '2023-05-09 15:23:06'),
(355, 'prepaid', 'INAXSAIGO1', 'Aktivasi Voucher Axis 1.5 GB / 3 Hari', 'Produk ini untuk isi Voucher kosongan.', NULL, NULL, NULL, 8195, NULL, 'empty', 'AXIS', 'Aktivasi Voucher', '2023-05-09 14:46:26', '2023-05-09 15:23:06'),
(356, 'prepaid', 'INAXSAIGO2', 'Aktivasi Voucher Axis 1.5 GB / 5 Hari', 'Produk ini untuk isi Voucher kosongan.', NULL, NULL, NULL, 9155, NULL, 'available', 'AXIS', 'Aktivasi Voucher', '2023-05-09 14:46:26', '2023-05-09 15:23:06'),
(357, 'prepaid', 'INAXSAIGO3', 'Aktivasi Voucher Axis 2 GB / 5 Hari', 'Produk ini untuk isi Voucher kosongan.', NULL, NULL, NULL, 12500, NULL, 'available', 'AXIS', 'Aktivasi Voucher', '2023-05-09 14:46:26', '2023-05-09 15:23:06'),
(358, 'prepaid', 'INAXSAIGO4', 'Aktivasi Voucher Axis 3 GB / 5 Hari', 'Produk ini untuk isi Voucher kosongan.', NULL, NULL, NULL, 16650, NULL, 'available', 'AXIS', 'Aktivasi Voucher', '2023-05-09 14:46:26', '2023-05-09 15:23:06'),
(359, 'prepaid', 'INAXSAIGO5', 'Aktivasi Voucher Axis 7 GB / 5 Hari', 'Produk ini untuk isi Voucher kosongan.', NULL, NULL, NULL, 20360, NULL, 'available', 'AXIS', 'Aktivasi Voucher', '2023-05-09 14:46:26', '2023-05-09 15:23:06'),
(360, 'prepaid', 'INAXSAIGO7', 'Aktivasi Voucher Axis 3 GB / 15 Hari', 'Produk ini untuk isi Voucher kosongan.', NULL, NULL, NULL, 20458, NULL, 'available', 'AXIS', 'Aktivasi Voucher', '2023-05-09 14:46:26', '2023-05-09 15:23:06'),
(361, 'prepaid', 'INAXSAIGO8', 'Aktivasi Voucher Axis 5 GB / 15 Hari', 'Produk ini untuk isi Voucher kosongan.', NULL, NULL, NULL, 32400, NULL, 'available', 'AXIS', 'Aktivasi Voucher', '2023-05-09 14:46:26', '2023-05-09 15:23:07'),
(362, 'prepaid', 'INSMART1', 'Aktivasi Voucher Smartfren Unlimited Harian 1 GB 7 Hari', 'Batas pemakaian wajar 1GB/hari, Unlimited 24 Jam, Gratis Nelpon ke sesama smartfren, Berlaku 7 hari. Produk ini untuk isi Voucher kosongan.', NULL, NULL, NULL, 24435, NULL, 'empty', 'SMARTFREN', 'Aktivasi Voucher', '2023-05-09 14:46:26', '2023-05-09 15:23:07'),
(363, 'prepaid', 'TSELNEL1', 'Telkomsel Telepon Pas 5.000', 'Telepon 80 menit sesama, 20 menit semua op 1 Hari (sesuai zona)', NULL, NULL, NULL, 4495, NULL, 'available', 'TELKOMSEL', 'Paket SMS & Telpon', '2023-05-09 14:46:26', '2023-05-09 15:23:07'),
(364, 'prepaid', 'TSELNEL2', 'Telkomsel Telepon Semua Operator 10.000', 'Telepon 185 menit sesama, 15 menit semua operator 1 Hari (sesuai zona)', NULL, NULL, NULL, 6500, NULL, 'available', 'TELKOMSEL', 'Paket SMS & Telpon', '2023-05-09 14:46:26', '2023-05-09 15:23:07'),
(365, 'prepaid', 'TSELNEL3', 'Telkomsel Telepon Semua Operator 20.000', 'Telepon 370 menit sesama, 30 menit semua op 3 Hari (sesuai zona)', NULL, NULL, NULL, 20210, NULL, 'available', 'TELKOMSEL', 'Paket SMS & Telpon', '2023-05-09 14:46:26', '2023-05-09 15:23:07'),
(366, 'prepaid', 'TSELNEL4', 'Telkomsel Telepon Semua Operator 25.000', 'Telepon 550 menit sesama, 50 menit semua op 7 Hari (sesuai zona)', NULL, NULL, NULL, 20240, NULL, 'available', 'TELKOMSEL', 'Paket SMS & Telpon', '2023-05-09 14:46:26', '2023-05-09 15:23:07'),
(367, 'prepaid', 'TSELNEL5', 'Telkomsel Telepon 50.000', 'Telepon 1200 menit sesama, 100 menit semua op 15 Hari (sesuai zona)', NULL, NULL, NULL, 34625, NULL, 'available', 'TELKOMSEL', 'Paket SMS & Telpon', '2023-05-09 14:46:26', '2023-05-09 15:23:07'),
(368, 'prepaid', 'TSELNEL6', 'Telkomsel Telepon 80.000', 'Telepon 2000 menit sesama, 100 menit semua op 30 Hari (sesuai zona)', NULL, NULL, NULL, 50125, NULL, 'available', 'TELKOMSEL', 'Paket SMS & Telpon', '2023-05-09 14:46:26', '2023-05-09 15:23:07'),
(369, 'prepaid', 'TELPTSEL1', 'Telkomsel Telepon Paket Spesial / 1 Hari', 'Telepon unlimited sesama + 20-50 menit all op (paket yang didapat berbeda tiap nomor dan zona), 1 hari', NULL, NULL, NULL, 2855, NULL, 'available', 'TELKOMSEL', 'Paket SMS & Telpon', '2023-05-09 14:46:27', '2023-05-09 15:23:07'),
(370, 'prepaid', 'TELTSEL2', 'Telkomsel Telepon Paket Spesial / 7 Hari', 'Telepon unlimited sesama + 100-250 menit all op (paket yang didapat berbeda tiap nomor dan zona), 7 hari', NULL, NULL, NULL, 7950, NULL, 'available', 'TELKOMSEL', 'Paket SMS & Telpon', '2023-05-09 14:46:27', '2023-05-09 15:23:07'),
(371, 'prepaid', 'TELTSEL6', 'Telkomsel Telepon Paket Spesial / 30 Hari', 'Telepon unlimited sesama + 250-500 menit all op (paket yang didapat berbeda tiap nomor dan zona), 30 hari', NULL, NULL, NULL, 24910, NULL, 'available', 'TELKOMSEL', 'Paket SMS & Telpon', '2023-05-09 14:46:27', '2023-05-09 15:23:07'),
(372, 'prepaid', 'PULSATFTSEL5', 'Telkomsel Pulsa Transfer 5.000', 'Pulsa Telkomsel Rp 5.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 5300, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:27', '2023-05-09 15:23:07'),
(373, 'prepaid', 'PULSATFTSEL10', 'Telkomsel Pulsa Transfer 10.000', 'Pulsa Telkomsel Rp 10.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 10180, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:27', '2023-05-09 15:23:07'),
(374, 'prepaid', 'PULSATFTSEL15', 'Telkomsel Pulsa Transfer 15.000', 'Pulsa Telkomsel Rp 15.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 15595, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:27', '2023-05-09 15:23:07'),
(375, 'prepaid', 'PULSATFTSEL20', 'Telkomsel Pulsa Transfer 20.000', 'Pulsa Telkomsel Rp 20.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 20490, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:27', '2023-05-09 15:23:07'),
(376, 'prepaid', 'PULSATFTSEL25', 'Telkomsel Pulsa Transfer 25.000', 'Pulsa Telkomsel Rp 25.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 24940, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:27', '2023-05-09 15:23:07'),
(377, 'prepaid', 'PULSATFTSEL30', 'Telkomsel Pulsa Transfer 30.000', 'Pulsa Telkomsel Rp 30.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 29420, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:27', '2023-05-09 15:23:07'),
(378, 'prepaid', 'PULSATFTSEL35', 'Telkomsel Pulsa Transfer 35.000', 'Pulsa Telkomsel Rp 35.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 33870, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:27', '2023-05-09 15:23:08'),
(379, 'prepaid', 'PULSATFTSEL40', 'Telkomsel Pulsa Transfer 40.000', 'Pulsa Telkomsel Rp 40.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 38320, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:27', '2023-05-09 15:23:08'),
(380, 'prepaid', 'PULSATFTSEL45', 'Telkomsel Pulsa Transfer 45.000', 'Pulsa Telkomsel Rp 45.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 42770, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:27', '2023-05-09 15:23:08'),
(381, 'prepaid', 'PULSATFTSEL50', 'Telkomsel Pulsa Transfer 50.000', 'Pulsa Telkomsel Rp 50.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 46274, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:27', '2023-05-09 15:23:08'),
(382, 'prepaid', 'PULSATFTSEL55', 'Telkomsel Pulsa Transfer 55.000', 'Pulsa Telkomsel Rp 55.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 52560, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:27', '2023-05-09 15:23:08'),
(383, 'prepaid', 'PULSATFTSEL60', 'Telkomsel Pulsa Transfer 60.000', 'Pulsa Telkomsel Rp 60.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 57010, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:27', '2023-05-09 15:23:08'),
(384, 'prepaid', 'PULSATFTSEL65', 'Telkomsel Pulsa Transfer 65.000', 'Pulsa Telkomsel Rp 65.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 61109, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:27', '2023-05-09 15:23:08'),
(385, 'prepaid', 'PULSATFTSEL70', 'Telkomsel Pulsa Transfer 70.000', 'Pulsa Telkomsel Rp 70.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 65910, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:27', '2023-05-09 15:23:08'),
(386, 'prepaid', 'PULSATFTSEL75', 'Telkomsel Pulsa Transfer 75.000', 'Pulsa Telkomsel Rp 75.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 70360, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:27', '2023-05-09 15:23:08'),
(387, 'prepaid', 'PULSATFTSEL80', 'Telkomsel Pulsa Transfer 80.000', 'Pulsa Telkomsel Rp 80.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 74810, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:27', '2023-05-09 15:23:08'),
(388, 'prepaid', 'PULSATFTSEL85', 'Telkomsel Pulsa Transfer 85.000', 'Pulsa Telkomsel Rp 85.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 79260, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:27', '2023-05-09 15:23:08'),
(389, 'prepaid', 'PULSATFTSEL90', 'Telkomsel Pulsa Transfer 90.000', 'Pulsa Telkomsel Rp 90.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 83710, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:27', '2023-05-09 15:23:08'),
(390, 'prepaid', 'PULSATFTSEL95', 'Telkomsel Pulsa Transfer 95.000', 'Pulsa Telkomsel Rp 95.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 88160, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:28', '2023-05-09 15:23:08'),
(391, 'prepaid', 'PULSATFTSEL100', 'Telkomsel Pulsa Transfer 100.000', 'Pulsa Telkomsel Rp 100.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 94740, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:28', '2023-05-09 15:23:08'),
(392, 'prepaid', 'PULSATFTSEL120', 'Telkomsel Pulsa Transfer 120.000', 'Pulsa Telkomsel Rp 120.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 112540, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:28', '2023-05-09 15:23:08'),
(393, 'prepaid', 'PULSATFTSEL125', 'Telkomsel Pulsa Transfer 125.000', 'Pulsa Telkomsel Rp 125.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 113405, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:28', '2023-05-09 15:23:09'),
(394, 'prepaid', 'PULSATFTSEL130', 'Telkomsel Pulsa Transfer 130.000', 'Pulsa Telkomsel Rp 130.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 121440, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:28', '2023-05-09 15:23:09'),
(395, 'prepaid', 'PULSATFTSEL110', 'Telkomsel Pulsa Transfer 110.000', 'Pulsa Telkomsel Rp 110.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 103640, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:28', '2023-05-09 15:23:09'),
(396, 'prepaid', 'PULSATFTSEL150', 'Telkomsel Pulsa Transfer 150.000', 'Pulsa Telkomsel Rp 150.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 139240, NULL, 'available', 'TELKOMSEL', 'Pulsa', '2023-05-09 14:46:28', '2023-05-09 15:23:09'),
(397, 'prepaid', 'PULSATFIND10', 'Indosat Pulsa Transfer 10.000', 'Pulsa Indosat Transfer 10.000 + Masa Aktif 3 Hari', NULL, NULL, NULL, 10550, NULL, 'available', 'INDOSAT', 'Pulsa', '2023-05-09 14:46:28', '2023-05-09 15:23:09'),
(398, 'prepaid', 'PULSATFIND15', 'Indosat Pulsa Transfer 15.000', 'Pulsa Indosat Transfer 15.000 + Masa Aktif 7 Hari', NULL, NULL, NULL, 15300, NULL, 'available', 'INDOSAT', 'Pulsa', '2023-05-09 14:46:28', '2023-05-09 15:23:09'),
(399, 'prepaid', 'PULSATFIND20', 'Indosat Pulsa Transfer 20.000', 'Pulsa Indosat Transfer 20.000 + Masa Aktif 7 Hari', NULL, NULL, NULL, 19875, NULL, 'available', 'INDOSAT', 'Pulsa', '2023-05-09 14:46:28', '2023-05-09 15:23:09'),
(400, 'prepaid', 'PULSATFIND25', 'Indosat Pulsa Transfer 25.000', 'Pulsa Indosat Transfer 25.000 + Masa Aktif 15 Hari', NULL, NULL, NULL, 24800, NULL, 'available', 'INDOSAT', 'Pulsa', '2023-05-09 14:46:28', '2023-05-09 15:23:09'),
(401, 'prepaid', 'PULSATFIND30', 'Indosat Pulsa Transfer 30.000', 'Pulsa Indosat Transfer 30.000 + Masa Aktif 15 Hari', NULL, NULL, NULL, 29800, NULL, 'available', 'INDOSAT', 'Pulsa', '2023-05-09 14:46:28', '2023-05-09 15:23:09'),
(402, 'prepaid', 'PULSATFIND40', 'Indosat Pulsa Transfer 40.000', 'Pulsa Indosat Transfer 40.000 + Masa Aktif 15 Hari', NULL, NULL, NULL, 39900, NULL, 'available', 'INDOSAT', 'Pulsa', '2023-05-09 14:46:28', '2023-05-09 15:23:09'),
(403, 'prepaid', 'PULSATFIND50', 'Indosat Pulsa Transfer 50.000', 'Pulsa Indosat Transfer 50.000 + Masa Aktif 22 Hari', NULL, NULL, NULL, 48575, NULL, 'available', 'INDOSAT', 'Pulsa', '2023-05-09 14:46:28', '2023-05-09 15:23:09'),
(404, 'prepaid', 'PULSATFIND60', 'Indosat Pulsa Transfer 60.000', 'Pulsa Indosat Transfer 60.000 + Masa Aktif 22 Hari', NULL, NULL, NULL, 58350, NULL, 'available', 'INDOSAT', 'Pulsa', '2023-05-09 14:46:28', '2023-05-09 15:23:09'),
(405, 'prepaid', 'PULSATFIND70', 'Indosat Pulsa Transfer 70.000', 'Pulsa Indosat Transfer 70.000 + Masa Aktif 22 Hari', NULL, NULL, NULL, 68350, NULL, 'available', 'INDOSAT', 'Pulsa', '2023-05-09 14:46:28', '2023-05-09 15:23:10'),
(406, 'prepaid', 'PULSATFIND80', 'Indosat Pulsa Transfer 75.000', 'Pulsa Indosat Transfer 75.000 + Masa Aktif 22 Hari', NULL, NULL, NULL, 72000, NULL, 'empty', 'INDOSAT', 'Pulsa', '2023-05-09 14:46:28', '2023-05-09 15:23:10'),
(407, 'prepaid', 'PULSATFIND100', 'Indosat Pulsa Transfer 100.000', 'Pulsa Indosat Transfer 100.000 + Masa Aktif 30 Hari', NULL, NULL, NULL, 96450, NULL, 'available', 'INDOSAT', 'Pulsa', '2023-05-09 14:46:28', '2023-05-09 15:23:10'),
(408, 'prepaid', 'PULSATFIND150', 'Indosat Pulsa Transfer 150.000', 'Pulsa Indosat Transfer 150.000 + Masa Aktif 30 Hari', NULL, NULL, NULL, 145600, NULL, 'available', 'INDOSAT', 'Pulsa', '2023-05-09 14:46:29', '2023-05-09 15:23:10'),
(409, 'prepaid', 'PULSATFAXS10', 'Axis Pulsa Transfer 10.000', '-', NULL, NULL, NULL, 10675, NULL, 'available', 'AXIS', 'Pulsa', '2023-05-09 14:46:29', '2023-05-09 15:23:10'),
(410, 'prepaid', 'PULSATFAXS15', 'Axis Pulsa Transfer 15.000', '-', NULL, NULL, NULL, 15125, NULL, 'available', 'AXIS', 'Pulsa', '2023-05-09 14:46:29', '2023-05-09 15:23:10'),
(411, 'prepaid', 'PULSATFAXS20', 'Axis Pulsa Transfer 20.000', '-', NULL, NULL, NULL, 19152, NULL, 'empty', 'AXIS', 'Pulsa', '2023-05-09 14:46:29', '2023-05-09 15:23:10'),
(412, 'prepaid', 'PULSATFAXS25', 'Axis Pulsa Transfer 25.000', '-', NULL, NULL, NULL, 24695, NULL, 'available', 'AXIS', 'Pulsa', '2023-05-09 14:46:29', '2023-05-09 15:23:10'),
(413, 'prepaid', 'PULSATFAXS30', 'Axis Pulsa Transfer 30.000', '-', NULL, NULL, NULL, 29453, NULL, 'available', 'AXIS', 'Pulsa', '2023-05-09 14:46:29', '2023-05-09 15:23:10'),
(414, 'prepaid', 'PULSATFAXS35', 'Axis Pulsa Transfer 35.000', '-', NULL, NULL, NULL, 33288, NULL, 'empty', 'AXIS', 'Pulsa', '2023-05-09 14:46:29', '2023-05-09 15:23:10'),
(415, 'prepaid', 'PULSATFAXS40', 'Axis Pulsa Transfer 40.000', '-', NULL, NULL, NULL, 38803, NULL, 'available', 'AXIS', 'Pulsa', '2023-05-09 14:46:29', '2023-05-09 15:23:10'),
(416, 'prepaid', 'PULSATFAXS45', 'Axis Pulsa Transfer 45.000', '-', NULL, NULL, NULL, 43275, NULL, 'available', 'AXIS', 'Pulsa', '2023-05-09 14:46:29', '2023-05-09 15:23:10'),
(417, 'prepaid', 'PULSATFAXS50', 'Axis Pulsa Transfer 50.000', '-', NULL, NULL, NULL, 48928, NULL, 'available', 'AXIS', 'Pulsa', '2023-05-09 14:46:29', '2023-05-09 15:23:10'),
(418, 'prepaid', 'PULSATFAXS55', 'Axis Pulsa Transfer 55.000', '-', NULL, NULL, NULL, 51984, NULL, 'available', 'AXIS', 'Pulsa', '2023-05-09 14:46:29', '2023-05-09 15:23:10'),
(419, 'prepaid', 'PULSATFAXS60', 'Axis Pulsa Transfer 60.000', '-', NULL, NULL, NULL, 58905, NULL, 'available', 'AXIS', 'Pulsa', '2023-05-09 14:46:29', '2023-05-09 15:23:10'),
(420, 'prepaid', 'PULSATFAXS65', 'Axis Pulsa Transfer 65.000', '-', NULL, NULL, NULL, 61104, NULL, 'available', 'AXIS', 'Pulsa', '2023-05-09 14:46:29', '2023-05-09 15:23:10'),
(421, 'prepaid', 'PULSATFAXS70', 'Axis Pulsa Transfer 70.000', '-', NULL, NULL, NULL, 65664, NULL, 'available', 'AXIS', 'Pulsa', '2023-05-09 14:46:29', '2023-05-09 15:23:10'),
(422, 'prepaid', 'PULSATFAXS75', 'Axis Pulsa Transfer 75.000', '-', NULL, NULL, NULL, 70224, NULL, 'available', 'AXIS', 'Pulsa', '2023-05-09 14:46:29', '2023-05-09 15:23:10'),
(423, 'prepaid', 'PULSATFAXS80', 'Axis Pulsa Transfer 80.000', '-', NULL, NULL, NULL, 74784, NULL, 'empty', 'AXIS', 'Pulsa', '2023-05-09 14:46:29', '2023-05-09 15:23:11'),
(424, 'prepaid', 'PULSATFAXS85', 'Axis Pulsa Transfer 85.000', '-', NULL, NULL, NULL, 79344, NULL, 'available', 'AXIS', 'Pulsa', '2023-05-09 14:46:30', '2023-05-09 15:23:11'),
(425, 'prepaid', 'PULSATFAXS90', 'Axis Pulsa Transfer 90.000', '-', NULL, NULL, NULL, 85528, NULL, 'available', 'AXIS', 'Pulsa', '2023-05-09 14:46:30', '2023-05-09 15:23:11'),
(426, 'prepaid', 'PULSATFAXS95', 'Axis Pulsa Transfer 95.000', '-', NULL, NULL, NULL, 88464, NULL, 'available', 'AXIS', 'Pulsa', '2023-05-09 14:46:30', '2023-05-09 15:23:11'),
(427, 'prepaid', 'PULSATFAXS100', 'Axis Pulsa Transfer 100.000', '-', NULL, NULL, NULL, 99110, NULL, 'available', 'AXIS', 'Pulsa', '2023-05-09 14:46:30', '2023-05-09 15:23:11'),
(428, 'prepaid', 'PULSATFAXS150', 'Axis Pulsa Transfer 150.000', '-', NULL, NULL, NULL, 140448, NULL, 'available', 'AXIS', 'Pulsa', '2023-05-09 14:46:30', '2023-05-09 15:23:11'),
(429, 'prepaid', 'PULSATFAXS5', 'Axis Pulsa Transfer 5.000', '-', NULL, NULL, NULL, 5972, NULL, 'available', 'AXIS', 'Pulsa', '2023-05-09 14:46:30', '2023-05-09 15:23:11'),
(430, 'prepaid', 'PULSATFTRI5', 'Three Pulsa Transfer 5.000', '-', NULL, NULL, NULL, 5415, NULL, 'available', 'TRI', 'Pulsa', '2023-05-09 14:46:30', '2023-05-09 15:23:11'),
(431, 'prepaid', 'PULSATFTRI10', 'Three Pulsa Transfer 10.000', '-', NULL, NULL, NULL, 10202, NULL, 'available', 'TRI', 'Pulsa', '2023-05-09 14:46:30', '2023-05-09 15:23:11'),
(432, 'prepaid', 'PULSATFTRI15', 'Three Pulsa Transfer 15.000', '-', NULL, NULL, NULL, 14995, NULL, 'available', 'TRI', 'Pulsa', '2023-05-09 14:46:30', '2023-05-09 15:23:11'),
(433, 'prepaid', 'PULSATFTRI20', 'Three Pulsa Transfer 20.000', '-', NULL, NULL, NULL, 19782, NULL, 'available', 'TRI', 'Pulsa', '2023-05-09 14:46:30', '2023-05-09 15:23:11'),
(434, 'prepaid', 'PULSATFTRI25', 'Three Pulsa Transfer 25.000', '-', NULL, NULL, NULL, 24570, NULL, 'available', 'TRI', 'Pulsa', '2023-05-09 14:46:30', '2023-05-09 15:23:11'),
(435, 'prepaid', 'PULSATFTRI30', 'Three Pulsa Transfer 30.000', '-', NULL, NULL, NULL, 29372, NULL, 'available', 'TRI', 'Pulsa', '2023-05-09 14:46:30', '2023-05-09 15:23:11'),
(436, 'prepaid', 'PULSATFTRI35', 'Three Pulsa Transfer 35.000', '-', NULL, NULL, NULL, 34160, NULL, 'available', 'TRI', 'Pulsa', '2023-05-09 14:46:30', '2023-05-09 15:23:11'),
(437, 'prepaid', 'PULSATFTRI40', 'Three Pulsa Transfer 40.000', '-', NULL, NULL, NULL, 38947, NULL, 'available', 'TRI', 'Pulsa', '2023-05-09 14:46:30', '2023-05-09 15:23:12'),
(438, 'prepaid', 'PULSATFTRI45', 'Three Pulsa Transfer 45.000', '-', NULL, NULL, NULL, 43735, NULL, 'available', 'TRI', 'Pulsa', '2023-05-09 14:46:30', '2023-05-09 15:23:12'),
(439, 'prepaid', 'PULSATFTRI50', 'Three Pulsa Transfer 50.000', '-', NULL, NULL, NULL, 48522, NULL, 'available', 'TRI', 'Pulsa', '2023-05-09 14:46:30', '2023-05-09 15:23:12'),
(440, 'prepaid', 'PULSATFTRI55', 'Three Pulsa Transfer 55.000', '-', NULL, NULL, NULL, 53310, NULL, 'available', 'TRI', 'Pulsa', '2023-05-09 14:46:31', '2023-05-09 15:23:12'),
(441, 'prepaid', 'PULSATFTRI60', 'Three Pulsa Transfer 60.000', '-', NULL, NULL, NULL, 58097, NULL, 'available', 'TRI', 'Pulsa', '2023-05-09 14:46:31', '2023-05-09 15:23:12'),
(442, 'prepaid', 'PULSATFTRI65', 'Three Pulsa Transfer 65.000', '-', NULL, NULL, NULL, 62885, NULL, 'available', 'TRI', 'Pulsa', '2023-05-09 14:46:31', '2023-05-09 15:23:12'),
(443, 'prepaid', 'PULSATFTRI70', 'Three Pulsa Transfer 70.000', '-', NULL, NULL, NULL, 67672, NULL, 'available', 'TRI', 'Pulsa', '2023-05-09 14:46:31', '2023-05-09 15:23:12'),
(444, 'prepaid', 'PULSATFTRI75', 'Three Pulsa Transfer 75.000', '-', NULL, NULL, NULL, 72460, NULL, 'available', 'TRI', 'Pulsa', '2023-05-09 14:46:31', '2023-05-09 15:23:12'),
(445, 'prepaid', 'PULSATFTRI80', 'Three Pulsa Transfer 80.000', '-', NULL, NULL, NULL, 77247, NULL, 'available', 'TRI', 'Pulsa', '2023-05-09 14:46:31', '2023-05-09 15:23:12'),
(446, 'prepaid', 'PULSATFTRI85', 'Three Pulsa Transfer 85.000', '-', NULL, NULL, NULL, 82035, NULL, 'available', 'TRI', 'Pulsa', '2023-05-09 14:46:31', '2023-05-09 15:23:12'),
(447, 'prepaid', 'PULSATFTRI90', 'Three Pulsa Transfer 90.000', '-', NULL, NULL, NULL, 86822, NULL, 'available', 'TRI', 'Pulsa', '2023-05-09 14:46:31', '2023-05-09 15:23:12'),
(448, 'prepaid', 'PULSATFTRI95', 'Three Pulsa Transfer 95.000', '-', NULL, NULL, NULL, 91610, NULL, 'available', 'TRI', 'Pulsa', '2023-05-09 14:46:31', '2023-05-09 15:23:12'),
(449, 'prepaid', 'PULSAT100FTRI', 'Three Pulsa Transfer 100.000', '-', NULL, NULL, NULL, 96397, NULL, 'available', 'TRI', 'Pulsa', '2023-05-09 14:46:31', '2023-05-09 15:23:12'),
(450, 'prepaid', 'PULSATFTRI125', 'Three Pulsa Transfer 125.000', '-', NULL, NULL, NULL, 120335, NULL, 'available', 'TRI', 'Pulsa', '2023-05-09 14:46:31', '2023-05-09 15:23:12'),
(451, 'prepaid', 'PULSATFXL5', 'Xl Pulsa Transfer 5.000', 'Pulsa Xl Rp 5.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 5962, NULL, 'available', 'XL', 'Pulsa', '2023-05-09 14:46:31', '2023-05-09 15:23:12'),
(452, 'prepaid', 'PULSATFXL10', 'Xl Pulsa Transfer 10.000', 'Pulsa Xl Rp 10.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 10666, NULL, 'available', 'XL', 'Pulsa', '2023-05-09 14:46:31', '2023-05-09 15:23:12'),
(453, 'prepaid', 'PULSATFXL15', 'Xl Pulsa Transfer 15.000', 'Pulsa Xl Rp 15.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 15125, NULL, 'available', 'XL', 'Pulsa', '2023-05-09 14:46:31', '2023-05-09 15:23:13'),
(454, 'prepaid', 'PULSATFXL20', 'Xl Pulsa Transfer 20.000', 'Pulsa Xl Rp 20.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 20103, NULL, 'available', 'XL', 'Pulsa', '2023-05-09 14:46:32', '2023-05-09 15:23:13'),
(455, 'prepaid', 'PULSATFXL25', 'Xl Pulsa Transfer 25.000', 'Pulsa Xl Rp 25.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 24800, NULL, 'available', 'XL', 'Pulsa', '2023-05-09 14:46:32', '2023-05-09 15:23:13'),
(456, 'prepaid', 'PULSATFXL30', 'Xl Pulsa Transfer 30.000', 'Pulsa Xl Rp 30.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 29453, NULL, 'available', 'XL', 'Pulsa', '2023-05-09 14:46:32', '2023-05-09 15:23:13'),
(457, 'prepaid', 'PULSATFXL35', 'Xl Pulsa Transfer 35.000', 'Pulsa Xl Rp 35.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 34128, NULL, 'available', 'XL', 'Pulsa', '2023-05-09 14:46:32', '2023-05-09 15:23:13'),
(458, 'prepaid', 'PULSATFXL40', 'Xl Pulsa Transfer 40.000', 'Pulsa Xl Rp 40.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 38803, NULL, 'available', 'XL', 'Pulsa', '2023-05-09 14:46:32', '2023-05-09 15:23:13'),
(459, 'prepaid', 'PULSATFXL45', 'Xl Pulsa Transfer 45.000', 'Pulsa Xl Rp 45.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 43503, NULL, 'available', 'XL', 'Pulsa', '2023-05-09 14:46:32', '2023-05-09 15:23:13'),
(460, 'prepaid', 'PULSATFXL50', 'Xl Pulsa Transfer 50.000', 'Pulsa Xl Rp 50.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 49555, NULL, 'available', 'XL', 'Pulsa', '2023-05-09 14:46:32', '2023-05-09 15:23:13'),
(461, 'prepaid', 'PULSATFXL55', 'Xl Pulsa Transfer 55.000', 'Pulsa Xl Rp 55.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 54255, NULL, 'available', 'XL', 'Pulsa', '2023-05-09 14:46:32', '2023-05-09 15:23:13'),
(462, 'prepaid', 'PULSATFXL60', 'Xl Pulsa Transfer 60.000', 'Pulsa Xl Rp 60.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 58905, NULL, 'available', 'XL', 'Pulsa', '2023-05-09 14:46:32', '2023-05-09 15:23:13'),
(463, 'prepaid', 'PULSATFXL65', 'Xl Pulsa Transfer 65.000', 'Pulsa Xl Rp 65.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 63605, NULL, 'empty', 'XL', 'Pulsa', '2023-05-09 14:46:32', '2023-05-09 15:23:13'),
(464, 'prepaid', 'PULSATFXL70', 'Xl Pulsa Transfer 70.000', 'Pulsa Xl Rp 70.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 68255, NULL, 'available', 'XL', 'Pulsa', '2023-05-09 14:46:32', '2023-05-09 15:23:13'),
(465, 'prepaid', 'PULSATFXL75', 'Xl Pulsa Transfer 75.000', 'Pulsa Xl Rp 75.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 71868, NULL, 'available', 'XL', 'Pulsa', '2023-05-09 14:46:32', '2023-05-09 15:23:13'),
(466, 'prepaid', 'PULSATFXL0', 'Xl Pulsa Transfer 80.000', 'Pulsa Xl Rp 80.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 77605, NULL, 'available', 'XL', 'Pulsa', '2023-05-09 14:46:32', '2023-05-09 15:23:14'),
(467, 'prepaid', 'PULSATFXL85', 'Xl Pulsa Transfer 85.000', 'Pulsa Xl Rp 85.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 82280, NULL, 'available', 'XL', 'Pulsa', '2023-05-09 14:46:32', '2023-05-09 15:23:14'),
(468, 'prepaid', 'PULSATFXL90', 'Xl Pulsa Transfer 90.000', 'Pulsa Xl Rp 90.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 86955, NULL, 'available', 'XL', 'Pulsa', '2023-05-09 14:46:32', '2023-05-09 15:23:14'),
(469, 'prepaid', 'PULSATFXL95', 'Xl Pulsa Transfer 95.000', 'Pulsa Xl Rp 95.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 88464, NULL, 'available', 'XL', 'Pulsa', '2023-05-09 14:46:32', '2023-05-09 15:23:14'),
(470, 'prepaid', 'PULSATFXL100', 'Xl Pulsa Transfer 100.000', 'Pulsa Xl Rp 100.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 99135, NULL, 'available', 'XL', 'Pulsa', '2023-05-09 14:46:32', '2023-05-09 15:23:14'),
(471, 'prepaid', 'PULSATFXL125', 'Xl Pulsa Transfer 125.000', 'Pulsa Xl Rp 125.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 117648, NULL, 'available', 'XL', 'Pulsa', '2023-05-09 14:46:33', '2023-05-09 15:23:14'),
(472, 'prepaid', 'PULSATFXL150', 'Xl Pulsa Transfer 150.000', 'Pulsa Xl Rp 150.000 ( Tidak menambah masa aktif)', NULL, NULL, NULL, 145860, NULL, 'available', 'XL', 'Pulsa', '2023-05-09 14:46:33', '2023-05-09 15:23:14'),
(473, 'prepaid', 'DATAVOLSMART1', 'Smartfren Berbasis Volume 5.000', '500MB 24 jam + 1,5GB malam + 500MB chat + gratis nelpon sesama, 3 Hari', NULL, NULL, NULL, 5080, NULL, 'available', 'SMARTFREN', 'Data', '2023-05-09 14:46:33', '2023-05-09 15:23:14'),
(474, 'prepaid', 'DATAVOLSMART2', 'Smartfren Berbasis Volume 10.000', '1,25GB 24 jam + 1,75GB malam + 1GB chat + gratis nelpon sesama, 7 Hari', NULL, NULL, NULL, 9699, NULL, 'available', 'SMARTFREN', 'Data', '2023-05-09 14:46:33', '2023-05-09 15:23:14'),
(475, 'prepaid', 'DATAVOLSMART3', 'Smartfren Berbasis Volume 20.000', '2GB 24 jam + 3GB malam + 1GB chat + gratis nelpon sesama, 30 Hari', NULL, NULL, NULL, 18000, NULL, 'available', 'SMARTFREN', 'Data', '2023-05-09 14:46:33', '2023-05-09 15:23:14'),
(476, 'prepaid', 'DATAVOLSMART4', 'Smartfren Berbasis Volume 30.000', '4GB 24 jam + 4GB malam + 2GB chat + gratis nelpon sesama, 30 Hari', NULL, NULL, NULL, 22400, NULL, 'available', 'SMARTFREN', 'Data', '2023-05-09 14:46:33', '2023-05-09 15:23:14'),
(477, 'prepaid', 'DATAXLXTRA1', 'XL XTRA ON 1GB', 'Paket anti hangus, berlaku akumulasi, masa aktif paket unlimited. Bisa menambah masa aktif kartu 14 hari. Semua jaringan.', NULL, NULL, NULL, 14110, NULL, 'available', 'XL', 'Data', '2023-05-09 14:46:33', '2023-05-09 15:23:14'),
(478, 'prepaid', 'DATAXLXTRA2', 'XL XTRA ON 2GB', 'Paket anti hangus, berlaku akumulasi, masa aktif paket unlimited. Bisa menambah masa aktif kartu 14 hari. Semua jaringan.', NULL, NULL, NULL, 23560, NULL, 'available', 'XL', 'Data', '2023-05-09 14:46:33', '2023-05-09 15:23:14');
INSERT INTO `srv` (`id`, `type`, `code`, `name`, `note`, `min`, `max`, `refil`, `price`, `price_sale`, `status`, `brand`, `category`, `createdAt`, `updatedAt`) VALUES
(479, 'prepaid', 'VDTSEL5', 'Voucher Telkomsel 3.5 GB / 7 Hari (Jawa Barat)', 'Voucher Telkomsel Jawa Barat 3.5 GB / 7 Hari, daftar wilayah cek di https://www.telkomsel.com/en/voucherfisik', NULL, NULL, NULL, 18410, NULL, 'available', 'TELKOMSEL', 'Voucher', '2023-05-09 14:46:33', '2023-05-09 15:23:15'),
(480, 'prepaid', 'BRIZZI20', 'BRIZZI 20.000', 'Saldo BRIZZI 20.000. Wajib update saldo setelah pengisian sukses.', NULL, NULL, NULL, 20175, NULL, 'available', 'BRI BRIZZI', 'E-Money', '2023-05-09 14:46:33', '2023-05-09 15:23:15'),
(481, 'prepaid', 'BRIZZI2050', 'BRIZZI 50.000', 'Saldo BRIZZI 50.000. Wajib update saldo setelah pengisian sukses.', NULL, NULL, NULL, 50175, NULL, 'available', 'BRI BRIZZI', 'E-Money', '2023-05-09 14:46:33', '2023-05-09 15:23:15'),
(482, 'prepaid', 'BRIZZI100', 'BRIZZI 100.000', 'Saldo BRIZZI 100.000. Wajib update saldo setelah pengisian sukses.', NULL, NULL, NULL, 100300, NULL, 'available', 'BRI BRIZZI', 'E-Money', '2023-05-09 14:46:33', '2023-05-09 15:23:15'),
(483, 'prepaid', 'BRIZZI150', 'BRIZZI 150.000', 'Saldo BRIZZI 150.000. Wajib update saldo setelah pengisian sukses.', NULL, NULL, NULL, 150300, NULL, 'available', 'BRI BRIZZI', 'E-Money', '2023-05-09 14:46:34', '2023-05-09 15:23:15'),
(484, 'prepaid', 'BRIZZI200', 'BRIZZI 200.000', 'Saldo BRIZZI 200.000. Wajib update saldo setelah pengisian sukses.', NULL, NULL, NULL, 200300, NULL, 'available', 'BRI BRIZZI', 'E-Money', '2023-05-09 14:46:34', '2023-05-09 15:23:15'),
(485, 'prepaid', 'MANDIRI20', 'Mandiri E-Toll 20.000', 'Wajib update saldo setelah pengisian sukses.', NULL, NULL, NULL, 20260, NULL, 'available', 'MANDIRI E-TOLL', 'E-Money', '2023-05-09 14:46:34', '2023-05-09 15:23:15'),
(486, 'prepaid', 'MANDIRI25', 'Mandiri E-Toll 25.000', 'Wajib update saldo setelah pengisian sukses.', NULL, NULL, NULL, 25260, NULL, 'available', 'MANDIRI E-TOLL', 'E-Money', '2023-05-09 14:46:34', '2023-05-09 15:23:15'),
(487, 'prepaid', 'MANDIRI30', 'Mandiri E-Toll 30.000', 'Wajib update saldo setelah pengisian sukses.', NULL, NULL, NULL, 30525, NULL, 'available', 'MANDIRI E-TOLL', 'E-Money', '2023-05-09 14:46:34', '2023-05-09 15:23:15'),
(488, 'prepaid', 'MANDIRI40', 'Mandiri E-Toll 40.000', 'Wajib update saldo setelah pengisian sukses.', NULL, NULL, NULL, 40525, NULL, 'available', 'MANDIRI E-TOLL', 'E-Money', '2023-05-09 14:46:34', '2023-05-09 15:23:15'),
(489, 'prepaid', 'MANDIRI50', 'Mandiri E-Toll 50.000', 'Wajib update saldo setelah pengisian sukses.', NULL, NULL, NULL, 50275, NULL, 'available', 'MANDIRI E-TOLL', 'E-Money', '2023-05-09 14:46:34', '2023-05-09 15:23:15'),
(490, 'prepaid', 'MANDIRI75', 'Mandiri E-Toll 75.000', 'Wajib update saldo setelah pengisian sukses.', NULL, NULL, NULL, 75275, NULL, 'available', 'MANDIRI E-TOLL', 'E-Money', '2023-05-09 14:46:34', '2023-05-09 15:23:15'),
(491, 'prepaid', 'MANDIRI100', 'Mandiri E-Toll 100.000', 'Wajib update saldo setelah pengisian sukses.', NULL, NULL, NULL, 100150, NULL, 'available', 'MANDIRI E-TOLL', 'E-Money', '2023-05-09 14:46:34', '2023-05-09 15:23:15'),
(492, 'prepaid', 'MANDIRI150', 'Mandiri E-Toll 150.000', 'Wajib update saldo setelah pengisian sukses.', NULL, NULL, NULL, 152125, NULL, 'available', 'MANDIRI E-TOLL', 'E-Money', '2023-05-09 14:46:34', '2023-05-09 15:23:15'),
(493, 'prepaid', 'MANDIRI200', 'Mandiri E-Toll 200.000', 'Wajib update saldo setelah pengisian sukses.', NULL, NULL, NULL, 200990, NULL, 'available', 'MANDIRI E-TOLL', 'E-Money', '2023-05-09 14:46:34', '2023-05-09 15:23:15'),
(494, 'prepaid', 'MANDIRI250', 'Mandiri E-Toll 250.000', 'Wajib update saldo setelah pengisian sukses.', NULL, NULL, NULL, 250980, NULL, 'available', 'MANDIRI E-TOLL', 'E-Money', '2023-05-09 14:46:34', '2023-05-09 15:23:16'),
(495, 'prepaid', 'BNITAP20', 'Tapcash BNI 20.000', 'Tapcash BNI 20.000. Wajib update saldo setelah pengisian sukses.', NULL, NULL, NULL, 20925, NULL, 'available', 'TAPCASH BNI', 'E-Money', '2023-05-09 14:46:34', '2023-05-09 15:23:16'),
(496, 'prepaid', 'BNITAP50', 'Tapcash BNI 50.000', 'Tapcash BNI 50.000. Wajib update saldo setelah pengisian sukses.', NULL, NULL, NULL, 50940, NULL, 'available', 'TAPCASH BNI', 'E-Money', '2023-05-09 14:46:34', '2023-05-09 15:23:16'),
(497, 'prepaid', 'BNITAP100', 'Tapcash BNI 100.000', 'Tapcash BNI 100.000. Wajib update saldo setelah pengisian sukses.', NULL, NULL, NULL, 101940, NULL, 'available', 'TAPCASH BNI', 'E-Money', '2023-05-09 14:46:34', '2023-05-09 15:23:16'),
(498, 'prepaid', 'BNITAP250', 'Tapcash BNI 250.000', 'Tapcash BNI 250.000. Wajib update saldo setelah pengisian sukses.', NULL, NULL, NULL, 251940, NULL, 'available', 'TAPCASH BNI', 'E-Money', '2023-05-09 14:46:34', '2023-05-09 15:23:16'),
(499, 'prepaid', 'MITRASHOP50', 'Mitra Shopee 50.000', '-', NULL, NULL, NULL, 50425, NULL, 'available', 'Mitra Shopee', 'E-Money', '2023-05-09 14:46:34', '2023-05-09 15:23:16'),
(500, 'prepaid', 'MITRASHOP75', 'Mitra Shopee 75.000', '-', NULL, NULL, NULL, 75425, NULL, 'available', 'Mitra Shopee', 'E-Money', '2023-05-09 14:46:34', '2023-05-09 15:23:16'),
(501, 'prepaid', 'MITRASHOP100', 'Mitra Shopee 100.000', '-', NULL, NULL, NULL, 100425, NULL, 'available', 'Mitra Shopee', 'E-Money', '2023-05-09 14:46:34', '2023-05-09 15:23:16'),
(502, 'prepaid', 'MITRASHOP150', 'Mitra Shopee 150.000', '-', NULL, NULL, NULL, 150425, NULL, 'available', 'Mitra Shopee', 'E-Money', '2023-05-09 14:46:34', '2023-05-09 15:23:16'),
(503, 'prepaid', 'MITRASHOP200', 'Mitra Shopee 200.000', '-', NULL, NULL, NULL, 200425, NULL, 'available', 'Mitra Shopee', 'E-Money', '2023-05-09 14:46:34', '2023-05-09 15:23:17'),
(504, 'prepaid', 'MITRASHOP250', 'Mitra Shopee 250.000', '-', NULL, NULL, NULL, 250500, NULL, 'empty', 'Mitra Shopee', 'E-Money', '2023-05-09 14:46:35', '2023-05-09 15:23:17'),
(505, 'prepaid', 'GRABCUST20', 'Grab penumpang 20.000', '-', NULL, NULL, NULL, 19510, NULL, 'available', 'GRAB', 'E-Money', '2023-05-09 14:46:35', '2023-05-09 15:23:17'),
(506, 'prepaid', 'GRABCUST25', 'Grab penumpang 25.000', '-', NULL, NULL, NULL, 24510, NULL, 'available', 'GRAB', 'E-Money', '2023-05-09 14:46:35', '2023-05-09 15:23:17'),
(507, 'prepaid', 'GRABCUST40', 'Grab penumpang 40.000', '-', NULL, NULL, NULL, 39900, NULL, 'available', 'GRAB', 'E-Money', '2023-05-09 14:46:35', '2023-05-09 15:23:17'),
(508, 'prepaid', 'GRABCUST50', 'Grab penumpang 50.000', '-', NULL, NULL, NULL, 49525, NULL, 'available', 'GRAB', 'E-Money', '2023-05-09 14:46:35', '2023-05-09 15:23:17'),
(509, 'prepaid', 'GRABCUST75', 'Grab penumpang 75.000', '-', NULL, NULL, NULL, 74915, NULL, 'available', 'GRAB', 'E-Money', '2023-05-09 14:46:35', '2023-05-09 15:23:17'),
(510, 'prepaid', 'GRABCUST100', 'Grab penumpang 100.000', '-', NULL, NULL, NULL, 99525, NULL, 'available', 'GRAB', 'E-Money', '2023-05-09 14:46:35', '2023-05-09 15:23:17'),
(511, 'prepaid', 'GRABCUST150', 'Grab penumpang 150.000', '-', NULL, NULL, NULL, 149525, NULL, 'available', 'GRAB', 'E-Money', '2023-05-09 14:46:35', '2023-05-09 15:23:17'),
(512, 'prepaid', 'GRABCUST200', 'Grab penumpang 200.000', '-', NULL, NULL, NULL, 199525, NULL, 'available', 'GRAB', 'E-Money', '2023-05-09 14:46:35', '2023-05-09 15:23:17'),
(513, 'prepaid', 'GRAVDRIVE50', 'Grab driver 50.000', '-', NULL, NULL, NULL, 50825, NULL, 'available', 'GRAB', 'E-Money', '2023-05-09 14:46:35', '2023-05-09 15:23:17'),
(514, 'prepaid', 'GRAVDRIVE100', 'Grab driver 100.000', '-', NULL, NULL, NULL, 101100, NULL, 'available', 'GRAB', 'E-Money', '2023-05-09 14:46:35', '2023-05-09 15:23:17'),
(515, 'prepaid', 'GRAVDRIVE150', 'Grab driver 150.000', '-', NULL, NULL, NULL, 151100, NULL, 'available', 'GRAB', 'E-Money', '2023-05-09 14:46:35', '2023-05-09 15:23:17'),
(516, 'prepaid', 'GRAVDRIVE200', 'Grab driver 200.000', '-', NULL, NULL, NULL, 201100, NULL, 'available', 'GRAB', 'E-Money', '2023-05-09 14:46:35', '2023-05-09 15:23:17'),
(517, 'prepaid', 'SHOPFOOD25', 'Shopee Food Driver 25.000', '-', NULL, NULL, NULL, 25425, NULL, 'available', 'Shopee Food Driver', 'E-Money', '2023-05-09 14:46:35', '2023-05-09 15:23:17'),
(518, 'prepaid', 'SHOPFOOD50', 'Shopee Food Driver 50.000', '-', NULL, NULL, NULL, 50425, NULL, 'available', 'Shopee Food Driver', 'E-Money', '2023-05-09 14:46:35', '2023-05-09 15:23:18'),
(519, 'prepaid', 'SHOPFOOD100', 'Shopee Food Driver 100.000', '-', NULL, NULL, NULL, 100425, NULL, 'available', 'Shopee Food Driver', 'E-Money', '2023-05-09 14:46:35', '2023-05-09 15:23:18'),
(520, 'prepaid', 'SHOPFOOD150', 'Shopee Food Driver 150.000', '-', NULL, NULL, NULL, 150425, NULL, 'available', 'Shopee Food Driver', 'E-Money', '2023-05-09 14:46:35', '2023-05-09 15:23:18'),
(521, 'prepaid', 'SHOPFOOD200', 'Shopee Food Driver 200.000', '-', NULL, NULL, NULL, 200425, NULL, 'available', 'Shopee Food Driver', 'E-Money', '2023-05-09 14:46:35', '2023-05-09 15:23:18'),
(522, 'prepaid', 'SAKUKU20', 'Sakuku 20.000', 'masukkan nomor hp terdaftar pada Sakuku', NULL, NULL, NULL, 20275, NULL, 'available', 'Sakuku', 'E-Money', '2023-05-09 14:46:35', '2023-05-09 15:23:18'),
(523, 'prepaid', 'SAKUKU25', 'Sakuku 25.000', 'masukkan nomor hp terdaftar pada Sakuku', NULL, NULL, NULL, 25275, NULL, 'available', 'Sakuku', 'E-Money', '2023-05-09 14:46:35', '2023-05-09 15:23:18'),
(524, 'prepaid', 'SAKUKU30', 'Sakuku 30.000', 'masukkan nomor hp terdaftar pada Sakuku', NULL, NULL, NULL, 30275, NULL, 'available', 'Sakuku', 'E-Money', '2023-05-09 14:46:36', '2023-05-09 15:23:18'),
(525, 'prepaid', 'SAKUKU35', 'Sakuku 35.000', 'masukkan nomor hp terdaftar pada Sakuku', NULL, NULL, NULL, 35275, NULL, 'available', 'Sakuku', 'E-Money', '2023-05-09 14:46:36', '2023-05-09 15:23:18'),
(526, 'prepaid', 'SAKUKU40', 'Sakuku 40.000', 'masukkan nomor hp terdaftar pada Sakuku', NULL, NULL, NULL, 40275, NULL, 'available', 'Sakuku', 'E-Money', '2023-05-09 14:46:36', '2023-05-09 15:23:18'),
(527, 'prepaid', 'SAKUKU45', 'Sakuku 45.000', 'masukkan nomor hp terdaftar pada Sakuku', NULL, NULL, NULL, 45275, NULL, 'available', 'Sakuku', 'E-Money', '2023-05-09 14:46:36', '2023-05-09 15:23:18'),
(528, 'prepaid', 'SAKUKU50', 'Sakuku 50.000', 'masukkan nomor hp terdaftar pada Sakuku', NULL, NULL, NULL, 50275, NULL, 'available', 'Sakuku', 'E-Money', '2023-05-09 14:46:36', '2023-05-09 15:23:18'),
(529, 'prepaid', 'ISAKU10', 'i.saku 10.000', 'saldo i.saku 10.000', NULL, NULL, NULL, 10960, NULL, 'available', 'i.saku', 'E-Money', '2023-05-09 14:46:36', '2023-05-09 15:23:18'),
(530, 'prepaid', 'ISAKU15', 'i.saku 15.000', 'saldo i.saku 15.000', NULL, NULL, NULL, 15985, NULL, 'available', 'i.saku', 'E-Money', '2023-05-09 14:46:36', '2023-05-09 15:23:18'),
(531, 'prepaid', 'ISAKU20', 'i.saku 20.000', 'saldo i.saku 20.000', NULL, NULL, NULL, 20985, NULL, 'available', 'i.saku', 'E-Money', '2023-05-09 14:46:36', '2023-05-09 15:23:18'),
(532, 'prepaid', 'ISAKU25', 'i.saku 25.000', 'saldo i.saku 25.000', NULL, NULL, NULL, 26000, NULL, 'available', 'i.saku', 'E-Money', '2023-05-09 14:46:36', '2023-05-09 15:23:18'),
(533, 'prepaid', 'ISAKU30', 'i.saku 30.000', 'saldo i.saku 30.000', NULL, NULL, NULL, 31000, NULL, 'available', 'i.saku', 'E-Money', '2023-05-09 14:46:36', '2023-05-09 15:23:18'),
(534, 'prepaid', 'ISAKU35', 'i.saku 35.000', 'saldo i.saku 35.000', NULL, NULL, NULL, 36000, NULL, 'available', 'i.saku', 'E-Money', '2023-05-09 14:46:36', '2023-05-09 15:23:18'),
(535, 'prepaid', 'ISAKU40', 'i.saku 40.000', 'saldo i.saku 40.000', NULL, NULL, NULL, 41000, NULL, 'available', 'i.saku', 'E-Money', '2023-05-09 14:46:36', '2023-05-09 15:23:18'),
(536, 'prepaid', 'ISAKU45', 'i.saku 45.000', 'saldo i.saku 45.000', NULL, NULL, NULL, 46000, NULL, 'available', 'i.saku', 'E-Money', '2023-05-09 14:46:36', '2023-05-09 15:23:19'),
(537, 'prepaid', 'ISAKU50', 'i.saku 50.000', 'saldo i.saku 50.000', NULL, NULL, NULL, 51000, NULL, 'available', 'i.saku', 'E-Money', '2023-05-09 14:46:36', '2023-05-09 15:23:19'),
(538, 'prepaid', 'MAXIM20', 'Maxim Driver 20.000', 'masukkan Maxim Driver ID sebagai nomor tujuan', NULL, NULL, NULL, 21700, NULL, 'available', 'MAXIM', 'E-Money', '2023-05-09 14:46:36', '2023-05-09 15:23:19'),
(539, 'prepaid', 'MAXIM30', 'Maxim Driver 30.000', 'masukkan Maxim Driver ID sebagai nomor tujuan', NULL, NULL, NULL, 31700, NULL, 'available', 'MAXIM', 'E-Money', '2023-05-09 14:46:36', '2023-05-09 15:23:19'),
(540, 'prepaid', 'MAXIM40', 'Maxim Driver 40.000', 'masukkan Maxim Driver ID sebagai nomor tujuan', NULL, NULL, NULL, 41700, NULL, 'available', 'MAXIM', 'E-Money', '2023-05-09 14:46:36', '2023-05-09 15:23:19'),
(541, 'prepaid', 'MAXIM50', 'Maxim Driver 50.000', 'masukkan Maxim Driver ID sebagai nomor tujuan', NULL, NULL, NULL, 51700, NULL, 'available', 'MAXIM', 'E-Money', '2023-05-09 14:46:36', '2023-05-09 15:23:19'),
(542, 'prepaid', 'MAXIM75', 'Maxim Driver 75.000', 'masukkan Maxim Driver ID sebagai nomor tujuan', NULL, NULL, NULL, 77525, NULL, 'available', 'MAXIM', 'E-Money', '2023-05-09 14:46:36', '2023-05-09 15:23:19'),
(543, 'prepaid', 'MAXIM100', 'Maxim Driver 100.000', 'masukkan Maxim Driver ID sebagai nomor tujuan', NULL, NULL, NULL, 101645, NULL, 'available', 'MAXIM', 'E-Money', '2023-05-09 14:46:36', '2023-05-09 15:23:19'),
(544, 'prepaid', 'DATAXLHS3', 'XL XTRA Hotrod Special 3 GB / 7 Hari', 'XL XTRA Hotrod Special 3 GB / 7 Hari', NULL, NULL, NULL, 14900, NULL, 'available', 'XL', 'Data', '2023-05-09 14:46:36', '2023-05-09 15:23:19'),
(545, 'prepaid', 'DATAXLHS4', 'XL XTRA Hotrod Special 4.5 GB / 7 Hari', 'XL XTRA Hotrod Special 4.5 GB / 7 Hari', NULL, NULL, NULL, 19800, NULL, 'available', 'XL', 'Data', '2023-05-09 14:46:36', '2023-05-09 15:23:19'),
(546, 'prepaid', 'DATAXLHS5', 'XL XTRA Hotrod Special 6.5 GB / 7 Hari', 'XL XTRA Hotrod Special 6.5 GB / 7 Hari', NULL, NULL, NULL, 25000, NULL, 'available', 'XL', 'Data', '2023-05-09 14:46:36', '2023-05-09 15:23:19'),
(547, 'prepaid', 'DATAXLHS2', 'XL XTRA Hotrod Special 2 GB / 7 Hari', 'XL XTRA Hotrod Special 2 GB / 7 Hari', NULL, NULL, NULL, 11700, NULL, 'available', 'XL', 'Data', '2023-05-09 14:46:37', '2023-05-09 15:23:19'),
(548, 'prepaid', 'DANA250', 'DANA 250.000', '-', NULL, NULL, NULL, 250075, NULL, 'available', 'DANA', 'E-Money', '2023-05-09 14:46:37', '2023-05-09 15:23:19'),
(549, 'prepaid', 'DANA300', 'DANA 300.000', '-', NULL, NULL, NULL, 300075, NULL, 'available', 'DANA', 'E-Money', '2023-05-09 14:46:37', '2023-05-09 15:23:19'),
(550, 'prepaid', 'DANA350', 'DANA 350.000', '-', NULL, NULL, NULL, 350120, NULL, 'available', 'DANA', 'E-Money', '2023-05-09 14:46:37', '2023-05-09 15:23:19'),
(551, 'prepaid', 'DANA400', 'DANA 400.000', '-', NULL, NULL, NULL, 400075, NULL, 'available', 'DANA', 'E-Money', '2023-05-09 14:46:37', '2023-05-09 15:23:20'),
(552, 'prepaid', 'DANA500', 'DANA 500.000', '-', NULL, NULL, NULL, 500075, NULL, 'available', 'DANA', 'E-Money', '2023-05-09 14:46:37', '2023-05-09 15:23:20'),
(553, 'prepaid', 'INXL1', 'Aktivasi Voucher XL XTRA Hotrod Special 2 GB 7 Hari', 'Produk ini untuk isi Voucher kosongan.', NULL, NULL, NULL, 11900, NULL, 'available', 'XL', 'Aktivasi Voucher', '2023-05-09 14:46:37', '2023-05-09 15:23:20'),
(554, 'prepaid', 'INXL2', 'Aktivasi Voucher XL XTRA Hotrod Special 3 GB 7 Hari', 'Produk ini untuk isi Voucher kosongan.', NULL, NULL, NULL, 15100, NULL, 'available', 'XL', 'Aktivasi Voucher', '2023-05-09 14:46:37', '2023-05-09 15:23:20'),
(555, 'prepaid', 'INXL3', 'Aktivasi Voucher XL XTRA Hotrod Special 4.5 GB 7 Hari', 'Produk ini untuk isi Voucher kosongan.', NULL, NULL, NULL, 19900, NULL, 'available', 'XL', 'Aktivasi Voucher', '2023-05-09 14:46:37', '2023-05-09 15:23:20'),
(556, 'prepaid', 'INXL4', 'Aktivasi Voucher XL XTRA Hotrod Special 6.5 GB 7 Hari', 'Produk ini untuk isi Voucher kosongan.', NULL, NULL, NULL, 25000, NULL, 'available', 'XL', 'Aktivasi Voucher', '2023-05-09 14:46:37', '2023-05-09 15:23:20'),
(557, 'prepaid', 'INXLFS', 'Aktivasi Voucher XL Xtra Combo Flex S', 'Produk ini untuk isi Voucher kosongan. 1.5 GB utama, tambahan kuota lokal, 5 menit semua op, 30 Hari.', NULL, NULL, NULL, 16300, NULL, 'available', 'XL', 'Aktivasi Voucher', '2023-05-09 14:46:37', '2023-05-09 15:23:20'),
(558, 'prepaid', 'INXLFSP', 'Aktivasi Voucher XL Xtra Combo Flex S+', 'Produk ini untuk isi Voucher kosongan. 3 GB utama, tambahan kuota lokal, 5 menit semua op, 30 Hari', NULL, NULL, NULL, 26677, NULL, 'available', 'XL', 'Aktivasi Voucher', '2023-05-09 14:46:37', '2023-05-09 15:23:20'),
(559, 'prepaid', 'INXLFM', 'Aktivasi Voucher XL Xtra Combo Flex M', 'Produk ini untuk isi Voucher kosongan. 4 GB utama, tambahan kuota lokal, 5 menit semua op, 30 Hari.', NULL, NULL, NULL, 36800, NULL, 'available', 'XL', 'Aktivasi Voucher', '2023-05-09 14:46:37', '2023-05-09 15:23:20'),
(560, 'prepaid', 'INXLFL', 'Aktivasi Voucher XL Xtra Combo Flex L', 'Produk ini untuk isi Voucher kosongan. 9 GB utama, tambahan kuota lokal, 5 menit semua op, 30 Hari.', NULL, NULL, NULL, 55300, NULL, 'available', 'XL', 'Aktivasi Voucher', '2023-05-09 14:46:37', '2023-05-09 15:23:20'),
(561, 'prepaid', 'INXLFXL', 'Aktivasi Voucher XL Xtra Combo Flex XL', 'Produk ini untuk isi Voucher kosongan. 15 GB utama, tambahan kuota lokal, 5 menit semua op, 30 Hari.', NULL, NULL, NULL, 78200, NULL, 'available', 'XL', 'Aktivasi Voucher', '2023-05-09 14:46:37', '2023-05-09 15:23:20'),
(562, 'prepaid', 'DATATSELOMG1', 'Telkomsel Data OMG 25.000', 'Data 300 MB - 750MB + 1GB OMG berlaku 30 hari, kuota yang didapat sesuai zona, cek di *363*46#', NULL, NULL, NULL, 24910, NULL, 'available', 'TELKOMSEL', 'Data', '2023-05-09 14:46:37', '2023-05-09 15:23:20'),
(563, 'prepaid', 'DATATSELOMG2', 'Telkomsel Data OMG 30.000', '3 GB + 1 GB OMG, kuota yang didapat sesuai zona, cek di *363*46#', NULL, NULL, NULL, 29850, NULL, 'available', 'TELKOMSEL', 'Data', '2023-05-09 14:46:37', '2023-05-09 15:23:20'),
(564, 'prepaid', 'DATATSELOMG3', 'Telkomsel Data OMG 50.000', 'Inet+OMG Zona RP50RB (2.5GB+1GB - 5.5GB+1GB OMG 30HR), kuota yang didapat sesuai zona, cek di *363*46#', NULL, NULL, NULL, 54625, NULL, 'available', 'TELKOMSEL', 'Data', '2023-05-09 14:46:37', '2023-05-09 15:23:20'),
(565, 'prepaid', 'DATATSELOMG4', 'Telkomsel Data OMG 75.000', 'Inet+OMG Zona RP75RB (3.5GB+2GB - 8.5GB+2GB OMG 30HR), kuota yang didapat sesuai zona, cek di *363*46#', NULL, NULL, NULL, 74425, NULL, 'available', 'TELKOMSEL', 'Data', '2023-05-09 14:46:37', '2023-05-09 15:23:20'),
(566, 'prepaid', 'DATATSELH1', 'Telkomsel Data 1.5 GB / 3 Hari (Jawa Barat)', 'Telkomsel Data 1.5 GB / 3 Hari (Jawa Barat)', NULL, NULL, NULL, 7350, NULL, 'available', 'TELKOMSEL', 'Data', '2023-05-09 14:46:38', '2023-05-09 15:23:21'),
(567, 'prepaid', 'DATATSELH2', 'Telkomsel Data 2.5 GB / 5 Hari (Jawa Barat)', 'Telkomsel Data 2.5 GB / 5 Hari (Jawa Barat)', NULL, NULL, NULL, 10750, NULL, 'available', 'TELKOMSEL', 'Data', '2023-05-09 14:46:38', '2023-05-09 15:23:21'),
(568, 'prepaid', 'DATATSELH4', 'Telkomsel Data 3.5 GB / 7 Hari (Jawa Barat)', 'Telkomsel Data 3.5 GB / 7 Hari (Jawa Barat)', NULL, NULL, NULL, 18300, NULL, 'empty', 'TELKOMSEL', 'Data', '2023-05-09 14:46:38', '2023-05-09 15:23:21'),
(569, 'prepaid', 'DATATSELH3', 'Telkomsel Data 4.5 GB / 5 Hari (Jawa Barat)', 'Telkomsel Data 4.5 GB / 5 Hari (Jawa Barat)', NULL, NULL, NULL, 18710, NULL, 'empty', 'TELKOMSEL', 'Data', '2023-05-09 14:46:38', '2023-05-09 15:23:21'),
(570, 'prepaid', 'DATATSELH5', 'Telkomsel Data 5.5 GB / 5 Hari (Jawa Barat)', 'Telkomsel Data 5.5 GB / 5 Hari (Jawa Barat)', NULL, NULL, NULL, 22510, NULL, 'empty', 'TELKOMSEL', 'Data', '2023-05-09 14:46:38', '2023-05-09 15:23:21'),
(571, 'prepaid', 'DATATSELH6', 'Telkomsel Data 4 GB / 30 Hari (Jawa Barat)', 'Telkomsel Data 4 GB / 30 Hari (Jawa Barat)', NULL, NULL, NULL, 32095, NULL, 'empty', 'TELKOMSEL', 'Data', '2023-05-09 14:46:38', '2023-05-09 15:23:21'),
(572, 'prepaid', 'DATAINDFREE3', 'Indosat Freedom Internet 2.5 GB / 5 Hari', 'cek di link https://www.indosatooredoo.com/portal/id/psfreedominternet', NULL, NULL, NULL, 10975, NULL, 'available', 'INDOSAT', 'Data', '2023-05-09 14:46:38', '2023-05-09 15:23:21'),
(573, 'prepaid', 'DATAINDFREE4', 'Indosat Freedom Internet 5 GB / 5 Hari', 'cek di link https://www.indosatooredoo.com/portal/id/psfreedominternet', NULL, NULL, NULL, 14700, NULL, 'available', 'INDOSAT', 'Data', '2023-05-09 14:46:38', '2023-05-09 15:23:21'),
(574, 'prepaid', 'DATAINDFREE5', 'Indosat Freedom Internet 7 GB / 5 Hari', 'cek di link https://www.indosatooredoo.com/portal/id/psfreedominternet', NULL, NULL, NULL, 20085, NULL, 'available', 'INDOSAT', 'Data', '2023-05-09 14:46:38', '2023-05-09 15:23:21'),
(575, 'prepaid', 'DATAINDFREE6', 'Indosat Freedom Internet 3 GB / 30 Hari', 'INDOSAT DATA FREEDOM 3GB FULL 24 JAM NASIONAL, 30HARI', NULL, NULL, NULL, 16835, NULL, 'available', 'INDOSAT', 'Data', '2023-05-09 14:46:38', '2023-05-09 15:23:21'),
(576, 'prepaid', 'DATAINDFREE7', 'Indosat Freedom Internet 5.5 GB / 30 Hari', 'Indosat Freedom 5.5 GB / 30 Hari', NULL, NULL, NULL, 27219, NULL, 'available', 'INDOSAT', 'Data', '2023-05-09 14:46:38', '2023-05-09 15:23:21'),
(577, 'prepaid', 'DATAINDFREE8', 'Indosat Freedom Internet 9 GB / 30 Hari', 'Indosat Freedom 9 GB / 30 Hari', NULL, NULL, NULL, 38040, NULL, 'available', 'INDOSAT', 'Data', '2023-05-09 14:46:38', '2023-05-09 15:23:22'),
(578, 'prepaid', 'DATAINDFREE10', 'Indosat Freedom Internet 16 GB / 30 Hari', 'Indosat Freedom 16 GB / 30 Hari', NULL, NULL, NULL, 58245, NULL, 'available', 'INDOSAT', 'Data', '2023-05-09 14:46:39', '2023-05-09 15:23:22'),
(579, 'prepaid', 'DATAAXISMINI1', 'Axis Data Mini 1.5 GB / 3 Hari', '-', NULL, NULL, NULL, 8844, NULL, 'available', 'AXIS', 'Data', '2023-05-09 14:46:39', '2023-05-09 15:23:22'),
(580, 'prepaid', 'DATAAXISMINI3', 'Axis Data Mini 1.5 GB / 5 Hari', '-', NULL, NULL, NULL, 9300, NULL, 'available', 'AXIS', 'Data', '2023-05-09 14:46:39', '2023-05-09 15:23:22'),
(581, 'prepaid', 'DATAAXISMINI4', 'Axis Data Mini 2 GB / 5 Hari', '-', NULL, NULL, NULL, 13356, NULL, 'available', 'AXIS', 'Data', '2023-05-09 14:46:39', '2023-05-09 15:23:22'),
(582, 'prepaid', 'DATAAXISMINI5', 'Axis Data Mini 3 GB / 5 Hari', '-', NULL, NULL, NULL, 15960, NULL, 'available', 'AXIS', 'Data', '2023-05-09 14:46:39', '2023-05-09 15:23:22'),
(583, 'prepaid', 'DATAAXISMINI6', 'Axis Data Mini 5 GB / 5 Hari', '-', NULL, NULL, NULL, 20927, NULL, 'available', 'AXIS', 'Data', '2023-05-09 14:46:39', '2023-05-09 15:23:22'),
(584, 'prepaid', 'DATAAXISMINI7', 'Axis Data Mini 3 GB / 15 Hari', '-', NULL, NULL, NULL, 20900, NULL, 'empty', 'AXIS', 'Data', '2023-05-09 14:46:39', '2023-05-09 15:23:22'),
(585, 'prepaid', 'DATAAXISMINI8', 'Axis Data Mini 5 GB / 15 Hari', '-', NULL, NULL, NULL, 33900, NULL, 'empty', 'AXIS', 'Data', '2023-05-09 14:46:39', '2023-05-09 15:23:22'),
(586, 'prepaid', 'DATATRIAON1', 'AlwaysOn 2.5 GB', '2.5 GB Nasional, Mengikuti Masa Aktif Kartu', NULL, NULL, NULL, 14293, NULL, 'available', 'TRI', 'Data', '2023-05-09 14:46:39', '2023-05-09 15:23:22'),
(587, 'prepaid', 'DATATRIAON2', 'AlwaysOn 3.5 GB', '3.5 GB Nasional, Mengikuti Masa Aktif Kartu', NULL, NULL, NULL, 18233, NULL, 'available', 'TRI', 'Data', '2023-05-09 14:46:39', '2023-05-09 15:23:22'),
(588, 'prepaid', 'DATATRIAON3', 'AlwaysOn 6 GB', '6 GB Nasional, Mengikuti Masa Aktif Kartu', NULL, NULL, NULL, 26128, NULL, 'available', 'TRI', 'Data', '2023-05-09 14:46:39', '2023-05-09 15:23:22'),
(589, 'prepaid', 'DATATRIAON4', 'AlwaysOn 9 GB', '9 GB Nasional, Mengikuti Masa Aktif Kartu', NULL, NULL, NULL, 37899, NULL, 'available', 'TRI', 'Data', '2023-05-09 14:46:39', '2023-05-09 15:23:22'),
(590, 'prepaid', 'DATATRIHERO1', 'Tri Data H3RO UL1 + Voucher FF', 'Kuota Reguler 1 GB, kuota games unlimited FUP 512 MB per hari, voucher games 12 diamond FF, masa aktif 7 Hari.', NULL, NULL, NULL, 14060, NULL, 'available', 'TRI', 'Data', '2023-05-09 14:46:39', '2023-05-09 15:23:22'),
(591, 'prepaid', 'DATATRIHERO2', 'Tri Data H3RO UL1 + Voucher MLBB', 'Kuota Reguler 1 GB, kuota games unlimited FUP 512 MB per hari, voucher games 12 diamond MLBB, masa aktif 7 Hari.', NULL, NULL, NULL, 14060, NULL, 'available', 'TRI', 'Data', '2023-05-09 14:46:39', '2023-05-09 15:23:22'),
(592, 'prepaid', 'DATATRIHAPPY2', 'Tri Data Happy 1 GB / 3 Hari', 'Tri Data Happy 1 GB / 3 Hari', NULL, NULL, NULL, 5718, NULL, 'available', 'TRI', 'Data', '2023-05-09 14:46:40', '2023-05-09 15:23:22'),
(593, 'prepaid', 'DATATRIHAPPY3', 'Tri Data Happy 3 GB / 3 Hari', 'Tri Data Happy 3 GB / 3 Hari', NULL, NULL, NULL, 8575, NULL, 'available', 'TRI', 'Data', '2023-05-09 14:46:40', '2023-05-09 15:23:22'),
(594, 'prepaid', 'DATATRIHAPPY4', 'Tri Data Happy 2 GB / 5 Hari', 'Tri Data Happy 2 GB / 5 Hari', NULL, NULL, NULL, 8580, NULL, 'available', 'TRI', 'Data', '2023-05-09 14:46:40', '2023-05-09 15:23:22'),
(595, 'prepaid', 'DATATRIHAPPY5', 'Tri Data Happy 3.5 GB / 5 Hari', 'Tri Data Happy 3.5 GB / 5 Hari', NULL, NULL, NULL, 12520, NULL, 'available', 'TRI', 'Data', '2023-05-09 14:46:40', '2023-05-09 15:23:22'),
(596, 'prepaid', 'DATATRIHAPPY6', 'Tri Data Happy 6 GB / 5 Hari', 'Tri Data Happy 6 GB / 5 Hari', NULL, NULL, NULL, 16460, NULL, 'available', 'TRI', 'Data', '2023-05-09 14:46:40', '2023-05-09 15:23:23'),
(597, 'prepaid', 'DATATRIHAPPY7', 'Tri Data Happy 9 GB / 10 Hari', 'Tri Data Happy 9 GB / 10 Hari', NULL, NULL, NULL, 25635, NULL, 'available', 'TRI', 'Data', '2023-05-09 14:46:40', '2023-05-09 15:23:23'),
(598, 'prepaid', 'DATATRIHAPPY8', 'Tri Data Happy 4.5 GB / 30 Hari', 'Tri Data Happy 4.5 GB / 30 Hari', NULL, NULL, NULL, 19010, NULL, 'available', 'TRI', 'Data', '2023-05-09 14:46:40', '2023-05-09 15:23:23'),
(599, 'prepaid', 'DATATRIHAPPY9', 'Tri Data Happy 7 GB / 30 Hari', 'Tri Data Happy 7 GB / 30 Hari', NULL, NULL, NULL, 26103, NULL, 'available', 'TRI', 'Data', '2023-05-09 14:46:40', '2023-05-09 15:23:23'),
(600, 'prepaid', 'DATATRIHAPPY1', 'Tri Data Happy 1 GB / 1 Hari', 'Tri Data Happy 1 GB / 1 Hari', NULL, NULL, NULL, 2985, NULL, 'available', 'TRI', 'Data', '2023-05-09 14:46:40', '2023-05-09 15:23:23'),
(601, 'prepaid', 'INVDIM31', 'Aktivasi Voucher Indosat Jawa Barat Freedom Internet 3 GB / 30 Hari', 'Aktivasi Voucher Indosat Jawa Barat Freedom Internet 3 GB / 30 Hari', NULL, NULL, NULL, 17025, NULL, 'empty', 'INDOSAT', 'Aktivasi Voucher', '2023-05-09 14:46:40', '2023-05-09 15:23:23'),
(602, 'prepaid', 'INVDIM32', 'Aktivasi Voucher Indosat Jawa Barat Freedom Internet 5.5 GB / 30 Hari', 'Aktivasi Voucher Indosat Jawa Barat Freedom Internet 5.5 GB / 30 Hari', NULL, NULL, NULL, 28170, NULL, 'empty', 'INDOSAT', 'Aktivasi Voucher', '2023-05-09 14:46:40', '2023-05-09 15:23:23'),
(603, 'prepaid', 'INVDIM33', 'Aktivasi Voucher Indosat Jawa Barat Freedom Combo 10 GB / 30 Hari', 'Aktivasi Voucher Indosat Jawa Barat Freedom Combo 10 GB / 30 Hari', NULL, NULL, NULL, 40680, NULL, 'empty', 'INDOSAT', 'Aktivasi Voucher', '2023-05-09 14:46:40', '2023-05-09 15:23:23'),
(604, 'prepaid', 'INJVDIM3CWJ1', 'Aktivasi Voucher Indosat CWJ Freedom Internet Harian 1 GB / 2 Hari', 'Aktivasi Voucher Indosat CWJ Freedom Internet Harian 1 GB / 2 Hari, daerah Jawa Tengah - Jawa Barat', NULL, NULL, NULL, 4900, NULL, 'available', 'INDOSAT', 'Aktivasi Voucher', '2023-05-09 14:46:40', '2023-05-09 15:23:23'),
(605, 'prepaid', 'INJVDIM3CWJ3', 'Aktivasi Voucher Indosat CWJ Freedom Internet Harian 2.5 GB / 5 Hari', 'Aktivasi Voucher Indosat CWJ Freedom Internet Harian 2.5 GB / 5 Hari, daerah Jawa Tengah - Jawa Barat', NULL, NULL, NULL, 10675, NULL, 'empty', 'INDOSAT', 'Aktivasi Voucher', '2023-05-09 14:46:41', '2023-05-09 15:23:23'),
(606, 'prepaid', 'INJVDIM3CWJ4', 'Aktivasi Voucher Indosat CWJ Freedom Internet Harian 5 GB / 5 Hari', 'Aktivasi Voucher Indosat CWJ Freedom Internet Harian 5 GB / 5 Hari, daerah Jawa Tengah - Jawa Barat', NULL, NULL, NULL, 14500, NULL, 'available', 'INDOSAT', 'Aktivasi Voucher', '2023-05-09 14:46:41', '2023-05-09 15:23:23'),
(607, 'prepaid', 'INJVDIM3CWJ5', 'Aktivasi Voucher Indosat CWJ Freedom Internet Harian 7 GB / 7 Hari', 'Aktivasi Voucher Indosat CWJ Freedom Internet Harian 7 GB / 7 Hari, daerah Jawa Tengah - Jawa Barat', NULL, NULL, NULL, 19300, NULL, 'available', 'INDOSAT', 'Aktivasi Voucher', '2023-05-09 14:46:41', '2023-05-09 15:23:23'),
(608, 'prepaid', 'VDIM3JABAR', 'Voucher Indosat CWJ Freedom Internet Harian 2.5 GB / 5 Hari', 'Voucher Indosat CWJ Freedom Internet Harian 2.5 GB / 5 Hari, daerah Jawa Tengah - Jawa Barat', NULL, NULL, NULL, 10910, NULL, 'available', 'INDOSAT', 'Voucher', '2023-05-09 14:46:41', '2023-05-09 15:23:23');

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
  `status` enum('pending','active','disabled') DEFAULT 'pending',
  `uplink` varchar(255) DEFAULT NULL,
  `imageProfil` varchar(255) DEFAULT NULL,
  `confirmationCode` varchar(255) DEFAULT NULL,
  `referal` varchar(255) DEFAULT NULL,
  `refreshToken` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `phoneNumber`, `address`, `logged`, `pin`, `balance`, `commision`, `point`, `status`, `uplink`, `imageProfil`, `confirmationCode`, `referal`, `refreshToken`, `createdAt`, `updatedAt`) VALUES
(19, 'Maulana', 'rizki.ilhami31@gmail.com', '$2b$10$pw4v0j7o2hQc5BElSd2JDOdRHJQ.PjDZCpzs7MegyjxniidRC5AUS', 'user', NULL, NULL, NULL, NULL, 38000, NULL, NULL, 'active', NULL, NULL, '655171', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE5LCJuYW1lIjoiTWF1bGFuYSIsImVtYWlsIjoicml6a2kuaWxoYW1pMzFAZ21haWwuY29tIiwicm9sZSI6InVzZXIiLCJsb2dpbiI6MSwiaWF0IjoxNjgzNzE5MDQ3LCJleHAiOjE2ODM4MDU0NDd9.rQFmvdMh7fXl492FGtYMe89qXUVcUdozpdx1hQXeWWc', '2023-05-04 07:59:34', '2023-05-10 11:44:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `mutation`
--
ALTER TABLE `mutation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `srv`
--
ALTER TABLE `srv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `marketplace_brand`
--
ALTER TABLE `marketplace_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `marketplace_category`
--
ALTER TABLE `marketplace_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `marketplace_product`
--
ALTER TABLE `marketplace_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `mutation`
--
ALTER TABLE `mutation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `srv`
--
ALTER TABLE `srv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=609;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
