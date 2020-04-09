/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : dyt_test

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2020-04-08 16:31:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dyt_department
-- ----------------------------
DROP TABLE IF EXISTS `dyt_department`;
CREATE TABLE `dyt_department` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dyt_department
-- ----------------------------
INSERT INTO `dyt_department` VALUES ('1', '人事部');
INSERT INTO `dyt_department` VALUES ('2', '软件部');
INSERT INTO `dyt_department` VALUES ('3', '行政部');

-- ----------------------------
-- Table structure for dyt_keshi
-- ----------------------------
DROP TABLE IF EXISTS `dyt_keshi`;
CREATE TABLE `dyt_keshi` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dyt_keshi
-- ----------------------------
INSERT INTO `dyt_keshi` VALUES ('1', '科室1');
INSERT INTO `dyt_keshi` VALUES ('2', '科室2');
INSERT INTO `dyt_keshi` VALUES ('3', '科室3');

-- ----------------------------
-- Table structure for dyt_post
-- ----------------------------
DROP TABLE IF EXISTS `dyt_post`;
CREATE TABLE `dyt_post` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dyt_post
-- ----------------------------
INSERT INTO `dyt_post` VALUES ('1', '岗位1');
INSERT INTO `dyt_post` VALUES ('2', '岗位2');
INSERT INTO `dyt_post` VALUES ('3', '岗位3');

-- ----------------------------
-- Table structure for dyt_user
-- ----------------------------
DROP TABLE IF EXISTS `dyt_user`;
CREATE TABLE `dyt_user` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `age` int(20) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `did` int(225) DEFAULT NULL,
  `pid` int(255) DEFAULT NULL,
  `kid` int(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dyt_user
-- ----------------------------
INSERT INTO `dyt_user` VALUES ('35', '小明g', '22', '13655446655', '1', '1', '1');
INSERT INTO `dyt_user` VALUES ('39', '张三', '36', '13699887744', '1', '1', '3');
INSERT INTO `dyt_user` VALUES ('57', 'qq3', '33', '13655443354', '1', '1', '1');
INSERT INTO `dyt_user` VALUES ('59', 'aa', '22', '13822106553', '3', '2', '3');
INSERT INTO `dyt_user` VALUES ('60', 'bb', '22', '13822106551', '2', '2', '2');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `age` int(8) NOT NULL,
  `phoneNumber` varchar(200) NOT NULL,
  `address` varchar(255) NOT NULL,
  `hobby` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', '123456', '22', '12345678', '南京', '打篮球');
