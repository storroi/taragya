/*
SQLyog Community
MySQL - 10.4.8-MariaDB : Database - eduappgt
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`eduappgt` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `eduappgt`;

/*Table structure for table `aboutus` */

CREATE TABLE `aboutus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `about_info` longtext DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `aboutus` */

insert  into `aboutus`(`id`,`about_info`,`status`) values (7,'KRANTHI VIDYALAYAM UP was established in 2007 and it is managed by the Pvt. Unaided. It is located in Urban area. It is located in BHADRACHALAM block of KHAMMAM district of Telangana. The school consists of Grades from 1 to 10. The school is Co-educational and it doesn\'t have an attached pre-primary section. The school is Not Applicable in nature and is not using school building as a shift-school. English is the medium of instructions in this school. This school is approachable by all weather road. In this school academic session starts in April.','Active');

/*Table structure for table `academic_settings` */

CREATE TABLE `academic_settings` (
  `settings_id` int(100) NOT NULL AUTO_INCREMENT,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`settings_id`),
  UNIQUE KEY `settings_id` (`settings_id`),
  KEY `settings_id_2` (`settings_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

/*Data for the table `academic_settings` */

insert  into `academic_settings`(`settings_id`,`type`,`description`) values (2,'report_teacher',NULL);
insert  into `academic_settings`(`settings_id`,`type`,`description`) values (3,'minium_mark','40');
insert  into `academic_settings`(`settings_id`,`type`,`description`) values (22,'tabulation',NULL);
insert  into `academic_settings`(`settings_id`,`type`,`description`) values (25,'routine','2');
insert  into `academic_settings`(`settings_id`,`type`,`description`) values (1,'limit_upload','');

/*Table structure for table `academic_syllabus` */

