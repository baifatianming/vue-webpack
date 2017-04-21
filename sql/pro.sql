/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : pro

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2017-04-21 09:12:53
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

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `indexID` int(11) NOT NULL,
  `order` int(11) DEFAULT NULL,
  `img` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `size` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`indexID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '5565', '../../../img/MEN/list-01-blue.jpg', '云南省', '摇粒绒拉链背心-女 ', '黑色-160/84A/M', '2017-04-17 11:47', '挺厚实，值得买。');
INSERT INTO `comment` VALUES ('2', '8635', '../../../img/MEN/list-02-black.jpg', '云南省', '印花连帽运动长衫-03-女', '麻灰-160/84A/M', '2017-04-17 11:48', '性价比高啊！');
INSERT INTO `comment` VALUES ('3', '8635', '../../../img/MEN/list-03-yellow.jpg', '云南省', '法兰绒格子连衣裙-女', '绿桃格-160/88A/L', '2017-04-17 11:47', '如果不起球堪称完美。起球太厉害，扔了一件又原款原色买了一件。看如果不洗还会不会起球。');
INSERT INTO `comment` VALUES ('4', '4641', '../../../img/MEN/list-04-blue.jpg', '上海', '经典百搭腰带-女', '酒红-1080x22mm/L', '2017-04-17 11:06', '很好看的');
INSERT INTO `comment` VALUES ('5', '4641', '../../../img/MEN/list-05-blue.jpg', '上海', '休闲配条腰带-中性款', '藏青黄条-1170x38mm/均码', '2017-04-17 11:06', '东西不错。');
INSERT INTO `comment` VALUES ('6', '5157', '../../../img/MEN/list-06-purple.jpg', '安徽省', '柔软圆领长袖T恤-男', '白色-175/100A/L', '2017-04-17 09:55', '质量挺好的，摸着舒服');
INSERT INTO `comment` VALUES ('7', '4412', '../../../img/MEN/list-07-brown.jpg', '广东省', '仿旧休闲腰带-男', '浅咖-1020x34mm/M', '2017-04-17 09:17', '不错，就是孔不得自己加工');
INSERT INTO `comment` VALUES ('8', '3956', '../../../img/MEN/list-08-blue.jpg', '广东省', '刷毛弹力紧身裤-女', ' 蓝色-160/66A/M', '2017-04-17 08:56', '里面的弹力线都出来了');
INSERT INTO `comment` VALUES ('9', '4122', '../../../img/MEN/list-09-green.jpg', '广东省', '美利奴圆领针织衫-女', '亮蓝-155/80A/S', '2017-04-17 08:56', '可以');
INSERT INTO `comment` VALUES ('10', '4223', '../../../img/MEN/list-10-red.jpg', '广东省', '柔软连帽拉链茄克-女', '浅麻灰-160/84A/M', '2017-04-17 08:56', '挺好的，款式也不错');
INSERT INTO `comment` VALUES ('11', '2323', '../../../img/MEN/list-11-white.jpg', '上海', '运动圆领T恤-男', '白色-175/100A/L', '2017-04-18 11:20', '哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈，太完美了，不能再完美，我很满意!');

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
  `goodsImgDetail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`indexId`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of goodsmsg
