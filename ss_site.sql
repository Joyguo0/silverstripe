/*
SQLyog Trial v11.13 (32 bit)
MySQL - 5.6.12-log : Database - ss_site
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ss_site` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ss_site`;

/*Table structure for table `articlepage` */

DROP TABLE IF EXISTS `articlepage`;

CREATE TABLE `articlepage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Date` date DEFAULT NULL,
  `Author` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

/*Data for the table `articlepage` */

insert  into `articlepage`(`ID`,`Date`,`Author`) values (26,'2014-01-16','4323'),(27,'2014-01-01','23qwe'),(36,'2014-01-01','lkkl');

/*Table structure for table `articlepage_live` */

DROP TABLE IF EXISTS `articlepage_live`;

CREATE TABLE `articlepage_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Date` date DEFAULT NULL,
  `Author` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

/*Data for the table `articlepage_live` */

insert  into `articlepage_live`(`ID`,`Date`,`Author`) values (26,'2014-01-16','4323'),(27,'2014-01-01','23qwe'),(36,'2014-01-01','lkkl');

/*Table structure for table `articlepage_versions` */

DROP TABLE IF EXISTS `articlepage_versions`;

CREATE TABLE `articlepage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Date` date DEFAULT NULL,
  `Author` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `articlepage_versions` */

insert  into `articlepage_versions`(`ID`,`RecordID`,`Version`,`Date`,`Author`) values (1,26,1,NULL,NULL),(2,26,2,'2014-01-16','4323'),(3,26,3,'2014-01-16','4323'),(4,26,4,'2014-01-16','4323'),(5,26,5,'2014-01-16','4323'),(6,27,1,NULL,NULL),(7,27,2,'2014-01-01','23qwe'),(8,36,1,NULL,NULL),(9,36,2,'2014-01-01','lkkl');

/*Table structure for table `backup_editableformfield` */

DROP TABLE IF EXISTS `backup_editableformfield`;

CREATE TABLE `backup_editableformfield` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('EditableFormField','EditableCheckbox','EditableCountryDropdownField','EditableDateField','EditableEmailField','EditableFileField','EditableFormHeading','EditableLiteralField','EditableMemberListField','EditableMultipleOptionField','EditableCheckboxGroupField','EditableDropdown','EditableRadioField','EditableTextField') CHARACTER SET utf8 DEFAULT 'EditableFormField',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `CustomErrorMessage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CustomRules` mediumtext CHARACTER SET utf8,
  `CustomSettings` mediumtext CHARACTER SET utf8,
  `CustomParameter` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `backup_editableformfield` */

/*Table structure for table `blogentry` */

DROP TABLE IF EXISTS `blogentry`;

CREATE TABLE `blogentry` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Date` datetime DEFAULT NULL,
  `Author` mediumtext CHARACTER SET utf8,
  `Tags` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `blogentry` */

insert  into `blogentry`(`ID`,`Date`,`Author`,`Tags`) values (8,'2014-01-26 19:00:30','saas撒点','silverstripe, blog');

/*Table structure for table `blogentry_live` */

DROP TABLE IF EXISTS `blogentry_live`;

CREATE TABLE `blogentry_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Date` datetime DEFAULT NULL,
  `Author` mediumtext CHARACTER SET utf8,
  `Tags` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `blogentry_live` */

insert  into `blogentry_live`(`ID`,`Date`,`Author`,`Tags`) values (8,'2014-01-26 19:00:30','saas撒点','silverstripe, blog');

/*Table structure for table `blogentry_versions` */

DROP TABLE IF EXISTS `blogentry_versions`;

CREATE TABLE `blogentry_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Date` datetime DEFAULT NULL,
  `Author` mediumtext CHARACTER SET utf8,
  `Tags` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `blogentry_versions` */

insert  into `blogentry_versions`(`ID`,`RecordID`,`Version`,`Date`,`Author`,`Tags`) values (1,8,1,'2014-01-26 19:00:30',NULL,'silverstripe, blog'),(2,8,2,'2014-01-26 19:00:30','saas撒点','silverstripe, blog'),(3,8,3,'2014-01-26 19:00:30','saas撒点','silverstripe, blog'),(4,8,4,'2014-01-26 19:00:30','saas撒点','silverstripe, blog'),(5,8,5,'2014-01-26 19:00:30','saas撒点','silverstripe, blog');

/*Table structure for table `blogholder` */

DROP TABLE IF EXISTS `blogholder`;

CREATE TABLE `blogholder` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AllowCustomAuthors` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowFullEntry` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `OwnerID` (`OwnerID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `blogholder` */

insert  into `blogholder`(`ID`,`AllowCustomAuthors`,`ShowFullEntry`,`OwnerID`) values (7,1,1,1);

/*Table structure for table `blogholder_live` */

DROP TABLE IF EXISTS `blogholder_live`;

CREATE TABLE `blogholder_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AllowCustomAuthors` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowFullEntry` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `OwnerID` (`OwnerID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `blogholder_live` */

insert  into `blogholder_live`(`ID`,`AllowCustomAuthors`,`ShowFullEntry`,`OwnerID`) values (7,1,1,1);

/*Table structure for table `blogholder_versions` */

DROP TABLE IF EXISTS `blogholder_versions`;

