-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2023 at 08:46 AM
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
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `cardetails`
--

CREATE TABLE `cardetails` (
  `Id` int(10) NOT NULL,
  `Uid` int(10) NOT NULL,
  `Company` varchar(1000) NOT NULL,
  `Model` varchar(1000) NOT NULL,
  `Color` varchar(500) NOT NULL,
  `Year` int(100) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Img` varchar(100) NOT NULL,
  `Price` int(255) NOT NULL,
  `Status` varchar(100) NOT NULL DEFAULT 'Unsold',
  `Buyerid` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cardetails`
--

INSERT INTO `cardetails` (`Id`, `Uid`, `Company`, `Model`, `Color`, `Year`, `Type`, `Img`, `Price`, `Status`, `Buyerid`) VALUES
(12, 3, 'Honda', 'City', 'Black', 2018, 'Diesel', 'image/demo3.jpeg', 250000, 'Sold', 11),
(13, 8, 'Toyota', 'Innova', 'Silver', 2011, 'Diesel', 'image/demo4.jpeg', 150000, 'Sold', 12),
(14, 5, 'Hundai', 'Santro', 'Red', 2010, 'Petrol', 'image/demo2.jpeg', 80000, 'Unsold', NULL),
(15, 9, 'Hundai', 'i10', 'Grey', 2010, 'Petrol', 'image/demo5.jpeg', 80000, 'Unsold', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carportal`
--

CREATE TABLE `carportal` (
  `Id` int(10) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Role` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carportal`
--

INSERT INTO `carportal` (`Id`, `Name`, `Email`, `Password`, `Role`) VALUES
(2, 'Bhaavan Philip Roy', 'bhaavan@gmail.com', '1234567890', 1),
(3, 'Duethy', 'du@gmail.com', '1234567890', 2),
(5, 'Irene', 'ir@gmail.com', '1234567890', 2),
(8, 'Bhaavan', 'bh@gmail.com', '1234567890', 2),
(9, 'Aiswarya', 'ai@gmail.com', '1234567890', 2),
(11, 'test ', 'test@gmail.com', 'test123', 2),
(12, 'Sarang', 'sarang@gmail.com', '1234567890', 2),
(16, 'Bhaavan Philip Roy', 'bhaavanroy30@gmail.com', '1234567890', 2),
(17, 'Anna', 'an@gmail.com', 'hTfIZfR2', 2),
(18, 'jithin', 'jithin@gmail.com', 'Op54j2qb', 0),
(20, 'Bhaavam', 'bha@gmail.com', 'zBblKdut', 2),
(21, 'philip', 'bh@gmail.com', 'Qj0Z4zUj', 1),
(22, 'Alen', 'al@gmail.com', '1234567890', 2);

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `Id` int(100) NOT NULL,
  `Sid` int(100) NOT NULL,
  `Rid` int(100) NOT NULL,
  `Message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`Id`, `Sid`, `Rid`, `Message`) VALUES
(0, 1, 2, 'car');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `CUST_CODE` varchar(255) DEFAULT NULL,
  `CUST_NAME` varchar(255) DEFAULT NULL,
  `CUST_CITY` varchar(255) DEFAULT NULL,
  `WORKING_AREA` varchar(255) DEFAULT NULL,
  `CUST_COUNTRY` varchar(255) DEFAULT NULL,
  `GRADE` varchar(255) DEFAULT NULL,
  `OPENING_AMT` varchar(255) DEFAULT NULL,
  `RECEIVE_AMT` varchar(255) DEFAULT NULL,
  `PAYMENT_AMT` varchar(255) DEFAULT NULL,
  `OUTSTANDING_AMT` varchar(255) DEFAULT NULL,
  `PHONE_NO` varchar(255) DEFAULT NULL,
  `AGENT_CODE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `CUST_CODE`, `CUST_NAME`, `CUST_CITY`, `WORKING_AREA`, `CUST_COUNTRY`, `GRADE`, `OPENING_AMT`, `RECEIVE_AMT`, `PAYMENT_AMT`, `OUTSTANDING_AMT`, `PHONE_NO`, `AGENT_CODE`) VALUES
(1, 'C00013', 'Holmes', 'London', 'London', 'UK', '2', '6000.00', '5000.00', '7000.00', '4000.00', 'BBBBBBB', 'A003'),
(2, 'C00001', 'Micheal', 'New York', 'New York', 'USA', '2', '3000.00', '5000.00', '2000.00', '6000.00', '123456789', 'A008'),
(3, 'C00020', 'Albert', 'New York', 'New York', 'USA', '3', '5000.00', '7000.00', '6000.00', '6000.00', 'BBBBSBB', 'A008'),
(4, 'C00025', 'Ravindran', 'Bangalore', 'Bangalore', 'India', '2', '5000.00', '7000.00', '4000.00', '8000.00', 'AVAVAVA', 'A011'),
(5, 'C00024', 'Cook', 'London', 'London', 'UK', '2', '4000.00', '9000.00', '7000.00', '6000.00', 'FSDDSDF', 'A006'),
(6, 'C00015', 'Stuart', 'London', 'London', 'UK', '1', '6000.00', '8000.00', '3000.00', '11000.00', 'GFSGERS', 'A003'),
(7, 'C00002', 'Bolt', 'New York', 'New York', 'USA', '3', '5000.00', '7000.00', '9000.00', '3000.00', 'DDNRDRH', 'A008'),
(8, 'C00018', 'Fleming', 'Brisban', 'Brisban', 'Australia', '2', '7000.00', '7000.00', '9000.00', '5000.00', 'NHBGVFC', 'A005'),
(9, 'C00021', 'Jacks', 'Brisban', 'Brisban', 'Australia', '1', '7000.00', '7000.00', '7000.00', '7000.00', 'WERTGDF', 'A005'),
(10, 'C00019', 'Yearannaidu', 'Chennai', 'Chennai', 'India', '1', '8000.00', '7000.00', '7000.00', '8000.00', 'ZZZZBFV', 'A010'),
(11, 'C00005', 'Sasikant', 'Mumbai', 'Mumbai', 'India', '1', '7000.00', '11000.00', '7000.00', '11000.00', '147-25896312', 'A002'),
(12, 'C00007', 'Ramanathan', 'Chennai', 'Chennai', 'India', '1', '7000.00', '11000.00', '9000.00', '9000.00', 'GHRDWSD', 'A010'),
(13, 'C00022', 'Avinash', 'Mumbai', 'Mumbai', 'India', '2', '7000.00', '11000.00', '9000.00', '9000.00', '113-12345678', 'A002'),
(14, 'C00004', 'Winston', 'Brisban', 'Brisban', 'Australia', '1', '5000.00', '8000.00', '7000.00', '6000.00', 'AAAAAAA', 'A005'),
(15, 'C00023', 'Karl', 'London', 'London', 'UK', '0', '4000.00', '6000.00', '7000.00', '3000.00', 'AAAABAA', 'A006'),
(17, 'C00010', 'Charles', 'Hampshair', 'Hampshair', 'UK', '3', '6000.00', '4000.00', '5000.00', '5000.00', 'MMMMMMM', 'A009'),
(18, 'C00017', 'Srinivas', 'Bangalore', 'Bangalore', 'India', '2', '8000.00', '4000.00', '3000.00', '9000.00', 'AAAAAAB', 'A007'),
(19, 'C00012', 'Steven', 'San Jose', 'San Jose', 'USA', '1', '5000.00', '7000.00', '9000.00', '3000.00', 'KRFYGJK', 'A012'),
(22, 'C00009', 'Ramesh', 'Mumbai', 'Mumbai', 'India', '3', '8000.00', '7000.00', '3000.00', '12000.00', 'Phone No', 'A002'),
(23, 'C00014', 'Rangarappa', 'Bangalore', 'Bangalore', 'India', '2', '8000.00', '11000.00', '7000.00', '12000.00', 'AAAATGF', 'A001'),
(24, 'C00016', 'Venkatpati', 'Bangalore', 'Bangalore', 'India', '2', '8000.00', '11000.00', '7000.00', '12000.00', 'JRTVFDD', 'A007'),
(25, 'C00011', 'Sundariya', 'Chennai', 'Chennai', 'India', '3', '7000.00', '11000.00', '7000.00', '11000.00', 'PPHGRTS', 'A010');

-- --------------------------------------------------------

--
-- Table structure for table `demo`
--

CREATE TABLE `demo` (
  `Id` int(100) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Role` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `demo`
--

INSERT INTO `demo` (`Id`, `Name`, `Email`, `Password`, `Role`) VALUES
(1, 'Bhaavan Philip Roy', 'bhaavanroy30@gmail.com', '2BBBQtH2', 2);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `Id` int(100) NOT NULL,
  `Sid` int(100) NOT NULL,
  `Rid` int(100) NOT NULL,
  `Vid` int(100) NOT NULL,
  `Message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`Id`, `Sid`, `Rid`, `Vid`, `Message`) VALUES
(1, 11, 8, 13, 'car'),
(2, 11, 8, 13, 'hai'),
(3, 8, 9, 15, 'Hello'),
(4, 12, 8, 13, 'Last ethara paisa ku tharum'),
(5, 22, 5, 14, 'Hai');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `ORD_NUM` int(11) DEFAULT NULL,
  `ORD_AMOUNT` int(11) DEFAULT NULL,
  `ADVANCE_AMOUNT` int(11) DEFAULT NULL,
  `ORD_DATE` varchar(11) DEFAULT NULL,
  `CUST_CODE` varchar(255) DEFAULT NULL,
  `AGENT_CODE` varchar(255) DEFAULT NULL,
  `ORD_DESCRIPTION` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `ORD_NUM`, `ORD_AMOUNT`, `ADVANCE_AMOUNT`, `ORD_DATE`, `CUST_CODE`, `AGENT_CODE`, `ORD_DESCRIPTION`) VALUES
(1, 200100, 1000, 600, '08/01/2008', 'C00013', 'A003', 'SOD'),
(2, 200110, 3000, 500, '04/15/2008', 'C00019', 'A010', 'SOD'),
(3, 200107, 4500, 900, '08/30/2008', 'C00007', 'A010', 'SOD'),
(4, 200112, 2000, 400, '05/30/2008', 'C00016', 'A007', 'SOD'),
(5, 200113, 4000, 600, '06/10/2008', 'C00022', 'A002', 'SOD'),
(6, 200102, 2000, 300, '05/25/2008', 'C00012', 'A012', 'SOD'),
(7, 200114, 3500, 2000, '08/15/2008', 'C00002', 'A008', 'SOD'),
(8, 200122, 2500, 400, '09/16/2008', 'C00003', 'A004', 'SOD'),
(9, 200118, 500, 100, '07/20/2008', 'C00023', 'A006', 'SOD'),
(10, 200119, 4000, 700, '09/16/2008', 'C00007', 'A010', 'SOD'),
(11, 200121, 1500, 600, '09/23/2008', 'C00008', 'A004', 'SOD'),
(12, 200130, 2500, 400, '07/30/2008', 'C00025', 'A011', 'SOD'),
(13, 200134, 4200, 1800, '09/25/2008', 'C00004', 'A005', 'SOD'),
(14, 200108, 4000, 600, '02/15/2008', 'C00008', 'A004', 'SOD'),
(15, 200103, 1500, 700, '05/15/2008', 'C00021', 'A005', 'SOD'),
(16, 200105, 2500, 500, '07/18/2008', 'C00025', 'A011', 'SOD'),
(17, 200109, 3500, 800, '07/30/2008', 'C00011', 'A010', 'SOD'),
(18, 200101, 3000, 1000, '07/15/2008', 'C00001', 'A008', 'SOD'),
(19, 200111, 1000, 300, '07/10/2008', 'C00020', 'A008', 'SOD'),
(20, 200104, 1500, 500, '03/13/2008', 'C00006', 'A004', 'SOD'),
(21, 200106, 2500, 700, '04/20/2008', 'C00005', 'A002', 'SOD'),
(22, 200125, 2000, 600, '10/10/2008', 'C00018', 'A005', 'SOD'),
(23, 200117, 800, 200, '10/20/2008', 'C00014', 'A001', 'SOD'),
(24, 200123, 500, 100, '09/16/2008', 'C00022', 'A002', 'SOD'),
(25, 200120, 500, 100, '07/20/2008', 'C00009', 'A002', 'SOD'),
(26, 200116, 500, 100, '07/13/2008', 'C00010', 'A009', 'SOD'),
(27, 200124, 500, 100, '06/20/2008', 'C00017', 'A007', 'SOD'),
(28, 200126, 500, 100, '06/24/2008', 'C00022', 'A002', 'SOD'),
(29, 200129, 2500, 500, '07/20/2008', 'C00024', 'A006', 'SOD'),
(30, 200127, 2500, 400, '07/20/2008', 'C00015', 'A003', 'SOD'),
(31, 200128, 3500, 1500, '07/20/2008', 'C00009', 'A002', 'SOD'),
(32, 200135, 2000, 800, '09/16/2008', 'C00007', 'A010', 'SOD'),
(33, 200131, 900, 150, '08/26/2008', 'C00012', 'A012', 'SOD'),
(34, 200133, 1200, 400, '06/29/2008', 'C00009', 'A002', 'SOD');

-- --------------------------------------------------------

--
-- Table structure for table `pass_admin`
--

CREATE TABLE `pass_admin` (
  `Id` int(10) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pass_admin`
--

INSERT INTO `pass_admin` (`Id`, `Email`, `Password`) VALUES
(1, 'philip@gmail.com', '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `pass_user`
--

CREATE TABLE `pass_user` (
  `Id` int(10) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Reason` varchar(500) DEFAULT NULL,
  `Status` varchar(100) NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pass_user`
--

INSERT INTO `pass_user` (`Id`, `Email`, `Password`, `Name`, `Date`, `Reason`, `Status`) VALUES
(1, 'bh@gmail.com', '1234567890', 'Bhaavan Philip Roy', '2023-05-17', 'kjxdfcghn', 'Yes'),
(5, 'duethy@gmail.com', '1234567890', 'Duethy Elsa Mathews', '2023-05-19', 'gxufcghvbja', 'Yes'),
(6, 'irene@gmail.com', '1234567890', 'Irene', '2023-05-21', 'lkjckhsdjfvhcleuwfhvbdnc.snv krh', 'Yes'),
(9, 'jerinmathai@gmail.com', 'jerinmathai', 'Jerin Mathai', '2023-05-22', ',mnbjhgfgjkb', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Phn_no` int(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `DOB` date NOT NULL,
  `Gender` varchar(15) NOT NULL,
  `Email` varchar(55) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Age` int(10) NOT NULL,
  `DOB` date NOT NULL,
  `Course` varchar(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `Name`, `Age`, `DOB`, `Course`, `Gender`, `Email`, `Password`) VALUES
(9, 'roy', 20, '2002-11-30', 'B.Tech', 'Male', '', ''),
(10, 'roy', 20, '2002-11-30', 'B.Tech', 'Male', '', ''),
(11, 'roy', 20, '2002-11-30', 'B.Tech', 'Male', '', ''),
(12, 'roy', 20, '2002-11-30', 'B.Tech', 'Male', '', ''),
(13, 'roy', 20, '2002-11-30', 'B.Tech', 'Male', '', ''),
(14, 'roy', 20, '2002-11-30', 'B.Tech', 'Male', '', ''),
(15, 'roy', 20, '2002-11-30', 'B.Tech', 'Male', '', ''),
(16, 'roy', 20, '2002-11-30', 'B.Tech', 'Male', '', ''),
(17, 'roy', 20, '2002-11-30', 'B.Tech', 'Male', '', ''),
(18, 'roy', 20, '2002-11-30', 'B.Tech', 'Male', '', ''),
(19, 'philip', 20, '2023-05-09', 'B.Tech', 'Others', '', ''),
(20, 'philip', 20, '2023-05-02', 'B.Tech', 'Female', '', ''),
(21, 'philip', 20, '2023-05-10', 'B.Tech', '', '', ''),
(22, 'philip', 20, '2002-11-30', '', '', '', ''),
(23, 'philip', 20, '2023-05-03', 'B.Tech', 'Female', '', ''),
(24, 'philip', 20, '2023-05-04', 'B.Tech', 'Male', '', ''),
(29, 'jhgfh', 25, '2023-05-01', 'B.Tech', 'Male', 'kljhg@gmail.com', ''),
(30, 'philip', 12, '2023-05-02', 'B.Tech', 'Male', 'kljhg@gmail.com', '123456789'),
(31, 'ph', 222, '2023-05-01', 'B.Tech', 'Male', 'kljhg@gmail.com', '12345678'),
(32, 'philip', 255, '2023-05-03', 'B.Tech', 'Female', 'kljhg@gmail.com', 'sgfkjgjhdg'),
(33, 'bhaavan', 12345, '2023-05-02', 'B.Tech', 'Male', 'kljhg@gmail.com', '1234567890'),
(34, 'bhaavan', 23, '2023-05-02', 'B.Tech', '', 'kljhg@gmail.com', '12345678'),
(35, 'Bhaavan Philip Roy', 20, '2002-11-30', 'B.Tech', 'Male', 'bhaavan@gmail.com', '1234567890'),
(36, 'bhaavan', 20, '2023-05-01', 'B.Tech', '', 'bhaavan@gmail.com', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `task2`
--

CREATE TABLE `task2` (
  `id` int(10) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Access` varchar(10) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task2`
--

INSERT INTO `task2` (`id`, `Email`, `Password`, `Access`) VALUES
(1, 'bh@gmail.com', '1234567890', 'yes'),
(2, 'bha@gmail.com', '0987654321', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `task3`
--

CREATE TABLE `task3` (
  `id` int(10) DEFAULT NULL,
  `Name` varchar(100) NOT NULL,
  `Age` int(10) NOT NULL,
  `DOB` date NOT NULL,
  `Course` varchar(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task3`
--

INSERT INTO `task3` (`id`, `Name`, `Age`, `DOB`, `Course`, `Gender`, `Email`, `Password`) VALUES
(NULL, 'Bhaavan', 20, '2023-05-02', 'B.Tech', 'Male', 'bh@gmail.com', '1234567890'),
(NULL, 'Duethy', 20, '2023-05-03', 'B.Tech', 'Male', 'du@gmail.com', '1234567890'),
(NULL, 'Irene', 20, '2023-05-04', 'B.Tech', 'Female', 'ir@gmail.com', '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `task4`
--

CREATE TABLE `task4` (
  `id` int(10) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Age` int(10) NOT NULL,
  `DOB` date NOT NULL,
  `Course` varchar(50) NOT NULL,
  `Gender` varchar(22) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task4`
--

INSERT INTO `task4` (`id`, `Name`, `Age`, `DOB`, `Course`, `Gender`, `Email`, `Password`) VALUES
(1, 'Bhaavan Philip', 20, '2023-05-01', 'B.Tech', 'Male', 'bh@gmail.com', '1234567890'),
(2, 'Duethy Elsa Mathes', 20, '2023-05-01', 'B.Tech', 'Female', 'du@gmail.com', '1234567890'),
(3, 'Irene', 20, '2023-05-01', 'B.Tech', 'Female', 'ir@gmail.com', '1234567890'),
(4, 'Aiswarya', 20, '2023-05-01', 'B.Tech', 'Female', 'ai@gmail.com', '1234567890'),
(46, 'Anna', 20, '2023-05-05', 'B.Tech', 'Female', 'an@gmail.com', '1234567890');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cardetails`
--
ALTER TABLE `cardetails`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Uid` (`Uid`) USING BTREE;

--
-- Indexes for table `carportal`
--
ALTER TABLE `carportal`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `demo`
--
ALTER TABLE `demo`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pass_admin`
--
ALTER TABLE `pass_admin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `pass_user`
--
ALTER TABLE `pass_user`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task2`
--
ALTER TABLE `task2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task4`
--
ALTER TABLE `task4`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cardetails`
--
ALTER TABLE `cardetails`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `carportal`
--
ALTER TABLE `carportal`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `demo`
--
ALTER TABLE `demo`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `pass_admin`
--
ALTER TABLE `pass_admin`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pass_user`
--
ALTER TABLE `pass_user`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `task2`
--
ALTER TABLE `task2`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `task4`
--
ALTER TABLE `task4`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
