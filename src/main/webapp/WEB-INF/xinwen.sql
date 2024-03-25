/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50027
Source Host           : localhost:3306
Source Database       : xinwen

Target Server Type    : MYSQL
Target Server Version : 50027
File Encoding         : 65001

Date: 2021-12-31 12:10:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `name` varchar(15) default NULL,
  `psw` varchar(15) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', 'admin');
INSERT INTO `admin` VALUES ('5', '5');

-- ----------------------------
-- Table structure for xinwen
-- ----------------------------
DROP TABLE IF EXISTS `xinwen`;
CREATE TABLE `xinwen` (
  `title` varchar(255) default NULL,
  `main` varchar(255) default NULL,
  `name1` varchar(255) default NULL,
  `time` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xinwen
-- ----------------------------
INSERT INTO `xinwen` VALUES ('5', '6', '78', '888');
INSERT INTO `xinwen` VALUES ('9', '9', '9', '9');
INSERT INTO `xinwen` VALUES ('9', '9', '9', '9');
INSERT INTO `xinwen` VALUES ('8', '8', '8', '8');
