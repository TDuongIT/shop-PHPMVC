-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.1.0 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for jewelry_shop
CREATE DATABASE IF NOT EXISTS `jewelry_shop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `jewelry_shop`;

-- Dumping structure for table jewelry_shop.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `category_img` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table jewelry_shop.categories: ~3 rows (approximately)
DELETE FROM `categories`;
INSERT INTO `categories` (`category_id`, `category_name`, `category_img`) VALUES
	(2, 'Diamond Ring ', '309014735_1687318241650566_7544168405196009222_n.jpg'),
	(3, 'Bracelet', '332530948_1072622724128902_3612999469251630889_n.jpg'),
	(4, 'Earring ', '360120490_1887905198258535_4069717313832458860_n.jpg');

-- Dumping structure for table jewelry_shop.customers
CREATE TABLE IF NOT EXISTS `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `customer_password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `customer_address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `customer_phone` int NOT NULL,
  `verify_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `account_type` tinyint NOT NULL DEFAULT '0' COMMENT '0 = customer, 1 = admin',
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table jewelry_shop.customers: ~15 rows (approximately)
DELETE FROM `customers`;
INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_address`, `customer_phone`, `verify_token`, `account_type`) VALUES
	(1, 'To Tung Duong', 'duong123@gmail.com', '123123', 'Hai Duong City', 86617623, '', 0),
	(2, 'foden', 'foden123@gmail.com', '111111', 'London', 932298432, '', 0),
	(3, 'tung', 'tung123@gmail.com', '$2y$10$Ar2oqtjIHRUn0LMJJj8ic.2awXEaIS6mUn4EqEuYb2nPcQwrvto7a', 'Hai Duong', 965738673, '', 0),
	(4, 'tung', 'tung123@gmail.com', '$2y$10$MYS5wXreUyYplBaNh2Ymt.1b9wi1FgEBUqEAILHjdGXQN2cC4.Eq2', 'Hai Duong', 965738673, '', 0),
	(5, 'tung', 'tung123@gmail.com', '$2y$10$mRDIZZlYkhSAVPgHkbLNwO6amYt/lkaseIgToDH430AocHE2HBRxi', 'Hai Duong', 965738673, '', 0),
	(6, 'tung', 'tung123@gmail.com', '$2y$10$GqsLAgg0UU9tPIzQj24VqOqhIyoyxUFDbvVe4othogXGA6KvY2NQG', 'Hai Duong', 965738673, '', 0),
	(7, 'tung', 'tung123@gmail.com', '$2y$10$eCzuIxFKmkRbj6AgK4VseO1aW8r1TOZ4fpzLprSB8jwVh1WP1PJOa', 'Hai Duong', 965738673, '', 0),
	(8, 'tung', 'tung123@gmail.com', '$2y$10$BxDx3xbkmMDHyJk4BJ4RI.1XgQt8JvC4pQhyZGDDNPSfQNTXS38fq', 'Hai Duong', 965738673, '', 0),
	(9, 'messi', 'messi123@gmail.com', '$2y$10$WCNekc5HNyQ9WkTjYbIhLOe5wHL/uQVY4jfyBd58mDiYpnTTy5QdS', 'Hai Duong', 95678275, '', 0),
	(10, 'duy', 'duy123@gmail.com', '$2y$10$hvr4UPpsLYG.yJqjf2NDnOhCnGDkEjPYyfmxzQWmb2YYn7k.IoWCi', 'HN', 49584254, '', 0),
	(11, 'nam', 'nam123@gmail.com', '$2y$10$.40QSMGilkOuhAKoYoW4VOzfUo8jb1Vn5hbE.DzCGkHgN/htg.Fhu', 'HP', 95869343, '', 0),
	(12, 'huy', 'huy123@gmail.com', '$2y$10$uI8l1dz8C6hWOkibWrBlN.WF.8ErzsZ3U8OosnYPvwTzh0FdQEVuS', 'HN', 99639431, '', 0),
	(35, 'To Tung Duong', 'tod25504@gmail.com', '$2y$10$XIozre1k3QVW32N113lUHedAw/iS8YIIzNvAQyNzBNA162oWBHkkW', 'Hai Duong', 866617623, '', 0),
	(36, 'admin', 'admin@gmail.com', '$2y$10$4dyPEa0SvqVaplubFrhZ4eU8N8EfBZmb.qdn4wuMuuQyvshjY/SGu', 'HN', 965738673, '', 1),
	(37, 'User Name', 'user@gmail.com', '$2y$10$ufj79YLH8WsZTkSiPU87c.l06zNEkyF.3rL9vPNMJwHKc7w7si4/C', 'HN', 965738673, '', 0);

