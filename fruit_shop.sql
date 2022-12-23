-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2022 at 07:11 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fruit_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `Cart_ID` char(5) NOT NULL,
  `Receipt_No` char(7) NOT NULL,
  `Fruit_ID` char(5) NOT NULL,
  `Time_stamp` datetime DEFAULT NULL,
  `Quantity` int(4) DEFAULT NULL COMMENT '(Kg)',
  `Payment_balance` float DEFAULT NULL,
  `Payment_methods` varchar(20) DEFAULT NULL,
  `Payment_status` tinyint(1) DEFAULT NULL COMMENT '** 1 คือ Yes, 0 คือ No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`Cart_ID`, `Receipt_No`, `Fruit_ID`, `Time_stamp`, `Quantity`, `Payment_balance`, `Payment_methods`, `Payment_status`) VALUES
('O0001', 'BI00001', 'FG001', '2022-08-20 18:27:00', 2, 258, 'Bank Transfer', 1),
('O0001', 'BI00001', 'FM010', '2022-08-20 18:27:00', 3, 135, 'Bank Transfer', 1),
('O0001', 'BI00001', 'FT003', '2022-08-20 18:27:00', 1, 55, 'Bank Transfer', 1),
('O0002', 'BI00002', 'FZ022', '2022-08-20 19:21:00', 3, 84, 'Bank Transfer', 1),
('O0003', 'BI00003', 'FP036', '2022-08-20 20:17:00', 2, 44, 'Bank Transfer', 0),
('O0004', 'BI00004', 'FT003', '2022-08-21 13:12:00', 3, 165, 'Cash', 1),
('O0005', 'BI00005', 'FM010', '2022-08-22 16:20:00', 1, 45, 'Bank Transfer', 0),
('O0005', 'BI00005', 'FP036', '2022-08-22 16:20:00', 3, 66, 'Bank Transfer', 0),
('O0006', 'BI00006', 'FT003', '2022-09-17 15:38:00', 1, 45, 'Cash', 0),
('O0006', 'BI00006', 'FZ022', '2022-09-17 15:38:00', 2, 56, 'Cash', 0),
('O0007', 'BI00007', 'FA012', '2022-09-21 18:15:00', 3, 60, 'Cash', 0),
('O0007', 'BI00007', 'FB013', '2022-09-21 18:15:00', 2, 120, 'Cash', 0),
('O0008', 'BI00008', 'FM010', '2022-09-22 08:55:00', 1, 45, 'Bank Transfer', 0),
('O0008', 'BI00008', 'FT003', '2022-09-22 08:55:00', 1, 55, 'Bank Transfer', 0),
('O0009', 'BI00009', 'FC014', '2022-09-22 14:37:00', 1, 200, 'Bank Transfer', 1),
('O0010', 'BI00010', 'FP036', '2022-09-24 20:43:00', 3, 66, 'Bank Transfer', 1),
('O0010', 'BI00010', 'FZ022', '2022-09-24 20:43:00', 3, 84, 'Bank Transfer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `User_ID` char(5) NOT NULL,
  `First_name` varchar(20) DEFAULT NULL,
  `Last_name` varchar(20) DEFAULT NULL,
  `House_No` varchar(10) DEFAULT NULL,
  `Postcode` char(5) DEFAULT NULL,
  `Account_Number` varchar(20) DEFAULT NULL,
  `Bank` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`User_ID`, `First_name`, `Last_name`, `House_No`, `Postcode`, `Account_Number`, `Bank`) VALUES
('A0001', 'Thanakrit', 'Jaroenkit', '16/1', '10110', '201-753614-3', 'Bangkok'),
('A0002', 'Pornchai', 'Meesiri', '364/12', '10900', '534-795224-4', 'Krungthai'),
('A0003', 'Somporn', 'Sriudom', '162/24', '10210', '214-891225-9', 'Krungthai'),
('A0004', 'Somying', 'Chuchuen', '18/16', '10600', '932-075612-0', 'Kasikorn'),
('A0005', 'Somchai', 'Maimun', '104/22', '10160', '021-981597-2', 'Bangkok'),
('A0006', 'Marisa', 'Yindee', '203/11', '10220', NULL, NULL),
('A0007', 'Prinyada', 'Kumnoi', '24/3', '10800', NULL, NULL),
('A0008', 'Parinda', 'Meedee', '12/12', '11140', '982-050431-9', 'Krungthai'),
('A0009', 'Metavee', 'Kaokeaw', '580/6', '75110', '121-924372-2', 'Kasikorn'),
('A0010', 'Pongpit', 'Pedkeaw', '19/18', '25220', '007-208495-7', 'Bangkok');

-- --------------------------------------------------------

--
-- Table structure for table `customer_postcode`
--

