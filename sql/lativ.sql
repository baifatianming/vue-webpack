/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : lativ

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2017-04-15 10:38:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `goodlist`
-- ----------------------------
DROP TABLE IF EXISTS `goodlist`;
CREATE TABLE `goodlist` (
  `indexId` int(11) NOT NULL DEFAULT '0',
  `goodsId` int(11) DEFAULT NULL,
  `goodsName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `goodsPrice` float DEFAULT NULL,
  `goodsSize` varchar(255) DEFAULT NULL,
  `goodsImg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`indexId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of goodlist
-- ----------------------------
INSERT INTO `goodlist` VALUES ('0', '1', 'PIMA 棉V领T恤-男', 'MEN', '55', null, '../../src/MEN/list-01.jpg');
INSERT INTO `goodlist` VALUES ('1', '2', 'Pima 棉V领T恤-男', 'MEN', '55', null, '../../src/MEN/list-02.jpg');
INSERT INTO `goodlist` VALUES ('2', '3', 'PIMA 棉圆领T恤-男', 'MEN', '55', null, '../../src/MEN/list-03.jpg');
INSERT INTO `goodlist` VALUES ('3', '4', 'Pima 棉圆领T恤-男', 'MEN', '55', null, '../../src/MEN/list-04.jpg');
INSERT INTO `goodlist` VALUES ('4', '5', '保暖圆领短袖T恤-男', 'MEN', '59', null, '../../src/MEN/list-05.jpg');
INSERT INTO `goodlist` VALUES ('5', '6', '保暖V领短袖T恤-男', 'MEN', '59', null, '../../src/MEN/list-06.jpg');
INSERT INTO `goodlist` VALUES ('6', '7', '吸汗罗纹背心-男', 'MEN', '35', null, '../../src/MEN/list-07.jpg');
INSERT INTO `goodlist` VALUES ('7', '8', '运动背心-男', 'MEN', '55', null, '../../src/MEN/list-08.jpg');
INSERT INTO `goodlist` VALUES ('8', '9', '运动V领T恤-男', 'MEN', '55', null, '../../src/MEN/list-09.jpg');
INSERT INTO `goodlist` VALUES ('9', '10', '运动条纹V领T恤-男', 'MEN', '55', null, '../../src/MEN/list-10.jpg');
INSERT INTO `goodlist` VALUES ('10', '11', '运动圆领T恤-男', 'MEN', '55', null, '../../src/MEN/list-11.jpg');
INSERT INTO `goodlist` VALUES ('11', '12', '运动条纹V领T恤-男', 'MEN', '59', null, '../../src/MEN/list-12.jpg');
INSERT INTO `goodlist` VALUES ('12', '13', '运动V领T恤-男', 'MEN', '55', null, '../../src/MEN/list-13.jpg');
INSERT INTO `goodlist` VALUES ('13', '14', '运动半拉链领T恤-男', 'MEN', '70', null, '../../src/MEN/list-14.jpg');
INSERT INTO `goodlist` VALUES ('14', '15', '凉感网眼圆领背心-男', 'MEN', '35', null, '../../src/MEN/list-15.jpg');
INSERT INTO `goodlist` VALUES ('15', '16', '凉感网眼V领背心-男', 'MEN', '45', null, '../../src/MEN/list-16.jpg');
INSERT INTO `goodlist` VALUES ('16', '17', '凉感V领T恤-男', 'MEN', '55', null, '../../src/MEN/list-17.jpg');
INSERT INTO `goodlist` VALUES ('17', '18', '凉感圆领T恤-男', 'MEN', '55', null, '../../src/MEN/list-18.jpg');
INSERT INTO `goodlist` VALUES ('18', '19', '凉感网眼圆领T恤-男', 'MEN', '59', null, '../../src/MEN/list-19.jpg');
INSERT INTO `goodlist` VALUES ('19', '20', '凉感网眼V领T恤-男', 'MEN', '59', null, '../../src/MEN/list-20.jpg');
INSERT INTO `goodlist` VALUES ('20', '21', '吸汗V领T恤-男', 'MEN', '29', null, '../../src/MEN/list-21.jpg');
INSERT INTO `goodlist` VALUES ('21', '22', '吸汗V领T恤-男', 'MEN', '29', null, '../../src/MEN/list-22.jpg');
INSERT INTO `goodlist` VALUES ('22', '23', '吸汗圆领T恤-男', 'MEN', '29', null, '../../src/MEN/list-23.jpg');
INSERT INTO `goodlist` VALUES ('23', '24', '吸汗圆领T恤-男', 'MEN', '29', null, '../../src/MEN/list-24.jpg');

-- ----------------------------
-- Table structure for `goodsmsg`
-- ----------------------------
DROP TABLE IF EXISTS `goodsmsg`;
CREATE TABLE `goodsmsg` (
  `indexId` int(11) NOT NULL AUTO_INCREMENT,
  `goodsId` int(11) DEFAULT NULL,
  `goodsName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `goodsImgLun` text,
  `goodsImgMsg` varchar(255) DEFAULT NULL,
  `goodsSize` varchar(255) DEFAULT NULL,
  `goodsColor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`indexId`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of goodsmsg
-- ----------------------------
INSERT INTO `goodsmsg` VALUES ('0', '1', 'PIMA 棉V领T恤-男', '[\'../../img/MEN/list-01-01.jpg\',\'../../img/MEN/list-01-02.jpg\',\'../../img/MEN/list-01-03.jpg\',\'../../img/MEN/list-01-04.jpg\',\'../../img/MEN/list-01-05.jpg\']', '../../img/MEN/list-01-black.jpg', '[\'165/84A/S\',\'180/108B/XL\']', 'black');
INSERT INTO `goodsmsg` VALUES ('1', '1', 'PIMA 棉V领T恤-男', '[\'../../img/MEN/list-01-01.jpg\',\'../../img/MEN/list-01-02.jpg\',\'../../img/MEN/list-01-03.jpg\',\'../../img/MEN/list-01-04.jpg\',\'../../img/MEN/list-01-05.jpg\']', '../../img/MEN/list-01-blue.jpg', '[\'165/84A/S\',\'180/108B/XL\']', 'blue');
INSERT INTO `goodsmsg` VALUES ('2', '1', 'PIMA 棉V领T恤-男', '[\'../../img/MEN/list-01-01.jpg\',\'../../img/MEN/list-01-02.jpg\',\'../../img/MEN/list-01-03.jpg\',\'../../img/MEN/list-01-04.jpg\',\'../../img/MEN/list-01-05.jpg\']', '../../img/MEN/list-01-grey.jpg', '[\'165/84A/S\',\'180/108B/XL\']', 'grey');
INSERT INTO `goodsmsg` VALUES ('3', '1', 'PIMA 棉V领T恤-男', '[\'../../img/MEN/list-01-01.jpg\',\'../../img/MEN/list-01-02.jpg\',\'../../img/MEN/list-01-03.jpg\',\'../../img/MEN/list-01-04.jpg\',\'../../img/MEN/list-01-05.jpg\']', '../../img/MEN/list-01-pink.jpg', '[\'165/84A/S\',\'180/108B/XL\']', 'pink');
INSERT INTO `goodsmsg` VALUES ('4', '1', 'PIMA 棉V领T恤-男', '[\'../../img/MEN/list-01-01.jpg\',\'../../img/MEN/list-01-02.jpg\',\'../../img/MEN/list-01-03.jpg\',\'../../img/MEN/list-01-04.jpg\',\'../../img/MEN/list-01-05.jpg\']', '../../img/MEN/list-01-purple.jpg', '[\'165/84A/S\',\'180/108B/XL\']', 'purple');
INSERT INTO `goodsmsg` VALUES ('5', '2', 'Pima 棉V领T恤-男', '[\'../../img/MEN/list-02-01.jpg\',\'../../img/MEN/list-02-02.jpg\',\'../../img/MEN/list-02-03.jpg\',\'../../img/MEN/list-02-04.jpg\',\'../../img/MEN/list-02-05.jpg\']', '../../img/MEN/list-02-black.jpg', '[\'165/84A/S\',\'170/92A/M\',\'175/100A/L\',\'180/108B/XL\']', 'black');
INSERT INTO `goodsmsg` VALUES ('6', '2', 'Pima 棉V领T恤-男', '[\'../../img/MEN/list-02-01.jpg\',\'../../img/MEN/list-02-02.jpg\',\'../../img/MEN/list-02-03.jpg\',\'../../img/MEN/list-02-04.jpg\',\'../../img/MEN/list-02-05.jpg\']', '../../img/MEN/list-02-green.jpg', '[\'165/84A/S\',\'170/92A/M\',\'175/100A/L\',\'180/108B/XL\']', 'green');
INSERT INTO `goodsmsg` VALUES ('7', '2', 'Pima 棉V领T恤-男', '[\'../../img/MEN/list-02-01.jpg\',\'../../img/MEN/list-02-02.jpg\',\'../../img/MEN/list-02-03.jpg\',\'../../img/MEN/list-02-04.jpg\',\'../../img/MEN/list-02-05.jpg\']', '../../img/MEN/list-02-red.jpg', '[\'165/84A/S\',\'170/92A/M\',\'175/100A/L\',\'180/108B/XL\']', 'red');
INSERT INTO `goodsmsg` VALUES ('8', '2', 'Pima 棉V领T恤-男', '[\'../../img/MEN/list-02-01.jpg\',\'../../img/MEN/list-02-02.jpg\',\'../../img/MEN/list-02-03.jpg\',\'../../img/MEN/list-02-04.jpg\',\'../../img/MEN/list-02-05.jpg\']', '../../img/MEN/list-02-white.jpg', '[\'165/84A/S\',\'170/92A/M\',\'175/100A/L\',\'180/108B/XL\']', 'white');
INSERT INTO `goodsmsg` VALUES ('9', '2', 'Pima 棉V领T恤-男', '[\'../../img/MEN/list-02-01.jpg\',\'../../img/MEN/list-02-02.jpg\',\'../../img/MEN/list-02-03.jpg\',\'../../img/MEN/list-02-04.jpg\',\'../../img/MEN/list-02-05.jpg\']', '../../img/MEN/list-02-yellow.jpg', '[\'165/84A/S\',\'170/92A/M\',\'175/100A/L\',\'180/108B/XL\']', 'yellow');
INSERT INTO `goodsmsg` VALUES ('10', '3', 'PIMA 棉圆领T恤-男', '[\'../../img/MEN/list-01-01.jpg\',\'../../img/MEN/list-01-02.jpg\',\'../../img/MEN/list-01-03.jpg\',\'../../img/MEN/list-01-04.jpg\',\'../../img/MEN/list-01-05.jpg\']', '../../img/MEN/list-03-pink.jpg', '[\'185/112C/XXL\']', 'pink');
INSERT INTO `goodsmsg` VALUES ('11', '3', 'PIMA 棉圆领T恤-男', '[\'../../img/MEN/list-01-01.jpg\',\'../../img/MEN/list-01-02.jpg\',\'../../img/MEN/list-01-03.jpg\',\'../../img/MEN/list-01-04.jpg\',\'../../img/MEN/list-01-05.jpg\']', '../../img/MEN/list-03-yellow.jpg', '[\'185/112C/XXL\']', 'yellow');
INSERT INTO `goodsmsg` VALUES ('12', '4', 'Pima 棉圆领T恤-男', '[\'../../img/MEN/list-02-01.jpg\',\'../../img/MEN/list-02-02.jpg\',\'../../img/MEN/list-02-03.jpg\',\'../../img/MEN/list-02-04.jpg\',\'../../img/MEN/list-02-05.jpg\']', '../../img/MEN/list-04-black.jpg', '[\'165/84A/S\',\'170/92A/M\',\'175/100A/L\',\'180/108B/XL\']', 'black');
INSERT INTO `goodsmsg` VALUES ('13', '4', 'Pima 棉圆领T恤-男', '[\'../../img/MEN/list-02-01.jpg\',\'../../img/MEN/list-02-02.jpg\',\'../../img/MEN/list-02-03.jpg\',\'../../img/MEN/list-02-04.jpg\',\'../../img/MEN/list-02-05.jpg\']', '../../img/MEN/list-04-blue.jpg', '[\'165/84A/S\',\'170/92A/M\',\'175/100A/L\',\'180/108B/XL\']', 'blue');
INSERT INTO `goodsmsg` VALUES ('14', '4', 'Pima 棉圆领T恤-男', '[\'../../img/MEN/list-02-01.jpg\',\'../../img/MEN/list-02-02.jpg\',\'../../img/MEN/list-02-03.jpg\',\'../../img/MEN/list-02-04.jpg\',\'../../img/MEN/list-02-05.jpg\']', '../../img/MEN/list-04-red.jpg', '[\'165/84A/S\',\'170/92A/M\',\'175/100A/L\',\'180/108B/XL\']', 'red');
INSERT INTO `goodsmsg` VALUES ('15', '5', '保暖圆领短袖T恤-男', '[\'../../img/MEN/list-01-01.jpg\',\'../../img/MEN/list-01-02.jpg\',\'../../img/MEN/list-01-03.jpg\',\'../../img/MEN/list-01-04.jpg\',\'../../img/MEN/list-01-05.jpg\']', '../../img/MEN/list-05-black.jpg', '[\'185/112C/XXL\']', 'black');
INSERT INTO `goodsmsg` VALUES ('16', '5', '保暖圆领短袖T恤-男', '[\'../../img/MEN/list-01-01.jpg\',\'../../img/MEN/list-01-02.jpg\',\'../../img/MEN/list-01-03.jpg\',\'../../img/MEN/list-01-04.jpg\',\'../../img/MEN/list-01-05.jpg\']', '../../img/MEN/list-05-blue.jpg', '[\'185/112C/XXL\']', 'blue');
INSERT INTO `goodsmsg` VALUES ('17', '5', '保暖圆领短袖T恤-男', '[\'../../img/MEN/list-01-01.jpg\',\'../../img/MEN/list-01-02.jpg\',\'../../img/MEN/list-01-03.jpg\',\'../../img/MEN/list-01-04.jpg\',\'../../img/MEN/list-01-05.jpg\']', '../../img/MEN/list-05-red.jpg', '[\'185/112C/XXL\']', 'red');
INSERT INTO `goodsmsg` VALUES ('18', '6', '保暖V领短袖T恤-男', '[\'../../img/MEN/list-02-01.jpg\',\'../../img/MEN/list-02-02.jpg\',\'../../img/MEN/list-02-03.jpg\',\'../../img/MEN/list-02-04.jpg\',\'../../img/MEN/list-02-05.jpg\']', '../../img/MEN/list-06-blue.jpg', '[\'165/84A/S\',\'170/92A/M\',\'175/100A/L\',\'180/108B/XL\']', 'blue');
INSERT INTO `goodsmsg` VALUES ('19', '6', '保暖V领短袖T恤-男', '[\'../../img/MEN/list-02-01.jpg\',\'../../img/MEN/list-02-02.jpg\',\'../../img/MEN/list-02-03.jpg\',\'../../img/MEN/list-02-04.jpg\',\'../../img/MEN/list-02-05.jpg\']', '../../img/MEN/list-06-grey.jpg', '[\'165/84A/S\',\'170/92A/M\',\'175/100A/L\',\'180/108B/XL\']', 'grey');
INSERT INTO `goodsmsg` VALUES ('20', '6', '保暖V领短袖T恤-男', '[\'../../img/MEN/list-02-01.jpg\',\'../../img/MEN/list-02-02.jpg\',\'../../img/MEN/list-02-03.jpg\',\'../../img/MEN/list-02-04.jpg\',\'../../img/MEN/list-02-05.jpg\']', '../../img/MEN/list-06-purple.jpg', '[\'165/84A/S\',\'170/92A/M\',\'175/100A/L\',\'180/108B/XL\']', 'purple');
INSERT INTO `goodsmsg` VALUES ('21', '6', '保暖V领短袖T恤-男', '[\'../../img/MEN/list-02-01.jpg\',\'../../img/MEN/list-02-02.jpg\',\'../../img/MEN/list-02-03.jpg\',\'../../img/MEN/list-02-04.jpg\',\'../../img/MEN/list-02-05.jpg\']', '../../img/MEN/list-06-red.jpg', '[\'165/84A/S\',\'170/92A/M\',\'175/100A/L\',\'180/108B/XL\']', 'red');
INSERT INTO `goodsmsg` VALUES ('22', '7', '吸汗罗纹背心-男', '[\'../../img/MEN/list-01-01.jpg\',\'../../img/MEN/list-01-02.jpg\',\'../../img/MEN/list-01-03.jpg\',\'../../img/MEN/list-01-04.jpg\',\'../../img/MEN/list-01-05.jpg\']', '../../img/MEN/list-07-brown.jpg', '[\'165/84A/S\',\'180/108B/XL\']', 'brown');
INSERT INTO `goodsmsg` VALUES ('23', '7', '吸汗罗纹背心-男', '[\'../../img/MEN/list-01-01.jpg\',\'../../img/MEN/list-01-02.jpg\',\'../../img/MEN/list-01-03.jpg\',\'../../img/MEN/list-01-04.jpg\',\'../../img/MEN/list-01-05.jpg\']', '../../img/MEN/list-07-grey.jpg', '[\'165/84A/S\',\'180/108B/XL\']', 'grey');
INSERT INTO `goodsmsg` VALUES ('24', '8', '运动背心-男', '[\'../../img/MEN/list-02-01.jpg\',\'../../img/MEN/list-02-02.jpg\',\'../../img/MEN/list-02-03.jpg\',\'../../img/MEN/list-02-04.jpg\',\'../../img/MEN/list-02-05.jpg\']', '../../img/MEN/list-08-blue.jpg', '[\'185/112C/XXL\']', 'blue');
INSERT INTO `goodsmsg` VALUES ('25', '9', '运动V领T恤-男', '[\'../../img/MEN/list-01-01.jpg\',\'../../img/MEN/list-01-02.jpg\',\'../../img/MEN/list-01-03.jpg\',\'../../img/MEN/list-01-04.jpg\',\'../../img/MEN/list-01-05.jpg\']', '../../img/MEN/list-09-green.jpg', '[\'165/84A/S\',\'180/108B/XL\']', 'green');
INSERT INTO `goodsmsg` VALUES ('26', '10', '运动条纹V领T恤-男', '[\'../../img/MEN/list-01-01.jpg\',\'../../img/MEN/list-01-02.jpg\',\'../../img/MEN/list-01-03.jpg\',\'../../img/MEN/list-01-04.jpg\',\'../../img/MEN/list-01-05.jpg\']', '../../img/MEN/list-10-red.jpg', '[\'165/84A/S\',\'180/108B/XL\']', 'red');
INSERT INTO `goodsmsg` VALUES ('27', '11', '运动圆领T恤-男', '[\'../../img/MEN/list-02-01.jpg\',\'../../img/MEN/list-02-02.jpg\',\'../../img/MEN/list-02-03.jpg\',\'../../img/MEN/list-02-04.jpg\',\'../../img/MEN/list-02-05.jpg\']', '../../img/MEN/list-11-white.jpg', '[\'165/84A/S\',\'170/92A/M\',\'175/100A/L\',\'180/108B/XL\']', 'white');
INSERT INTO `goodsmsg` VALUES ('28', '12', '运动条纹V领T恤-男', '[\'../../img/MEN/list-01-01.jpg\',\'../../img/MEN/list-01-02.jpg\',\'../../img/MEN/list-01-03.jpg\',\'../../img/MEN/list-01-04.jpg\',\'../../img/MEN/list-01-05.jpg\']', '../../img/MEN/list-12-orange.jpg', '[\'165/84A/S\',\'180/108B/XL\']', 'orange');
INSERT INTO `goodsmsg` VALUES ('29', '13', '运动V领T恤-男', '[\'../../img/MEN/list-02-01.jpg\',\'../../img/MEN/list-02-02.jpg\',\'../../img/MEN/list-02-03.jpg\',\'../../img/MEN/list-02-04.jpg\',\'../../img/MEN/list-02-05.jpg\']', '../../img/MEN/list-13-blue.jpg', '[\'185/112C/XXL\']', 'blue');
INSERT INTO `goodsmsg` VALUES ('30', '14', '运动半拉链领T恤-男', '[\'../../img/MEN/list-01-01.jpg\',\'../../img/MEN/list-01-02.jpg\',\'../../img/MEN/list-01-03.jpg\',\'../../img/MEN/list-01-04.jpg\',\'../../img/MEN/list-01-05.jpg\']', '../../img/MEN/list-14-green.jpg', '[\'165/84A/S\',\'180/108B/XL\']', 'green');
INSERT INTO `goodsmsg` VALUES ('31', '15', '凉感网眼圆领背心-男', '[\'../../img/MEN/list-02-01.jpg\',\'../../img/MEN/list-02-02.jpg\',\'../../img/MEN/list-02-03.jpg\',\'../../img/MEN/list-02-04.jpg\',\'../../img/MEN/list-02-05.jpg\']', '../../img/MEN/list-15-blue.jpg', '[\'165/84A/S\',\'170/92A/M\',\'175/100A/L\',\'180/108B/XL\']', 'blue');
INSERT INTO `goodsmsg` VALUES ('32', '16', '凉感网眼V领背心-男', '[\'../../img/MEN/list-01-01.jpg\',\'../../img/MEN/list-01-02.jpg\',\'../../img/MEN/list-01-03.jpg\',\'../../img/MEN/list-01-04.jpg\',\'../../img/MEN/list-01-05.jpg\']', '../../img/MEN/list-16-black.jpg', '[\'185/112C/XXL\']', 'black');
INSERT INTO `goodsmsg` VALUES ('33', '17', '凉感V领T恤-男', '[\'../../img/MEN/list-01-01.jpg\',\'../../img/MEN/list-01-02.jpg\',\'../../img/MEN/list-01-03.jpg\',\'../../img/MEN/list-01-04.jpg\',\'../../img/MEN/list-01-05.jpg\']', '../../img/MEN/list-17-grey.jpg', '[\'165/84A/S\',\'180/108B/XL\']', 'grey');
INSERT INTO `goodsmsg` VALUES ('34', '18', '凉感圆领T恤-男', '[\'../../img/MEN/list-02-01.jpg\',\'../../img/MEN/list-02-02.jpg\',\'../../img/MEN/list-02-03.jpg\',\'../../img/MEN/list-02-04.jpg\',\'../../img/MEN/list-02-05.jpg\']', '../../img/MEN/list-18-grey.jpg', '[\'185/112C/XXL\']', 'grey');
INSERT INTO `goodsmsg` VALUES ('35', '19', '凉感网眼圆领T恤-男', '[\'../../img/MEN/list-02-01.jpg\',\'../../img/MEN/list-02-02.jpg\',\'../../img/MEN/list-02-03.jpg\',\'../../img/MEN/list-02-04.jpg\',\'../../img/MEN/list-02-05.jpg\']', '../../img/MEN/list-19-grey.jpg', '[\'165/84A/S\',\'180/108B/XL\']', 'grey');
INSERT INTO `goodsmsg` VALUES ('36', '20', '凉感网眼V领T恤-男', '[\'../../img/MEN/list-01-01.jpg\',\'../../img/MEN/list-01-02.jpg\',\'../../img/MEN/list-01-03.jpg\',\'../../img/MEN/list-01-04.jpg\',\'../../img/MEN/list-01-05.jpg\']', '../../img/MEN/list-20-grey.jpg', '[\'185/112C/XXL\']', 'grey');
INSERT INTO `goodsmsg` VALUES ('37', '21', '吸汗V领T恤-男', '[\'../../img/MEN/list-01-01.jpg\',\'../../img/MEN/list-01-02.jpg\',\'../../img/MEN/list-01-03.jpg\',\'../../img/MEN/list-01-04.jpg\',\'../../img/MEN/list-01-05.jpg\']', '../../img/MEN/list-21-grey.jpg', '[\'185/112C/XXL\']', 'grey');
INSERT INTO `goodsmsg` VALUES ('38', '22', '吸汗V领T恤-男', '[\'../../img/MEN/list-02-01.jpg\',\'../../img/MEN/list-02-02.jpg\',\'../../img/MEN/list-02-03.jpg\',\'../../img/MEN/list-02-04.jpg\',\'../../img/MEN/list-02-05.jpg\']', '../../img/MEN/list-22-pink.jpg', '[\'165/84A/S\',\'170/92A/M\',\'175/100A/L\',\'180/108B/XL\']', 'pink');
INSERT INTO `goodsmsg` VALUES ('39', '23', '吸汗圆领T恤-男', '[\'../../img/MEN/list-02-01.jpg\',\'../../img/MEN/list-02-02.jpg\',\'../../img/MEN/list-02-03.jpg\',\'../../img/MEN/list-02-04.jpg\',\'../../img/MEN/list-02-05.jpg\']', '../../img/MEN/list-23-yellow.jpg', '[\'185/112C/XXL\']', 'yellow');
INSERT INTO `goodsmsg` VALUES ('40', '24', '吸汗圆领T恤-男', '[\'../../img/MEN/list-01-01.jpg\',\'../../img/MEN/list-01-02.jpg\',\'../../img/MEN/list-01-03.jpg\',\'../../img/MEN/list-01-04.jpg\',\'../../img/MEN/list-01-05.jpg\']', '../../img/MEN/list-24-purple.jpg', '[\'165/84A/S\',\'180/108B/XL\']', 'purple');

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