CREATE TABLE `academic_syllabus` (
  `academic_syllabus_id` int(11) NOT NULL AUTO_INCREMENT,
  `academic_syllabus_code` longtext COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `uploader_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `uploader_id` int(11) NOT NULL,
  `year` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `file_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`academic_syllabus_id`),
  KEY `academic_syllabus_id` (`academic_syllabus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `academic_syllabus` */

insert  into `academic_syllabus`(`academic_syllabus_id`,`academic_syllabus_code`,`title`,`class_id`,`uploader_type`,`uploader_id`,`year`,`date`,`file_name`,`subject_id`,`file_type`) values (1,'a92fe4a','Math Five Units',1,'teacher',1,'2019-2020','24 Jul, 2019','list-of-accreditation-of-anathapur-district.pdf',1,'PDF');
insert  into `academic_syllabus`(`academic_syllabus_id`,`academic_syllabus_code`,`title`,`class_id`,`uploader_type`,`uploader_id`,`year`,`date`,`file_name`,`subject_id`,`file_type`) values (2,'5897f10','English Five Units Notes',1,'teacher',1,'2019-2020','24 Jul, 2019','certificate.jpg',2,'Image');
insert  into `academic_syllabus`(`academic_syllabus_id`,`academic_syllabus_code`,`title`,`class_id`,`uploader_type`,`uploader_id`,`year`,`date`,`file_name`,`subject_id`,`file_type`) values (3,'3133528','Computer Science Five Unites Notes',1,'teacher',1,'2019-2020','24 Jul, 2019','Seed Funding Guidelines.pdf',4,'PDF');

/*Table structure for table `admin` */

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `owner_status` int(11) NOT NULL DEFAULT 0 COMMENT '1 owner, 0 not owner',
  `username` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) DEFAULT 1,
  `birthday` longtext COLLATE utf8_unicode_ci NOT NULL,
  `last_os` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_ip` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_date` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_device` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `authentication_key` varchar(600) COLLATE utf8_unicode_ci DEFAULT NULL,
  `messages` int(11) DEFAULT NULL,
  `notify` int(11) DEFAULT NULL,
  `information` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `academic` int(11) DEFAULT NULL,
  `attendance` int(11) DEFAULT NULL,
  `schedules` int(11) DEFAULT NULL,
  `news` int(11) DEFAULT NULL,
  `library` int(11) DEFAULT NULL,
  `be` int(11) DEFAULT NULL,
  `acc` int(11) DEFAULT NULL,
  `class` int(11) DEFAULT NULL,
  `school` int(11) DEFAULT NULL,
  `polls` int(11) DEFAULT NULL,
  `settings` int(11) DEFAULT NULL,
  `academic_se` int(11) DEFAULT NULL,
  `files` int(11) DEFAULT NULL,
  `users` int(11) DEFAULT NULL,
  `fb_token` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_id` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_photo` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_name` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `g_oauth` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `g_fname` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `femail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `g_lname` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `g_picture` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `g_email` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reports` int(11) DEFAULT NULL,
  PRIMARY KEY (`admin_id`),
  KEY `admin_id` (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `admin` */

insert  into `admin`(`admin_id`,`name`,`email`,`password`,`phone`,`address`,`owner_status`,`username`,`status`,`birthday`,`last_os`,`last_ip`,`last_date`,`last_device`,`authentication_key`,`messages`,`notify`,`information`,`marks`,`academic`,`attendance`,`schedules`,`news`,`library`,`be`,`acc`,`class`,`school`,`polls`,`settings`,`academic_se`,`files`,`users`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`,`reports`) values (14,'Admin','admin333@gmail.com','admin','7981623150','',1,'admin',1,'08/20/2019',NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `android_notifications` */

CREATE TABLE `android_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type` varchar(40) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `created_on` datetime DEFAULT current_timestamp(),
  `status` varchar(30) DEFAULT 'Active',
  `created_by` varchar(100) DEFAULT NULL,
  `timestamp` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `android_notifications` */

/*Table structure for table `attendance` */

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` longtext COLLATE utf8_unicode_ci NOT NULL,
  `year` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0(undefined) 1(present) 2(absent)',
  `date_of_attendance` date DEFAULT NULL,
  `created_on` datetime DEFAULT current_timestamp(),
  `update_on` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`attendance_id`),
  KEY `attendance_id` (`attendance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `attendance` */

insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (3,'1566671400','2019-2020',11,26,20,3,NULL,'2019-08-25 15:09:52','2019-08-25 15:10:43');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (4,'1566844200','2019-2020',11,26,20,1,NULL,'2019-08-27 14:59:26','2019-08-27 14:59:26');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (7,'1566844200','2019-2020',2,27,15,1,NULL,'2019-08-27 17:03:03','2019-08-27 17:03:03');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (8,'1567103400','2019-2020',2,27,15,1,NULL,'2019-08-30 11:41:03','2019-08-30 11:41:03');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (9,'1567103400','2019-2020',11,26,20,1,NULL,'2019-08-30 11:41:42','2019-08-30 11:41:42');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (12,'1568140200','2019-2020',2,29,34,1,NULL,'2019-09-11 19:39:22','2019-09-11 19:39:22');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (13,'1568140200','2019-2020',2,29,35,1,NULL,'2019-09-11 19:39:22','2019-09-11 19:39:22');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (14,'1568140200','2019-2020',2,29,36,1,NULL,'2019-09-11 19:39:22','2019-09-11 19:39:22');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (15,'1568140200','2019-2020',2,29,37,1,NULL,'2019-09-11 19:39:22','2019-09-11 19:39:22');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (16,'1568140200','2019-2020',2,29,38,1,NULL,'2019-09-11 19:39:22','2019-09-11 19:39:22');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (17,'1569349800','2019-2020',2,29,34,1,NULL,'2019-09-25 15:52:16','2019-09-25 15:52:16');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (18,'1569349800','2019-2020',2,29,35,1,NULL,'2019-09-25 15:52:16','2019-09-25 15:52:16');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (19,'1569349800','2019-2020',2,29,36,1,NULL,'2019-09-25 15:52:16','2019-09-25 15:52:16');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (20,'1569349800','2019-2020',2,29,37,1,NULL,'2019-09-25 15:52:16','2019-09-25 15:52:16');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (21,'1569349800','2019-2020',2,29,38,1,NULL,'2019-09-25 15:52:16','2019-09-25 15:52:16');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (22,'1572546600','2019-2020',2,29,34,1,NULL,'2019-11-01 18:59:07','2019-11-01 18:59:07');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (23,'1572546600','2019-2020',2,29,35,1,NULL,'2019-11-01 18:59:07','2019-11-01 18:59:07');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (24,'1572546600','2019-2020',2,29,36,1,NULL,'2019-11-01 18:59:07','2019-11-01 18:59:07');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (25,'1572546600','2019-2020',2,29,37,1,NULL,'2019-11-01 18:59:07','2019-11-01 18:59:07');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (26,'1572546600','2019-2020',2,29,38,1,NULL,'2019-11-01 18:59:07','2019-11-01 18:59:07');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (27,'1575743400','2019-2020',2,29,34,1,NULL,'2019-12-08 13:47:56','2019-12-08 13:47:56');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (28,'1575743400','2019-2020',2,29,35,1,NULL,'2019-12-08 13:47:56','2019-12-08 13:47:56');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (29,'1575743400','2019-2020',2,29,36,1,NULL,'2019-12-08 13:47:56','2019-12-08 13:47:56');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (30,'1575743400','2019-2020',2,29,37,1,NULL,'2019-12-08 13:47:56','2019-12-08 13:47:56');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (31,'1575743400','2019-2020',2,29,38,1,NULL,'2019-12-08 13:47:56','2019-12-08 13:47:56');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (32,'1576089000','2019-2020',2,29,34,1,NULL,'2019-12-12 11:24:43','2019-12-12 11:24:43');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (33,'1576089000','2019-2020',2,29,35,1,NULL,'2019-12-12 11:24:43','2019-12-12 11:24:43');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (34,'1576089000','2019-2020',2,29,36,1,NULL,'2019-12-12 11:24:43','2019-12-12 11:24:43');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (35,'1576089000','2019-2020',2,29,37,1,NULL,'2019-12-12 11:24:43','2019-12-12 11:24:43');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (36,'1576089000','2019-2020',2,29,38,1,NULL,'2019-12-12 11:24:43','2019-12-12 11:24:43');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (37,'1578076200','2019-2020',2,29,34,1,NULL,'2020-01-04 12:57:09','2020-01-04 12:57:09');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (38,'1578076200','2019-2020',2,29,35,1,NULL,'2020-01-04 12:57:09','2020-01-04 12:57:09');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (39,'1578076200','2019-2020',2,29,36,1,NULL,'2020-01-04 12:57:09','2020-01-04 12:57:09');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (40,'1578076200','2019-2020',2,29,37,1,NULL,'2020-01-04 12:57:09','2020-01-04 12:57:09');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (41,'1578076200','2019-2020',2,29,38,1,NULL,'2020-01-04 12:57:09','2020-01-04 12:57:09');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (42,'1578594600','2019-2020',2,29,34,1,NULL,'2020-01-10 16:47:07','2020-01-10 16:47:07');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (43,'1578594600','2019-2020',2,29,35,1,NULL,'2020-01-10 16:47:07','2020-01-10 16:47:07');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (44,'1578594600','2019-2020',2,29,36,1,NULL,'2020-01-10 16:47:07','2020-01-10 16:47:07');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (45,'1578594600','2019-2020',2,29,37,1,NULL,'2020-01-10 16:47:07','2020-01-10 16:47:07');
insert  into `attendance`(`attendance_id`,`timestamp`,`year`,`class_id`,`section_id`,`student_id`,`status`,`date_of_attendance`,`created_on`,`update_on`) values (46,'1578594600','2019-2020',2,29,38,1,NULL,'2020-01-10 16:47:07','2020-01-10 16:47:07');

/*Table structure for table `book` */

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `author` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `price` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `book` */

insert  into `book`(`book_id`,`name`,`description`,`author`,`class_id`,`price`,`status`,`type`,`file_name`) values (1,'The First','Description','Durgarao','11','0','1','virtual','index.pdf');

/*Table structure for table `calendar_event` */

CREATE TABLE `calendar_event` (
  `calendar_event_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_timestamp` int(255) NOT NULL,
  `end_timestamp` int(255) NOT NULL,
  `colour` longtext COLLATE utf8_unicode_ci NOT NULL,
  `nota` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `month` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`calendar_event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `calendar_event` */

insert  into `calendar_event`(`calendar_event_id`,`title`,`description`,`user_type`,`user_id`,`start_timestamp`,`end_timestamp`,`colour`,`nota`,`year`,`month`) values (5,'dc','birthday','admin',14,1566153000,1566153000,'#E93339',NULL,'2019','08');

/*Table structure for table `ci_sessions` */

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT 0,
  `data` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `ci_sessions` */

insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('008734763d94e73370df4733e72aa90e597be058','203.193.169.94',1576143096,'__ci_last_regenerate|i:1576142912;FBRLH_state|s:32:\"04597976845a6bb5ec3921002f0667c2\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('037807e1d3aa133317adb327215fafb48b8983b4','27.6.89.183',1578372437,'__ci_last_regenerate|i:1578372437;FBRLH_state|s:32:\"b27c605ceed0d0f213fb5a864d27cf3f\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('03bfc257d22ab881f17aead5a38e1dc79a1c0b49','157.48.70.64',1581866832,'__ci_last_regenerate|i:1581866832;FBRLH_state|s:32:\"65b0f414b1d4050312580c8738fa1f51\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('040cf85532cefa472fff81656cf0b6cf24aca458','27.6.89.183',1578372436,'__ci_last_regenerate|i:1578372436;FBRLH_state|s:32:\"b27c605ceed0d0f213fb5a864d27cf3f\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('052289c0a1013231c097743fc4fe633ef5013497','157.48.88.144',1578123911,'__ci_last_regenerate|i:1578123605;FBRLH_state|s:32:\"71413de7f157f17bdd8345a7ff8b99ab\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('070260735a79b768dc223ed7e46a4b8c70cb3b9f','27.6.89.183',1578372436,'__ci_last_regenerate|i:1578372436;FBRLH_state|s:32:\"b27c605ceed0d0f213fb5a864d27cf3f\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('09e4f74e5780ba23e6176e8422114cfe97b0f0a8','157.44.92.9',1578310757,'__ci_last_regenerate|i:1578310619;FBRLH_state|s:32:\"6169866ae0423cefb8ec04eb626a5a79\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('0b845681ba6ca5ebb0c4a074327e11a496601437','123.201.77.10',1576146645,'__ci_last_regenerate|i:1576146350;FBRLH_state|s:32:\"7de41cfb4c5980e1041c209d2b87f01e\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('0d010c3fbb5b249ff745f93b3409a37124004470','203.193.169.94',1576128241,'__ci_last_regenerate|i:1576128156;FBRLH_state|s:32:\"f0ab78e4b58a5647a8d743b8b2719fd9\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('0e3a6d438ffac6aeddfb65807504c78a0f647f01','125.62.194.230',1578116481,'__ci_last_regenerate|i:1578116480;FBRLH_state|s:32:\"2c44a6b730a7e06f2cb4cac8e6a93c36\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('10d21949d3cf2d07f25a91b27655a113b74b02b4','183.83.200.20',1581874296,'__ci_last_regenerate|i:1581874072;FBRLH_state|s:32:\"127e2360c83ca414cee25addaf53e603\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('11aee19bf9262a1c2b1d869863a579c6a39dc60d','157.48.88.144',1578123410,'__ci_last_regenerate|i:1578123159;FBRLH_state|s:32:\"71413de7f157f17bdd8345a7ff8b99ab\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('11c6ab07bb0506776e3f8b66b4ac0f5968ec232b','203.193.169.94',1576130103,'__ci_last_regenerate|i:1576129932;FBRLH_state|s:32:\"2e920a959b53374579c9406de9160d81\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('15fdc05861975d21dddc607e312c7d8523e0fb14','157.48.74.83',1578120530,'__ci_last_regenerate|i:1578120230;FBRLH_state|s:32:\"71413de7f157f17bdd8345a7ff8b99ab\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('1669f5d64c9bb2d80bbc065ebc0f705404bed5cb','157.48.88.144',1578124637,'__ci_last_regenerate|i:1578124412;FBRLH_state|s:32:\"71413de7f157f17bdd8345a7ff8b99ab\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";flash_message|s:30:\"Successfully added information\";__ci_vars|a:1:{s:13:\"flash_message\";s:3:\"old\";}');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('1caeece634d835f8fb84adb4e4be29dc18a7d3b4','157.48.88.144',1578126760,'__ci_last_regenerate|i:1578126553;FBRLH_state|s:32:\"ebf28d0118ef1a3600fb30e182e6089f\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('1dfa4ce0e53ca26ed500bb2ff6ca2ea098589434','27.6.89.183',1578372352,'__ci_last_regenerate|i:1578372043;FBRLH_state|s:32:\"b27c605ceed0d0f213fb5a864d27cf3f\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('21c89186a611bf3229de087c2c914973db69255d','203.193.169.94',1576128410,'__ci_last_regenerate|i:1576128409;FBRLH_state|s:32:\"f0ab78e4b58a5647a8d743b8b2719fd9\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('248670074ddb84b35e9b10021762de4eaa9a8eac','203.193.169.94',1576131184,'__ci_last_regenerate|i:1576130904;FBRLH_state|s:32:\"2e920a959b53374579c9406de9160d81\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('2bd49743023abefe4fa6424dd073bad8ea0f4582','103.44.12.161',1577777919,'__ci_last_regenerate|i:1577777919;FBRLH_state|s:32:\"ac6db85bdb47fa518db2e2430d077152\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('2eb0577d1d9f74ecb921b722f6f20b516bfe2f8f','103.44.12.161',1577956199,'__ci_last_regenerate|i:1577956152;FBRLH_state|s:32:\"5f0ee2403eeb2bfac9e383a615b73139\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('346d9dcab7daa92b6c5b3b965754df20d877fa18','157.48.88.144',1578126140,'__ci_last_regenerate|i:1578126140;FBRLH_state|s:32:\"71413de7f157f17bdd8345a7ff8b99ab\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('348b9a7899f212745f2efdbf71dda9640720091b','157.48.88.144',1578125972,'__ci_last_regenerate|i:1578125887;FBRLH_state|s:32:\"71413de7f157f17bdd8345a7ff8b99ab\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('3571a5b3ff800d457147a21e6ef657daeb51d082','157.44.148.195',1582026093,'__ci_last_regenerate|i:1582026093;FBRLH_state|s:32:\"ccc0ce2154ec42c22ce3f3559389efed\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('372d092919ff36dca511a69d9965b79c376b0b1b','106.76.222.76',1578655460,'__ci_last_regenerate|i:1578655227;FBRLH_state|s:32:\"12838bf7ab6a552cac7d2f3b8fffa1bc\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('384f96ecd04256063ed1696234adce35f309cf57','157.44.160.68',1578409096,'__ci_last_regenerate|i:1578409095;FBRLH_state|s:32:\"5c53dac8cba60323a09e40a8c3a22608\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('38836547ec2f0164c48a47de1bb162e1ff32842a','157.48.88.144',1578126280,'__ci_last_regenerate|i:1578126141;FBRLH_state|s:32:\"ebf28d0118ef1a3600fb30e182e6089f\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('38b3ffabd2b9e90b1c6eb3f8e198e589d6d0f494','27.6.89.183',1578372437,'__ci_last_regenerate|i:1578372437;FBRLH_state|s:32:\"b27c605ceed0d0f213fb5a864d27cf3f\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('3c8465e30dae4dfa92c0c3bb24498f88fb6db8de','203.193.169.94',1576125153,'__ci_last_regenerate|i:1576125153;FBRLH_state|s:32:\"f0ab78e4b58a5647a8d743b8b2719fd9\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('4382ecba8426111eaaf48a205971111a875ac356','157.44.46.147',1578311656,'__ci_last_regenerate|i:1578311525;FBRLH_state|s:32:\"6169866ae0423cefb8ec04eb626a5a79\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('44935f2fefaf799449525aaae57fdbf13e6738b0','203.193.169.94',1576128156,'__ci_last_regenerate|i:1576127775;FBRLH_state|s:32:\"f0ab78e4b58a5647a8d743b8b2719fd9\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('44cd22b1dbf76e9568017a4e41186c7d7001a05f','27.6.89.183',1578372437,'__ci_last_regenerate|i:1578372437;FBRLH_state|s:32:\"b27c605ceed0d0f213fb5a864d27cf3f\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('44e3496f31a5d049d68068346d40da3fb0b9576f','103.44.12.161',1577772889,'__ci_last_regenerate|i:1577772865;FBRLH_state|s:32:\"79865a2ccf99339315d2f26712d1083d\";parent_login|s:1:\"1\";parent_id|s:2:\"25\";login_user_id|s:2:\"25\";name|s:4:\"ramu\";login_type|s:6:\"parent\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('450c5bbf6a529835a4d54a674ce173558bdd7bce','223.182.28.30',1581923588,'__ci_last_regenerate|i:1581923587;last_page|s:53:\"http://36.255.252.196/kvsms/index.php/admin/send_news\";FBRLH_state|s:32:\"96dc593b05eeb3269c771e17d5d859da\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('48a061b4b6adc0ece2846d432577944dbb6b8974','27.6.89.183',1578372437,'__ci_last_regenerate|i:1578372437;FBRLH_state|s:32:\"b27c605ceed0d0f213fb5a864d27cf3f\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('49b1415c6233374719253e45963c4503467f1365','157.44.178.200',1582034510,'__ci_last_regenerate|i:1582034502;FBRLH_state|s:32:\"7523b808cadad5c971434a0dbd1710b0\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('4d612824a277645c5e3fa1a34197f12f9f1663fd','157.48.88.144',1578125569,'__ci_last_regenerate|i:1578125288;FBRLH_state|s:32:\"71413de7f157f17bdd8345a7ff8b99ab\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('575a2c1ddd63f7e16d7a8d6a03233a17a0094afe','106.77.168.130',1578382354,'__ci_last_regenerate|i:1578382311;FBRLH_state|s:32:\"3fbab5ccf4ad6f3b44194550812415eb\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('5764de3657c5fbc02093ae1bf7ea8fce823ca196','103.44.12.161',1577957231,'__ci_last_regenerate|i:1577957167;FBRLH_state|s:32:\"5f0ee2403eeb2bfac9e383a615b73139\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";flash_message|s:15:\"Process Success\";__ci_vars|a:1:{s:13:\"flash_message\";s:3:\"old\";}');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('594b2e085565becae205070b2cfe2687e236a790','203.193.169.94',1576129423,'__ci_last_regenerate|i:1576129151;FBRLH_state|s:32:\"2e920a959b53374579c9406de9160d81\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('5ae4604ffff9c96ee086b799eb6b8bfea447f06e','106.76.222.76',1578655165,'__ci_last_regenerate|i:1578654918;FBRLH_state|s:32:\"12838bf7ab6a552cac7d2f3b8fffa1bc\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('5f28216079a4a8c3f6f77f7f81b93637fbb3b1da','27.6.152.100',1581609311,'__ci_last_regenerate|i:1581609311;FBRLH_state|s:32:\"7fd53be1341e716a03ef27fdda70a22d\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('61c0d0ea9fae18430bf0ceea2cda33475753042f','203.193.169.94',1576128409,'__ci_last_regenerate|i:1576128409;FBRLH_state|s:32:\"f0ab78e4b58a5647a8d743b8b2719fd9\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('653429ef049b6a36ab56ccd13b0f76197d570f4f','157.48.74.83',1578121954,'__ci_last_regenerate|i:1578121655;FBRLH_state|s:32:\"71413de7f157f17bdd8345a7ff8b99ab\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('65a3d9d658628ba5da4b2aaffbd5a97cb0adcfc4','157.48.74.83',1578121165,'__ci_last_regenerate|i:1578120840;FBRLH_state|s:32:\"71413de7f157f17bdd8345a7ff8b99ab\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('660699e600405b865cc529ae2296eb9a02c0eec2','106.76.222.76',1578656375,'__ci_last_regenerate|i:1578655649;FBRLH_state|s:32:\"12838bf7ab6a552cac7d2f3b8fffa1bc\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('66bc08675c0118aff9551c638649546eadc22690','203.193.169.94',1576131372,'__ci_last_regenerate|i:1576131346;FBRLH_state|s:32:\"2e920a959b53374579c9406de9160d81\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('69f8c285a88e9e512453950a02c93303c80ffb0d','157.44.178.200',1582034186,'__ci_last_regenerate|i:1582034186;FBRLH_state|s:32:\"7523b808cadad5c971434a0dbd1710b0\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('6afe6f3abaca3138f7c73c9161008527b587973b','115.98.236.166',1581954794,'__ci_last_regenerate|i:1581954794;FBRLH_state|s:32:\"517d33d8362f767c4027bd6f05210a99\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('6d94b821b0bba8efe37b1f0086dc5abc7374881d','115.98.236.166',1581953914,'__ci_last_regenerate|i:1581953913;FBRLH_state|s:32:\"517d33d8362f767c4027bd6f05210a99\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('6ebd51cf0571ecdf67ee8d260aad7c1364f6cb78','157.48.88.144',1578128796,'__ci_last_regenerate|i:1578128639;FBRLH_state|s:32:\"ebf28d0118ef1a3600fb30e182e6089f\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('6fe147ab1e7c8ba2b0ba955e45bded879a856dfd','157.48.88.144',1578126954,'__ci_last_regenerate|i:1578126954;FBRLH_state|s:32:\"ebf28d0118ef1a3600fb30e182e6089f\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('7031ef5591ec4728cbcd9091fb0258132a89218e','157.44.92.9',1578312442,'__ci_last_regenerate|i:1578312146;FBRLH_state|s:32:\"6169866ae0423cefb8ec04eb626a5a79\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('706dbc0b5ff4fd96c23e662fc396f06293772f15','157.48.70.64',1581863515,'__ci_last_regenerate|i:1581863510;FBRLH_state|s:32:\"65b0f414b1d4050312580c8738fa1f51\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('755ac27a10d186ace1725554a2722f9ff512758c','157.48.88.144',1578126056,'__ci_last_regenerate|i:1578125972;FBRLH_state|s:32:\"71413de7f157f17bdd8345a7ff8b99ab\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('7cfd42ad580674ea6afc29d567472eefc932fd28','203.193.169.94',1576129099,'__ci_last_regenerate|i:1576128808;FBRLH_state|s:32:\"2e920a959b53374579c9406de9160d81\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('7de4873654171861611d35d5d1ebae9ba9b33d69','27.6.89.183',1578372437,'__ci_last_regenerate|i:1578372436;FBRLH_state|s:32:\"b27c605ceed0d0f213fb5a864d27cf3f\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('80b645c07cde188b84ddea6284b3fd89bfd1edc0','123.201.77.10',1576148504,'__ci_last_regenerate|i:1576148504;FBRLH_state|s:32:\"7de41cfb4c5980e1041c209d2b87f01e\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('82a1adf0764605a67e311e59eb9bef3100e8d078','157.48.88.144',1578126140,'__ci_last_regenerate|i:1578126056;FBRLH_state|s:32:\"71413de7f157f17bdd8345a7ff8b99ab\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('86f749f44c39c45c9137084b55b9fba62c6df9fa','27.6.89.183',1578372436,'__ci_last_regenerate|i:1578372352;FBRLH_state|s:32:\"b27c605ceed0d0f213fb5a864d27cf3f\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('8779002528b82e4f28dfc5084a224bd282ab6ebc','103.44.12.161',1577942907,'__ci_last_regenerate|i:1577942907;FBRLH_state|s:32:\"4caef2d71ddd42ed65ac166a2ff71ff6\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('8c463d3d7a58169dd94694e048444c16b826c036','157.44.46.147',1578310194,'__ci_last_regenerate|i:1578309902;FBRLH_state|s:32:\"6169866ae0423cefb8ec04eb626a5a79\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('8cfb98ec241e2920344f1c9a2517a513a28b031e','157.48.96.125',1578286559,'__ci_last_regenerate|i:1578286536;FBRLH_state|s:32:\"81ec7cf212138cd88b913d69485cbaec\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('8dda401ec646ca8464f6508f4f5a76867476b1a0','123.201.77.10',1576146822,'__ci_last_regenerate|i:1576146652;FBRLH_state|s:32:\"7de41cfb4c5980e1041c209d2b87f01e\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('8f9b28cd2f55e5d1d19bb21b84e2926febad711e','157.48.74.83',1578122431,'__ci_last_regenerate|i:1578122225;FBRLH_state|s:32:\"71413de7f157f17bdd8345a7ff8b99ab\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('901b6041141f216cab90d38d4505210a0bbe58e6','27.6.89.183',1578372436,'__ci_last_regenerate|i:1578372436;FBRLH_state|s:32:\"b27c605ceed0d0f213fb5a864d27cf3f\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('940ea878d6e3a5db172915367792d73fda0fcfa7','157.48.74.83',1578120839,'__ci_last_regenerate|i:1578120839;FBRLH_state|s:32:\"71413de7f157f17bdd8345a7ff8b99ab\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('95ad502b0e6f0bee5650ae044b23a56871dbd359','157.48.88.144',1578129001,'__ci_last_regenerate|i:1578128971;FBRLH_state|s:32:\"ebf28d0118ef1a3600fb30e182e6089f\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('97b4b3db6908752eb45457838dc62ca18efbaa93','157.48.88.144',1578123152,'__ci_last_regenerate|i:1578122850;FBRLH_state|s:32:\"71413de7f157f17bdd8345a7ff8b99ab\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('9997a479050512788ee5ae07f95d87ddabe20b2a','157.48.74.83',1578122845,'__ci_last_regenerate|i:1578122549;FBRLH_state|s:32:\"71413de7f157f17bdd8345a7ff8b99ab\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('9d007c534ebe9bce653db7d4220b9e2f7ff90d96','203.193.169.94',1576125625,'__ci_last_regenerate|i:1576125478;FBRLH_state|s:32:\"f0ab78e4b58a5647a8d743b8b2719fd9\";error|s:1:\"1\";__ci_vars|a:1:{s:5:\"error\";s:3:\"old\";}');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('9fd3487eba4172cf49d5d8b3fa6ef3aaaa1aef76','203.193.169.94',1576130355,'__ci_last_regenerate|i:1576130316;FBRLH_state|s:32:\"2e920a959b53374579c9406de9160d81\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('a5ed8cae458217425de8ef822774771dc4c5b67a','125.62.194.230',1577170230,'__ci_last_regenerate|i:1577170230;FBRLH_state|s:32:\"a7c11672e58883b686cf2505180862ae\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('aafeb4fb31550b031cfb962a70ef792586eb18af','203.193.169.94',1576128325,'__ci_last_regenerate|i:1576128241;FBRLH_state|s:32:\"f0ab78e4b58a5647a8d743b8b2719fd9\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('ab1cf20cbda339cb7474acae2e386f1d5c89812f','27.6.89.183',1578372437,'__ci_last_regenerate|i:1578372437;FBRLH_state|s:32:\"b27c605ceed0d0f213fb5a864d27cf3f\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('ae869544b70cf4f246409869d02ece668b850eff','103.200.56.222',1576127619,'__ci_last_regenerate|i:1576127599;FBRLH_state|s:32:\"53f73559e3795cb6c78700d0bb471f34\";error|s:1:\"1\";__ci_vars|a:1:{s:5:\"error\";s:3:\"old\";}');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('aea5c5603a83c6791f4fd129dd3caa554a0b9f06','106.76.222.76',1578656594,'__ci_last_regenerate|i:1578656383;FBRLH_state|s:32:\"12838bf7ab6a552cac7d2f3b8fffa1bc\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('af6c0f0cabd9ddb5c68e89553157a94b9002a1f4','157.48.88.144',1578124223,'__ci_last_regenerate|i:1578123923;FBRLH_state|s:32:\"71413de7f157f17bdd8345a7ff8b99ab\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('b268dc4375f4b227efc02a90312c9b09f2b5dbb2','203.193.169.94',1576128409,'__ci_last_regenerate|i:1576128409;FBRLH_state|s:32:\"f0ab78e4b58a5647a8d743b8b2719fd9\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('b4c5a2c79878a581fbb0b0cd3979bb6ec42fa7bc','27.6.89.183',1578372437,'__ci_last_regenerate|i:1578372437;FBRLH_state|s:32:\"b27c605ceed0d0f213fb5a864d27cf3f\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('b5a25d2ad3a63d6beaba11b3469a0184bf20d053','203.193.169.94',1576128409,'__ci_last_regenerate|i:1576128325;FBRLH_state|s:32:\"f0ab78e4b58a5647a8d743b8b2719fd9\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('b7c6695e5dc5bf97c9c6ad648947b8af22bf8a56','203.193.169.94',1576129804,'__ci_last_regenerate|i:1576129521;FBRLH_state|s:32:\"2e920a959b53374579c9406de9160d81\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('b84431253a419b7143e69d5432f6a284a3137053','203.193.169.94',1576128547,'__ci_last_regenerate|i:1576128410;FBRLH_state|s:32:\"2e920a959b53374579c9406de9160d81\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('bbbb1d7e06617c4dd3f0ba03c0bc48e86e4f1b78','157.44.92.9',1578312759,'__ci_last_regenerate|i:1578312461;FBRLH_state|s:32:\"6169866ae0423cefb8ec04eb626a5a79\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('bdfc77d4b2e968b6aad020bffdff42b5de8626af','27.6.89.183',1578372437,'__ci_last_regenerate|i:1578372437;FBRLH_state|s:32:\"b27c605ceed0d0f213fb5a864d27cf3f\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('c0eebf2b1c5b051f418d3ad8844a7750d01f7585','115.98.44.23',1578481247,'__ci_last_regenerate|i:1578481247;FBRLH_state|s:32:\"2bc053b368697c0ea7fa3619b3cbc498\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('c9b32bf0533ebde6e72bbba37653270fda05431b','157.48.88.144',1578126140,'__ci_last_regenerate|i:1578126140;FBRLH_state|s:32:\"71413de7f157f17bdd8345a7ff8b99ab\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('cbd647320722df23beecfbb3ccb67a05e843893d','157.44.92.9',1578311462,'__ci_last_regenerate|i:1578311219;FBRLH_state|s:32:\"6169866ae0423cefb8ec04eb626a5a79\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('ccc43d7bbc9579de11a752470539ffaee4e6be3a','157.48.88.144',1578126140,'__ci_last_regenerate|i:1578126140;FBRLH_state|s:32:\"71413de7f157f17bdd8345a7ff8b99ab\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('d2a16e9f730713249d3a21cc8cb0995f7aed37c5','106.76.222.76',1578654484,'__ci_last_regenerate|i:1578654307;FBRLH_state|s:32:\"12838bf7ab6a552cac7d2f3b8fffa1bc\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('d379dce02a0e7a6086aa1ef5249b8d7cb7b2fff0','157.44.46.147',1578310340,'__ci_last_regenerate|i:1578310264;FBRLH_state|s:32:\"6169866ae0423cefb8ec04eb626a5a79\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('d5fdcc2280964b37767702e3dafc826617a171a3','103.44.12.161',1577955004,'__ci_last_regenerate|i:1577954985;FBRLH_state|s:32:\"5f0ee2403eeb2bfac9e383a615b73139\";error|s:1:\"1\";__ci_vars|a:1:{s:5:\"error\";s:3:\"old\";}');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('d92b1275674382e996de0ab9a23c4636073fe3ea','103.44.12.161',1577943251,'__ci_last_regenerate|i:1577943251;FBRLH_state|s:32:\"4caef2d71ddd42ed65ac166a2ff71ff6\";error|s:1:\"1\";__ci_vars|a:1:{s:5:\"error\";s:3:\"old\";}');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('df11da866796ad85177497af66d10ab27b147aec','123.201.77.10',1576145945,'__ci_last_regenerate|i:1576145865;FBRLH_state|s:32:\"7de41cfb4c5980e1041c209d2b87f01e\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('e1115095c50affe26b7996a4fecd0f73d400d788','106.76.222.76',1578654911,'__ci_last_regenerate|i:1578654611;FBRLH_state|s:32:\"12838bf7ab6a552cac7d2f3b8fffa1bc\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('e1897e90071e89f7febcfe186110824c62ca511b','157.44.46.147',1578312121,'__ci_last_regenerate|i:1578311836;FBRLH_state|s:32:\"6169866ae0423cefb8ec04eb626a5a79\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('e396873b07c964f068aab966b576e7942674e79c','157.48.88.144',1578124824,'__ci_last_regenerate|i:1578124824;FBRLH_state|s:32:\"71413de7f157f17bdd8345a7ff8b99ab\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('e9c1f9868f20b31bf39dc5ccb3b01c40847511a4','157.44.158.171',1578376792,'__ci_last_regenerate|i:1578376792;FBRLH_state|s:32:\"3fbab5ccf4ad6f3b44194550812415eb\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('e9fc6c277c33e34bd153567c84746d9e4669e0f2','203.193.169.94',1576126187,'__ci_last_regenerate|i:1576126129;FBRLH_state|s:32:\"f0ab78e4b58a5647a8d743b8b2719fd9\";error|s:1:\"1\";__ci_vars|a:1:{s:5:\"error\";s:3:\"old\";}');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('f42e2c2b60a554644e2057883722edc8e19eba28','157.48.70.64',1581863212,'__ci_last_regenerate|i:1581862991;FBRLH_state|s:32:\"65b0f414b1d4050312580c8738fa1f51\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('f490e4f4afc96fc168fc88094bb0c8f20b7f07e1','203.193.169.94',1576128410,'__ci_last_regenerate|i:1576128410;FBRLH_state|s:32:\"f0ab78e4b58a5647a8d743b8b2719fd9\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('f4cae7a77a2739ba731f5a2c07156345a409b43d','203.193.169.94',1576128409,'__ci_last_regenerate|i:1576128409;FBRLH_state|s:32:\"f0ab78e4b58a5647a8d743b8b2719fd9\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('f5b0455e41a7d49d75dcf3190b15594f95506ac3','27.6.89.183',1578372014,'__ci_last_regenerate|i:1578371718;FBRLH_state|s:32:\"b27c605ceed0d0f213fb5a864d27cf3f\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('f7054af7c355f21c1e4c2210f37125614ff67b16','157.48.88.144',1578124983,'__ci_last_regenerate|i:1578124826;FBRLH_state|s:32:\"71413de7f157f17bdd8345a7ff8b99ab\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('fa1a05d144d549b656c10e2049089f57c9e406f5','203.193.169.94',1576128409,'__ci_last_regenerate|i:1576128409;FBRLH_state|s:32:\"f0ab78e4b58a5647a8d743b8b2719fd9\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('faa7862f075d0b7e75f0a4599c6170e8966bedae','157.48.88.144',1578128574,'__ci_last_regenerate|i:1578128310;FBRLH_state|s:32:\"ebf28d0118ef1a3600fb30e182e6089f\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('fb70d8d2ffb609b722d9537a4f6337c4d51e0ec2','157.48.74.83',1578121651,'__ci_last_regenerate|i:1578121349;FBRLH_state|s:32:\"71413de7f157f17bdd8345a7ff8b99ab\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('fbb5a411341cdf9be5a5c2852291ae96cd89a6ad','157.48.74.83',1578120144,'__ci_last_regenerate|i:1578119901;FBRLH_state|s:32:\"71413de7f157f17bdd8345a7ff8b99ab\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values ('fea90b35d349ae74f2c6db03c12860e75b7e1ae3','27.6.89.183',1578372436,'__ci_last_regenerate|i:1578372436;FBRLH_state|s:32:\"b27c605ceed0d0f213fb5a864d27cf3f\";admin_login|s:1:\"1\";admin_id|s:2:\"14\";login_user_id|s:2:\"14\";name|s:5:\"Admin\";login_type|s:5:\"admin\";');

/*Table structure for table `class` */

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `name_numeric` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `class` */

insert  into `class`(`class_id`,`name`,`name_numeric`,`teacher_id`) values (2,'I',NULL,3);
insert  into `class`(`class_id`,`name`,`name_numeric`,`teacher_id`) values (3,'II',NULL,14);
insert  into `class`(`class_id`,`name`,`name_numeric`,`teacher_id`) values (4,'III',NULL,12);
insert  into `class`(`class_id`,`name`,`name_numeric`,`teacher_id`) values (5,'IV',NULL,15);
insert  into `class`(`class_id`,`name`,`name_numeric`,`teacher_id`) values (6,'V',NULL,6);
insert  into `class`(`class_id`,`name`,`name_numeric`,`teacher_id`) values (7,'VI',NULL,5);
insert  into `class`(`class_id`,`name`,`name_numeric`,`teacher_id`) values (8,'VII',NULL,7);
insert  into `class`(`class_id`,`name`,`name_numeric`,`teacher_id`) values (9,'VIII',NULL,9);
insert  into `class`(`class_id`,`name`,`name_numeric`,`teacher_id`) values (11,'X',NULL,3);
insert  into `class`(`class_id`,`name`,`name_numeric`,`teacher_id`) values (12,' IX',NULL,9);

/*Table structure for table `class_routine` */

CREATE TABLE `class_routine` (
  `class_routine_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `time_start` int(11) NOT NULL,
  `time_end` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `time_start_min` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `time_end_min` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `day` longtext COLLATE utf8_unicode_ci NOT NULL,
  `year` longtext COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`class_routine_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `class_routine` */

insert  into `class_routine`(`class_routine_id`,`class_id`,`section_id`,`subject_id`,`time_start`,`time_end`,`time_start_min`,`time_end_min`,`day`,`year`,`teacher_id`) values (1,1,1,1,9,'9','00','30','Monday','2019-2020',2);
insert  into `class_routine`(`class_routine_id`,`class_id`,`section_id`,`subject_id`,`time_start`,`time_end`,`time_start_min`,`time_end_min`,`day`,`year`,`teacher_id`) values (2,1,1,2,9,'10','30','00','Monday','2019-2020',1);
insert  into `class_routine`(`class_routine_id`,`class_id`,`section_id`,`subject_id`,`time_start`,`time_end`,`time_start_min`,`time_end_min`,`day`,`year`,`teacher_id`) values (3,1,1,1,10,'10','00','30','Tuesday','2019-2020',1);
insert  into `class_routine`(`class_routine_id`,`class_id`,`section_id`,`subject_id`,`time_start`,`time_end`,`time_start_min`,`time_end_min`,`day`,`year`,`teacher_id`) values (4,1,1,3,10,'10','00','15','Monday','2019-2020',2);
insert  into `class_routine`(`class_routine_id`,`class_id`,`section_id`,`subject_id`,`time_start`,`time_end`,`time_start_min`,`time_end_min`,`day`,`year`,`teacher_id`) values (5,1,1,4,10,'10','15','30','Monday','2019-2020',1);
insert  into `class_routine`(`class_routine_id`,`class_id`,`section_id`,`subject_id`,`time_start`,`time_end`,`time_start_min`,`time_end_min`,`day`,`year`,`teacher_id`) values (6,1,1,5,10,'10','30','45','Monday','2019-2020',2);
insert  into `class_routine`(`class_routine_id`,`class_id`,`section_id`,`subject_id`,`time_start`,`time_end`,`time_start_min`,`time_end_min`,`day`,`year`,`teacher_id`) values (7,1,1,6,10,'11','45','15','Monday','2019-2020',1);
insert  into `class_routine`(`class_routine_id`,`class_id`,`section_id`,`subject_id`,`time_start`,`time_end`,`time_start_min`,`time_end_min`,`day`,`year`,`teacher_id`) values (8,1,1,2,10,'10','30','45','Tuesday','2019-2020',2);
insert  into `class_routine`(`class_routine_id`,`class_id`,`section_id`,`subject_id`,`time_start`,`time_end`,`time_start_min`,`time_end_min`,`day`,`year`,`teacher_id`) values (10,1,1,3,11,'24','45','15','Tuesday','2019-2020',1);
insert  into `class_routine`(`class_routine_id`,`class_id`,`section_id`,`subject_id`,`time_start`,`time_end`,`time_start_min`,`time_end_min`,`day`,`year`,`teacher_id`) values (11,1,1,4,10,'11','45','15','Tuesday','2019-2020',1);
insert  into `class_routine`(`class_routine_id`,`class_id`,`section_id`,`subject_id`,`time_start`,`time_end`,`time_start_min`,`time_end_min`,`day`,`year`,`teacher_id`) values (12,1,1,5,11,'11','15','49','Tuesday','2019-2020',2);
insert  into `class_routine`(`class_routine_id`,`class_id`,`section_id`,`subject_id`,`time_start`,`time_end`,`time_start_min`,`time_end_min`,`day`,`year`,`teacher_id`) values (13,2,27,7,10,'11','10','00','Monday','2019-2020',3);
insert  into `class_routine`(`class_routine_id`,`class_id`,`section_id`,`subject_id`,`time_start`,`time_end`,`time_start_min`,`time_end_min`,`day`,`year`,`teacher_id`) values (14,11,26,9,9,'10','00','00','Tuesday','2019-2020',5);
insert  into `class_routine`(`class_routine_id`,`class_id`,`section_id`,`subject_id`,`time_start`,`time_end`,`time_start_min`,`time_end_min`,`day`,`year`,`teacher_id`) values (15,2,29,7,14,'15','00','00','Monday','2019-2020',3);

/*Table structure for table `contact` */

CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(100) DEFAULT NULL,
  `state` varchar(40) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `pincode` varchar(40) DEFAULT NULL,
  `latitude` varchar(40) DEFAULT NULL,
  `longitude` varchar(40) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `contact` */

insert  into `contact`(`id`,`address`,`state`,`phone`,`pincode`,`latitude`,`longitude`,`email`,`status`) values (6,'BESIDE LIC OFFICE, Charla Rd, Bhadrachalam\r\n         ','Telangana','095735 46474','507111','17.673892','80.903537','kv@gmail.com','Active');

/*Table structure for table `deliveries` */

CREATE TABLE `deliveries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `homework_code` varchar(600) NOT NULL,
  `student_id` int(11) NOT NULL,
  `date` varchar(600) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_comment` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `teacher_comment` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject_id` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `homework_reply` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `mark` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `deliveries` */

/*Table structure for table `document` */

CREATE TABLE `document` (
  `document_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `file_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `type` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`document_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `document` */

insert  into `document`(`document_id`,`title`,`description`,`file_name`,`file_type`,`class_id`,`teacher_id`,`timestamp`,`subject_id`,`type`) values (1,'unit 1','all questions','','PDF','2',14,'1575792790',7,'admin');

/*Table structure for table `dormitory` */

CREATE TABLE `dormitory` (
  `dormitory_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `number` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`dormitory_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `dormitory` */

insert  into `dormitory`(`dormitory_id`,`name`,`number`) values (3,'1','1st Class');
insert  into `dormitory`(`dormitory_id`,`name`,`number`) values (4,'2','2nd Class');
insert  into `dormitory`(`dormitory_id`,`name`,`number`) values (5,'3','3rd Class');
insert  into `dormitory`(`dormitory_id`,`name`,`number`) values (6,'4','4th Class');
insert  into `dormitory`(`dormitory_id`,`name`,`number`) values (7,'5','5th Class');
insert  into `dormitory`(`dormitory_id`,`name`,`number`) values (8,'6','6th Class');
insert  into `dormitory`(`dormitory_id`,`name`,`number`) values (9,'7','7th Class');
insert  into `dormitory`(`dormitory_id`,`name`,`number`) values (10,'8','8th Class');
insert  into `dormitory`(`dormitory_id`,`name`,`number`) values (11,'9','9th Class');
insert  into `dormitory`(`dormitory_id`,`name`,`number`) values (12,'10','10th Class');

/*Table structure for table `email_template` */

CREATE TABLE `email_template` (
  `email_template_id` int(11) NOT NULL AUTO_INCREMENT,
  `task` longtext COLLATE utf8_unicode_ci NOT NULL,
  `subject` longtext COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `instruction` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`email_template_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `email_template` */

insert  into `email_template`(`email_template_id`,`task`,`subject`,`body`,`instruction`) values (1,'new_homework','New homework uploaded','<p>Hola,</p>\r\n<p>Tu profesor de [SUBJECT] ha subido una nueva tarea al sistema, la informaci&oacute;n es la siguiente:</p>\r\n<p><br /> T&iacute;tulo : [TITLE]</p>\r\n<p>Descripci&oacute;n: [DESCRIPTION]</p>\r\n<p>&nbsp;</p>\r\n<p>Para revisar esta tarea ingresa a tu Aula Virtual, secci&oacute;n <strong>Tareas.</strong></p>','');
insert  into `email_template`(`email_template_id`,`task`,`subject`,`body`,`instruction`) values (2,'student_absences','Absenses','<div>Hola <strong>[PARENT]</strong>,</div>\r\n<p>El motivo del correo es para notificarle que su apreciable hijo <strong>[STUDENT]</strong> no se presento a clases el d&iacute;a de hoy, si se trata de una emergencia por favor comunicarse al establecimeinto.</p>','');
insert  into `email_template`(`email_template_id`,`task`,`subject`,`body`,`instruction`) values (3,'student_reports','New report','<div>\r\n<div>\r\n<p>Hola [PARENT],</p>\r\n<p>Se ha creado un nuevo reporte de disciplina para [STUDENT], por favor consultar en los reportes acad&eacute;micos dentro de su cuenta.</p>\r\n</div>\r\n</div>','');
insert  into `email_template`(`email_template_id`,`task`,`subject`,`body`,`instruction`) values (4,'parent_new_invoice','New invoice','<p>Hola [PARENT],</p>\r\n<p>Se ha creado una nueva factura para [STUDENT], para ver los detalles de la factura por favor ingrese a su administraci&oacute;n de pagos en su cuenta.</p>','');
insert  into `email_template`(`email_template_id`,`task`,`subject`,`body`,`instruction`) values (5,'student_new_invoice','New invoice','<p>Hola [STUDENT],</p>\n<p>Se ha creado una nueva factura con tu nombre, para ver los detalles de la factura por favor ingresa a tu administraci&oacute;n de pagos en tu cuenta.</p>','');

/*Table structure for table `enroll` */

CREATE TABLE `enroll` (
  `enroll_id` int(11) NOT NULL AUTO_INCREMENT,
  `enroll_code` longtext COLLATE utf8_unicode_ci NOT NULL,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) DEFAULT NULL,
  `roll` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `date_added` longtext COLLATE utf8_unicode_ci NOT NULL,
  `year` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`enroll_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `enroll` */

insert  into `enroll`(`enroll_id`,`enroll_code`,`student_id`,`class_id`,`section_id`,`roll`,`date_added`,`year`) values (15,'5d4e9d1',15,2,27,'2','1565686142','2019-2020');
insert  into `enroll`(`enroll_id`,`enroll_code`,`student_id`,`class_id`,`section_id`,`roll`,`date_added`,`year`) values (16,'50d71b9',16,6,20,'33','1565784848','2019-2020');
insert  into `enroll`(`enroll_id`,`enroll_code`,`student_id`,`class_id`,`section_id`,`roll`,`date_added`,`year`) values (17,'f75ea51',17,6,20,'12','1566035871','2019-2020');
insert  into `enroll`(`enroll_id`,`enroll_code`,`student_id`,`class_id`,`section_id`,`roll`,`date_added`,`year`) values (19,'7fa29ae',19,1,1,'12','1566308083','2019-2020');
insert  into `enroll`(`enroll_id`,`enroll_code`,`student_id`,`class_id`,`section_id`,`roll`,`date_added`,`year`) values (20,'415a68f',20,11,26,'15','1566723753','2019-2020');
insert  into `enroll`(`enroll_id`,`enroll_code`,`student_id`,`class_id`,`section_id`,`roll`,`date_added`,`year`) values (23,'3938ebb',23,11,26,'1','1568034577','2019-2020');
insert  into `enroll`(`enroll_id`,`enroll_code`,`student_id`,`class_id`,`section_id`,`roll`,`date_added`,`year`) values (24,'ea2e9fa',24,11,26,'2','1568034700','2019-2020');
insert  into `enroll`(`enroll_id`,`enroll_code`,`student_id`,`class_id`,`section_id`,`roll`,`date_added`,`year`) values (25,'e86faf2',25,11,26,'3','1568034807','2019-2020');
insert  into `enroll`(`enroll_id`,`enroll_code`,`student_id`,`class_id`,`section_id`,`roll`,`date_added`,`year`) values (26,'79d0703',26,11,28,'4','1568035083','2019-2020');
insert  into `enroll`(`enroll_id`,`enroll_code`,`student_id`,`class_id`,`section_id`,`roll`,`date_added`,`year`) values (27,'2f05266',27,11,28,'5','1568035227','2019-2020');
insert  into `enroll`(`enroll_id`,`enroll_code`,`student_id`,`class_id`,`section_id`,`roll`,`date_added`,`year`) values (28,'c8beb40',28,2,27,'1','1568037440','2019-2020');
insert  into `enroll`(`enroll_id`,`enroll_code`,`student_id`,`class_id`,`section_id`,`roll`,`date_added`,`year`) values (29,'5c17679',29,5,19,'1','1568040072','2019-2020');
insert  into `enroll`(`enroll_id`,`enroll_code`,`student_id`,`class_id`,`section_id`,`roll`,`date_added`,`year`) values (30,'2258d29',30,5,19,'2','1568040175','2019-2020');
insert  into `enroll`(`enroll_id`,`enroll_code`,`student_id`,`class_id`,`section_id`,`roll`,`date_added`,`year`) values (31,'8152dbe',31,5,19,'3','1568040249','2019-2020');
insert  into `enroll`(`enroll_id`,`enroll_code`,`student_id`,`class_id`,`section_id`,`roll`,`date_added`,`year`) values (32,'aa093b1',32,5,19,'5','1568040348','2019-2020');
insert  into `enroll`(`enroll_id`,`enroll_code`,`student_id`,`class_id`,`section_id`,`roll`,`date_added`,`year`) values (33,'09ba834',33,5,19,'5','1568040426','2019-2020');
insert  into `enroll`(`enroll_id`,`enroll_code`,`student_id`,`class_id`,`section_id`,`roll`,`date_added`,`year`) values (34,'20070f9',34,2,29,'1','1568040554','2019-2020');
insert  into `enroll`(`enroll_id`,`enroll_code`,`student_id`,`class_id`,`section_id`,`roll`,`date_added`,`year`) values (35,'cb801df',35,2,29,'2','1568040626','2019-2020');
insert  into `enroll`(`enroll_id`,`enroll_code`,`student_id`,`class_id`,`section_id`,`roll`,`date_added`,`year`) values (36,'f00e322',36,2,29,'3','1568040726','2019-2020');
insert  into `enroll`(`enroll_id`,`enroll_code`,`student_id`,`class_id`,`section_id`,`roll`,`date_added`,`year`) values (37,'6f92c12',37,2,29,'5','1568040832','2019-2020');
insert  into `enroll`(`enroll_id`,`enroll_code`,`student_id`,`class_id`,`section_id`,`roll`,`date_added`,`year`) values (38,'978cefa',38,2,29,'5','1568040920','2019-2020');
insert  into `enroll`(`enroll_id`,`enroll_code`,`student_id`,`class_id`,`section_id`,`roll`,`date_added`,`year`) values (39,'e433fd8',39,8,23,'01','1569048188','2019-2020');
insert  into `enroll`(`enroll_id`,`enroll_code`,`student_id`,`class_id`,`section_id`,`roll`,`date_added`,`year`) values (40,'d9b5808',40,8,23,'02','1569048188','2019-2020');
insert  into `enroll`(`enroll_id`,`enroll_code`,`student_id`,`class_id`,`section_id`,`roll`,`date_added`,`year`) values (41,'9c2f8d5',41,8,23,'03','1569048188','2019-2020');
insert  into `enroll`(`enroll_id`,`enroll_code`,`student_id`,`class_id`,`section_id`,`roll`,`date_added`,`year`) values (42,'fce6485',42,8,23,'04','1569048188','2019-2020');

/*Table structure for table `events` */

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(100) DEFAULT NULL,
  `event_description` longtext DEFAULT NULL,
  `image_count` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Active',
  `created_on` datetime DEFAULT current_timestamp(),
  `updated_on` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` varchar(100) DEFAULT NULL,
  `event_date` datetime DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

/*Data for the table `events` */

insert  into `events`(`event_id`,`event_name`,`event_description`,`image_count`,`status`,`created_on`,`updated_on`,`created_by`,`event_date`) values (31,'School Annual Day ','Annual Day Celebrations',1,'Active','2020-01-02 14:57:10','2020-01-02 14:57:10',NULL,'2020-01-02 00:00:00');
insert  into `events`(`event_id`,`event_name`,`event_description`,`image_count`,`status`,`created_on`,`updated_on`,`created_by`,`event_date`) values (30,'Independence day','Event Description',1,'Active','2019-08-16 15:24:12','2019-08-16 15:24:12',NULL,'2019-08-16 00:00:00');

/*Table structure for table `events_images` */

CREATE TABLE `events_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) DEFAULT NULL,
  `image_name` varchar(250) DEFAULT NULL,
  `status` varchar(25) DEFAULT 'Active',
  `created_on` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

/*Data for the table `events_images` */

insert  into `events_images`(`id`,`event_id`,`image_name`,`status`,`created_on`) values (27,30,'1565949252_5d567d449e624.jpg','Active','2019-08-16 15:24:12');
insert  into `events_images`(`id`,`event_id`,`image_name`,`status`,`created_on`) values (26,30,'1565949252_5d567d449dd8b.jpg','Active','2019-08-16 15:24:12');
insert  into `events_images`(`id`,`event_id`,`image_name`,`status`,`created_on`) values (25,30,'1565949252_5d567d449d603.jpg','Active','2019-08-16 15:24:12');
insert  into `events_images`(`id`,`event_id`,`image_name`,`status`,`created_on`) values (13,26,'1565948176_5d5679108eee6.jpg','Active','2019-08-16 15:06:16');
insert  into `events_images`(`id`,`event_id`,`image_name`,`status`,`created_on`) values (14,26,'1565948176_5d5679108fa20.jpg','Active','2019-08-16 15:06:16');
insert  into `events_images`(`id`,`event_id`,`image_name`,`status`,`created_on`) values (24,30,'1565949252_5d567d449cd33.jpg','Active','2019-08-16 15:24:12');
insert  into `events_images`(`id`,`event_id`,`image_name`,`status`,`created_on`) values (23,30,'1565949252_5d567d449c632.jpg','Active','2019-08-16 15:24:12');
insert  into `events_images`(`id`,`event_id`,`image_name`,`status`,`created_on`) values (22,30,'1565949252_5d567d449bb32.jpg','Active','2019-08-16 15:24:12');
insert  into `events_images`(`id`,`event_id`,`image_name`,`status`,`created_on`) values (28,31,'1577957230_5e0db76eac5d6.jpg','Active','2020-01-02 14:57:10');
insert  into `events_images`(`id`,`event_id`,`image_name`,`status`,`created_on`) values (29,31,'1577957230_5e0db76ead821.jpg','Active','2020-01-02 14:57:10');
insert  into `events_images`(`id`,`event_id`,`image_name`,`status`,`created_on`) values (30,31,'1577957230_5e0db76eae10b.jpg','Active','2020-01-02 14:57:10');
insert  into `events_images`(`id`,`event_id`,`image_name`,`status`,`created_on`) values (31,31,'1577957230_5e0db76eae8eb.jpg','Active','2020-01-02 14:57:10');
insert  into `events_images`(`id`,`event_id`,`image_name`,`status`,`created_on`) values (32,31,'1577957230_5e0db76eaf169.jpg','Active','2020-01-02 14:57:10');
insert  into `events_images`(`id`,`event_id`,`image_name`,`status`,`created_on`) values (33,31,'1577957230_5e0db76eaf925.jpg','Active','2020-01-02 14:57:10');
insert  into `events_images`(`id`,`event_id`,`image_name`,`status`,`created_on`) values (34,31,'1577957230_5e0db76eb00ea.jpg','Active','2020-01-02 14:57:10');
insert  into `events_images`(`id`,`event_id`,`image_name`,`status`,`created_on`) values (35,31,'1577957230_5e0db76eb0b11.jpg','Active','2020-01-02 14:57:10');
insert  into `events_images`(`id`,`event_id`,`image_name`,`status`,`created_on`) values (36,31,'1577957230_5e0db76eb1300.jpg','Active','2020-01-02 14:57:10');
insert  into `events_images`(`id`,`event_id`,`image_name`,`status`,`created_on`) values (37,31,'1577957230_5e0db76eb1e6d.jpg','Active','2020-01-02 14:57:10');
insert  into `events_images`(`id`,`event_id`,`image_name`,`status`,`created_on`) values (38,31,'1577957230_5e0db76eb2865.jpg','Active','2020-01-02 14:57:10');

/*Table structure for table `exam` */

CREATE TABLE `exam` (
  `exam_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `year` longtext COLLATE utf8_unicode_ci NOT NULL,
  `start` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `end` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`exam_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `exam` */

insert  into `exam`(`exam_id`,`name`,`year`,`start`,`end`) values (4,'UNIT TEST-1','2019-2020','6','7');
insert  into `exam`(`exam_id`,`name`,`year`,`start`,`end`) values (5,'UNIT TEST-2','2019-2020','7','8');
insert  into `exam`(`exam_id`,`name`,`year`,`start`,`end`) values (6,'UNIT TEST -3','2019-2020','9','10');

/*Table structure for table `exams` */

CREATE TABLE `exams` (
  `exam_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `availablefrom` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `availableto` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `questions` int(11) NOT NULL,
  `pass` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `clock_start` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `exam_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `clock_end` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(200) NOT NULL,
  PRIMARY KEY (`exam_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `exams` */

insert  into `exams`(`exam_id`,`title`,`description`,`availablefrom`,`availableto`,`class_id`,`section_id`,`teacher_id`,`subject_id`,`duration`,`questions`,`pass`,`clock_start`,`exam_code`,`clock_end`,`type`) values (1,'Telugu','<p>Telugu Description</p>\r\n','08/30/2019','08/30/2019',11,26,14,10,30,20,'12','17:00','9785b6a953','17:20','admin');
insert  into `exams`(`exam_id`,`title`,`description`,`availablefrom`,`availableto`,`class_id`,`section_id`,`teacher_id`,`subject_id`,`duration`,`questions`,`pass`,`clock_start`,`exam_code`,`clock_end`,`type`) values (2,'1st unit','<p>about you</p>\r\n','08/30/2019','08/30/2019',11,26,14,10,30,5,'15','16:30','5f0cf4da0e','18:30','admin');
insert  into `exams`(`exam_id`,`title`,`description`,`availablefrom`,`availableto`,`class_id`,`section_id`,`teacher_id`,`subject_id`,`duration`,`questions`,`pass`,`clock_start`,`exam_code`,`clock_end`,`type`) values (3,'Imaging Characteristics of Esophageal Cancer on Multidetector Computed Tomography ','','01/06/2020','01/06/2020',2,29,14,8,60,10,'5','09:30','0a280800fe','09:30','admin');

/*Table structure for table `expense_category` */

CREATE TABLE `expense_category` (
  `expense_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`expense_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `expense_category` */

/*Table structure for table `forum` */

CREATE TABLE `forum` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `post_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `section_id` int(11) NOT NULL,
  `post_status` int(11) DEFAULT 1,
  `type` varchar(200) NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `forum` */

/*Table structure for table `forum_message` */

CREATE TABLE `forum_message` (
  `message` longtext CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `forum_message` */

/*Table structure for table `grade` */

CREATE TABLE `grade` (
  `grade_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `grade_point` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `mark_from` int(11) DEFAULT NULL,
  `mark_upto` int(11) DEFAULT NULL,
  PRIMARY KEY (`grade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `grade` */

insert  into `grade`(`grade_id`,`name`,`grade_point`,`mark_from`,`mark_upto`) values (1,'a','10',90,100);
insert  into `grade`(`grade_id`,`name`,`grade_point`,`mark_from`,`mark_upto`) values (2,'A','10',90,100);

/*Table structure for table `group_message` */

CREATE TABLE `group_message` (
  `group_message_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_message_thread_code` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `read_status` int(11) DEFAULT NULL,
  `attached_file_name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`group_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `group_message` */

/*Table structure for table `group_message_thread` */

CREATE TABLE `group_message_thread` (
  `group_message_thread_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_message_thread_code` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `members` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_message_timestamp` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_timestamp` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`group_message_thread_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `group_message_thread` */

/*Table structure for table `holidays` */

CREATE TABLE `holidays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_of_leaves` int(11) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `created_by` varchar(40) DEFAULT NULL,
  `created_on` datetime DEFAULT current_timestamp(),
  `updated_on` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `note` text DEFAULT NULL,
  `leave_for` varchar(40) DEFAULT NULL COMMENT 'student,teacher,all',
  `status` varchar(25) DEFAULT 'active',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `holidays` */

insert  into `holidays`(`id`,`no_of_leaves`,`from_date`,`to_date`,`reason`,`created_by`,`created_on`,`updated_on`,`note`,`leave_for`,`status`) values (14,1,'2019-08-17','2019-08-17','3rd Sat',NULL,'2019-08-16 15:23:37','2019-08-16 15:23:37','Nothing',NULL,'active');

/*Table structure for table `homework` */

CREATE TABLE `homework` (
  `homework_id` int(11) NOT NULL AUTO_INCREMENT,
  `homework_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `uploader_id` int(11) NOT NULL,
  `time_end` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `section_id` int(11) NOT NULL,
  `uploader_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_end` varchar(600) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `user` varchar(200) NOT NULL,
  PRIMARY KEY (`homework_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `homework` */

insert  into `homework`(`homework_id`,`homework_code`,`title`,`description`,`class_id`,`subject_id`,`uploader_id`,`time_end`,`section_id`,`uploader_type`,`file_name`,`date_end`,`type`,`user`) values (4,'a8baaa16e8','write something about article 370','<p>Write something about article 370 more than 5 lines</p>\r\n',2,7,1,'09:30',27,'admin','','08/16/2019',1,'admin');
insert  into `homework`(`homework_id`,`homework_code`,`title`,`description`,`class_id`,`subject_id`,`uploader_id`,`time_end`,`section_id`,`uploader_type`,`file_name`,`date_end`,`type`,`user`) values (5,'c6afb3f998','Charts','<p>Descripte Type of charts</p>\r\n',6,8,1,'09:30',20,'admin','','08/15/2019',1,'admin');
insert  into `homework`(`homework_id`,`homework_code`,`title`,`description`,`class_id`,`subject_id`,`uploader_id`,`time_end`,`section_id`,`uploader_type`,`file_name`,`date_end`,`type`,`user`) values (6,'af069062b6','Title','<p>Title</p>\r\n',2,8,1,'09:30',27,'admin','','08/15/2019',1,'admin');
insert  into `homework`(`homework_id`,`homework_code`,`title`,`description`,`class_id`,`subject_id`,`uploader_id`,`time_end`,`section_id`,`uploader_type`,`file_name`,`date_end`,`type`,`user`) values (7,'09d48e00cb','gffdgfghjg','<p>gffgfcgbvnnnnbnb</p>\r\n',2,7,3,'09:30',27,'teacher','','08/21/2019',1,'teacher');
insert  into `homework`(`homework_id`,`homework_code`,`title`,`description`,`class_id`,`subject_id`,`uploader_id`,`time_end`,`section_id`,`uploader_type`,`file_name`,`date_end`,`type`,`user`) values (8,'ad5f282657','Write Notes','<p>Write Complete Chapter 1 Notes</p>\r\n',2,7,14,'09:30',27,'admin','','08/22/2019',1,'admin');
insert  into `homework`(`homework_id`,`homework_code`,`title`,`description`,`class_id`,`subject_id`,`uploader_id`,`time_end`,`section_id`,`uploader_type`,`file_name`,`date_end`,`type`,`user`) values (9,'05246a30c4','Testing Title','Testing description',2,2,2,'09:30AM',1,'2','','24/08/2019',1,'2');
insert  into `homework`(`homework_id`,`homework_code`,`title`,`description`,`class_id`,`subject_id`,`uploader_id`,`time_end`,`section_id`,`uploader_type`,`file_name`,`date_end`,`type`,`user`) values (10,'4dda6401e7','Testing Title','Testing description',2,2,2,'09:30AM',1,'2','','24/08/2019',1,'2');
insert  into `homework`(`homework_id`,`homework_code`,`title`,`description`,`class_id`,`subject_id`,`uploader_id`,`time_end`,`section_id`,`uploader_type`,`file_name`,`date_end`,`type`,`user`) values (11,'bb21e51f2c','Testing Title','Testing description',2,2,2,'09:30AM',1,'2','','24/08/2019',1,'2');
insert  into `homework`(`homework_id`,`homework_code`,`title`,`description`,`class_id`,`subject_id`,`uploader_id`,`time_end`,`section_id`,`uploader_type`,`file_name`,`date_end`,`type`,`user`) values (12,'0820f4a5ad','new notes','write notes',2,7,3,'09:30AM',27,'teacher','','26-08-2019',1,'teacher');

/*Table structure for table `horarios_examenes` */

CREATE TABLE `horarios_examenes` (
  `horario_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `time_start` int(11) NOT NULL,
  `time_end` int(11) NOT NULL,
  `time_start_min` int(11) NOT NULL,
  `time_end_min` int(11) NOT NULL,
  `day` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fecha` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`horario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `horarios_examenes` */

insert  into `horarios_examenes`(`horario_id`,`class_id`,`section_id`,`subject_id`,`time_start`,`time_end`,`time_start_min`,`time_end_min`,`day`,`year`,`fecha`,`teacher_id`,`exam_id`) values (6,11,26,9,10,11,0,0,'Wednesday','2019-2020','08/30/2019',5,NULL);

/*Table structure for table `invoice` */

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `amount_paid` longtext COLLATE utf8_unicode_ci NOT NULL,
  `due` longtext COLLATE utf8_unicode_ci NOT NULL,
  `creation_timestamp` int(11) NOT NULL,
  `payment_timestamp` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'paid or unpaid',
  `year` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`invoice_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `invoice` */

insert  into `invoice`(`invoice_id`,`student_id`,`title`,`description`,`amount`,`amount_paid`,`due`,`creation_timestamp`,`payment_timestamp`,`payment_method`,`payment_details`,`status`,`year`,`class_id`) values (15,28,'1','1',1236,'523','713',1576089000,NULL,NULL,NULL,'completed','2019-2020',2);
insert  into `invoice`(`invoice_id`,`student_id`,`title`,`description`,`amount`,`amount_paid`,`due`,`creation_timestamp`,`payment_timestamp`,`payment_method`,`payment_details`,`status`,`year`,`class_id`) values (14,20,'dee','vnvn',10000,'2000','8000',1567708200,NULL,NULL,NULL,'pending','2019-2020',11);
insert  into `invoice`(`invoice_id`,`student_id`,`title`,`description`,`amount`,`amount_paid`,`due`,`creation_timestamp`,`payment_timestamp`,`payment_method`,`payment_details`,`status`,`year`,`class_id`) values (13,20,'fee','gg',2000,'500','1500',1566844200,NULL,NULL,NULL,'pending','2019-2020',11);

/*Table structure for table `language` */

CREATE TABLE `language` (
  `phrase_id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` longtext COLLATE utf8_unicode_ci NOT NULL,
  `english` longtext COLLATE utf8_unicode_ci NOT NULL,
  `spanish` longtext COLLATE utf8_unicode_ci NOT NULL,
  `portuguese` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `hindi` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `french` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `serbian` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `arabic` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`phrase_id`),
  KEY `phrase_id` (`phrase_id`)
) ENGINE=MyISAM AUTO_INCREMENT=478 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `language` */

insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (1,'dashboard','Dashboard','Tablero','Painel de controle','डैशबोर्ड','Tableau de bord','Командна табла','لوحة القيادة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (2,'parent','Parent','Padre','Pai','माता-पिता','Parent','Родитељ','الأبوين');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (3,'profile','Profile','Perfil','Perfil do usuário','प्रोफाइल','Profil','профил','الملف الشخصي');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (4,'logout','Logout','Cerrar sesión','Fechar Sessão','लोग आउट','Connectez - Out','одјавити се','الخروج');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (5,'messages','Messages','Mensajes','Postagens','संदेश','Messages','Поруке','رسائل');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (6,'noticeboard','Noticeboard','Noticias y Eventos','Quadro de notícias','सूचना पट्ट','Tableau d\'affichage','Огласна табла','لوح الإعلانات');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (7,'teachers','Teachers','Profesores','Professores','शिक्षकों की','Enseignants','Наставници','معلمون');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (8,'schedules','Schedules','Horarios','Horários','अनुसूचियों','Des horaires','распоред','جداول');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (9,'attendance','Attendance','Asistencia','Comparecimento','उपस्थिति','Présence','похађање','الحضور');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (10,'library','Library','Biblioteca','Biblioteca','पुस्तकालय','Bibliothèque','Библиотека','مكتبة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (11,'marks','Marks','Calificaciones','Classificações','निशान','Des notes','оцене','علامات');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (12,'classroom','Classroom','Salon','Sala de aula virtual','कक्षा','Salle de classe','Учионица','قاعة الدراسة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (13,'payments','Payments','Pagos','Pagamentos','भुगतान','Paiements','Плаћања','المدفوعات');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (14,'admins','Admins','Administradores','Administradores','व्यवस्थापक','Administrateurs','Админс','مدراء');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (15,'students','Students','Estudiantes','Estudantes','छात्र','Élèves','студенти','الطلاب');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (16,'parents','Parents','Padres','Parentes','माता-पिता','Parents','Родитељи','الآباء');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (17,'news','News','Noticias','Notícia','समाचार','Nouvelles','Вести','أخبار');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (18,'events','Events','Eventos','Eventos','आयोजन','Événements','Догађаји','أحداث');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (19,'view_more','View more','Ver más','Veja mais','और देखो','Afficher plus','Погледај још','عرض المزيد');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (20,'online_users','Online users','Usuarios en línea','Usuários online','ऑनलाइन उपयोगकर्ता','Utilisateurs en ligne','Онлине корисници','مستخدمين على الهواء');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (21,'last_5_minutes','Last 5 minutes','Últimos 5 minutos','Últimos 5 minutos','पिछले 5 मिनट','Dernières 5 minutes','Последњих 5 минута','آخر 5 دقائق');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (22,'polls','Polls','Encuestas','Enquetes','पोल','Les sondages',' Анкете','استطلاعات الرأي');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (23,'thank_you_polls','Thanks for your participation','Gracias por participar','Obrigado pela sua participação','आपकी भागीदारी के लिए धन्यवाद','Merci de votre participation','Хвала што сте учествовали','شكرا على مشاركتكم');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (24,'private_messages','Private messages','Mensajes Privados','Mensagens privadas','निजी संदेश','Messages privés','Приватне поруке','رسائل خاصة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (25,'admin','Admin','Admin','Administradores','व्यवस्थापक','Admin','Админ','مشرف');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (26,'hi','Hi','Hola','Oi','नमस्ते','salut','Здраво','مرحبا');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (27,'message_home','Chat, Connect and Learn','Chatea, Conecta y Aprende','Bate-papo, Conecte e Aprenda','चैट करें, कनेक्ट करें और जानें','Chat, connexion et apprentissage','Ћаскање се повезује и учити','دردشة، الاتصال والتعلم');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (28,'write_message','Write your message','Escribir mensaje','Escreva sua mensagem','अपना संदेश लिखें','Écrivez votre message','Писати поруке','اكتب رسالتك');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (29,'send_file','Send a file','Enviar archivo','Enviar um arquivo','एक फाइल भेजें','Envoyer un fichier','Пошаљи датотеку','إرسال ملف');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (30,'send','Send','Enviar','Enviar','भेजना','Envoyer','Пошаљи','إرسال');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (31,'receiver','Receiver','Receptor','Receptor','रिसीवर','Récepteur','Пријемник','المتلقي');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (32,'view','View','Ver','Visão','राय','Vue','поглед','رأي');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (33,'comment_success','Comment posted successfully','Comentario publicado','Comentários publicados com sucesso','टिप्पणी सफलतापूर्वक पोस्ट की गई','Commentaire publié avec succès','Коментар успех','تم نشر التعليق بنجاح');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (34,'subject','Subject','Curso','Sujeito','विषय','Assujettir','Предмет','موضوع');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (35,'teacher','Teacher','Profesor','Professor','अध्यापक','Prof','Наставник','مدرس');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (36,'send_message','Send message','Enviar mensaje','Enviar mensagem','मेसेज भेजें','Envoyer le message','Пошаљи поруку','إرسال رسالة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (37,'class_routine','Class Routine','Horario de clases','Rotina de Classe','कक्षा सामान्य','Routine de classe','Распоред класа','الدرجة الروتينية');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (38,'exam_routine','Exam Routine','Horario de examenes','Rotina de exames','परीक्षा नियमित','Routine d\'examen','Распоред испита','امتحان روتيني');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (39,'attendance_report','Attendance report','Reporte de asistencia','Relatório de presenças','उपस्थिति विवरण','Rapport de présence','Извештај о присуству','تقرير الحضور');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (40,'month','Month','Mes','Mês','महीना','Mois','месец дана','شهر');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (41,'january','January','Enero','janeiro','जनवरी','janvier','Јануар','كانون الثاني');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (42,'february','February','Febrero','fevereiro','फरवरी','février','Фебруар','شهر فبراير');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (43,'march','March','Marzo','marcha','मार्च','Mars','Марш','مارس');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (44,'april','April','Abril','abril','अप्रैल','avril','Абрил','أبريل');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (45,'may','May','Mayo','mayo','मई','Mai','Мај','قد');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (46,'june','June','Junio','Junho','जून','juin','jyh','يونيو');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (47,'july','July','Julio','Julho','जुलाई','juillet','Јули','يوليو');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (48,'august','August','Agosto','agosto','अगस्त','août','Август','أغسطس');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (49,'september','September','Septiembre','setembro','सितंबर','septembre','септембар','سبتمبر');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (50,'october','October','Octubre','Outubro','अक्टूबर','octobre','Октобар','شهر اكتوبر');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (51,'november','November','Noviembre ','novembro','नवंबर','novembre','Новембар','شهر نوفمبر');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (52,'december','December','Diciembre','dezembro','दिसंबर','décembre','Децембар','ديسمبر');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (53,'student','Student','Estudiante','Aluna','छात्र','Étudiant','ученик','طالب علم');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (54,'select','Select','Seleccionar','Selecione','चुनते हैं','Sélectionner','Изаберите','تحديد');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (55,'generate','Generate','Generar','Gerar','उत्पन्न','Générer','Генериши','توفير');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (56,'type','Type','Tipo','Tipo','प्रकार','Type','тип','اكتب');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (57,'name','Name','Nombre','Nome','नाम','prénom','Име','اسم');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (58,'author','Author','Autor','Autor','लेखक','Auteur','Аутор','مؤلف');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (59,'description','Description','Descripción','Descrição','विवरण','La description','Опис','وصف');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (60,'status','Status','Estado','Status','स्थिति','Statut','Статус','الحالة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (61,'price','Price','Precio','Preço','मूल्य','Prix','Цена','السعر');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (62,'download','Download','Descargar','Download','डाउनलोड','Télécharger','преузимање','تحميل');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (63,'normal','Normal','Normal','Normal','साधारण','Normal','Нормално','عادي');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (64,'no_downloaded','No file to download','No disponible','Nenhum arquivo para baixar','डाउनलोड करने के लिए कोई फ़ाइल नहीं','Aucun fichier à télécharger','није доступно','لا يوجد ملف لتنزيله');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (65,'virtual','Virtual','Virtual','Virtual','वास्तविक','Virtuel','Виртуелно','افتراضية');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (66,'roll','Roll ID','Roll ID','Roll ID','रोल आईडी','Roll ID','Ролл','معرف لفة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (67,'class','Class','Grado','Classe','कक्षा','Classe','класа','صف دراسي');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (68,'section','Section','Sección','Seção','अनुभाग','Section','Одељак','الجزء');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (69,'mark','Mark','Nota','Marca','निशान','marque','Марк','علامة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (70,'comment','Comment','Comentario','Comente','टिप्पणी','Commentaire','Коментар','تعليق');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (71,'view_all','View all','Ver todo','Ver tudo','सभी को देखें','Voir tout','погледати све','عرض الكل');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (72,'online_exams','Online exams','Exámenes en línea','Exames on-line','ऑनलाइन परीक्षाएं','Examens en ligne','Онлине испити','الامتحانات عبر الإنترنت');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (73,'homework','Homework','Tarea','Dever de casa','घर का पाठ','Devoirs','домаћи задатак','واجب منزلي');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (74,'study_material','Study material','Material de estudio','Material de estudo','अध्ययन सामग्री','Matériel d\'étude','Студијски материјал','المواد الدراسية');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (75,'syllabus','Syllabus','Contenidos de unidad','Programa de Estudos','पाठ्यक्रम','Programme','Садржај семестра','المنهج');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (76,'title','Title','Título','Título','शीर्षक','Titre','Наслов','عنوان');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (77,'start_date','Start date','Fecha de inicio','Data de início','आरंभ करने की तिथि','Date de début','Датум почетка','تاريخ البدء');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (78,'end_date','End date','Fecha límite','Data final','अंतिम तिथि','Date de fin','крајњи датум','تاريخ الانتهاء');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (79,'results','Results','Resultados','Resultados','परिणाम','Résultats','Резултате','النتائج');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (80,'view_results','View results','Ver resultados','Ver resultados','परिणाम देखें','Voir les résultats','Погледајте резултате','عرض النتائج');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (81,'no_data','No data available','Sin datos','Não há dados disponíveis','कोई डेटा उपलब्ध नहीं है','Pas de données disponibles','нема података','لا تتوافر بيانات');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (82,'of','of','de','of','का','de','Оф','من');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (83,'delivery_date','Delivery date','Fecha de entrega','Data de entrega','डिलीवरी की तारीख','Date de livraison','датум испоруке','تاريخ التسليم او الوصول');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (84,'details','Details','Detalles','Detalhes','विवरण','Détails','Детаље','تفاصيل');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (85,'back','Back','Regresar','Back','वापस','Arrière','назад','الى الخلف');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (86,'file','File','Archivo','Arquivo','फ़ाइल','Fichier','Филе','ملف');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (87,'no_delivered','Not delivered','No entregado','Não entregue','डिलीवर नहीं हुआ','Non livrés','Није испоручено','لم يتم تسليمها');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (88,'information','Information','Información','Em formação','जानकारी','Information','Информације','معلومات');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (89,'limit_date','Limit date','Fecha limite','Data-limite','सीमा तिथि','Date limite','Датум ограничења','تاريخ الحد');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (90,'allowed_deliveries','Deliveries allowed up to','Se permiten entregas hasta','Entregas permitidas até','तक पहुंचने की अनुमति','Les livraisons ont permis jusqu\'à','Достава је дозвољена до','عمليات التسليم المسموح بها تصل إلى');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (91,'unrated','Unrated','Sin calificar','Sem classificação','अनरेटेड','Non évalué','Унратед','غير مصنف');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (92,'teacher_comment','Teacher comment','Comentario del profesor','Comentário do professor','शिक्षक टिप्पणी','Commentaire de l\'enseignant','Коментар наставника','تعليق المعلم');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (93,'date','Date','Fecha','Date','तारीख','Rendez-vous amoureux','Датум','تاريخ');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (94,'upload_by','Uploaded by','Subido por','Enviado por','द्वारा डाली गई','telechargé par','Уплоад би','تم الرفع بواسطة...');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (95,'subject_marks','Subject marks','Calificaciones por curso','Marcas de assunto','विषय के निशान','Signes du sujet','Оцене по курсу','علامات الموضوع');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (96,'activity','Activity','Actividad','Atividade','गतिविधि','Activité','активност','نشاط');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (97,'amount','Amount','Monto','Montante','रकम','Montant','износ','كمية');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (98,'invoice','Invoice','Factura','Fatura','बीजक','Facture d\'achat','фактура','فاتورة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (99,'make_payment','Make payment','Realizar pago','Faça o pagamento','भुगतान करो','Effectuer le paiement','извршити уплату','قم بالدفع');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (100,'pay_with_paypal','Pay with PayPal','Pagar con PayPal','Pagar com PayPal','पेपैल के साथ भुगतान करें','Payer avec PayPal','Платите уз паипал','الدفع بواسط باى بال');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (101,'view_invoice','View invoice','Ver factura','Ver fatura','चालान देखें','Voir la facture','Погледајте фактуру','عرض الفاتورة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (102,'phone','Phone','Celular','telefone','फ़ोन','Téléphone','Телефон','هاتف');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (103,'total','Total','Total','Total','कुल','Total','Укупно','مجموع');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (104,'login','Login','Acceder','Entrar','लॉग इन करें','S\'identifier','Пријавите се','تسجيل الدخول');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (105,'username','Username','Usuario','Nome de usuário','उपयोगकर्ता नाम','Nom d\'utilisateur','корисничко име','اسم المستخدم');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (106,'password','Password','Contraseña','Senha','पासवर्ड','Mot de passe','Лозинка','كلمه السر');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (107,'register','Register','Registrarse','registo','रजिस्टर','registre','регистровати','تسجيل');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (108,'lost_password','Lost password','¿Perdiste tu contraseña?','Senha perdida','पासवर्ड खो गया','Mot de passe perdu','Да ли сте изгубили лозинку?','كلمة مرور مفقودة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (109,'create_account','Create an account','Crear cuenta','Crie a sua conta aqui','खाता बनाएं','Créer un compte','Региструј се','انشئ حساب');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (110,'email','Email','Correo','O email','ईमेल','Email','Емаил','البريد الإلكتروني');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (111,'address','Address','Dirección','Endereço','पता','Adresse','Адреса','عنوان');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (112,'birthday','Birthday','Cumpleaños','Aniversário','जन्मदिन','Anniversaire','Рођендан','عيد الميلاد');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (113,'gender','Gender','Género','Gênero','लिंग','Le genre','Пол','جنس');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (114,'male','Male','Masculino','Masculino','नर','Mâle','Мушки','الذكر');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (115,'female','Female','Femenino','Fêmea','महिला','Femelle','зенски пол','إناثا');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (116,'profession','Profession','Profesión','Profissão','व्यवसाय','Métier','Професија','مهنة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (117,'recover_your_password','Recover your password','Recupera tu contraseña','Recupere sua senha','पासवर्ड पुनः प्राप्त करना','Récupérez votre mot de passe','Опоравите своју лозинку','استعادة كلمة المرور');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (118,'enter_email','Enter your email','Ingresa tu correo','Insira seu email','अपना ईमेल दर्ज करें','Entrer votre Email','Унесите пошту','أدخل بريدك الإلكتروني');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (119,'recover','Recover','Recuperar','Recuperar','वसूली','Récupérer','опоравити се','استعادة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (120,'invalid_data','Invalid information','Datos incorrectos, verifique y vuelva a intentar','Informação inválida','अमान्य जानकारी','Informations invalides','Неисправни подаци, молимо проверите и покушајте поново','معلومات غير صالحة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (121,'subjects','Subjects','Cursos','assuntos','विषय','Sujets','Теме','المواضيع');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (122,'permissions','Permissions','Permisos','Permissões','अनुमतियां','Autorisations','Дозволе','أذونات');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (123,'teacher_report','Teacher reports','Reporte de profesores','Relatórios dos professores','शिक्षक की रिपोर्ट','Rapports des enseignants','Извјештај учитеља','تقارير المعلم');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (124,'private_message','Private messages','Mensajes privados','Mensagens privadas','निजी संदेश','Messages privés','приватна порука','رسائل خاصة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (125,'your_marks','Your marks','Tus calificaciones','Suas marcas','आपके अंक','Vos marques','Ваша квалификација','علاماتك');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (126,'print','Print','Imprimir ','Impressão','छाप','Impression','Принт','طباعة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (127,'forum','Forum','Foro','Fórum','मंच','Forum','Форум','المنتدى');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (128,'options','Options','Opciones','Opções','विकल्प','Options','Опције','خيارات');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (129,'exam_finish','Finish exam','El examen ha finalizado','Termine o exame','परीक्षा समाप्त करें','Fin de l\'examen','Испит је завршен','إنهاء الامتحان');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (130,'exam_results','Exam results','Resultados del examen','Resultados dos exames','परीक्षा के परिणाम','Résultats d\'examen','Резултати испита','نتائج الامتحانات');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (131,'question','Question','Pregunta','Questão','प्रश्न','Question','Питање','سؤال');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (132,'correct_answer','Correct answer','Respuesta correcta','Resposta correta','सही उत्तर','Bonne réponse','тачан одговор','اجابة صحيحة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (133,'answer','Answer','Respuesta','Responda','उत्तर','Répondre','одговор','إجابة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (134,'no_response','Unanswered','Sin responder','Sem resposta','अनुत्तरित','Sans réponse','без одговора','لم يتم الرد عليها');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (135,'solved_in','Solved in','Resuelto en','Resolvido em','में हल','Résolu dans','Решено','حلها في');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (136,'correct_answers','Correct answers','Respuestas correctas','Respostas corretas','सही उत्तर','Bonnes réponses','Тачне одговоре','الإجابات الصحيحة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (137,'average','Average','Promedio','Média','औसत','Moyenne','просек','معدل');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (138,'homework_details','Homework details','Detalles de la tarea','Detalhes do dever de casa','होमवर्क विवरण','Détail des devoirs','Домаћи детаљи','تفاصيل الواجبات المنزلية');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (139,'send_teacher_comment','Send a comment to the teacher','Enviar un comentario al profesor','Envie um comentário ao professor','शिक्षक को एक टिप्पणी भेजें','Envoyer un commentaire à l\'enseignant','Пошаљите коментар наставнику','إرسال تعليق إلى المعلم');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (140,'premissions','','Permisos','','','','Дозволе','أذونات');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (141,'apply','Apply','Aplicar','Aplique','लागू करें','Appliquer','Аплиразлог','تطبيق');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (142,'reason','Reason','Motivo','Razão','कारण','Raison','разлог','السبب');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (143,'from','From','Desde','A partir de','से','De','Од','من عند');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (144,'until','Until','Hasta','Até','जब तक','Jusqu\'à','све док','حتى');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (145,'approved','Approved','Aprobado','Aprovado','मंजूर की','Approuvé','Одобрен','وافق');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (146,'rejected','Rejected','Rechazado','Rejeitado','अस्वीकृत','Rejeté','одбијен','مرفوض');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (147,'create','Create','Crear','Crio','सर्जन करना','Créer','Створити','خلق');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (148,'code','Code','Código','Código','कोड','Code','Код','الشفرة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (149,'priority','Priority','Prioridad','Prioridade','प्राथमिकता','Priorité','Приоритет','أفضلية');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (150,'high','High','Alta','Alto','उच्च','Haute','Високо','متوسط');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (151,'pending','Pending','Pendiente','Pendente','अपूर्ण','en attendant','У току','قيد الانتظار');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (152,'create_teacher_report','Create teacher report','Nuevo reporte de profesor','Criar relatório do professor','शिक्षक रिपोर्ट बनाएं','Créer un rapport d\'enseignant','Нови извештај учитеља','إنشاء تقرير المعلم');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (153,'report','Report','Reporte','Relatório','रिपोर्ट','rapport','извештај','أبلغ عن');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (154,'low','Low','Baja','Baixo','कम','Faible','Ниско','منخفض');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (155,'middle','Middle','Media','Meio','मध्य','Milieu','Средњи','وسط');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (156,'files','Files','Archivos','arquivos','फ़ाइलें','Des dossiers','фајлови','ملفات');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (157,'view_report','View report','Ver reporte','Exibir relatório','रिपोर्ट देखें','Voir le rapport','Погледај извештај','عرض التقرير');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (158,'active','Active','Activo','Ativo','सक्रिय','actif','Активан','نشيط');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (159,'personal_information','Personal information','Información personal','Informação pessoal','व्यक्तिगत जानकारी','Informations personnelles','лична информација','معلومات شخصية');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (160,'update_password','Update password','Actualizar contraseña','Atualizar senha','पासवर्ड अपडेट करें','Update password','Ажурирање лозинке','تطوير كلمة السر');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (161,'photo','Profile Photo','Fotografía','Foto de perfil','प्रोफाइल फोटो','Photo de profil','Фотографије','صورة الملف الشخصي');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (162,'update','Update','Actualizar','Atualizar','अद्यतन','Mettre à jour','ажурирање','تحديث');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (163,'take_exam','Take exam','Tomar examen','Fazer exame','परीक्षा लो','Passer un examen','полаже испит','خذ الامتحان');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (164,'total_questions','Total Questions','Preguntas totales','Perguntas totais','कुल सवाल','Total des questions','Укупно питање','مجموع الأسئلة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (165,'duration','Duration','Duración','Duração','अवधि','Durée','трајање','المدة الزمنية');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (166,'minutes','minutes','minutos','minutos','मिनट','minutes','минута','الدقائق');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (167,'average_required','Average required','Promedio requerido','Média requerida','औसत आवश्यक','Moyenne requise','Потребан просек','متوسط المطلوب');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (168,'answer_all_questions','Answer all the questions before sending your exam.','Asegúrate de responder todas las preguntas antes de finalizar','Responda todas as perguntas antes de enviar seu exame','अपनी परीक्षा भेजने से पहले सभी प्रश्नों का उत्तर दें','Répondez à toutes les questions avant d\'envoyer votre examen.','Обавезно одговорите на сва питања пре него што завршите','أجب عن جميع الأسئلة قبل إرسال الامتحان.');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (169,'finish_message','When finished your results will be displayed automatically','Al finalizar se mostrarán tus resultados automáticamente','Quando terminar, seus resultados serão exibidos automaticamente','जब आपका परिणाम समाप्त हो जाए तो स्वचालित रूप से प्रदर्शित किया जाएगा','Une fois les résultats terminés, vos résultats s\'affichent automatiquement','Кад завршите, резултати ће се аутоматски приказивати','عند الانتهاء سيتم عرض النتائج تلقائيا');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (170,'important','IMPORTANT','IMPORTANTE','IMPORTANTE','जरूरी','IMPORTANT','Важно','مهم');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (171,'important_message','At the end of the exam, be sure to click on the End exam button, which is located on the top left','Al finalizar el examen asegúrate de hacer click en el botón Finaliza examen, que se encuentra en la parte superior izquierda','No final do exame, certifique-se de clicar no botão Executar final, que está localizado na parte superior esquerda','परीक्षा के अंत में, अंत परीक्षा बटन पर क्लिक करना सुनिश्चित करें, जो ऊपर बाईं ओर स्थित है','À la fin de l\'examen, assurez-vous de cliquer sur le bouton Fin de l\'examen, situé en haut à gauche','На крају испита обавезно кликните на дугме Заврши испит који се налази на врху','في نهاية الامتحان، تأكد من النقر على زر اختبار النهاية، والذي يقع أعلى اليمين');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (172,'start_exam','Start exam','Iniciar examen','Iniciar exame','प्रारंभिक परीक्षा','Examen de départ','Започните испит','بدء الاختبار');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (173,'online_exam','Online exam','Examen en línea','Exame on-line','ऑनलाइन परीक्षा','Examen en ligne','Онлине испит','الامتحان عبر الإنترنت');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (174,'time_left','Time left','Tiempo restante','Tempo restante','शेष समय','Temps restant','Преостало време','الوقت المتبقي');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (175,'finish_exam','Finish exam','Finalizar examen','Termine o exame','परीक्षा समाप्त करें','Fin de l\'examen','Завршни испит','إنهاء الامتحان');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (176,'success','Success','Exito','Sucesso','सफलता','Succès','Успех','نجاح');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (177,'success_delivery','Has been delivered','Has entregado esta tarea correctamente','Foi entregue','पहुँचा दिया गया है','A été livré','Успешно сте обавили овај задатак','تم تسليمها');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (178,'submitted_for_review','Submitted for review','Enviada para revisión','Enviado para revisão','समीक्षा के लिए सबमिट किया गया','Soumis pour examen','Поднесене на разматрање','تم تقديمه للمراجعة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (179,'no_required','This task does not require you to submit a file, you can respond in the text box below.','Esta tarea no requiere que envíes un archivo en línea, puedes resolverla en el siguiente cuadro de texto, cuando finalices haz click en enviar','Não exigido','आवश्यक नहीं','Non requis','Овај задатак не захтева од вас да пошаљете датотеку на мрежи, можете је ријешити у сљедећем текстуалном пољу, када завршите са кликом на слање','لا حاجة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (180,'users','Users','Usuarios','Users','उपयोगकर्ता','Utilisateurs','Корисници','المستخدمين');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (181,'notifications','Notifications','Notificaciones','Notificações','सूचनाएं','Notifications','Обавештења','إخطارات');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (182,'behavior','Behavior','Disciplina','Comportamento','व्यवहार','Comportement','Понашање','سلوك');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (183,'accounting','Accounting','Contabilidad','Contabilidade','लेखांकन','Comptabilité','Рачуноводство','محاسبة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (184,'teacher_files','Teacher files','Archivos para profesores','Arquivos de professores','शिक्षक फाइलें','Fichiers d\'enseignant','Наставничке датотеке','ملفات المعلم');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (185,'classrooms','Classrooms','Salones de clases','Salas de aula','कक्षाओं','Salles de classe','Учионице','الفصول الدراسية');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (186,'school_bus','School bus','Bus escolar','Ônibus escolar','स्कूल बस','Bus scolaire','школски аутобус','باص المدرسة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (187,'system_settings','System Settings','Ajustes del sistema','Configurações de sistema','प्रणाली व्यवस्था','Les paramètres du système','Подешавања система','اعدادات النظام');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (188,'academic_settings','Academic Settings','Ajustes académicos','Configurações acadêmicas','अकादमिक सेटिंग्स','Paramètres académiques','Академске поставке','الإعدادات الأكاديمية');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (189,'add_student','Add student','Agregar estudiante','Adicionar aluno','छात्र जोड़ें','Ajouter un étudiant','Додајте ученике','إضافة طالب');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (190,'admissions','Admissions','Admisiones','Admissões','प्रवेश','Admissions','Пријем','القبول');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (191,'students_area','Students area','Area de estudiantes','Área de estudantes','छात्र क्षेत्र','Zone étudiante','Подручје студената','Students area');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (192,'student_portal','Student portal','Portal de estudiantes','Portal do estudante','विद्यार्थी पोर्टल','Portail étudiant','Студентски портал','البوابة طالب');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (193,'upload_marks','Upload marks','Subir calificaciones','Fazer upload de marcas','अंकों को अपलोड करें','Télécharger des marques','Квалификација отпреме','علامات التحميل');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (194,'tabulation_sheet','Tabulation sheet','Hoja de tabulación','Folha de tabulação','सारणी पत्र','Feuille de tabulation','Табеларни лист','جدول تبويب');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (195,'teacher_attendance','Teacher attendance','Asistencia de profesores','Assistência dos professores','शिक्षक उपस्थिति','Participation des enseignantsRapport de présence de l\'enseignant','Присуство наставника','حضور المعلم');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (196,'teacher_attendance_report','Teacher attendance report','Reporte de asistencia de profesores','Relatório de comparecimento de professores','शिक्षक उपस्थिति रिपोर्ट','Rapport de présence de l\'enseignant','Извештај о присуству наставника','تقرير حضور المدرسين');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (197,'teacher_routine','Teacher routine','Horario de profesores','Rotina dos professores','शिक्षक दिनचर्या','La routine des enseignants','Наставник рутина','روتين المعلم');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (198,'send_news','Send news','Enviar noticias','Enviar notícias','समाचार भेजें','Envoyer des nouvelles','Пошаљи вести','إرسال الأخبار');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (199,'add_event','Add event','Agregar evento','Adicionar Evento','कार्यक्रम जोड़ें','Ajouter un évènement','Додајте догађај','إضافة حدث');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (200,'update_book','Update book','Actualizar libro','Atualizar livro','अद्यतन किताब','Mettre à jour le livre','Ажурирање књиге','تحديث الكتاب');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (201,'student_permissions','Student permissions','Permisos de estudiantes','Permissões do aluno','छात्र अनुमतियाँ','Autorisations d\'élève','Студентске дозволе','أذونات الطالب');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (202,'teacher_permissions','Teacher permissions','Permisos de profesores','Permissões do professor','शिक्षक अनुमतियां','Autorisations d\'enseignant','Студентске дозволе','أذونات المعلم');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (203,'student_payments','Student payments','Pagos de estudiantes','Pagamentos de estudantes','छात्र भुगतान','Paiements aux étudiants','Студентска уплата','دفعات الطالب');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (204,'expense','Expense','Egresos','Despesa','व्यय','Frais','Трошак','مصروف');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (205,'poll_details','Poll details','Detalles de la encuesta','Detalhes da pesquisa','पोल विवरण','Détails du sondage','Детаљи истраживања','تفاصيل الاستطلاع');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (206,'sms','SMS','SMS','SMS','एसएमएस','SMS','CMC','رسالة قصيرة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (207,'email_settings','Email settings','Ajustes de correo','Configurações de e-mail','ईमेल सेटिंग्स','Paramètres de messagerie','Поставке е-поште','إعدادات البريد الإلكتروني');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (208,'translate','Translate','Traducción','Traduzir','अनुवाद करना','Traduire','превести','ترجمه');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (209,'database','Database','Base de datos','Base de dados','डेटाबेस','Base de données','база података','قاعدة البيانات');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (210,'manage_class','Manage classes','Manejar grados','Gerenciar aulas','कक्षाएं प्रबंधित करें','Gérer les cours','Менаџер класе','إدارة الطبقات');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (211,'sections','Sections','Secciones','Seções','धारा','Sections','Одељак','الأقسام');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (212,'semesters','Semesters','Unidades','Semestres','सेमेस्टर','Semestres','Семестре','فصول دراسية');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (213,'student_promotion','Student promotion','Promover estudiantes','Promoção estudantil','छात्र पदोन्नति','Promotion étudiante','Промоција студената','ترقية الطلاب');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (214,'event','Event','Evento','Evento','घटना','un événement','Догађај','هدف');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (215,'pending_users','Pending users','Usuarios pendientes','Usuários pendentes','लंबित उपयोगकर्ता','Les utilisateurs en attente','Очекивани корисници','المستخدمون في انتظار المراجعة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (216,'new','New','Nuevo','Novo','नया','Nouveau','Ново','الجديد');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (217,'account_type','Account type','Tipo de cuenta','Tipo de conta','खाते का प्रकार','Type de compte','Тип рачуна','نوع الحساب');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (218,'super_admin','Super admin','Super admin','Super admin','सुपर व्यवस्थापक','Super admin','Супер админ','سوبر المشرف');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (219,'delete','Delete','Eliminar','Excluir','हटाना','Effacer','Избрисати','حذف');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (220,'add_new','Add new','Agregar nuevo','Adicionar novo','नया जोड़ें','Ajouter un nouveau','Додај нови','اضف جديد');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (221,'upload','Upload','Subir','Envio','अपलोड','Télécharger','отпремити','تحميل');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (222,'save','Save','Guardar','Salve','बचाना','sauvegarder','сачувати','حفظ');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (223,'salary','Salary','Salario','Salário','वेतन','Un salaire','Плата','راتب');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (224,'add','Add','Agregar','Adicionar','जोड़ना','Ajouter','додати','إضافة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (225,'single_student','Single Student','Estudiante individual','Único estudante','एकल छात्र','Étudiant unique','Један студент','طالب واحد');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (226,'student_bulk','Student bulk','Múltiples estudiantes','Student bulk','छात्र थोक','Élève en vrac','Више ученика','الطالب الأكبر');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (227,'excel_import','Import from excel','Importar desde excel','Importar do excel','एक्सेल से आयात करें','Importation depuis Excel','Екцел импорт','تسجيل النموذج');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (228,'register_form','Register form','Formulario de registro','Formulário de registro','रजिस्टर फॉर्म','Formulaire d\'inscription','Регистарски образац','أضف المزيد');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (229,'add_more','Add more','Agregar más','Adicione mais','अधिक जोड़ें','Ajouter plus','Додај још','أضف المزيد');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (230,'download_model','Download model','Descargar modelo','Baixar modelo','डाउनलोड मॉडल','Télécharger le modèle','Довнлоад модел','تحميل النموذج');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (231,'import','Import','Importar ','Importar','आयात','Importer','увоз','استيراد');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (232,'accept','Accept','Aceptar','Aceitar','स्वीकार करना','Acceptez','Прихватити','قبول');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (233,'reject','Reject','Rechazar','Rejeitar','अस्वीकार','Rejeter','одбити','رفض');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (234,'new_password','New password','Nueva contrasela','Nova senha','नया पासवर्ड','Nouveau mot de passe','Нова лозинка','كلمة السر الجديدة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (235,'assigned_subjects','Assigned Subjects','Cursos asignados','Assuntos Assinados','सौंपा विषय','Sujets assignés','Додељени предмети','الموضوعات المخصصة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (236,'assigned_students','Assigned Students','Estudiantes asignados','Alunos Atribuídos','असाइन किए गए छात्र','Étudiants affectés','Додијељени студенти','الطلاب المعينين');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (237,'all','All','Todos','Todos','सब','Tout','све','الكل');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (238,'addres','Address','Dirección','Endereço','पता','Adresse','Адреса','عنوان');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (239,'inactive','Inactive','Inactivo','Inativo','निष्क्रिय','Inactif','Неактиван','غير نشط');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (240,'semester','Semester','Unidad','Semestre','छमाही','Semestre','Семестар','نصف السنة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (241,'update_activities','Update activities','Actualizar acividades','Atualizar atividades','गतिविधियों को अपडेट करें','Activités de mise à jour','Активности ажурирања','تحديث الأنشطة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (242,'student_attendance_report','Student Attendance Report','Reporte de asistencia estudiantes','Relatório de presença de estudantes','छात्र उपस्थिति रिपोर्ट','Rapport de présence des étudiants','Извештај о ученику','تقرير حضور الطالب');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (243,'present','Present','Presente','Presente','वर्तमान','Présent','поклон','حاضر');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (244,'late','Late','Tarde','Atrasado','देर से','En retard','Касни','متأخر');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (245,'absent','Absent','Ausente','Ausente','अनुपस्थित','Absent','Одсутан','غائب');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (246,'add_class_routine','Add class routine','Agregar horario de clases','Adicionar rotina de classe','क्लास रूटीन जोड़ें','Ajouter une routine de classe','Додајте распоред распореда','إضافة روتين الطبقة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (247,'day','Day','Día','Dia','दिन','journée','Дан','يوم');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (248,'monday','Monday','Lunes','Segunda-feira','सोमवार','Lundi','Понедељак','الإثنين');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (249,'tuesday','Tuesday','Martes','terça','मंगलवार','Mardi','Уторак','الثلاثاء');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (250,'wednesday','Wednesday','Miércoles','Quarta-feira','बुधवार','Mercredi','Среда','الأربعاء');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (251,'thursday','Thursday','Jueves','Quinta-feira','गुरूवार','Jeudi','Четвртак','الخميس');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (252,'time_start','Time start','Hora de inicio','Início do tempo','समय प्रारंभ','Démarrage du temps','Почетак времена','بداية الوقت');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (253,'hour','Hour','Hora','Hora','घंटा','Heure','Сат','ساعة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (254,'time_end','Time end','Hora final','Fim do tempo','समय समाप्ति','Fin du temps','Временски крај','نهاية الوقت');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (255,'friday','Friday','Viernes','Sexta-feira','शुक्रवार','Vendredi','Петак','يوم الجمعة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (256,'add_news','Add news','Agregar noticia','Adicione notícias','समाचार जोड़ें','Ajouter des nouvelles','Додајте вести','إضافة أخبار');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (257,'edit','Edit','Editar','Editar','संपादित करें','modifier','Уредити','تصحيح');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (258,'update_news','Update news','Actualizar noticia','Atualizar notícias','न्यूज अपडेट करें','Actualiser les nouvelles','Ажурирајте вести','آخر الأخبار');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (259,'featured_image','Featured image','Imagen destacada','Imagem em destaque','निरूपित चित्र','L\'image sélectionnée','садржавана слика','صورة مميزة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (260,'notice','Notice','Noticia','Aviso prévio','नोटिस','Remarquer','објава','تنويه');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (261,'add_book','Add book','Agregar libro','Adicionar livro','पुस्तक जोड़ें','Ajouter un livre','Додајте књигу','إضافة كتاب');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (262,'available','Available','Disponible','acessível','उपलब्ध','Disponible','доступан','متاح');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (263,'unavailable','Unavailable','No disponible','Indisponível','अनुपलब्ध','Indisponible','Недоступан','غير متوفره');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (264,'book','Book','Libro','Livro','किताब','Livre','Књига','كتاب');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (265,'image','Image','Imagen','Imagem','छवि','Image','слика','صورة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (266,'other','Other','Otros','De outros','अन्य','Autre','Други','آخر');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (267,'reports','Reports','Reportes','Relatórios','रिपोर्ट','Rapports','извештаји','تقارير');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (268,'student_reports','Student reports','Reporte de estudiantes','Relatórios estudantis','छात्र रिपोर्ट','Rapports d\'étudiants','Студентски извештаји','تقارير الطالب');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (269,'create_report','Create report','Crear reporte','Criar relatório','रिपोर्ट बनाएं','Creer un rapport','Креирајте извештај','إنشاء تقرير');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (270,'created_by','Created by','Creado por','Criado por','के द्वारा बनाई गई','Créé par','Креирана од стране','صنع من قبل');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (271,'teacher_reports','Teacher reports','Reporte de profesores','Relatórios dos professores','शिक्षक की रिपोर्ट','Rapports des enseignants','Извјештај учитеља','تقارير المعلم');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (272,'medium','Medium','Media','Médio','मध्यम','Moyen','Средња','متوسط');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (273,'upload_file','Upload file','Subir archivo','Subir arquivo','दस्तावेज अपलोड करें','Téléverser un fichier','отпреми датотекуc','رفع ملفتفاصيل التقرير');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (274,'report_details','Report details','Detalles del reporte','Informar detalhes','रिपोर्ट का विवरण','Signaler des détails','Извештај детаље','تفاصيل التقرير');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (275,'mark_solved','Mark as resolved','Marcar como resuelto','Marcar como resolvido','सही के रूप में चिन्हित करो','Marquer comme résolu','Означи као ријешено','وضع علامة على أنه تم حلها');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (276,'user_report','Reporting User','Usuario que reporta','Reporting User','रिपोर्टिंग उपयोगकर्ता','Reporting utilisateur','Кориснички извештај','الإبلاغ عن المستخدم');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (277,'user','User','Usuario','Do utilizador','उपयोगकर्ता','Utilisateur','Корисник','المستعمل');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (278,'no_options','No options','No hay opciones','Sem opções','कोई विकल्प नहीं','Aucune option','Нема опција','لا توجد خيارات');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (279,'invoice_details','Invoice details','Detalles de la factura','Detalhes da factura','चालान विवरण','Détails de la facture','Детаљи фактуре','تفاصيل الفاتورة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (280,'payment_details','Payment details','Detalles del pago','Detalhes do pagamento','भुगतान विवरण','Détails de paiement','Подаци о плаћању','بيانات الدفع');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (281,'completed','Completed','Completado','Concluído','पूरा कर लिया है','Terminé','Завршено','منجز');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (282,'method','Method','Método','Método','तरीका','méthode','Метода','طريقة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (283,'card','Card','Tarjeta','Cartão','कार्ड','Carte','Картица','بطاقة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (284,'cash','Cash','Efectivo','Dinheiro','कैश','En espèces','Готовина','السيولة النقدية');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (285,'check','Check','Cheque','Check','चेक','Vérifier','Провери','التحقق من');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (286,'create_invoice','Create invoice','Crear factura','Criar recibo','इनवॉयस बनाएँ','Créer une facture','Креирајте фактуру','إنشاء فاتورة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (287,'new_payment','New payment','Nuevo pago','Novo pagamento','नया भुगतान','Nouveau paiement','Нова уплата','دفعة جديدة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (288,'expenses','Expenses','Egresos','Despesas','व्यय','Dépenses','трошкови','نفقات');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (289,'invoices','Invoices','Facturas','Faturas','चालान','Factures','Фактуре','الفواتير');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (290,'history','Payment history','Historial','Histórico de pagamento','भुगतान इतिहास','Historique de paiement','Историја','سجل الدفعات');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (291,'add_class_room','Add classroom','Agregar salon de clases','Adicionar sala de aula','कक्षा जोड़ें','Ajouter une salle de classe','Додајте учионицу','إضافة فصل دراسي');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (292,'number','Number','Número','Número','संख्या','Nombre','број','رقم');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (293,'route','Route','Ruta','Rota','मार्ग','Route','рута','طريق');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (294,'bus_id','Bus ID','ID del bus','Bus ID','बस आईडी','Identifiant du bus','Бус ид','معرف الحافلة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (295,'driver','Driver name','Conductor','Nome do motorista','चालक का नाम','Nom du conducteur','Возач','اسم السائق');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (296,'driver_phone','Driver phone','Celular del conductor','Driver phone','चालक फोन','Téléphone du pilote','Управљачки телефон','هاتف السائق');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (297,'transport_name','Transport name','Nombre del bus','Nome do transporte','परिवहन का नाम','Nom du transport','Име транспорта','اسم النقل');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (298,'bus_ID','Bus ID','ID del bus','Buss ID','बस आईडी','Identifiant du bus','Бус ид','معرف الحافلة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (299,'driver_name','Driver name','Nombre del conductor','Nome do motorista','चालक का नाम','Nom du conducteur','Име возача','اسم السائق');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (300,'create_poll','Create poll','Crear encuesta','Create poll','मतदान बनाएं','Créer un sondage','Створити анкету','إنشاء استطلاع الرأي');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (301,'more_options','More options','Más opciones','Mais opções','अधिक विकल्प','Plus d\'options','Више опција','خيارات أخرى');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (302,'system_name','System name','Nombre del sistema','Nome do sistema','सिस्टम का नाम','Nom du système','Име система','اسم النظام');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (303,'logo','Logotype','Logotipo','Logótipo','लोगोटाइप','Logotype','Лого','الشعار');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (304,'system_title','System title','Título del sistema','Título do sistema','सिस्टम शीर्षक','Titre du système','Назив система','عنوان النظام');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (305,'language','Language','Idioma','Língua','भाषा','La langue','Језик','لغة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (306,'currency','Currency','Moneda','Moeda','मुद्रा','Devise','Валута','دقة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (307,'paypal_email','PayPal email','Correo de PayPal','PayPal email','पे पल ईमेल','Email Paypal','Емаил паипал','بريد باي بال');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (308,'running_year','Running year','Año en curso','Ano corrente','वर्ष चल रहा है','Année courante','Године','تشغيل العام');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (309,'personalization','Personalization','Personalización','Personalização','निजीकरण','Personnalisation','Персонализација','إضفاء الطابع الشخصي');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (310,'theme','Theme','Tema','Tema','विषय','Thème','Тема','المقدمة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (311,'sms_service','SMS Service','Servicio de SMS','SMS Service','एसएमएस सेवा','Service SMS','Смс сервис','خدمة الرسائل القصيرة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (312,'disabled','Disabled','Desactivado','Disabled','विकलांग','désactivé','Онемогућено','معاق');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (313,'notify_send','What notifications do you want to send?','¿Qué notificaciones desea enviar?','Quais notificações você deseja enviar?','आप कौन से अधिसूचनाएं भेजना चाहते हैं?','Quelles notifications voulez-vous envoyer?','Које обавештења желите послати?','ما الإخطارات التي تريد إرسالها؟');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (314,'for_parents','For parents','Para padres','Para os pais','माता - पिता के लिए','Pour les parents','За родитеље','للوالدين');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (315,'absences','Absences','Ausencias','Ausências','अनुपस्थिति','Absences','Одсуства','الغياب');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (316,'students_reports','Student reports','Reportes académicos','Relatórios estudantis','छात्र रिपोर्ट','Rapports d\'étudiants','Студенти извештавају','تقارير الطالب');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (317,'new_invoice','New invoice','Nueva factura','Nova factura','नया चालान','Nouvelle facture','Нова фактура','فاتورة جديدة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (318,'for_students','For students','Para estudiantes','Para estudantes','छात्रों के लिए','Pour les étudiants','За студенте','للطلاب');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (319,'new_homework','New homework','Nueva tarea','Nova tarefa de casa','नया होमवर्क','Nouveau travail','Нови домаћи задатак','الواجبات المنزلية الجديدة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (320,'smtp_host','SMTP Hostname','Host SMTP','SMTP Host','एसएमटीपी होस्टनाम','SMTP Hostname','Смпт хост','SMTP Hostname');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (321,'smtp_port','SMTP Port','Puerto SMTP','SMTP Port','एसएमटीपी पोर्ट','SMTP Port','Смпт порт','SMTP Port');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (322,'smtp_timeout','SMTP Timeout','Tiempo de espera','SMTP Timeout','एसएमटीपी समयबाह्य','SMTP Timeout','Смтп тимеоут','SMTP Timeout');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (323,'smtp_user','SMTP User','Usuario SMTP','SMTP User','एसएमटीपी उपयोगकर्ता','SMTP User','Смтп корисник','SMTP User');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (324,'smtp_password','SMTP Password','Contraseña SMTP','SMTP Password','एसएमटीपी पासवर्ड','SMTP Password','Смтп лозинка','SMTP Password');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (325,'charset','Charset','Tipo de caracter','Charset','harset','Charset','Цхарсет','محارف');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (326,'mail_type','Mailtype','Tipo de correo','Mailtype','Mailtype','Mailtype','Маил порука','Mailtype');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (327,'email_templates','Email templates','Plantillas de correo','Modelos de e-mail','ईमेल टेम्पलेट्स','Modèles d\'email','Емаил предлоге','قوالب البريد الإلكتروني');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (328,'send_marks','Send marks','Enviar calificaciones','Enviar marcas','अंक भेजें','Envoyer des marques','Пошаљи оцене','إرسال علامات');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (329,'bulk_email','Bulk email','Correos masivos','E-mail em massa','थोक ईमेल','Courrier électronique en vrac','Масовна пошта','البريد الإلكتروني السائبة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (330,'languages','Languages','Idiomas','línguas','बोली','Langues','Језици','اللغات');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (331,'create_backup','Create system backup','Crear copia de seguridad','Criar backup do sistema','सिस्टम बैकअप बनाएं','Créer une sauvegarde système','Креирајте резервну копију','إنشاء نظام النسخ الاحتياطي');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (332,'restore_backup','Restore system backup','Restaurar copia de seguridad','Restaurar o backup do sistema','सिस्टम बैकअप पुनर्स्थापित करें','Restaurer la sauvegarde du système','Враћајте резервну копију','استعادة النسخ الاحتياطي للنظام');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (333,'restore','Restore','Restaurar','Restaurar','पुनर्स्थापित','Restaurer','Вратити','استعادة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (334,'minimum_mark','Minimum mark to pass a subject','Nota mínima para aprobar un curso','Marca mínima para passar um assunto','किसी विषय को पास करने के लिए न्यूनतम अंक','Marque minimale pour transmettre un sujet','Минимална оцена за пролазак на курс','علامة الحد الأدنى لتمرير موضوع');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (335,'use_saturday','Use Saturday and Sunday at class routine?','¿Utilizar sábado y domingo en horarios?','Use sábado e domingo no classroutine?','कक्षा नियमानुसार शनिवार और रविवार का उपयोग करें?','Utilisez le samedi et le dimanche à la routine de cours?','Користите суботу и недељу понекад?','استخدام السبت والأحد في روتين الطبقة؟');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (336,'yes','Yes','Si','sim','हाँ','Oui','да','نعم فعلا');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (337,'no','No ','No','No','नहीं','Non','не','لا');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (338,'classes','Classes','Grados','Aulas','कक्षाएं','Des classes','Часови','الطبقات');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (339,'start','Start','Iniciar','Começar','प्रारंभ','Début','почетак','بداية');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (340,'end','End','Fin','Fim','समाप्त','Fin','крај','النهاية');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (341,'runnig_year','Running year','Año en curso','Ano corrente','वर्ष चल रहा है','Année courante','Године','تشغيل العام');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (342,'year_to_promote','Year to promote','Año a promover','Ano de promoção','प्रोत्साहन के लिए वर्ष','Année de promotion','Годину за промоцију','السنة لتعزيز');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (343,'promote','Promote','Promover','Promover','को बढ़ावा देना','Promouvoir','Промовисати','تروج \\ يشجع \\ يعزز \\ ينمى \\ يطور');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (344,'promoted','Already promoted','Promovido','Já promovido','पहले से ही पदोन्नत','Déjà promu','Промовисана','تمت ترقيته بالفعل');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (345,'promote_to','Promote to','Promover a','Promover para','को बढ़ावा देना','Promouvoir','Промовисати','الترقية إلى');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (346,'send_marks_sms','Send marks notification by SMS','Enviar notificación de calificaciones por SMS','Enviar notificação de marca por SMS','एसएमएस द्वारा नोटिस भेजें','Envoyer une note de notification par SMS','Слање обавештења о квалификацијама путем СМС-а','إرسال علامات الإخطار عن طريق الرسائل القصيرة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (347,'notification','Notification','Notificación','Notificação','अधिसूचना','Notification','Обавештење','إعلام');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (348,'send_sms','Send SMS','Enviar SMS','Enviar SMS','संदेश भेजो','Envoyer un SMS','послати СМС','أرسل رسالة نصية قصيرة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (349,'my_subjects','My subjects','Mis cursos','Meus assuntos','मेरे विषय','Mes sujets','Моје субјекте','موضوعاتي');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (350,'my_routine','My routine','Mi horario','Minha rotina','मेरा दिनचर्या','Ma routine','моја рутина','روتين بلدي');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (351,'academic','Academic','Académico','Acadêmico','अकादमिक','Académique','Академски','أكاديمي');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (352,'student_absences','Student absences','Ausencias de estudiantes','Ausências estudantis','छात्र अनुपस्थिति','Les absences des étudiants','Одсуство студената','تغيب الطالب');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (353,'parent_new_invoice','New invoice (Parents)','Nueva factura (Padres)','Nova fatura (Pais)','नया चालान (अभिभावक)','Nouvelle facture (Parents)','Нова фактура (родитељ)','فاتورة جديدة (أولياء الأمور)');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (354,'student_new_invoice','New invoice (Students)','Nueva factura (Estudiantes)','Nova factura (Estudantes)','नया चालान (छात्र)','Nouvelle facture (étudiants)','Нови рачун (студенти)','فاتورة جديدة (طلاب)');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (355,'email_subject','Email subject','Asunto del correo','Assunto do email','ईमेल विषय','Sujet du courriel','Емаил субјецт','موضوع البريد الإلكتروني');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (356,'email_body','Email body','Contenido del correo','Corpo do email','ईमेल बॉडी','Courrier électronique','Емаил тело','هيئة البريد الإلكتروني');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (357,'reciever','Receiver','Receptor','Receptor','रिसीवर','Récepteur','Пријемник','المتلقي');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (358,'view_marks','View marks','Ver calificaciones','Ver marcas','देखें अंक','Afficher les marques','Погледајте ознаке','عرض علامات');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (359,'new_exam','New exam','Nuevo examen','Novo exame','नई परीक्षा','Nouvel examen','Нови испит','امتحان جديد');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (360,'start_hour','Start hour','Hora de inicio','Hora de início','शुरुआती घंटे','Heure de début','Почните сат','بدء الساعة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (361,'end_hour','End hour','Hora de finalización','Hora final','समाप्ति समय','Heure de fin','Крај сата','نهاية الساعة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (362,'exam_duration','Exam duration (in minutes)','Duración del examen (en minutos)','Tempo de exame em minutos','मिनटों में परीक्षा का समय','Durée de l\'examen (en minutes)','Време испитивања (у минутима)','مدة الامتحان (بالدقائق)');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (363,'exam_details','Exam details','Detalles del examen','Detalhes do Exame','परीक्षा विवरण','Détails de l\'examen','Испитни детаљи','تفاصيل الامتحان');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (364,'questions','Questions','Preguntas','Questões','प्रशन','Des questions','Питање','الأسئلة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (365,'exam_questions','Exam questions','Preguntas del examen','Perguntas do exame','परीक्षा प्रश्न','Questions d\'examen','Испитна питања','أسئلة الامتحان');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (366,'add_question','Add question','Agregar pregunta','Adicionar pergunta','प्रश्न जोड़ें','Ajouter une question','Додајте питање','إضافة سؤال');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (367,'option','Option','Opción','Opção','विकल्प','Option','опција','اختيار');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (368,'exams_results','Exam results','Resultados del examen','Resultados dos exames','परीक्षा के परिणाम','Résultats d\'examen','Резултати испита','نتائج الامتحانات');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (369,'update_exam','Update exam','Actualizar examen','Exame de atualização','परीक्षा अपडेट करें','Examen de mise à jour','Ажурирајте испит','تحديث الاختبار');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (370,'start_clock','Start hour','Hora de inicio','Hora de início','शुरुआती घंटे','Heure de début','Започети сат','بدء الساعة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (371,'end_clock','End hour','Hora de finalización','Hora final','समाप्ति समय','Heure de fin','Крај сата','نهاية الساعة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (372,'no_file','No file available','Sin archivo','Nenhum arquivo disponível','कोई फ़ाइल उपलब्ध नहीं है','Aucun fichier disponible','нема фајла','لا يتوفر أي ملف');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (373,'study_meterial','','Material de estudio','','','','Студијски материјал','');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (374,'add_homework','Add homework','Agregar tarea','Adicione lição de casa','होमवर्क जोड़ें','Ajouter les devoirs','Додајте домаћи задатак','إضافة الواجبات المنزلية');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (375,'homework_type','Homework type','Tipo de tarea','Tipo de lição de casa','होमवर्क का प्रकार','Type de devoir','Домаћи тип','نوع الواجبات المنزلية');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (376,'online_text','Online text','Texto en línea','Texto em linha','ऑनलाइन पाठ','Texte en ligne','Онлине текст','النص عبر الإنترنت');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (377,'limit_hour','Limit hour','Hora límite','Hora limite','सीमा घंटे','Heure limite','Ограничити сат','ساعة الحد');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (378,'deliveries','Deliveries','Entregas','Entregas','वितरण','Livraisons','Испоруке','التسليم');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (379,'total_students','Total students','Estudiantes totales','Total de alunos','कुल छात्रों','Nombre total d\'étudiants','Укупно ученика','إجمالي الطلاب');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (380,'delivered','Delivered','Entregada','Entregue','पहुंचा दिया','Livré','испоручена','تم التوصيل');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (381,'undeliverable','Undeliverable','Sin entregar','Não-entregável','गैर-वितरण योग्य','Non livrable','Унделиверабле','غير قابلة للتسليم');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (382,'student_comment','Student comment','Comentario del estudiante','Comentário do aluno','छात्र टिप्पणी','Commentaire de l\'élève','Студентски коментар','تعليق الطالب');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (383,'delivery_status','Delivery status','Estado de la entrega','Status de entrega','वितरण की स्थिति','Statut de livraison','Статус испоруке','حالة التسليم');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (384,'file_response','File/Response','Archivo/Respuesta','Arquivo / Resposta','फ़ाइल / प्रतिक्रिया','Fichier / Réponse','Одговор на фајл','ملف / الاستجابة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (385,'delayed_delivery','Delivery after time','Entrega tarde','Entrega após o tempo','समय के बाद वितरण','Livraison après le temps','Одложена испорука','التسليم بعد الوقت');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (386,'update_homework','Update homework','Actualizar tarea','Atualize a lição de casa','होमवर्क अपडेट करें','Mettre à jour les devoirs','Ажурирати домаћи задатак','تحديث الواجبات المنزليةv');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (387,'delivery_type','Delivery type','Tipo de entrega','Tipo de entrega','वितरण के प्रकार','Type de livraison','Тип испоруке','نوع التوصيل');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (388,'new_discussion','New discussion','Nueva discusión ','Nova discussão','नई चर्चा','Nouvelle discussion','Нова дискусија','مناقشة جديدة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (389,'publish','Publish','Publicar','Publicar','प्रकाशित करना','Publier','Објавити','نشر');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (390,'update_forum','Update forum','Actualizar foro','Atualizar fórum','फ़ोरम अपडेट करें','Forum de mise à jour','Упдате форум','تحديث المنتدى');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (391,'uploaded_by','Uploaded by','Subido por','Enviado por','द्वारा डाली गई','telechargé par','Уплоадед би','تم الرفع بواسطة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (392,'send_bulk_emails','Send bulk email','Enviar correos masivos','Enviar e-mail em massa','थोक ईमेल भेजें','Envoyer un courrier électronique en bloc','Пошаљите масе е-поште','إرسال البريد الإلكتروني المجمع');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (393,'categories','Categories','Categorías','Categorias','श्रेणियाँ','Catégories','Категорије','الاقسام');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (394,'new_expense','New expense','Nuevo egreso','Nova despesa','नया खर्च','Nouvelle dépense','Ново издање','حساب جديد');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (395,'category','Category','Categoría','Categoria','वर्ग','Catégorie','Категорија','الفئة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (396,'new_category','New category','Nueva categoria','Nova categoria','नई श्रेणी','Nouvelle catégorie','Нова категорија','فئة جديدة');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (397,'confirm_delete','Do you want to delete the information?','Seguro desea eliminar la información?','Deseja excluir as informações?','क्या आप जानकारी को हटाना चाहते हैं?','Voulez-vous supprimer les informations?','Да ли желите да обришете информације?','هل تريد حذف المعلومات؟');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (398,'confirm_approval','Surely you want to approve?','Confirma que desea aprobar?','Certamente você quer aprovar?','निश्चित रूप से आप स्वीकृति देना चाहते हैं?','Vous voulez certainement approuver?','Да ли желите да одобрите?','بالتأكيد كنت ترغب في الموافقة؟');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (399,'confirm_reject','Insurance do you want to reject?','Confirma que desea rechazar?','Seguro você quer rejeitar?','बीमा क्या आप अस्वीकार करना चाहते हैं?','Assurance voulez-vous rejeter?','Да ли желите да одбијете?','التأمين هل تريد أن ترفض؟');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (400,'confirm_delete_student','Are you sure you want to remove the student?','Confirma que desea eliminar al estudiante?','Tem certeza de que deseja remover o aluno?','क्या आप वाकई छात्र को निकालना चाहते हैं?','Êtes-vous sûr de vouloir supprimer l\'étudiant?','Да ли желите да избришете ученика?','هل تريد بالتأكيد إزالة الطالب؟');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (401,'confirm_solved','Are you sure you want to mark as resolved?','Seguro desea marcar como resuelto?','Tem certeza de que deseja marcar como resolvido?','क्या आप वाकई हल के रूप में चिह्नित करना चाहते हैं?','Êtes-vous sûr de vouloir marquer comme résolu?','Осигурање желите означити као ријешено?','هل تريد بالتأكيد وضع علامة على أنه تم حلها؟');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (402,'notification_center','Notification center','Centro de notificaciones','Centro de Notificação','सूचना केन्द्र','Centre de notification','Обавештење центар','مركز إعلام');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (403,'welcome_notifications','Welcome to the notification center','Bienvenido al centro de notificaciones','Bem-vindo ao centro de notificação','अधिसूचना केंद्र में आपका स्वागत है','Bienvenue au centre de notification','Добродошли у центар за обавештења','مرحبا بكم في مركز الإعلام');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (404,'what_send','What do you want to notify today?','¿Qué notificaciones desea enviar?','O que você quer notificar hoje?','आज आपको क्या सूचित करना है?','Que souhaitez-vous notifier aujourd\'hui?','Које обавештења желите послати?','ماذا تريد أن تخطر اليوم؟');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (405,'send_email','Send email','Enviar correo','Enviar email','ईमेल भेजें','Envoyer un courrier électronique','Пошаљи пошту','ارسل بريد الكتروني');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (406,'successfully_added','Successfully added information','Información agregada con éxito','nformações adicionadas com sucesso','सफलतापूर्वक जानकारी जोड़ा','Informations ajoutées avec succès','Успешно додано','تمت إضافة معلومات بنجاح');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (407,'successfully_updated','Information updated successfully','Información actualizada con éxito','Informações atualizadas com sucesso','सूचना सफलतापूर्वक अपडेट की गई','Informations mises à jour avec succès','Успешно ажуриран','تم تحديث المعلومات بنجاح');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (408,'successfully_deleted','Information deleted successfully','Información eliminada con éxito','Informações eliminadas com sucesso','जानकारी सफलतापूर्वक हटाई गई','Informations supprimées avec succès','Успешно избрисан','تم حذف المعلومات بنجاح');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (409,'sent_successfully','Information sent successfully','Información enviada con éxito','Informações enviadas com sucesso','सूचना सफलतापूर्वक भेजी गई','Informations envoyées avec succès','Послато успешно','تم إرسال المعلومات بنجاح');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (410,'successfully_uploaded','Information uploaded successfully','Información subida con éxito','Informações carregadas com sucesso','सूचना सफलतापूर्वक अपलोड की गई','Informations téléchargées avec succès','Успешно постављен','تم تحميل المعلومات بنجاح');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (411,'reply_sent','Reply sent','Respuesta enviada','Resposta enviada','उत्तर भेजा','Réponse envoyée','Одговор послат','تم إرسال الرد');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (412,'message_sent','Message sent','Mensaje enviado','Mensagem enviada','मैसेज बेजा गया','Message envoyé','Порука послата','تم الارسال');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (413,'limit_questions','To add more questions configure the exam to accept more','Para agregar más preguntas configura el examen para aceptar más','Para adicionar mais perguntas configure o exame para aceitar mais','और अधिक प्रश्न जोड़ने के लिए अधिक स्वीकार करने के लिए परीक्षा को कॉन्फ़िगर करें','Pour ajouter d\'autres questions, configurez l\'examen pour accepter plus','Да бисте додали још питања, конфигурирајте испит да бисте прихватили више','لإضافة المزيد من الأسئلة، يمكنك تهيئة الاختبار لقبول المزيد');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (414,'delivered_homework','Homework successfully delivered','Tarea entregada correctamente','Tarefa entregue corretamente.','कार्य सफलतापूर्वक वितरित','Travail à domicile livré avec succès','Задатак је исправно достављен','تم تسليم الواجبات المنزلية بنجاح');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (415,'paid','Paid','Pagado','Paid','भुगतान किया','Payé','Плаћени','دفع');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (416,'unpaid','Unpaid','Sin pagar','Unpaid','वेतन के बिना','Non payé','Неплаћен','غير مدفوع');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (417,'social','Socials','Social','Social','सामाजिक','Socials','Социјално','سيالز');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (418,'no_questions','No. Questions','No. de Preguntas','Pergunta Total','कोई प्रश्न नहीं','Question totale','Укупно питање','إجمالي السؤال');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (419,'on_time','On time','A tiempo','Na Hora','समय पर','À temps','На време','في الوقت المحدد');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (420,'view_response','View response','Ver respuesta','Ver resposta','प्रतिक्रिया देखें','Voir la réponse','Погледајте одговор','عرض الرد');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (422,'success_password','Your password has been reset successfully. This is your new password:','Tu password ha sido reseteado exitosamente. Éste es tu nuevo password:','Sua senha foi reiniciada com sucesso. Esta é a sua nova senha:','आपका पासवर्ड सफलतापूर्वक रीसेट कर दिया गया है यह आपका नया पासवर्ड है:','Votre mot de passe a été réinitialisé avec succès. Ceci est votre nouveau mot de passe:','Ваша лозинка је успјешно ресетована. Ово је ваша нова лозинка:','تمت إعادة تعيين كلمة المرور بنجاح. هذه هي كلمة المرور الجديدة:');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (425,'message_group','Group Message','Mensaje en grupo',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (426,'groups','Groups','Grupos',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (427,'create_group','Create group','Crear un grupo',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (428,'select_group_or','Select group or','Seleccionar un grupo o',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (429,'group_members','Group members','Miembros del grupo',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (430,'user_type','Teacher type','Tipo de profesor',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (431,'user_permissions','User permissions','Permisos del usuario',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (432,'add_language','Add language','Agregar idioma',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (433,'flag','Flag','Bandera',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (434,'grades','Grade leves','Niveles de grado',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (435,'mark_from','Mark from','Desde',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (436,'mark_to','Mark to','Hasta',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (437,'point','Point','Punto',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (438,'grade','Grade','Grado',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (439,'participants','Participants','Participantes',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (440,'google_err','This email address is already being used by another user, to be able to add it first it must be deactivated from the other account','Esta dirección de email ya esta siendo utilizada por otro usuario, para poder agregarla primero debe ser desactivada desde la otra cuenta',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (441,'google_true','Your Google account has been linked successfully','Tu cuenta de Google se ha vinculado con éxito',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (442,'facebook_true','Your Facebook account has been linked successfully','Tu cuenta de Facebook se ha vinculado con éxito',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (443,'facebook_err','This Facebook account is already being used by another user, to be able to add it first it must be deactivated from the other profile','Esta cuenta de Facebook ya esta siendo utilizada por otro usuario, para poder agregarla primero debe ser desactivada desde el otro perfil',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (444,'facebook_delete','Your Facebook account has been successfully unlinked','Tu cuenta de Facebook se ha desvinculado correctamente',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (445,'google_delete','Your Google account has been successfully unlinked','Tu cuenta de Facebook se ha desvinculado correctamente',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (446,'my_notifications','My Notifications','Mis notificaciones',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (447,'absence_approved','You have approved your leave of absence.','Ha aprobado tu permiso de ausencia.',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (448,'absence_rejected','You have rejected your leave of absence.','Ha rechazado tu permiso de ausencia.',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (449,'absence_approved_for','Has approved the leave of absence for','Ha aprobado el permiso de ausencia para',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (450,'absence_rejected_for','You have rejected the leave of absence to','Ha rechazado el permiso de ausencia para',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (451,'new_homework_notify','You have created a new homework with the title','Ha creado una nueva tarea con el título',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (452,'homework_rated','has rated your homework','ha calificado tu tarea',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (453,'study_material_notify','You have uploaded study material to your portal','Ha subido material de estudio a tu portal',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (454,'online_exam_notify','added a new online exam with the title','agregó un nuevo examen en línea con el título',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (455,'news_notify','You have received a new news with title','Has recibido una nueva noticia con título',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (456,'event_notify','A new event has been created with the title','Se ha creado un nuevo evento con el título',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (457,'new_comment','Added a new comment on','Agregó un nuevo comentario en',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (458,'report_solved','It has been marked as resolved','Se ha marcado como resuelto',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (459,'unit_content','has uploaded files in Unit Contents for','ha subido archivos en Contenidos de Unidad para',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (460,'book_added','has added a new book to the library for','ha agregado un nuevo libro a la biblioteca para',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (461,'file_uploaded','Uploaded a file for teachers with the title','Subió un archivo para profesores con el título',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (462,'absence_request','has requested a new leave of absence to','ha solicitado un nuevo permiso de ausencia para',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (463,'reg_teacher','A new user has been registered as a teacher with the name','Se ha registrado un nuevo usuario como profesor con el nombre',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (464,'reg_student','A new user has been registered as a student with the name','Se ha registrado un nuevo usuario como estudiante con el nombre',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (465,'reg_parent','A new user has been registered as a parent with the name','Se ha registrado un nuevo usuario como padre con el nombre',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (466,'finish_exam_notify','has finished the exam','ha finalizado el examen',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (467,'teacher_report_notify','has created a new report for the teacher','ha creado un nuevo reporte para el profesor',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (468,'comment_forum','has posted a comment in the forum','ha publicado un comentario en el foro',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (469,'student_report_notify','has created a new report for the student','ha creado un nuevo reporte para el estudiante',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (470,'marks_notify','has updated the marks of','ha actualizado las calificaciones de',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (471,'absense_teacher','has requested a new leave of absence','ha solicitado un nuevo permiso de ausencia',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (472,'new_message_notify','has sent you a new message','te ha enviado un nuevo mensaje',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (473,'at','at','a las',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (474,'login_facebook','Login with Facebook','Acceder con Facebook',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (475,'login_google','Login with Google','Acceder con Google',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (476,'login_error','There is an error in the login, verify and try again','Hay un error en el inicio de sesión, verifica y vuelve a intentarlo nuevamente',NULL,NULL,NULL,NULL,'');
insert  into `language`(`phrase_id`,`phrase`,`english`,`spanish`,`portuguese`,`hindi`,`french`,`serbian`,`arabic`) values (477,'social_error','Sorry, you can not sign in with this account you must first link it to your user profile','Lo sentimos, no puedes iniciar sesión con esta cuenta primero debes vincularla a tu perfil de usuario',NULL,NULL,NULL,NULL,'');

/*Table structure for table `leave` */

CREATE TABLE `leave` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leave_applicant_id` int(11) DEFAULT NULL,
  `applicant_type` varchar(25) DEFAULT NULL COMMENT 'Student OR Teacher OR any Other Roll',
  `reason` text DEFAULT NULL,
  `days_count` int(11) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `date_of_approved` date DEFAULT NULL,
  `approved_by` varchar(100) DEFAULT NULL,
  `leave_status` varchar(20) DEFAULT 'pending',
  `created_on` datetime DEFAULT current_timestamp(),
  `updated_on` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(40) DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

/*Data for the table `leave` */

/*Table structure for table `libreria` */

CREATE TABLE `libreria` (
  `libro_id` int(11) NOT NULL AUTO_INCREMENT,
  `libro_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `uploader_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `uploader_id` int(11) NOT NULL,
  `year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `nombre` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `autor` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`libro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `libreria` */

/*Table structure for table `mark` */

CREATE TABLE `mark` (
  `mark_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `mark_obtained` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mark_total` int(11) NOT NULL DEFAULT 100,
  `comment` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` longtext COLLATE utf8_unicode_ci NOT NULL,
  `labuno` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `labdos` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `labtres` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `labcuatro` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `labcinco` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `labseis` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `labsiete` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `labocho` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `labnueve` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `labtotal` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `final` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`mark_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `mark` */

insert  into `mark`(`mark_id`,`student_id`,`subject_id`,`class_id`,`section_id`,`exam_id`,`mark_obtained`,`mark_total`,`comment`,`year`,`labuno`,`labdos`,`labtres`,`labcuatro`,`labcinco`,`labseis`,`labsiete`,`labocho`,`labnueve`,`labtotal`,`final`) values (39,15,7,2,27,3,'1',100,'','2019-2020','2','','','','','','','','','3',NULL);
insert  into `mark`(`mark_id`,`student_id`,`subject_id`,`class_id`,`section_id`,`exam_id`,`mark_obtained`,`mark_total`,`comment`,`year`,`labuno`,`labdos`,`labtres`,`labcuatro`,`labcinco`,`labseis`,`labsiete`,`labocho`,`labnueve`,`labtotal`,`final`) values (40,20,10,11,26,3,NULL,100,NULL,'2019-2020',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `mark`(`mark_id`,`student_id`,`subject_id`,`class_id`,`section_id`,`exam_id`,`mark_obtained`,`mark_total`,`comment`,`year`,`labuno`,`labdos`,`labtres`,`labcuatro`,`labcinco`,`labseis`,`labsiete`,`labocho`,`labnueve`,`labtotal`,`final`) values (43,34,8,2,29,4,'',100,'','2019-2020','','','','','','','','','','0',NULL);
insert  into `mark`(`mark_id`,`student_id`,`subject_id`,`class_id`,`section_id`,`exam_id`,`mark_obtained`,`mark_total`,`comment`,`year`,`labuno`,`labdos`,`labtres`,`labcuatro`,`labcinco`,`labseis`,`labsiete`,`labocho`,`labnueve`,`labtotal`,`final`) values (44,35,8,2,29,4,'',100,'','2019-2020','','','','','','','','','','0',NULL);
insert  into `mark`(`mark_id`,`student_id`,`subject_id`,`class_id`,`section_id`,`exam_id`,`mark_obtained`,`mark_total`,`comment`,`year`,`labuno`,`labdos`,`labtres`,`labcuatro`,`labcinco`,`labseis`,`labsiete`,`labocho`,`labnueve`,`labtotal`,`final`) values (45,36,8,2,29,4,'',100,'','2019-2020','','','','','','','','','','0',NULL);
insert  into `mark`(`mark_id`,`student_id`,`subject_id`,`class_id`,`section_id`,`exam_id`,`mark_obtained`,`mark_total`,`comment`,`year`,`labuno`,`labdos`,`labtres`,`labcuatro`,`labcinco`,`labseis`,`labsiete`,`labocho`,`labnueve`,`labtotal`,`final`) values (46,37,8,2,29,4,'',100,'','2019-2020','','','','','','','','','','0',NULL);
insert  into `mark`(`mark_id`,`student_id`,`subject_id`,`class_id`,`section_id`,`exam_id`,`mark_obtained`,`mark_total`,`comment`,`year`,`labuno`,`labdos`,`labtres`,`labcuatro`,`labcinco`,`labseis`,`labsiete`,`labocho`,`labnueve`,`labtotal`,`final`) values (47,38,8,2,29,4,'',100,'','2019-2020','','','','','','','','','','0',NULL);
insert  into `mark`(`mark_id`,`student_id`,`subject_id`,`class_id`,`section_id`,`exam_id`,`mark_obtained`,`mark_total`,`comment`,`year`,`labuno`,`labdos`,`labtres`,`labcuatro`,`labcinco`,`labseis`,`labsiete`,`labocho`,`labnueve`,`labtotal`,`final`) values (48,26,17,11,28,5,NULL,100,NULL,'2019-2020',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `mark`(`mark_id`,`student_id`,`subject_id`,`class_id`,`section_id`,`exam_id`,`mark_obtained`,`mark_total`,`comment`,`year`,`labuno`,`labdos`,`labtres`,`labcuatro`,`labcinco`,`labseis`,`labsiete`,`labocho`,`labnueve`,`labtotal`,`final`) values (49,27,17,11,28,5,NULL,100,NULL,'2019-2020',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `mark`(`mark_id`,`student_id`,`subject_id`,`class_id`,`section_id`,`exam_id`,`mark_obtained`,`mark_total`,`comment`,`year`,`labuno`,`labdos`,`labtres`,`labcuatro`,`labcinco`,`labseis`,`labsiete`,`labocho`,`labnueve`,`labtotal`,`final`) values (50,34,7,2,29,4,NULL,100,NULL,'2019-2020',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `mark`(`mark_id`,`student_id`,`subject_id`,`class_id`,`section_id`,`exam_id`,`mark_obtained`,`mark_total`,`comment`,`year`,`labuno`,`labdos`,`labtres`,`labcuatro`,`labcinco`,`labseis`,`labsiete`,`labocho`,`labnueve`,`labtotal`,`final`) values (51,35,7,2,29,4,NULL,100,NULL,'2019-2020',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `mark`(`mark_id`,`student_id`,`subject_id`,`class_id`,`section_id`,`exam_id`,`mark_obtained`,`mark_total`,`comment`,`year`,`labuno`,`labdos`,`labtres`,`labcuatro`,`labcinco`,`labseis`,`labsiete`,`labocho`,`labnueve`,`labtotal`,`final`) values (52,36,7,2,29,4,NULL,100,NULL,'2019-2020',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `mark`(`mark_id`,`student_id`,`subject_id`,`class_id`,`section_id`,`exam_id`,`mark_obtained`,`mark_total`,`comment`,`year`,`labuno`,`labdos`,`labtres`,`labcuatro`,`labcinco`,`labseis`,`labsiete`,`labocho`,`labnueve`,`labtotal`,`final`) values (53,37,7,2,29,4,NULL,100,NULL,'2019-2020',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `mark`(`mark_id`,`student_id`,`subject_id`,`class_id`,`section_id`,`exam_id`,`mark_obtained`,`mark_total`,`comment`,`year`,`labuno`,`labdos`,`labtres`,`labcuatro`,`labcinco`,`labseis`,`labsiete`,`labocho`,`labnueve`,`labtotal`,`final`) values (54,38,7,2,29,4,NULL,100,NULL,'2019-2020',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `mark`(`mark_id`,`student_id`,`subject_id`,`class_id`,`section_id`,`exam_id`,`mark_obtained`,`mark_total`,`comment`,`year`,`labuno`,`labdos`,`labtres`,`labcuatro`,`labcinco`,`labseis`,`labsiete`,`labocho`,`labnueve`,`labtotal`,`final`) values (55,20,10,11,26,4,NULL,100,NULL,'2019-2020',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `mark`(`mark_id`,`student_id`,`subject_id`,`class_id`,`section_id`,`exam_id`,`mark_obtained`,`mark_total`,`comment`,`year`,`labuno`,`labdos`,`labtres`,`labcuatro`,`labcinco`,`labseis`,`labsiete`,`labocho`,`labnueve`,`labtotal`,`final`) values (56,23,10,11,26,4,NULL,100,NULL,'2019-2020',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `mark`(`mark_id`,`student_id`,`subject_id`,`class_id`,`section_id`,`exam_id`,`mark_obtained`,`mark_total`,`comment`,`year`,`labuno`,`labdos`,`labtres`,`labcuatro`,`labcinco`,`labseis`,`labsiete`,`labocho`,`labnueve`,`labtotal`,`final`) values (57,24,10,11,26,4,NULL,100,NULL,'2019-2020',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `mark`(`mark_id`,`student_id`,`subject_id`,`class_id`,`section_id`,`exam_id`,`mark_obtained`,`mark_total`,`comment`,`year`,`labuno`,`labdos`,`labtres`,`labcuatro`,`labcinco`,`labseis`,`labsiete`,`labocho`,`labnueve`,`labtotal`,`final`) values (58,25,10,11,26,4,NULL,100,NULL,'2019-2020',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `mark`(`mark_id`,`student_id`,`subject_id`,`class_id`,`section_id`,`exam_id`,`mark_obtained`,`mark_total`,`comment`,`year`,`labuno`,`labdos`,`labtres`,`labcuatro`,`labcinco`,`labseis`,`labsiete`,`labocho`,`labnueve`,`labtotal`,`final`) values (59,34,7,2,29,5,NULL,100,NULL,'2019-2020',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `mark`(`mark_id`,`student_id`,`subject_id`,`class_id`,`section_id`,`exam_id`,`mark_obtained`,`mark_total`,`comment`,`year`,`labuno`,`labdos`,`labtres`,`labcuatro`,`labcinco`,`labseis`,`labsiete`,`labocho`,`labnueve`,`labtotal`,`final`) values (60,35,7,2,29,5,NULL,100,NULL,'2019-2020',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `mark`(`mark_id`,`student_id`,`subject_id`,`class_id`,`section_id`,`exam_id`,`mark_obtained`,`mark_total`,`comment`,`year`,`labuno`,`labdos`,`labtres`,`labcuatro`,`labcinco`,`labseis`,`labsiete`,`labocho`,`labnueve`,`labtotal`,`final`) values (61,36,7,2,29,5,NULL,100,NULL,'2019-2020',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `mark`(`mark_id`,`student_id`,`subject_id`,`class_id`,`section_id`,`exam_id`,`mark_obtained`,`mark_total`,`comment`,`year`,`labuno`,`labdos`,`labtres`,`labcuatro`,`labcinco`,`labseis`,`labsiete`,`labocho`,`labnueve`,`labtotal`,`final`) values (62,37,7,2,29,5,NULL,100,NULL,'2019-2020',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `mark`(`mark_id`,`student_id`,`subject_id`,`class_id`,`section_id`,`exam_id`,`mark_obtained`,`mark_total`,`comment`,`year`,`labuno`,`labdos`,`labtres`,`labcuatro`,`labcinco`,`labseis`,`labsiete`,`labocho`,`labnueve`,`labtotal`,`final`) values (63,38,7,2,29,5,NULL,100,NULL,'2019-2020',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `marks` */

CREATE TABLE `marks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mark` decimal(10,0) NOT NULL DEFAULT 0,
  `year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `marks` */

/*Table structure for table `mensaje_reporte` */

CREATE TABLE `mensaje_reporte` (
  `news_message_id` int(11) NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `news_id` int(11) NOT NULL,
  `date` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`news_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `mensaje_reporte` */

/*Table structure for table `message` */

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `message_thread_code` longtext NOT NULL,
  `message` longtext NOT NULL,
  `sender` longtext NOT NULL,
  `timestamp` longtext NOT NULL,
  `read_status` int(11) NOT NULL DEFAULT 0 COMMENT '0 unread 1 read',
  `file_name` longtext DEFAULT NULL,
  `reciever` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `message` */

insert  into `message`(`message_id`,`message_thread_code`,`message`,`sender`,`timestamp`,`read_status`,`file_name`,`reciever`) values (6,'e8b713bf2af647c','hi','admin-14','1576127943',0,'','');
insert  into `message`(`message_id`,`message_thread_code`,`message`,`sender`,`timestamp`,`read_status`,`file_name`,`reciever`) values (5,'ddd8f05cbe7e4fa','hii','admin-14','1569405522',0,'AUD-20181110-WA0013 - Copy.mp3','teacher-3');
insert  into `message`(`message_id`,`message_thread_code`,`message`,`sender`,`timestamp`,`read_status`,`file_name`,`reciever`) values (4,'e8b713bf2af647c','hi','admin-14','1566723927',0,'','student-20');
insert  into `message`(`message_id`,`message_thread_code`,`message`,`sender`,`timestamp`,`read_status`,`file_name`,`reciever`) values (7,'e8b713bf2af647c','hi','admin-14','1576127953',0,'','');
insert  into `message`(`message_id`,`message_thread_code`,`message`,`sender`,`timestamp`,`read_status`,`file_name`,`reciever`) values (8,'e8b713bf2af647c','hi','admin-14','1576128827',0,'','');
insert  into `message`(`message_id`,`message_thread_code`,`message`,`sender`,`timestamp`,`read_status`,`file_name`,`reciever`) values (9,'ddd8f05cbe7e4fa','hi','admin-14','1576128865',0,'','');
insert  into `message`(`message_id`,`message_thread_code`,`message`,`sender`,`timestamp`,`read_status`,`file_name`,`reciever`) values (10,'ddd8f05cbe7e4fa','hi','admin-14','1576128900',0,'Survey No Service Code.txt','');

/*Table structure for table `message_thread` */

CREATE TABLE `message_thread` (
  `message_thread_id` int(11) NOT NULL AUTO_INCREMENT,
  `message_thread_code` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sender` longtext COLLATE utf8_unicode_ci NOT NULL,
  `reciever` longtext COLLATE utf8_unicode_ci NOT NULL,
  `last_message_timestamp` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`message_thread_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `message_thread` */

insert  into `message_thread`(`message_thread_id`,`message_thread_code`,`sender`,`reciever`,`last_message_timestamp`) values (1,'bc1b34f08fcbc19','admin-1','teacher-1',NULL);
insert  into `message_thread`(`message_thread_id`,`message_thread_code`,`sender`,`reciever`,`last_message_timestamp`) values (2,'923df68fd1936a7','admin-1','student-1',NULL);
insert  into `message_thread`(`message_thread_id`,`message_thread_code`,`sender`,`reciever`,`last_message_timestamp`) values (3,'4fac927357a181f','admin-1','student-3',NULL);
insert  into `message_thread`(`message_thread_id`,`message_thread_code`,`sender`,`reciever`,`last_message_timestamp`) values (4,'e8b713bf2af647c','admin-14','student-20',NULL);
insert  into `message_thread`(`message_thread_id`,`message_thread_code`,`sender`,`reciever`,`last_message_timestamp`) values (5,'ddd8f05cbe7e4fa','admin-14','teacher-3',NULL);

/*Table structure for table `news` */

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_code` longtext COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `news_status` int(11) NOT NULL DEFAULT 1 COMMENT '1 for running, 0 for archived',
  `date` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `users` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `from_` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to_` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `news` */

insert  into `news`(`news_id`,`news_code`,`title`,`description`,`news_status`,`date`,`users`,`type`,`from_`,`to_`) values (9,'e792d937b6','tomorrow is annual day','dance program by teachers',1,'30, Aug 2019',NULL,'news',NULL,NULL);
insert  into `news`(`news_id`,`news_code`,`title`,`description`,`news_status`,`date`,`users`,`type`,`from_`,`to_`) values (10,'3aa15caa60','school magic show','come in fancy dress',1,'25, Sep 2019',NULL,'news',NULL,NULL);
insert  into `news`(`news_id`,`news_code`,`title`,`description`,`news_status`,`date`,`users`,`type`,`from_`,`to_`) values (11,'6f42a1936c','school magic show','come in fancy dress',1,'25, Sep 2019',NULL,'news',NULL,NULL);
insert  into `news`(`news_id`,`news_code`,`title`,`description`,`news_status`,`date`,`users`,`type`,`from_`,`to_`) values (8,'6851d3276c','krishna ashtami','24 is holiday under account of Krishan ashtami',1,'20, Aug 2019',NULL,'news',NULL,NULL);

/*Table structure for table `news_teacher` */

CREATE TABLE `news_teacher` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `notice_status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `news_teacher` */

/*Table structure for table `notice_message` */

CREATE TABLE `notice_message` (
  `notice_message_id` int(11) NOT NULL AUTO_INCREMENT,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `notice_id` int(11) NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `message_file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`notice_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `notice_message` */

/*Table structure for table `notification` */

CREATE TABLE `notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_type` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `time` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `notify` varchar(500) DEFAULT NULL,
  `original_id` int(11) DEFAULT NULL,
  `original_type` varchar(200) DEFAULT NULL,
  `url` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=latin1;

/*Data for the table `notification` */

insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (98,14,'student','16 Aug, 2019','03:50 PM',0,'<strong>Mr. Admin:</strong>, You have created a new homework with the title<b>write something about article 370</b>',1,'admin','student/homeworkroom/a8baaa16e8/',NULL);
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (99,15,'student','16 Aug, 2019','03:50 PM',0,'<strong>Mr. Admin:</strong>, You have created a new homework with the title<b>write something about article 370</b>',1,'admin','student/homeworkroom/a8baaa16e8/',NULL);
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (100,14,'student','16 Aug, 2019','03:52 PM',0,'<strong>Mr. Admin:</strong>, You have created a new homework with the title<b>Charts</b>',1,'admin','student/homeworkroom/c6afb3f998/',NULL);
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (101,15,'student','16 Aug, 2019','03:52 PM',0,'<strong>Mr. Admin:</strong>, You have created a new homework with the title<b>Charts</b>',1,'admin','student/homeworkroom/c6afb3f998/',NULL);
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (102,14,'student','16 Aug, 2019','04:04 PM',0,'<strong>Mr. Admin:</strong>, You have created a new homework with the title<b>Title</b>',1,'admin','student/homeworkroom/af069062b6/',NULL);
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (103,15,'student','16 Aug, 2019','04:04 PM',0,'<strong>Mr. Admin:</strong>, You have created a new homework with the title<b>Title</b>',1,'admin','student/homeworkroom/af069062b6/',NULL);
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (104,1,'admin','20 Aug, 2019','12:50 PM',0,'<strong>News</strong> You have received a new news with title <b>krishna ashtami</b>',0,'admin','admin/read/6851d3276c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (105,14,'admin','20 Aug, 2019','12:50 PM',1,'<strong>News</strong> You have received a new news with title <b>krishna ashtami</b>',0,'admin','admin/read/6851d3276c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (106,14,'student','20 Aug, 2019','12:50 PM',0,'<strong>News</strong> You have received a new news with title <b>krishna ashtami</b>',0,'admin','student/read/6851d3276c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (107,15,'student','20 Aug, 2019','12:50 PM',0,'<strong>News</strong> You have received a new news with title <b>krishna ashtami</b>',0,'admin','student/read/6851d3276c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (108,16,'student','20 Aug, 2019','12:50 PM',0,'<strong>News</strong> You have received a new news with title <b>krishna ashtami</b>',0,'admin','student/read/6851d3276c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (109,17,'student','20 Aug, 2019','12:50 PM',0,'<strong>News</strong> You have received a new news with title <b>krishna ashtami</b>',0,'admin','student/read/6851d3276c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (110,18,'student','20 Aug, 2019','12:50 PM',0,'<strong>News</strong> You have received a new news with title <b>krishna ashtami</b>',0,'admin','student/read/6851d3276c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (111,15,'parent','20 Aug, 2019','12:50 PM',0,'<strong>News</strong> You have received a new news with title <b>krishna ashtami</b>',0,'admin','parents/read/6851d3276c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (112,14,'parent','20 Aug, 2019','12:50 PM',0,'<strong>News</strong> You have received a new news with title <b>krishna ashtami</b>',0,'admin','parents/read/6851d3276c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (113,13,'parent','20 Aug, 2019','12:50 PM',0,'<strong>News</strong> You have received a new news with title <b>krishna ashtami</b>',0,'admin','parents/read/6851d3276c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (114,3,'teacher','20 Aug, 2019','12:50 PM',0,'<strong>News</strong> You have received a new news with title <b>krishna ashtami</b>',0,'admin','teacher/read/6851d3276c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (115,4,'teacher','20 Aug, 2019','12:50 PM',0,'<strong>News</strong> You have received a new news with title <b>krishna ashtami</b>',0,'admin','teacher/read/6851d3276c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (116,5,'teacher','20 Aug, 2019','12:50 PM',0,'<strong>News</strong> You have received a new news with title <b>krishna ashtami</b>',0,'admin','teacher/read/6851d3276c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (117,14,'student','21 Aug, 2019','05:26 PM',0,'<strong>G.Anuradha:</strong>, You have created a new homework with the title: <b>gffdgfghjg</b>',3,'teacher','student/homeworkroom/09d48e00cb/',NULL);
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (118,15,'student','21 Aug, 2019','05:26 PM',0,'<strong>G.Anuradha:</strong>, You have created a new homework with the title: <b>gffdgfghjg</b>',3,'teacher','student/homeworkroom/09d48e00cb/',NULL);
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (119,14,'student','22 Aug, 2019','07:42 PM',0,'<strong>Admin:</strong>, You have created a new homework with the title<b>Write Notes</b>',14,'admin','student/homeworkroom/ad5f282657/',NULL);
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (120,15,'student','22 Aug, 2019','07:42 PM',0,'<strong>Admin:</strong>, You have created a new homework with the title<b>Write Notes</b>',14,'admin','student/homeworkroom/ad5f282657/',NULL);
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (121,20,'student','25 Aug, 2019','02:35 PM',0,'<strong>Admin</strong> has sent you a new message',14,'admin','student/message/message_read/e8b713bf2af647c/',NULL);
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (122,20,'student','27 Aug, 2019','05:17 PM',0,'<strong>Admin</strong> has added a new book to the library for <b>X</b>',14,'admin','student/library/',NULL);
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (123,21,'student','27 Aug, 2019','05:17 PM',0,'<strong>Admin</strong> has added a new book to the library for <b>X</b>',14,'admin','student/library/',NULL);
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (124,22,'student','27 Aug, 2019','05:17 PM',0,'<strong>Admin</strong> has added a new book to the library for <b>X</b>',14,'admin','student/library/',NULL);
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (125,20,'student','30 Aug, 2019','04:42 PM',0,'<strong>Admin:</strong>, added a new online exam with the title<b>Telugu</b>',14,'admin','student/online_exams/',NULL);
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (126,21,'student','30 Aug, 2019','04:42 PM',0,'<strong>Admin:</strong>, added a new online exam with the title<b>Telugu</b>',14,'admin','student/online_exams/',NULL);
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (127,22,'student','30 Aug, 2019','04:42 PM',0,'<strong>Admin:</strong>, added a new online exam with the title<b>Telugu</b>',14,'admin','student/online_exams/',NULL);
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (128,20,'student','30 Aug, 2019','05:27 PM',0,'<strong>Admin:</strong>, added a new online exam with the title<b>1st unit</b>',14,'admin','student/online_exams/',NULL);
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (129,21,'student','30 Aug, 2019','05:27 PM',0,'<strong>Admin:</strong>, added a new online exam with the title<b>1st unit</b>',14,'admin','student/online_exams/',NULL);
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (130,22,'student','30 Aug, 2019','05:27 PM',0,'<strong>Admin:</strong>, added a new online exam with the title<b>1st unit</b>',14,'admin','student/online_exams/',NULL);
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (131,14,'admin','30 Aug, 2019','05:38 PM',0,'<strong>adarsh reddy</strong> has finished the exam<b>1st unit</b>',20,'student','admin/exam_results/5f0cf4da0e/',NULL);
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (133,15,'student','30 Aug, 2019','05:40 PM',0,'<strong>News</strong> You have received a new news with title <b>tomorrow is annual day</b>',0,'admin','student/read/e792d937b6/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (134,16,'student','30 Aug, 2019','05:40 PM',0,'<strong>News</strong> You have received a new news with title <b>tomorrow is annual day</b>',0,'admin','student/read/e792d937b6/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (135,17,'student','30 Aug, 2019','05:40 PM',0,'<strong>News</strong> You have received a new news with title <b>tomorrow is annual day</b>',0,'admin','student/read/e792d937b6/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (136,19,'student','30 Aug, 2019','05:40 PM',0,'<strong>News</strong> You have received a new news with title <b>tomorrow is annual day</b>',0,'admin','student/read/e792d937b6/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (137,20,'student','30 Aug, 2019','05:40 PM',0,'<strong>News</strong> You have received a new news with title <b>tomorrow is annual day</b>',0,'admin','student/read/e792d937b6/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (138,21,'student','30 Aug, 2019','05:40 PM',0,'<strong>News</strong> You have received a new news with title <b>tomorrow is annual day</b>',0,'admin','student/read/e792d937b6/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (139,22,'student','30 Aug, 2019','05:40 PM',0,'<strong>News</strong> You have received a new news with title <b>tomorrow is annual day</b>',0,'admin','student/read/e792d937b6/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (140,14,'parent','30 Aug, 2019','05:40 PM',0,'<strong>News</strong> You have received a new news with title <b>tomorrow is annual day</b>',0,'admin','parents/read/e792d937b6/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (141,13,'parent','30 Aug, 2019','05:40 PM',0,'<strong>News</strong> You have received a new news with title <b>tomorrow is annual day</b>',0,'admin','parents/read/e792d937b6/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (142,3,'teacher','30 Aug, 2019','05:40 PM',0,'<strong>News</strong> You have received a new news with title <b>tomorrow is annual day</b>',0,'admin','teacher/read/e792d937b6/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (143,4,'teacher','30 Aug, 2019','05:40 PM',0,'<strong>News</strong> You have received a new news with title <b>tomorrow is annual day</b>',0,'admin','teacher/read/e792d937b6/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (144,5,'teacher','30 Aug, 2019','05:40 PM',0,'<strong>News</strong> You have received a new news with title <b>tomorrow is annual day</b>',0,'admin','teacher/read/e792d937b6/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (145,15,'student','06 Sep, 2019','03:45 PM',0,'<strong>G.Anuradha</strong> has updated the marks of <b>Telugu</b>',3,'teacher','student/subject_marks/My0xNS03/',NULL);
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (146,15,'student','06 Sep, 2019','03:45 PM',0,'<strong>G.Anuradha</strong> has updated the marks of <b>Telugu</b>',3,'teacher','student/subject_marks/My0xNS03/',NULL);
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (147,15,'student','06 Sep, 2019','03:47 PM',0,'<strong>G.Anuradha</strong> has updated the marks of <b>Telugu</b>',3,'teacher','student/subject_marks/My0xNS03/',NULL);
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (148,3,'teacher','25 Sep, 2019','03:28 PM',0,'<strong>Admin</strong> has sent you a new message',14,'admin','teacher/message/message_read/ddd8f05cbe7e4fa/',NULL);
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (150,15,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (151,16,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (152,17,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (153,19,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (154,20,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (155,23,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (156,24,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (157,25,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (158,26,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (159,27,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (160,28,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (161,29,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (162,30,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (163,31,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (164,32,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (165,33,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (166,34,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (167,35,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (168,36,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (169,37,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (170,38,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (171,39,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (172,40,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (173,41,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (174,42,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (175,19,'parent','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','parents/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (176,18,'parent','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','parents/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (177,16,'parent','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','parents/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (178,17,'parent','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','parents/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (179,14,'parent','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','parents/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (180,13,'parent','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','parents/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (181,20,'parent','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','parents/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (182,21,'parent','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','parents/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (183,22,'parent','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','parents/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (184,23,'parent','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','parents/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (185,24,'parent','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','parents/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (186,25,'parent','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','parents/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (187,26,'parent','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','parents/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (188,3,'teacher','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','teacher/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (189,4,'teacher','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','teacher/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (190,5,'teacher','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','teacher/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (191,6,'teacher','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','teacher/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (192,7,'teacher','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','teacher/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (193,8,'teacher','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','teacher/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (194,9,'teacher','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','teacher/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (195,10,'teacher','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','teacher/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (196,12,'teacher','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','teacher/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (197,13,'teacher','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','teacher/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (198,14,'teacher','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','teacher/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (199,15,'teacher','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','teacher/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (200,16,'teacher','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','teacher/read/3aa15caa60/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (202,15,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (203,16,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (204,17,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (205,19,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (206,20,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (207,23,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (208,24,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (209,25,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (210,26,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (211,27,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (212,28,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (213,29,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (214,30,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (215,31,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (216,32,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (217,33,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (218,34,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (219,35,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (220,36,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (221,37,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (222,38,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (223,39,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (224,40,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (225,41,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (226,42,'student','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','student/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (227,19,'parent','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','parents/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (228,18,'parent','25 Sep, 2019','04:04 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','parents/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (229,16,'parent','25 Sep, 2019','04:05 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','parents/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (230,17,'parent','25 Sep, 2019','04:05 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','parents/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (231,14,'parent','25 Sep, 2019','04:05 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','parents/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (232,13,'parent','25 Sep, 2019','04:05 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','parents/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (233,20,'parent','25 Sep, 2019','04:05 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','parents/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (234,21,'parent','25 Sep, 2019','04:05 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','parents/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (235,22,'parent','25 Sep, 2019','04:05 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','parents/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (236,23,'parent','25 Sep, 2019','04:05 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','parents/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (237,24,'parent','25 Sep, 2019','04:05 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','parents/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (238,25,'parent','25 Sep, 2019','04:05 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','parents/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (239,26,'parent','25 Sep, 2019','04:05 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','parents/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (240,3,'teacher','25 Sep, 2019','04:05 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','teacher/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (241,4,'teacher','25 Sep, 2019','04:05 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','teacher/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (242,5,'teacher','25 Sep, 2019','04:05 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','teacher/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (243,6,'teacher','25 Sep, 2019','04:05 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','teacher/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (244,7,'teacher','25 Sep, 2019','04:05 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','teacher/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (245,8,'teacher','25 Sep, 2019','04:05 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','teacher/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (246,9,'teacher','25 Sep, 2019','04:05 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','teacher/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (247,10,'teacher','25 Sep, 2019','04:05 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','teacher/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (248,12,'teacher','25 Sep, 2019','04:05 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','teacher/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (249,13,'teacher','25 Sep, 2019','04:05 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','teacher/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (250,14,'teacher','25 Sep, 2019','04:05 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','teacher/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (251,15,'teacher','25 Sep, 2019','04:05 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','teacher/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (252,16,'teacher','25 Sep, 2019','04:05 PM',0,'<strong>News</strong> You have received a new news with title <b>school magic show</b>',0,'admin','teacher/read/6f42a1936c/','news');
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (253,15,'student','08 Dec, 2019','01:43 PM',0,'<strong>Admin:</strong> You have uploaded study material to your portal',14,'admin','student/study_material/',NULL);
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (254,28,'student','08 Dec, 2019','01:43 PM',0,'<strong>Admin:</strong> You have uploaded study material to your portal',14,'admin','student/study_material/',NULL);
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (255,34,'student','08 Dec, 2019','01:43 PM',0,'<strong>Admin:</strong> You have uploaded study material to your portal',14,'admin','student/study_material/',NULL);
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (256,35,'student','08 Dec, 2019','01:43 PM',0,'<strong>Admin:</strong> You have uploaded study material to your portal',14,'admin','student/study_material/',NULL);
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (257,36,'student','08 Dec, 2019','01:43 PM',0,'<strong>Admin:</strong> You have uploaded study material to your portal',14,'admin','student/study_material/',NULL);
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (258,37,'student','08 Dec, 2019','01:43 PM',0,'<strong>Admin:</strong> You have uploaded study material to your portal',14,'admin','student/study_material/',NULL);
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (259,38,'student','08 Dec, 2019','01:43 PM',0,'<strong>Admin:</strong> You have uploaded study material to your portal',14,'admin','student/study_material/',NULL);
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (260,34,'student','06 Jan, 2020','05:22 PM',0,'<strong>Admin:</strong>, added a new online exam with the title<b>Imaging Characteristics of Esophageal Cancer on Multidetector Computed Tomography </b>',14,'admin','student/online_exams/',NULL);
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (261,35,'student','06 Jan, 2020','05:22 PM',0,'<strong>Admin:</strong>, added a new online exam with the title<b>Imaging Characteristics of Esophageal Cancer on Multidetector Computed Tomography </b>',14,'admin','student/online_exams/',NULL);
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (262,36,'student','06 Jan, 2020','05:22 PM',0,'<strong>Admin:</strong>, added a new online exam with the title<b>Imaging Characteristics of Esophageal Cancer on Multidetector Computed Tomography </b>',14,'admin','student/online_exams/',NULL);
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (263,37,'student','06 Jan, 2020','05:22 PM',0,'<strong>Admin:</strong>, added a new online exam with the title<b>Imaging Characteristics of Esophageal Cancer on Multidetector Computed Tomography </b>',14,'admin','student/online_exams/',NULL);
insert  into `notification`(`id`,`user_id`,`user_type`,`date`,`time`,`status`,`notify`,`original_id`,`original_type`,`url`,`type`) values (264,38,'student','06 Jan, 2020','05:22 PM',0,'<strong>Admin:</strong>, added a new online exam with the title<b>Imaging Characteristics of Esophageal Cancer on Multidetector Computed Tomography </b>',14,'admin','student/online_exams/',NULL);

/*Table structure for table `online_users` */

CREATE TABLE `online_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session` longtext NOT NULL,
  `time` longtext NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `type` longtext NOT NULL,
  `gp` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=947 DEFAULT CHARSET=latin1;

/*Data for the table `online_users` */

insert  into `online_users`(`id`,`session`,`time`,`id_usuario`,`type`,`gp`) values (946,'phhaabm5h0jkem39dv7codjdja','1582664048',4,'teacher','4-teacher');

/*Table structure for table `parent` */

CREATE TABLE `parent` (
  `parent_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `profession` longtext COLLATE utf8_unicode_ci NOT NULL,
  `username` longtext COLLATE utf8_unicode_ci NOT NULL,
  `fb_token` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_id` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_photo` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_name` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `g_oauth` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `g_fname` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `femail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `g_lname` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `g_picture` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `g_email` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `parent` */

insert  into `parent`(`parent_id`,`name`,`email`,`password`,`phone`,`address`,`profession`,`username`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (19,'g prakash','jeevan.gj.007@gmail.com','805eb4127899e76fe79c08b532b5f77febce47f2','7780405087','main road laxmipuram','doctor','jeevan.gj.007@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `parent`(`parent_id`,`name`,`email`,`password`,`phone`,`address`,`profession`,`username`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (18,'gandi prasad ','gandi.nikhil666@gmail.com','3583c4e58af439b947bbad68806832a21b5f3c24','7673981398','main road godavarikani','sinagreni employe','gandi.nikhil666@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `parent`(`parent_id`,`name`,`email`,`password`,`phone`,`address`,`profession`,`username`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (16,'ranga reddy','adarshreddy115@gmail.com','cc40f6076084db6fc741088b76ed75e224dac89c','9966577035','cherla road bhadrachalam','business','adarshreddy115@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `parent`(`parent_id`,`name`,`email`,`password`,`phone`,`address`,`profession`,`username`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (17,'anand paul k','prabhukolapudi1@gmail.com','736b2516ee1f87d7ca3bad9d6c2a229cccf2d397','9398026774','itda road bhadrachalam','business','prabhukolapudi1@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `parent`(`parent_id`,`name`,`email`,`password`,`phone`,`address`,`profession`,`username`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (14,'Test N','naiduoo@gmail.com','bb1af552c85e8dd44234b51ca20429d1c850dfe6','7989652554','update your address','profession','username',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `parent`(`parent_id`,`name`,`email`,`password`,`phone`,`address`,`profession`,`username`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (13,'Naidu','naidu@gmail.com','bb1af552c85e8dd44234b51ca20429d1c850dfe6','7981623150','b colony ktps','ktps employe','naidu@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `parent`(`parent_id`,`name`,`email`,`password`,`phone`,`address`,`profession`,`username`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (20,'k shyam sunder','kumarbabu.mj008@gmail.com','42d4c8dd3eecdcec879864e951a277bbfb4db907',' 8008341260','medical colony bcm','dancer','kumarbabu.mj008@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `parent`(`parent_id`,`name`,`email`,`password`,`phone`,`address`,`profession`,`username`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (21,'prasad gamdi','gandi.nikhil666@gmail.com','f7c3bc1d808e04732adf679965ccc34ca7ae3441','7673981398','main road godavarikani','sinagreni employe','gandi.nikhil666@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `parent`(`parent_id`,`name`,`email`,`password`,`phone`,`address`,`profession`,`username`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (22,'prasad gamdi','gandi.nikhil666@gmail.com','f7c3bc1d808e04732adf679965ccc34ca7ae3441','7673981398','main road godavarikani','sinagreni employe','gandi.nikhil666@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `parent`(`parent_id`,`name`,`email`,`password`,`phone`,`address`,`profession`,`username`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (23,'AJAY KUMAR','ajaykumar@gmail.com','f7c3bc1d808e04732adf679965ccc34ca7ae3441','9966577035','mandamari','teacher','ajay kumar@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `parent`(`parent_id`,`name`,`email`,`password`,`phone`,`address`,`profession`,`username`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (24,'babu rao','baburao@gmail.com','7d54f8b3513bca2011b0e6b102749f0709ffbe0a','9966577034','mandamari market','sinagreni employe','baburao@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `parent`(`parent_id`,`name`,`email`,`password`,`phone`,`address`,`profession`,`username`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (25,'ramu','ramuellabelli@gmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b','7673981397','mandamari market','sinagreni employe','ramuellabela@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `parent`(`parent_id`,`name`,`email`,`password`,`phone`,`address`,`profession`,`username`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (26,'ganesh gandi','gandi.ganesh@gmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b','8523812929','karimnagr','business','gandi.ganesh@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `payment` */

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_category_id` int(11) DEFAULT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `payment_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `method` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `amount` longtext COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci NOT NULL,
  `year` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `month` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `payment` */

insert  into `payment`(`payment_id`,`expense_category_id`,`title`,`payment_type`,`invoice_id`,`student_id`,`method`,`description`,`amount`,`timestamp`,`year`,`month`) values (10,1,'Teacher Payments','expense',NULL,NULL,'1','Teacher Salary Nov','4500','1543125600','2017-2018','Nov');
insert  into `payment`(`payment_id`,`expense_category_id`,`title`,`payment_type`,`invoice_id`,`student_id`,`method`,`description`,`amount`,`timestamp`,`year`,`month`) values (7,NULL,'Payment','income',7,1,'1','Please make your payment','150','1543125600','2017-2018','Nov');
insert  into `payment`(`payment_id`,`expense_category_id`,`title`,`payment_type`,`invoice_id`,`student_id`,`method`,`description`,`amount`,`timestamp`,`year`,`month`) values (8,NULL,'Payment','income',8,2,'1','Please make your payment','150','1543125600','2017-2018','Nov');
insert  into `payment`(`payment_id`,`expense_category_id`,`title`,`payment_type`,`invoice_id`,`student_id`,`method`,`description`,`amount`,`timestamp`,`year`,`month`) values (9,NULL,'Payment','income',9,3,'1','Please make your payment','150','1543125600','2017-2018','Nov');
insert  into `payment`(`payment_id`,`expense_category_id`,`title`,`payment_type`,`invoice_id`,`student_id`,`method`,`description`,`amount`,`timestamp`,`year`,`month`) values (11,NULL,'Please make Payment','income',10,3,'2','Hello ','150','1543125600','2017-2018','Nov');
insert  into `payment`(`payment_id`,`expense_category_id`,`title`,`payment_type`,`invoice_id`,`student_id`,`method`,`description`,`amount`,`timestamp`,`year`,`month`) values (12,NULL,'Please make Payment','income',11,3,'3','Hello ','150','1543125600','2017-2018','Nov');
insert  into `payment`(`payment_id`,`expense_category_id`,`title`,`payment_type`,`invoice_id`,`student_id`,`method`,`description`,`amount`,`timestamp`,`year`,`month`) values (14,NULL,'fee','income',13,20,'1','gg','500','1566844200','2019-2020','Aug');
insert  into `payment`(`payment_id`,`expense_category_id`,`title`,`payment_type`,`invoice_id`,`student_id`,`method`,`description`,`amount`,`timestamp`,`year`,`month`) values (15,NULL,'dee','income',14,20,'1','vnvn','2000','1567708200','2019-2020','Sep');
insert  into `payment`(`payment_id`,`expense_category_id`,`title`,`payment_type`,`invoice_id`,`student_id`,`method`,`description`,`amount`,`timestamp`,`year`,`month`) values (16,NULL,'1','income',15,28,'1','1','523','1576089000','2019-2020','Dec');

/*Table structure for table `pending_users` */

CREATE TABLE `pending_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `username` longtext NOT NULL,
  `email` longtext NOT NULL,
  `phone` longtext NOT NULL,
  `address` longtext NOT NULL,
  `birthday` longtext DEFAULT NULL,
  `password` longtext NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `profession` longtext DEFAULT NULL,
  `sex` longtext DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `type` varchar(10) NOT NULL,
  `roll` longtext DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `pending_users` */

/*Table structure for table `poll_response` */

CREATE TABLE `poll_response` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poll_code` varchar(100) NOT NULL,
  `answer` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `poll_response` */

/*Table structure for table `polls` */

CREATE TABLE `polls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `options` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  `poll_code` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `polls` */

insert  into `polls`(`id`,`question`,`options`,`date`,`user`,`poll_code`,`status`) values (2,'feedback on anuradha mam','good,avg','25 Sep, 2019','parent','62f37f9',1);

/*Table structure for table `questions` */

CREATE TABLE `questions` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_id` int(11) NOT NULL,
  `question` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `optiona` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `optionb` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `optionc` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `optiond` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `correctanswer` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `marks` int(11) NOT NULL,
  `exam_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `questions` */

insert  into `questions`(`question_id`,`exam_id`,`question`,`optiona`,`optionb`,`optionc`,`optiond`,`correctanswer`,`marks`,`exam_code`) values (1,1,'Question 1','A','B','C','All','A',1,'9785b6a953');
insert  into `questions`(`question_id`,`exam_id`,`question`,`optiona`,`optionb`,`optionc`,`optiond`,`correctanswer`,`marks`,`exam_code`) values (2,1,'Question 2','1','2','3','4','1',1,'9785b6a953');
insert  into `questions`(`question_id`,`exam_id`,`question`,`optiona`,`optionb`,`optionc`,`optiond`,`correctanswer`,`marks`,`exam_code`) values (3,1,'what is your name','kumar','adarsh','sunny','guru','adarsh',1,'9785b6a953');
insert  into `questions`(`question_id`,`exam_id`,`question`,`optiona`,`optionb`,`optionc`,`optiond`,`correctanswer`,`marks`,`exam_code`) values (4,2,'who are you','kumar','adarsh','sunny','guru','sunny',1,'5f0cf4da0e');
insert  into `questions`(`question_id`,`exam_id`,`question`,`optiona`,`optionb`,`optionc`,`optiond`,`correctanswer`,`marks`,`exam_code`) values (5,2,'who is your father','kumar','adarsh','sunny','guru','guru',2,'5f0cf4da0e');

/*Table structure for table `report_response` */

CREATE TABLE `report_response` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `message` longtext NOT NULL,
  `date` varchar(600) NOT NULL,
  `report_code` varchar(100) NOT NULL,
  `sender_type` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `report_response` */

/*Table structure for table `reporte_alumnos` */

CREATE TABLE `reporte_alumnos` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `report_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `priority` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) DEFAULT 0,
  `file` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reporte_alumnos` */

/*Table structure for table `reporte_mensaje` */

CREATE TABLE `reporte_mensaje` (
  `report_message_id` int(11) NOT NULL AUTO_INCREMENT,
  `report_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sender_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sender_id` int(11) NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`report_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reporte_mensaje` */

/*Table structure for table `reports` */

CREATE TABLE `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `user_id` varchar(600) NOT NULL,
  `title` longtext NOT NULL,
  `description` longtext NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `priority` varchar(100) NOT NULL,
  `file` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `date` varchar(600) NOT NULL,
  `code` varchar(600) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `reports` */

insert  into `reports`(`id`,`student_id`,`user_id`,`title`,`description`,`class_id`,`section_id`,`priority`,`file`,`status`,`date`,`code`) values (1,35,'admin-14','1','123',2,29,'media','',0,'12 Dec, 2019','6a267cc');

/*Table structure for table `request` */

CREATE TABLE `request` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL,
  `start_date` longtext COLLATE utf8_unicode_ci NOT NULL,
  `end_date` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 = pending, 1 = accepted, 2 = rejected',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `file` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `request` */

/*Table structure for table `section` */

CREATE TABLE `section` (
  `section_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `section` */

insert  into `section`(`section_id`,`name`,`class_id`,`teacher_id`) values (6,'B',3,8);
insert  into `section`(`section_id`,`name`,`class_id`,`teacher_id`) values (7,'A',3,3);
insert  into `section`(`section_id`,`name`,`class_id`,`teacher_id`) values (16,'A',4,5);
insert  into `section`(`section_id`,`name`,`class_id`,`teacher_id`) values (17,'B',4,3);
insert  into `section`(`section_id`,`name`,`class_id`,`teacher_id`) values (19,'A',5,3);
insert  into `section`(`section_id`,`name`,`class_id`,`teacher_id`) values (21,'B',6,3);
insert  into `section`(`section_id`,`name`,`class_id`,`teacher_id`) values (22,'A',7,3);
insert  into `section`(`section_id`,`name`,`class_id`,`teacher_id`) values (23,'A',8,15);
insert  into `section`(`section_id`,`name`,`class_id`,`teacher_id`) values (24,'A',9,3);
insert  into `section`(`section_id`,`name`,`class_id`,`teacher_id`) values (25,'A',10,3);
insert  into `section`(`section_id`,`name`,`class_id`,`teacher_id`) values (26,'A',11,3);
insert  into `section`(`section_id`,`name`,`class_id`,`teacher_id`) values (28,'B',11,5);
insert  into `section`(`section_id`,`name`,`class_id`,`teacher_id`) values (29,'A',2,6);
insert  into `section`(`section_id`,`name`,`class_id`,`teacher_id`) values (30,'B',2,7);
insert  into `section`(`section_id`,`name`,`class_id`,`teacher_id`) values (31,'A',6,8);
insert  into `section`(`section_id`,`name`,`class_id`,`teacher_id`) values (32,'B',6,14);
insert  into `section`(`section_id`,`name`,`class_id`,`teacher_id`) values (34,'A',12,NULL);

/*Table structure for table `settings` */

CREATE TABLE `settings` (
  `settings_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`settings_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

/*Data for the table `settings` */

insert  into `settings`(`settings_id`,`type`,`description`) values (1,'system_name','School');
insert  into `settings`(`settings_id`,`type`,`description`) values (2,'system_title','Management');
insert  into `settings`(`settings_id`,`type`,`description`) values (3,'address','Visakhapatnam');
insert  into `settings`(`settings_id`,`type`,`description`) values (4,'phone','(+502) 7777 6666');
insert  into `settings`(`settings_id`,`type`,`description`) values (5,'paypal_email','');
insert  into `settings`(`settings_id`,`type`,`description`) values (6,'currency','Rupee');
insert  into `settings`(`settings_id`,`type`,`description`) values (7,'system_email','info@schoolmail.com');
insert  into `settings`(`settings_id`,`type`,`description`) values (20,'rtl',NULL);
insert  into `settings`(`settings_id`,`type`,`description`) values (11,'language','english');
insert  into `settings`(`settings_id`,`type`,`description`) values (13,'minimark','50');
insert  into `settings`(`settings_id`,`type`,`description`) values (16,'skin','yellow');
insert  into `settings`(`settings_id`,`type`,`description`) values (18,'slider',NULL);
insert  into `settings`(`settings_id`,`type`,`description`) values (21,'running_year','2019-2020');
insert  into `settings`(`settings_id`,`type`,`description`) values (22,'facebook','https://facebook.com');
insert  into `settings`(`settings_id`,`type`,`description`) values (23,'twitter','https://www.twitter.com');
insert  into `settings`(`settings_id`,`type`,`description`) values (24,'instagram','https://www.instagram.com');
insert  into `settings`(`settings_id`,`type`,`description`) values (25,'youtube','https://youtube.com');
insert  into `settings`(`settings_id`,`type`,`description`) values (26,'sms_status','android');
insert  into `settings`(`settings_id`,`type`,`description`) values (27,'android_password',NULL);
insert  into `settings`(`settings_id`,`type`,`description`) values (28,'android_email','104824');
insert  into `settings`(`settings_id`,`type`,`description`) values (29,'android_device','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJhZG1pbiIsImlhdCI6MTU0MzE5NzA5NywiZXhwIjo0MTAyNDQ0ODAwLCJ1aWQiOjM3MTQ0LCJyb2xlcyI6WyJST0xFX1VTRVIiXX0.HdM2ikya2Be0zX0nSx2qxqaQX-fTLhACekphVHCCXOg');
insert  into `settings`(`settings_id`,`type`,`description`) values (30,'buyer','qwerty');
insert  into `settings`(`settings_id`,`type`,`description`) values (31,'purchase_code','erververv');
insert  into `settings`(`settings_id`,`type`,`description`) values (32,'clickatell_username','');
insert  into `settings`(`settings_id`,`type`,`description`) values (33,'clickatell_password','');
insert  into `settings`(`settings_id`,`type`,`description`) values (34,'clickatell_api','');
insert  into `settings`(`settings_id`,`type`,`description`) values (35,'twilio_account','');
insert  into `settings`(`settings_id`,`type`,`description`) values (36,'authentication_token','');
insert  into `settings`(`settings_id`,`type`,`description`) values (37,'registered_phone','');
insert  into `settings`(`settings_id`,`type`,`description`) values (38,'absences','1');
insert  into `settings`(`settings_id`,`type`,`description`) values (39,'students_reports','1');
insert  into `settings`(`settings_id`,`type`,`description`) values (40,'p_new_invoice','1');
insert  into `settings`(`settings_id`,`type`,`description`) values (41,'s_new_invoice','1');
insert  into `settings`(`settings_id`,`type`,`description`) values (42,'new_homework',NULL);
insert  into `settings`(`settings_id`,`type`,`description`) values (43,'register','1');
insert  into `settings`(`settings_id`,`type`,`description`) values (44,'facebook_sync','');
insert  into `settings`(`settings_id`,`type`,`description`) values (45,'google_sync','\r\n');
insert  into `settings`(`settings_id`,`type`,`description`) values (46,'facebook_login','');
insert  into `settings`(`settings_id`,`type`,`description`) values (47,'google_login','');
insert  into `settings`(`settings_id`,`type`,`description`) values (48,'social_login','1');

/*Table structure for table `slider` */

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `slider_path` varchar(100) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Active',
  `created_on` datetime DEFAULT current_timestamp(),
  `created_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `slider` */

insert  into `slider`(`slider_id`,`slider_path`,`display_order`,`status`,`created_on`,`created_by`) values (1,'1.jpg',1,'Active','2019-07-20 14:20:38','dr');
insert  into `slider`(`slider_id`,`slider_path`,`display_order`,`status`,`created_on`,`created_by`) values (2,'2.jpg',2,'Active','2019-07-20 14:20:47','dr');
insert  into `slider`(`slider_id`,`slider_path`,`display_order`,`status`,`created_on`,`created_by`) values (3,'3.jpg',3,'Active','2019-07-20 14:21:04','dr');
insert  into `slider`(`slider_id`,`slider_path`,`display_order`,`status`,`created_on`,`created_by`) values (4,'4.jpg',4,'Active','2019-07-20 14:20:38','dr');
insert  into `slider`(`slider_id`,`slider_path`,`display_order`,`status`,`created_on`,`created_by`) values (5,'5.png',5,'Active','2019-07-20 14:20:38','dr');

/*Table structure for table `student` */

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `dormitory_id` int(11) DEFAULT NULL,
  `transport_id` int(11) DEFAULT NULL,
  `student_session` int(11) NOT NULL DEFAULT 1,
  `username` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext COLLATE utf8_unicode_ci NOT NULL,
  `board` int(11) DEFAULT 0,
  `fb_token` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_id` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_photo` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_name` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `g_oauth` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `g_fname` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `femail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `g_lname` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `g_picture` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `g_email` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `student` */

insert  into `student`(`student_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`parent_id`,`dormitory_id`,`transport_id`,`student_session`,`username`,`date`,`board`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (15,'DurgaDevi.rapaka','1996-03-23','Female','drno:24-11 , 4th line ','7981623150',NULL,'fe045f7c7a36e347c1723f52e02e077bc92f67ca',13,NULL,NULL,1,'username','2019-08-13',0,NULL,NULL,NULL,NULL,'7981623150',NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `student`(`student_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`parent_id`,`dormitory_id`,`transport_id`,`student_session`,`username`,`date`,`board`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (16,'Test Name.Test','1994-03-12','Male','drno:24-11 , 4th line ','7981623155',NULL,'fe045f7c7a36e347c1723f52e02e077bc92f67ca',14,NULL,NULL,1,'username','2019-08-14',0,NULL,NULL,NULL,NULL,'868628777',NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `student`(`student_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`parent_id`,`dormitory_id`,`transport_id`,`student_session`,`username`,`date`,`board`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (17,'Student Test','06/08/2010','Male','cvzc','7989652554','teststudent@gmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b',15,1,1,1,'teststudent','1566053340',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `student`(`student_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`parent_id`,`dormitory_id`,`transport_id`,`student_session`,`username`,`date`,`board`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (19,'test','05/27/2011','Male','visakhapatnam','9100762782','lpraveen004@gmail.com','c0c2256d2bdd648ba53ab190ea1e50d1b9888373',1,NULL,NULL,1,'test name','20 Aug, 2019',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `student`(`student_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`parent_id`,`dormitory_id`,`transport_id`,`student_session`,`username`,`date`,`board`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (20,'adarsh reddy','08/07/2000','Male','flat no-201 bhadrachalam','9966577035','adarshreddy115@gmail.com','c0c2256d2bdd648ba53ab190ea1e50d1b9888373',13,12,1,1,'adarsh115@gmail.com','1566744540',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `student`(`student_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`parent_id`,`dormitory_id`,`transport_id`,`student_session`,`username`,`date`,`board`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (23,'adarsh reddy b','07/08/1997','Male','cherla road bhadrachalam','9966577035','adarshreddy115@gmail.com','cc40f6076084db6fc741088b76ed75e224dac89c',16,12,1,1,'','1568040540',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `student`(`student_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`parent_id`,`dormitory_id`,`transport_id`,`student_session`,`username`,`date`,`board`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (24,'ksf prabhu varam','09/09/1997','Male','itda road bhadrachalam','9398026774','prabhukolapudi1@gmail.com','736b2516ee1f87d7ca3bad9d6c2a229cccf2d397',17,12,1,1,'prabhukolapudi1@gmail.co','1568040540',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `student`(`student_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`parent_id`,`dormitory_id`,`transport_id`,`student_session`,`username`,`date`,`board`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (25,'nikhil g','09/08/1996','Male','main road godavarikani','7673981398','gandi.nikhil666@gmail.com','8d242d4f3d7c0275779b11411230ccfe087553cf',18,12,1,1,'nikhil666@gmail.com','1568040540',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `student`(`student_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`parent_id`,`dormitory_id`,`transport_id`,`student_session`,`username`,`date`,`board`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (26,'jeevan ',NULL,'Male','main road laxmipuram','7780405087','jeevan.gj.007@gmail.com','805eb4127899e76fe79c08b532b5f77febce47f2',19,11,1,1,'jeevan.gj.007@gmail.co','1568040540',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `student`(`student_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`parent_id`,`dormitory_id`,`transport_id`,`student_session`,`username`,`date`,`board`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (27,'kumar babu','09/09/1995','Male','medical colony bcm','8008341206','kumarbabu.mj008@gmail.com','42d4c8dd3eecdcec879864e951a277bbfb4db907',20,11,1,1,'kumarbabu.mj008@gmail.co','1568040540',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `student`(`student_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`parent_id`,`dormitory_id`,`transport_id`,`student_session`,`username`,`date`,`board`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (28,'ARAVIND GANDI','09/03/2019','Male','main road godavarikani','7373981398','gandi.nikhil666@gmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b',18,3,1,1,'nikhil666@gmail.co','1568040540',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `student`(`student_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`parent_id`,`dormitory_id`,`transport_id`,`student_session`,`username`,`date`,`board`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (29,'ARJUN ','09/09/2017','Male','cherla road bhadrachalam','9987654321','arjun@gmail.com','2089648ccb294fcd4590d5516232ad754d77c56b',24,6,1,1,'arjun@gmail.com','1568040540',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `student`(`student_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`parent_id`,`dormitory_id`,`transport_id`,`student_session`,`username`,`date`,`board`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (30,'druvika','09/09/2019','Male','itda road bhadrachalam','9966577034','ajaykumar@gmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b',23,6,1,1,'ajaykumar@gmail.com','1568040540',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `student`(`student_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`parent_id`,`dormitory_id`,`transport_id`,`student_session`,`username`,`date`,`board`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (31,'srinidi','02/27/2017','Female','medical colony bcm','9966577034','ajaykumar@gmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b',23,6,1,1,'ajaykuma1r@gmail.com','1568040540',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `student`(`student_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`parent_id`,`dormitory_id`,`transport_id`,`student_session`,`username`,`date`,`board`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (32,'srija','03/08/2017','Female','main road godavarikani','9032734588','prasad.gandi@gmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b',18,6,1,1,'prasad.gandi@gmail.com','1568040540',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `student`(`student_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`parent_id`,`dormitory_id`,`transport_id`,`student_session`,`username`,`date`,`board`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (33,'anusha','10/30/2018','Female','main road laxmipuram','9966577034','adarshreddy1151@gmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b',16,6,1,1,'adarshreddy1151@gmail.com','1568040540',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `student`(`student_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`parent_id`,`dormitory_id`,`transport_id`,`student_session`,`username`,`date`,`board`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (34,'sinigdha','04/30/2019','Female','main road godavarikani','7780405087','venkateshwar@gmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b',20,3,1,1,'venkateshwar@gmail.com','1568040540',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `student`(`student_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`parent_id`,`dormitory_id`,`transport_id`,`student_session`,`username`,`date`,`board`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (35,'prabu','09/09/2019','Male','main road godavarikani','9398026774','prabu@gmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b',17,3,1,1,'prabu1@gmail.com','1568040540',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `student`(`student_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`parent_id`,`dormitory_id`,`transport_id`,`student_session`,`username`,`date`,`board`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (36,'sharanya','04/01/2019','Male','main road godavarikani','9398026774','ravindher@gmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b',18,3,1,1,'ravinder@gmail.com','1568040540',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `student`(`student_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`parent_id`,`dormitory_id`,`transport_id`,`student_session`,`username`,`date`,`board`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (37,'sai krishna','05/07/2019','Male','main road godavarikani','9966577035','saikrishna@gmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b',13,3,1,1,'saikrishna@gmail.com','1568040540',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `student`(`student_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`parent_id`,`dormitory_id`,`transport_id`,`student_session`,`username`,`date`,`board`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (38,'vinay',NULL,'Male','mandamari market','9398026774','naidu1@gmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b',20,3,1,1,'naidu1@gmail.com','1568040540',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `student`(`student_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`parent_id`,`dormitory_id`,`transport_id`,`student_session`,`username`,`date`,`board`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (39,'kumar babu',NULL,'Male',NULL,'8008341260',NULL,'7c4a8d09ca3762af61e59520943dc26494f8941b',NULL,NULL,NULL,1,'michael.kk','1569077340',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `student`(`student_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`parent_id`,`dormitory_id`,`transport_id`,`student_session`,`username`,`date`,`board`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (40,'vinay reddy',NULL,'Male',NULL,'9966577350',NULL,'f6a7651443d5867f394fe61ab082aac01c3c25fd',NULL,NULL,NULL,1,'vinni.reddy','1569077340',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `student`(`student_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`parent_id`,`dormitory_id`,`transport_id`,`student_session`,`username`,`date`,`board`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (41,'prabhu varam',NULL,'Male',NULL,'9398026774',NULL,'7c4a8d09ca3762af61e59520943dc26494f8941b',NULL,NULL,NULL,1,'pra.varam','1569077340',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `student`(`student_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`parent_id`,`dormitory_id`,`transport_id`,`student_session`,`username`,`date`,`board`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`) values (42,'jeevan',NULL,'Male',NULL,'7780405087',NULL,'7c4a8d09ca3762af61e59520943dc26494f8941b',NULL,NULL,NULL,1,'jeev.gj','1569077340',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `student_exam` */

CREATE TABLE `student_exam` (
  `exam_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `starttime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `endtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `correctlyanswered` int(11) NOT NULL DEFAULT 0,
  `status` enum('completed','inprogress') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'inprogress',
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  PRIMARY KEY (`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `student_exam` */

/*Table structure for table `student_question` */

CREATE TABLE `student_question` (
  `student_id` int(11) DEFAULT NULL,
  `exam_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `answered` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_answer` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `question_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` varchar(500) DEFAULT NULL,
  `total_time` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `student_question` */

insert  into `student_question`(`student_id`,`exam_code`,`answered`,`student_answer`,`question_id`,`time`,`total_time`) values (20,'5f0cf4da0e','answered','adarsh,guru','4,5','00:29:49','00:30:00');

/*Table structure for table `students_request` */

CREATE TABLE `students_request` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `start_date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `end_date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `students_request` */

/*Table structure for table `subject` */

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `year` longtext COLLATE utf8_unicode_ci NOT NULL,
  `la1` varchar(500) COLLATE utf8_unicode_ci DEFAULT 'Lab 1.',
  `la2` varchar(500) COLLATE utf8_unicode_ci DEFAULT 'Lab 2.',
  `la3` varchar(500) COLLATE utf8_unicode_ci DEFAULT 'Lab 3.',
  `la4` varchar(500) COLLATE utf8_unicode_ci DEFAULT 'Lab 4.',
  `la5` varchar(500) COLLATE utf8_unicode_ci DEFAULT 'Lab 5.',
  `la6` varchar(500) COLLATE utf8_unicode_ci DEFAULT 'Lab 6.',
  `la7` varchar(500) COLLATE utf8_unicode_ci DEFAULT 'Lab 7.',
  `la8` varchar(500) COLLATE utf8_unicode_ci DEFAULT 'Lab 8.',
  `la9` varchar(500) COLLATE utf8_unicode_ci DEFAULT 'Lab 9.',
  `la10` varchar(500) COLLATE utf8_unicode_ci DEFAULT 'Lab 10.',
  `type` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `subject` */

insert  into `subject`(`subject_id`,`name`,`class_id`,`teacher_id`,`year`,`la1`,`la2`,`la3`,`la4`,`la5`,`la6`,`la7`,`la8`,`la9`,`la10`,`type`) values (7,'Telugu',2,3,'2019-2020','Lab 1.','Lab 2.','Lab 3.','Lab 4.','Lab 5.','Lab 6.','Lab 7.','Lab 8.','Lab 9.','Lab 10.',NULL);
insert  into `subject`(`subject_id`,`name`,`class_id`,`teacher_id`,`year`,`la1`,`la2`,`la3`,`la4`,`la5`,`la6`,`la7`,`la8`,`la9`,`la10`,`type`) values (8,'english',2,5,'2019-2020','Lab 1.','Lab 2.','Lab 3.','Lab 4.','Lab 5.','Lab 6.','Lab 7.','Lab 8.','Lab 9.','Lab 10.',NULL);
insert  into `subject`(`subject_id`,`name`,`class_id`,`teacher_id`,`year`,`la1`,`la2`,`la3`,`la4`,`la5`,`la6`,`la7`,`la8`,`la9`,`la10`,`type`) values (10,'telugu',11,4,'2019-2020','Lab 1.','Lab 2.','Lab 3.','Lab 4.','Lab 5.','Lab 6.','Lab 7.','Lab 8.','Lab 9.','Lab 10.',NULL);
insert  into `subject`(`subject_id`,`name`,`class_id`,`teacher_id`,`year`,`la1`,`la2`,`la3`,`la4`,`la5`,`la6`,`la7`,`la8`,`la9`,`la10`,`type`) values (11,'hindi',2,10,'2019-2020','Lab 1.','Lab 2.','Lab 3.','Lab 4.','Lab 5.','Lab 6.','Lab 7.','Lab 8.','Lab 9.','Lab 10.',NULL);
insert  into `subject`(`subject_id`,`name`,`class_id`,`teacher_id`,`year`,`la1`,`la2`,`la3`,`la4`,`la5`,`la6`,`la7`,`la8`,`la9`,`la10`,`type`) values (12,'science',2,14,'2019-2020','Lab 1.','Lab 2.','Lab 3.','Lab 4.','Lab 5.','Lab 6.','Lab 7.','Lab 8.','Lab 9.','Lab 10.',NULL);
insert  into `subject`(`subject_id`,`name`,`class_id`,`teacher_id`,`year`,`la1`,`la2`,`la3`,`la4`,`la5`,`la6`,`la7`,`la8`,`la9`,`la10`,`type`) values (13,'social ',2,9,'2019-2020','Lab 1.','Lab 2.','Lab 3.','Lab 4.','Lab 5.','Lab 6.','Lab 7.','Lab 8.','Lab 9.','Lab 10.',NULL);
insert  into `subject`(`subject_id`,`name`,`class_id`,`teacher_id`,`year`,`la1`,`la2`,`la3`,`la4`,`la5`,`la6`,`la7`,`la8`,`la9`,`la10`,`type`) values (14,'maths',2,9,'2019-2020','Lab 1.','Lab 2.','Lab 3.','Lab 4.','Lab 5.','Lab 6.','Lab 7.','Lab 8.','Lab 9.','Lab 10.',NULL);
insert  into `subject`(`subject_id`,`name`,`class_id`,`teacher_id`,`year`,`la1`,`la2`,`la3`,`la4`,`la5`,`la6`,`la7`,`la8`,`la9`,`la10`,`type`) values (15,'Hindi',11,15,'2019-2020','Lab 1.','Lab 2.','Lab 3.','Lab 4.','Lab 5.','Lab 6.','Lab 7.','Lab 8.','Lab 9.','Lab 10.',NULL);
insert  into `subject`(`subject_id`,`name`,`class_id`,`teacher_id`,`year`,`la1`,`la2`,`la3`,`la4`,`la5`,`la6`,`la7`,`la8`,`la9`,`la10`,`type`) values (16,'English',11,8,'2019-2020','Lab 1.','Lab 2.','Lab 3.','Lab 4.','Lab 5.','Lab 6.','Lab 7.','Lab 8.','Lab 9.','Lab 10.',NULL);
insert  into `subject`(`subject_id`,`name`,`class_id`,`teacher_id`,`year`,`la1`,`la2`,`la3`,`la4`,`la5`,`la6`,`la7`,`la8`,`la9`,`la10`,`type`) values (17,'SCIENCE',11,10,'2019-2020','Lab 1.','Lab 2.','Lab 3.','Lab 4.','Lab 5.','Lab 6.','Lab 7.','Lab 8.','Lab 9.','Lab 10.',NULL);
insert  into `subject`(`subject_id`,`name`,`class_id`,`teacher_id`,`year`,`la1`,`la2`,`la3`,`la4`,`la5`,`la6`,`la7`,`la8`,`la9`,`la10`,`type`) values (18,'SOCIAL',11,9,'2019-2020','Lab 1.','Lab 2.','Lab 3.','Lab 4.','Lab 5.','Lab 6.','Lab 7.','Lab 8.','Lab 9.','Lab 10.',NULL);
insert  into `subject`(`subject_id`,`name`,`class_id`,`teacher_id`,`year`,`la1`,`la2`,`la3`,`la4`,`la5`,`la6`,`la7`,`la8`,`la9`,`la10`,`type`) values (19,'MATHS',11,6,'2019-2020','Lab 1.','Lab 2.','Lab 3.','Lab 4.','Lab 5.','Lab 6.','Lab 7.','Lab 8.','Lab 9.','Lab 10.',NULL);

/*Table structure for table `teacher` */

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `salary` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` longtext COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(600) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_code` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_token` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_id` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_photo` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_name` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `g_oauth` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `g_fname` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `femail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `g_lname` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `g_picture` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `g_email` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `teacher` */

insert  into `teacher`(`teacher_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`salary`,`username`,`token`,`user_code`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`,`department`) values (3,'G.Anuradha','08/07/2019','Female','','','teacher@gmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b','','G.Anuradha',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `teacher`(`teacher_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`salary`,`username`,`token`,`user_code`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`,`department`) values (4,'G.Anuradha','1994-03-24','Female','edit Address','8686287777','anuradha@gmail.com','84f831b21e96401b0209df234a2b0666b2bceda5',NULL,'username',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Maths');
insert  into `teacher`(`teacher_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`salary`,`username`,`token`,`user_code`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`,`department`) values (5,'S.Kranthi Raj','1994-03-14','Male','edit Address','8686287777','kranthiraj@gmail.com','84f831b21e96401b0209df234a2b0666b2bceda5',NULL,'username',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Bio-Science');
insert  into `teacher`(`teacher_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`salary`,`username`,`token`,`user_code`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`,`department`) values (6,'ANITHA','09/09/2019','Female','jammikunta','8989898989','anitha.666@gmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b','29000','anitha.666@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `teacher`(`teacher_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`salary`,`username`,`token`,`user_code`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`,`department`) values (8,'krishnaveni ','09/09/2019','Female','medical colony bcm','9090909090','krishnaveni@gmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b','30000','krishnaveni@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `teacher`(`teacher_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`salary`,`username`,`token`,`user_code`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`,`department`) values (9,'nikhil kumar','09/09/2019','Male','mandamari market','9696969696','nikhil.666@gmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b','1000','nikhil.1996@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `teacher`(`teacher_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`salary`,`username`,`token`,`user_code`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`,`department`) values (10,'abhish reddy','09/09/2019','Male','itda road bhadrachalam','9796959493','abhi@gmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b','29000','abhi@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `teacher`(`teacher_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`salary`,`username`,`token`,`user_code`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`,`department`) values (12,'jeevan ','09/09/2019','Male','main road laxmipuram','8976789845','jeevan.binny@gmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b','29000','jeevan.bunny@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `teacher`(`teacher_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`salary`,`username`,`token`,`user_code`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`,`department`) values (13,'sai teja ','09/09/2019','Male','itda road bhadrachalam','545454545454','saiteja@gmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b','29000','sai teja@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `teacher`(`teacher_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`salary`,`username`,`token`,`user_code`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`,`department`) values (14,'vamshi','09/09/2019','Male','main road laxmipuram','56435643563','vamshi@gmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b','29000','vamshi@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `teacher`(`teacher_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`salary`,`username`,`token`,`user_code`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`,`department`) values (15,'prabu','09/09/2019','Male','cherla road bhadrachalam','6578346789','prabu@gmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b','29000','prabu@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `teacher`(`teacher_id`,`name`,`birthday`,`sex`,`address`,`phone`,`email`,`password`,`salary`,`username`,`token`,`user_code`,`fb_token`,`fb_id`,`fb_photo`,`fb_name`,`g_oauth`,`g_fname`,`femail`,`g_lname`,`g_picture`,`link`,`g_email`,`department`) values (16,'xhyz','09/09/2019','Male','mandamari market','6576763467','xyz@gmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b','29000','xyz@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `teacher_attendance` */

CREATE TABLE `teacher_attendance` (
  `attendance_id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` longtext NOT NULL,
  `year` longtext NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`attendance_id`)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=latin1;

/*Data for the table `teacher_attendance` */

insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (16,'1566671400','2019-2020',4,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (15,'1566671400','2019-2020',3,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (14,'1566239400','2019-2020',5,'1');
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (13,'1566239400','2019-2020',4,'3');
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (12,'1566239400','2019-2020',3,'1');
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (11,'1565721000','2019-2020',5,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (10,'1565721000','2019-2020',4,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (9,'1565721000','2019-2020',3,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (17,'1566671400','2019-2020',5,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (18,'1566844200','2019-2020',3,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (19,'1566844200','2019-2020',4,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (20,'1566844200','2019-2020',5,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (21,'1568053800','2019-2020',3,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (22,'1568053800','2019-2020',4,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (23,'1568053800','2019-2020',5,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (24,'1568053800','2019-2020',6,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (25,'1568053800','2019-2020',7,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (26,'1568053800','2019-2020',8,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (27,'1568053800','2019-2020',9,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (28,'1568053800','2019-2020',10,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (29,'1568053800','2019-2020',12,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (30,'1568053800','2019-2020',13,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (31,'1568053800','2019-2020',14,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (32,'1568053800','2019-2020',15,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (33,'1568053800','2019-2020',16,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (34,'1569349800','2019-2020',3,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (35,'1569349800','2019-2020',4,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (36,'1569349800','2019-2020',5,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (37,'1569349800','2019-2020',6,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (38,'1569349800','2019-2020',7,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (39,'1569349800','2019-2020',8,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (40,'1569349800','2019-2020',9,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (41,'1569349800','2019-2020',10,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (42,'1569349800','2019-2020',12,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (43,'1569349800','2019-2020',13,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (44,'1569349800','2019-2020',14,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (45,'1569349800','2019-2020',15,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (46,'1569349800','2019-2020',16,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (47,'1569609000','2019-2020',3,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (48,'1569609000','2019-2020',4,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (49,'1569609000','2019-2020',5,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (50,'1569609000','2019-2020',6,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (51,'1569609000','2019-2020',7,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (52,'1569609000','2019-2020',8,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (53,'1569609000','2019-2020',9,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (54,'1569609000','2019-2020',10,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (55,'1569609000','2019-2020',12,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (56,'1569609000','2019-2020',13,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (57,'1569609000','2019-2020',14,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (58,'1569609000','2019-2020',15,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (59,'1569609000','2019-2020',16,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (60,'1575743400','2019-2020',3,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (61,'1575743400','2019-2020',4,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (62,'1575743400','2019-2020',5,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (63,'1575743400','2019-2020',6,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (64,'1575743400','2019-2020',7,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (65,'1575743400','2019-2020',8,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (66,'1575743400','2019-2020',9,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (67,'1575743400','2019-2020',10,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (68,'1575743400','2019-2020',12,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (69,'1575743400','2019-2020',13,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (70,'1575743400','2019-2020',14,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (71,'1575743400','2019-2020',15,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (72,'1575743400','2019-2020',16,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (73,'1576089000','2019-2020',3,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (74,'1576089000','2019-2020',4,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (75,'1576089000','2019-2020',5,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (76,'1576089000','2019-2020',6,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (77,'1576089000','2019-2020',7,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (78,'1576089000','2019-2020',8,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (79,'1576089000','2019-2020',9,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (80,'1576089000','2019-2020',10,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (81,'1576089000','2019-2020',12,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (82,'1576089000','2019-2020',13,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (83,'1576089000','2019-2020',14,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (84,'1576089000','2019-2020',15,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (85,'1576089000','2019-2020',16,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (86,'1578076200','2019-2020',3,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (87,'1578076200','2019-2020',4,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (88,'1578076200','2019-2020',5,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (89,'1578076200','2019-2020',6,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (90,'1578076200','2019-2020',7,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (91,'1578076200','2019-2020',8,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (92,'1578076200','2019-2020',9,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (93,'1578076200','2019-2020',10,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (94,'1578076200','2019-2020',12,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (95,'1578076200','2019-2020',13,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (96,'1578076200','2019-2020',14,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (97,'1578076200','2019-2020',15,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (98,'1578076200','2019-2020',16,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (99,'1578335400','2019-2020',3,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (100,'1578335400','2019-2020',4,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (101,'1578335400','2019-2020',5,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (102,'1578335400','2019-2020',6,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (103,'1578335400','2019-2020',8,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (104,'1578335400','2019-2020',9,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (105,'1578335400','2019-2020',10,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (106,'1578335400','2019-2020',12,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (107,'1578335400','2019-2020',13,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (108,'1578335400','2019-2020',14,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (109,'1578335400','2019-2020',15,NULL);
insert  into `teacher_attendance`(`attendance_id`,`timestamp`,`year`,`teacher_id`,`status`) values (110,'1578335400','2019-2020',16,NULL);

/*Table structure for table `teacher_files` */

CREATE TABLE `teacher_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `file` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user` int(11) NOT NULL,
  `file_code` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `teacher_files` */

insert  into `teacher_files`(`id`,`title`,`description`,`file`,`file_type`,`date`,`user`,`file_code`) values (1,'Teacher Files','Description','Seed Funding Guidelines.pdf','PDF','29-07-2019',1,'3eb8b5814f');

/*Table structure for table `ticket` */

CREATE TABLE `ticket` (
  `ticket_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ticket_code` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'opened closed',
  `priority` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'baja media alta',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `student_id` int(11) NOT NULL,
  `assigned_staff_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ticket_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `ticket` */

/*Table structure for table `ticket_message` */

CREATE TABLE `ticket_message` (
  `ticket_message_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_code` longtext COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `file` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sender_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sender_id` int(11) NOT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ticket_message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `ticket_message` */

/*Table structure for table `tokens` */

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `device_id` text DEFAULT NULL,
  `status` varchar(40) DEFAULT 'Active',
  `created_on` datetime DEFAULT current_timestamp(),
  `user_type` varchar(50) DEFAULT NULL,
  `update_on` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `tokens` */

insert  into `tokens`(`id`,`user_id`,`device_id`,`status`,`created_on`,`user_type`,`update_on`) values (10,1,'fwYlbCtMRfM:APA91bF_M4hZ6P3nEJIvmCZ3KbKY31Z-6_wy8NYkhRQW80mF04FUngI2EIQT-s40tQRFJNmVVMRy8DWu061nMttuy91goEcbzPiv5syrLxqAqE14i4oTvktpM4n6-Y0tTGP65gPfWKhg','Active','2019-08-01 15:20:50','teacher','2019-08-02 11:41:33');
insert  into `tokens`(`id`,`user_id`,`device_id`,`status`,`created_on`,`user_type`,`update_on`) values (9,7,'fwYlbCtMRfM:APA91bF_M4hZ6P3nEJIvmCZ3KbKY31Z-6_wy8NYkhRQW80mF04FUngI2EIQT-s40tQRFJNmVVMRy8DWu061nMttuy91goEcbzPiv5syrLxqAqE14i4oTvktpM4n6-Y0tTGP65gPfWKhg','Active','2019-08-01 15:18:47','student','2019-08-02 13:14:05');
insert  into `tokens`(`id`,`user_id`,`device_id`,`status`,`created_on`,`user_type`,`update_on`) values (11,14,'dpbtfuIh18w:APA91bFAaHgb6vZr4wdQsg37adoNrn43Togq1GqSo7K2arJqF1fNBEV7j7BPSgzJn-mJ2iW1nyB0CLTgQyCWh-rC2ATdzc6L1dodZGnv6inTmtRNwd6O2SPFnQAGsWS29jyaq7udJOoi','Active','2019-08-13 15:20:36','student','2019-08-21 17:08:57');
insert  into `tokens`(`id`,`user_id`,`device_id`,`status`,`created_on`,`user_type`,`update_on`) values (12,16,'djLuGgNPSOk:APA91bH5022adhB5F29e51I_2azPGZ_CCoQEozLVzbf-acdN0oQ6qwkFm0sxOHM_mZBkAJ_9VVwsLoWTyBw5e9TA2cHWDku_dSD1X0g3Jsog60-LVdOfIOULNdtQSAcTX3_Afih6V-oo','Active','2019-08-18 19:56:07','student','2020-02-11 10:54:33');
insert  into `tokens`(`id`,`user_id`,`device_id`,`status`,`created_on`,`user_type`,`update_on`) values (13,3,'djLuGgNPSOk:APA91bH5022adhB5F29e51I_2azPGZ_CCoQEozLVzbf-acdN0oQ6qwkFm0sxOHM_mZBkAJ_9VVwsLoWTyBw5e9TA2cHWDku_dSD1X0g3Jsog60-LVdOfIOULNdtQSAcTX3_Afih6V-oo','Active','2019-08-21 17:17:21','teacher','2020-01-06 15:30:57');
insert  into `tokens`(`id`,`user_id`,`device_id`,`status`,`created_on`,`user_type`,`update_on`) values (14,15,'djLuGgNPSOk:APA91bH5022adhB5F29e51I_2azPGZ_CCoQEozLVzbf-acdN0oQ6qwkFm0sxOHM_mZBkAJ_9VVwsLoWTyBw5e9TA2cHWDku_dSD1X0g3Jsog60-LVdOfIOULNdtQSAcTX3_Afih6V-oo','Active','2020-01-02 08:00:51','student','2020-01-07 12:21:57');

/*Table structure for table `transport` */

CREATE TABLE `transport` (
  `transport_id` int(11) NOT NULL AUTO_INCREMENT,
  `route_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `number_of_vehicle` longtext COLLATE utf8_unicode_ci NOT NULL,
  `route_fare` longtext COLLATE utf8_unicode_ci NOT NULL,
  `driver_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `driver_phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `route` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`transport_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `transport` */

insert  into `transport`(`transport_id`,`route_name`,`number_of_vehicle`,`route_fare`,`driver_name`,`driver_phone`,`route`) values (1,'No Bus','0','0','Driver Name','','-');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
