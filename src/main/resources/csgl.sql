/*
Navicat MySQL Data Transfer

Source Server         : local_kpi
Source Server Version : 60011
Source Host           : localhost:3306
Source Database       : csgl

Target Server Type    : MYSQL
Target Server Version : 60011
File Encoding         : 65001

Date: 2015-11-25 17:29:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_adminuser`
-- ----------------------------
DROP TABLE IF EXISTS `t_adminuser`;
CREATE TABLE `t_adminuser` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `realname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_adminuser
-- ----------------------------
INSERT INTO `t_adminuser` VALUES ('4', 'admin', '123456', '																				超级管理员\r\n									\r\n									', null, null, null, null, null, null, '收银员', '刘德华', '13444444232');
INSERT INTO `t_adminuser` VALUES ('5', 'user1', '123456', '普通员工', null, null, null, null, null, null, '普通员工', '程冠希', '13333333333');
INSERT INTO `t_adminuser` VALUES ('6', 'user2', '123456', '普通员工', null, null, null, null, null, null, '员工', '洪金宝', '13444444444');
INSERT INTO `t_adminuser` VALUES ('23', 'user3', '123456', '员工						', null, null, null, null, null, null, '员工', '李小龙', '145455555555');
INSERT INTO `t_adminuser` VALUES ('24', 'user3', '123456', '员工			', null, null, null, null, null, null, '员工', '成龙', '14555555555');
INSERT INTO `t_adminuser` VALUES ('25', 'user4', '123456', '员工						', null, null, null, null, null, null, '员工', '李连杰', '123455555');

-- ----------------------------
-- Table structure for `t_category`
-- ----------------------------
DROP TABLE IF EXISTS `t_category`;
CREATE TABLE `t_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_date` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_category
-- ----------------------------
INSERT INTO `t_category` VALUES ('3', '2015-09-10 17:32:56', '生鲜蔬菜', '生鲜蔬菜	');
INSERT INTO `t_category` VALUES ('4', '2015-09-10 17:33:03', '家电', '家电');
INSERT INTO `t_category` VALUES ('5', '2015-09-10 17:33:34', '日用百货', '日用百货');
INSERT INTO `t_category` VALUES ('6', '2015-11-25 09:06:36', '服装鞋帽', '服装鞋帽');

-- ----------------------------
-- Table structure for `t_item`
-- ----------------------------
DROP TABLE IF EXISTS `t_item`;
CREATE TABLE `t_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `count` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `img_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `score` double DEFAULT NULL,
  `category` bigint(20) DEFAULT NULL,
  `user` bigint(20) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `seller` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_r6xjwkq1ksnr9kabgcjeuuj3g` (`category`),
  KEY `FK_quq4snuxxm4w1jy2k9h9f4t98` (`user`),
  KEY `FK_8rvg9jrvtoyq8c8q9810vblk` (`seller`),
  CONSTRAINT `FK_quq4snuxxm4w1jy2k9h9f4t98` FOREIGN KEY (`user`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FK_r6xjwkq1ksnr9kabgcjeuuj3g` FOREIGN KEY (`category`) REFERENCES `t_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_item
-- ----------------------------
INSERT INTO `t_item` VALUES ('1', '829', null, '20150912120757.png', '防冻液', '防冻液', null, '4', null, '50.5', null);
INSERT INTO `t_item` VALUES ('2', '25', '2015-09-14 15:04:32', '20150912112346.png', '小天鹅洗衣机', '									', null, '5', null, '6000', null);
INSERT INTO `t_item` VALUES ('3', '33', '2015-11-25 10:36:39', '20150912112325.png', '美的空调', '	美的空调', null, '4', null, '4299', null);
INSERT INTO `t_item` VALUES ('5', '267', '2015-09-11 10:55:43', '20150912114351.png', '联想手机', '									', null, '5', null, '1999', null);
INSERT INTO `t_item` VALUES ('6', '36', '2015-09-11 10:55:55', '20150912113041.png', '电磁炉', '									', null, '5', null, '80', null);
INSERT INTO `t_item` VALUES ('7', '33', '2015-09-11 11:07:34', '0150912112424.png', '燃气灶台', '									', null, '5', null, '2000', null);
INSERT INTO `t_item` VALUES ('8', '134', null, '20150912120403.png', '单反相机', '	21								', null, '4', null, '6000', '2');
INSERT INTO `t_item` VALUES ('9', '111', '2015-11-25 09:15:41', '20150912120349.png', '裤子', '	33								', null, '6', null, '233', '2');

-- ----------------------------
-- Table structure for `t_order`
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `total_price` double DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `pay_type` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `item` bigint(20) DEFAULT NULL,
  `user` bigint(20) DEFAULT NULL,
  `card` varchar(255) DEFAULT NULL,
  `seller` bigint(20) DEFAULT NULL,
  `per_price` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_85yet1dbbrsprqfsttdcm701` (`item`),
  KEY `FK_1isv5n8ndeuw5y3mwianl1j94` (`user`),
  KEY `FK_s11dnrqoxhh0p9tis6ibi2nwj` (`seller`),
  CONSTRAINT `FK_1isv5n8ndeuw5y3mwianl1j94` FOREIGN KEY (`user`) REFERENCES `t_adminuser` (`id`),
  CONSTRAINT `FK_85yet1dbbrsprqfsttdcm701` FOREIGN KEY (`item`) REFERENCES `t_item` (`id`),
  CONSTRAINT `FK_s11dnrqoxhh0p9tis6ibi2nwj` FOREIGN KEY (`seller`) REFERENCES `t_seller` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('1', '1056', null, '32', '2015-11-24', null, '入库', '1', null, null, null, null);
INSERT INTO `t_order` VALUES ('2', '759', null, '23', '2015-07-02', null, '出库', '1', '24', null, null, null);
INSERT INTO `t_order` VALUES ('3', '1161.5', null, '23', '2015-10-20', null, '入库', '1', '24', null, '2', null);
INSERT INTO `t_order` VALUES ('4', '1111', null, '22', '2015-11-25', null, '出库', '1', '24', '422323', null, null);
INSERT INTO `t_order` VALUES ('5', '1717', null, '34', '2015-11-25', null, '入库', '1', '4', null, '2', null);
INSERT INTO `t_order` VALUES ('6', '1666.5', null, '33', '2015-07-14', null, '入库', '1', '4', null, '2', '79');
INSERT INTO `t_order` VALUES ('7', '6555', null, '223', '2015-11-25', null, '入库', '1', '4', null, '4', '234');
INSERT INTO `t_order` VALUES ('8', '7000', null, '23', '2015-11-25', null, '出库', '8', '4', '23', null, '23423');
INSERT INTO `t_order` VALUES ('9', '7000', null, '234', '2015-11-25', null, '入库', '5', '4', null, '4', '3444');
INSERT INTO `t_order` VALUES ('10', '6777', null, '12', '2015-11-25', null, '入库', '2', '4', null, '4', '11');
INSERT INTO `t_order` VALUES ('11', '6000', null, '1', '2015-11-25', null, '出库', '2', '4', '1232', null, '123');
INSERT INTO `t_order` VALUES ('12', '240', null, '3', '2015-11-25', null, '出库', '6', '4', '3', null, '233');
INSERT INTO `t_order` VALUES ('13', '606', null, '12', '2015-11-25', null, '出库', '1', '4', '12', null, '12');
INSERT INTO `t_order` VALUES ('14', '7787', null, '234', '2015-07-08', null, '出库', '1', '4', '222222', null, '23');

-- ----------------------------
-- Table structure for `t_seller`
-- ----------------------------
DROP TABLE IF EXISTS `t_seller`;
CREATE TABLE `t_seller` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_seller
-- ----------------------------
INSERT INTO `t_seller` VALUES ('2', '江苏XX路XX街道43号', null, 'XX家电贸易公司', '010-45432354', '王经理');
INSERT INTO `t_seller` VALUES ('3', '北京XX路XX街道67号', '4', 'XX配送公司', '021-1233123', '李经理');
INSERT INTO `t_seller` VALUES ('4', '山东XX路XX街道16号', null, 'XX服装公司', '010-45432354', '李小姐');
INSERT INTO `t_seller` VALUES ('5', '广东省XX街道123号', null, 'XX国际贸易公司', '0910-123123', '潘经理');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nickname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_user
-- ----------------------------
