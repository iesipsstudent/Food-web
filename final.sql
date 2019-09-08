/*
SQLyog Community Edition- MySQL GUI v8.04 
MySQL - 5.5.5-10.1.32-MariaDB : Database - annapurti
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`annapurti` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `annapurti`;

/*Table structure for table `feed_form` */

DROP TABLE IF EXISTS `feed_form`;

CREATE TABLE `feed_form` (
  `req_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(20) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `quantity` decimal(20,0) DEFAULT NULL,
  `contact` decimal(20,0) NOT NULL,
  `date` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`req_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

/*Data for the table `feed_form` */

insert  into `feed_form`(`req_id`,`account_name`,`location`,`type`,`quantity`,`contact`,`date`,`status`) values (6,'kuldeep','indore','djfoig','68798','8798','2019-01-22',1),(7,'kuldeep','indore','sdjfoij','6544','6465','2019-01-22',1),(8,'bhola','ujjain','oily','65455','98932','2019-01-22',1),(9,'kale','devas','junk','123154','898465','2019-01-22',1),(11,'a','karahi','hhhhh','0','555','2019-01-22',1),(19,'kuldeep','karahi','poha','70','7008','2019-03-25',1),(20,'kuldeep','karahi','rabadi','5000','5000','2019-03-25',1),(21,'kuldeep','ujjain','jira','636','69','2019-03-25',1),(22,'alok','karahi','aalu paratha','100','851544','2019-03-25',1),(23,'alok','karahi','rice ','778787','787878','2019-03-25',1),(24,'alok','bhopal','gfbgbgg','4545','45456','2019-03-25',1),(25,'alok','ujjain','465465','6544','6445','2019-03-25',1),(26,'alok','ujjain','456465','58989','54654','2019-03-25',1),(27,'alok','bhopal','59616516','4984984','8498498','2019-03-25',1),(28,'alok','ujjain','488','484','49848','2019-03-25',1),(29,'alok','bhopal','4984','4894','4984','2019-03-25',1),(30,'alok','ujjain','84984','551','191','2019-03-25',1),(31,'alok','indore','kkkk','84','798','2019-03-25',1),(32,'alok','karahi','ice creams ','1000','989561','2019-03-28',1),(33,'alok','indore','dal chawal roti','456','45644','2019-03-28',1),(34,'alok','ujjain','fkjkfjk','29','29','2019-03-29',1),(35,'kuldeep','ujjain','Sweets and rice','50','9893219286','2019-04-04',1),(36,'kuldeep','ujjain','chhole','454','5465464465','2019-08-28',1);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `mo_number` varchar(10) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `type` tinyint(1) NOT NULL,
  `user_id` int(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`username`,`password`,`email`,`mo_number`,`City`,`Address`,`type`,`user_id`) values ('Raju','12','Raju@gmail.com','16546','ujjain','kfgjd',0,1),('nishkarsh','123','n@gmail.com','5454654','indore','rajendra nagar',0,2),('mohit','1234','mohitverma@gmail.com','545498','indore','sudama nagar indore',0,3),('kuldeep','4498','kuldeephirwe4498@gmail.com','9893219286','Indore','3344-E Sudama Nagar',1,4),('Shiva ','546545','Shiva@gmail,com','897132132','sdnflsn','lsdnflkn',0,5),('Ganesh','54678921','ganesh','5437156','ganeshay','ganeshnagar',0,6),('alok','123','kjfkjkd@dmgm.ckm','4444444444','D,LD,','dfkjgkklf',1,7),('dfkjgkklf','cjcvkbjfko','xfkngkndl@gmail.com','1231123122','kjdfgkjk','kcjbkcvjk',1,8),('raju','123','kj@gmail.com','1234567890','indore','fjgkdlkf',1,9),('raju','123','kj@gmail.com','1234567890','indore','kfjdgk',1,10),('raju','123456','kj@gmail.com','1234567890','indore','jhkjh',1,11),('raju','1234','kj@gmail.com','1234567890','indore','jhgjhg',1,12),('raju','1234','kj@gmail.com','1234567890','indore','kgjhg',1,13),('raju','321321','kj@gmail.com','1234567890','indore','jhkjhjk',1,14),('rupam','1234','rupam@gmail.com','4654654555','indore','GURUSHANKAR NAGAR',1,15);

/*Table structure for table `user_request` */

DROP TABLE IF EXISTS `user_request`;

CREATE TABLE `user_request` (
  `req_id` int(11) NOT NULL,
  `user_id` decimal(10,0) NOT NULL,
  `done` tinyint(1) DEFAULT '0',
  `ngo_id` int(10) DEFAULT '0',
  PRIMARY KEY (`req_id`),
  CONSTRAINT `FK_user_request` FOREIGN KEY (`req_id`) REFERENCES `feed_form` (`req_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_request` */

insert  into `user_request`(`req_id`,`user_id`,`done`,`ngo_id`) values (6,'4',0,0),(7,'4',0,0),(8,'9',0,0),(9,'10',0,0),(19,'4',1,1),(20,'4',1,4),(21,'4',0,0),(22,'7',0,0),(23,'7',0,0),(24,'7',0,0),(25,'7',0,0),(26,'7',0,0),(27,'7',1,0),(28,'7',0,0),(29,'7',0,0),(30,'7',0,0),(31,'7',0,0),(32,'7',0,3),(33,'7',1,3),(34,'7',0,0),(35,'4',1,1),(36,'4',1,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
