/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : lativ

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2017-04-20 14:36:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `collection`
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection` (
  `indexID` int(11) NOT NULL,
  `username` varchar(55) CHARACTER SET utf8 NOT NULL,
  `collectionImg` varchar(255) CHARACTER SET utf8 NOT NULL,
  `collectionName` varchar(255) CHARACTER SET utf8 NOT NULL,
  `collectionPrice` int(55) NOT NULL,
  PRIMARY KEY (`indexID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of collection
-- ----------------------------
INSERT INTO `collection` VALUES ('1', 'qqq', '../../../img/Men/list-08.jpg', '流氓吊带衫-女', '59');
INSERT INTO `collection` VALUES ('2', 'qqq', '../../../img/Men/list-03.jpg', '相亲不相爱T恤-女', '59');
INSERT INTO `collection` VALUES ('3', 'qqq', '../../../img/Men/list-04.jpg', '下腰貘法体操T恤-男', '59');
INSERT INTO `collection` VALUES ('4', 'www', '../../../img/Men/list-04.jpg', '哈哈哈', '44');
