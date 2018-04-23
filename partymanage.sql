/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : partymanage

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 18/04/2018 20:58:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_article
-- ----------------------------
DROP TABLE IF EXISTS `tb_article`;
CREATE TABLE `tb_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `allDepartment` bit(1) NOT NULL,
  `allRole` bit(1) NOT NULL,
  `content` longtext,
  `createTime` datetime DEFAULT NULL,
  `department` longtext,
  `firstImg` varchar(100) DEFAULT NULL,
  `readNum` bigint(20) NOT NULL,
  `role` varchar(100) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `typeName` varchar(10) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  `userName` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_articleType
-- ----------------------------
DROP TABLE IF EXISTS `tb_articleType`;
CREATE TABLE `tb_articleType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_department
-- ----------------------------
DROP TABLE IF EXISTS `tb_department`;
CREATE TABLE `tb_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `belongId` int(11) NOT NULL,
  `belongName` varchar(30) DEFAULT NULL,
  `branchType` varchar(30) DEFAULT NULL,
  `company` varchar(30) DEFAULT NULL,
  `createDate` int(11) NOT NULL,
  `marks` varchar(100) DEFAULT NULL,
  `memberNum` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `summary` longtext,
  `type` int(11) NOT NULL,
  `typeName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_examLog
-- ----------------------------
DROP TABLE IF EXISTS `tb_examLog`;
CREATE TABLE `tb_examLog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `finishedTime` varchar(100) DEFAULT NULL,
  `questionType` varchar(10) DEFAULT NULL,
  `questionTypeId` int(11) NOT NULL,
  `totalScore` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userName` varchar(10) DEFAULT NULL,
  `userScore` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_indexImage
-- ----------------------------
DROP TABLE IF EXISTS `tb_indexImage`;
CREATE TABLE `tb_indexImage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createTime` datetime DEFAULT NULL,
  `imgUrl` varchar(255) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_inform
-- ----------------------------
DROP TABLE IF EXISTS `tb_inform`;
CREATE TABLE `tb_inform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `allDepartment` bit(1) NOT NULL,
  `allRole` bit(1) NOT NULL,
  `autherId` int(11) NOT NULL,
  `autherName` varchar(10) DEFAULT NULL,
  `content` longtext,
  `createTime` datetime DEFAULT NULL,
  `department` longtext,
  `role` varchar(100) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_payLog
-- ----------------------------
DROP TABLE IF EXISTS `tb_payLog`;
CREATE TABLE `tb_payLog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createTime` datetime DEFAULT NULL,
  `departmentId` int(11) NOT NULL,
  `departmentName` varchar(20) DEFAULT NULL,
  `lastNum` double NOT NULL,
  `payNum` double NOT NULL,
  `userId` int(11) NOT NULL,
  `userName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_question
-- ----------------------------
DROP TABLE IF EXISTS `tb_question`;
CREATE TABLE `tb_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aAnswer` varchar(255) DEFAULT NULL,
  `analyse` varchar(255) DEFAULT NULL,
  `answer` varchar(5) DEFAULT NULL,
  `bAnswer` varchar(255) DEFAULT NULL,
  `cAnswer` varchar(255) DEFAULT NULL,
  `dAnswer` varchar(255) DEFAULT NULL,
  `score` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `typeName` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_questionInTest
-- ----------------------------
DROP TABLE IF EXISTS `tb_questionInTest`;
CREATE TABLE `tb_questionInTest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answer` varchar(5) DEFAULT NULL,
  `questionId` int(11) NOT NULL,
  `questionTypeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_questionLog
-- ----------------------------
DROP TABLE IF EXISTS `tb_questionLog`;
CREATE TABLE `tb_questionLog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questionAnwer` varchar(10) DEFAULT NULL,
  `questionId` int(11) NOT NULL,
  `questionType` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `userAnswer` varchar(10) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  `userName` varchar(10) DEFAULT NULL,
  `userScore` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_questionType
-- ----------------------------
DROP TABLE IF EXISTS `tb_questionType`;
CREATE TABLE `tb_questionType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `academicDegree` varchar(10) DEFAULT NULL,
  `age` int(11) DEFAULT '0',
  `birthday` int(11) DEFAULT '0',
  `branchId` int(11) DEFAULT '0',
  `branchName` varchar(30) DEFAULT NULL,
  `className` varchar(20) DEFAULT NULL,
  `education` varchar(10) DEFAULT NULL,
  `grade` int(11) DEFAULT '0',
  `joinPartyDate` int(11) DEFAULT '0',
  `joinSchoolDate` int(11) DEFAULT '0',
  `joinWorkDate` int(11) DEFAULT '0',
  `name` varchar(10) NOT NULL,
  `nation` varchar(20) DEFAULT NULL,
  `nativePlace` varchar(30) DEFAULT NULL,
  `nowJob` varchar(20) DEFAULT NULL,
  `organizationId` int(11) DEFAULT '0',
  `organizationName` varchar(30) DEFAULT NULL,
  `partyId` int(11) DEFAULT '0',
  `partyName` varchar(30) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(40) NOT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `studySecond` bigint(20) DEFAULT '0',
  `studyTime` varchar(20) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `type` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
BEGIN;
INSERT INTO `tb_user` VALUES (1, NULL, 18, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 'admin', NULL, NULL, NULL, 0, NULL, 0, NULL, '123456789', '18738397757', NULL, 0, NULL, NULL, 1);
COMMIT;

-- ----------------------------
-- Table structure for tb_video
-- ----------------------------
DROP TABLE IF EXISTS `tb_video`;
CREATE TABLE `tb_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `allDepartment` bit(1) NOT NULL,
  `allRole` bit(1) NOT NULL,
  `createTime` datetime DEFAULT NULL,
  `department` longtext,
  `name` varchar(50) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `typeName` varchar(10) DEFAULT NULL,
  `watchNum` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_videoType
-- ----------------------------
DROP TABLE IF EXISTS `tb_videoType`;
CREATE TABLE `tb_videoType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_watchVideoLog
-- ----------------------------
DROP TABLE IF EXISTS `tb_watchVideoLog`;
CREATE TABLE `tb_watchVideoLog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `userName` varchar(10) DEFAULT NULL,
  `videoId` int(11) NOT NULL,
  `videoName` varchar(50) DEFAULT NULL,
  `watchSecond` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
