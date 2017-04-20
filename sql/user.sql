/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : pro

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2017-04-20 08:50:59
*/

SET FOREIGN_KEY_CHECKS=0;

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
  `goodsMsg` text CHARACTER SET utf8,
  `address` text CHARACTER SET utf8,
  `comment` text,
  PRIMARY KEY (`indexId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', null, 'example', '12345612341', '34343', '[{\"goodsId\":\"kobe\",\"num\":6,\"description\":\"lobster\",\"imgSrc\":\"lobster\",\"price\":\"22\",\"color\":\"red\",\"size\":\"xxl\"},{\"goodsId\":\"kobe22\",\"num\":7,\"description\":\"lobster\",\"imgSrc\":\"lobster\",\"price\":\"22\",\"color\":\"red\",\"size\":\"xxl\"}]', null, null);
INSERT INTO `user` VALUES ('4', null, 'example343', '43', '2147483647', null, null, null);
INSERT INTO `user` VALUES ('5', null, '22', '11', '1122', '', null, null);
INSERT INTO `user` VALUES ('6', null, '3443', '434', '2147483647', null, null, null);
INSERT INTO `user` VALUES ('7', null, '', '123456', '2147483647', '[{\"goodsId\":\"ki\",\"num\":\"23\",\"description\":null,\"imgSrc\":null,\"price\":null,\"color\":null,\"size\":null}]', null, null);
INSERT INTO `user` VALUES ('8', null, 'Tom', '123456', '2147483647', '[{\"goodsId\":\"ki\",\"num\":6,\"description\":\"lobster\",\"imgSrc\":\"lobster\",\"price\":\"22\",\"color\":\"red\",\"size\":\"xxl\"}]', '意大利之夏', null);
INSERT INTO `user` VALUES ('9', null, 'Tom444', '123456', '2147483647', null, null, null);
INSERT INTO `user` VALUES ('10', null, '111111Tom', '123456', '2147483647', null, null, null);
INSERT INTO `user` VALUES ('11', null, 'T33om4343', '123456', '3434344', '[{\"goodsId\":\"ki\",\"num\":20,\"description\":\"lobster\",\"imgSrc\":\"lobster\",\"price\":\"22\",\"color\":\"red\",\"size\":\"xxl\"}]', '从化监狱', null);
INSERT INTO `user` VALUES ('12', null, 'Tom44444', '123456', '2147483647', null, null, null);
INSERT INTO `user` VALUES ('13', null, 'Tom543545', '123456', '223232', null, null, null);
