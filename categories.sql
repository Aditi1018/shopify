-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 07, 2021 at 12:22 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `categories`
--

-- --------------------------------------------------------

--
-- Table structure for table `pdt_master`
--

DROP TABLE IF EXISTS `pdt_master`;
CREATE TABLE IF NOT EXISTS `pdt_master` (
  `pdt_id` int(11) NOT NULL,
  `pdt_name` varchar(50) NOT NULL,
  `pdt_dsc` varchar(200) NOT NULL,
  `pdt_quan` varchar(10) NOT NULL,
  `pdt_price` int(10) NOT NULL,
  `cat_id` varchar(11) NOT NULL,
  `cat_name` varchar(40) NOT NULL,
  `pdt_img` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pdt_master`
--

INSERT INTO `pdt_master` (`pdt_id`, `pdt_name`, `pdt_dsc`, `pdt_quan`, `pdt_price`, `cat_id`, `cat_name`, `pdt_img`) VALUES
(1001, 'Tata Salt', 'Is a must-have ingredient in the Indian kitchen.', '1 kg', 19, 'c01', 'DAL,ATTA AND MORE', 'sqlimg/1001.jpg'),
(1002, 'Grocery Sugar', 'Bring some sweetness to your meals with Family Farm Sugar that has been processed from finest sugarcane into pure and white crystals for a rich and sweetened flavour.', '1 kg', 42, 'c01', 'DAL,ATTA AND MORE', 'sqlimg/1002.jpeg'),
(1003, 'Fortune Sunlite Refined Sunflower Oil (Pouch)', 'Fortune Sunlite Refined Sunflower Oil is a healthy and nutritious cooking aid that keeps the natural flavour and nutrients of the food intact.', '1l', 177, 'c01', 'DAL,ATTA AND MORE', 'sqlimg/1003.jpg'),
(1004, 'Basic Arhar Dal/Toor Dal', 'Comes with low moisture content Tasty and healthy', '1kg', 103, 'c01', 'DAL,ATTA AND MORE', 'sqlimg/1004.jpeg'),
(1005, 'Aashirvaad Shudh Chakki Whole Wheat Atta', 'Enriched with wholesome vitamins, it can be used to prepare the softest of roti', '10kg', 337, 'c01', 'DAL,ATTA AND MORE', 'sqlimg/1005.png'),
(1006, 'Bajaj Almond Drops Enriched With 6X Vitamin E', 'Bajaj Almond Oil can reduce hair fall  strengthen hair, and make them more shiny.', '500ml', 484, 'c02', 'BATH AND BODY', 'sqlimg/1006.jpg'),
(1007, 'Colgate MaxFresh Breath Freshner', 'Switch on the power of freshness with Colgate Maxfre toothpaste that refreshes you ', '600g', 285, 'c02', 'BATH AND BODY', 'sqlimg/1007.jpeg'),
(1008, 'Pears Soft & Fresh Soap', 'Pears Soft & Fresh is enriched with mint extracts and pure glycerin.', '125g', 194, 'c02', 'BATH AND BODY', 'sqlimg/1008.jpeg'),
(1009, 'Tresemme Keratin Smooth Shampoo', 'TRESemmé Keratin Smooth Shampoo helps your hair restore its keratin leaving them visibly straight and smoother', '580ml', 420, 'c02', 'BATH AND BODY', 'sqlimg/1009.jpg'),
(1010, 'Listerine Cool Mint Mouthwash', 'Listerine cool mint mouthwash, brushing can miss a billion germs, which may lead to various oral problems', '250ml', 120, 'c02', 'BATH AND BODY', 'sqlimg/1010.jpg'),
(1011, 'Britannia Toastea', 'Goodness of wheat cherished in the crunchy texture of these bake rusks to fill each rusk with ample nutrition and nourishment', '273g', 33, 'c03', 'FOOD AND SNACKS', 'sqlimg/1011.jpg'),
(1012, 'Haldiram\'s Bhujia', 'Famous Bikaneri hot and spicy extruded fried Indian snack.', '1kg', 210, 'c03', 'FOOD AND SNACKS', 'sqlimg/1012.jpeg'),
(1013, 'Hershey\'s Chocolate Syrup', 'Rich, delicious and free flowing', '1kg', 292, 'c03', 'FOOD AND SNACKS', 'sqlimg/1013.jpeg'),
(1014, 'Veeba Cheese & Jalapeno Dip', 'Rich, creamy and smooth Ideal with tortilla chips and nachos', '300g', 109, 'c03', 'FOOD AND SNACKS', 'sqlimg/1014.jpg'),
(1015, 'Maggi Noodles', 'Maggi 2-Minute Masala Noodles is an instant noodles brand manufactured by Nestle', '140g', 25, 'c03', 'FOOD AND SNACKS', 'sqlimg/1015.jpg'),
(1011, 'Britannia Toastea', 'Goodness of wheat cherished in the crunchy texture of these bake rusks to fill each rusk with ample nutrition and nourishment', '273g', 33, 'c03', 'FOOD AND SNACKS', 'sqlimg/1011.jpg'),
(1012, 'Haldiram\'s Bhujia', 'Famous Bikaneri hot and spicy extruded fried Indian snack.', '1kg', 210, 'c03', 'FOOD AND SNACKS', 'sqlimg/1012.jpeg'),
(1013, 'Hershey\'s Chocolate Syrup', 'Rich, delicious and free flowing', '1kg', 292, 'c03', 'FOOD AND SNACKS', 'sqlimg/1013.jpeg'),
(1014, 'Veeba Cheese & Jalapeno Dip', 'Rich, creamy and smooth Ideal with tortilla chips and nachos', '300g', 109, 'c03', 'FOOD AND SNACKS', 'sqlimg/1014.jpg'),
(1015, 'Maggi Noodles', 'Maggi 2-Minute Masala Noodles is an instant noodles brand manufactured by Nestle', '140g', 25, 'c03', 'FOOD AND SNACKS', 'sqlimg/1015.jpg'),
(1016, 'Tide Plus Detergent Powder', 'Tide Plus Double Power has STAIN MAGNETS which remove the toughest of stains to give you stainless whites', '7kg', 788, 'c04', 'HOUSEOLD ITEMS', 'sqlimg/1016.jpg'),
(1017, 'Harpic Disinfectant Toilet Cleaner', 'Strategically bent bottleneck shape helps pour the liquid into deep corners under the toilet rim', '1l', 332, 'c04', 'HOUSEOLD ITEMS', 'sqlimg/1017.jpeg'),
(1018, 'Lux Rose & Vitamin E Beauty Soap', 'Soap contains Vitamin E know to nourish skin', '150g', 282, 'c04', 'HOUSEOLD ITEMS', 'sqlimg/1018.jpg'),
(1019, 'Hit Red Cockroach Killer', 'With unique formulation and nozzle design\r\nHas a special seek and kill applicator', '700ml', 313, 'c04', 'HOUSEOLD ITEMS', 'sqlimg/1019.jpg'),
(1020, 'Lizol Disinfectant ', 'Removes 100 types of Stains & 100 Germ strains', '5l', 696, 'c04', 'HOUSEOLD ITEMS', 'sqlimg/1020.jpg'),
(1021, 'Onion ', 'Contains Folic acid, Vitamin C and Amino acid', '1kg', 27, 'c05', 'FRUITS AND VEGETABLES', 'sqlimg/1021.jpg'),
(1022, 'Potato', 'Contains Vitamin C, Potassium, starch,.Potato helps in reducing inflammation, promote digestion and are good for skin.', '1kg', 18, 'c05', 'FRUITS AND VEGETABLES', 'sqlimg/1022.jpeg'),
(1023, 'Tomato', 'Contains Vitamin C, Vitamin K. Rich in carotene', '1kg', 30, 'c05', 'FRUITS AND VEGETABLES', 'sqlimg/1023.jpg'),
(1024, 'Capsicum', 'Contains Folic acid, Viatmin C, Vitamin K', '500g', 37, 'c05', 'FRUITS AND VEGETABLES', 'sqlimg/1024.jpeg'),
(1025, 'Cucumber', 'Cucumbers contain potassium, magnesium, vitamin C', '500g', 18, 'c05', 'FRUITS AND VEGETABLES', 'sqlimg/1025.jpg'),
(1026, 'B Natural Mixed Fruit Juice', 'Healthy and tasty fruit drink.Contains phyto-nutrients and fibre', '1l', 88, 'c06', 'BEVERAGES', 'sqlimg/1026.png'),
(1027, 'Coca Cola Soft Drink', 'Enjoy Coca-Cola’s delicious taste with meals or on the go.', '750ml', 40, 'c06', 'BEVERAGES', 'sqlimg/1027.jpg'),
(1028, 'Cadbury Bournvita Chocolate ', 'It has Phosphorous (which is the building block for normal bone development) and Vitamin D (which helps in normal absorption of Calcium and Phosphorous).', '1kg', 707, 'c06', 'BEVERAGES', 'sqlimg/1028.jpg'),
(1029, 'Nescafe Instant Coffee', 'Premium cofeee', '200g', 530, 'c06', 'BEVERAGES', 'sqlimg/1029.jpg'),
(1030, 'Brooke Bond Taj Mahal', 'Tasted, graded and perfectly blended at the Brooke bond Tea Excellence Centre.', '1kg', 600, 'c06', 'BEVERAGES', 'sqlimg/1030.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