CREATE TABLE `blogholder_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `AllowCustomAuthors` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowFullEntry` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `OwnerID` (`OwnerID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `blogholder_versions` */

insert  into `blogholder_versions`(`ID`,`RecordID`,`Version`,`AllowCustomAuthors`,`ShowFullEntry`,`OwnerID`) values (1,7,1,0,0,0),(2,7,2,1,1,1);

/*Table structure for table `blogtree` */

DROP TABLE IF EXISTS `blogtree`;

CREATE TABLE `blogtree` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `LandingPageFreshness` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `blogtree` */

insert  into `blogtree`(`ID`,`Name`,`LandingPageFreshness`) values (7,NULL,NULL);

/*Table structure for table `blogtree_live` */

DROP TABLE IF EXISTS `blogtree_live`;

CREATE TABLE `blogtree_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `LandingPageFreshness` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `blogtree_live` */

insert  into `blogtree_live`(`ID`,`Name`,`LandingPageFreshness`) values (7,NULL,NULL);

/*Table structure for table `blogtree_versions` */

DROP TABLE IF EXISTS `blogtree_versions`;

CREATE TABLE `blogtree_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `LandingPageFreshness` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `blogtree_versions` */

insert  into `blogtree_versions`(`ID`,`RecordID`,`Version`,`Name`,`LandingPageFreshness`) values (1,7,1,NULL,NULL),(2,7,2,NULL,NULL);

/*Table structure for table `browserpollsubmission` */

DROP TABLE IF EXISTS `browserpollsubmission`;

CREATE TABLE `browserpollsubmission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('BrowserPollSubmission') CHARACTER SET utf8 DEFAULT 'BrowserPollSubmission',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` mediumtext CHARACTER SET utf8,
  `Browser` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `browserpollsubmission` */

insert  into `browserpollsubmission`(`ID`,`ClassName`,`Created`,`LastEdited`,`Name`,`Browser`) values (1,'BrowserPollSubmission','2014-01-30 11:29:15','2014-01-30 11:29:15','lk','Internet Explorer'),(2,'BrowserPollSubmission','2014-02-17 09:50:06','2014-02-17 09:50:06','32','Firefox'),(3,'BrowserPollSubmission','2014-02-17 09:50:18','2014-02-17 09:50:18','dsf','Internet Explorer'),(4,'BrowserPollSubmission','2014-02-17 09:54:42','2014-02-17 09:54:42','wer','Internet Explorer');

/*Table structure for table `editableformfield` */

DROP TABLE IF EXISTS `editableformfield`;

CREATE TABLE `editableformfield` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('EditableRadioField','EditableTextField','EditableSpamProtectionField','EditableFormField','EditableCheckbox','EditableCountryDropdownField','EditableDateField','EditableEmailField','EditableFileField','EditableFormHeading','EditableLiteralField','EditableMemberListField','EditableMultipleOptionField','EditableCheckboxGroupField','EditableDropdown') CHARACTER SET utf8 DEFAULT 'EditableRadioField',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `CustomErrorMessage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CustomRules` mediumtext CHARACTER SET utf8,
  `CustomSettings` mediumtext CHARACTER SET utf8,
  `CustomParameter` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `editableformfield` */

insert  into `editableformfield`(`ID`,`ClassName`,`Created`,`LastEdited`,`Name`,`Title`,`Default`,`Sort`,`Required`,`CustomErrorMessage`,`CustomRules`,`CustomSettings`,`CustomParameter`,`Version`,`ParentID`) values (1,'EditableTextField','2014-01-27 10:34:41','2014-01-27 17:09:00','EditableTextField1',NULL,NULL,2,1,'Required','a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:4:\"text\";s:9:\"MinLength\";s:1:\"6\";s:9:\"MaxLength\";s:2:\"50\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,20,19),(2,'EditableRadioField','2014-01-27 10:36:04','2014-01-27 17:09:01','EditableRadioField2',NULL,NULL,3,1,'Required','a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:5:\"radio\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19,19),(4,'EditableTextField','2014-01-27 10:37:29','2014-01-27 17:09:01','EditableTextField4',NULL,NULL,4,0,NULL,'a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:8:\"textarea\";s:9:\"MinLength\";s:0:\"\";s:9:\"MaxLength\";s:0:\"\";s:4:\"Rows\";s:2:\"10\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,18,19),(7,'EditableSpamProtectionField','2014-01-27 16:58:42','2014-01-27 17:09:01','EditableSpamProtectionField7','sdf',NULL,6,0,NULL,'a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:2:\"sd\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,5,19);

/*Table structure for table `editableformfield_live` */

DROP TABLE IF EXISTS `editableformfield_live`;

CREATE TABLE `editableformfield_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('EditableRadioField','EditableTextField','EditableSpamProtectionField','EditableFormField','EditableCheckbox','EditableCountryDropdownField','EditableDateField','EditableEmailField','EditableFileField','EditableFormHeading','EditableLiteralField','EditableMemberListField','EditableMultipleOptionField','EditableCheckboxGroupField','EditableDropdown') CHARACTER SET utf8 DEFAULT 'EditableRadioField',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `CustomErrorMessage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CustomRules` mediumtext CHARACTER SET utf8,
  `CustomSettings` mediumtext CHARACTER SET utf8,
  `CustomParameter` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `editableformfield_live` */

insert  into `editableformfield_live`(`ID`,`ClassName`,`Created`,`LastEdited`,`Name`,`Title`,`Default`,`Sort`,`Required`,`CustomErrorMessage`,`CustomRules`,`CustomSettings`,`CustomParameter`,`Version`,`ParentID`) values (1,'EditableTextField','2014-01-27 10:34:41','2014-01-27 17:09:02','EditableTextField1',NULL,NULL,2,1,'Required','a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:4:\"text\";s:9:\"MinLength\";s:1:\"6\";s:9:\"MaxLength\";s:2:\"50\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,20,19),(2,'EditableRadioField','2014-01-27 10:36:04','2014-01-27 17:09:02','EditableRadioField2',NULL,NULL,3,1,'Required','a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:5:\"radio\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19,19),(4,'EditableTextField','2014-01-27 10:37:29','2014-01-27 17:09:02','EditableTextField4',NULL,NULL,4,0,NULL,'a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:8:\"textarea\";s:9:\"MinLength\";s:0:\"\";s:9:\"MaxLength\";s:0:\"\";s:4:\"Rows\";s:2:\"10\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,18,19),(7,'EditableSpamProtectionField','2014-01-27 16:58:42','2014-01-27 17:09:03','EditableSpamProtectionField7','sdf',NULL,6,0,NULL,'a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:2:\"sd\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,5,19);

/*Table structure for table `editableformfield_versions` */

DROP TABLE IF EXISTS `editableformfield_versions`;

CREATE TABLE `editableformfield_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('EditableRadioField','EditableTextField','EditableSpamProtectionField','EditableFormField','EditableCheckbox','EditableCountryDropdownField','EditableDateField','EditableEmailField','EditableFileField','EditableFormHeading','EditableLiteralField','EditableMemberListField','EditableMultipleOptionField','EditableCheckboxGroupField','EditableDropdown') CHARACTER SET utf8 DEFAULT 'EditableRadioField',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `CustomErrorMessage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CustomRules` mediumtext CHARACTER SET utf8,
  `CustomSettings` mediumtext CHARACTER SET utf8,
  `CustomParameter` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;

/*Data for the table `editableformfield_versions` */

insert  into `editableformfield_versions`(`ID`,`RecordID`,`Version`,`WasPublished`,`AuthorID`,`PublisherID`,`ClassName`,`Created`,`LastEdited`,`Name`,`Title`,`Default`,`Sort`,`Required`,`CustomErrorMessage`,`CustomRules`,`CustomSettings`,`CustomParameter`,`ParentID`) values (1,1,1,0,1,0,'EditableTextField','2014-01-27 10:34:41','2014-01-27 10:34:41','EditableTextField0',NULL,NULL,1,0,NULL,NULL,NULL,NULL,19),(2,1,2,0,1,0,'EditableTextField','2014-01-27 10:34:41','2014-01-27 10:35:36','EditableTextField1',NULL,NULL,1,0,NULL,'a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:9:\"firstname\";s:9:\"MinLength\";s:1:\"6\";s:9:\"MaxLength\";s:2:\"50\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(3,2,1,0,1,0,'EditableRadioField','2014-01-27 10:36:04','2014-01-27 10:36:04','EditableRadioField0',NULL,NULL,2,0,NULL,NULL,NULL,NULL,19),(4,1,3,0,1,0,'EditableTextField','2014-01-27 10:34:41','2014-01-27 10:36:25','EditableTextField1',NULL,NULL,1,0,NULL,'a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:9:\"firstname\";s:9:\"MinLength\";s:1:\"6\";s:9:\"MaxLength\";s:2:\"50\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(5,2,2,0,1,0,'EditableRadioField','2014-01-27 10:36:04','2014-01-27 10:36:25','EditableRadioField2',NULL,NULL,2,0,'2err','a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:1:\"A\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(6,3,1,0,1,0,'EditableRadioField','2014-01-27 10:36:49','2014-01-27 10:36:49','EditableRadioField0',NULL,NULL,3,0,NULL,NULL,NULL,NULL,19),(7,4,1,0,1,0,'EditableTextField','2014-01-27 10:37:29','2014-01-27 10:37:29','EditableTextField0',NULL,NULL,4,0,NULL,NULL,NULL,NULL,19),(8,1,4,0,1,0,'EditableTextField','2014-01-27 10:34:41','2014-01-27 10:37:33','EditableTextField1',NULL,NULL,1,0,NULL,'a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:9:\"firstname\";s:9:\"MinLength\";s:1:\"6\";s:9:\"MaxLength\";s:2:\"50\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(9,2,3,0,1,0,'EditableRadioField','2014-01-27 10:36:04','2014-01-27 10:37:33','EditableRadioField2',NULL,NULL,2,1,'Required','a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:3:\"Man\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(10,3,2,0,1,0,'EditableRadioField','2014-01-27 10:36:49','2014-01-27 10:37:33','EditableRadioField3',NULL,NULL,3,1,'required','a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:6:\"Female\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(11,4,2,0,1,0,'EditableTextField','2014-01-27 10:37:29','2014-01-27 10:37:33','EditableTextField4',NULL,NULL,4,0,NULL,'a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:9:\"MinLength\";s:0:\"\";s:9:\"MaxLength\";s:0:\"\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(12,1,5,0,1,0,'EditableTextField','2014-01-27 10:34:41','2014-01-27 10:39:00','EditableTextField1',NULL,NULL,1,0,NULL,'a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:9:\"firstname\";s:9:\"MinLength\";s:1:\"6\";s:9:\"MaxLength\";s:2:\"50\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(13,2,4,0,1,0,'EditableRadioField','2014-01-27 10:36:04','2014-01-27 10:39:00','EditableRadioField2',NULL,NULL,2,1,'Required','a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:3:\"Man\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(14,3,3,0,1,0,'EditableRadioField','2014-01-27 10:36:49','2014-01-27 10:39:00','EditableRadioField3',NULL,NULL,3,1,'required','a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:6:\"Female\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(15,4,3,0,1,0,'EditableTextField','2014-01-27 10:37:29','2014-01-27 10:39:00','EditableTextField4',NULL,NULL,4,0,NULL,'a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:9:\"MinLength\";s:0:\"\";s:9:\"MaxLength\";s:0:\"\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(16,1,6,0,1,0,'EditableTextField','2014-01-27 10:34:41','2014-01-27 10:39:16','EditableTextField1',NULL,NULL,1,0,NULL,'a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:9:\"firstname\";s:9:\"MinLength\";s:1:\"6\";s:9:\"MaxLength\";s:2:\"50\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(17,2,5,0,1,0,'EditableRadioField','2014-01-27 10:36:04','2014-01-27 10:39:16','EditableRadioField2',NULL,NULL,2,1,'Required','a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:3:\"Man\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(18,3,4,0,1,0,'EditableRadioField','2014-01-27 10:36:49','2014-01-27 10:39:17','EditableRadioField3',NULL,NULL,3,1,'required','a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:6:\"Female\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(19,4,4,0,1,0,'EditableTextField','2014-01-27 10:37:29','2014-01-27 10:39:17','EditableTextField4',NULL,NULL,4,0,NULL,'a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:9:\"MinLength\";s:0:\"\";s:9:\"MaxLength\";s:0:\"\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(20,1,7,1,1,1,'EditableTextField','2014-01-27 10:34:41','2014-01-27 10:40:04','EditableTextField1',NULL,NULL,1,0,NULL,'a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:9:\"firstname\";s:9:\"MinLength\";s:1:\"6\";s:9:\"MaxLength\";s:2:\"50\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(21,2,6,1,1,1,'EditableRadioField','2014-01-27 10:36:04','2014-01-27 10:40:04','EditableRadioField2',NULL,NULL,2,1,'Required','a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:3:\"Man\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(22,3,5,1,1,1,'EditableRadioField','2014-01-27 10:36:49','2014-01-27 10:40:04','EditableRadioField3',NULL,NULL,3,1,'required','a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:6:\"Female\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(23,4,5,1,1,1,'EditableTextField','2014-01-27 10:37:29','2014-01-27 10:40:04','EditableTextField4',NULL,NULL,4,0,NULL,'a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:9:\"MinLength\";s:0:\"\";s:9:\"MaxLength\";s:0:\"\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(24,1,8,1,1,1,'EditableTextField','2014-01-27 10:34:41','2014-01-27 10:42:50','EditableTextField1',NULL,NULL,1,1,'Required','a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:9:\"MinLength\";s:1:\"6\";s:9:\"MaxLength\";s:2:\"50\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(25,2,7,1,1,1,'EditableRadioField','2014-01-27 10:36:04','2014-01-27 10:42:50','EditableRadioField2',NULL,NULL,2,1,'Required','a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(26,4,6,1,1,1,'EditableTextField','2014-01-27 10:37:29','2014-01-27 10:42:50','EditableTextField4',NULL,NULL,4,0,NULL,'a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:9:\"MinLength\";s:0:\"\";s:9:\"MaxLength\";s:0:\"\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(27,5,1,0,1,0,'EditableSpamProtectionField','2014-01-27 16:50:11','2014-01-27 16:50:11','EditableSpamProtectionField0',NULL,NULL,5,0,NULL,NULL,NULL,NULL,19),(28,1,9,1,1,1,'EditableTextField','2014-01-27 10:34:41','2014-01-27 16:50:26','EditableTextField1',NULL,NULL,1,1,'Required','a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:9:\"MinLength\";s:1:\"6\";s:9:\"MaxLength\";s:2:\"50\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(29,2,8,1,1,1,'EditableRadioField','2014-01-27 10:36:04','2014-01-27 16:50:26','EditableRadioField2',NULL,NULL,2,1,'Required','a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(30,4,7,1,1,1,'EditableTextField','2014-01-27 10:37:29','2014-01-27 16:50:27','EditableTextField4',NULL,NULL,4,0,NULL,'a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:9:\"MinLength\";s:0:\"\";s:9:\"MaxLength\";s:0:\"\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(31,5,2,1,1,1,'EditableSpamProtectionField','2014-01-27 16:50:11','2014-01-27 16:50:27','EditableSpamProtectionField5',NULL,NULL,5,0,NULL,'a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(32,5,3,0,1,0,'EditableSpamProtectionField','2014-01-27 16:50:11','2014-01-27 16:51:20','EditableSpamProtectionField5','etert',NULL,1,0,NULL,'a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(33,1,10,0,1,0,'EditableTextField','2014-01-27 10:34:41','2014-01-27 16:51:20','EditableTextField1',NULL,NULL,2,1,'Required','a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:9:\"MinLength\";s:1:\"6\";s:9:\"MaxLength\";s:2:\"50\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(34,2,9,0,1,0,'EditableRadioField','2014-01-27 10:36:04','2014-01-27 16:51:20','EditableRadioField2',NULL,NULL,3,1,'Required','a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(35,4,8,0,1,0,'EditableTextField','2014-01-27 10:37:29','2014-01-27 16:51:20','EditableTextField4',NULL,NULL,4,0,NULL,'a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:9:\"MinLength\";s:0:\"\";s:9:\"MaxLength\";s:0:\"\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(36,5,4,1,1,1,'EditableSpamProtectionField','2014-01-27 16:50:11','2014-01-27 16:51:22','EditableSpamProtectionField5','etert',NULL,1,0,NULL,'a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(37,1,11,1,1,1,'EditableTextField','2014-01-27 10:34:41','2014-01-27 16:51:23','EditableTextField1',NULL,NULL,2,1,'Required','a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:9:\"MinLength\";s:1:\"6\";s:9:\"MaxLength\";s:2:\"50\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(38,2,10,1,1,1,'EditableRadioField','2014-01-27 10:36:04','2014-01-27 16:51:23','EditableRadioField2',NULL,NULL,3,1,'Required','a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(39,4,9,1,1,1,'EditableTextField','2014-01-27 10:37:29','2014-01-27 16:51:23','EditableTextField4',NULL,NULL,4,0,NULL,'a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:9:\"MinLength\";s:0:\"\";s:9:\"MaxLength\";s:0:\"\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(40,1,12,1,1,1,'EditableTextField','2014-01-27 10:34:41','2014-01-27 16:51:45','EditableTextField1',NULL,NULL,2,1,'Required','a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:9:\"MinLength\";s:1:\"6\";s:9:\"MaxLength\";s:2:\"50\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(41,2,11,1,1,1,'EditableRadioField','2014-01-27 10:36:04','2014-01-27 16:51:45','EditableRadioField2',NULL,NULL,3,1,'Required','a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(42,4,10,1,1,1,'EditableTextField','2014-01-27 10:37:29','2014-01-27 16:51:45','EditableTextField4',NULL,NULL,4,0,NULL,'a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:9:\"MinLength\";s:0:\"\";s:9:\"MaxLength\";s:0:\"\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(43,6,1,0,1,0,'EditableSpamProtectionField','2014-01-27 16:52:16','2014-01-27 16:52:16','EditableSpamProtectionField0',NULL,NULL,5,0,NULL,NULL,NULL,NULL,19),(44,1,13,1,1,1,'EditableTextField','2014-01-27 10:34:41','2014-01-27 16:52:27','EditableTextField1',NULL,NULL,2,1,'Required','a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:9:\"MinLength\";s:1:\"6\";s:9:\"MaxLength\";s:2:\"50\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(45,2,12,1,1,1,'EditableRadioField','2014-01-27 10:36:04','2014-01-27 16:52:28','EditableRadioField2',NULL,NULL,3,1,'Required','a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(46,4,11,1,1,1,'EditableTextField','2014-01-27 10:37:29','2014-01-27 16:52:28','EditableTextField4',NULL,NULL,4,0,NULL,'a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:9:\"MinLength\";s:0:\"\";s:9:\"MaxLength\";s:0:\"\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(47,6,2,1,1,1,'EditableSpamProtectionField','2014-01-27 16:52:16','2014-01-27 16:52:28','EditableSpamProtectionField6',NULL,NULL,5,0,NULL,'a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(48,1,14,1,1,1,'EditableTextField','2014-01-27 10:34:41','2014-01-27 16:52:53','EditableTextField1',NULL,NULL,2,1,'Required','a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:9:\"MinLength\";s:1:\"6\";s:9:\"MaxLength\";s:2:\"50\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(49,2,13,1,1,1,'EditableRadioField','2014-01-27 10:36:04','2014-01-27 16:52:53','EditableRadioField2',NULL,NULL,3,1,'Required','a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(50,4,12,1,1,1,'EditableTextField','2014-01-27 10:37:29','2014-01-27 16:52:53','EditableTextField4',NULL,NULL,4,0,NULL,'a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:9:\"MinLength\";s:0:\"\";s:9:\"MaxLength\";s:0:\"\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(51,6,3,1,1,1,'EditableSpamProtectionField','2014-01-27 16:52:16','2014-01-27 16:52:53','EditableSpamProtectionField6','asf',NULL,5,0,NULL,'a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(52,1,15,1,1,1,'EditableTextField','2014-01-27 10:34:41','2014-01-27 16:54:36','EditableTextField1',NULL,NULL,2,1,'Required','a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:9:\"MinLength\";s:1:\"6\";s:9:\"MaxLength\";s:2:\"50\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(53,2,14,1,1,1,'EditableRadioField','2014-01-27 10:36:04','2014-01-27 16:54:37','EditableRadioField2',NULL,NULL,3,1,'Required','a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(54,4,13,1,1,1,'EditableTextField','2014-01-27 10:37:29','2014-01-27 16:54:37','EditableTextField4',NULL,NULL,4,0,NULL,'a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:9:\"MinLength\";s:0:\"\";s:9:\"MaxLength\";s:0:\"\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(55,6,4,1,1,1,'EditableSpamProtectionField','2014-01-27 16:52:16','2014-01-27 16:54:37','EditableSpamProtectionField6','asf',NULL,5,0,NULL,'a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(56,1,16,1,1,1,'EditableTextField','2014-01-27 10:34:41','2014-01-27 16:55:13','EditableTextField1',NULL,NULL,2,1,'Required','a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:9:\"MinLength\";s:1:\"6\";s:9:\"MaxLength\";s:2:\"50\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(57,2,15,1,1,1,'EditableRadioField','2014-01-27 10:36:04','2014-01-27 16:55:13','EditableRadioField2',NULL,NULL,3,1,'Required','a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(58,4,14,1,1,1,'EditableTextField','2014-01-27 10:37:29','2014-01-27 16:55:13','EditableTextField4',NULL,NULL,4,0,NULL,'a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:9:\"MinLength\";s:0:\"\";s:9:\"MaxLength\";s:0:\"\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(59,6,5,1,1,1,'EditableSpamProtectionField','2014-01-27 16:52:16','2014-01-27 16:55:13','EditableSpamProtectionField6',NULL,NULL,5,0,NULL,'a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:9:\"ertetrert\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(60,7,1,0,1,0,'EditableSpamProtectionField','2014-01-27 16:58:42','2014-01-27 16:58:42','EditableSpamProtectionField0',NULL,NULL,6,0,NULL,NULL,NULL,NULL,19),(61,1,17,1,1,1,'EditableTextField','2014-01-27 10:34:41','2014-01-27 16:59:25','EditableTextField1',NULL,NULL,2,1,'Required','a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:9:\"MinLength\";s:1:\"6\";s:9:\"MaxLength\";s:2:\"50\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(62,2,16,1,1,1,'EditableRadioField','2014-01-27 10:36:04','2014-01-27 16:59:25','EditableRadioField2',NULL,NULL,3,1,'Required','a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(63,4,15,1,1,1,'EditableTextField','2014-01-27 10:37:29','2014-01-27 16:59:25','EditableTextField4',NULL,NULL,4,0,NULL,'a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:9:\"MinLength\";s:0:\"\";s:9:\"MaxLength\";s:0:\"\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(64,7,2,1,1,1,'EditableSpamProtectionField','2014-01-27 16:58:42','2014-01-27 16:59:26','EditableSpamProtectionField7','sdf',NULL,6,0,NULL,'a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:2:\"sd\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(65,1,18,1,1,1,'EditableTextField','2014-01-27 10:34:41','2014-01-27 16:59:37','EditableTextField1',NULL,NULL,2,1,'Required','a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:9:\"MinLength\";s:1:\"6\";s:9:\"MaxLength\";s:2:\"50\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(66,2,17,1,1,1,'EditableRadioField','2014-01-27 10:36:04','2014-01-27 16:59:37','EditableRadioField2',NULL,NULL,3,1,'Required','a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(67,4,16,1,1,1,'EditableTextField','2014-01-27 10:37:29','2014-01-27 16:59:38','EditableTextField4',NULL,NULL,4,0,NULL,'a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:0:\"\";s:9:\"MinLength\";s:0:\"\";s:9:\"MaxLength\";s:0:\"\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(68,7,3,1,1,1,'EditableSpamProtectionField','2014-01-27 16:58:42','2014-01-27 16:59:38','EditableSpamProtectionField7','sdf',NULL,6,0,NULL,'a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:2:\"sd\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(69,1,19,1,1,1,'EditableTextField','2014-01-27 10:34:41','2014-01-27 17:00:42','EditableTextField1',NULL,NULL,2,1,'Required','a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:4:\"text\";s:9:\"MinLength\";s:1:\"6\";s:9:\"MaxLength\";s:2:\"50\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(70,2,18,1,1,1,'EditableRadioField','2014-01-27 10:36:04','2014-01-27 17:00:42','EditableRadioField2',NULL,NULL,3,1,'Required','a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:5:\"radio\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(71,4,17,1,1,1,'EditableTextField','2014-01-27 10:37:29','2014-01-27 17:00:42','EditableTextField4',NULL,NULL,4,0,NULL,'a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:8:\"textarea\";s:9:\"MinLength\";s:0:\"\";s:9:\"MaxLength\";s:0:\"\";s:4:\"Rows\";s:2:\"10\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(72,7,4,1,1,1,'EditableSpamProtectionField','2014-01-27 16:58:42','2014-01-27 17:00:42','EditableSpamProtectionField7','sdf',NULL,6,0,NULL,'a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:2:\"sd\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(73,1,20,1,1,1,'EditableTextField','2014-01-27 10:34:41','2014-01-27 17:09:00','EditableTextField1',NULL,NULL,2,1,'Required','a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:4:\"text\";s:9:\"MinLength\";s:1:\"6\";s:9:\"MaxLength\";s:2:\"50\";s:4:\"Rows\";s:1:\"1\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(74,2,19,1,1,1,'EditableRadioField','2014-01-27 10:36:04','2014-01-27 17:09:01','EditableRadioField2',NULL,NULL,3,1,'Required','a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:5:\"radio\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(75,4,18,1,1,1,'EditableTextField','2014-01-27 10:37:29','2014-01-27 17:09:01','EditableTextField4',NULL,NULL,4,0,NULL,'a:0:{}','a:6:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:8:\"textarea\";s:9:\"MinLength\";s:0:\"\";s:9:\"MaxLength\";s:0:\"\";s:4:\"Rows\";s:2:\"10\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19),(76,7,5,1,1,1,'EditableSpamProtectionField','2014-01-27 16:58:42','2014-01-27 17:09:01','EditableSpamProtectionField7','sdf',NULL,6,0,NULL,'a:0:{}','a:3:{s:10:\"ExtraClass\";s:0:\"\";s:10:\"RightTitle\";s:2:\"sd\";s:10:\"ShowOnLoad\";s:4:\"Show\";}',NULL,19);

/*Table structure for table `editableoption` */

DROP TABLE IF EXISTS `editableoption`;

CREATE TABLE `editableoption` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('EditableOption') CHARACTER SET utf8 DEFAULT 'EditableOption',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `editableoption` */

insert  into `editableoption`(`ID`,`ClassName`,`Created`,`LastEdited`,`Name`,`Title`,`Default`,`Sort`,`Version`,`ParentID`) values (1,'EditableOption','2014-01-27 10:42:09','2014-01-27 17:09:01','option1','Man',0,1,15,2),(2,'EditableOption','2014-01-27 10:42:16','2014-01-27 17:09:01','option2','Female',0,2,15,2);

/*Table structure for table `editableoption_live` */

DROP TABLE IF EXISTS `editableoption_live`;

CREATE TABLE `editableoption_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('EditableOption') CHARACTER SET utf8 DEFAULT 'EditableOption',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `editableoption_live` */

insert  into `editableoption_live`(`ID`,`ClassName`,`Created`,`LastEdited`,`Name`,`Title`,`Default`,`Sort`,`Version`,`ParentID`) values (1,'EditableOption','2014-01-27 10:42:09','2014-01-27 17:09:02','option1','Man',0,1,15,2),(2,'EditableOption','2014-01-27 10:42:16','2014-01-27 17:09:02','option2','Female',0,2,15,2);

/*Table structure for table `editableoption_versions` */

DROP TABLE IF EXISTS `editableoption_versions`;

CREATE TABLE `editableoption_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('EditableOption') CHARACTER SET utf8 DEFAULT 'EditableOption',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

/*Data for the table `editableoption_versions` */

insert  into `editableoption_versions`(`ID`,`RecordID`,`Version`,`WasPublished`,`AuthorID`,`PublisherID`,`ClassName`,`Created`,`LastEdited`,`Name`,`Title`,`Default`,`Sort`,`ParentID`) values (1,1,1,0,1,0,'EditableOption','2014-01-27 10:42:09','2014-01-27 10:42:09',NULL,NULL,0,0,0),(2,1,2,0,1,0,'EditableOption','2014-01-27 10:42:09','2014-01-27 10:42:09','option1',NULL,0,1,2),(3,2,1,0,1,0,'EditableOption','2014-01-27 10:42:16','2014-01-27 10:42:16',NULL,NULL,0,0,0),(4,2,2,0,1,0,'EditableOption','2014-01-27 10:42:16','2014-01-27 10:42:16','option2',NULL,0,2,2),(5,1,3,1,1,1,'EditableOption','2014-01-27 10:42:09','2014-01-27 10:42:50','option1','Man',0,1,2),(6,2,3,1,1,1,'EditableOption','2014-01-27 10:42:16','2014-01-27 10:42:50','option2','Female',0,2,2),(7,1,4,1,1,1,'EditableOption','2014-01-27 10:42:09','2014-01-27 16:50:26','option1','Man',0,1,2),(8,2,4,1,1,1,'EditableOption','2014-01-27 10:42:16','2014-01-27 16:50:26','option2','Female',0,2,2),(9,1,5,0,1,0,'EditableOption','2014-01-27 10:42:09','2014-01-27 16:51:20','option1','Man',0,1,2),(10,2,5,0,1,0,'EditableOption','2014-01-27 10:42:16','2014-01-27 16:51:20','option2','Female',0,2,2),(11,1,6,1,1,1,'EditableOption','2014-01-27 10:42:09','2014-01-27 16:51:23','option1','Man',0,1,2),(12,2,6,1,1,1,'EditableOption','2014-01-27 10:42:16','2014-01-27 16:51:23','option2','Female',0,2,2),(13,1,7,1,1,1,'EditableOption','2014-01-27 10:42:09','2014-01-27 16:51:45','option1','Man',0,1,2),(14,2,7,1,1,1,'EditableOption','2014-01-27 10:42:16','2014-01-27 16:51:45','option2','Female',0,2,2),(15,1,8,1,1,1,'EditableOption','2014-01-27 10:42:09','2014-01-27 16:52:28','option1','Man',0,1,2),(16,2,8,1,1,1,'EditableOption','2014-01-27 10:42:16','2014-01-27 16:52:28','option2','Female',0,2,2),(17,1,9,1,1,1,'EditableOption','2014-01-27 10:42:09','2014-01-27 16:52:53','option1','Man',0,1,2),(18,2,9,1,1,1,'EditableOption','2014-01-27 10:42:16','2014-01-27 16:52:53','option2','Female',0,2,2),(19,1,10,1,1,1,'EditableOption','2014-01-27 10:42:09','2014-01-27 16:54:37','option1','Man',0,1,2),(20,2,10,1,1,1,'EditableOption','2014-01-27 10:42:16','2014-01-27 16:54:37','option2','Female',0,2,2),(21,1,11,1,1,1,'EditableOption','2014-01-27 10:42:09','2014-01-27 16:55:13','option1','Man',0,1,2),(22,2,11,1,1,1,'EditableOption','2014-01-27 10:42:16','2014-01-27 16:55:13','option2','Female',0,2,2),(23,1,12,1,1,1,'EditableOption','2014-01-27 10:42:09','2014-01-27 16:59:25','option1','Man',0,1,2),(24,2,12,1,1,1,'EditableOption','2014-01-27 10:42:16','2014-01-27 16:59:25','option2','Female',0,2,2),(25,1,13,1,1,1,'EditableOption','2014-01-27 10:42:09','2014-01-27 16:59:38','option1','Man',0,1,2),(26,2,13,1,1,1,'EditableOption','2014-01-27 10:42:16','2014-01-27 16:59:38','option2','Female',0,2,2),(27,1,14,1,1,1,'EditableOption','2014-01-27 10:42:09','2014-01-27 17:00:42','option1','Man',0,1,2),(28,2,14,1,1,1,'EditableOption','2014-01-27 10:42:16','2014-01-27 17:00:42','option2','Female',0,2,2),(29,1,15,1,1,1,'EditableOption','2014-01-27 10:42:09','2014-01-27 17:09:01','option1','Man',0,1,2),(30,2,15,1,1,1,'EditableOption','2014-01-27 10:42:16','2014-01-27 17:09:01','option2','Female',0,2,2);

/*Table structure for table `errorpage` */

DROP TABLE IF EXISTS `errorpage`;

CREATE TABLE `errorpage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `errorpage` */

insert  into `errorpage`(`ID`,`ErrorCode`) values (4,404),(5,500);

/*Table structure for table `errorpage_live` */

DROP TABLE IF EXISTS `errorpage_live`;

CREATE TABLE `errorpage_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `errorpage_live` */

insert  into `errorpage_live`(`ID`,`ErrorCode`) values (4,404),(5,500);

/*Table structure for table `errorpage_versions` */

DROP TABLE IF EXISTS `errorpage_versions`;

CREATE TABLE `errorpage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `errorpage_versions` */

insert  into `errorpage_versions`(`ID`,`RecordID`,`Version`,`ErrorCode`) values (1,4,1,404),(2,5,1,500);

/*Table structure for table `event` */

DROP TABLE IF EXISTS `event`;

CREATE TABLE `event` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `StartTime` date DEFAULT NULL,
  `EndTime` date DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

/*Data for the table `event` */

insert  into `event`(`ID`,`StartTime`,`EndTime`,`Content`) values (30,'2014-01-09','2014-01-18',NULL),(35,'2014-01-09','2014-01-16',NULL);

/*Table structure for table `event_live` */

DROP TABLE IF EXISTS `event_live`;

CREATE TABLE `event_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `StartTime` date DEFAULT NULL,
  `EndTime` date DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

/*Data for the table `event_live` */

insert  into `event_live`(`ID`,`StartTime`,`EndTime`,`Content`) values (30,'2014-01-09','2014-01-18',NULL),(31,'2014-01-09','2014-01-14',NULL),(32,'2014-01-07','2014-01-22',NULL),(35,'2014-01-09','2014-01-16',NULL);

/*Table structure for table `event_versions` */

DROP TABLE IF EXISTS `event_versions`;

CREATE TABLE `event_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `StartTime` date DEFAULT NULL,
  `EndTime` date DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `event_versions` */

insert  into `event_versions`(`ID`,`RecordID`,`Version`,`StartTime`,`EndTime`,`Content`) values (1,30,1,NULL,NULL,NULL),(2,31,1,'2014-01-09','2014-01-14',NULL),(3,31,2,NULL,NULL,NULL),(4,32,1,'2014-01-07','2014-01-22',NULL),(5,30,2,NULL,NULL,NULL),(6,30,3,NULL,NULL,NULL),(7,30,4,'2014-01-09','2014-01-18',NULL),(8,34,1,'2014-01-11','2014-01-24',NULL),(9,35,1,NULL,NULL,NULL),(10,35,2,'2014-01-09','2014-01-16',NULL);

/*Table structure for table `file` */

DROP TABLE IF EXISTS `file`;

CREATE TABLE `file` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('File','Folder','Image','Image_Cached') CHARACTER SET utf8 DEFAULT 'File',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Filename` mediumtext CHARACTER SET utf8,
  `Content` mediumtext CHARACTER SET utf8,
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `OwnerID` (`OwnerID`),
  KEY `ClassName` (`ClassName`),
  FULLTEXT KEY `SearchFields` (`Filename`,`Title`,`Content`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `file` */

insert  into `file`(`ID`,`ClassName`,`Created`,`LastEdited`,`Name`,`Title`,`Filename`,`Content`,`ShowInSearch`,`ParentID`,`OwnerID`) values (2,'File','2014-01-26 09:46:00','2014-01-26 09:46:00','error-404.html','error-404.html','assets/error-404.html',NULL,1,0,0),(3,'File','2014-01-26 09:46:00','2014-01-26 09:46:00','error-500.html','error-500.html','assets/error-500.html',NULL,1,0,0),(4,'Folder','2014-01-28 09:41:05','2014-01-28 09:41:05','Uploads','Uploads','assets/Uploads/',NULL,1,0,1),(5,'Image','2014-01-28 09:41:06','2014-01-28 09:41:06','Koala.jpg','Koala','assets/Uploads/Koala.jpg',NULL,1,4,1),(6,'Image','2014-01-30 09:51:13','2014-01-30 09:51:13','Hydrangeas.jpg','Hydrangeas','assets/Uploads/Hydrangeas.jpg',NULL,1,4,1),(7,'Image','2014-02-17 09:40:24','2014-02-17 09:40:24','Lighthouse.jpg','Lighthouse','assets/Uploads/Lighthouse.jpg',NULL,1,4,1);

/*Table structure for table `group` */

DROP TABLE IF EXISTS `group`;

CREATE TABLE `group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Group') CHARACTER SET utf8 DEFAULT 'Group',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8,
  `Code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HtmlEditorConfig` mediumtext CHARACTER SET utf8,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `group` */

insert  into `group`(`ID`,`ClassName`,`Created`,`LastEdited`,`Title`,`Description`,`Code`,`Locked`,`Sort`,`HtmlEditorConfig`,`ParentID`) values (1,'Group','2014-01-26 09:45:55','2014-01-26 09:45:55','内容作者',NULL,'content-authors',0,1,NULL,0),(2,'Group','2014-01-26 09:45:55','2014-01-26 09:45:55','管理员',NULL,'administrators',0,0,NULL,0);

/*Table structure for table `group_members` */

DROP TABLE IF EXISTS `group_members`;

CREATE TABLE `group_members` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `group_members` */

insert  into `group_members`(`ID`,`GroupID`,`MemberID`) values (1,2,1);

/*Table structure for table `group_roles` */

DROP TABLE IF EXISTS `group_roles`;

CREATE TABLE `group_roles` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `PermissionRoleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `PermissionRoleID` (`PermissionRoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `group_roles` */

/*Table structure for table `loginattempt` */

DROP TABLE IF EXISTS `loginattempt`;

CREATE TABLE `loginattempt` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('LoginAttempt') CHARACTER SET utf8 DEFAULT 'LoginAttempt',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Status` enum('Success','Failure') CHARACTER SET utf8 DEFAULT 'Success',
  `IP` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `loginattempt` */

/*Table structure for table `member` */

DROP TABLE IF EXISTS `member`;

CREATE TABLE `member` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Member') CHARACTER SET utf8 DEFAULT 'Member',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `FirstName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Surname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `Password` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `RememberLoginToken` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `NumVisit` int(11) NOT NULL DEFAULT '0',
  `LastVisited` datetime DEFAULT NULL,
  `AutoLoginHash` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `AutoLoginExpired` datetime DEFAULT NULL,
  `PasswordEncryption` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Salt` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PasswordExpiry` date DEFAULT NULL,
  `LockedOutUntil` datetime DEFAULT NULL,
  `Locale` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `FailedLoginCount` int(11) NOT NULL DEFAULT '0',
  `DateFormat` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `TimeFormat` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Email` (`Email`(255)),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `member` */

insert  into `member`(`ID`,`ClassName`,`Created`,`LastEdited`,`FirstName`,`Surname`,`Email`,`Password`,`RememberLoginToken`,`NumVisit`,`LastVisited`,`AutoLoginHash`,`AutoLoginExpired`,`PasswordEncryption`,`Salt`,`PasswordExpiry`,`LockedOutUntil`,`Locale`,`FailedLoginCount`,`DateFormat`,`TimeFormat`) values (1,'Member','2014-01-26 09:45:56','2014-02-18 01:16:48','默认管理员',NULL,'guo.t@qq.com','$2y$10$3790b5fb6565b3560f29auE1Tf3WQbHp0fCTntYYgrcPc1z/Ck8V2',NULL,18,'2014-02-18 10:42:13',NULL,NULL,'blowfish','10$3790b5fb6565b3560f29a0',NULL,NULL,'en_US',0,'yyyy-M-d','ahh:mm:ss');

/*Table structure for table `memberpassword` */

DROP TABLE IF EXISTS `memberpassword`;

CREATE TABLE `memberpassword` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('MemberPassword') CHARACTER SET utf8 DEFAULT 'MemberPassword',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Password` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `Salt` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PasswordEncryption` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `memberpassword` */

insert  into `memberpassword`(`ID`,`ClassName`,`Created`,`LastEdited`,`Password`,`Salt`,`PasswordEncryption`,`MemberID`) values (1,'MemberPassword','2014-01-26 09:45:59','2014-01-26 09:45:59','$2y$10$3790b5fb6565b3560f29auE1Tf3WQbHp0fCTntYYgrcPc1z/Ck8V2','10$3790b5fb6565b3560f29a0','blowfish',1),(2,'MemberPassword','2014-01-26 18:45:43','2014-01-26 18:45:43','$2y$10$3790b5fb6565b3560f29auE1Tf3WQbHp0fCTntYYgrcPc1z/Ck8V2','10$3790b5fb6565b3560f29a0','blowfish',1);

/*Table structure for table `mentor` */

DROP TABLE IF EXISTS `mentor`;

CREATE TABLE `mentor` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Mentor') CHARACTER SET utf8 DEFAULT 'Mentor',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `mentor` */

insert  into `mentor`(`ID`,`ClassName`,`Created`,`LastEdited`,`Name`) values (1,'Mentor','2014-02-18 01:37:21','2014-02-18 01:37:33','Sean'),(2,'Mentor','2014-02-18 01:37:53','2014-02-18 01:37:53','Ingo'),(3,'Mentor','2014-02-18 01:45:56','2014-02-18 01:45:56','Mark'),(4,'Mentor','2014-02-18 01:46:09','2014-02-18 01:46:09','Sean');

/*Table structure for table `permission` */

DROP TABLE IF EXISTS `permission`;

CREATE TABLE `permission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Permission') CHARACTER SET utf8 DEFAULT 'Permission',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Arg` int(11) NOT NULL DEFAULT '0',
  `Type` int(11) NOT NULL DEFAULT '1',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `Code` (`Code`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `permission` */

insert  into `permission`(`ID`,`ClassName`,`Created`,`LastEdited`,`Code`,`Arg`,`Type`,`GroupID`) values (1,'Permission','2014-01-26 09:45:55','2014-01-26 09:45:55','CMS_ACCESS_CMSMain',0,1,1),(2,'Permission','2014-01-26 09:45:55','2014-01-26 09:45:55','CMS_ACCESS_AssetAdmin',0,1,1),(3,'Permission','2014-01-26 09:45:55','2014-01-26 09:45:55','CMS_ACCESS_ReportAdmin',0,1,1),(4,'Permission','2014-01-26 09:45:55','2014-01-26 09:45:55','SITETREE_REORGANISE',0,1,1),(5,'Permission','2014-01-26 09:45:56','2014-01-26 09:45:56','ADMIN',0,1,2);

/*Table structure for table `permissionrole` */

DROP TABLE IF EXISTS `permissionrole`;

CREATE TABLE `permissionrole` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PermissionRole') CHARACTER SET utf8 DEFAULT 'PermissionRole',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `OnlyAdminCanApply` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `permissionrole` */

/*Table structure for table `permissionrolecode` */

DROP TABLE IF EXISTS `permissionrolecode`;

CREATE TABLE `permissionrolecode` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PermissionRoleCode') CHARACTER SET utf8 DEFAULT 'PermissionRoleCode',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `RoleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RoleID` (`RoleID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `permissionrolecode` */

/*Table structure for table `project_mentors` */

DROP TABLE IF EXISTS `project_mentors`;

CREATE TABLE `project_mentors` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ProjectID` int(11) NOT NULL DEFAULT '0',
  `MentorID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ProjectID` (`ProjectID`),
  KEY `MentorID` (`MentorID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `project_mentors` */

insert  into `project_mentors`(`ID`,`ProjectID`,`MentorID`) values (1,41,1),(2,41,2),(3,42,3),(4,42,4);

/*Table structure for table `redirectorpage` */

DROP TABLE IF EXISTS `redirectorpage`;

CREATE TABLE `redirectorpage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `redirectorpage` */

/*Table structure for table `redirectorpage_live` */

DROP TABLE IF EXISTS `redirectorpage_live`;

CREATE TABLE `redirectorpage_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `redirectorpage_live` */

/*Table structure for table `redirectorpage_versions` */

DROP TABLE IF EXISTS `redirectorpage_versions`;

CREATE TABLE `redirectorpage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `redirectorpage_versions` */

/*Table structure for table `siteconfig` */

DROP TABLE IF EXISTS `siteconfig`;

CREATE TABLE `siteconfig` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SiteConfig') CHARACTER SET utf8 DEFAULT 'SiteConfig',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Tagline` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Theme` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'LoggedInUsers',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `siteconfig` */

insert  into `siteconfig`(`ID`,`ClassName`,`Created`,`LastEdited`,`Title`,`Tagline`,`Theme`,`CanViewType`,`CanEditType`,`CanCreateTopLevelType`) values (1,'SiteConfig','2014-01-26 09:45:56','2014-01-26 18:50:09','您的站点名称','这里是您的标语',NULL,'Anyone','LoggedInUsers','LoggedInUsers');

/*Table structure for table `siteconfig_createtoplevelgroups` */

DROP TABLE IF EXISTS `siteconfig_createtoplevelgroups`;

CREATE TABLE `siteconfig_createtoplevelgroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `siteconfig_createtoplevelgroups` */

/*Table structure for table `siteconfig_editorgroups` */

DROP TABLE IF EXISTS `siteconfig_editorgroups`;

CREATE TABLE `siteconfig_editorgroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `siteconfig_editorgroups` */

/*Table structure for table `siteconfig_viewergroups` */

DROP TABLE IF EXISTS `siteconfig_viewergroups`;

CREATE TABLE `siteconfig_viewergroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `siteconfig_viewergroups` */

/*Table structure for table `sitetree` */

DROP TABLE IF EXISTS `sitetree`;

CREATE TABLE `sitetree` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Page','ErrorPage','BlogEntry','BlogHolder','UserDefinedForm','ArticleHolder','ArticlePage','HomePage','Event','EventHolder','StaffHolder','StaffPage','Project','ProjectsHolder','SiteTree','BlogTree','RedirectorPage','VirtualPage') CHARACTER SET utf8 DEFAULT 'Page',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`),
  FULLTEXT KEY `SearchFields` (`Title`,`MenuTitle`,`Content`,`MetaDescription`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

/*Data for the table `sitetree` */

insert  into `sitetree`(`ID`,`ClassName`,`Created`,`LastEdited`,`URLSegment`,`Title`,`MenuTitle`,`Content`,`MetaDescription`,`ExtraMeta`,`ShowInMenus`,`ShowInSearch`,`Sort`,`HasBrokenFile`,`HasBrokenLink`,`ReportClass`,`CanViewType`,`CanEditType`,`Version`,`ParentID`) values (2,'Page','2014-01-26 09:45:57','2014-01-26 09:46:00','page-0','关于我们',NULL,'<p>您可以使用您自己的内容填充该页面，或者删除它并创建您自己的页面。<br /></p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',1,0),(3,'Page','2014-01-26 09:45:57','2014-01-26 09:46:00','page-2','联络我们',NULL,'<p>您可以使用您自己的内容填充该页面，或者删除它并创建您自己的页面。<br /></p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',1,0),(4,'ErrorPage','2014-01-26 09:45:57','2014-01-26 09:46:00','page-','未发现页面',NULL,'<p>对不起，您正在尝试访问不存在的页面。</p><p>请检查您想要访问的URL的拼写并再试一次。</p>',NULL,NULL,0,0,5,0,0,NULL,'Inherit','Inherit',1,0),(5,'ErrorPage','2014-01-26 09:45:58','2014-01-26 09:46:00','page--2','服务器错误',NULL,'<p>对不起，处理您的请求时发生错误。</p>',NULL,NULL,0,0,6,0,0,NULL,'Inherit','Inherit',1,0),(7,'BlogHolder','2014-01-26 19:00:28','2014-01-26 19:21:32','blog','Blog',NULL,NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',2,0),(8,'BlogEntry','2014-01-26 19:00:30','2014-01-26 19:20:48','sample-blog-entry','SilverStripe blog module successfully installed','所得税地方','<p>Congratulations, the SilverStripe blog module has been successfully installed. This blog entry can be safely deleted. You can configure aspects of your blog in <a href=\"admin\">the CMS</a>.</p>\n<p>许多实打实的</p>',NULL,NULL,0,1,1,0,0,NULL,'Inherit','Inherit',5,7),(19,'UserDefinedForm','2014-01-27 10:10:16','2014-01-27 17:09:01','user-defined-form','User Defined Form','Defined Form','<p>Form text</p>',NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',5,0),(20,'ArticleHolder','2014-01-27 17:25:18','2014-01-28 07:39:56','news','News',NULL,NULL,NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',3,0),(26,'ArticlePage','2014-01-28 07:18:13','2014-01-28 09:41:19','new-article-page','New Article Page','New Article Page1','<p>Finally, we return the fields to the CMS. If we flush the cache (by adding ?flush=1 at the end of the URL), we will be able to edit the fields in the CMS.</p>\n<p>Now that we have created our page types, let\'s add some content. Go into the CMS and create an<em>ArticleHolder</em> page named \"News\", then create a few <em>ArticlePage</em>\'s within it.<img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImage600450-Koala.jpg\" alt=\"Koala\" width=\"600\" height=\"450\"></p>\n<p>Finally, we return the fields to the CMS. If we flush the cache (by adding ?flush=1 at the end of the URL), we will be able to edit the fields in the CMS.</p>\n<p>Now that we have created our page types, let\'s add some content. Go into the CMS and create an<em>ArticleHolder</em> page named \"News\", then create a few <em>ArticlePage</em>\'s within it.</p>\n<p>Finally, we return the fields to the CMS. If we flush the cache (by adding ?flush=1 at the end of the URL), we will be able to edit the fields in the CMS.</p>\n<p>Now that we have created our page types, let\'s add some content. Go into the CMS and create an<em>ArticleHolder</em> page named \"News\", then create a few <em>ArticlePage</em>\'s within it.</p>\n<p>Finally, we return the fields to the CMS. If we flush the cache (by adding ?flush=1 at the end of the URL), we will be able to edit the fields in the CMS.</p>\n<p>Now that we have created our page types, let\'s add some content. Go into the CMS and create an<em>ArticleHolder</em> page named \"News\", then create a few <em>ArticlePage</em>\'s within it.</p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',5,20),(27,'ArticlePage','2014-01-28 09:41:30','2014-01-28 09:42:15','new-article-page2','New Article Page2',NULL,'<p>qwqweqweprivatestatic$icon= \"framework/docs/en/tutorials/_images/treeicons/news-file.gif\";privatestatic$icon= \"framework/docs/en/tutorials/_images/treeicons/news-file.gif\";<img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImage600450-Koala.jpg\" alt=\"Koala\" width=\"600\" height=\"450\"></p>',NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',2,20),(28,'HomePage','2014-01-29 12:00:43','2014-01-29 12:03:33','new-home-page','首页',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',3,0),(30,'Event','2014-01-29 12:24:55','2014-01-29 13:18:20','new-event','New Event',NULL,'<p>fsddddddddddddddddddd</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',4,33),(33,'EventHolder','2014-01-29 13:15:44','2014-01-29 13:16:00','new-event-holder','New Event Holder',NULL,NULL,NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',1,0),(35,'Event','2014-01-29 13:19:28','2014-01-29 13:19:40','new-event2','New Event2',NULL,'<p>wwwwwwwwwwwwww</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',2,33),(36,'ArticlePage','2014-01-30 09:50:29','2014-01-30 09:51:27','new-article-page3','New Article Page3',NULL,'<p><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImage600450-Hydrangeas.jpg\" alt=\"Hydrangeas\" width=\"600\" height=\"450\">kjllkkkkkk</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',2,20),(37,'Page','2014-01-30 11:28:24','2014-01-30 11:28:24','home','首页',NULL,'<p>欢迎来到SilverStripe！这是默认首页。您可以通过打开<a href=\"admin/\">内容管理系统</a>修改该页面。您现在可以访问<a href=\"http://doc.silverstripe.org\">开发者文档</a>，或者从<a href=\"http://doc.silverstripe.org/doku.php?id=tutorials\">教程</a>开始。</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',1,0),(38,'StaffHolder','2014-02-17 09:34:10','2014-02-17 09:35:35','new-staff-holder','New Staff Holder',NULL,NULL,NULL,NULL,1,1,12,0,0,NULL,'Inherit','Inherit',1,0),(39,'StaffPage','2014-02-17 09:39:52','2014-02-17 09:41:01','new-staff-page','New Staff Page',NULL,'<p>sdfsdfsdfffffffffffffffffffffffffffffffffffffewrwerwersdfsdfsdfffffffffffffffffffffffffffffffffffffewrwerwersdfsdfsdfffffffffffffffffffffffffffffffffffffewrwerwersdfsdfsdfffffffffffffffffffffffffffffffffffffewrwerwersdfsdfsdff</p>\n<p>fffffffffffffffffffffffffffffffffffewrwerwersdfsdfsdfffffffffffffffffffffffffffffffffffffewrwerwersdfsdfsdfffffffffffffffffffffffffffffffffffffewrwerwersdfsdfsdfffffffffffffffffffffffffffffffffffffewrwerwersdfsdfsdffffffffffffffffffffffffffffffff</p>\n<p>fffffewrwerwersdfsdfsdfffffffffffffffffffffffffffffffffffffewrwerwer</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',2,38),(40,'ProjectsHolder','2014-02-18 01:18:28','2014-02-18 01:18:45','new-projects-holder','New Projects Holder',NULL,NULL,NULL,NULL,1,1,13,0,0,NULL,'Inherit','Inherit',1,0),(41,'Project','2014-02-18 01:19:02','2014-02-18 01:27:46','new-project','Developer Toolbar',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',2,40),(42,'Project','2014-02-18 01:41:20','2014-02-18 01:45:29','behaviour-testing','Behaviour Testing',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',2,40);

/*Table structure for table `sitetree_editorgroups` */

DROP TABLE IF EXISTS `sitetree_editorgroups`;

CREATE TABLE `sitetree_editorgroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sitetree_editorgroups` */

/*Table structure for table `sitetree_imagetracking` */

DROP TABLE IF EXISTS `sitetree_imagetracking`;

CREATE TABLE `sitetree_imagetracking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `FileID` (`FileID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `sitetree_imagetracking` */

insert  into `sitetree_imagetracking`(`ID`,`SiteTreeID`,`FileID`,`FieldName`) values (3,26,5,'Content'),(6,27,5,'Content'),(9,36,6,'Content');

/*Table structure for table `sitetree_linktracking` */

DROP TABLE IF EXISTS `sitetree_linktracking`;

CREATE TABLE `sitetree_linktracking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `ChildID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `ChildID` (`ChildID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sitetree_linktracking` */

/*Table structure for table `sitetree_live` */

DROP TABLE IF EXISTS `sitetree_live`;

CREATE TABLE `sitetree_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Page','ErrorPage','BlogEntry','BlogHolder','UserDefinedForm','ArticleHolder','ArticlePage','HomePage','Event','EventHolder','StaffHolder','StaffPage','Project','ProjectsHolder','SiteTree','BlogTree','RedirectorPage','VirtualPage') CHARACTER SET utf8 DEFAULT 'Page',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`),
  FULLTEXT KEY `SearchFields` (`Title`,`MenuTitle`,`Content`,`MetaDescription`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

/*Data for the table `sitetree_live` */

insert  into `sitetree_live`(`ID`,`ClassName`,`Created`,`LastEdited`,`URLSegment`,`Title`,`MenuTitle`,`Content`,`MetaDescription`,`ExtraMeta`,`ShowInMenus`,`ShowInSearch`,`Sort`,`HasBrokenFile`,`HasBrokenLink`,`ReportClass`,`CanViewType`,`CanEditType`,`Version`,`ParentID`) values (2,'Page','2014-01-26 09:45:57','2014-01-26 09:45:57','page-0','关于我们',NULL,'<p>您可以使用您自己的内容填充该页面，或者删除它并创建您自己的页面。<br /></p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',1,0),(3,'Page','2014-01-26 09:45:57','2014-01-26 09:45:57','page-2','联络我们',NULL,'<p>您可以使用您自己的内容填充该页面，或者删除它并创建您自己的页面。<br /></p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',1,0),(4,'ErrorPage','2014-01-26 09:45:57','2014-01-26 09:56:35','page-','未发现页面',NULL,'<p>对不起，您正在尝试访问不存在的页面。</p><p>请检查您想要访问的URL的拼写并再试一次。</p>',NULL,NULL,0,0,5,0,0,NULL,'Inherit','Inherit',1,0),(5,'ErrorPage','2014-01-26 09:45:58','2014-01-26 09:45:59','page--2','服务器错误',NULL,'<p>对不起，处理您的请求时发生错误。</p>',NULL,NULL,0,0,6,0,0,NULL,'Inherit','Inherit',1,0),(7,'BlogHolder','2014-01-26 19:00:28','2014-01-26 19:21:33','blog','Blog',NULL,NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',2,0),(8,'BlogEntry','2014-01-26 19:00:30','2014-01-26 19:20:48','sample-blog-entry','SilverStripe blog module successfully installed','所得税地方','<p>Congratulations, the SilverStripe blog module has been successfully installed. This blog entry can be safely deleted. You can configure aspects of your blog in <a href=\"admin\">the CMS</a>.</p>\n<p>许多实打实的</p>',NULL,NULL,0,1,1,0,0,NULL,'Inherit','Inherit',5,7),(19,'UserDefinedForm','2014-01-27 10:10:16','2014-01-27 17:09:03','user-defined-form','User Defined Form','Defined Form','<p>Form text</p>',NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',5,0),(20,'ArticleHolder','2014-01-27 17:25:18','2014-01-28 07:39:57','news','News',NULL,NULL,NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',3,0),(26,'ArticlePage','2014-01-28 07:18:13','2014-01-28 09:41:19','new-article-page','New Article Page','New Article Page1','<p>Finally, we return the fields to the CMS. If we flush the cache (by adding ?flush=1 at the end of the URL), we will be able to edit the fields in the CMS.</p>\n<p>Now that we have created our page types, let\'s add some content. Go into the CMS and create an<em>ArticleHolder</em> page named \"News\", then create a few <em>ArticlePage</em>\'s within it.<img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImage600450-Koala.jpg\" alt=\"Koala\" width=\"600\" height=\"450\"></p>\n<p>Finally, we return the fields to the CMS. If we flush the cache (by adding ?flush=1 at the end of the URL), we will be able to edit the fields in the CMS.</p>\n<p>Now that we have created our page types, let\'s add some content. Go into the CMS and create an<em>ArticleHolder</em> page named \"News\", then create a few <em>ArticlePage</em>\'s within it.</p>\n<p>Finally, we return the fields to the CMS. If we flush the cache (by adding ?flush=1 at the end of the URL), we will be able to edit the fields in the CMS.</p>\n<p>Now that we have created our page types, let\'s add some content. Go into the CMS and create an<em>ArticleHolder</em> page named \"News\", then create a few <em>ArticlePage</em>\'s within it.</p>\n<p>Finally, we return the fields to the CMS. If we flush the cache (by adding ?flush=1 at the end of the URL), we will be able to edit the fields in the CMS.</p>\n<p>Now that we have created our page types, let\'s add some content. Go into the CMS and create an<em>ArticleHolder</em> page named \"News\", then create a few <em>ArticlePage</em>\'s within it.</p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',5,20),(27,'ArticlePage','2014-01-28 09:41:30','2014-01-28 09:42:16','new-article-page2','New Article Page2',NULL,'<p>qwqweqweprivatestatic$icon= \"framework/docs/en/tutorials/_images/treeicons/news-file.gif\";privatestatic$icon= \"framework/docs/en/tutorials/_images/treeicons/news-file.gif\";<img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImage600450-Koala.jpg\" alt=\"Koala\" width=\"600\" height=\"450\"></p>',NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',2,20),(28,'HomePage','2014-01-29 12:00:43','2014-01-29 12:03:33','new-home-page','首页',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',3,0),(30,'Event','2014-01-29 12:24:55','2014-01-29 13:18:20','new-event','New Event',NULL,'<p>fsddddddddddddddddddd</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',4,33),(33,'EventHolder','2014-01-29 13:15:44','2014-01-29 13:16:00','new-event-holder','New Event Holder',NULL,NULL,NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',1,0),(35,'Event','2014-01-29 13:19:28','2014-01-29 13:19:41','new-event2','New Event2',NULL,'<p>wwwwwwwwwwwwww</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',2,33),(36,'ArticlePage','2014-01-30 09:50:29','2014-01-30 09:51:28','new-article-page3','New Article Page3',NULL,'<p><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImage600450-Hydrangeas.jpg\" alt=\"Hydrangeas\" width=\"600\" height=\"450\">kjllkkkkkk</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',2,20),(37,'Page','2014-01-30 11:28:24','2014-01-30 11:28:24','home','首页',NULL,'<p>欢迎来到SilverStripe！这是默认首页。您可以通过打开<a href=\"admin/\">内容管理系统</a>修改该页面。您现在可以访问<a href=\"http://doc.silverstripe.org\">开发者文档</a>，或者从<a href=\"http://doc.silverstripe.org/doku.php?id=tutorials\">教程</a>开始。</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',1,0),(38,'StaffHolder','2014-02-17 09:34:10','2014-02-17 09:35:35','new-staff-holder','New Staff Holder',NULL,NULL,NULL,NULL,1,1,12,0,0,NULL,'Inherit','Inherit',1,0),(39,'StaffPage','2014-02-17 09:39:52','2014-02-17 09:41:01','new-staff-page','New Staff Page',NULL,'<p>sdfsdfsdfffffffffffffffffffffffffffffffffffffewrwerwersdfsdfsdfffffffffffffffffffffffffffffffffffffewrwerwersdfsdfsdfffffffffffffffffffffffffffffffffffffewrwerwersdfsdfsdfffffffffffffffffffffffffffffffffffffewrwerwersdfsdfsdff</p>\n<p>fffffffffffffffffffffffffffffffffffewrwerwersdfsdfsdfffffffffffffffffffffffffffffffffffffewrwerwersdfsdfsdfffffffffffffffffffffffffffffffffffffewrwerwersdfsdfsdfffffffffffffffffffffffffffffffffffffewrwerwersdfsdfsdffffffffffffffffffffffffffffffff</p>\n<p>fffffewrwerwersdfsdfsdfffffffffffffffffffffffffffffffffffffewrwerwer</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',2,38),(40,'ProjectsHolder','2014-02-18 01:18:28','2014-02-18 01:18:45','new-projects-holder','New Projects Holder',NULL,NULL,NULL,NULL,1,1,13,0,0,NULL,'Inherit','Inherit',1,0),(41,'Project','2014-02-18 01:19:02','2014-02-18 01:27:46','new-project','Developer Toolbar',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',2,40),(42,'Project','2014-02-18 01:41:20','2014-02-18 01:45:29','behaviour-testing','Behaviour Testing',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',2,40);

/*Table structure for table `sitetree_versions` */

DROP TABLE IF EXISTS `sitetree_versions`;

CREATE TABLE `sitetree_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('Page','ErrorPage','BlogEntry','BlogHolder','UserDefinedForm','ArticleHolder','ArticlePage','HomePage','Event','EventHolder','StaffHolder','StaffPage','Project','ProjectsHolder','SiteTree','BlogTree','RedirectorPage','VirtualPage') CHARACTER SET utf8 DEFAULT 'Page',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`),
  FULLTEXT KEY `SearchFields` (`Title`,`MenuTitle`,`Content`,`MetaDescription`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;

/*Data for the table `sitetree_versions` */

insert  into `sitetree_versions`(`ID`,`RecordID`,`Version`,`WasPublished`,`AuthorID`,`PublisherID`,`ClassName`,`Created`,`LastEdited`,`URLSegment`,`Title`,`MenuTitle`,`Content`,`MetaDescription`,`ExtraMeta`,`ShowInMenus`,`ShowInSearch`,`Sort`,`HasBrokenFile`,`HasBrokenLink`,`ReportClass`,`CanViewType`,`CanEditType`,`ParentID`) values (1,1,1,1,0,0,'Page','2014-01-26 09:45:56','2014-01-26 09:45:56','home','首页',NULL,'<p>欢迎来到SilverStripe！这是默认首页。您可以通过打开<a href=\"admin/\">内容管理系统</a>修改该页面。您现在可以访问<a href=\"http://doc.silverstripe.org\">开发者文档</a>，或者从<a href=\"http://doc.silverstripe.org/doku.php?id=tutorials\">教程</a>开始。</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),(2,2,1,1,0,0,'Page','2014-01-26 09:45:57','2014-01-26 09:45:57','page-0','关于我们',NULL,'<p>您可以使用您自己的内容填充该页面，或者删除它并创建您自己的页面。<br /></p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',0),(3,3,1,1,0,0,'Page','2014-01-26 09:45:57','2014-01-26 09:45:57','page-2','联络我们',NULL,'<p>您可以使用您自己的内容填充该页面，或者删除它并创建您自己的页面。<br /></p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',0),(4,4,1,1,0,1,'ErrorPage','2014-01-26 09:45:57','2014-01-26 09:45:57','page-','未发现页面',NULL,'<p>对不起，您正在尝试访问不存在的页面。</p><p>请检查您想要访问的URL的拼写并再试一次。</p>',NULL,NULL,0,0,4,0,0,NULL,'Inherit','Inherit',0),(5,5,1,1,0,0,'ErrorPage','2014-01-26 09:45:58','2014-01-26 09:45:58','page--2','服务器错误',NULL,'<p>对不起，处理您的请求时发生错误。</p>',NULL,NULL,0,0,5,0,0,NULL,'Inherit','Inherit',0),(6,6,1,0,1,0,'Page','2014-01-26 18:51:44','2014-01-26 18:51:44','page-3','新建页面',NULL,NULL,NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),(7,7,1,1,1,1,'BlogHolder','2014-01-26 19:00:28','2014-01-26 19:00:28','blog','Blog',NULL,NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',0),(8,8,1,1,1,1,'BlogEntry','2014-01-26 19:00:30','2014-01-26 19:00:30','sample-blog-entry','SilverStripe blog module successfully installed',NULL,'<p>Congratulations, the SilverStripe blog module has been successfully installed. This blog entry can be safely deleted. You can configure aspects of your blog in <a href=\"admin\">the CMS</a>.</p>',NULL,NULL,0,1,0,0,0,NULL,'Inherit','Inherit',7),(9,6,2,1,1,1,'Page','2014-01-26 18:51:44','2014-01-26 19:14:51','page-3','User Defined Form',NULL,NULL,NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),(10,8,2,1,1,1,'BlogEntry','2014-01-26 19:00:30','2014-01-26 19:19:23','sample-blog-entry','SilverStripe blog module successfully installed',NULL,'<p>Congratulations, the SilverStripe blog module has been successfully installed. This blog entry can be safely deleted. You can configure aspects of your blog in <a href=\"admin\">the CMS</a>.</p>许多实打实的     ',NULL,NULL,0,1,0,0,0,NULL,'Inherit','Inherit',7),(11,8,3,0,1,0,'BlogEntry','2014-01-26 19:00:30','2014-01-26 19:20:33','sample-blog-entry','SilverStripe blog module successfully installed',NULL,'<p>Congratulations, the SilverStripe blog module has been successfully installed. This blog entry can be safely deleted. You can configure aspects of your blog in <a href=\"admin\">the CMS</a>.</p>许多实打实的     ',NULL,NULL,0,1,1,0,0,NULL,'Inherit','Inherit',7),(12,8,4,1,1,1,'BlogEntry','2014-01-26 19:00:30','2014-01-26 19:20:33','sample-blog-entry','SilverStripe blog module successfully installed',NULL,'<p>Congratulations, the SilverStripe blog module has been successfully installed. This blog entry can be safely deleted. You can configure aspects of your blog in <a href=\"admin\">the CMS</a>.</p>\n<p>许多实打实的</p>',NULL,NULL,0,1,1,0,0,NULL,'Inherit','Inherit',7),(13,8,5,1,1,1,'BlogEntry','2014-01-26 19:00:30','2014-01-26 19:20:48','sample-blog-entry','SilverStripe blog module successfully installed','所得税地方','<p>Congratulations, the SilverStripe blog module has been successfully installed. This blog entry can be safely deleted. You can configure aspects of your blog in <a href=\"admin\">the CMS</a>.</p>\n<p>许多实打实的</p>',NULL,NULL,0,1,1,0,0,NULL,'Inherit','Inherit',7),(14,7,2,1,1,1,'BlogHolder','2014-01-26 19:00:28','2014-01-26 19:21:32','blog','Blog',NULL,NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',0),(15,9,1,0,1,0,'UserDefinedForm','2014-01-26 19:23:31','2014-01-26 19:23:31','page-4','新建用户定义表格',NULL,'$UserDefinedForm',NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',0),(16,10,1,0,1,0,'UserDefinedForm','2014-01-26 19:23:41','2014-01-26 19:23:41','page-5','新建用户定义表格',NULL,'$UserDefinedForm',NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',0),(17,11,1,0,1,0,'UserDefinedForm','2014-01-26 19:24:59','2014-01-26 19:24:59','page-6','新建用户定义表格',NULL,'$UserDefinedForm',NULL,NULL,1,1,10,0,0,NULL,'Inherit','Inherit',0),(18,12,1,0,1,0,'UserDefinedForm','2014-01-26 19:25:33','2014-01-26 19:25:33','page-0','新建用户定义表格',NULL,'$UserDefinedForm',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',6),(19,6,3,1,1,1,'UserDefinedForm','2014-01-26 18:51:44','2014-01-26 19:26:33','page-3','User Defined Form',NULL,NULL,NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),(20,12,2,1,1,1,'UserDefinedForm','2014-01-26 19:25:33','2014-01-27 08:24:36','page-0','新建用户定义表格',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',6),(21,12,3,1,1,1,'UserDefinedForm','2014-01-26 19:25:33','2014-01-27 08:32:56','page-0','新建用户定义表格',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',6),(22,12,4,1,1,1,'UserDefinedForm','2014-01-26 19:25:33','2014-01-27 08:34:06','test-userform-001','test userform 001',NULL,'<p>test userform001</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',6),(23,12,5,1,1,1,'UserDefinedForm','2014-01-26 19:25:33','2014-01-27 08:35:46','test-userform-001','test userform 001',NULL,'<p>test userform001<span>$UserDefinedForm</span></p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',6),(24,12,6,1,1,1,'UserDefinedForm','2014-01-26 19:25:33','2014-01-27 08:36:08','test-userform-001','test userform 001',NULL,'<p><span>$UserDefinedForm</span></p>\n<p><span>test userform001</span></p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',6),(25,12,7,1,1,1,'UserDefinedForm','2014-01-26 19:25:33','2014-01-27 08:37:08','test-userform-001','test userform 001',NULL,'<p>$UserDefinedForm</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',6),(26,6,4,1,1,1,'UserDefinedForm','2014-01-26 18:51:44','2014-01-27 08:53:19','page-3','User Defined Form',NULL,NULL,NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),(27,10,2,1,1,1,'UserDefinedForm','2014-01-26 19:23:41','2014-01-27 09:08:15','page-5','新建用户定义表格',NULL,'<p>$UserDefinedForm</p>',NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',0),(28,13,1,0,1,0,'Page','2014-01-27 09:08:44','2014-01-27 09:08:44','page-0','新建页面',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',6),(29,14,1,0,1,0,'UserDefinedForm','2014-01-27 09:41:04','2014-01-27 09:41:04','new-user-defined-form','New User Defined Form',NULL,'$UserDefinedForm',NULL,NULL,1,1,10,0,0,NULL,'Inherit','Inherit',0),(30,15,1,0,1,0,'UserDefinedForm','2014-01-27 09:42:47','2014-01-27 09:42:47','new-user-defined-form','New User Defined Form',NULL,'$UserDefinedForm',NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',0),(31,15,2,0,1,0,'UserDefinedForm','2014-01-27 09:42:47','2014-01-27 09:42:57','new-user-defined-form','New User Defined Form',NULL,'<p>$UserDefinedForm</p>',NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',0),(32,15,3,0,1,0,'UserDefinedForm','2014-01-27 09:42:47','2014-01-27 09:43:46','new-user-defined-form','New User Defined Form',NULL,'<p>$UserDefinedForm</p>',NULL,NULL,1,1,8,0,0,NULL,'Anyone','Inherit',0),(33,16,1,0,1,0,'UserDefinedForm','2014-01-27 09:50:23','2014-01-27 09:50:23','new-user-defined-form-2','New User Defined Form',NULL,'$UserDefinedForm',NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',0),(34,17,1,0,1,0,'UserDefinedForm','2014-01-27 09:57:24','2014-01-27 09:57:24','new-user-defined-form','New User Defined Form',NULL,'$UserDefinedForm',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',16),(35,18,1,0,1,0,'UserDefinedForm','2014-01-27 09:57:51','2014-01-27 09:57:51','new-user-defined-form-3','New User Defined Form',NULL,'$UserDefinedForm',NULL,NULL,1,1,10,0,0,NULL,'Inherit','Inherit',0),(36,18,2,0,1,0,'UserDefinedForm','2014-01-27 09:57:51','2014-01-27 09:58:09','new-user-defined-form-3','New User Defined Form',NULL,'<p>$UserDefinedForm</p>',NULL,NULL,1,1,10,0,0,NULL,'Inherit','Inherit',0),(37,19,1,0,1,0,'UserDefinedForm','2014-01-27 10:10:16','2014-01-27 10:10:16','new-user-defined-form','New User Defined Form',NULL,'$UserDefinedForm',NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',0),(38,19,2,1,1,1,'UserDefinedForm','2014-01-27 10:10:16','2014-01-27 10:10:25','new-user-defined-form','New User Defined Form',NULL,'<p>$UserDefinedForm</p>',NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',0),(39,19,3,0,1,0,'UserDefinedForm','2014-01-27 10:10:16','2014-01-27 10:39:00','new-user-defined-form','New User Defined Form',NULL,'<p>Form text</p>',NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',0),(40,19,4,0,1,0,'UserDefinedForm','2014-01-27 10:10:16','2014-01-27 10:39:17','user-defined-form','User Defined Form','Defined Form','<p>Form text</p>',NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',0),(41,19,5,1,1,1,'UserDefinedForm','2014-01-27 10:10:16','2014-01-27 10:40:04','user-defined-form','User Defined Form','Defined Form','<p>Form text</p>',NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',0),(42,20,1,0,1,0,'Page','2014-01-27 17:25:18','2014-01-27 17:25:18','new-page','New Page',NULL,NULL,NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',0),(43,20,2,1,1,1,'Page','2014-01-27 17:25:18','2014-01-27 17:25:40','news','News',NULL,NULL,NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',0),(44,21,1,0,1,0,'Page','2014-01-27 17:25:18','2014-01-27 17:26:22','news-2','News',NULL,NULL,NULL,NULL,1,1,10,0,0,NULL,'Inherit','Inherit',20),(45,21,2,0,1,0,'Page','2014-01-27 17:25:18','2014-01-27 17:26:22','news-2','News',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',20),(46,21,3,1,1,1,'Page','2014-01-27 17:25:18','2014-01-27 17:26:36','news1','News1',NULL,'<p>News1News1News1News1News1News1News1News1News1News1News1News1News1News1</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',20),(47,22,1,1,1,1,'Page','2014-01-27 17:25:18','2014-01-27 17:27:04','news2','News2',NULL,'<p>News2News2News2News2News2News2News2News2News2News2News2News2</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',20),(48,23,1,1,1,1,'Page','2014-01-27 17:25:18','2014-01-27 17:27:39','news3','News3',NULL,'<p>News3News3News3News3News3News3News3News3News3News3</p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',20),(49,24,1,0,1,0,'ArticleHolder','2014-01-28 07:13:23','2014-01-28 07:13:23','new-article-holder','New Article Holder',NULL,NULL,NULL,NULL,1,1,10,0,0,NULL,'Inherit','Inherit',0),(50,25,1,0,1,0,'Page','2014-01-28 07:15:28','2014-01-28 07:16:54',NULL,NULL,NULL,NULL,NULL,NULL,0,0,10,0,0,NULL,'Inherit','Inherit',0),(51,26,1,0,1,0,'ArticlePage','2014-01-28 07:18:13','2014-01-28 07:18:13','new-article-page','New Article Page',NULL,NULL,NULL,NULL,1,1,10,0,0,NULL,'Inherit','Inherit',0),(52,26,2,1,1,1,'ArticlePage','2014-01-28 07:18:13','2014-01-28 07:19:01','new-article-page','New Article Page','New Article Page1','<p>Finally, we return the fields to the CMS. If we flush the cache (by adding ?flush=1 at the end of the URL), we will be able to edit the fields in the CMS.</p>\n<p>Now that we have created our page types, let\'s add some content. Go into the CMS and create an<em>ArticleHolder</em> page named \"News\", then create a few <em>ArticlePage</em>\'s within it.</p>\n<p>Finally, we return the fields to the CMS. If we flush the cache (by adding ?flush=1 at the end of the URL), we will be able to edit the fields in the CMS.</p>\n<p>Now that we have created our page types, let\'s add some content. Go into the CMS and create an<em>ArticleHolder</em> page named \"News\", then create a few <em>ArticlePage</em>\'s within it.</p>\n<p>Finally, we return the fields to the CMS. If we flush the cache (by adding ?flush=1 at the end of the URL), we will be able to edit the fields in the CMS.</p>\n<p>Now that we have created our page types, let\'s add some content. Go into the CMS and create an<em>ArticleHolder</em> page named \"News\", then create a few <em>ArticlePage</em>\'s within it.</p>\n<p>Finally, we return the fields to the CMS. If we flush the cache (by adding ?flush=1 at the end of the URL), we will be able to edit the fields in the CMS.</p>\n<p>Now that we have created our page types, let\'s add some content. Go into the CMS and create an<em>ArticleHolder</em> page named \"News\", then create a few <em>ArticlePage</em>\'s within it.</p>',NULL,NULL,1,1,10,0,0,NULL,'Inherit','Inherit',0),(53,20,3,1,1,1,'ArticleHolder','2014-01-27 17:25:18','2014-01-28 07:39:56','news','News',NULL,NULL,NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',0),(54,26,3,0,1,0,'ArticlePage','2014-01-28 07:18:13','2014-01-28 08:30:07','new-article-page','New Article Page','New Article Page1','<p>Finally, we return the fields to the CMS. If we flush the cache (by adding ?flush=1 at the end of the URL), we will be able to edit the fields in the CMS.</p>\n<p>Now that we have created our page types, let\'s add some content. Go into the CMS and create an<em>ArticleHolder</em> page named \"News\", then create a few <em>ArticlePage</em>\'s within it.</p>\n<p>Finally, we return the fields to the CMS. If we flush the cache (by adding ?flush=1 at the end of the URL), we will be able to edit the fields in the CMS.</p>\n<p>Now that we have created our page types, let\'s add some content. Go into the CMS and create an<em>ArticleHolder</em> page named \"News\", then create a few <em>ArticlePage</em>\'s within it.</p>\n<p>Finally, we return the fields to the CMS. If we flush the cache (by adding ?flush=1 at the end of the URL), we will be able to edit the fields in the CMS.</p>\n<p>Now that we have created our page types, let\'s add some content. Go into the CMS and create an<em>ArticleHolder</em> page named \"News\", then create a few <em>ArticlePage</em>\'s within it.</p>\n<p>Finally, we return the fields to the CMS. If we flush the cache (by adding ?flush=1 at the end of the URL), we will be able to edit the fields in the CMS.</p>\n<p>Now that we have created our page types, let\'s add some content. Go into the CMS and create an<em>ArticleHolder</em> page named \"News\", then create a few <em>ArticlePage</em>\'s within it.</p>',NULL,NULL,1,1,10,0,0,NULL,'Inherit','Inherit',20),(55,26,4,0,1,0,'ArticlePage','2014-01-28 07:18:13','2014-01-28 08:30:08','new-article-page','New Article Page','New Article Page1','<p>Finally, we return the fields to the CMS. If we flush the cache (by adding ?flush=1 at the end of the URL), we will be able to edit the fields in the CMS.</p>\n<p>Now that we have created our page types, let\'s add some content. Go into the CMS and create an<em>ArticleHolder</em> page named \"News\", then create a few <em>ArticlePage</em>\'s within it.</p>\n<p>Finally, we return the fields to the CMS. If we flush the cache (by adding ?flush=1 at the end of the URL), we will be able to edit the fields in the CMS.</p>\n<p>Now that we have created our page types, let\'s add some content. Go into the CMS and create an<em>ArticleHolder</em> page named \"News\", then create a few <em>ArticlePage</em>\'s within it.</p>\n<p>Finally, we return the fields to the CMS. If we flush the cache (by adding ?flush=1 at the end of the URL), we will be able to edit the fields in the CMS.</p>\n<p>Now that we have created our page types, let\'s add some content. Go into the CMS and create an<em>ArticleHolder</em> page named \"News\", then create a few <em>ArticlePage</em>\'s within it.</p>\n<p>Finally, we return the fields to the CMS. If we flush the cache (by adding ?flush=1 at the end of the URL), we will be able to edit the fields in the CMS.</p>\n<p>Now that we have created our page types, let\'s add some content. Go into the CMS and create an<em>ArticleHolder</em> page named \"News\", then create a few <em>ArticlePage</em>\'s within it.</p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',20),(56,26,5,1,1,1,'ArticlePage','2014-01-28 07:18:13','2014-01-28 09:41:19','new-article-page','New Article Page','New Article Page1','<p>Finally, we return the fields to the CMS. If we flush the cache (by adding ?flush=1 at the end of the URL), we will be able to edit the fields in the CMS.</p>\n<p>Now that we have created our page types, let\'s add some content. Go into the CMS and create an<em>ArticleHolder</em> page named \"News\", then create a few <em>ArticlePage</em>\'s within it.<img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImage600450-Koala.jpg\" alt=\"Koala\" width=\"600\" height=\"450\"></p>\n<p>Finally, we return the fields to the CMS. If we flush the cache (by adding ?flush=1 at the end of the URL), we will be able to edit the fields in the CMS.</p>\n<p>Now that we have created our page types, let\'s add some content. Go into the CMS and create an<em>ArticleHolder</em> page named \"News\", then create a few <em>ArticlePage</em>\'s within it.</p>\n<p>Finally, we return the fields to the CMS. If we flush the cache (by adding ?flush=1 at the end of the URL), we will be able to edit the fields in the CMS.</p>\n<p>Now that we have created our page types, let\'s add some content. Go into the CMS and create an<em>ArticleHolder</em> page named \"News\", then create a few <em>ArticlePage</em>\'s within it.</p>\n<p>Finally, we return the fields to the CMS. If we flush the cache (by adding ?flush=1 at the end of the URL), we will be able to edit the fields in the CMS.</p>\n<p>Now that we have created our page types, let\'s add some content. Go into the CMS and create an<em>ArticleHolder</em> page named \"News\", then create a few <em>ArticlePage</em>\'s within it.</p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',20),(57,27,1,0,1,0,'ArticlePage','2014-01-28 09:41:30','2014-01-28 09:41:30','new-article-page-2','New Article Page',NULL,NULL,NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',20),(58,27,2,1,1,1,'ArticlePage','2014-01-28 09:41:30','2014-01-28 09:42:15','new-article-page2','New Article Page2',NULL,'<p>qwqweqweprivatestatic$icon= \"framework/docs/en/tutorials/_images/treeicons/news-file.gif\";privatestatic$icon= \"framework/docs/en/tutorials/_images/treeicons/news-file.gif\";<img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImage600450-Koala.jpg\" alt=\"Koala\" width=\"600\" height=\"450\"></p>',NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',20),(59,1,2,1,1,1,'Page','2014-01-26 09:45:56','2014-01-28 10:16:49','page-1','首页',NULL,'<p>欢迎来到SilverStripe！这是默认首页。您可以通过打开<a href=\"admin/\">内容管理系统</a>修改该页面。您现在可以访问<a href=\"http://doc.silverstripe.org\">开发者文档</a>，或者从<a href=\"http://doc.silverstripe.org/doku.php?id=tutorials\">教程</a>开始。</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),(60,1,3,1,1,1,'Page','2014-01-26 09:45:56','2014-01-28 10:23:56','home','首页',NULL,'<p>欢迎来到SilverStripe！这是默认首页。您可以通过打开<a href=\"admin/\">内容管理系统</a>修改该页面。您现在可以访问<a href=\"http://doc.silverstripe.org\">开发者文档</a>，或者从<a href=\"http://doc.silverstripe.org/doku.php?id=tutorials\">教程</a>开始。</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),(61,28,1,1,1,1,'HomePage','2014-01-29 12:00:43','2014-01-29 12:00:43','new-home-page','New Home Page',NULL,NULL,NULL,NULL,1,1,10,0,0,NULL,'Inherit','Inherit',0),(62,28,2,0,1,0,'HomePage','2014-01-29 12:00:43','2014-01-29 12:03:07','new-home-page','New Home Page',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),(63,28,3,1,1,1,'HomePage','2014-01-29 12:00:43','2014-01-29 12:03:33','new-home-page','首页',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),(64,29,1,1,1,1,'Page','2014-01-29 12:23:29','2014-01-29 12:23:29','home','首页',NULL,'<p>欢迎来到SilverStripe！这是默认首页。您可以通过打开<a href=\"admin/\">内容管理系统</a>修改该页面。您现在可以访问<a href=\"http://doc.silverstripe.org\">开发者文档</a>，或者从<a href=\"http://doc.silverstripe.org/doku.php?id=tutorials\">教程</a>开始。</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),(65,30,1,0,1,0,'Event','2014-01-29 12:24:55','2014-01-29 12:24:55','new-event','New Event',NULL,NULL,NULL,NULL,1,1,10,0,0,NULL,'Inherit','Inherit',0),(66,31,1,0,1,0,'Event','2014-01-29 13:08:13','2014-01-29 13:08:13','event1','Event1','123QFQ','<p>asd</p>',NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',0),(67,31,2,1,1,1,'Page',NULL,'2014-01-29 13:08:33',NULL,NULL,NULL,'<p>asdsdfsddf</p>',NULL,NULL,0,0,0,0,0,NULL,'Inherit','Inherit',0),(68,32,1,1,1,1,'Event','2014-01-29 13:09:08','2014-01-29 13:09:08','sdfsdf','sdfsdf','sdf','<p>sdf</p>',NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',0),(69,33,1,1,1,1,'EventHolder','2014-01-29 13:15:44','2014-01-29 13:15:44','new-event-holder','New Event Holder',NULL,NULL,NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',0),(70,31,3,0,1,0,'Page',NULL,'2014-01-29 13:17:57',NULL,NULL,NULL,NULL,NULL,NULL,0,0,12,0,0,NULL,'Inherit','Inherit',0),(71,32,2,0,1,0,'Page',NULL,'2014-01-29 13:17:57',NULL,NULL,NULL,NULL,NULL,NULL,0,0,13,0,0,NULL,'Inherit','Inherit',0),(72,30,2,0,1,0,'Event','2014-01-29 12:24:55','2014-01-29 13:18:11','new-event','New Event',NULL,NULL,NULL,NULL,1,1,10,0,0,NULL,'Inherit','Inherit',33),(73,30,3,0,1,0,'Event','2014-01-29 12:24:55','2014-01-29 13:18:12','new-event','New Event',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',33),(74,30,4,1,1,1,'Event','2014-01-29 12:24:55','2014-01-29 13:18:20','new-event','New Event',NULL,'<p>fsddddddddddddddddddd</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',33),(75,34,1,0,1,0,'Event','2014-01-29 13:18:47','2014-01-29 13:18:47','sdfsdf','sdfsdf',NULL,'<p>sdf</p>',NULL,NULL,1,1,12,0,0,NULL,'Inherit','Inherit',0),(76,35,1,0,1,0,'Event','2014-01-29 13:19:28','2014-01-29 13:19:28','new-event-2','New Event',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',33),(77,35,2,1,1,1,'Event','2014-01-29 13:19:28','2014-01-29 13:19:40','new-event2','New Event2',NULL,'<p>wwwwwwwwwwwwww</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',33),(78,36,1,0,1,0,'ArticlePage','2014-01-30 09:50:29','2014-01-30 09:50:29','new-article-page-2','New Article Page',NULL,NULL,NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',20),(79,36,2,1,1,1,'ArticlePage','2014-01-30 09:50:29','2014-01-30 09:51:27','new-article-page3','New Article Page3',NULL,'<p><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImage600450-Hydrangeas.jpg\" alt=\"Hydrangeas\" width=\"600\" height=\"450\">kjllkkkkkk</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',20),(80,37,1,1,1,1,'Page','2014-01-30 11:28:24','2014-01-30 11:28:24','home','首页',NULL,'<p>欢迎来到SilverStripe！这是默认首页。您可以通过打开<a href=\"admin/\">内容管理系统</a>修改该页面。您现在可以访问<a href=\"http://doc.silverstripe.org\">开发者文档</a>，或者从<a href=\"http://doc.silverstripe.org/doku.php?id=tutorials\">教程</a>开始。</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),(81,38,1,1,1,1,'StaffHolder','2014-02-17 09:34:10','2014-02-17 09:34:10','new-staff-holder','New Staff Holder',NULL,NULL,NULL,NULL,1,1,12,0,0,NULL,'Inherit','Inherit',0),(82,39,1,0,1,0,'StaffPage','2014-02-17 09:39:52','2014-02-17 09:39:52','new-staff-page','New Staff Page',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',38),(83,39,2,1,1,1,'StaffPage','2014-02-17 09:39:52','2014-02-17 09:40:31','new-staff-page','New Staff Page',NULL,'<p>sdfsdfsdfffffffffffffffffffffffffffffffffffffewrwerwersdfsdfsdfffffffffffffffffffffffffffffffffffffewrwerwersdfsdfsdfffffffffffffffffffffffffffffffffffffewrwerwersdfsdfsdfffffffffffffffffffffffffffffffffffffewrwerwersdfsdfsdff</p>\n<p>fffffffffffffffffffffffffffffffffffewrwerwersdfsdfsdfffffffffffffffffffffffffffffffffffffewrwerwersdfsdfsdfffffffffffffffffffffffffffffffffffffewrwerwersdfsdfsdfffffffffffffffffffffffffffffffffffffewrwerwersdfsdfsdffffffffffffffffffffffffffffffff</p>\n<p>fffffewrwerwersdfsdfsdfffffffffffffffffffffffffffffffffffffewrwerwer</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',38),(84,40,1,1,1,1,'ProjectsHolder','2014-02-18 01:18:28','2014-02-18 01:18:28','new-projects-holder','New Projects Holder',NULL,NULL,NULL,NULL,1,1,13,0,0,NULL,'Inherit','Inherit',0),(85,41,1,1,1,1,'Project','2014-02-18 01:19:02','2014-02-18 01:19:02','new-project','New Project',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',40),(86,41,2,1,1,1,'Project','2014-02-18 01:19:02','2014-02-18 01:27:46','new-project','Developer Toolbar',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',40),(87,42,1,0,1,0,'Project','2014-02-18 01:41:20','2014-02-18 01:41:20','new-project-2','New Project',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',40),(88,42,2,1,1,1,'Project','2014-02-18 01:41:20','2014-02-18 01:45:29','behaviour-testing','Behaviour Testing',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',40);

/*Table structure for table `sitetree_viewergroups` */

DROP TABLE IF EXISTS `sitetree_viewergroups`;

CREATE TABLE `sitetree_viewergroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sitetree_viewergroups` */

/*Table structure for table `staffholder` */

DROP TABLE IF EXISTS `staffholder`;

CREATE TABLE `staffholder` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `PhotoID` (`PhotoID`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

/*Data for the table `staffholder` */

insert  into `staffholder`(`ID`,`PhotoID`) values (38,0);

/*Table structure for table `staffholder_live` */

DROP TABLE IF EXISTS `staffholder_live`;

CREATE TABLE `staffholder_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `PhotoID` (`PhotoID`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

/*Data for the table `staffholder_live` */

insert  into `staffholder_live`(`ID`,`PhotoID`) values (38,0);

/*Table structure for table `staffholder_versions` */

DROP TABLE IF EXISTS `staffholder_versions`;

CREATE TABLE `staffholder_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `PhotoID` (`PhotoID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `staffholder_versions` */

insert  into `staffholder_versions`(`ID`,`RecordID`,`Version`,`PhotoID`) values (1,38,1,0);

/*Table structure for table `staffpage` */

DROP TABLE IF EXISTS `staffpage`;

CREATE TABLE `staffpage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `PhotoID` (`PhotoID`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

/*Data for the table `staffpage` */

insert  into `staffpage`(`ID`,`PhotoID`) values (39,7);

/*Table structure for table `staffpage_live` */

DROP TABLE IF EXISTS `staffpage_live`;

CREATE TABLE `staffpage_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `PhotoID` (`PhotoID`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

/*Data for the table `staffpage_live` */

insert  into `staffpage_live`(`ID`,`PhotoID`) values (39,7);

/*Table structure for table `staffpage_versions` */

DROP TABLE IF EXISTS `staffpage_versions`;

CREATE TABLE `staffpage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `PhotoID` (`PhotoID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `staffpage_versions` */

insert  into `staffpage_versions`(`ID`,`RecordID`,`Version`,`PhotoID`) values (1,39,1,0),(2,39,2,7);

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Student') CHARACTER SET utf8 DEFAULT 'Student',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `University` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ProjectID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ProjectID` (`ProjectID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `student` */

insert  into `student`(`ID`,`ClassName`,`Created`,`LastEdited`,`Name`,`University`,`ProjectID`) values (1,'Student','2014-02-18 01:19:21','2014-02-18 01:30:27','Jakob','sdf',41),(2,'Student','2014-02-18 01:20:01','2014-02-18 01:30:51','Ofir','sdf',41),(3,'Student','2014-02-18 01:44:48','2014-02-18 01:44:48','Michal',NULL,42),(4,'Student','2014-02-18 01:45:03','2014-02-18 01:45:03','Wojtek',NULL,42);

/*Table structure for table `submittedfilefield` */

DROP TABLE IF EXISTS `submittedfilefield`;

CREATE TABLE `submittedfilefield` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UploadedFileID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `UploadedFileID` (`UploadedFileID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `submittedfilefield` */

/*Table structure for table `submittedform` */

DROP TABLE IF EXISTS `submittedform`;

CREATE TABLE `submittedform` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SubmittedForm') CHARACTER SET utf8 DEFAULT 'SubmittedForm',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `SubmittedByID` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SubmittedByID` (`SubmittedByID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `submittedform` */

insert  into `submittedform`(`ID`,`ClassName`,`Created`,`LastEdited`,`SubmittedByID`,`ParentID`) values (1,'SubmittedForm','2014-01-27 10:43:05','2014-01-27 10:43:05',1,19),(2,'SubmittedForm','2014-01-27 16:50:48','2014-01-27 16:50:48',1,19),(3,'SubmittedForm','2014-01-27 16:54:54','2014-01-27 16:54:54',1,19),(4,'SubmittedForm','2014-01-27 17:09:42','2014-01-27 17:09:42',1,19);

/*Table structure for table `submittedformfield` */

DROP TABLE IF EXISTS `submittedformfield`;

CREATE TABLE `submittedformfield` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SubmittedFormField','SubmittedFileField') CHARACTER SET utf8 DEFAULT 'SubmittedFormField',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Value` mediumtext CHARACTER SET utf8,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `submittedformfield` */

insert  into `submittedformfield`(`ID`,`ClassName`,`Created`,`LastEdited`,`Name`,`Value`,`Title`,`ParentID`) values (1,'SubmittedFormField','2014-01-27 10:43:05','2014-01-27 10:43:05','EditableTextField1','234',NULL,1),(2,'SubmittedFormField','2014-01-27 10:43:05','2014-01-27 10:43:05','EditableRadioField2','Man',NULL,1),(3,'SubmittedFormField','2014-01-27 10:43:05','2014-01-27 10:43:05','EditableTextField4','234',NULL,1),(4,'SubmittedFormField','2014-01-27 16:50:48','2014-01-27 16:50:48','EditableTextField1','ert',NULL,2),(5,'SubmittedFormField','2014-01-27 16:50:48','2014-01-27 16:50:48','EditableRadioField2','Man',NULL,2),(6,'SubmittedFormField','2014-01-27 16:50:48','2014-01-27 16:50:48','EditableTextField4','ert',NULL,2),(7,'SubmittedFormField','2014-01-27 16:54:54','2014-01-27 16:54:54','EditableTextField1','re',NULL,3),(8,'SubmittedFormField','2014-01-27 16:54:54','2014-01-27 16:54:54','EditableRadioField2','Female',NULL,3),(9,'SubmittedFormField','2014-01-27 16:54:54','2014-01-27 16:54:54','EditableTextField4','et',NULL,3),(10,'SubmittedFormField','2014-01-27 17:09:42','2014-01-27 17:09:42','EditableTextField1','asd',NULL,4),(11,'SubmittedFormField','2014-01-27 17:09:43','2014-01-27 17:09:43','EditableRadioField2','Female',NULL,4),(12,'SubmittedFormField','2014-01-27 17:09:43','2014-01-27 17:09:43','EditableTextField4',NULL,NULL,4);

/*Table structure for table `userdefinedform` */

DROP TABLE IF EXISTS `userdefinedform`;

CREATE TABLE `userdefinedform` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SubmitButtonText` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ClearButtonText` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `OnCompleteMessage` mediumtext CHARACTER SET utf8,
  `ShowClearButton` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableSaveSubmissions` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `EnableLiveValidation` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideFieldLabels` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `userdefinedform` */

insert  into `userdefinedform`(`ID`,`SubmitButtonText`,`ClearButtonText`,`OnCompleteMessage`,`ShowClearButton`,`DisableSaveSubmissions`,`EnableLiveValidation`,`HideFieldLabels`) values (15,NULL,NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,0,0),(16,NULL,NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,0,0),(17,NULL,NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,0,0),(18,NULL,NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,0,0),(19,NULL,NULL,'<p>Thanks, we\'ve received your submission.</p>',1,0,1,0);

/*Table structure for table `userdefinedform_emailrecipient` */

DROP TABLE IF EXISTS `userdefinedform_emailrecipient`;

CREATE TABLE `userdefinedform_emailrecipient` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('UserDefinedForm_EmailRecipient') CHARACTER SET utf8 DEFAULT 'UserDefinedForm_EmailRecipient',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `EmailAddress` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `EmailSubject` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `EmailFrom` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `EmailReplyTo` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `EmailBody` mediumtext CHARACTER SET utf8,
  `SendPlain` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideFormData` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `FormID` int(11) NOT NULL DEFAULT '0',
  `SendEmailFromFieldID` int(11) NOT NULL DEFAULT '0',
  `SendEmailToFieldID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `FormID` (`FormID`),
  KEY `SendEmailFromFieldID` (`SendEmailFromFieldID`),
  KEY `SendEmailToFieldID` (`SendEmailToFieldID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `userdefinedform_emailrecipient` */

insert  into `userdefinedform_emailrecipient`(`ID`,`ClassName`,`Created`,`LastEdited`,`EmailAddress`,`EmailSubject`,`EmailFrom`,`EmailReplyTo`,`EmailBody`,`SendPlain`,`HideFormData`,`FormID`,`SendEmailFromFieldID`,`SendEmailToFieldID`) values (1,'UserDefinedForm_EmailRecipient','2014-01-27 08:32:01','2014-01-27 08:32:01','joy.guo@foxmail..com','testform001_email','guo.t@qq.com',NULL,'testform001_email 字符测试',0,0,12,0,0),(2,'UserDefinedForm_EmailRecipient','2014-01-27 08:52:01','2014-01-27 08:52:26','joy.guo@foxmail.com','test002','guo.t@qq.com',NULL,'test002test002test002',0,0,6,0,0),(3,'UserDefinedForm_EmailRecipient','2014-01-27 10:38:25','2014-01-27 10:38:25','joy.guo@foxmail.com','test003','guo.t@qq.com',NULL,'sddfsf',0,0,19,0,0);

/*Table structure for table `userdefinedform_live` */

DROP TABLE IF EXISTS `userdefinedform_live`;

CREATE TABLE `userdefinedform_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SubmitButtonText` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ClearButtonText` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `OnCompleteMessage` mediumtext CHARACTER SET utf8,
  `ShowClearButton` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableSaveSubmissions` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `EnableLiveValidation` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideFieldLabels` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `userdefinedform_live` */

insert  into `userdefinedform_live`(`ID`,`SubmitButtonText`,`ClearButtonText`,`OnCompleteMessage`,`ShowClearButton`,`DisableSaveSubmissions`,`EnableLiveValidation`,`HideFieldLabels`) values (19,NULL,NULL,'<p>Thanks, we\'ve received your submission.</p>',1,0,1,0);

/*Table structure for table `userdefinedform_versions` */

DROP TABLE IF EXISTS `userdefinedform_versions`;

CREATE TABLE `userdefinedform_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `SubmitButtonText` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ClearButtonText` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `OnCompleteMessage` mediumtext CHARACTER SET utf8,
  `ShowClearButton` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableSaveSubmissions` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `EnableLiveValidation` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideFieldLabels` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

/*Data for the table `userdefinedform_versions` */

insert  into `userdefinedform_versions`(`ID`,`RecordID`,`Version`,`SubmitButtonText`,`ClearButtonText`,`OnCompleteMessage`,`ShowClearButton`,`DisableSaveSubmissions`,`EnableLiveValidation`,`HideFieldLabels`) values (1,9,1,NULL,NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,0,0),(2,10,1,NULL,NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,0,0),(3,11,1,NULL,NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,0,0),(4,12,1,NULL,NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,0,0),(5,6,3,NULL,NULL,NULL,0,0,0,0),(6,12,2,NULL,NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,0,0),(7,12,3,'提交001','重置001','<p>Thanks, we\'ve received your submission.</p>',1,0,1,0),(8,12,4,'提交001','重置001','<p>Thanks, we\'ve received your submission.</p>',1,0,1,0),(9,12,5,'提交001','重置001','<p>Thanks, we\'ve received your submission.</p>',1,0,1,0),(10,12,6,'提交001','重置001','<p>Thanks, we\'ve received your submission.</p>',1,0,1,0),(11,12,7,'提交001','重置001','<p>Thanks, we\'ve received your submission.</p>',1,0,1,0),(12,6,4,'提交002','重置002','<p>test002</p>',1,0,1,0),(13,10,2,NULL,NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,0,0),(14,14,1,NULL,NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,0,0),(15,15,1,NULL,NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,0,0),(16,15,2,NULL,NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,0,0),(17,15,3,NULL,NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,0,0),(18,16,1,NULL,NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,0,0),(19,17,1,NULL,NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,0,0),(20,18,1,NULL,NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,0,0),(21,18,2,NULL,NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,0,0),(22,19,1,NULL,NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,0,0),(23,19,2,NULL,NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,0,0),(24,19,3,NULL,NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,0,0),(25,19,4,NULL,NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,0,0),(26,19,5,NULL,NULL,'<p>Thanks, we\'ve received your submission.</p>',1,0,1,0);

/*Table structure for table `virtualpage` */

DROP TABLE IF EXISTS `virtualpage`;

CREATE TABLE `virtualpage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `virtualpage` */

/*Table structure for table `virtualpage_live` */

DROP TABLE IF EXISTS `virtualpage_live`;

CREATE TABLE `virtualpage_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `virtualpage_live` */

/*Table structure for table `virtualpage_versions` */

DROP TABLE IF EXISTS `virtualpage_versions`;

CREATE TABLE `virtualpage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `virtualpage_versions` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
