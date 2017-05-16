/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50631
Source Host           : 127.0.0.1:3306
Source Database       : jade

Target Server Type    : MYSQL
Target Server Version : 50631
File Encoding         : 65001

Date: 2017-05-16 17:40:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for jade_access
-- ----------------------------
DROP TABLE IF EXISTS `jade_access`;
CREATE TABLE `jade_access` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(32) NOT NULL COMMENT '角色ID',
  `urls` varchar(1000) NOT NULL COMMENT '对应页面的url',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：1有效 0无效',
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后一次更新时间',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '插入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='权限表';

-- ----------------------------
-- Records of jade_access
-- ----------------------------
INSERT INTO `jade_access` VALUES ('35', '8', 'carousel/index', '1', '2017-04-06 11:15:28', '2017-04-06 11:15:28');
INSERT INTO `jade_access` VALUES ('36', '8', 'carousel/add', '1', '2017-04-06 11:15:29', '2017-04-06 11:15:29');
INSERT INTO `jade_access` VALUES ('37', '8', 'img/index', '1', '2017-04-06 11:15:29', '2017-04-06 11:15:29');
INSERT INTO `jade_access` VALUES ('38', '8', 'img/add', '1', '2017-04-06 11:15:30', '2017-04-06 11:15:30');
INSERT INTO `jade_access` VALUES ('39', '8', 'img/del', '1', '2017-04-06 11:15:31', '2017-04-06 11:15:31');
INSERT INTO `jade_access` VALUES ('40', '8', 'cate/index', '1', '2017-04-06 11:19:22', '2017-04-06 11:19:22');
INSERT INTO `jade_access` VALUES ('43', '8', 'bond/index', '1', '2017-04-07 11:11:56', '2017-04-07 11:11:56');
INSERT INTO `jade_access` VALUES ('45', '7', 'carousel/index', '1', '2017-04-07 11:42:01', '2017-04-07 11:42:01');
INSERT INTO `jade_access` VALUES ('46', '7', 'cate/index', '1', '2017-04-07 11:42:01', '2017-04-07 11:42:01');
INSERT INTO `jade_access` VALUES ('47', '7', 'advert/index', '1', '2017-04-07 11:42:01', '2017-04-07 11:42:01');
INSERT INTO `jade_access` VALUES ('48', '7', 'shop/index', '1', '2017-04-07 11:42:01', '2017-04-07 11:42:01');
INSERT INTO `jade_access` VALUES ('49', '7', 'shop/list', '1', '2017-04-07 11:42:01', '2017-04-07 11:42:01');
INSERT INTO `jade_access` VALUES ('50', '7', 'button/index', '1', '2017-04-07 11:42:01', '2017-04-07 11:42:01');
INSERT INTO `jade_access` VALUES ('51', '7', 'rule/index', '1', '2017-04-07 11:42:01', '2017-04-07 11:42:01');
INSERT INTO `jade_access` VALUES ('52', '7', 'show/index', '1', '2017-04-07 11:42:01', '2017-04-07 11:42:01');
INSERT INTO `jade_access` VALUES ('53', '7', 'img/index', '1', '2017-04-07 11:42:01', '2017-04-07 11:42:01');
INSERT INTO `jade_access` VALUES ('54', '7', 'bond/index', '1', '2017-04-07 11:42:01', '2017-04-07 11:42:01');
INSERT INTO `jade_access` VALUES ('55', '7', 'bond/list', '1', '2017-04-07 11:42:01', '2017-04-07 11:42:01');
INSERT INTO `jade_access` VALUES ('56', '7', 'wx/index', '1', '2017-04-07 11:42:01', '2017-04-07 11:42:01');
INSERT INTO `jade_access` VALUES ('57', '7', 'user/index', '1', '2017-04-07 11:42:01', '2017-04-07 11:42:01');
INSERT INTO `jade_access` VALUES ('58', '7', 'role/index', '1', '2017-04-07 11:42:01', '2017-04-07 11:42:01');
INSERT INTO `jade_access` VALUES ('59', '7', 'carousel/add', '1', '2017-04-07 11:53:51', '2017-04-07 11:53:51');
INSERT INTO `jade_access` VALUES ('60', '7', 'shop/add', '1', '2017-04-07 11:53:51', '2017-04-07 11:53:51');
INSERT INTO `jade_access` VALUES ('61', '8', 'shop/add', '1', '2017-04-07 11:55:20', '2017-04-07 11:55:20');
INSERT INTO `jade_access` VALUES ('62', '8', 'advert/index', '1', '2017-04-07 18:04:40', '2017-04-07 18:04:40');
INSERT INTO `jade_access` VALUES ('63', '8', 'shop/index', '1', '2017-04-07 18:04:40', '2017-04-07 18:04:40');
INSERT INTO `jade_access` VALUES ('64', '8', 'rule/index', '1', '2017-04-07 18:04:40', '2017-04-07 18:04:40');
INSERT INTO `jade_access` VALUES ('65', '8', 'bond/list', '1', '2017-04-07 18:04:40', '2017-04-07 18:04:40');
INSERT INTO `jade_access` VALUES ('66', '8', 'user/index', '1', '2017-04-07 18:04:40', '2017-04-07 18:04:40');
INSERT INTO `jade_access` VALUES ('67', '8', 'role/index', '1', '2017-04-07 18:04:40', '2017-04-07 18:04:40');
INSERT INTO `jade_access` VALUES ('68', '9', 'carousel/index', '1', '2017-04-08 17:51:37', '2017-04-08 17:51:37');
INSERT INTO `jade_access` VALUES ('69', '9', 'carousel/add', '1', '2017-04-08 17:51:37', '2017-04-08 17:51:37');
INSERT INTO `jade_access` VALUES ('70', '9', 'carousel/del', '1', '2017-04-08 17:51:37', '2017-04-08 17:51:37');
INSERT INTO `jade_access` VALUES ('71', '9', 'carousel/show', '1', '2017-04-08 17:51:37', '2017-04-08 17:51:37');
INSERT INTO `jade_access` VALUES ('72', '9', 'carousel/top', '1', '2017-04-08 17:51:37', '2017-04-08 17:51:37');
INSERT INTO `jade_access` VALUES ('73', '9', 'cate/index', '1', '2017-04-08 17:51:37', '2017-04-08 17:51:37');
INSERT INTO `jade_access` VALUES ('74', '9', 'cate/add', '1', '2017-04-08 17:51:37', '2017-04-08 17:51:37');
INSERT INTO `jade_access` VALUES ('75', '9', 'cate/del', '1', '2017-04-08 17:51:37', '2017-04-08 17:51:37');
INSERT INTO `jade_access` VALUES ('76', '9', 'cate/edit', '1', '2017-04-08 17:51:37', '2017-04-08 17:51:37');
INSERT INTO `jade_access` VALUES ('77', '9', 'advert/index', '1', '2017-04-08 17:51:37', '2017-04-08 17:51:37');
INSERT INTO `jade_access` VALUES ('78', '9', 'advert/add', '1', '2017-04-08 17:51:37', '2017-04-08 17:51:37');
INSERT INTO `jade_access` VALUES ('79', '9', 'advert/del', '1', '2017-04-08 17:51:37', '2017-04-08 17:51:37');
INSERT INTO `jade_access` VALUES ('80', '9', 'advert/edit', '1', '2017-04-08 17:51:37', '2017-04-08 17:51:37');
INSERT INTO `jade_access` VALUES ('81', '9', 'shop/index', '1', '2017-04-08 17:51:37', '2017-04-08 17:51:37');
INSERT INTO `jade_access` VALUES ('82', '9', 'shop/add', '1', '2017-04-08 17:51:37', '2017-04-08 17:51:37');
INSERT INTO `jade_access` VALUES ('83', '9', 'shop/del', '1', '2017-04-08 17:51:37', '2017-04-08 17:51:37');
INSERT INTO `jade_access` VALUES ('84', '9', 'shop/edit', '1', '2017-04-08 17:51:37', '2017-04-08 17:51:37');
INSERT INTO `jade_access` VALUES ('85', '9', 'shop/list', '1', '2017-04-08 17:51:37', '2017-04-08 17:51:37');
INSERT INTO `jade_access` VALUES ('86', '9', 'shop/top', '1', '2017-04-08 17:51:37', '2017-04-08 17:51:37');
INSERT INTO `jade_access` VALUES ('87', '9', 'shop/show', '1', '2017-04-08 17:51:37', '2017-04-08 17:51:37');
INSERT INTO `jade_access` VALUES ('88', '9', 'button/index', '1', '2017-04-08 17:51:37', '2017-04-08 17:51:37');
INSERT INTO `jade_access` VALUES ('89', '9', 'button/del', '1', '2017-04-08 17:51:37', '2017-04-08 17:51:37');
INSERT INTO `jade_access` VALUES ('90', '9', 'button/edit', '1', '2017-04-08 17:51:37', '2017-04-08 17:51:37');
INSERT INTO `jade_access` VALUES ('91', '9', 'rule/index', '1', '2017-04-08 17:51:37', '2017-04-08 17:51:37');
INSERT INTO `jade_access` VALUES ('92', '9', 'rule/del', '1', '2017-04-08 17:51:37', '2017-04-08 17:51:37');
INSERT INTO `jade_access` VALUES ('93', '9', 'rule/edit', '1', '2017-04-08 17:51:37', '2017-04-08 17:51:37');
INSERT INTO `jade_access` VALUES ('94', '9', 'show/index', '1', '2017-04-08 17:51:37', '2017-04-08 17:51:37');
INSERT INTO `jade_access` VALUES ('95', '9', 'show/del', '1', '2017-04-08 17:51:37', '2017-04-08 17:51:37');
INSERT INTO `jade_access` VALUES ('96', '9', 'show/edit', '1', '2017-04-08 17:51:37', '2017-04-08 17:51:37');
INSERT INTO `jade_access` VALUES ('97', '9', 'carousel/del', '1', '2017-04-08 17:52:02', '2017-04-08 17:52:02');
INSERT INTO `jade_access` VALUES ('98', '11', 'carousel/del', '1', '2017-04-12 15:46:35', '2017-04-12 15:46:35');

