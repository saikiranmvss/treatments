/*
SQLyog Community v13.1.9 (64 bit)
MySQL - 8.0.33 : Database - freedb_treatment
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`freedb_treatment` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `freedb_treatment`;

/*Table structure for table `doctors` */

DROP TABLE IF EXISTS `doctors`;

CREATE TABLE `doctors` (
  `doctor_id` int NOT NULL AUTO_INCREMENT,
  `doctor_name` varchar(255) NOT NULL,
  KEY `doctor_id` (`doctor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `doctors` */

insert  into `doctors`(`doctor_id`,`doctor_name`) values 
(1,'kii'),
(2,'Dr. Satya Sai');

/*Table structure for table `patient_tests` */

DROP TABLE IF EXISTS `patient_tests`;

CREATE TABLE `patient_tests` (
  `pt_id` int NOT NULL AUTO_INCREMENT,
  `pt_test_id` int NOT NULL,
  `pt_test_price` varchar(255) NOT NULL,
  `pt_doctor` varchar(255) DEFAULT NULL,
  KEY `pt_id` (`pt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `patient_tests` */

insert  into `patient_tests`(`pt_id`,`pt_test_id`,`pt_test_price`,`pt_doctor`) values 
(1,1,'20','1'),
(2,1,'20','1'),
(3,1,'20','1'),
(4,1,'20','1'),
(5,1,'200','1'),
(6,1,'20','1'),
(7,1,'20','1'),
(8,1,'20','1');

/*Table structure for table `patients` */

DROP TABLE IF EXISTS `patients`;

CREATE TABLE `patients` (
  `patient_id` int NOT NULL AUTO_INCREMENT,
  `patient_name` varchar(255) NOT NULL,
  `patient_phno` varchar(10) NOT NULL,
  `patient_address` text NOT NULL,
  `patient_age` varchar(100) NOT NULL,
  `patient_gender` tinyint(1) DEFAULT NULL,
  `treatment_date` date DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `patient_id` (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `patients` */

insert  into `patients`(`patient_id`,`patient_name`,`patient_phno`,`patient_address`,`patient_age`,`patient_gender`,`treatment_date`,`created_date`) values 
(1,'test','3453535353','test','34',1,'2023-12-31','2023-06-19 04:05:04');

/*Table structure for table `tests` */

DROP TABLE IF EXISTS `tests`;

CREATE TABLE `tests` (
  `test_id` int NOT NULL AUTO_INCREMENT,
  `test_name` varchar(255) NOT NULL,
  KEY `test_id` (`test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tests` */

insert  into `tests`(`test_id`,`test_name`) values 
(1,'Blood Test');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
