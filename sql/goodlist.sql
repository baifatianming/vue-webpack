/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : lativ

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2017-04-19 14:31:51
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
  `goodsPrice` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `goodsSize` varchar(255) DEFAULT NULL,
  `goodsImg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`indexId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of goodlist
-- ----------------------------
INSERT INTO `goodlist` VALUES ('0', '1', 'PIMA 棉V领T恤-男', 'MEN', '￥55', 'L,XXL', '../../../img/MEN/list-01.jpg');
INSERT INTO `goodlist` VALUES ('1', '2', 'Pima 棉V领T恤-男', 'MEN', '￥55', 'M,L,XL,XXL', '../../../img/MEN/list-02.jpg');
INSERT INTO `goodlist` VALUES ('2', '3', 'PIMA 棉圆领T恤-男', 'MEN', '￥36', 'M,L,XL,XXL', '../../../img/MEN/list-03.jpg');
INSERT INTO `goodlist` VALUES ('3', '4', 'Pima 棉圆领T恤-男', 'MEN', '￥39', 'S,M,XXL', '../../../img/MEN/list-04.jpg');
INSERT INTO `goodlist` VALUES ('4', '5', '保暖圆领短袖T恤-男', 'MEN', '￥55', 'M,XL', '../../../img/MEN/list-05.jpg');
INSERT INTO `goodlist` VALUES ('5', '6', '保暖V领短袖T恤-男', 'MEN', '￥79', 'M,L,XL,XXL', '../../../img/MEN/list-06.jpg');
INSERT INTO `goodlist` VALUES ('6', '7', '吸汗罗纹背心-男', 'MEN', '￥56', 'S,M,XXL', '../../../img/MEN/list-07.jpg');
INSERT INTO `goodlist` VALUES ('7', '8', '运动背心-男', 'MEN', '￥45', 'L,XXL', '../../../img/MEN/list-08.jpg');
INSERT INTO `goodlist` VALUES ('8', '9', '运动V领T恤-男', 'MEN', '￥67', 'M,L,XL,XXL', '../../../img/MEN/list-09.jpg');
INSERT INTO `goodlist` VALUES ('9', '10', '运动条纹V领T恤-男', 'MEN', '￥56', 'M,XL', '../../../img/MEN/list-10.jpg');
INSERT INTO `goodlist` VALUES ('10', '11', '运动圆领T恤-男', 'MEN', '￥77', 'S,M,XXL', '../../../img/MEN/list-11.jpg');
INSERT INTO `goodlist` VALUES ('11', '12', '运动条纹V领T恤-男', 'MEN', '￥56', 'M,XL', '../../../img/MEN/list-12.jpg');
INSERT INTO `goodlist` VALUES ('12', '13', '运动V领T恤-男', 'MEN', '￥45', 'M,L,XL,XXL', '../../../img/MEN/list-13.jpg');
INSERT INTO `goodlist` VALUES ('13', '14', '运动半拉链领T恤-男', 'MEN', '￥43', 'M,XXL', '../../../img/MEN/list-14.jpg');
INSERT INTO `goodlist` VALUES ('14', '15', '凉感网眼圆领背心-男', 'MEN', '￥49', 'S,M,XXL', '../../../img/MEN/list-15.jpg');
INSERT INTO `goodlist` VALUES ('15', '16', '凉感网眼V领背心-男', 'MEN', '￥56', 'M,XL', '../../../img/MEN/list-16.jpg');
INSERT INTO `goodlist` VALUES ('16', '17', '凉感V领T恤-男', 'MEN', '￥67', 'L,XXL', '../../../img/MEN/list-17.jpg');
INSERT INTO `goodlist` VALUES ('17', '18', '凉感圆领T恤-男', 'MEN', '￥65', 'M,XXL', '../../../img/MEN/list-18.jpg');
INSERT INTO `goodlist` VALUES ('18', '19', '凉感网眼圆领T恤-男', 'MEN', '￥67', 'S,M,XXL', '../../../img/MEN/list-19.jpg');
INSERT INTO `goodlist` VALUES ('19', '20', '凉感网眼V领T恤-男', 'MEN', '￥99', 'M,XXL', '../../../img/MEN/list-20.jpg');
INSERT INTO `goodlist` VALUES ('20', '21', '吸汗V领T恤-男', 'MEN', '￥56', 'S,M,XXL', '../../../img/MEN/list-21.jpg');
INSERT INTO `goodlist` VALUES ('21', '22', '吸汗V领T恤-男', 'MEN', '￥65', 'M,XXL', '../../../img/MEN/list-22.jpg');
INSERT INTO `goodlist` VALUES ('22', '23', '吸汗圆领T恤-男', 'MEN', '￥78', 'L,XXL', '../../../img/MEN/list-23.jpg');
INSERT INTO `goodlist` VALUES ('23', '24', '吸汗圆领T恤-男', 'MEN', '￥30', 'M,XXL', '../../../img/MEN/list-24.jpg');