CREATE TABLE `customer_postcode` (
  `Postcode` char(5) NOT NULL,
  `District` varchar(20) DEFAULT NULL,
  `Province` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_postcode`
--

INSERT INTO `customer_postcode` (`Postcode`, `District`, `Province`) VALUES
('10110', 'Khlong Toei', 'Bangkok'),
('10160', 'Bang Khae', 'Bangkok'),
('10210', 'Don Mueang', 'Bangkok'),
('10220', 'Bang Khen', 'Bangkok'),
('10600', 'Thonburi', 'Bangkok'),
('10800', 'Bang Sue', 'Bangkok'),
('10900', 'Chatuchak', 'Bangkok'),
('11140', 'Bang  Yai', 'Nonthaburi'),
('25220', 'Nadee', 'Prajeenburi'),
('75110', 'Amphawa', 'Samut songkhram');

-- --------------------------------------------------------

--
-- Table structure for table `customer_tel`
--

CREATE TABLE `customer_tel` (
  `User_ID` char(5) NOT NULL,
  `Tel` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_tel`
--

INSERT INTO `customer_tel` (`User_ID`, `Tel`) VALUES
('A0001', '0937653874'),
('A0002', '0652396481'),
('A0003', '0822876524'),
('A0004', '0968720041'),
('A0005', '0856951011'),
('A0006', '0816459822'),
('A0007', '0957895541'),
('A0008', '0987451234'),
('A0009', '0841236589'),
('A0010', '0946321568');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `Employee_ID` char(6) NOT NULL,
  `User_ID` char(5) NOT NULL,
  `Delivery_ID` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`Employee_ID`, `User_ID`, `Delivery_ID`) VALUES
('EP0001', 'A0001', 'DELI001'),
('EP0002', 'A0002', 'DELI002'),
('EP0003', 'A0003', 'DELI003'),
('EP0004', 'A0004', 'DELI004'),
('EP0005', 'A0005', 'DELI005'),
('EP0006', 'A0006', 'DELI006'),
('EP0007', 'A0007', 'DELI007'),
('EP0008', 'A0008', 'DELI008'),
('EP0009', 'A0009', 'DELI009'),
('EP0010', 'A0010', 'DELI010');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_details`
--

CREATE TABLE `delivery_details` (
  `Delivery_ID` char(7) NOT NULL,
  `Status_deli` varchar(30) DEFAULT NULL,
  `Time_stamp` datetime DEFAULT NULL,
  `Cart_ID` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivery_details`
--

INSERT INTO `delivery_details` (`Delivery_ID`, `Status_deli`, `Time_stamp`, `Cart_ID`) VALUES
('DELI001', 'Delivery in progess', '2022-08-30 11:48:08', 'O0001'),
('DELI002', 'Preparing product', '2022-08-21 19:31:08', 'O0002'),
('DELI003', 'Waiting for payment', '2022-08-30 13:21:00', 'O0003'),
('DELI004', 'Successfully delivered', '2022-08-22 17:55:00', 'O0004'),
('DELI005', 'Waiting for payment', '2022-08-23 16:14:00', 'O0005'),
('DELI006', 'Waiting for payment', '2022-09-18 09:16:45', 'O0006'),
('DELI007', 'Waiting for payment', '2022-09-23 10:57:23', 'O0007'),
('DELI008', 'Waiting for payment', '2022-09-23 14:11:05', 'O0008'),
('DELI009', 'Successfully delivered', '2022-09-25 16:36:11', 'O0009'),
('DELI010', 'Delivery in progress', '2022-09-25 12:10:17', 'O0010');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Employee_ID` char(6) NOT NULL,
  `First_name` varchar(20) DEFAULT NULL,
  `Last_name` varchar(20) DEFAULT NULL,
  `Job_title` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Employee_ID`, `First_name`, `Last_name`, `Job_title`) VALUES
('EP0001', 'Yanida', 'Imerb', 'Delivery staff'),
('EP0002', 'Teerawat', 'Meesook', 'Sales'),
('EP0003', 'Natchachon', 'Yangyuen', 'Service'),
('EP0004', 'Naphat', 'WongWan', 'Delivery staff'),
('EP0005', 'Nonthach', 'Charoen', 'Stock clerk'),
('EP0006', 'Sippakorn', 'Thiti', 'Accounting manager'),
('EP0007', 'Chokchai', 'Seesom', 'Auditor'),
('EP0008', 'Natchaya', 'Deeprasert', 'Service'),
('EP0009', 'Chatnapa', 'Hongthai', 'Operator'),
('EP0010', 'Rinrada', 'Vipa', 'Delivery staff');

-- --------------------------------------------------------

--
-- Table structure for table `fruit`
--

