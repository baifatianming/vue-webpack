/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : lativ

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2017-04-19 16:18:25
*/

SET FOREIGN_KEY_CHECKS=0;

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
INSERT INTO `comment` VALUES ('0', '5565', '../../../img/comment/1.jpg', '云南省', '摇粒绒拉链背心-女 ', '黑色-160/84A/M', '2017-04-17 11:47', '挺厚实，值得买。');
INSERT INTO `comment` VALUES ('1', '8635', '../../../img/comment/2.jpg', '云南省', '印花连帽运动长衫-03-女', '麻灰-160/84A/M', '2017-04-17 11:48', '性价比高啊！');
INSERT INTO `comment` VALUES ('2', '8635', '../../../img/comment/3.jpg', '云南省', '法兰绒格子连衣裙-女', '绿桃格-160/88A/L', '2017-04-17 11:47', '如果不起球堪称完美。起球太厉害，扔了一件又原款原色买了一件。看如果不洗还会不会起球。');
INSERT INTO `comment` VALUES ('3', '4641', '../../../img/comment/4.jpg', '上海', '经典百搭腰带-女', '酒红-1080x22mm/L', '2017-04-17 11:06', '很好看的');
INSERT INTO `comment` VALUES ('4', '4641', '../../../img/comment/5.jpg', '上海', '休闲配条腰带-中性款', '藏青黄条-1170x38mm/均码', '2017-04-17 11:06', '东西不错。');
INSERT INTO `comment` VALUES ('5', '5157', '../../../img/comment/6.jpg', '安徽省', '柔软圆领长袖T恤-男', '白色-175/100A/L', '2017-04-17 09:55', '质量挺好的，摸着舒服');
INSERT INTO `comment` VALUES ('6', '4412', '../../../img/comment/7.jpg', '广东省', '仿旧休闲腰带-男', '浅咖-1020x34mm/M', '2017-04-17 09:17', '不错，就是孔不得自己加工');
INSERT INTO `comment` VALUES ('7', '3956', '../../../img/comment/8.jpg', '广东省', '刷毛弹力紧身裤-女', ' 蓝色-160/66A/M', '2017-04-17 08:56', '里面的弹力线都出来了');
INSERT INTO `comment` VALUES ('8', '4122', '../../../img/comment/9.jpg', '广东省', '美利奴圆领针织衫-女', '亮蓝-155/80A/S', '2017-04-17 08:56', '可以');
INSERT INTO `comment` VALUES ('9', '4223', '../../../img/comment/10.jpg', '广东省', '柔软连帽拉链茄克-女', '浅麻灰-160/84A/M', '2017-04-17 08:56', '挺好的，款式也不错');
