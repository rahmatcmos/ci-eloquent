-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.9-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.5049
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for ci-eloquent
CREATE DATABASE IF NOT EXISTS `ci-eloquent` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ci-eloquent`;

-- Dumping structure for table ci-eloquent.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `FK_posts_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table ci-eloquent.posts: ~0 rows (approximately)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT IGNORE INTO `posts` (`id`, `news`, `user_id`) VALUES
	(1, 'Berita 1', 1),
	(2, 'Berita 2', 1),
	(3, 'Berita 1 Hanny', 2),
	(4, 'Berita 2 Hanny', 2);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Dumping structure for table ci-eloquent.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- Dumping data for table ci-eloquent.users: ~8 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT IGNORE INTO `users` (`id`, `first_name`, `last_name`, `email`) VALUES
	(1, 'Ahmad', 'Arif', 'ahmad_arif@icloud.com'),
	(2, 'Hanny', 'Tia Lestari', 'tia.lestari@gmail.com'),
	(4, 'Ahmad', 'Arif', 'ahmad.arif019@gmail.com'),
	(15, 'A', 'A', 'A@mail.com'),
	(16, 'B', 'B', 'B@mail.com'),
	(17, 'C', 'C', 'C@mail.com'),
	(18, 'D', 'D', 'D@mail.com'),
	(19, 'E', 'E', 'E@mail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
