/*
SQLyog Community
MySQL - 10.4.22-MariaDB : Database - currency
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `products` */

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isDeleted` int(11) NOT NULL DEFAULT 0,
  `productViewed` int(11) NOT NULL DEFAULT 0,
  `createdDate` datetime NOT NULL,
  `updatedDate` datetime NOT NULL,
  `deletedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `products` */

insert  into `products`(`id`,`name`,`price`,`description`,`isDeleted`,`productViewed`,`createdDate`,`updatedDate`,`deletedDate`) values 
(1,'Kawasaki Ninja 650',10.5,NULL,0,0,'2022-07-07 00:00:00','2022-07-07 00:00:00',NULL),
(2,'Kawasaki Ninja 750',11.75,NULL,0,0,'2022-07-07 00:00:00','2022-07-07 00:00:00',NULL),
(3,'Kawasaki Ninja 850',12.33,NULL,0,0,'2022-07-07 00:00:00','2022-07-07 00:00:00',NULL),
(4,'Kawasaki Ninja 950',14.15,NULL,0,0,'2022-07-07 00:00:00','2022-07-07 00:00:00',NULL),
(5,'Kawasaki Ninja 1000',17.95,NULL,0,0,'2022-07-07 00:00:00','2022-07-07 00:00:00',NULL),
(6,'Kawasaki Ninja 12R',21.75,NULL,0,0,'2022-07-07 00:00:00','2022-07-07 00:00:00',NULL),
(7,'Kawasaki Ninja 14R',31,NULL,0,0,'2022-07-07 00:00:00','2022-07-07 00:00:00',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