-- Dumping structure for table jewelry_shop.guests
CREATE TABLE IF NOT EXISTS `guests` (
  `guest_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `guest_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `guest_email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `guest_phone` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `guest_address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`guest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table jewelry_shop.guests: ~24 rows (approximately)
DELETE FROM `guests`;
INSERT INTO `guests` (`guest_id`, `guest_name`, `guest_email`, `guest_phone`, `guest_address`) VALUES
	('103qt5gi05v7aoa0qcs3jt2mhh', 'Eve Snyder', 'wonep@mailinator.com', '+1 (883) 934-9821', 'Velit laudantium qu'),
	('1okc95ej6k35amf7ctu2v7m26g', 'Jen', 'jen@gmail.com', '078666778', 'Hai Duong'),
	('3e0qdhc65mlq3bnt6c931vs281', 'Chastity Velez', 'zymekoroc@mailinator.com', '+1 (344) 823-7108', 'Accusamus ad ea id q'),
	('65380b43584fa', 'Uyen', 'uyen@gmail.com', '098772614', 'Hai Duong'),
	('65380b8d6db11', 'Rumon', 'rumon@gmail.com', '0988767999', 'Hai Duong'),
	('6d16ptefqcmr4r9cv291dj1g76', 'Katelyn Garner', 'domazy@mailinator.com', '1873557', 'Voluptas est quod mo'),
	('6euhapvpvi13hgvaagb1fagu77', 'Nerea Lowery', 'fymisot@mailinator.com', '+1 (186) 616-5509', 'Soluta sed earum lab'),
	('6frtctsovp3k62vumfd6necmlm', 'Nigel Cotton', 'livekeryg@mailinator.com', '+1 (704) 285-4922', 'Quo aut sit asperio'),
	('bv1kd77hkr9rkum12qbkipdfb1', 'Hayu', 'test@gmail.com', '0988767999', 'Ha Noi'),
	('c355bhrfba3492p2dv5kf4dk9d', 'Adam Hardy', 'febovo@mailinator.com', '+1 (254) 243-8413', 'Deserunt nisi volupt'),
	('d97rs8hi19fnh9ca02dehh7itl', 'Evelyn Montgomery', 'pybasyj@mailinator.com', '+1 (664) 991-7431', 'Voluptas in aliquam '),
	('e2uoje66tcm53vipk05j8mba5c', 'Arden England', 'figodu@mailinator.com', '+1 (455) 312-3493', 'Nostrum repudiandae '),
	('ecgdrcstvv7faj5jtnhnebrit3', 'Kyle Aguilar', 'vypefalag@mailinator.com', '+1 (922) 175-2425', 'Non dolor incididunt'),
	('epute98cj6ptlbj5bfug3tc845', 'Buffy Espinoza', 'jajaqi@mailinator.com', '+1 (328) 206-7357', 'Incididunt qui quas '),
	('etk61m6rte31c29r5h83dkmhoh', 'Craig Giles', 'decaper@mailinator.com', '+1 (347) 639-5013', 'Dolor minima aute pr'),
	('f32lvflic60iebe9dqkbmpf28r', '', '', '', ''),
	('fm8k5ef5uah7do5ag7d5ukkq8r', 'Kokie', 'uyen@gmail.com', '0988767999', 'Hai Duong'),
	('fp91g78f3t0e6vfpfm1itkcbch', 'Trevor Pitts', 'wepoquje@mailinator.com', '+1 (824) 178-7703', 'Cupidatat nesciunt '),
	('iu77g4nrdumq2olrn2gr5n2mcj', 'Vera Carr', 'nujy@mailinator.com', '+1 (908) 323-5484', 'Illo assumenda elit'),
	('jtdp3gkkvpc38n72ghm88a2eq0', 'Imogene Craft', 'zyha@mailinator.com', '+1 (274) 363-7658', 'Iure recusandae Rec'),
	('p38auisqralb3mnrnu2crct7qe', 'Final', 'test@gmail.com', '0988767999', 'Hai Duong'),
	('pi102bscjoq1dprgf4v2sf2hja', 'Guest ', 'guest@gmail.com', '097341431', 'Ha Noi'),
	('u7skjmig8i8bpq4apo5i72vdbm', 'Jin', 'jin@gmail.com', '0988777555', 'HN'),
	('uq7ifvd1nahdtktv92981n5628', 'Rose', 'rose@gmail.com', '0988767999', 'Ha Noi');

-- Dumping structure for table jewelry_shop.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `guest_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total_amount` double NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Waiting For Progressing',
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  KEY `FK_orders_guests` (`guest_id`),
  CONSTRAINT `FK_orders_guests` FOREIGN KEY (`guest_id`) REFERENCES `guests` (`guest_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table jewelry_shop.orders: ~28 rows (approximately)
DELETE FROM `orders`;
INSERT INTO `orders` (`order_id`, `customer_id`, `guest_id`, `order_date`, `total_amount`, `order_status`) VALUES
	(8, 35, NULL, '2023-10-04 03:06:06', 60, 'Confirmed'),
	(9, 35, NULL, '2023-10-09 19:50:56', 200, 'Waiting For Progressing'),
	(10, 35, NULL, '2023-10-09 19:51:58', 100, 'Confirmed'),
	(11, 35, NULL, '2023-10-09 19:56:22', 220, 'Canceled'),
	(12, 35, NULL, '2023-10-11 01:25:13', 180, 'Waiting For Progressing'),
	(13, 35, NULL, '2023-10-11 01:26:18', 100, 'Waiting For Progressing'),
	(14, 35, NULL, '2023-10-13 23:46:43', 100, 'Confirmed'),
	(15, 35, NULL, '2023-10-23 19:03:49', 100, 'Waiting For Progressing'),
	(27, NULL, '1okc95ej6k35amf7ctu2v7m26g', '2023-10-25 08:40:36', 90, 'Confirmed'),
	(28, 35, NULL, '2023-10-25 08:41:46', 90, 'Waiting For Progressing'),
	(29, NULL, 'u7skjmig8i8bpq4apo5i72vdbm', '2023-11-27 19:54:51', 60, 'Canceled'),
	(30, 35, NULL, '2023-11-27 19:56:52', 406, 'Waiting For Progressing'),
	(31, 35, NULL, '2023-11-27 20:15:02', 60, 'Confirmed'),
	(32, NULL, 'c355bhrfba3492p2dv5kf4dk9d', '2023-11-28 21:18:07', 40, 'Waiting For Progressing'),
	(33, NULL, '6d16ptefqcmr4r9cv291dj1g76', '2023-11-28 21:26:25', 0, 'Waiting For Progressing'),
	(34, NULL, 'ecgdrcstvv7faj5jtnhnebrit3', '2023-11-28 21:29:06', 0, 'Waiting For Progressing'),
	(35, NULL, 'epute98cj6ptlbj5bfug3tc845', '2023-11-28 21:29:59', 180, 'Waiting For Progressing'),
	(36, NULL, '6frtctsovp3k62vumfd6necmlm', '2023-11-28 21:32:43', 40, 'Waiting For Progressing'),
	(37, NULL, '103qt5gi05v7aoa0qcs3jt2mhh', '2023-11-28 21:38:34', 60, 'Waiting For Progressing'),
	(38, NULL, '6euhapvpvi13hgvaagb1fagu77', '2023-11-29 00:40:52', 316, 'Waiting For Progressing'),
	(39, NULL, 'fp91g78f3t0e6vfpfm1itkcbch', '2023-11-29 00:58:10', 662, 'Waiting For Progressing'),
	(40, NULL, 'jtdp3gkkvpc38n72ghm88a2eq0', '2023-11-29 01:50:46', 100, 'Waiting For Progressing'),
	(41, NULL, 'iu77g4nrdumq2olrn2gr5n2mcj', '2023-11-29 01:52:59', 1640, 'Waiting For Progressing'),
	(42, NULL, '3e0qdhc65mlq3bnt6c931vs281', '2023-11-29 02:10:02', 60, 'Waiting For Progressing'),
	(43, NULL, 'e2uoje66tcm53vipk05j8mba5c', '2023-11-29 02:10:53', 60, 'Waiting For Progressing'),
	(44, NULL, 'f32lvflic60iebe9dqkbmpf28r', '2023-11-29 20:21:48', 50, 'Waiting For Progressing'),
	(45, NULL, 'd97rs8hi19fnh9ca02dehh7itl', '2023-11-29 20:38:56', 60, 'Waiting For Progressing'),
	(46, NULL, 'etk61m6rte31c29r5h83dkmhoh', '2023-11-29 20:48:50', 662, 'Waiting For Progressing');

-- Dumping structure for table jewelry_shop.order_items
CREATE TABLE IF NOT EXISTS `order_items` (
  `order_item_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table jewelry_shop.order_items: ~27 rows (approximately)
DELETE FROM `order_items`;
INSERT INTO `order_items` (`order_item_id`, `order_id`, `product_id`, `quantity`) VALUES
	(10, 9, 37, 2),
	(11, 10, 22, 2),
	(12, 11, 33, 3),
	(13, 11, 11, 2),
	(14, 12, 29, 2),
	(15, 12, 7, 2),
	(16, 13, 22, 2),
	(17, 14, 30, 2),
	(18, 15, 30, 2),
	(26, 27, 7, 3),
	(27, 28, 7, 3),
	(28, 29, 7, 2),
	(29, 30, 46, 2),
	(30, 31, 6, 2),
	(31, 32, 11, 2),
	(32, 35, 27, 2),
	(33, 36, 11, 2),
	(34, 37, 7, 2),
	(35, 38, 49, 2),
	(36, 39, 41, 2),
	(37, 40, 30, 2),
	(38, 41, 39, 2),
	(39, 42, 6, 2),
	(40, 43, 7, 2),
	(41, 44, 30, 1),
	(42, 45, 7, 2),
	(43, 46, 41, 2);

-- Dumping structure for table jewelry_shop.products
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `product_size_id` int NOT NULL,
  `product_desc` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `product_price` double NOT NULL,
  `product_img` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `category_id` int NOT NULL,
  `product_quantity` int NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `category_id` (`category_id`),
  KEY `product_size_id` (`product_size_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`product_size_id`) REFERENCES `product_sizes` (`product_size_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table jewelry_shop.products: ~21 rows (approximately)
DELETE FROM `products`;
INSERT INTO `products` (`product_id`, `product_name`, `product_size_id`, `product_desc`, `product_price`, `product_img`, `category_id`, `product_quantity`) VALUES
	(6, 'Ring Flower 1', 2, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Facilis reprehenderit provident, tenetur alias libero, nostrum numquam sint doloremque quae fugiat earum in rerum enim ut blanditiis eligendi laborum mollitia eos?', 30, '309916756_1687318284983895_3257324306781712909_n.jpg', 2, 14),
	(7, 'Ring Oval', 5, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Facilis reprehenderit provident, tenetur alias libero', 30, '309420110_1687318318317225_8795160639514194572_n.jpg', 2, 3),
	(9, 'Hank', 5, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Facilis reprehenderit provident, tenetur alias libero, nostrum numquam sint doloremque quae ', 35, '332477119_1386023138896355_6141328978872264659_n.jpg', 3, 17),
	(11, 'Chanel', 7, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Facilis reprehenderit provident, tenetur alias libero, nostrum numquam sint doloremque quae fugiat earum in rerum enim ut blanditiis eligendi laborum mollitia eos?', 20, '360119777_1887905114925210_8648428343280534136_n.jpg', 4, 15),
	(20, 'Bracelet Tic', 11, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Facilis reprehenderit provident, tenetur alias libero, nostrum numquam sint doloremque quae', 30, '332573781_1337908196752351_9044720476096839138_n.jpg', 3, 16),
	(22, 'LV', 3, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Facilis reprehenderit provident, tenetur alias libero, nostrum numquam sint doloremque quae', 50, '360125645_1887905178258537_8238759797085553680_n.jpg', 4, 9),
	(27, 'Bracelet XO', 7, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid culpa fugiat facere sint porro velit beatae eveniet, debitis deleniti natus molestiae nobis voluptatibus, ab veritatis praesentium, eos dolores corrupti numquam.', 90, '332477119_1386023138896355_6141328978872264659_n.jpg', 3, 2),
	(29, 'Enchanted Elegance Ring', 1, '  Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, repellendus facere. Pariatur cupiditate omnis inventore. Rem, et eos itaque tenetur iusto dolorem inventore nam voluptas accusamus, obcaecati non, alias ea.', 60, '257694294_562288401805187_9139805117896722959_n.jpg', 2, 1),
	(30, 'Whispering Willow Ring', 2, '  Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, repellendus facere. Pariatur cupiditate omnis inventore. Rem, et eos itaque tenetur iusto dolorem inventore nam voluptas accusamus, obcaecati non, alias ea.', 50, '257712963_562288578471836_5866517639255474410_n.jpg', 2, 13),
	(32, 'Celestial Serenity Ring', 6, '  Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, repellendus facere. Pariatur cupiditate omnis inventore. Rem, et eos itaque tenetur iusto dolorem inventore nam voluptas accusamus, obcaecati non, alias ea.', 30, '257817493_562288341805193_4192320349674457676_n.jpg', 2, 15),
	(33, 'Midnight Moonstone Ring', 4, '  Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, repellendus facere. Pariatur cupiditate omnis inventore. Rem, et eos itaque tenetur iusto dolorem inventore nam voluptas accusamus, obcaecati non, alias ea.', 60, '257867112_562288671805160_8247026936788872086_n.jpg', 2, 19),
	(34, 'Vintage Velvetine Ring', 6, '  Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, repellendus facere. Pariatur cupiditate omnis inventore. Rem, et eos itaque tenetur iusto dolorem inventore nam voluptas accusamus, obcaecati non, alias ea.', 60, '257867112_562288671805160_8247026936788872086_n.jpg', 2, 21),
	(35, 'Oceanic Opal Ring 1', 8, '  Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, repellendus facere. Pariatur cupiditate omnis inventore. Rem, et eos itaque tenetur iusto dolorem inventore nam voluptas accusamus, obcaecati non, alias ea.', 60, '257951897_562288471805180_2310338748898497155_n.jpg', 2, 24),
	(37, 'Ring Couple XO', 4, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias nobis eius eveniet alias. Architecto ipsum dolor aperiam similique enim praesentium cumque? Pariatur deserunt mollitia magnam perferendis minima facere unde possimus!', 100, '257715368_562288448471849_4925348338107280072_n.jpg', 2, 18),
	(39, 'kebinugot', 3, 'Dolor aut accusamus ', 820, '257951897_562288471805180_2310338748898497155_n.jpg', 3, 13),
	(41, 'pebabyvo', 22, 'In magnam numquam et', 331, '257694294_562288401805187_9139805117896722959_n.jpg', 3, 991),
	(45, 'qehupef', 24, 'Quas natus quis elig', 203, '257694294_562288401805187_9139805117896722959_n.jpg', 2, 109),
	(46, 'qehupef', 24, 'Quas natus quis elig', 203, '257694294_562288401805187_9139805117896722959_n.jpg', 2, 107),
	(47, 'lyduse', 21, 'Eum ipsam commodo au', 158, '257951897_562288471805180_2310338748898497155_n.jpg', 4, 824),
	(48, 'lyduse', 21, 'Eum ipsam commodo au', 158, '257951897_562288471805180_2310338748898497155_n.jpg', 4, 824),
	(49, 'lyduse', 21, 'Eum ipsam commodo au', 158, '257951897_562288471805180_2310338748898497155_n.jpg', 4, 822);

-- Dumping structure for table jewelry_shop.product_sizes
CREATE TABLE IF NOT EXISTS `product_sizes` (
  `product_size_id` int NOT NULL AUTO_INCREMENT,
  `size` float NOT NULL,
  PRIMARY KEY (`product_size_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table jewelry_shop.product_sizes: ~28 rows (approximately)
DELETE FROM `product_sizes`;
INSERT INTO `product_sizes` (`product_size_id`, `size`) VALUES
	(1, 14),
	(2, 14.25),
	(3, 14.75),
	(4, 15),
	(5, 15.25),
	(6, 15.5),
	(7, 16),
	(8, 16.25),
	(9, 16.5),
	(10, 17),
	(11, 17.25),
	(12, 17.5),
	(13, 17.75),
	(14, 18.25),
	(15, 18.5),
	(16, 18.75),
	(17, 19),
	(18, 19.5),
	(19, 19.75),
	(20, 20),
	(21, 20.5),
	(22, 20.75),
	(23, 21),
	(24, 21.25),
	(25, 21.75),
	(26, 22),
	(27, 22.25),
	(28, 22.5);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