CREATE TABLE `fruit` (
  `Fruit_ID` char(5) NOT NULL,
  `Fruit_name` varchar(20) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Quantity` int(4) DEFAULT NULL,
  `Harvest_date` date DEFAULT NULL,
  `Exp_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fruit`
--

INSERT INTO `fruit` (`Fruit_ID`, `Fruit_name`, `Price`, `Quantity`, `Harvest_date`, `Exp_date`) VALUES
('FA012', 'Apple', 20, 1000, '2022-06-06', '2022-06-14'),
('FB013', 'Banana', 60, 1000, '2022-11-28', '2022-12-06'),
('FC014', 'Cherry', 200, 1000, '2022-06-21', '2022-07-28'),
('FG001', 'Grape', 129, 1000, '2022-02-02', '2022-02-16'),
('FG002', 'Grape', 129, 1000, '2022-02-10', '2022-02-24'),
('FK015', 'Kiwi', 30, 1000, '2022-12-01', '2022-12-15'),
('FM010', 'Mangosteen', 45, 1000, '2022-06-24', '2022-07-08'),
('FP036', 'Papaya', 22, 1000, '2022-01-01', '2022-01-22'),
('FT003', 'Watermelon', 55, 1000, '2022-02-08', '2022-02-22'),
('FZ022', 'Guava', 28, 1000, '2020-07-30', '2022-08-13');

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `Receipt_NO` char(7) NOT NULL,
  `Time_stamp` datetime DEFAULT NULL,
  `Total_payment` float DEFAULT NULL,
  `User_ID` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`Receipt_NO`, `Time_stamp`, `Total_payment`, `User_ID`) VALUES
('BI00001', '2022-08-20 19:27:00', 448, 'A0001'),
('BI00002', '2022-08-20 20:47:00', 84, 'A0002'),
('BI00003', NULL, 88, 'A0003'),
('BI00004', '2022-08-22 17:50:00', 165, 'A0004'),
('BI00005', NULL, 243, 'A0005'),
('BI00006', NULL, 101, 'A0006'),
('BI00007', NULL, 180, 'A0007'),
('BI00008', NULL, 100, 'A0008'),
('BI00009', '2022-10-11 10:11:00', 200, 'A0009'),
('BI00010', '2022-10-12 12:20:00', 150, 'A0010');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`Cart_ID`,`Receipt_No`,`Fruit_ID`),
  ADD KEY `Cart_fk_Receipt` (`Receipt_No`),
  ADD KEY `Cart_fk_Fruit` (`Fruit_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`User_ID`),
  ADD KEY `Customer_fk_Customer_Postcode` (`Postcode`);

--
-- Indexes for table `customer_postcode`
--
ALTER TABLE `customer_postcode`
  ADD PRIMARY KEY (`Postcode`);

--
-- Indexes for table `customer_tel`
--
ALTER TABLE `customer_tel`
  ADD PRIMARY KEY (`User_ID`,`Tel`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`Employee_ID`,`User_ID`,`Delivery_ID`),
  ADD KEY `Delivery_fk_Customer` (`User_ID`),
  ADD KEY `Delivery_fk_Delivery_detailsr` (`Delivery_ID`);

--
-- Indexes for table `delivery_details`
--
ALTER TABLE `delivery_details`
  ADD PRIMARY KEY (`Delivery_ID`),
  ADD KEY `Delivery_details_fk_Cart` (`Cart_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Employee_ID`);

--
-- Indexes for table `fruit`
--
ALTER TABLE `fruit`
  ADD PRIMARY KEY (`Fruit_ID`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`Receipt_NO`),
  ADD KEY `Receipt_fk_Customer` (`User_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `Cart_fk_Fruit` FOREIGN KEY (`Fruit_ID`) REFERENCES `fruit` (`Fruit_ID`),
  ADD CONSTRAINT `Cart_fk_Receipt` FOREIGN KEY (`Receipt_No`) REFERENCES `receipt` (`Receipt_NO`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `Customer_fk_Customer_Postcode` FOREIGN KEY (`Postcode`) REFERENCES `customer_postcode` (`Postcode`),
  ADD CONSTRAINT `Customer_fk_Customer_tel` FOREIGN KEY (`User_ID`) REFERENCES `customer_tel` (`User_ID`);

--
-- Constraints for table `delivery`
--
ALTER TABLE `delivery`
  ADD CONSTRAINT `Delivery_fk_Customer` FOREIGN KEY (`User_ID`) REFERENCES `customer` (`User_ID`),
  ADD CONSTRAINT `Delivery_fk_Delivery_detailsr` FOREIGN KEY (`Delivery_ID`) REFERENCES `delivery_details` (`Delivery_ID`),
  ADD CONSTRAINT `Delivery_fk_Employee` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`Employee_ID`);

--
-- Constraints for table `delivery_details`
--
ALTER TABLE `delivery_details`
  ADD CONSTRAINT `Delivery_details_fk_Cart` FOREIGN KEY (`Cart_ID`) REFERENCES `cart` (`Cart_ID`);

--
-- Constraints for table `receipt`
--
ALTER TABLE `receipt`
  ADD CONSTRAINT `Receipt_fk_Customer` FOREIGN KEY (`User_ID`) REFERENCES `customer` (`User_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