-- ----------------------------
INSERT INTO `goodsmsg` VALUES ('1', '1', 'PIMA 棉V领T恤-男', '../../../img/MEN/list-01-01.jpg,../../../img/MEN/list-01-02.jpg,../../../img/MEN/list-01-03.jpg,../../../img/MEN/list-01-04.jpg,../../../img/MEN/list-01-05.jpg', '../../../img/MEN/list-01-blue.jpg', '165/84A/S,180/108B/XL', 'blue', '../../../img/MEN/detail-01-01.jpg,../../../img/MEN/detail-01-02.jpg,../../../img/MEN/detail-01-03.jpg,../../../img/MEN/detail-01-04.jpg,../../../img/MEN/detail-01-05.jpg,../../../img/MEN/detail-01-06.jpg');
INSERT INTO `goodsmsg` VALUES ('2', '1', 'PIMA 棉V领T恤-男', '../../../img/MEN/list-01-01.jpg,../../../img/MEN/list-01-02.jpg,../../../img/MEN/list-01-03.jpg,../../../img/MEN/list-01-04.jpg,../../../img/MEN/list-01-05.jpg', '../../../img/MEN/list-01-grey.jpg', '165/84A/S,180/108B/XL', 'grey', null);
INSERT INTO `goodsmsg` VALUES ('3', '1', 'PIMA 棉V领T恤-男', '../../../img/MEN/list-01-01.jpg,../../../img/MEN/list-01-02.jpg,../../../img/MEN/list-01-03.jpg,../../../img/MEN/list-01-04.jpg,../../../img/MEN/list-01-05.jpg', '../../../img/MEN/list-01-pink.jpg', '165/84A/S,180/108B/XL', 'pink', null);
INSERT INTO `goodsmsg` VALUES ('4', '1', 'PIMA 棉V领T恤-男', '../../../img/MEN/list-01-01.jpg,../../../img/MEN/list-01-02.jpg,../../../img/MEN/list-01-03.jpg,../../../img/MEN/list-01-04.jpg,../../../img/MEN/list-01-05.jpg', '../../../img/MEN/list-01-purple.jpg', '165/84A/S,180/108B/XL', 'purple', null);
INSERT INTO `goodsmsg` VALUES ('5', '2', 'Pima 棉V领T恤-男', '../../../img/MEN/list-02-01.jpg,../../../img/MEN/list-02-02.jpg,../../../img/MEN/list-02-03.jpg,../../../img/MEN/list-02-04.jpg,../../../img/MEN/list-02-05.jpg', '../../../img/MEN/list-02-black.jpg', '165/84A/S,170/92A/M,175/100A/L,180/108B/XL', 'black', '../../../img/MEN/detail-02-01.jpg,../../../img/MEN/detail-02-02.jpg,../../../img/MEN/detail-02-03.jpg,../../../img/MEN/detail-02-04.jpg,../../../img/MEN/detail-02-05.jpg,../../../img/MEN/detail-02-06.jpg,../../../img/MEN/detail-02-07.jpg');
INSERT INTO `goodsmsg` VALUES ('6', '2', 'Pima 棉V领T恤-男', '../../../img/MEN/list-02-01.jpg,../../../img/MEN/list-02-02.jpg,../../../img/MEN/list-02-03.jpg,../../../img/MEN/list-02-04.jpg,../../../img/MEN/list-02-05.jpg', '../../../img/MEN/list-02-green.jpg', '165/84A/S,170/92A/M,175/100A/L,180/108B/XL', 'green', null);
INSERT INTO `goodsmsg` VALUES ('7', '2', 'Pima 棉V领T恤-男', '../../../img/MEN/list-02-01.jpg,../../../img/MEN/list-02-02.jpg,../../../img/MEN/list-02-03.jpg,../../../img/MEN/list-02-04.jpg,../../../img/MEN/list-02-05.jpg', '../../../img/MEN/list-02-red.jpg', '165/84A/S,170/92A/M,175/100A/L,180/108B/XL', 'red', null);
INSERT INTO `goodsmsg` VALUES ('8', '2', 'Pima 棉V领T恤-男', '../../../img/MEN/list-02-01.jpg,../../../img/MEN/list-02-02.jpg,../../../img/MEN/list-02-03.jpg,../../../img/MEN/list-02-04.jpg,../../../img/MEN/list-02-05.jpg', '../../../img/MEN/list-02-white.jpg', '165/84A/S,170/92A/M,175/100A/L,180/108B/XL', 'white', null);
INSERT INTO `goodsmsg` VALUES ('9', '2', 'Pima 棉V领T恤-男', '../../../img/MEN/list-02-01.jpg,../../../img/MEN/list-02-02.jpg,../../../img/MEN/list-02-03.jpg,../../../img/MEN/list-02-04.jpg,../../../img/MEN/list-02-05.jpg', '../../../img/MEN/list-02-yellow.jpg', '165/84A/S,170/92A/M,175/100A/L,180/108B/XL', 'yellow', null);
INSERT INTO `goodsmsg` VALUES ('10', '3', 'PIMA 棉圆领T恤-男', '../../../img/MEN/list-01-01.jpg,../../../img/MEN/list-01-02.jpg,../../../img/MEN/list-01-03.jpg,../../../img/MEN/list-01-04.jpg,../../../img/MEN/list-01-05.jpg', '../../../img/MEN/list-03-pink.jpg', '185/112C/XXL', 'pink', '../../../img/MEN/detail-03-01.jpg,../../../img/MEN/detail-03-02.jpg,../../../img/MEN/detail-03-03.jpg,../../../img/MEN/detail-03-04.jpg,../../../img/MEN/detail-03-05.jpg,../../../img/MEN/detail-01-06.jpg');
INSERT INTO `goodsmsg` VALUES ('11', '3', 'PIMA 棉圆领T恤-男', '../../../img/MEN/list-01-01.jpg,../../../img/MEN/list-01-02.jpg,../../../img/MEN/list-01-03.jpg,../../../img/MEN/list-01-04.jpg,../../../img/MEN/list-01-05.jpg', '../../../img/MEN/list-03-yellow.jpg', '185/112C/XXL', 'yellow', null);
INSERT INTO `goodsmsg` VALUES ('12', '4', 'Pima 棉圆领T恤-男', '../../../img/MEN/list-02-01.jpg,../../../img/MEN/list-02-02.jpg,../../../img/MEN/list-02-03.jpg,../../../img/MEN/list-02-04.jpg,../../../img/MEN/list-02-05.jpg', '../../../img/MEN/list-04-black.jpg', '165/84A/S,170/92A/M,175/100A/L,180/108B/XL', 'black', '../../../img/MEN/detail-03-01.jpg,../../../img/MEN/detail-03-02.jpg,../../../img/MEN/detail-03-03.jpg,../../../img/MEN/detail-03-04.jpg,../../../img/MEN/detail-03-05.jpg,../../../img/MEN/detail-01-06.jpg');
INSERT INTO `goodsmsg` VALUES ('13', '4', 'Pima 棉圆领T恤-男', '../../../img/MEN/list-02-01.jpg,../../../img/MEN/list-02-02.jpg,../../../img/MEN/list-02-03.jpg,../../../img/MEN/list-02-04.jpg,../../../img/MEN/list-02-05.jpg', '../../../img/MEN/list-04-blue.jpg', '165/84A/S,170/92A/M,175/100A/L,180/108B/XL', 'blue', null);
INSERT INTO `goodsmsg` VALUES ('14', '4', 'Pima 棉圆领T恤-男', '../../../img/MEN/list-02-01.jpg,../../../img/MEN/list-02-02.jpg,../../../img/MEN/list-02-03.jpg,../../../img/MEN/list-02-04.jpg,../../../img/MEN/list-02-05.jpg', '../../../img/MEN/list-04-red.jpg', '165/84A/S,170/92A/M,175/100A/L,180/108B/XL', 'red', null);
INSERT INTO `goodsmsg` VALUES ('15', '5', '保暖圆领短袖T恤-男', '../../../img/MEN/list-01-01.jpg,../../../img/MEN/list-01-02.jpg,../../../img/MEN/list-01-03.jpg,../../../img/MEN/list-01-04.jpg,../../../img/MEN/list-01-05.jpg', '../../../img/MEN/list-05-black.jpg', '185/112C/XXL', 'black', '../../../img/MEN/detail-05-01.jpg,../../../img/MEN/detail-05-02.jpg,../../../img/MEN/detail-05-03.jpg,../../../img/MEN/detail-05-04.jpg,../../../img/MEN/detail-05-05.jpg,../../../img/MEN/detail-05-06.jpg');
INSERT INTO `goodsmsg` VALUES ('16', '5', '保暖圆领短袖T恤-男', '../../../img/MEN/list-01-01.jpg,../../../img/MEN/list-01-02.jpg,../../../img/MEN/list-01-03.jpg,../../../img/MEN/list-01-04.jpg,../../../img/MEN/list-01-05.jpg', '../../../img/MEN/list-05-blue.jpg', '185/112C/XXL', 'blue', null);
INSERT INTO `goodsmsg` VALUES ('17', '5', '保暖圆领短袖T恤-男', '../../../img/MEN/list-01-01.jpg,../../../img/MEN/list-01-02.jpg,../../../img/MEN/list-01-03.jpg,../../../img/MEN/list-01-04.jpg,../../../img/MEN/list-01-05.jpg', '../../../img/MEN/list-05-red.jpg', '185/112C/XXL', 'red', null);
INSERT INTO `goodsmsg` VALUES ('18', '6', '保暖V领短袖T恤-男', '../../../img/MEN/list-02-01.jpg,../../../img/MEN/list-02-02.jpg,../../../img/MEN/list-02-03.jpg,../../../img/MEN/list-02-04.jpg,../../../img/MEN/list-02-05.jpg', '../../../img/MEN/list-06-blue.jpg', '165/84A/S,170/92A/M,175/100A/L,180/108B/XL', 'blue', '../../../img/MEN/detail-05-01.jpg,../../../img/MEN/detail-05-02.jpg,../../../img/MEN/detail-05-03.jpg,../../../img/MEN/detail-05-04.jpg,../../../img/MEN/detail-05-05.jpg,../../../img/MEN/detail-05-06.jpg');
INSERT INTO `goodsmsg` VALUES ('19', '6', '保暖V领短袖T恤-男', '../../../img/MEN/list-02-01.jpg,../../../img/MEN/list-02-02.jpg,../../../img/MEN/list-02-03.jpg,../../../img/MEN/list-02-04.jpg,../../../img/MEN/list-02-05.jpg', '../../../img/MEN/list-06-grey.jpg', '165/84A/S,170/92A/M,175/100A/L,180/108B/XL', 'grey', null);
INSERT INTO `goodsmsg` VALUES ('20', '6', '保暖V领短袖T恤-男', '../../../img/MEN/list-02-01.jpg,../../../img/MEN/list-02-02.jpg,../../../img/MEN/list-02-03.jpg,../../../img/MEN/list-02-04.jpg,../../../img/MEN/list-02-05.jpg', '../../../img/MEN/list-06-purple.jpg', '165/84A/S,170/92A/M,175/100A/L,180/108B/XL', 'purple', null);
INSERT INTO `goodsmsg` VALUES ('21', '6', '保暖V领短袖T恤-男', '../../../img/MEN/list-02-01.jpg,../../../img/MEN/list-02-02.jpg,../../../img/MEN/list-02-03.jpg,../../../img/MEN/list-02-04.jpg,../../../img/MEN/list-02-05.jpg', '../../../img/MEN/list-06-red.jpg', '165/84A/S,170/92A/M,175/100A/L,180/108B/XL', 'red', null);
INSERT INTO `goodsmsg` VALUES ('22', '7', '吸汗罗纹背心-男', '../../../img/MEN/list-01-01.jpg,../../../img/MEN/list-01-02.jpg,../../../img/MEN/list-01-03.jpg,../../../img/MEN/list-01-04.jpg,../../../img/MEN/list-01-05.jpg', '../../../img/MEN/list-07-brown.jpg', '165/84A/S,180/108B/XL', 'brown', '../../../img/MEN/detail-07-01.jpg,../../../img/MEN/detail-07-02.jpg,../../../img/MEN/detail-07-03.jpg,../../../img/MEN/detail-07-04.jpg,../../../img/MEN/detail-07-05.jpg,../../../img/MEN/detail-07-06.jpg');
INSERT INTO `goodsmsg` VALUES ('23', '7', '吸汗罗纹背心-男', '../../../img/MEN/list-01-01.jpg,../../../img/MEN/list-01-02.jpg,../../../img/MEN/list-01-03.jpg,../../../img/MEN/list-01-04.jpg,../../../img/MEN/list-01-05.jpg', '../../../img/MEN/list-07-grey.jpg', '165/84A/S,180/108B/XL', 'grey', null);
INSERT INTO `goodsmsg` VALUES ('24', '8', '运动背心-男', '../../../img/MEN/list-02-01.jpg,../../../img/MEN/list-02-02.jpg,../../../img/MEN/list-02-03.jpg,../../../img/MEN/list-02-04.jpg,../../../img/MEN/list-02-05.jpg', '../../../img/MEN/list-08-blue.jpg', '185/112C/XXL', 'blue', '../../../img/MEN/detail-08-01.jpg,../../../img/MEN/detail-08-02.jpg,../../../img/MEN/detail-08-03.jpg,../../../img/MEN/detail-08-04.jpg,../../../img/MEN/detail-08-05.jpg,../../../img/MEN/detail-08-06.jpg');
INSERT INTO `goodsmsg` VALUES ('25', '9', '运动V领T恤-男', '../../../img/MEN/list-01-01.jpg,../../../img/MEN/list-01-02.jpg,../../../img/MEN/list-01-03.jpg,../../../img/MEN/list-01-04.jpg,../../../img/MEN/list-01-05.jpg', '../../../img/MEN/list-09-green.jpg', '165/84A/S,180/108B/XL', 'green', '../../../img/MEN/detail-09-01.jpg,../../../img/MEN/detail-09-02.jpg,../../../img/MEN/detail-09-03.jpg,../../../img/MEN/detail-09-04.jpg,../../../img/MEN/detail-09-05.jpg,../../../img/MEN/detail-09-06.jpg');
INSERT INTO `goodsmsg` VALUES ('26', '10', '运动条纹V领T恤-男', '../../../img/MEN/list-01-01.jpg,../../../img/MEN/list-01-02.jpg,../../../img/MEN/list-01-03.jpg,../../../img/MEN/list-01-04.jpg,../../../img/MEN/list-01-05.jpg', '../../../img/MEN/list-10-red.jpg', '165/84A/S,180/108B/XL', 'red', '../../../img/MEN/detail-010-01.jpg,../../../img/MEN/detail-010-02.jpg,../../../img/MEN/detail-010-03.jpg,../../../img/MEN/detail-010-04.jpg,../../../img/MEN/detail-010-05.jpg,../../../img/MEN/detail-010-06.jpg');
INSERT INTO `goodsmsg` VALUES ('27', '11', '运动圆领T恤-男', '../../../img/MEN/list-02-01.jpg,../../../img/MEN/list-02-02.jpg,../../../img/MEN/list-02-03.jpg,../../../img/MEN/list-02-04.jpg,../../../img/MEN/list-02-05.jpg', '../../../img/MEN/list-11-white.jpg', '165/84A/S,170/92A/M,175/100A/L,180/108B/XL', 'white', '../../../img/MEN/detail-011-01.jpg,../../../img/MEN/detail-011-02.jpg,../../../img/MEN/detail-011-03.jpg,../../../img/MEN/detail-011-04.jpg,../../../img/MEN/detail-011-05.jpg,../../../img/MEN/detail-011-06.jpg');
INSERT INTO `goodsmsg` VALUES ('28', '12', '运动条纹V领T恤-男', '../../../img/MEN/list-01-01.jpg,../../../img/MEN/list-01-02.jpg,../../../img/MEN/list-01-03.jpg,../../../img/MEN/list-01-04.jpg,../../../img/MEN/list-01-05.jpg', '../../../img/MEN/list-12-orange.jpg', '165/84A/S,180/108B/XL', 'orange', '../../../img/MEN/detail-012-01.jpg,../../../img/MEN/detail-012-02.jpg,../../../img/MEN/detail-012-03.jpg,../../../img/MEN/detail-012-04.jpg,../../../img/MEN/detail-012-05.jpg,../../../img/MEN/detail-012-06.jpg');
INSERT INTO `goodsmsg` VALUES ('29', '13', '运动V领T恤-男', '../../../img/MEN/list-02-01.jpg,../../../img/MEN/list-02-02.jpg,../../../img/MEN/list-02-03.jpg,../../../img/MEN/list-02-04.jpg,../../../img/MEN/list-02-05.jpg', '../../../img/MEN/list-13-blue.jpg', '185/112C/XXL', 'blue', '../../../img/MEN/detail-013-01.jpg,../../../img/MEN/detail-013-02.jpg,../../../img/MEN/detail-013-03.jpg,../../../img/MEN/detail-013-04.jpg,../../../img/MEN/detail-013-05.jpg,../../../img/MEN/detail-013-06.jpg');
INSERT INTO `goodsmsg` VALUES ('30', '14', '运动半拉链领T恤-男', '../../../img/MEN/list-01-01.jpg,../../../img/MEN/list-01-02.jpg,../../../img/MEN/list-01-03.jpg,../../../img/MEN/list-01-04.jpg,../../../img/MEN/list-01-05.jpg', '../../../img/MEN/list-14-green.jpg', '165/84A/S,180/108B/XL', 'green', '../../../img/MEN/detail-014-01.jpg,../../../img/MEN/detail-014-02.jpg,../../../img/MEN/detail-014-03.jpg,../../../img/MEN/detail-014-04.jpg,../../../img/MEN/detail-014-05.jpg,../../../img/MEN/detail-014-06.jpg');
INSERT INTO `goodsmsg` VALUES ('31', '15', '凉感网眼圆领背心-男', '../../../img/MEN/list-02-01.jpg,../../../img/MEN/list-02-02.jpg,../../../img/MEN/list-02-03.jpg,../../../img/MEN/list-02-04.jpg,../../../img/MEN/list-02-05.jpg', '../../../img/MEN/list-15-blue.jpg', '165/84A/S,170/92A/M,175/100A/L,180/108B/XL', 'blue', '../../../img/MEN/detail-015-01.jpg,../../../img/MEN/detail-015-02.jpg,../../../img/MEN/detail-015-03.jpg,../../../img/MEN/detail-015-04.jpg,../../../img/MEN/detail-015-05.jpg,../../../img/MEN/detail-015-06.jpg');
INSERT INTO `goodsmsg` VALUES ('32', '16', '凉感网眼V领背心-男', '../../../img/MEN/list-01-01.jpg,../../../img/MEN/list-01-02.jpg,../../../img/MEN/list-01-03.jpg,../../../img/MEN/list-01-04.jpg,../../../img/MEN/list-01-05.jpg', '../../../img/MEN/list-16-black.jpg', '185/112C/XXL', 'black', '../../../img/MEN/detail-016-01.jpg,../../../img/MEN/detail-016-02.jpg,../../../img/MEN/detail-016-03.jpg,../../../img/MEN/detail-016-04.jpg,../../../img/MEN/detail-016-05.jpg,../../../img/MEN/detail-016-06.jpg');
INSERT INTO `goodsmsg` VALUES ('33', '17', '凉感V领T恤-男', '../../../img/MEN/list-01-01.jpg,../../../img/MEN/list-01-02.jpg,../../../img/MEN/list-01-03.jpg,../../../img/MEN/list-01-04.jpg,../../../img/MEN/list-01-05.jpg', '../../../img/MEN/list-17-grey.jpg', '165/84A/S,180/108B/XL', 'grey', '../../../img/MEN/detail-017-01.jpg,../../../img/MEN/detail-017-02.jpg,../../../img/MEN/detail-017-03.jpg,../../../img/MEN/detail-017-04.jpg,../../../img/MEN/detail-017-05.jpg,../../../img/MEN/detail-017-06.jpg');
INSERT INTO `goodsmsg` VALUES ('34', '18', '凉感圆领T恤-男', '../../../img/MEN/list-02-01.jpg,../../../img/MEN/list-02-02.jpg,../../../img/MEN/list-02-03.jpg,../../../img/MEN/list-02-04.jpg,../../../img/MEN/list-02-05.jpg', '../../../img/MEN/list-18-grey.jpg', '185/112C/XXL', 'grey', '../../../img/MEN/detail-018-01.jpg,../../../img/MEN/detail-018-02.jpg,../../../img/MEN/detail-018-03.jpg,../../../img/MEN/detail-018-04.jpg,../../../img/MEN/detail-018-05.jpg,../../../img/MEN/detail-018-06.jpg');
INSERT INTO `goodsmsg` VALUES ('35', '19', '凉感网眼圆领T恤-男', '../../../img/MEN/list-02-01.jpg,../../../img/MEN/list-02-02.jpg,../../../img/MEN/list-02-03.jpg,../../../img/MEN/list-02-04.jpg,../../../img/MEN/list-02-05.jpg', '../../../img/MEN/list-19-grey.jpg', '165/84A/S,180/108B/XL', 'grey', '../../../img/MEN/detail-019-01.jpg,../../../img/MEN/detail-019-02.jpg,../../../img/MEN/detail-019-03.jpg,../../../img/MEN/detail-019-04.jpg,../../../img/MEN/detail-019-05.jpg,../../../img/MEN/detail-019-06.jpg');
INSERT INTO `goodsmsg` VALUES ('36', '20', '凉感网眼V领T恤-男', '../../../img/MEN/list-01-01.jpg,../../../img/MEN/list-01-02.jpg,../../../img/MEN/list-01-03.jpg,../../../img/MEN/list-01-04.jpg,../../../img/MEN/list-01-05.jpg', '../../../img/MEN/list-20-grey.jpg', '185/112C/XXL', 'grey', '../../../img/MEN/detail-020-01.jpg,../../../img/MEN/detail-020-02.jpg,../../../img/MEN/detail-020-03.jpg,../../../img/MEN/detail-020-04.jpg,../../../img/MEN/detail-020-05.jpg,../../../img/MEN/detail-020-06.jpg');
INSERT INTO `goodsmsg` VALUES ('37', '21', '吸汗V领T恤-男', '../../../img/MEN/list-01-01.jpg,../../../img/MEN/list-01-02.jpg,../../../img/MEN/list-01-03.jpg,../../../img/MEN/list-01-04.jpg,../../../img/MEN/list-01-05.jpg', '../../../img/MEN/list-21-grey.jpg', '185/112C/XXL', 'grey', '../../../img/MEN/detail-021-01.jpg,../../../img/MEN/detail-021-02.jpg,../../../img/MEN/detail-021-03.jpg,../../../img/MEN/detail-021-04.jpg,../../../img/MEN/detail-021-05.jpg,../../../img/MEN/detail-021-06.jpg');
INSERT INTO `goodsmsg` VALUES ('38', '22', '吸汗V领T恤-男', '../../../img/MEN/list-02-01.jpg,../../../img/MEN/list-02-02.jpg,../../../img/MEN/list-02-03.jpg,../../../img/MEN/list-02-04.jpg,../../../img/MEN/list-02-05.jpg', '../../../img/MEN/list-22-pink.jpg', '165/84A/S,170/92A/M,175/100A/L,180/108B/XL', 'pink', '../../../img/MEN/detail-022-01.jpg,../../../img/MEN/detail-022-02.jpg,../../../img/MEN/detail-022-03.jpg,../../../img/MEN/detail-022-04.jpg,../../../img/MEN/detail-022-05.jpg,../../../img/MEN/detail-022-06.jpg');
INSERT INTO `goodsmsg` VALUES ('39', '23', '吸汗圆领T恤-男', '../../../img/MEN/list-02-01.jpg,../../../img/MEN/list-02-02.jpg,../../../img/MEN/list-02-03.jpg,../../../img/MEN/list-02-04.jpg,../../../img/MEN/list-02-05.jpg', '../../../img/MEN/list-23-yellow.jpg', '185/112C/XXL', 'yellow', '../../../img/MEN/detail-023-01.jpg,../../../img/MEN/detail-023-02.jpg,../../../img/MEN/detail-023-03.jpg,../../../img/MEN/detail-023-04.jpg,../../../img/MEN/detail-023-05.jpg,../../../img/MEN/detail-023-06.jpg');
INSERT INTO `goodsmsg` VALUES ('40', '24', '吸汗圆领T恤-男', '../../../img/MEN/list-01-01.jpg,../../../img/MEN/list-01-02.jpg,../../../img/MEN/list-01-03.jpg,../../../img/MEN/list-01-04.jpg,../../../img/MEN/list-01-05.jpg', '../../../img/MEN/list-24-purple.jpg', '165/84A/S,180/108B/XL', 'purple', '../../../img/MEN/detail-024-01.jpg,../../../img/MEN/detail-024-02.jpg,../../../img/MEN/detail-024-03.jpg,../../../img/MEN/detail-024-04.jpg,../../../img/MEN/detail-024-05.jpg,../../../img/MEN/detail-024-06.jpg');
INSERT INTO `goodsmsg` VALUES ('41', '1', 'PIMA 棉V领T恤-男', '../../../img/MEN/list-01-01.jpg,../../../img/MEN/list-01-02.jpg,../../../img/MEN/list-01-03.jpg,../../../img/MEN/list-01-04.jpg,../../../img/MEN/list-01-05.jpg', '../../../img/MEN/list-01-black.jpg', '165/84A/S,180/108B/XL', 'black', null);

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
  `address` text CHARACTER SET utf8,
  `comment` text,
  `done` text CHARACTER SET utf8,
  `goodsMsg` text CHARACTER SET utf8,
  PRIMARY KEY (`indexId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('15', null, 'www', '123', '3434', '3434', null, '[{\"goodsId\":\"15\",\"num\":6,\"description\":\"u51c9u611fu7f51u773cu5706u9886u80ccu5fc3-u7537\",\"imgSrc\":\"../../../img/MEN/list-15-blue.jpg\",\"price\":\"29\",\"color\":\"blue\",\"size\":\"170/92A/M\"},{\"goodsId\":\"1\",\"num\":9,\"description\":\"PIMA u68c9Vu9886Tu6064-u7537\",\"imgSrc\":\"http://localhost:8080/img/MEN/list-01-pink.jpg\",\"price\":\"29\",\"color\":\"pink\",\"size\":\"165/84A/S\"},{\"goodsId\":\"2\",\"num\":13,\"description\":\"Pima u68c9Vu9886Tu6064-u7537\",\"imgSrc\":\"http://localhost:8080/img/MEN/list-02-white.jpg\",\"price\":\"29\",\"color\":\"white\",\"size\":\"165/84A/S\"},{\"goodsId\":\"5\",\"num\":\"8\",\"description\":\"u4fddu6696u5706u9886u77edu8896Tu6064-u7537\",\"imgSrc\":\"http://localhost:8080/img/MEN/list-05-blue.jpg\",\"price\":\"29\",\"color\":\"blue\",\"size\":\"185/112C/XXL\"},{\"goodsId\":\"3\",\"num\":\"8\",\"description\":\"PIMA u68c9u5706u9886Tu6064-u7537\",\"imgSrc\":\"http://localhost:8080/img/MEN/list-03-yellow.jpg\",\"price\":\"29\",\"color\":\"yellow\",\"size\":\"185/112C/XXL\"},{\"goodsId\":\"7\",\"num\":\"5\",\"description\":\"u5438u6c57u7f57u7eb9u80ccu5fc3-u7537\",\"imgSrc\":\"http://localhost:8080/img/MEN/list-07-grey.jpg\",\"price\":\"29\",\"color\":\"grey\",\"size\":\"165/84A/S\"},{\"goodsId\":\"22\",\"num\":\"7\",\"description\":\"u5438u6c57Vu9886Tu6064-u7537\",\"imgSrc\":\"../../../img/MEN/list-22-pink.jpg\",\"price\":\"29\",\"color\":\"pink\",\"size\":\"\"},{\"goodsId\":\"8\",\"num\":\"12\",\"description\":\"u8fd0u52a8u80ccu5fc3-u7537\",\"imgSrc\":\"../../../img/MEN/list-08-blue.jpg\",\"price\":\"29\",\"color\":\"blue\",\"size\":\"185/112C/XXL\"}]', '[{\"goodsId\":\"1\",\"num\":\"2\",\"description\":\"PIMA u68c9Vu9886Tu6064-u7537\",\"imgSrc\":\"http://localhost:8080/img/MEN/list-01-pink.jpg\",\"price\":\"29\",\"color\":\"pink\",\"size\":\"180/108B/XL\"},{\"goodsId\":\"2\",\"num\":4,\"description\":\"Pima u68c9Vu9886Tu6064-u7537\",\"imgSrc\":\"http://localhost:8080/img/MEN/list-02-yellow.jpg\",\"price\":\"29\",\"color\":\"yellow\",\"size\":\"170/92A/M\"},{\"goodsId\":\"5\",\"num\":\"3\",\"description\":\"u4fddu6696u5706u9886u77edu8896Tu6064-u7537\",\"imgSrc\":\"http://localhost:8080/img/MEN/list-05-blue.jpg\",\"price\":\"29\",\"color\":\"blue\",\"size\":\"185/112C/XXL\"}]');
INSERT INTO `user` VALUES ('16', null, 'kkj', '123', '0', 'wssd', null, '[{\"goodsId\":\"1\",\"num\":\"5\",\"description\":\"PIMA u68c9Vu9886Tu6064-u7537\",\"imgSrc\":\"http://localhost:8080/img/MEN/list-01-black.jpg\",\"price\":\"29\",\"color\":\"black\",\"size\":\"165/84A/S\"}]', '[{\"goodsId\":\"3\",\"num\":\"3\",\"description\":\"PIMA u68c9u5706u9886Tu6064-u7537\",\"imgSrc\":\"../../../img/MEN/list-03-pink.jpg\",\"price\":\"29\",\"color\":\"pink\",\"size\":\"185/112C/XXL\"},{\"goodsId\":\"2\",\"num\":\"3\",\"description\":\"Pima u68c9Vu9886Tu6064-u7537\",\"imgSrc\":\"http://localhost:8080/img/MEN/list-02-red.jpg\",\"price\":\"29\",\"color\":\"red\",\"size\":\"165/84A/S\"}]');
INSERT INTO `user` VALUES ('17', null, 'ttt', 'ttt', null, null, null, null, '[{\"goodsId\":\"1\",\"num\":\"0\",\"description\":\"PIMA u68c9Vu9886Tu6064-u7537\",\"imgSrc\":\"../../../img/MEN/list-01-blue.jpg\",\"price\":\"29\",\"color\":\"blue\",\"size\":\"180/108B/XL\"}]');
