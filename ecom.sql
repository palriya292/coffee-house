-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2020 at 10:14 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`) VALUES
(8, 'shop coffee', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`, `added_on`) VALUES
(5, 'riya', 'riya@gmail.com', '8169979698', 'i love your coffee shop!!!', '2020-09-13 03:14:48'),
(6, 'riya', '123@gmail.com', '8169979698', 'hello I love coffee', '2020-11-10 06:52:31');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `pincode` int(11) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `total_price` float NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `order_status` int(11) NOT NULL,
  `txnid` varchar(20) NOT NULL,
  `mihpayid` varchar(20) NOT NULL,
  `payu_status` varchar(10) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `address`, `city`, `pincode`, `payment_type`, `total_price`, `payment_status`, `order_status`, `txnid`, `mihpayid`, `payu_status`, `added_on`) VALUES
(5, 27, 'thane/maharashtra', 'thane', 400606, 'COD', 2700, 'pending', 1, '6dd8b946610e56b24654', '', '', '2020-09-06 12:39:45'),
(6, 27, 'thane', 'thane', 400606, 'payu', 900, 'success', 1, '3966ce29f58400e31c8d', '403993715521579735', '', '2020-09-06 12:40:26'),
(7, 28, 'thane', 'maharashtra', 400606, 'COD', 540, 'pending', 1, '3ccbc591ddadd1f337d6', '', '', '2020-09-13 11:02:37'),
(8, 28, 'thane', 'maharashtra', 400606, 'payu', 590, 'success', 1, '56556a2789ef834c6030', '403993715521618772', '', '2020-09-13 11:10:31'),
(9, 28, 'thane', 'maharashtra', 400606, 'payu', 1950, 'success', 1, 'aee58f50773f91755f82', '403993715521618776', '', '2020-09-13 11:12:37'),
(10, 29, 'thane', 'maharashtra', 400606, 'COD', 590, 'pending', 1, 'f1844ae1b46196f61763', '', '', '2020-11-10 06:48:46'),
(11, 29, 'thane', 'thane', 400606, 'payu', 1950, 'success', 1, '1c551a3d3794408bf387', '403993715521964730', '', '2020-11-10 06:49:36'),
(12, 28, 'Thane', 'Maharashtra', 400606, 'COD', 540, 'pending', 1, '6c5522a6876601904c3c', '', '', '2020-11-28 03:48:55'),
(13, 28, 'thane west', 'Thane', 400601, 'payu', 590, 'failure', 1, '900498f8e8d6ced1d150', '403993715522151951', '', '2020-11-28 03:50:51'),
(14, 28, 'thane west', 'thane', 400601, 'payu', 590, 'success', 1, '7e961d7d9a6973b4a0eb', '403993715522151994', '', '2020-11-28 03:54:14');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`) VALUES
(7, 5, 32, 3, 900),
(8, 6, 31, 1, 900),
(9, 7, 32, 1, 540),
(10, 8, 31, 1, 590),
(11, 9, 30, 3, 650),
(12, 10, 31, 1, 590),
(13, 11, 30, 3, 650),
(14, 12, 26, 1, 540),
(15, 13, 25, 1, 590),
(16, 14, 25, 1, 590);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, 'Pending'),
(2, 'Processing'),
(3, 'Shipped'),
(4, 'Canceled'),
(5, 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `meta_title` text NOT NULL,
  `meta_desc` varchar(2000) NOT NULL,
  `meta_keyword` varchar(2000) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `meta_title`, `meta_desc`, `meta_keyword`, `status`) VALUES
(24, 8, 'KELAGUR WASHED (ULTRA DARK ROAST COFFEE)', 800, 540, 100, '577129960_KelagurWashed_400x.jpeg', 'An ultra dark, buttery coffee that helps us ease into the day smoothly.', 'This washed coffee comes from Kelagur Estates situated at 3500 feet. Kelagur Estates is a member of Specialty Coffee Association of India (SCAI) and exports most of its coffee to Australia, Germany, Sweden and Switzerland. It also has its own pulping and curing facilities that ensure coffee is always processed at peak freshness for optimum flavour.  \r\n\r\nRegion: Chikmagalur, Karnataka \r\nProcess: Washed Parchment\r\nAltitude: 3500 Feet \r\nBest with: Espresso, French Press, South Indian Filter, Moka Pot, Electric Brewer, Cold Brew\r\nCupper\'s Notes: Dark Chocolate, Almond, and Butter\r\n\r\nNote\r\n- Our fresh coffee beans are roasted in Mumbai, daily.\r\n- All our single origin Arabica coffees go through testing and quality checks at the farm and roast level to ensure a quality and delicious cup each time.', '', '', '', 1),
(25, 8, 'MARVAHULLA (DARK ROAST COFFEE) - NEW RELEASE', 999, 590, 100, '339628071_Marvahulla_4ffaf343-2495-49fc-92a9-348d9a5eec13_400x.jpeg', 'A chocolaty rush accompanied by caramel will captivate your senses from the very first sip of Marvahulla. Our personal favourite for an espresso coffee.', 'One of our bestselling coffee in India, Marvahulla hails from one of the last remaining coffee estates in the famed Nilgiri Mountains. It is known for its high peaks and luscious Arabica beans. The coffee bean grows denser (i.e. more flavourful) since it takes longer to mature at that height. These conditions also make it difficult for insects and pests to survive reducing the farm\'s dependence on chemicals.\r\n\r\nRegion: Nilgiris, Tamil Nadu\r\nProcess: Washed Parchment\r\nAltitude: 5000 Feet\r\nBest with: Espresso Coffee, South Indian Filter, Moka Pot, Electric Brewer, Cold Brew\r\nCupper\'s Notes: Cocoa and Caramel\r\n\r\nNote\r\n- This dark roast coffee is perfect to brew a rich body espresso coffee. It pairs beautifully with milk.\r\n- Each coffee bean of Marvahulla is roasted to perfection and is tested and cupped for quality and taste after each roasted batch.', '', '', '', 1),
(26, 8, 'GOWRI (ULTRA DARK ROAST COFFEE) - NEW RELEASE', 700, 540, 100, '501970505_gowri_400x.jpeg', 'A nutty ultra dark coffee with notes of roasted hazelnuts and marzipan. This Vienna roast coffee brews a delicious black coffee.', 'Higher elevation of this coffee farm and rich soil present here produces a more flavourful cup of coffee compared to lower elevation farms. Our Gowri has also won the ‘Best Indian Arabica Fine Cup’ award in 2017.\r\n\r\nRegion: Yercaud, Tamil Nadu \r\nProcess: Pulp Sun-dried (honey processed)\r\nAltitude: 4400 Feet \r\nBest with: Espresso, French Press, South Indian Filter, Moka Pot, Electric Brewer\r\nCupper\'s Notes: Roasted Hazelnuts and Marzipan\r\n\r\nNote:\r\n- This ultra dark (Vienna Roast) coffee is great as black coffee.\r\n- Each bag of Gowri is shipped to you within 24 hours of roasting.', '', '', '', 1),
(27, 8, 'ELEPHANT HILLS - MEDIUM-DARK ROAST COFFEE', 700, 540, 100, '355857912_Elephant_Hils_May_2019_400x.jpeg', 'Elephant Hills is found in the mountain of Valparai in Tamil Nadu at the height of 3500 feet.', 'Elephant Hills is found in the mountain of Valparai in Tamil Nadu at the height of 3500 feet. The farm is surrounded with an abundance of variety of different plants to provide shade for their coffee trees which produce very complex and flavourful coffee. This washed parchment processed, Espresso roast coffee produces a buttery smooth tasting coffee. \r\n\r\nOur coffee beans are roasted fresh in Mumbai, custom ground to suit your need and shipped in bio-degradable bags.\r\n\r\nRegion: Valparai, Tamil Nadu\r\nProcess: Washed Parchment \r\nAltitude: 3500 Feet\r\nBest with: Espresso, Moka Pot, French Press, Clever Dripper-Pour Over  \r\nCupper\'s Notes: Chocolate Butter Cookies, Vanilla, and Cardamom', '', '', '', 1),
(28, 8, 'DORAIKANAL (DARK ROAST COFFEE)', 900, 560, 100, '832785491_219722887_WS-Doraikanal_400x.jpeg', 'This new 2020 release of Doraikanal estate is brimming with flavour.', 'A sip of Doraikanal begins with a delicate, nutty flavour and ends with an astonishing rush of cocoa. You can also smell the aroma of cocoa in Doraikanal whole beans and ground coffee powder.\r\nDoraikanal Estates is home to 200-year-old Shola trees under whose shade this award-winning coffee is cultivated using traditional organic methods. Since the coffee is processed at the farm itself, it ensures the highest quality green coffee beans that we source and then roast and custom grind the beans to ground coffee powder suitable for your coffee maker.\r\nRegion: Pulneys, Tamil Nadu\r\nProcess: Washed Parchment\r\nAltitude: 4000 Feet\r\nBest with: Espresso, Clever Dripper, Cold Brew, Moka Pot, South Indian Filter\r\nCupper\'s Notes: Roasted Chestnuts and Rich Cocoa', '', '', '', 1),
(30, 8, 'PURPLE PROJECT BY KELAGUR', 999, 650, 100, '286696753_purple_project_400x.jpeg', 'Purple Project brews a high bodied, thick, and complex cup bursting with intrigue.', 'Coffee cherries start to bloom and turn red when they ripen.\r\nWe\'ve handpicked the biggest, ripest, juiciest coffee cherries to bring you this complex coffee. We gave these cherries a little more time till they were purple and full of flavour. We picked the coffee and slow dried it on African raised drying beds. These fresh coffee beans are then roasted to perfection and each batch is cupped to ensure the most consistent taste and quality.\r\nRegion: Chikmaglur, Karnataka\r\nProcess: Natural Sun-Dried\r\nAltitude: 2500 Feet \r\nBest with: Espresso, Aeropress, South Indian Filter, Moka Pot, Electric Brewer\r\nCupper\'s Notes: Banana, Blackberries, Nutmeg', '', '', '', 1),
(31, 8, 'RED HONEY BY KELAGUR ESTATE', 900, 590, 100, '872370146_381685041_red_honey_website_400x.jpeg', 'Playful hint of sweet spices with the fruitiness of Guava combines with a sweet caramel taste in one of our best medium roast coffee.', 'The name comes from this coffee’s cherries and the way the coffee bean is processed. Coffee cherries are picked when they’re fully red in colour (separating them from the yellow, unripe cherries). The cherries are then washed and each coffee bean is shade processed. Shade processing slows down the drying time, resulting in higher fermentation of the beans giving this coffee a sweeter taste (almost like adding a drop of honey) making it one of our best medium roast coffees.\r\nRegion: Chikmaglur, Karnataka\r\nProcess: Honey Sun-dried\r\nAltitude: 3500 Feet \r\nBest with: Moka Pot, Pour Over, AeroPress, Espresso, Electric Brewer\r\nCupper\'s Notes: Guava, Caramel, & Sweet Spices', '', '', '', 1),
(32, 8, 'KELAGUR HONEY 2020 RELEASE', 900, 540, 100, '298015850_Kelagur-Honey_1200x_ab807f31-5f8f-4a82-bbab-3e4adddd89f4_400x.jpeg', 'A comforting, earthy coffee that helps us ease into the day smoothly.', 'This pulp sun-dried (honey processed) coffee comes from Kelagur Estates situated at 3500 feet. Kelagur Estates is a member of Specialty Coffee Association of India (SCAI) and exports most of its coffee to Australia, Germany, Sweden and Switzerland. It also has its own pulping and curing facilities that ensure coffee is always processed at peak freshness for optimum flavour.  \r\n\r\nRegion: Chikmagalur, Karnataka \r\nProcess: Pulp Sun-dried (honey processed)\r\nAltitude: 3500 Feet \r\nBest with: Espresso, French Press, South Indian Filter, Moka Pot, Electric Brewer, Cold Brew\r\nCupper\'s Notes: Caramel, Sweet Spices and Apricot', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `mobile`, `added_on`) VALUES
(27, 'riya', 'riya123', 'palriya292@gmail.com', '8169979698', '2020-09-06 12:38:31'),
(28, 'riyapal', 'riya123', 'riya@gmail.com', '8169979698', '2020-09-13 11:01:54'),
(29, 'riya', '123456789', '123@gmail.com', '8169979698', '2020-11-10 06:46:20'),
(30, 'riya', '123456789', '1234@gmail.com', '8169979698', '2020-11-10 07:01:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
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
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
