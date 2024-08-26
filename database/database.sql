-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2024 at 06:39 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `estateadvance`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignmentbuilding`
--

CREATE TABLE `assignmentbuilding` (
  `id` bigint(20) NOT NULL,
  `staffid` bigint(20) NOT NULL,
  `buildingid` bigint(20) NOT NULL,
  `createddate` datetime DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `assignmentbuilding`
--

INSERT INTO `assignmentbuilding` (`id`, `staffid`, `buildingid`, `createddate`, `modifieddate`, `createdby`, `modifiedby`) VALUES
(1, 2, 1, NULL, NULL, NULL, NULL),
(2, 2, 3, NULL, NULL, NULL, NULL),
(3, 3, 1, NULL, NULL, NULL, NULL),
(4, 3, 4, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `assignmentcustomer`
--

CREATE TABLE `assignmentcustomer` (
  `id` bigint(20) NOT NULL,
  `staffid` bigint(20) NOT NULL,
  `customerid` bigint(20) NOT NULL,
  `createddate` datetime DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `assignmentcustomer`
--

INSERT INTO `assignmentcustomer` (`id`, `staffid`, `customerid`, `createddate`, `modifieddate`, `createdby`, `modifiedby`) VALUES
(1, 2, 1, NULL, NULL, NULL, NULL),
(2, 2, 3, NULL, NULL, NULL, NULL),
(3, 3, 1, NULL, NULL, NULL, NULL),
(4, 3, 3, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `building`
--

CREATE TABLE `building` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `street` varchar(255) DEFAULT NULL,
  `ward` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `structure` varchar(255) DEFAULT NULL,
  `numberofbasement` int(11) DEFAULT NULL,
  `floorarea` int(11) DEFAULT NULL,
  `direction` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `rentprice` int(11) DEFAULT NULL,
  `rentpricedescription` text DEFAULT NULL,
  `servicefee` varchar(255) DEFAULT NULL,
  `carfee` varchar(255) DEFAULT NULL,
  `motofee` varchar(255) DEFAULT NULL,
  `overtimefee` varchar(255) DEFAULT NULL,
  `waterfee` varchar(255) DEFAULT NULL,
  `electricityfee` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `payment` varchar(255) DEFAULT NULL,
  `renttime` varchar(255) DEFAULT NULL,
  `decorationtime` varchar(255) DEFAULT NULL,
  `brokeragefee` decimal(13,2) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `linkofbuilding` varchar(255) DEFAULT NULL,
  `map` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  `managername` varchar(255) DEFAULT NULL,
  `managerphone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `building`
--

INSERT INTO `building` (`id`, `name`, `street`, `ward`, `district`, `structure`, `numberofbasement`, `floorarea`, `direction`, `level`, `rentprice`, `rentpricedescription`, `servicefee`, `carfee`, `motofee`, `overtimefee`, `waterfee`, `electricityfee`, `deposit`, `payment`, `renttime`, `decorationtime`, `brokeragefee`, `type`, `note`, `linkofbuilding`, `map`, `avatar`, `createddate`, `modifieddate`, `createdby`, `modifiedby`, `managername`, `managerphone`) VALUES
(1, 'Nam Giao Building Tower', '59 phan xích long', 'Phường 2', 'QUAN_1', NULL, 2, 500, NULL, NULL, 15, '15 triệu/m2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TANG_TRET,NGUYEN_CAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Anh Nam-Chị Linh', '0915354727'),
(2, 'ACM Tower', '96 cao thắng', 'Phường 4', 'QUAN_2', NULL, 2, 650, NULL, NULL, 18, '18 triệu/m2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NGUYEN_CAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chú Thuận', '0173546263'),
(3, 'Alpha 2 Building Tower', '153 nguyễn đình chiểu', 'Phường 6', 'QUAN_1', NULL, 1, 200, NULL, NULL, 20, '20 triệu/m2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NOI_THAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cô Lý', '0555532578'),
(4, 'IDD 1 Building', '111 Lý Chính Thắng', 'Phường 7', 'QUAN_4', NULL, 1, 200, NULL, NULL, 12, '12 triệu/m2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TANG_TRET,NGUYEN_CAN,NOI_THAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Anh Long', '017345253'),
(6, 'test', NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Anh Long', '017345253');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `companyname` varchar(255) DEFAULT NULL,
  `demand` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `createddate` datetime DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `fullname`, `phone`, `email`, `companyname`, `demand`, `status`, `is_active`, `createddate`, `modifieddate`, `createdby`, `modifiedby`) VALUES