-- ----------------------------
-- Table structure for jade_advert
-- ----------------------------
DROP TABLE IF EXISTS `jade_advert`;
CREATE TABLE `jade_advert` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL COMMENT '分类id',
  `path` varchar(150) NOT NULL COMMENT '广告图路径',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：1有效 0无效',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='广告图表，和分类关联';

-- ----------------------------
-- Records of jade_advert
-- ----------------------------
INSERT INTO `jade_advert` VALUES ('1', '13', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-03-27/4810e7a291602456b2ed23817c4954d0.png', '2017-03-27 14:30:11', '0');
INSERT INTO `jade_advert` VALUES ('2', '14', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-07/4c8a1c21c852042b3fb64da86138db52.png', '2017-04-07 10:18:33', '0');
INSERT INTO `jade_advert` VALUES ('4', '15', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-03-29/90e19aab2e853e6358427517419be407.png', '2017-03-29 11:33:31', '1');
INSERT INTO `jade_advert` VALUES ('5', '13', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-07/7fca4ecaef010af2a5d7bd0b26f2efdc.png', '2017-04-07 10:19:25', '0');
INSERT INTO `jade_advert` VALUES ('6', '13', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-07/97b23caf35276c0e495ba7badfda4a3d.png', '2017-04-07 17:10:44', '0');
INSERT INTO `jade_advert` VALUES ('7', '14', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-07/287bb3069b4feef7807acefd119ca867.png', '2017-04-07 10:54:22', '1');
INSERT INTO `jade_advert` VALUES ('8', '13', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-07/4d1049267c7a0c1ab6b63b79d919cbb7.png', '2017-04-11 13:37:14', '0');
INSERT INTO `jade_advert` VALUES ('9', '13', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-11/32662e7237a58ec4bc03b9059d69303f.png', '2017-04-11 13:37:46', '1');

-- ----------------------------
-- Table structure for jade_bond
-- ----------------------------
DROP TABLE IF EXISTS `jade_bond`;
CREATE TABLE `jade_bond` (
  `id` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `sn` varchar(50) NOT NULL DEFAULT '111',
  `shop_id` int(32) NOT NULL COMMENT '商品ID',
  `uid` varchar(255) DEFAULT NULL COMMENT '微信用户id',
  `bond` varchar(255) DEFAULT NULL COMMENT '商品保证金价格（管理员添加数据）',
  `deal_price` varchar(255) DEFAULT NULL COMMENT '成交价格',
  `is_submit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否提交保证金  0否  1是',
  `difference` varchar(150) DEFAULT NULL COMMENT '保证金差额',
  `wx_code` varchar(150) DEFAULT NULL COMMENT '收款人微信号',
  `name` varchar(100) DEFAULT NULL COMMENT '收货人姓名',
  `tel` varchar(32) DEFAULT NULL COMMENT '电话号码',
  `reback` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否给用户退款（0 未退款 1已退款）',
  `is_finish` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否完成交易：1未秒杀  2已秒杀  3完成交易 ',
  `address` varchar(150) DEFAULT NULL COMMENT '收获地址',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间（用于排序）',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '插入时间',
  `self` tinyint(1) NOT NULL DEFAULT '0' COMMENT '管理员添加的数据（1 是 0 不是）',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：1有效  0无效',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=194 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jade_bond
-- ----------------------------
INSERT INTO `jade_bond` VALUES ('184', '304443796102', '15', '4', null, '0.02', '1', '-0.01', null, '樊亮', '18200407617', '0', '3', '四川成都', '2017-04-13 08:35:51', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jade_bond` VALUES ('185', '402254022998', '28', '4', null, '0.01', '1', '0', null, '樊亮', '18200407614', '0', '3', '四川版', '2017-04-13 08:36:01', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jade_bond` VALUES ('186', '070299567409', '22', '4', null, '0.01', '1', '0.01', '张', '樊亮', '186433345890', '1', '3', '起床横幅', '2017-04-13 08:35:57', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `jade_bond` VALUES ('187', '296330946176', '22', '4', null, '0.01', '1', '0.01', '斩杀', '樊亮', '4567890', '0', '3', '违法沃尔夫', '2017-04-12 18:38:03', '2017-04-12 15:19:31', '0', '1');
INSERT INTO `jade_bond` VALUES ('188', '083627914823', '25', '4', null, '0.01', '0', null, null, null, null, '0', '1', null, '2017-04-12 18:01:32', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `jade_bond` VALUES ('189', '317468022796', '23', '4', null, '0.01', '0', null, null, null, null, '0', '1', null, '2017-04-12 23:27:08', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `jade_bond` VALUES ('190', '601846162710', '15', '4', null, '0.02', '1', '-0.01', null, '樊亮', '18200407614', '0', '3', '四川人。', '2017-04-13 09:58:12', '2017-04-13 09:58:12', '0', '1');
INSERT INTO `jade_bond` VALUES ('191', '804365402113', '28', '4', null, '0.01', '1', '0', null, '樊亮', '18200404614', '0', '3', '四川人', '2017-04-13 10:08:18', '2017-04-13 09:59:49', '0', '1');
INSERT INTO `jade_bond` VALUES ('192', '421038190265', '22', '4', null, '0.01', '1', '0.01', '樊亮', '樊亮', '158225588888', '0', '3', '啥天气', '2017-04-13 10:08:35', '2017-04-13 10:00:39', '0', '1');
INSERT INTO `jade_bond` VALUES ('193', '559072041794', '27', '4', null, '0.01', '0', null, null, null, null, '0', '1', null, '2017-04-13 10:13:44', '0000-00-00 00:00:00', '0', '1');

-- ----------------------------
-- Table structure for jade_button
-- ----------------------------
DROP TABLE IF EXISTS `jade_button`;
CREATE TABLE `jade_button` (
  `id` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL COMMENT '按钮图片',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '删除字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jade_button
-- ----------------------------
INSERT INTO `jade_button` VALUES ('1', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-03-27/25a4040e7ab4e3ccd780824b8c49e3e3.png', '2017-03-27 16:49:26', '0');
INSERT INTO `jade_button` VALUES ('2', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-07/0defe7d2637dbdeffcb1cd993d395fe2.png', '2017-04-07 17:11:01', '0');
INSERT INTO `jade_button` VALUES ('3', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-05/b90c50490c5831dde820ae95db1d2a47.png', '2017-04-05 14:11:42', '0');
INSERT INTO `jade_button` VALUES ('4', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-05/7474af77111e4d53d9de8b6051c75f38.png', '2017-04-05 14:15:04', '0');
INSERT INTO `jade_button` VALUES ('5', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-05/469cb4cb79d1b212bb7ad9ae9b3c7c18.png', '2017-04-05 14:15:01', '0');
INSERT INTO `jade_button` VALUES ('6', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-11/2e24f4f8f3492f217fa1162e4e782456.png', '2017-04-11 13:38:38', '0');
INSERT INTO `jade_button` VALUES ('7', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-11/30a25f5d37207a1c01b8cca9543548e7.png', '2017-04-11 13:38:51', '1');

-- ----------------------------
-- Table structure for jade_category
-- ----------------------------
DROP TABLE IF EXISTS `jade_category`;
CREATE TABLE `jade_category` (
  `id` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '分类名称',
  `path` varchar(255) NOT NULL COMMENT '分类图片',
  `sort` tinyint(2) NOT NULL DEFAULT '0' COMMENT '排序',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：1有效 0无效',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jade_category
-- ----------------------------
INSERT INTO `jade_category` VALUES ('13', '精品区', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-03-27/02c098085f467f7d2d5fa7c75bcfd4d8.png', '1', '2017-04-05 15:00:37', '2017-03-27 11:46:19', '1');
INSERT INTO `jade_category` VALUES ('14', '普通区', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-03-27/4c9a5fc0e09c741e14fd9859df7683cf.png', '2', '2017-04-05 15:00:37', '2017-03-27 11:46:22', '1');
INSERT INTO `jade_category` VALUES ('15', '礼品区', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-03-27/f08f54246353319393a43f70d0960750.png', '3', '2017-04-11 14:21:31', '2017-04-11 14:21:31', '1');
INSERT INTO `jade_category` VALUES ('17', '金平区', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-05/057de548ef196408e5f45e04688fa4a8.png', '4', '2017-04-05 15:00:37', '2017-04-05 13:51:56', '0');
INSERT INTO `jade_category` VALUES ('18', '礼品区', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-07/160d9d17b790b1f886563a11d3816c24.png', '3', '2017-04-07 16:47:40', '2017-04-07 16:47:40', '0');
INSERT INTO `jade_category` VALUES ('19', '木瓜', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-11/ed2b06543910e09379f4e22a5aa22f5d.png', '4', '2017-04-11 13:34:29', '2017-04-11 13:34:29', '0');

-- ----------------------------
-- Table structure for jade_over
-- ----------------------------
DROP TABLE IF EXISTS `jade_over`;
CREATE TABLE `jade_over` (
  `id` int(32) unsigned NOT NULL AUTO_INCREMENT COMMENT '停止秒数ID',
  `second` int(5) NOT NULL COMMENT '全局秒杀停止秒数',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否删除状态',
  `create_time` varchar(255) NOT NULL COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jade_over
-- ----------------------------
INSERT INTO `jade_over` VALUES ('5', '12', '0', '2017-04-10 11:10:51', '2017-04-10 11:11:19');
INSERT INTO `jade_over` VALUES ('6', '4', '0', '2017-04-10 11:11:36', '2017-04-11 13:43:35');
INSERT INTO `jade_over` VALUES ('7', '3', '1', '2017-04-11 13:43:40', '2017-04-11 13:43:40');

-- ----------------------------
-- Table structure for jade_role
-- ----------------------------
DROP TABLE IF EXISTS `jade_role`;
CREATE TABLE `jade_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '角色名称',
  `value` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否添加权限',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：1有效 0无效',
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后一次更新时间',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '插入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of jade_role
-- ----------------------------
INSERT INTO `jade_role` VALUES ('7', '客户一', '1', '0', '2017-04-07 17:15:17', '2017-04-07 17:15:17');
INSERT INTO `jade_role` VALUES ('8', '客户一', '1', '1', '2017-04-07 18:06:39', '2017-04-07 18:06:39');
INSERT INTO `jade_role` VALUES ('9', '客户二', '1', '1', '2017-04-08 17:51:37', '2017-04-08 17:51:37');
INSERT INTO `jade_role` VALUES ('10', '客户三', '0', '1', '2017-04-08 17:50:25', '2017-04-08 17:50:25');
INSERT INTO `jade_role` VALUES ('11', '客户四', '1', '1', '2017-04-12 15:46:35', '2017-04-12 15:46:35');

-- ----------------------------
-- Table structure for jade_rule
-- ----------------------------
DROP TABLE IF EXISTS `jade_rule`;
CREATE TABLE `jade_rule` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL COMMENT '规则内容',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：1有效  0无效',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='秒拍规则';

-- ----------------------------
-- Records of jade_rule
-- ----------------------------
INSERT INTO `jade_rule` VALUES ('1', '1、滚动秒拍商对商品真伪负完全责任。\r\n2、所有滚动秒拍的商品初始价为0元起，滚动秒拍商品价格以1元之市场价格中间循环。\r\n3、所有滚动秒拍的商品都有开拍时间及滚动价格的变动能查看滚动秒拍商品的实时成交纪录。所有滚动秒拍的商品按停止键后显示参与者滚动秒拍的停止时间及实时滚动停止的价位。停止价位就是你获得本商品的成交价。\r\n4、进入滚动秒拍开始时请提交保证金（注：每款滚动秒拍的商品保证金设定都不同）。保证金提交后进入滚动秒拍，按停止键后显示你所拍到的商品实时价位为本商品交易价格。（注：如果你不想按停止键、滚动秒拍平台3秒后随机停止，显示成交价格）滚动秒拍结束后请认真填写收货地址以免寄错。\r\n5、滚动秒拍平台严禁一切不公正的违规操作。最终解释权有玉世界联盟电子商务平台所有。欢迎你的参与祝你好运连连。', '1', '2017-04-12 18:29:36');

-- ----------------------------
-- Table structure for jade_service
-- ----------------------------
DROP TABLE IF EXISTS `jade_service`;
CREATE TABLE `jade_service` (
  `id` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `phone` int(32) NOT NULL COMMENT '客服电话',
  `custom_service` varchar(255) NOT NULL COMMENT '客服名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jade_service
-- ----------------------------

-- ----------------------------
-- Table structure for jade_shop
-- ----------------------------
DROP TABLE IF EXISTS `jade_shop`;
CREATE TABLE `jade_shop` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` varchar(11) NOT NULL COMMENT '商品分类',
  `shop_name` varchar(50) NOT NULL COMMENT '商品名称',
  `shop_size` varchar(16) NOT NULL COMMENT '商品尺寸',
  `shop_price` float(8,2) NOT NULL COMMENT '商品市场价',
  `shop_weight` varchar(16) NOT NULL COMMENT '商品重量',
  `shop_material` varchar(100) NOT NULL COMMENT '商品材质',
  `shop_cover` varchar(150) NOT NULL COMMENT '商品封面',
  `shop_bond` varchar(16) NOT NULL COMMENT '商品保证金',
  `shop_aucprice` varchar(32) NOT NULL COMMENT '秒拍价格',
  `shop_stock` int(32) NOT NULL COMMENT '商品库存',
  `shop_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '秒杀倒计时结束时间',
  `shop_descript` varchar(500) NOT NULL COMMENT '商品描述',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '置顶的排序时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间/修改时间',
  `level` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1商品上架 0商品下架',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：1有效 0无效',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jade_shop
-- ----------------------------
INSERT INTO `jade_shop` VALUES ('15', '13', '江苏和田玉', '45', '45.00', '45', '和田玉', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-03-29/903576a76d455a19d12db996a08550dc.png', '0.01', '0.02', '39', '2017-04-13 09:58:12', '测试数据！                                                                                                                                                                                                                          ', '2017-04-13 09:58:12', '2017-04-13 09:58:12', '1', '1');
INSERT INTO `jade_shop` VALUES ('16', '14', '重庆和田玉', '23', '432.00', '432', '和田玉', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-03-29/ceecc0c59aeebf8803006715f0d15d42.png', '0.01', '0.01', '4324', '2017-04-12 09:41:43', '测试数据！                                                                                                                                    ', '2017-04-12 09:41:43', '2017-04-12 09:41:43', '1', '1');
INSERT INTO `jade_shop` VALUES ('17', '13', '新疆羊脂玉', '42342', '388.00', '32424', '和田玉', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-03-29/13013fea37919fc478fd50b21ad7bff3.png', '0.01', '0.02', '4234', '2017-04-12 10:26:11', '测试数据！                                                                                                                                                                                                                                                                        ', '2017-04-12 10:26:11', '2017-04-12 10:26:11', '1', '1');
INSERT INTO `jade_shop` VALUES ('18', '15', '成都和田玉拼盘', '42342', '800.00', '32424', '和田玉', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-03-29/d49b0e7858b71a938f785a13f59db0ee.png', '0.01', '0.02', '4231', '2017-04-12 09:39:04', '测试数据！                                                                                                                                                                                                                                                                                                                    ', '2017-04-12 09:39:04', '2017-04-12 09:39:04', '1', '1');
INSERT INTO `jade_shop` VALUES ('19', '13', '爱华仕鸡血石', '50', '9999.00', '20', '鸡血石', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-05/07a90fd4dc2cb5e89598e005e3429621.png', '0.01', '0.01', '10', '2017-04-12 09:39:30', '这是块好石头！巴适得板!                                           ', '2017-04-12 09:39:30', '2017-04-12 09:39:30', '1', '0');
INSERT INTO `jade_shop` VALUES ('20', '14', '软玉', '20', '1000.00', '50', '白玉', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-07/1792eab22f82907bd29d87dc5ae13a3c.png', '0.01', '0.01', '20', '2017-04-12 09:40:52', '测试数据！                                            ', '2017-04-12 09:40:52', '2017-04-12 09:40:52', '1', '1');
INSERT INTO `jade_shop` VALUES ('21', '15', '昆仑玉', '55', '500.00', '66', '中华玉', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-07/ff2cdefd294652665c8214761252bbc6.png', '0.01', '0.01', '500', '2017-04-12 09:40:20', '测试数据！                                                                                                                                                                                                                            ', '2017-04-12 09:40:20', '2017-04-12 09:40:20', '0', '1');
INSERT INTO `jade_shop` VALUES ('22', '15', '华山美人玉', '50', '999.00', '50', '美人玉', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-07/68245d52f0728cc7d7c2f085484b83e5.png', '0.02', '0.01', '89', '2017-04-13 10:00:39', '测试数据                                                                                                                                    ', '2017-04-13 10:00:39', '2017-04-13 10:00:39', '1', '1');
INSERT INTO `jade_shop` VALUES ('23', '13', '甘肃祁连玉', '21', '9999.00', '50', '祁连玉', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-08/5b7737f36ef09489d1aaf96de2c89a5e.png', '0.02', '0.01', '200', '2017-04-12 09:39:44', '测试数据                                                                                                                                                                                ', '2017-04-12 09:39:44', '2017-04-12 09:39:44', '1', '1');
INSERT INTO `jade_shop` VALUES ('24', '14', '玉石联盟', '34', '6666.00', '43', '白羊玉', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-11/c6f99293b31501a7bf1ce1faca22dba9.png', '0.01', '0.01', '19', '2017-04-11 18:09:14', '测试数据！', '2017-04-11 18:09:14', '2017-04-11 18:09:14', '1', '1');
INSERT INTO `jade_shop` VALUES ('25', '13', '新疆和阗玉', '43', '600.00', '243', '和阗玉', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-12/3d7eef2d3aaf9dc7bc1c9f30df476755.png', '0.01', '0.01', '50', '2017-04-13 13:22:59', '测试数据！', '2017-04-12 14:15:39', '2017-04-12 14:15:39', '1', '1');
INSERT INTO `jade_shop` VALUES ('26', '13', '岫山玉', '34', '432.00', '43', '岫山玉', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-12/3c7c33e2355de114eb505b0616d6edf4.png', '0.01', '0.01', '50', '2017-05-02 12:45:56', '测试数据！', '2017-04-12 14:16:23', '2017-04-12 14:16:23', '1', '1');
INSERT INTO `jade_shop` VALUES ('27', '15', '南阳玉', '54', '543.00', '54', '南阳玉', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-12/477e78f18581c7708a4e7acffca697e7.png', '0.01', '0.01', '45', '2017-05-02 12:45:56', '测试数据!', '2017-04-12 14:17:07', '2017-04-12 14:17:07', '1', '1');
INSERT INTO `jade_shop` VALUES ('28', '13', '蓝田玉', '50', '555.00', '50', '蓝田玉', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-12/d5a7b92fd0ea627127d1e40faf1bf997.png', '0.01', '0.01', '48', '2017-04-13 09:59:49', '测试数据！                                            ', '2017-04-13 09:59:49', '2017-04-13 09:59:49', '1', '1');
INSERT INTO `jade_shop` VALUES ('29', '14', '密县玉', '23', '566.00', '23', '密县玉', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-12/6372cc397b21939cc82f87e6332d9d79.png', '0.01', '0.01', '600', '2017-05-02 12:45:56', '测试数据！', '2017-04-12 14:18:24', '2017-04-12 14:18:24', '1', '1');
INSERT INTO `jade_shop` VALUES ('30', '15', '京白玉', '12', '500.00', '12', '京白玉', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-12/a15abf4cf6ba67cb2fd4a9c82b7b0cb0.png', '0.01', '0.01', '60', '2017-04-13 16:01:58', '测试数据！                                            ', '2017-04-13 09:51:51', '2017-04-13 09:51:51', '1', '1');

-- ----------------------------
-- Table structure for jade_shop_img
-- ----------------------------
DROP TABLE IF EXISTS `jade_shop_img`;
CREATE TABLE `jade_shop_img` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL COMMENT '商品id',
  `imgurl` varchar(150) NOT NULL COMMENT '商品图片',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：1有效  0无效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jade_shop_img
-- ----------------------------
INSERT INTO `jade_shop_img` VALUES ('1', '15', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-05/0e153cf5c9d2ec639df30e6ad6b0dda6.png', '2017-04-05 15:31:46', '0');
INSERT INTO `jade_shop_img` VALUES ('2', '15', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-03-29/154b375282357a62f519ddce32dd7a45.png', '2017-03-29 11:36:59', '1');
INSERT INTO `jade_shop_img` VALUES ('3', '16', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-03-29/3a6a592ef2b7f3b4b964fa7e548e1ff4.png', '2017-03-29 11:36:51', '1');
INSERT INTO `jade_shop_img` VALUES ('4', '16', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-03-29/0037f9cfc12880528d5e4005305d4d7b.png', '2017-03-29 11:36:38', '1');
INSERT INTO `jade_shop_img` VALUES ('5', '17', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-03-29/75494a4c638ee7d6f4a290b3c422f735.png', '2017-04-05 18:21:03', '0');
INSERT INTO `jade_shop_img` VALUES ('6', '18', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-03-29/4230dfc56529a817216ff2b70a58686f.png', '2017-03-29 11:36:24', '1');
INSERT INTO `jade_shop_img` VALUES ('7', '17', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-03-29/4d936275de927554519e5382ffe23596.png', '2017-03-29 11:36:18', '1');
INSERT INTO `jade_shop_img` VALUES ('8', '17', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-03-29/6230ce8ff52215daf730483bb9d39bab.png', '2017-03-29 11:36:10', '1');
INSERT INTO `jade_shop_img` VALUES ('9', '17', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-03-29/e60b8bb35b682926c5c02cfeba36864c.png', '2017-03-29 11:36:03', '1');
INSERT INTO `jade_shop_img` VALUES ('10', '17', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-03-29/a4421ab668f9ddd50e2a22955997a4b2.png', '2017-03-29 11:35:58', '1');
INSERT INTO `jade_shop_img` VALUES ('11', '17', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-05/c7696e188469675f4140514dfc88da8d.png', '2017-04-05 18:13:11', '0');
INSERT INTO `jade_shop_img` VALUES ('12', '17', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-03-29/2dcc60609361cd960d70365dcba46d8e.png', '2017-03-29 11:35:25', '1');
INSERT INTO `jade_shop_img` VALUES ('13', '17', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-03-28/f9e23ebb4e90825151b9cfabaa35e8d0.png', '2017-03-28 16:09:09', '0');
INSERT INTO `jade_shop_img` VALUES ('14', '17', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-03-29/c2060c58a259d81d1d889ae8dca6567e.png', '2017-03-29 11:35:44', '1');
INSERT INTO `jade_shop_img` VALUES ('15', '0', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-05/e2a91e0a9a1c46693c58bcc0c863674f.png', '2017-04-05 15:28:47', '0');
INSERT INTO `jade_shop_img` VALUES ('16', '17', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-05/3d308d0a10f742b265e279e54df938b5.png', '2017-04-05 18:12:27', '0');
INSERT INTO `jade_shop_img` VALUES ('17', '17', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-05/c2974ad5a13b312bc119c6ec4f651c0a.png', '2017-04-05 18:47:32', '1');
INSERT INTO `jade_shop_img` VALUES ('18', '17', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-05/a83d451d8aefc55d83139908e66f3023.png', '2017-04-07 16:58:07', '0');
INSERT INTO `jade_shop_img` VALUES ('19', '17', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-05/3f7e709dd6113b219df61ff03794453a.png', '2017-04-06 11:17:32', '0');
INSERT INTO `jade_shop_img` VALUES ('20', '15', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-07/3011709bd1b6ed29ca55849cbfbaaaec.png', '2017-04-07 16:51:41', '1');
INSERT INTO `jade_shop_img` VALUES ('21', '17', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-07/613622932069c916b8802b8f653d1f4e.png', '2017-04-07 17:12:42', '0');
INSERT INTO `jade_shop_img` VALUES ('22', '15', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-07/0eeb74cd767b4cdd8411fc15701f8e4c.png', '2017-04-07 17:12:52', '1');
INSERT INTO `jade_shop_img` VALUES ('23', '20', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-10/0170896e3919a3256cb2167bb04dc9f0.png', '2017-04-10 14:29:52', '1');
INSERT INTO `jade_shop_img` VALUES ('24', '18', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-10/3d5902b3102ef41f6f75d9160e6acac0.png', '2017-04-10 14:30:17', '1');
INSERT INTO `jade_shop_img` VALUES ('25', '18', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-10/d10e5928ae43bc1b7c416feac8b04581.png', '2017-04-10 14:30:37', '1');
INSERT INTO `jade_shop_img` VALUES ('26', '18', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-10/08eafcebe62de4cbcb46b1692b083a01.png', '2017-04-10 14:30:44', '1');
INSERT INTO `jade_shop_img` VALUES ('27', '18', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-10/c7fd70874601e13acbd0881ef0ab3af0.png', '2017-04-10 14:30:50', '1');
INSERT INTO `jade_shop_img` VALUES ('28', '18', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-10/5cedcb221a740e07b0970acd0c3c9746.png', '2017-04-10 14:30:56', '1');
INSERT INTO `jade_shop_img` VALUES ('29', '18', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-10/95a808c9136fba5b6e4fe09569698728.png', '2017-04-10 14:31:04', '1');
INSERT INTO `jade_shop_img` VALUES ('30', '18', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-10/f6482533f01581a51e75e9f5672b1ff9.png', '2017-04-10 14:31:11', '1');
INSERT INTO `jade_shop_img` VALUES ('31', '18', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-10/5f6c17d7a1216581a3b679b68efdba70.png', '2017-04-11 13:40:17', '0');
INSERT INTO `jade_shop_img` VALUES ('32', '22', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-10/5c494929eb88e5aad8567d22bc515d33.png', '2017-04-10 15:04:18', '1');
INSERT INTO `jade_shop_img` VALUES ('33', '22', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-10/6a518e130443d904045318c590bc39fb.png', '2017-04-10 15:04:23', '1');
INSERT INTO `jade_shop_img` VALUES ('34', '22', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-10/d40ad04c5e56be28026820ce094b17b9.png', '2017-04-10 15:04:29', '1');
INSERT INTO `jade_shop_img` VALUES ('35', '22', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-10/2edbaf8a21a035edbe7a1e0b4fad76cc.png', '2017-04-10 15:04:34', '1');
INSERT INTO `jade_shop_img` VALUES ('36', '22', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-10/61528d3ef8fe8204fa0f85a99c37a60b.png', '2017-04-10 15:04:39', '1');
INSERT INTO `jade_shop_img` VALUES ('37', '22', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-10/c8ce74b87003cbfb10f6323a7c8534af.png', '2017-04-10 15:04:45', '1');
INSERT INTO `jade_shop_img` VALUES ('38', '22', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-10/279824d9cc7665836d0372258861626d.png', '2017-04-10 15:04:50', '1');
INSERT INTO `jade_shop_img` VALUES ('39', '22', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-10/0a8c5aa7baa7f1d83cb394178fcdad7f.png', '2017-04-10 15:04:54', '1');
INSERT INTO `jade_shop_img` VALUES ('40', '22', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-11/0f78ceb8fb54f3738362835ee46eacbc.png', '2017-04-11 13:40:05', '1');

-- ----------------------------
-- Table structure for jade_show_time
-- ----------------------------
DROP TABLE IF EXISTS `jade_show_time`;
CREATE TABLE `jade_show_time` (
  `id` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '秒拍标题',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '秒拍时设定',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：1有效 0无效',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '插入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='首页‘秒拍专场’处表';

-- ----------------------------
-- Records of jade_show_time
-- ----------------------------
INSERT INTO `jade_show_time` VALUES ('13', '撸起袖子一起来！', '2017-04-13 19:33:20', '1', '2017-04-13 09:52:42', '2017-04-13 09:52:42');

-- ----------------------------
-- Table structure for jade_top_carousel
-- ----------------------------
DROP TABLE IF EXISTS `jade_top_carousel`;
CREATE TABLE `jade_top_carousel` (
  `id` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL COMMENT '轮播图图片路径',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '轮播图修改时间',
  `del` tinyint(1) NOT NULL DEFAULT '1' COMMENT '物理删除数据字段',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '轮播图是否上线,默认1为上线，0为下线',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jade_top_carousel
-- ----------------------------
INSERT INTO `jade_top_carousel` VALUES ('30', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-11/8edd57d05d66de5595c3aec50c5e608e.png', '2017-04-11 13:49:18', '2017-04-11 13:49:18', '1', '1');
INSERT INTO `jade_top_carousel` VALUES ('31', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-11/bdb40fb5c7711e53d4fff70cbb77c218.png', '2017-04-11 13:46:15', '2017-04-11 13:33:29', '0', '0');
INSERT INTO `jade_top_carousel` VALUES ('32', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-11/8015c2644866d31a1bcfed463a6ebdba.png', '2017-04-12 16:51:57', '2017-04-11 13:49:13', '0', '0');
INSERT INTO `jade_top_carousel` VALUES ('24', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-04-05/16035b4b0b537bda48f86eb7757e977a.png', '2017-04-11 13:32:59', '2017-04-07 19:28:48', '0', '1');

-- ----------------------------
-- Table structure for jade_user
-- ----------------------------
DROP TABLE IF EXISTS `jade_user`;
CREATE TABLE `jade_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(255) NOT NULL COMMENT '用户密码',
  `is_login` tinyint(1) NOT NULL DEFAULT '0' COMMENT '判断用户是否登录',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是管理员；默认不是管理员，1为管理员',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：1有效  0无效',
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后一次更新时间',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '插入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of jade_user
-- ----------------------------
INSERT INTO `jade_user` VALUES ('1', 'admin', '$2y$13$c3crBuoVWrsL5obmqeIjAOqjJ.C9TJ/uib3l/KbxjMJVfYFynuVyG', '1', '1', '1', '2017-04-13 03:43:46', '2017-04-13 11:43:46');
INSERT INTO `jade_user` VALUES ('12', 'user1', '$2y$13$LEjWCr.xPFplrqZX3/sWL.VIRePs5dSfmea6EbzeTv59pP9vwu.RG', '1', '0', '1', '2017-04-07 19:23:54', '2017-04-07 19:23:54');
INSERT INTO `jade_user` VALUES ('15', 'admin2', '$2y$13$avs4xYDpLUqPrtDYAU3DK.1P0gKex/pWj4yDXT/pnWAWlmLkHIaDm', '0', '0', '0', '2017-04-11 13:41:28', '2017-04-11 13:41:28');
INSERT INTO `jade_user` VALUES ('16', 'user2', '$2y$13$mP6n4OTDRnu7Rq4R/5OPPOEDrVKejuP.17D7NHoN.UYE.iysFDK4O', '0', '0', '1', '2017-04-11 13:42:57', '2017-04-11 13:42:57');

-- ----------------------------
-- Table structure for jade_user_role
-- ----------------------------
DROP TABLE IF EXISTS `jade_user_role`;
CREATE TABLE `jade_user_role` (
  `id` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(32) NOT NULL COMMENT '用户id',
  `role_id` int(32) NOT NULL COMMENT '权限id',
  `creat_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jade_user_role
-- ----------------------------
INSERT INTO `jade_user_role` VALUES ('2', '6', '3', '2017-04-04 18:07:54');
INSERT INTO `jade_user_role` VALUES ('10', '7', '6', '2017-04-05 18:56:04');
INSERT INTO `jade_user_role` VALUES ('12', '1', '9', '2017-04-11 13:41:48');
INSERT INTO `jade_user_role` VALUES ('13', '8', '2', '2017-04-05 16:55:25');
INSERT INTO `jade_user_role` VALUES ('14', '9', '8', '2017-04-06 11:16:17');
INSERT INTO `jade_user_role` VALUES ('15', '1', '7', '2017-04-07 16:52:56');
INSERT INTO `jade_user_role` VALUES ('16', '1', '7', '2017-04-07 17:14:50');
INSERT INTO `jade_user_role` VALUES ('17', '12', '8', '2017-04-07 17:16:44');
INSERT INTO `jade_user_role` VALUES ('18', '1', '8', '2017-04-07 17:18:44');
INSERT INTO `jade_user_role` VALUES ('19', '1', '8', '2017-04-07 17:20:29');
INSERT INTO `jade_user_role` VALUES ('20', '15', '9', '2017-04-08 17:55:22');
INSERT INTO `jade_user_role` VALUES ('21', '16', '8', '2017-04-11 13:42:57');

-- ----------------------------
-- Table structure for jade_wxuser
-- ----------------------------
DROP TABLE IF EXISTS `jade_wxuser`;
CREATE TABLE `jade_wxuser` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(150) NOT NULL,
  `nick_name` varchar(100) NOT NULL COMMENT '微信昵称',
  `header` varchar(150) NOT NULL COMMENT '头像',
  `tel` varchar(30) DEFAULT NULL COMMENT '电话号码',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT ' 状态：1有效  0无效',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '用户访问时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jade_wxuser
-- ----------------------------
INSERT INTO `jade_wxuser` VALUES ('1', '噶发撒旦', '和声', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-03-29/ceecc0c59aeebf8803006715f0d15d42.png', null, '0', '2017-04-11 14:43:01');
INSERT INTO `jade_wxuser` VALUES ('2', '232', '28', 'http://on9d7m52t.bkt.clouddn.com/123456/2017-03-29/ceecc0c59aeebf8803006715f0d15d42.png', null, '1', '2017-04-08 17:01:10');
INSERT INTO `jade_wxuser` VALUES ('4', 'ovLjq0IDnksSRCzamuZI0xzvsgtY', 'lan', 'http://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eouZJMTMddWyqKX5ibJDK7usBVE68MFeatYp1WaGYT8n1cHxdPvWAnnyEnibFq402pxx0UC5Kgc86pg/0', null, '1', '2017-04-07 17:17:03');
