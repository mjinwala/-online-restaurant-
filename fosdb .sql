-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2024 at 06:02 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fosdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `username` varchar(100) NOT NULL,
  `details` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`username`, `details`) VALUES
('ishani', 'Aabc'),
('ishani', 'Aabc'),
('ishani', 'abc'),
('ishani', 'abc'),
('ishani', 'abc'),
('ishani', 'abc'),
('ishani', 'yummy'),
('ishani', 'yummy'),
('ishani', 'tasty'),
('ishani', 'very good food'),
('ishani', 'tasty'),
('ishani', 'abc'),
('ishani', 'yummy');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(45) DEFAULT NULL,
  `UserName` varchar(45) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 7894561238, 'test@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2021-04-04 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(5) NOT NULL,
  `CategoryName` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `CategoryName`, `CreationDate`) VALUES
(3, 'Itallian', '2021-04-04 18:30:00'),
(5, 'South Indian', '2021-04-04 18:30:00'),
(6, 'North Indian', '2021-04-04 18:30:00'),
(7, 'Desserts', '2021-04-04 18:30:00'),
(8, 'Drinks', '2021-04-04 18:30:00'),
(9, 'Chinease', '2021-04-23 18:30:00'),
(10, 'Test Food ', '2021-05-05 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblfood`
--

CREATE TABLE `tblfood` (
  `ID` int(10) NOT NULL,
  `CategoryName` varchar(120) DEFAULT NULL,
  `ItemName` varchar(120) DEFAULT NULL,
  `ItemPrice` varchar(120) DEFAULT NULL,
  `ItemDes` varchar(500) DEFAULT NULL,
  `Image` varchar(120) DEFAULT NULL,
  `ItemQty` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblfood`
--

INSERT INTO `tblfood` (`ID`, `CategoryName`, `ItemName`, `ItemPrice`, `ItemDes`, `Image`, `ItemQty`) VALUES
(1, 'Italian', 'Corn Pizza', '190', 'Sprinkle with salt and pepper; let stand 20 minutes. Place pizza crust on a parchment paper-lined baking sheet', 'f97fcb777fbc60235e7cfdf991cb0cfa.jpg', 'Medium'),
(2, 'Italian', 'Corn Pizza', '120', 'Sprinkle with salt and pepper; let stand 20 minutes. Place pizza crust on a parchment paper-lined baking sheet;', 'f97fcb777fbc60235e7cfdf991cb0cfa.jpg', 'Regular'),
(3, 'Italian', 'Corn Pizza', '220', 'Sprinkle with salt and pepper; let stand 20 minutes. Place pizza crust on a parchment paper-lined baking sheet', 'f97fcb777fbc60235e7cfdf991cb0cfa.jpg', 'Large'),
(4, 'Italian', 'Veg Extravaganza Pizza', '450', 'Veg ExtravaganzaA pizza that decidedly staggers', '73323ff74a39e6157cf73ad52cf15c66.jpg', 'Medium'),
(5, 'Italian', 'Veg Extravaganza Pizza', '440', 'Veg ExtravaganzaA pizza that decidedly staggers under an overload of golden corn, exotic black olives, crunchy onions', '9ed5c4756f56317810d7e364ca7f1634.jpg', 'Large'),
(6, 'North Indian', 'Chana Masala', '120', 'To make this chana masala we start with a trio of ingredients found in most Indian curriesâ€“onion, garlic, and ginger. ', '0ee2405d162c60e415bfba56a24aca8c.jpg', 'Full'),
(7, 'North Indian', 'Rajma Masala', '125', 'Rajma Masala is a much loved spicy curry in most Indian Households.                               	', '63d50ef58f33ec97cf928c05deb8ccd3.jpg', 'Full'),
(8, 'South Indian', 'Dosa', '85', 'Dosa  are served hot along with sambar, a stuffing of potatoes, and chutney.                             	', 'd984b4a23552203107391bc98dd0e4dc.jpg', 'Regular'),
(9, 'South Indian', 'Idli', '75', 'Idli are a type of savoury rice cake, originating from the Indian subcontinent and served coconut chutney.                                         	', '0cbe727a2529cc6cd8dcbd40ee53fe2c.jpg', '2 pcs'),
(10, 'South Indian', 'Vada', '60', 'Medu vada served with hot shambhar and coconut chutney ', '66d5785b3c99179f5a5bb7d7d94636dd.jpg', '2 pcs'),
(11, 'North Indian', 'Chole Bhature', '120', 'Chole Bhuture is a combination of chana masala (spicy white chickpeas) and bhatura,                                                	', 'da41d10bb09c6cfac8168435164ff0b3.jpg', '2 pcs'),
(12, 'North Indian', 'Aloo paratha', '85', ' Aloo paratha is served with butter, chutney, or Indian pickles in different parts of northern and western India.                                                 	', '8cc336b118e1feb503f9a54f3bdcdf1b.jpg', '2 pieces'),
(13, 'North Indian', 'Mix Pratha', '85', 'veg paratha soft, healthy and delicious whole wheat parathas made with mix vegetables. ... this no onion no garlic veg paratha recipe is pretty flexible.                                               	', '4b4f0a570c7f36f0db9e4f8e7fa60442.jpg', '2 pieces'),
(14, 'North Indian', 'Paneer Paratha.', '95', 'paneer paratha. paneer paratha is an indian flat bread made with cottage cheese stuffing. paneer paratha are popular breakfast recipe in punjabi homes.                                                 	', 'a19b8b7095ad0c23ddd95a28c3f85268.jpg', '2 pieces'),
(15, 'Chinease', 'Hakka Noodle', '120', 'Hakka Noodle is one our famous food which is made up by our homemade masale.                                               	', 'f8f34e70f13c6d9e982640e3b39f317b.jpg', 'full'),
(16, 'Chinese', 'Veg Chowmin', '120', 'Veg Chowmien full Plate                                                 	', '927f5a1c2bcfff25ff8a936fa98d5f2f.jpg', 'Full'),
(17, 'Itallian', 'bruschetta', '160', '                                                 	', '6956ec29f3e8e12cbbde18c34cea9df8.jpg', '1'),
(18, 'Itallian', 'margerita pizza', '200', '                                                 	', '59be1252491a8e36330bcfdf23644487.jpg', '1'),
(19, 'North Indian', 'aloo paratha', '160', '                                                 	', '2e990e90082255246a1b6050524da3a7.jpg', '1'),
(20, 'North Indian', 'bhatura', '150', '                                                 	', '82988debf9f2dc2fa96791098ef2d4ae.jpg', '1'),
(21, 'North Indian', 'dal fry', '160', '                                                 	', 'b13c0f0604ed9cab3939b36bf06a8671.jpg', '1'),
(22, 'North Indian', 'lauki kofta', '180', '                                                 	', '1ccd587a641c4ae795b0594a9c3ac917.jpg', '1'),
(23, 'North Indian', 'naan', '170', '                                                 	', '2f69f261adeaee824edcb53be80b2136.jpg', '1'),
(24, 'North Indian', 'malai kofta', '160', '                                                 	', '8b6aff0f1674a2fcbb35f76082bcc5a6.jpg', '1'),
(25, 'North Indian', 'punjabi kadhi', '180', '                                                 	', '87b380bc79ecc6509c49ceea6227df9e.jpg', '1'),
(26, 'North Indian', 'samosa', '170', '                                                 	', '9cea729611265980d2a81e309f5f9ec9.jpg', '3'),
(27, 'South Indian', 'Bisi Bele Bath', '170', '                                                 	', '3c9fee2497651ce895883fe06a354540.jpg', '1'),
(28, 'South Indian', 'Chicken Stoo with', '160', '                                                 	', 'fc67993b170da6a800a4969260a07c3e.jpg', '1'),
(29, 'South Indian', 'Curd Rice', '160', '                                                 	', 'b103e99cc5f22d9de220ce2e489c0093.jpg', '1'),
(30, 'South Indian', 'dhosa', '160', '                                                 	', '92925f77caf1d397cca5c15063e18fa6.png', '1'),
(31, 'South Indian', 'Hyderabadi Biryan', '150', '                                                 	', '54c080d643a939c461abdfc01859db30.jpg', '1'),
(32, 'South Indian', 'idli sambhar', '160', '                                                 	', '2943eaf99f771cc221cf2cc88764da43.jpg', '1'),
(33, 'South Indian', 'Medu Vadas', '160', '                                                 	', 'd570ae34b6954a33c005891982f91207.jpg', '1'),
(34, 'South Indian', 'Puttu with kadala', '150', '                                                 	', '6161561d68d9959784e12441cd1ca156.jpg', '1'),
(35, 'South Indian', 'Uttapam', '150', '                                                 	', '48facc1ffd4a740b01307a5ada9c9845.jpg', '1'),
(36, 'Desserts', 'brownie dessert', '160', '                                                 	', 'f9a8e41c50a48f9e2238ffb9eb762955.jpg', '1'),
(37, 'Desserts', 'caramel-topped-ic', '170', '                                                 	', '179d983379f6f80fe7274c9e65ce63e2.jpg', '1'),
(38, 'Desserts', 'Cherry-Delight-De', '160', '                                                 	', 'a086d8ad4c555447bc405b77068415a2.jpg', '1'),
(39, 'Desserts', 'chocolate-mousse ', '170', '                                                 	', 'e09df061afd00efcd7d9d671b6e7d4b9.jpg', '1'),
(40, 'Desserts', 'eggless chocolate', '170', '                                                 	', '0d7572ac8783e1a6b24effe8cc124aaejpeg', '1'),
(41, 'Desserts', 'piggy-dessert', '180', '                                                 	', '6a473276bce75d74a55eedd3478c8bca.jpg', '1'),
(42, 'Desserts', 'oreo ice cream de', '180', '                                                 	', '2361cae86c045a57357cd541755b7b88jpeg', '1'),
(43, 'Desserts', 'No-bake-chocolate', '170', '                                                 	', 'd6f6d0271b556388349a99b3a0a397eb.jpg', '1'),
(44, 'Desserts', 'IceCreamTaco dess', '170', '                                                 	', '28d0ce77e48eb34e27f937a04e2d1e5e.jpg', '1'),
(45, 'Drinks', 'Amanyara Mojito', '170', '                                                 	', 'e4648fb60a7c9516da14a9923b938ae2.jpg', '1'),
(46, 'Drinks', 'apple cider mojit', '160', '                                                 	', 'f04b2c9434749a578abd6aa1f3de4a2d.jpg', '1'),
(47, 'Drinks', 'hazelnut frappe', '150', '                                                 	', '14aa5543e9a8018e7613296c33e2f084.jpg', '1'),
(48, 'Drinks', 'whipped chocolate', '170', '                                                 	', 'b5f3d9121d22e0ab9325d43813078ae5.jpg', '1'),
(49, 'Drinks', 'watermelon mojito', '180', '                                                 	', '764b1e6d36db9756cc699ede2f7951f2.jpg', '1'),
(50, 'Drinks', 'Strawberry Mango ', '170', '                                                 	', '15f9a60f6e5792d5508290c4ec75ffe8.jpg', '1'),
(51, 'Chinease', 'manchirian dry', '170', '                                                 	', 'b2f55aedbc8714c457196106d7238510jpeg', '1'),
(52, 'Chinease', 'chezwan', '180', '                                                 	', 'aba676718260c6f2d88b5d8745351030jpeg', '1'),
(53, 'Chinease', 'Vegetable Chow Me', '180', '                                                 	', '4f78b00e2b3f513e2cc42d5196ff6b38jpeg', '1'),
(54, 'Chinease', 'Vegetable Fried R', '170', '                                                 	', 'f4cb6c78ac050fd416410fee80368473jpeg', '1'),
(55, 'Test Food ', 'Aloo Tikki burger', '170', '                                                 	', 'ddee1fdec3b5398e7fd9ec853768d7a3jpeg', '3'),
(56, 'Test Food ', 'Cheese Veg burger', '160', '                                                 	', 'a66aaab71f156376f8c15a9274c1a924.jpg', '10'),
(57, 'Test Food ', 'mexican pizza', '160', '                                                 	', 'b9143d8cae0b623f76d62867ddfa9e9f.jpg', '1'),
(58, 'Test Food ', 'Garlic Bread', '200', '                                                 	', 'd78c9b70d7c57a3a029da026857431c9.jpg', ''),
(59, 'Test Food ', 'vegan black bean ', '180', '                                                 	', 'dda18fdaee223e30e7f3654ff8fd7682jpeg', '1'),
(60, 'Test Food ', 'pizza puff', '160', '                                                 	', '5f3b3bf41d6939f4b1af5289457d108c.jpg', '1'),
(61, 'Test Food ', 'mexican pizza', '180', '                                                 	', 'b9143d8cae0b623f76d62867ddfa9e9f.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tblfoodtracking`
--

CREATE TABLE `tblfoodtracking` (
  `ID` int(10) NOT NULL,
  `OrderId` char(50) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `status` char(50) DEFAULT NULL,
  `StatusDate` timestamp NULL DEFAULT current_timestamp(),
  `OrderCanclledByUser` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblfoodtracking`
--

INSERT INTO `tblfoodtracking` (`ID`, `OrderId`, `remark`, `status`, `StatusDate`, `OrderCanclledByUser`) VALUES
(2, '429762614', 'thank you', 'Food being Prepared', '2022-04-02 19:01:32', NULL),
(3, '362902082', 'food delivered', 'Food Delivered', '2024-03-25 05:55:37', NULL),
(4, '578631528', 'food delivered', 'Food Delivered', '2024-03-25 06:02:35', NULL),
(5, '461263301', 'abc', 'Food being Prepared', '2024-03-25 09:24:37', NULL),
(6, '461263301', 'abc', 'Order Cancelled', '2024-03-25 09:25:18', 1),
(7, '461263301', 'abc', 'Food being Prepared', '2024-03-25 09:25:23', NULL),
(8, '777730439', 'food pickup', 'Food Pickup', '2024-03-25 10:06:20', NULL),
(9, '854125639', 'food delivered', 'Food Delivered', '2024-03-25 10:37:35', NULL),
(10, '970005714', 'food deliverd', 'Food Delivered', '2024-03-26 03:09:30', NULL),
(11, '210709202', 'anbc', 'Order Cancelled', '2024-03-26 03:10:22', 1),
(12, '970005714', 'food deliverd', 'Food Delivered', '2024-03-26 03:10:28', NULL),
(13, '991833215', 'abc', 'Order Confirmed', '2024-03-27 02:26:08', NULL),
(14, '169950245', 'order confimed', 'Order Confirmed', '2024-03-27 02:49:57', NULL),
(15, '545183464', 'order confirm', 'Order Confirmed', '2024-03-27 08:49:01', NULL),
(16, '545183464', 'order confirm', 'Order Confirmed', '2024-03-27 08:49:03', NULL),
(17, '545183464', 'order confirm', 'Order Confirmed', '2024-03-27 08:49:05', NULL),
(18, '796808840', 'abvdf', 'Order Confirmed', '2024-03-30 02:51:35', NULL),
(19, '796808840', 'abvdf', 'Order Confirmed', '2024-03-30 02:53:00', NULL),
(20, '697929778', 'prepared', 'Food being Prepared', '2024-04-04 14:40:45', NULL),
(21, '139589366', 'confirmed', 'Order Confirmed', '2024-04-04 15:36:11', NULL),
(22, '126480529', 'confirmed', 'Order Confirmed', '2024-04-04 15:36:22', NULL),
(23, '607454405', 'confirmed', 'Order Confirmed', '2024-04-04 15:36:30', NULL),
(24, '412198402', 'canclled\r\n', 'Order Cancelled', '2024-04-04 15:36:47', NULL),
(25, '134411993', 'prepared', 'Food being Prepared', '2024-04-04 15:37:00', NULL),
(26, '192012866', 'pick up', 'Food Pickup', '2024-04-04 15:37:13', NULL),
(27, '117212817', 'confirmed', 'Order Confirmed', '2024-04-04 15:37:27', NULL),
(28, '486810433', 'cancelled', 'Order Cancelled', '2024-04-04 15:37:41', NULL),
(29, '897104527', 'delivered', 'Food Delivered', '2024-04-04 15:37:55', NULL),
(30, '623939173', 'cancelled', 'Order Cancelled', '2024-04-04 15:38:07', NULL),
(31, '739177606', 'delivered', 'Food Delivered', '2024-04-04 15:38:19', NULL),
(32, '601305779', 'confirmed', 'Order Confirmed', '2024-04-04 15:38:28', NULL),
(33, '721585120', 'delivered', 'Food Delivered', '2024-04-04 15:38:44', NULL),
(34, '130239763', 'delivered', 'Order Confirmed', '2024-04-04 15:38:51', NULL),
(35, '637595334', 'confirmed', 'Order Confirmed', '2024-04-04 16:10:27', NULL),
(36, '815098251', 'confirmed', 'Order Confirmed', '2024-04-04 16:10:36', NULL),
(37, '943593316', 'confirmed', 'Order Confirmed', '2024-04-04 16:10:44', NULL),
(38, '824664463', 'pick up', 'Food Pickup', '2024-04-04 16:10:57', NULL),
(39, '637232585', 'pick up', 'Food Pickup', '2024-04-04 16:11:06', NULL),
(40, '807864190', 'pick up', 'Food Pickup', '2024-04-04 16:11:16', NULL),
(41, '598285180', 'prepared', 'Food being Prepared', '2024-04-04 16:11:33', NULL),
(42, '145949903', 'prepared', 'Food being Prepared', '2024-04-04 16:11:43', NULL),
(43, '316595015', 'prepared', 'Food being Prepared', '2024-04-04 16:11:54', NULL),
(44, '185196596', 'prepared', 'Food being Prepared', '2024-04-04 16:12:03', NULL),
(45, '349944464', 'delivered', 'Food Delivered', '2024-04-04 16:12:16', NULL),
(46, '979888046', 'delivered', 'Food Delivered', '2024-04-04 16:12:25', NULL),
(47, '449204598', 'delivered', 'Food Delivered', '2024-04-04 16:12:33', NULL),
(48, '211805524', 'delivered', 'Food Delivered', '2024-04-04 16:12:41', NULL),
(49, '546133195', 'delivered', 'Food Delivered', '2024-04-04 16:12:49', NULL),
(50, '812706696', 'delivered', 'Food Delivered', '2024-04-04 16:13:01', NULL),
(51, '210852165', 'cancelled', 'Order Cancelled', '2024-04-04 16:13:17', NULL),
(52, '712460856', 'cancelled', 'Order Cancelled', '2024-04-04 16:13:26', NULL),
(53, '262679423', 'confiremed', 'Order Confirmed', '2024-04-04 16:13:40', NULL),
(54, '856360974', 'pick up', 'Food Pickup', '2024-04-04 16:13:57', NULL),
(55, '742237590', 'prepared', 'Food being Prepared', '2024-04-04 16:14:11', NULL),
(56, '795998495', 'confirmed', 'Order Confirmed', '2024-04-04 16:14:23', NULL),
(57, '795998495', 'delivered', 'Food Delivered', '2024-04-04 16:14:37', NULL),
(58, '380597361', 'canclled', 'Order Cancelled', '2024-04-04 16:14:52', NULL),
(59, '192106806', 'confirmed', 'Order Confirmed', '2024-04-04 16:15:04', NULL),
(60, '192106806', 'prepared', 'Food being Prepared', '2024-04-04 16:15:14', NULL),
(61, '192106806', 'pick up', 'Food Pickup', '2024-04-04 16:15:24', NULL),
(62, '192106806', 'delivered', 'Food Delivered', '2024-04-04 16:15:35', NULL),
(63, '297336483', 'delivered', 'Food Delivered', '2024-04-06 16:30:57', NULL),
(64, '153258954', 'confimed', 'Order Confirmed', '2024-04-08 03:24:04', NULL),
(65, '153258954', 'confimed', 'Order Confirmed', '2024-04-08 03:24:06', NULL),
(66, '153258954', 'confimed', 'Order Confirmed', '2024-04-08 03:24:08', NULL),
(67, '153258954', 'your food is ready', 'Food Pickup', '2024-04-08 03:25:19', NULL),
(68, '153258954', 'your food is ready', 'Food Pickup', '2024-04-08 03:26:31', NULL),
(69, '713591152', 'confimed', 'Order Confirmed', '2024-04-08 03:28:59', NULL),
(70, '713591152', 'your food is ready', 'Food Pickup', '2024-04-08 03:30:17', NULL),
(71, '991833215', 'abc', 'Order Cancelled', '2024-04-08 03:32:05', 1),
(72, '959793909', 'delivered', 'Food Delivered', '2024-04-08 03:36:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblorderaddresses`
--

CREATE TABLE `tblorderaddresses` (
  `ID` int(11) NOT NULL,
  `UserId` char(100) DEFAULT NULL,
  `Ordernumber` char(100) DEFAULT NULL,
  `Flatnobuldngno` varchar(255) DEFAULT NULL,
  `StreetName` varchar(255) DEFAULT NULL,
  `Area` varchar(255) DEFAULT NULL,
  `Landmark` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `OrderTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `OrderFinalStatus` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblorderaddresses`
--

INSERT INTO `tblorderaddresses` (`ID`, `UserId`, `Ordernumber`, `Flatnobuldngno`, `StreetName`, `Area`, `Landmark`, `City`, `OrderTime`, `OrderFinalStatus`) VALUES
(1, '5', '362902082', '80', 'Vijayanagar -1 ', 'pandesara', '', 'Surat', '2022-04-03 06:25:23', 'Food Delivered'),
(2, '6', '578631528', '101', 'abc', 'abc', 'surat', 'surat', '2024-03-25 05:00:15', 'Food Delivered'),
(3, '6', '126480529', '101', 'abc', 'abc', 'surat', 'surat', '2024-03-25 06:00:08', 'Order Confirmed'),
(4, '6', '607454405', '101', 'abc', 'abc', 'surat', 'surat', '2024-03-25 06:00:51', 'Order Confirmed'),
(5, '6', '412198402', '101', 'abc', 'abc', 'surat', 'surat', '2024-03-25 06:55:53', 'Order Cancelled'),
(6, '6', '461263301', '101', 'abc', 'abc', 'surat', 'surat', '2024-03-25 09:18:50', 'Food being Prepared'),
(7, '6', '777730439', '101', 'abc', 'abc', 'surat', 'surat', '2024-03-25 10:01:43', 'Food Pickup'),
(8, '5', '139589366', '101', 'abc', 'abc', 'surat', 'surat', '2024-03-25 10:13:28', 'Order Confirmed'),
(9, '6', '854125639', '101', 'abc', 'abc', 'surat', 'surat', '2024-03-25 10:35:20', 'Food Delivered'),
(10, '6', '486810433', '101', 'abc', 'abc', 'surat', 'surat', '2024-03-25 10:57:09', 'Order Cancelled'),
(11, '6', '192012866', '101', 'abc', 'abc', 'surat', 'surat', '2024-03-25 12:28:59', 'Food Pickup'),
(12, '6', '897104527', '101', 'abc', 'abc', 'surat', 'surat', '2024-03-25 12:30:04', 'Food Delivered'),
(13, '6', '117212817', '101', 'abc', 'abc', 'surat', 'surat', '2024-03-25 12:39:58', 'Order Confirmed'),
(14, '6', '134411993', '101', 'abc', 'abc', 'surat', 'surat', '2024-03-25 12:42:05', 'Food being Prepared'),
(15, '6', '623939173', '101', 'abc', 'abc', '', 'surat', '2024-03-25 12:44:09', 'Order Cancelled'),
(16, '6', '210709202', '101', 'abc', 'abc', 'surat', 'surat', '2024-03-26 03:07:37', 'Order Cancelled'),
(17, '6', '970005714', '101', 'abc', 'abc', 'surat', 'surat', '2024-03-26 03:08:45', 'Food Delivered'),
(18, '6', '739177606', '101', 'abc', 'abc', 'surat', 'surat', '2024-03-26 07:09:16', 'Food Delivered'),
(19, '6', '796808840', '101', 'abc', 'abc', 'surat', 'surat', '2024-03-27 01:27:04', 'Order Confirmed'),
(20, '6', '991833215', '101', 'abc', 'abc', 'surat', 'surat', '2024-03-27 01:44:09', 'Order Cancelled'),
(21, '6', '169950245', '101', 'abc', 'abc', 'surat', 'surat', '2024-03-27 02:46:11', 'Order Confirmed'),
(22, '6', '545183464', '101', 'abc', 'abc', 'surat', 'surat', '2024-03-27 08:47:56', 'Order Confirmed'),
(23, '6', '721585120', '101', 'abc', 'abc', 'surat', 'surat', '2024-04-01 13:20:44', 'Food Delivered'),
(24, '6', '130239763', '101', 'abc', 'abc', 'surat', 'surat', '2024-04-03 16:17:43', 'Order Confirmed'),
(25, '6', '601305779', '101', 'abc', 'abc', 'surat', 'surat', '2024-04-04 14:31:23', 'Order Confirmed'),
(26, '6', '697929778', '101', 'abc', 'abc', 'surat', 'surat', '2024-04-04 14:39:19', 'Food being Prepared'),
(27, '11', '637595334', '101', 'xyz', 'xyz', 'surat', 'surat', '2024-04-04 15:49:00', 'Order Confirmed'),
(28, '11', '824664463', '102', 'xyz', 'xyz', 'surat', 'surat', '2024-04-04 15:49:27', 'Food Pickup'),
(29, '11', '546133195', '102', 'xyz', 'xyz', 'surat', 'surat', '2024-04-04 15:49:59', 'Food Delivered'),
(30, '11', '192106806', '102', 'xyz', 'xyz', '', 'surat', '2024-04-04 15:50:26', 'Food Delivered'),
(31, '11', '262679423', '102', 'xyz', 'xyz', '', 'surat', '2024-04-04 15:50:49', 'Order Confirmed'),
(32, '10', '210852165', '104', 'pqr', 'pqr', 'surat', 'surat', '2024-04-04 15:54:10', 'Order Cancelled'),
(33, '10', '815098251', '104', 'pqr', 'pqr', 'surat', 'surat', '2024-04-04 15:54:38', 'Order Confirmed'),
(34, '10', '598285180', '104', 'pqr', 'pqr', 'surat', 'surat', '2024-04-04 15:54:57', 'Food being Prepared'),
(35, '10', '185196596', '104', 'pqr', 'pqr', 'surat', 'surat', '2024-04-04 15:55:17', 'Food being Prepared'),
(36, '10', '637232585', '104', 'pqr', 'pqr', '', 'surat', '2024-04-04 15:56:10', 'Food Pickup'),
(37, '9', '380597361', '105', 'pqr', 'xyz', 'surat', 'surat', '2024-04-04 15:57:37', 'Order Cancelled'),
(38, '9', '211805524', '105', 'pqr', 'xyz', 'surat', 'surat', '2024-04-04 15:58:00', 'Food Delivered'),
(39, '9', '712460856', '105', 'pqr', 'xyz', 'surat', 'surat', '2024-04-04 15:58:19', 'Order Cancelled'),
(40, '7', '316595015', '11', 'xyz', 'pqr', 'surat', 'surat', '2024-04-04 16:02:57', 'Food being Prepared'),
(41, '7', '812706696', '11', 'xyz', 'pqr', 'surat', 'surat', '2024-04-04 16:03:31', 'Food Delivered'),
(42, '7', '943593316', '11', 'xyz', 'pqr', 'surat', 'surat', '2024-04-04 16:03:54', 'Order Confirmed'),
(43, '7', '979888046', '11', 'xyz', 'pqr', 'surat', 'surat', '2024-04-04 16:04:18', 'Food Delivered'),
(44, '7', '349944464', '11', 'xyz', 'pqr', 'surat', 'surat', '2024-04-04 16:04:47', 'Food Delivered'),
(45, '7', '795998495', '11', 'xyz', 'pqr', 'surat', 'surat', '2024-04-04 16:05:20', 'Food Delivered'),
(46, '8', '145949903', '12', 'xyz', 'qwe', 'surat', 'surat', '2024-04-04 16:08:13', 'Food being Prepared'),
(47, '8', '742237590', '12', 'xyz', 'qwe', 'surat', 'surat', '2024-04-04 16:08:34', 'Food being Prepared'),
(48, '8', '449204598', '12', 'xyz', 'qwe', 'surat', 'surat', '2024-04-04 16:09:00', 'Food Delivered'),
(49, '8', '807864190', '12', 'xyz', 'qwe', 'surat', 'surat', '2024-04-04 16:09:18', 'Food Pickup'),
(50, '8', '856360974', '12', 'xyz', 'qwe', 'surat', 'surat', '2024-04-04 16:09:47', 'Food Pickup'),
(51, '6', '297336483', '12', 'xyz', 'abc', 'surat', 'surat', '2024-04-06 14:19:36', 'Food Delivered'),
(52, '6', '153258954', '12', 'xyz', 'qwe', 'surat', 'surat', '2024-04-08 03:22:41', 'Food Pickup'),
(53, '6', '713591152', '12', 'abc', 'abc', 'surat', 'surat', '2024-04-08 03:28:29', 'Food Pickup'),
(54, '6', '959793909', '12', 'abc', 'abc', 'surat', 'surat', '2024-04-08 03:34:39', 'Food Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE `tblorders` (
  `ID` int(11) NOT NULL,
  `UserId` char(10) DEFAULT NULL,
  `FoodId` char(10) DEFAULT NULL,
  `FoodQty` int(11) DEFAULT NULL,
  `IsOrderPlaced` int(11) DEFAULT NULL,
  `OrderNumber` char(100) DEFAULT NULL,
  `payment_mode` varchar(255) DEFAULT 'COD'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`ID`, `UserId`, `FoodId`, `FoodQty`, `IsOrderPlaced`, `OrderNumber`, `payment_mode`) VALUES
(1, '5', '1', 1, 1, '362902082', 'ONLINE'),
(3, '6', '15', 1, 1, '126480529', 'ONLINE'),
(4, '6', '12', 1, 1, '126480529', 'ONLINE'),
(5, '6', '15', 1, 1, '607454405', 'COD'),
(6, '6', '15', 1, 1, '412198402', 'COD'),
(7, '6', '1', 1, 1, '461263301', 'ONLINE'),
(8, '6', '5', 1, 1, '461263301', 'ONLINE'),
(9, '6', '2', 1, 1, '777730439', 'ONLINE'),
(10, '6', '8', 1, 1, '777730439', 'ONLINE'),
(11, '5', '10', 1, 1, '139589366', 'ONLINE'),
(12, '5', '6', 1, 1, '139589366', 'ONLINE'),
(13, '5', '5', 5, 1, '139589366', 'ONLINE'),
(16, '6', '1', 1, 1, '854125639', 'COD'),
(17, '6', '11', 1, 1, '854125639', 'COD'),
(19, '6', '8', 1, 1, '486810433', 'COD'),
(20, '6', '5', 1, 1, '192012866', 'ONLINE'),
(21, '6', '5', 1, 1, '897104527', 'ONLINE'),
(22, '6', '2', 1, 1, '117212817', 'ONLINE'),
(23, '6', '12', 1, 1, '134411993', 'ONLINE'),
(24, '6', '7', 1, 1, '623939173', 'ONLINE'),
(25, '6', '2', 1, 1, '210709202', 'ONLINE'),
(26, '6', '11', 1, 1, '210709202', 'ONLINE'),
(27, '6', '10', 1, 1, '970005714', 'COD'),
(28, '6', '1', 1, 1, '739177606', 'COD'),
(29, '6', '1', 1, 1, '739177606', 'COD'),
(30, '6', '2', 1, 1, '796808840', 'COD'),
(31, '6', '6', 1, 1, '796808840', 'COD'),
(32, '6', '5', 1, 1, '796808840', 'COD'),
(33, '6', '11', 1, 1, '796808840', 'COD'),
(34, '6', '8', 1, 1, '991833215', 'COD'),
(35, '6', '2', 1, 1, '169950245', 'COD'),
(36, '6', '56', 1, 1, '545183464', 'COD'),
(38, '6', '9', 1, 1, '721585120', 'COD'),
(39, '6', '9', 1, 1, '721585120', 'COD'),
(40, '6', '9', 1, 1, '721585120', 'COD'),
(41, '6', '2', 1, 1, '721585120', 'COD'),
(42, '6', '10', 1, 1, '721585120', 'COD'),
(43, '6', '5', 1, 1, '130239763', 'COD'),
(44, '6', '8', 1, 1, '130239763', 'COD'),
(45, '6', '15', 1, 1, '130239763', 'COD'),
(47, '6', '56', 1, 1, '130239763', 'COD'),
(48, '6', '5', 1, 1, '601305779', 'COD'),
(49, '6', '60', 1, 1, '697929778', 'COD'),
(50, '11', '5', 1, 1, '637595334', 'COD'),
(51, '11', '1', 1, 1, '637595334', 'COD'),
(52, '11', '11', 1, 1, '824664463', 'COD'),
(53, '11', '18', 1, 1, '546133195', 'COD'),
(54, '11', '17', 1, 1, '546133195', 'COD'),
(55, '11', '46', 1, 1, '192106806', 'COD'),
(56, '11', '50', 1, 1, '192106806', 'COD'),
(57, '11', '51', 1, 1, '262679423', 'COD'),
(58, '10', '13', 1, 1, '210852165', 'COD'),
(59, '10', '12', 1, 1, '815098251', 'COD'),
(60, '10', '14', 1, 1, '815098251', 'COD'),
(61, '10', '23', 1, 1, '598285180', 'COD'),
(62, '10', '19', 1, 1, '185196596', 'COD'),
(63, '10', '19', 1, 1, '637232585', 'COD'),
(64, '9', '59', 1, 1, '380597361', 'COD'),
(65, '9', '58', 1, 1, '211805524', 'COD'),
(66, '9', '61', 1, 1, '712460856', 'COD'),
(67, '7', '40', 1, 1, '316595015', 'COD'),
(68, '7', '43', 1, 1, '316595015', 'COD'),
(69, '7', '53', 1, 1, '812706696', 'COD'),
(70, '7', '52', 1, 1, '812706696', 'COD'),
(71, '7', '51', 1, 1, '943593316', 'COD'),
(72, '7', '28', 1, 1, '979888046', 'COD'),
(73, '7', '48', 1, 1, '349944464', 'COD'),
(74, '7', '59', 1, 1, '795998495', 'COD'),
(75, '7', '49', 1, 1, '795998495', 'COD'),
(76, '8', '36', 1, 1, '145949903', 'COD'),
(77, '8', '50', 1, 1, '742237590', 'COD'),
(78, '8', '30', 1, 1, '449204598', 'COD'),
(79, '8', '41', 1, 1, '449204598', 'COD'),
(80, '8', '53', 1, 1, '807864190', 'COD'),
(81, '8', '18', 4, 1, '856360974', 'COD'),
(82, '8', '46', 1, 1, '856360974', 'COD'),
(83, '8', '47', 1, 1, '856360974', 'COD'),
(84, '12', '51', 1, NULL, NULL, 'COD'),
(85, '12', '15', 1, NULL, NULL, 'COD'),
(86, '6', '57', 1, 1, '297336483', 'COD'),
(87, '6', '6', 1, 1, '153258954', 'COD'),
(88, '6', '39', 1, 1, '713591152', 'COD'),
(89, '6', '43', 1, 1, '713591152', 'COD'),
(90, '6', '56', 1, 1, '959793909', 'COD'),
(91, '6', '39', 1, NULL, NULL, 'COD');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `Email`, `MobileNumber`, `Password`, `RegDate`) VALUES
(1, 'Anuj', 'Kumar', 'test@gmail.com', 1234567890, 'f925916e2754e5e03f75dd58a5733251', '2021-06-04 04:31:04'),
(3, 'Test', 'User', 'testuser@gmail.com', 1236547890, 'f925916e2754e5e03f75dd58a5733251', '2021-06-05 12:28:41'),
(4, 'atulkumar', 'patil', 'atulp9602@gmail.com', 7383059557, '202cb962ac59075b964b07152d234b70', '2022-03-31 10:58:52'),
(5, 'shreyas', 'solanke', 'shreyas@gmail.com', 8787878777, '9e1e06ec8e02f0a0074f2fcc6b26303b', '2022-04-01 17:33:52'),
(6, 'ishani', 'jagani', 'ishani@gmail.com', 9898678909, '81dc9bdb52d04dc20036dbd8313ed055', '2024-03-25 04:58:40'),
(7, 'meet', 'jagani', 'meetjagani@gmail.com', 8978675676, 'd93591bdf7860e1e4ee2fca799911215', '2024-04-04 15:40:23'),
(8, 'khushi', 'patel', 'khushii@gmail.com', 9090897898, '912e79cd13c64069d91da65d62fbb78c', '2024-04-04 15:40:47'),
(9, 'priya', 'jasani', 'priya@gmail.com', 8989098909, '4a7d1ed414474e4033ac29ccb8653d9b', '2024-04-04 15:41:16'),
(10, 'manisha', 'jagani', 'manisha@gmail.com', 8789023423, 'c26820b8a4c1b3c2aa868d6d57e14a79', '2024-04-04 15:41:47'),
(11, 'isha', 'jasani', 'isha@gmail.com', 8912312200, 'fa246d0262c3925617b0c72bb20eeb1d', '2024-04-04 15:45:28'),
(12, 'janvi', 'patel', 'janvi@gmail.com', 7897897896, '250cf8b51c773f3f8dc8b4be867a9a02', '2024-04-06 08:18:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CategoryName` (`CategoryName`);

--
-- Indexes for table `tblfood`
--
ALTER TABLE `tblfood`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfoodtracking`
--
ALTER TABLE `tblfoodtracking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblorderaddresses`
--
ALTER TABLE `tblorderaddresses`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserId` (`UserId`,`Ordernumber`);

--
-- Indexes for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserId` (`UserId`,`FoodId`,`OrderNumber`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblfood`
--
ALTER TABLE `tblfood`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `tblfoodtracking`
--
ALTER TABLE `tblfoodtracking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `tblorderaddresses`
--
ALTER TABLE `tblorderaddresses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tblorders`
--
ALTER TABLE `tblorders`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
