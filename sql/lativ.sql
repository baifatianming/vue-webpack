/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : lativ

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2017-04-14 16:22:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `goodlist`
-- ----------------------------
DROP TABLE IF EXISTS `goodlist`;
CREATE TABLE `goodlist` (
  `indexId` int(11) NOT NULL DEFAULT '0',
  `goodsId` int(11) DEFAULT NULL,
  `goodsName` varchar(255) DEFAULT NULL,
  `goodsPrice` float DEFAULT NULL,
  `goodsSize` varchar(255) DEFAULT NULL,
  `goodsImg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`indexId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of goodlist
-- ----------------------------

-- ----------------------------
-- Table structure for `goodsmsg`
-- ----------------------------
DROP TABLE IF EXISTS `goodsmsg`;
CREATE TABLE `goodsmsg` (
  `indexId` int(11) NOT NULL AUTO_INCREMENT,
  `goodsId` int(11) DEFAULT NULL,
  `goodsName` varchar(255) DEFAULT NULL,
  `goodsImgLun` varchar(255) DEFAULT NULL,
  `goodsImgMsg` varchar(255) DEFAULT NULL,
  `goodsSize` varchar(255) DEFAULT NULL,
  `goodsColor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`indexId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of goodsmsg
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `indexId` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `passWord` varchar(255) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `goodsMsg` text,
  `adress` text,
  `comment` text,
  PRIMARY KEY (`indexId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
