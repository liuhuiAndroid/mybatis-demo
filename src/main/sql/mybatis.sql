/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50549
Source Host           : localhost:3306
Source Database       : mybatis

Target Server Type    : MYSQL
Target Server Version : 50549
File Encoding         : 65001

Date: 2018-05-08 14:05:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for m_user
-- ----------------------------
DROP TABLE IF EXISTS `m_user`;
CREATE TABLE `m_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL COMMENT '用户名称',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `address` varchar(256) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_user
-- ----------------------------
INSERT INTO `m_user` VALUES ('1', '王五', null, '2', null);
INSERT INTO `m_user` VALUES ('10', '张三', '2014-07-10', '1', '北京市');
INSERT INTO `m_user` VALUES ('16', '张小明', null, '1', '北京市');
INSERT INTO `m_user` VALUES ('22', '陈小明', null, '1', '北京市');
INSERT INTO `m_user` VALUES ('24', '张三丰', null, '1', '北京市');
INSERT INTO `m_user` VALUES ('25', '陈小明', null, '1', '北京市');
INSERT INTO `m_user` VALUES ('26', '王五', null, null, null);