(1, 'Luc Van Hai', '0905671231', 'hailv@gmail.com', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(2, 'Nguyen Xuan Hong', '0205671231', 'hongxuanng@gmail.com', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(3, 'Ta Thi Cuc', '0912121231', 'cucthita1@gmail.com', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rentarea`
--

CREATE TABLE `rentarea` (
  `id` bigint(20) NOT NULL,
  `value` int(11) DEFAULT NULL,
  `buildingid` bigint(20) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rentarea`
--

INSERT INTO `rentarea` (`id`, `value`, `buildingid`, `createddate`, `modifieddate`, `createdby`, `modifiedby`) VALUES
(1, 100, 1, NULL, NULL, NULL, NULL),
(2, 200, 1, NULL, NULL, NULL, NULL),
(3, 200, 2, NULL, NULL, NULL, NULL),
(4, 300, 2, NULL, NULL, NULL, NULL),
(5, 400, 2, NULL, NULL, NULL, NULL),
(6, 300, 3, NULL, NULL, NULL, NULL),
(7, 400, 3, NULL, NULL, NULL, NULL),
(8, 500, 3, NULL, NULL, NULL, NULL),
(9, 100, 4, NULL, NULL, NULL, NULL),
(10, 400, 4, NULL, NULL, NULL, NULL),
(11, 250, 4, NULL, NULL, NULL, NULL),
(24, 700, 6, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `createddate` datetime DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `code`, `createddate`, `modifieddate`, `createdby`, `modifiedby`) VALUES
(1, 'Quản lý', 'MANAGER', NULL, NULL, NULL, NULL),
(2, 'Nhân viên', 'STAFF', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `customerid` bigint(20) NOT NULL,
  `createddate` datetime DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL,
  `staffid` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `createddate` datetime DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `fullname`, `phone`, `email`, `status`, `createddate`, `modifieddate`, `createdby`, `modifiedby`) VALUES
(1, 'nguyenvana', '$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG', 'nguyen van a', NULL, NULL, 1, NULL, NULL, NULL, NULL),
(2, 'nguyenvanb', '$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG', 'nguyen van b', NULL, NULL, 1, NULL, NULL, NULL, NULL),
(3, 'nguyenvanc', '$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG', 'nguyen van c', NULL, NULL, 1, NULL, NULL, NULL, NULL),
(4, 'nguyenvand', '$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG', 'nguyen van d', NULL, NULL, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `createddate` datetime DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `modifiedby` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role_id`, `user_id`, `createddate`, `modifieddate`, `createdby`, `modifiedby`) VALUES
(1, 1, 1, NULL, NULL, NULL, NULL),
(2, 2, 2, NULL, NULL, NULL, NULL),
(3, 2, 3, NULL, NULL, NULL, NULL),
(4, 2, 4, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignmentbuilding`
--
ALTER TABLE `assignmentbuilding`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_building` (`staffid`),
  ADD KEY `fk_building_user` (`buildingid`);

--
-- Indexes for table `assignmentcustomer`
--
ALTER TABLE `assignmentcustomer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_customer` (`staffid`),
  ADD KEY `fk_customer_user` (`customerid`);

--
-- Indexes for table `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rentarea`
--
ALTER TABLE `rentarea`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rentarea_building` (`buildingid`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_customer_transaction` (`customerid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_role` (`user_id`),
  ADD KEY `fk_role_user` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignmentbuilding`
--
ALTER TABLE `assignmentbuilding`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `assignmentcustomer`
--
ALTER TABLE `assignmentcustomer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `building`
--
ALTER TABLE `building`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rentarea`
--
ALTER TABLE `rentarea`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignmentbuilding`
--
ALTER TABLE `assignmentbuilding`
  ADD CONSTRAINT `fk_building_user` FOREIGN KEY (`buildingid`) REFERENCES `building` (`id`),
  ADD CONSTRAINT `fk_user_building` FOREIGN KEY (`staffid`) REFERENCES `user` (`id`);

--
-- Constraints for table `assignmentcustomer`
--
ALTER TABLE `assignmentcustomer`
  ADD CONSTRAINT `fk_customer_user` FOREIGN KEY (`customerid`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `fk_user_customer` FOREIGN KEY (`staffid`) REFERENCES `user` (`id`);

--
-- Constraints for table `rentarea`
--
ALTER TABLE `rentarea`
  ADD CONSTRAINT `rentarea_building` FOREIGN KEY (`buildingid`) REFERENCES `building` (`id`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `fk_customer_transaction` FOREIGN KEY (`customerid`) REFERENCES `customer` (`id`);

--
-- Constraints for table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `fk_role_user` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `fk_user_role` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
