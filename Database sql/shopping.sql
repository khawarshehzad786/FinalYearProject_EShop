-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2021 at 10:19 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2017-01-24 16:21:18', '01-07-2020 03:25:30 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Books', 'Test anuj', '2017-01-24 19:17:37', '01-07-2020 03:58:39 PM'),
(4, 'Electronics', 'Electronic Products', '2017-01-24 19:19:32', ''),
(5, 'Furniture', 'test', '2017-01-24 19:19:54', ''),
(6, 'Fashion', 'Fashion', '2017-02-20 19:18:52', ''),
(7, 'Groceries', 'Groceries item', '2021-06-30 06:06:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 1, '2017-03-07 19:32:57', 'COD', 'Delivered'),
(3, 1, '4', 1, '2017-03-10 19:43:04', 'Debit / Credit card', 'Delivered'),
(4, 1, '17', 1, '2017-03-08 16:14:17', 'COD', 'in Process'),
(5, 1, '3', 1, '2017-03-08 19:21:38', 'COD', NULL),
(6, 1, '4', 1, '2017-03-08 19:21:38', 'COD', 'Delivered'),
(7, 6, '3', 0, '2021-06-29 08:03:09', 'COD', NULL),
(8, 6, '20', 1, '2021-06-29 08:03:09', 'COD', 'in Process'),
(9, 6, '16', 1, '2021-06-30 09:51:54', 'COD', 'Delivered'),
(10, 6, '34', 1, '2021-07-06 14:05:01', 'COD', 'in Process'),
(11, 1, '32', 1, '2021-07-08 08:14:54', 'COD', NULL),
(12, 8, '23', 1, '2021-07-08 08:17:39', 'COD', 'in Process'),
(13, 11, '24', 1, '2021-07-08 15:30:13', 'COD', NULL),
(14, 11, '30', 1, '2021-07-08 15:30:13', 'COD', NULL),
(15, 11, '37', 1, '2021-07-08 15:30:13', 'COD', NULL),
(16, 11, '39', 1, '2021-07-08 15:33:26', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36'),
(5, 1, 'Delivered', 'sdf', '2020-07-01 10:02:28'),
(6, 6, 'Delivered', 'good', '2020-07-01 10:32:33'),
(7, 8, 'in Process', 'on the way', '2021-06-29 08:04:12'),
(8, 9, 'in Process', 'you item is on the way', '2021-06-30 09:52:33'),
(9, 9, 'Delivered', 'Thank you for shopping here!', '2021-06-30 09:53:02'),
(10, 10, 'in Process', 'On the Way', '2021-07-06 14:06:33'),
(11, 12, 'in Process', 'on the way', '2021-07-08 08:18:16');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19'),
(5, 20, 4, 0, 0, 'est', 'dsg', 'd', '2020-07-01 09:52:50'),
(6, 3, 2, 0, 0, 'test', 'test', 'good', '2020-07-01 10:31:03');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(19, 6, 25, 'Asian Casuals  (White, White)', 'Asian', 1379, 1399, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Colour: White, White</li><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;\">Outer Material: Denim</li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><br></div></li></ul>', '1.jpeg', '2.jpeg', '3.jpeg', 45, 'In Stock', '2017-03-10 20:16:03', ''),
(22, 6, 25, 'Breathable Running Shoes', 'Breathable ', 1850, 1900, '<div class=\"product-title\" itemprop=\"name\" style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 8px; word-break: break-all; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><h1 class=\"product-title-text\" data-spm-anchor-id=\"a2g0o.detail.1000016.i6.574b7d0dsdn3lI\" style=\"box-sizing: border-box; padding: 0px; margin-bottom: 0px; font-size: 14px; line-height: 19px; font-weight: 500; width: fit-content;\">Breathable Running Shoes Men Lightweight Non-slip Sneakers Comfort Unisex Jogging Sport Shoes Walking Blue Zapatillas Siez 35-47</h1></div><div class=\"product-reviewer\" itemprop=\"aggregateRating\" itemscope=\"\" itemtype=\"http://schema.org/AggregateRating\" style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 12px; display: flex; align-items: center; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><div class=\"overview-rating\" aria-haspopup=\"true\" aria-expanded=\"false\" style=\"box-sizing: border-box; padding: 0px; margin: 0px 8px 0px 0px; cursor: pointer;\"><div class=\"next-rating next-rating-large next-rating-grade-high\" tabindex=\"0\" role=\"group\" aria-label=\"????\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; vertical-align: middle; display: inline-block; position: relative; font-size: 16px;\"><div class=\"next-rating-base next-rating-base-disabled\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; float: left; cursor: not-allowed;\"><div class=\"next-rating-underlay\" aria-hidden=\"true\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; white-space: nowrap; overflow: hidden;\"><span class=\"next-rating-icon\" style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 0px -2px;\"><span class=\"next-icon next-icon-favorites-filling next-medium\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; display: inline-block; font-family: NextIcon; -webkit-font-smoothing: antialiased; color: rgb(242, 242, 242); transition: all 50ms ease-in 0s; cursor: pointer;\"></span></span></div></div></div></div></div>', 's1.jpg', 's2.jpg', 's3.jpg', 50, 'In Stock', '2021-06-29 19:42:06', NULL),
(23, 6, 13, 'Relogio Masculino Watch Men', 'Relogio ', 2199, 2299, '<div class=\"product-title\" itemprop=\"name\" style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 8px; word-break: break-all; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><h1 class=\"product-title-text\" data-spm-anchor-id=\"a2g0o.detail.1000016.i3.673214df6Bx53j\" style=\"box-sizing: border-box; padding: 0px; margin-bottom: 0px; font-size: 14px; line-height: 19px; font-weight: 500; width: fit-content;\">Relogio Masculino New Fashion Watch Men LIGE Top Brand Sport Watches Mens Waterproof Quartz Clock Man Casual Military WristWatch</h1></div><div class=\"product-reviewer\" itemprop=\"aggregateRating\" itemscope=\"\" itemtype=\"http://schema.org/AggregateRating\" style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 12px; display: flex; align-items: center; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><div class=\"overview-rating\" aria-haspopup=\"true\" aria-expanded=\"false\" style=\"box-sizing: border-box; padding: 0px; margin: 0px 8px 0px 0px; cursor: pointer;\"><div class=\"next-rating next-rating-large next-rating-grade-high\" tabindex=\"0\" role=\"group\" aria-label=\"????\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; vertical-align: middle; display: inline-block; position: relative; font-size: 16px;\"><div class=\"next-rating-base next-rating-base-disabled\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; float: left; cursor: not-allowed;\"><div class=\"next-rating-underlay\" aria-hidden=\"true\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; white-space: nowrap; overflow: hidden;\"><span class=\"next-rating-icon\" style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 0px -2px;\"><span class=\"next-icon next-icon-favorites-filling next-medium\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; display: inline-block; font-family: NextIcon; -webkit-font-smoothing: antialiased; color: rgb(242, 242, 242); transition: all 50ms ease-in 0s; cursor: pointer;\"></span></span></div></div></div></div></div>', '1s.png', '2s.png', '3s.jpg', 99, 'In Stock', '2021-06-29 19:49:57', NULL),
(24, 6, 13, 'Rolex Watches', 'LIGE', 2499, 2599, '<h1 class=\"product-title-text\" data-spm-anchor-id=\"a2g0o.detail.1000016.i2.fd116d79RkklNQ\" style=\"box-sizing: border-box; padding: 0px; margin-bottom: 0px; font-size: 14px; line-height: 19px; font-weight: 500; width: fit-content; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, sans-serif;\">LIGE WoMens Watches Top Luxury Brand Business Quartz Watch Men Military Sports Waterproof Dress Wristwatch Black Relogio Masculino</h1>', 'updatedd.jpg', 'j2.jpg', 'j3.jpg', 99, 'In Stock', '2021-06-29 19:54:37', NULL),
(25, 6, 13, 'LIGE Brand', 'LIGE', 2899, 2999, '<h1 class=\"product-title-text\" data-spm-anchor-id=\"a2g0o.detail.1000016.i2.41314470qvUsJZ\" style=\"box-sizing: border-box; padding: 0px; margin-bottom: 0px; font-size: 14px; line-height: 19px; font-weight: 500; width: fit-content; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, sans-serif;\">2021 Men Watches LIGE Brand Sport Watches For Mens Quartz Clock Man Casual Military Waterproof Wrist Watch relogio masculino+Box</h1>', 'k1.jpg', 'k2.jpg', 'k3.jpeg', 99, 'In Stock', '2021-06-29 20:00:44', NULL),
(26, 6, 13, 'NAVIFORCE Luxury Brand', 'NAVIFORCE', 2899, 2999, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 22px;\">NAVIFORCE Luxury Brand Stainless Steel Waterproof Quartz Date Sport Watch With Box- NF9117</span><br>', 'b1.jpg', 'b2.jpg', 'b2.jpg', 99, 'In Stock', '2021-06-29 20:26:59', NULL),
(30, 7, 14, 'Dates Super Khopra 1KG', 'Super', 329, 350, '<h4 class=\"productname ng-binding\" style=\"box-sizing: border-box; font-size: 25px; line-height: 25px; margin-bottom: 5px; color: rgb(80, 80, 80); font-family: PTSans, sans-serif;\">Dates Super Khopra 1KG&nbsp;</h4>', 'datess1.jpg', 'datess2.jpg', 'datess3.jpg', 30, 'In Stock', '2021-06-30 14:48:51', NULL),
(31, 7, 14, 'Dry Nuts Mixed 250GM', 'Khawar Shehzad', 459, 469, '<h4 class=\"productname ng-binding\" style=\"box-sizing: border-box; font-size: 25px; line-height: 25px; margin-bottom: 5px; color: rgb(80, 80, 80); font-family: PTSans, sans-serif;\">Dry Nuts Mixed 250GM</h4>', 'dry2.jpg', 'dry 1.jpg', 'dry3.jpg', 30, 'In Stock', '2021-06-30 14:53:05', NULL),
(32, 7, 14, 'Coconut Powder 500GM', 'Super', 389, 399, '<h4 class=\"productname ng-binding\" style=\"box-sizing: border-box; font-size: 25px; line-height: 25px; margin-bottom: 5px; color: rgb(80, 80, 80); font-family: PTSans, sans-serif;\">Coconut Powder 500GM</h4>', 'coco1.jpg', 'coco2.jpg', 'coco3.jpg', 30, 'In Stock', '2021-06-30 15:09:07', NULL),
(33, 4, 18, 'Apple iPhone 11', 'Apple', 105999, 109999, '<h1 class=\"name\" style=\"box-sizing: border-box; margin-top: 5px; line-height: 18px;\"><font color=\"#555555\" face=\"FjallaOneRegular\"><span style=\"font-size: 20px; font-weight: 500;\"><br></span></font></h1><h1 class=\"name\" style=\"box-sizing: border-box; margin-top: 5px; line-height: 18px;\"><font color=\"#555555\" face=\"FjallaOneRegular\"><span style=\"font-size: 20px; font-weight: 500;\">Processor: Apple A13 Bionic (7 nm+)</span></font></h1><h1 class=\"name\" style=\"box-sizing: border-box; margin-top: 5px; line-height: 18px;\"><font color=\"#555555\" face=\"FjallaOneRegular\"><span style=\"font-size: 20px; font-weight: 500;\">RAM: 4 GB</span></font></h1><h1 class=\"name\" style=\"box-sizing: border-box; margin-top: 5px; line-height: 18px;\"><font color=\"#555555\" face=\"FjallaOneRegular\"><span style=\"font-size: 20px; font-weight: 500;\">Storage: 64 GB, 128 GB, 256 GB</span></font></h1><h1 class=\"name\" style=\"box-sizing: border-box; margin-top: 5px; line-height: 18px;\"><font color=\"#555555\" face=\"FjallaOneRegular\"><span style=\"font-size: 20px; font-weight: 500;\">Display: 6.1 inches</span></font></h1><h1 class=\"name\" style=\"box-sizing: border-box; margin-top: 5px; line-height: 18px;\"><font color=\"#555555\" face=\"FjallaOneRegular\"><span style=\"font-size: 20px; font-weight: 500;\">Camera: 12 MP (wide) + 12 MP (ultrawide)</span></font></h1><h1 class=\"name\" style=\"box-sizing: border-box; margin-top: 5px; line-height: 18px;\"><font color=\"#555555\" face=\"FjallaOneRegular\"><span style=\"font-size: 20px; font-weight: 500;\">Battery: Non-removable Li-Ion 3110 mAh battery + Fast</span></font></h1>', 'Apple-iPhone-11-1.jpg', 'Apple-iPhone-11-2.jpg', 'Apple-iPhone-11-3.jpg', 99, 'In Stock', '2021-06-30 20:34:01', NULL),
(34, 4, 18, 'Apple iPhone 12 Pro Max', 'Apple', 160999, 165999, '<h1 class=\"specs-phone-name-title\" data-spec=\"modelname\" style=\"box-sizing: border-box; margin-top: -2px; margin-bottom: 0px; padding: 0px 0px 0px 10px; border: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 300; font-stretch: normal; line-height: 47px; font-family: Google-Oswald, Arial, sans-serif; vertical-align: baseline; color: rgb(255, 255, 255); text-shadow: rgba(0, 0, 0, 0.4) 1px 1px 2px;\">Apple iPhone 12 Pro Max</h1><div><table cellspacing=\"0\" style=\"margin: 0px; padding: 1px 0px; border-width: 5px 0px 0px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: initial; border-top-color: rgb(238, 238, 238); border-right-color: initial; border-bottom-color: initial; border-left-color: initial; border-image: initial; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: Arimo, Arial, sans-serif; vertical-align: baseline; width: 727px; background-color: rgb(250, 250, 250); color: rgb(0, 0, 0);\"><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><th rowspan=\"5\" scope=\"row\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px medium 0px 0px; border-top-style: initial; border-right-style: none; border-bottom-style: initial; border-left-style: initial; border-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; line-height: normal; font-family: Google-Oswald, Arial; vertical-align: top; text-align: left; text-transform: uppercase; width: 86px; color: rgb(213, 0, 0);\">DISPLAY</th><td class=\"ttl\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; color: rgb(125, 116, 100); width: 110px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=display-type\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(85, 85, 85);\">Type</a></td><td class=\"nfo\" data-spec=\"displaytype\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative;\">Super Retina XDR OLED, HDR10, Dolby Vision, 800 nits (typ), 1200 nits (peak)</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><td class=\"ttl\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; color: rgb(125, 116, 100); width: 110px;\"><a href=\"https://www.gsmarena.com/apple_iphone_12_pro_max-10237.php#\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(85, 85, 85);\">Size</a></td><td class=\"nfo\" data-spec=\"displaysize\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative;\">6.7 inches, 109.8 cm<sup style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 0.8em; line-height: 0.8em; font-family: inherit; vertical-align: super;\">2</sup>&nbsp;(~87.4% screen-to-body ratio)</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><td class=\"ttl\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; color: rgb(125, 116, 100); width: 110px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=resolution\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(85, 85, 85);\">Resolution</a></td><td class=\"nfo\" data-spec=\"displayresolution\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative;\">1284 x 2778 pixels, 19.5:9 ratio (~458 ppi density)</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><td class=\"ttl\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; color: rgb(125, 116, 100); width: 110px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=screen-protection\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(85, 85, 85);\">Protection</a></td><td class=\"nfo\" data-spec=\"displayprotection\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative;\">Scratch-resistant ceramic glass, oleophobic coating</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><td class=\"ttl\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px 0px medium; border-top-style: initial; border-right-style: initial; border-bottom-style: none; border-left-style: initial; border-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; color: rgb(125, 116, 100); width: 110px;\">&nbsp;</td><td class=\"nfo\" data-spec=\"displayother\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px 0px medium; border-top-style: initial; border-right-style: initial; border-bottom-style: none; border-left-style: initial; border-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative;\">Wide color gamut<br style=\"box-sizing: border-box; content: &quot;&quot;; display: block; width: calc(100% + 20px); position: relative; left: -10px; border-top: 1px solid rgb(240, 240, 240); margin: 2px 0px; line-height: 23px;\">True-tone<br><br><table cellspacing=\"0\" style=\"margin: 0px; padding: 1px 0px; border-width: 5px 0px 0px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: initial; border-top-color: rgb(238, 238, 238); border-right-color: initial; border-bottom-color: initial; border-left-color: initial; border-image: initial; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: Arimo, Arial, sans-serif; vertical-align: baseline; width: 727px; background-color: rgb(250, 250, 250);\"><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><th rowspan=\"5\" scope=\"row\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px medium 0px 0px; border-top-style: initial; border-right-style: none; border-bottom-style: initial; border-left-style: initial; border-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; line-height: normal; font-family: Google-Oswald, Arial; vertical-align: top; text-align: left; text-transform: uppercase; width: 86px; color: rgb(213, 0, 0);\">MEMORY</th><td class=\"ttl\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; color: rgb(125, 116, 100); width: 110px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=memory-card-slot\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(85, 85, 85);\">Card slot</a></td><td class=\"nfo\" data-spec=\"memoryslot\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative;\">No</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><td class=\"ttl\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; color: rgb(125, 116, 100); width: 110px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=dynamic-memory\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(85, 85, 85);\">Internal</a></td><td class=\"nfo\" data-spec=\"internalmemory\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative;\">128GB 6GB RAM, 256GB 6GB RAM, 512GB 6GB RAM</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><td class=\"ttl\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px 0px medium; border-top-style: initial; border-right-style: initial; border-bottom-style: none; border-left-style: initial; border-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; color: rgb(125, 116, 100); width: 110px;\">&nbsp;</td><td class=\"nfo\" data-spec=\"memoryother\" style=\"box-sizing: border-box; margin: 0px; padding: 2px 10px; border-width: 0px 0px medium; border-top-style: initial; border-right-style: initial; border-bottom-style: none; border-left-style: initial; border-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative;\">NVMe</td></tr></tbody></table><br><br><br><br><br><br></td></tr></tbody></table></div>', 'iphone.jpg', 'iphone1.jpg', 'iphone2.jpg', 99, 'In Stock', '2021-06-30 20:41:20', NULL),
(35, 4, 18, 'vivo Y52 5G', 'Vivo', 179999, 189999, '<div><div>Released 2021, June 20</div><div>193g, 8.5mm thickness</div><div>Android 11, Funtouch 11.1</div><div>128GB storage, microSDXC</div><div><br></div><div>NETWORK<span style=\"white-space:pre\">	</span>Technology<span style=\"white-space:pre\">	</span></div><div>GSM / HSPA / LTE / 5G</div><div>LAUNCH<span style=\"white-space:pre\">	</span>Announced<span style=\"white-space:pre\">	</span>2021, May 18</div><div>Status<span style=\"white-space:pre\">	</span>Available. Released 2021, June 20</div><div>BODY<span style=\"white-space:pre\">	</span>Dimensions<span style=\"white-space:pre\">	</span>164 x 75.3 x 8.5 mm (6.46 x 2.96 x 0.33 in)</div><div>Weight<span style=\"white-space:pre\">	</span>193 g (6.81 oz)</div><div>SIM<span style=\"white-space:pre\">	</span>Dual SIM (Nano-SIM, dual stand-by)</div><div>DISPLAY<span style=\"white-space:pre\">	</span>Type<span style=\"white-space:pre\">	</span>IPS LCD</div><div>Size<span style=\"white-space:pre\">	</span>6.58 inches, 104.3 cm2 (~84.5% screen-to-body ratio)</div><div>Resolution<span style=\"white-space:pre\">	</span>1080 x 2408 pixels, 20:9 ratio (~401 ppi density)</div></div>', 'vivo1.jpg', 'vivo2.jpg', 'vivo3.jpg', 99, 'In Stock', '2021-06-30 20:48:37', NULL),
(37, 3, 20, 'The Secret Book', 'Khawar Shehzad', 550, 600, '<span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">The Secret is a 2006 self-help book by Rhonda Byrne, based on the earlier film of the same name.&nbsp;</span><br>', 'y1.jpg', 'y2.png', 'y3.jpg', 50, 'In Stock', '2021-06-30 21:32:36', NULL),
(38, 5, 24, 'Three Seater Sofa', 'Khawar Shehzad', 18999, 19999, '<h1 class=\"entry-title\" style=\"margin-bottom: 5px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 25px; line-height: 1.4; font-family: Raleway, serif; vertical-align: baseline; color: rgb(35, 35, 35);\">Three Seater Sofa</h1>', 'sofa1.jpg', 'sofa2.jpg', 'sofa3.jpg', 200, 'In Stock', '2021-06-30 21:52:46', NULL),
(39, 5, 23, 'Induscraft Solid Wood King Bed With Storage', 'Khawar Shehzad', 27999, 29999, '<p class=\"text\" style=\"box-sizing: border-box; line-height: 20px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\"><span style=\"box-sizing: border-box; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">Induscraft Solid Wood King Bed With Storage</span><span style=\"box-sizing: border-box; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(Finish Color - Honey Brown)</span><br style=\"box-sizing: border-box;\"></p><div style=\"box-sizing: border-box; color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\"><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; list-style: none;\"><li style=\"box-sizing: border-box;\">Material Subtype: Rosewood (Sheesham)<br style=\"box-sizing: border-box;\"></li><li style=\"box-sizing: border-box;\">W x H x D: 1850 mm x 875 mm x 2057.5 mm<br style=\"box-sizing: border-box;\"></li><li style=\"box-sizing: border-box;\">Floor Clearance: 8 mm<br style=\"box-sizing: border-box;\"></li><li style=\"box-sizing: border-box;\">Delivery Condition: Knock Down</li></ul></div>', 'bade1.jpg', 'bade2.jpg', 'bade3.jpg', 500, 'In Stock', '2021-06-30 21:54:31', NULL),
(40, 6, 25, 'Adidas MESSI 16 Football Shoes (Blue)', 'Adidas ', 4499, 4999, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; list-style: none; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Colour: Blue</li><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;\">Closure: Laced</li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><span style=\"box-sizing: border-box; font-weight: 700;\">Weight</span></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; list-style: none; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; text-align: left; margin: 0px; padding: 0px; list-style: none;\"><span style=\"box-sizing: border-box; font-weight: 700;\">200 g (per single Shoe) - Weight of the product may vary depending on size.</span></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><span style=\"box-sizing: border-box; font-weight: 700;\">Style</span></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; list-style: none; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; text-align: left; margin: 0px; padding: 0px; list-style: none;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Panel and Stitch Detail, Textured Detail</span></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><span style=\"box-sizing: border-box; font-weight: 700;\">Tip Shape</span></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; list-style: none; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; text-align: left; margin: 0px; padding: 0px; list-style: none;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Round</span></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><span style=\"box-sizing: border-box; font-weight: 700;\">Season</span></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; list-style: none; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; text-align: left; margin: 0px; padding: 0px; list-style: none;\"><span style=\"box-sizing: border-box; font-weight: 700;\">AW16</span></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><span style=\"box-sizing: border-box; font-weight: 700;\">Closure</span></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; list-style: none; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; text-align: left; margin: 0px; padding: 0px; list-style: none;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Laced</span></li></ul></li></ul>', 'shoes1.jpeg', 'shoes2.jpeg', 'shoes3.jpeg', 99, 'In Stock', '2021-07-01 07:55:13', NULL),
(42, 3, 19, 'The Secret Book', 'Superior', 450, 490, 'tgggj', '3.jpg', '3.jpg', '3.jpg', 50, 'In Stock', '2021-07-08 15:21:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(13, 6, 'Watches', '2021-06-29 19:31:57', NULL),
(14, 7, 'Home use Products', '2021-06-30 14:46:46', NULL),
(15, 7, 'Health-and-Beauty', '2021-06-30 15:10:48', NULL),
(16, 4, 'Led Television', '2021-07-07 05:11:40', NULL),
(17, 4, 'Televisions', '2021-07-07 05:12:11', NULL),
(18, 4, 'Mobile', '2021-07-07 05:12:31', NULL),
(19, 3, 'sad', '2021-07-07 05:25:45', NULL),
(20, 3, 'Drama ', '2021-07-07 05:26:10', NULL),
(21, 4, 'Laptop', '2021-07-07 05:28:33', NULL),
(22, 4, 'Computer', '2021-07-07 05:28:50', NULL),
(23, 5, 'Bade', '2021-07-07 05:29:12', NULL),
(24, 5, 'Sofa Furniture', '2021-07-07 05:29:44', NULL),
(25, 6, 'Men Footwear', '2021-07-07 05:30:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(27, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-29 08:00:03', NULL, 1),
(28, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-30 09:51:23', NULL, 1),
(29, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-06 14:03:57', NULL, 1),
(30, 'kamran@nazir', 0x3a3a3100000000000000000000000000, '2021-07-07 05:40:41', '07-07-2021 11:10:46 AM', 1),
(31, 'nimrakhalid901@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-07 05:41:07', '07-07-2021 11:29:03 AM', 1),
(32, 'kamran@nazir', 0x3a3a3100000000000000000000000000, '2021-07-07 14:36:08', NULL, 1),
(33, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-08 08:11:23', '08-07-2021 01:46:44 PM', 1),
(34, 'kamran@nazir', 0x3a3a3100000000000000000000000000, '2021-07-08 08:16:59', '08-07-2021 06:55:44 PM', 1),
(35, 'nimra@12', 0x3a3a3100000000000000000000000000, '2021-07-08 15:19:22', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(6, 'KHAWAR SHAHZAD', 'abc@gmail.com', 123, '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-29 07:59:53', NULL),
(7, 'Nimra Khalid', 'nimrakhalid901@gmail.com', 123, '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-07 05:39:54', NULL),
(8, 'Kamran Nazir', 'kamran@nazir', 123123, '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-07 05:40:26', NULL),
(9, 'KHAWAR SHAHZAD', 'Khawar@shahzad', 123, '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-07 05:59:24', NULL),
(10, 'KHAWAR SHAHZAD', 'Khawarshahzad@gmail.com', 123, '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-07 05:59:44', NULL),
(11, 'nimra', 'nimra@12', 123, '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-08 15:19:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2021-07-06 18:53:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
