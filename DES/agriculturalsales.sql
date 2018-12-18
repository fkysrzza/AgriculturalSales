/*
Navicat MySQL Data Transfer

Source Server         : gaoxin
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : agriculturalsales

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2018-12-18 20:30:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `id` int(10) NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `top_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='地区名';

-- ----------------------------
-- Table structure for factory
-- ----------------------------
DROP TABLE IF EXISTS `factory`;
CREATE TABLE `factory` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `factory_name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '厂家名',
  `area_id` int(10) DEFAULT NULL COMMENT '地区id',
  `addr` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '厂家详细地址',
  `phone` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '联系人手机号',
  `contact_name` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '联系人姓名',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='厂家表';

-- ----------------------------
-- Table structure for git_order
-- ----------------------------
DROP TABLE IF EXISTS `git_order`;
CREATE TABLE `git_order` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_price` int(10) DEFAULT NULL COMMENT '订单总价',
  `time` datetime DEFAULT NULL COMMENT '时间',
  `extra_price` double DEFAULT NULL COMMENT '额外费用',
  `factory_id` int(10) DEFAULT NULL COMMENT '厂家id',
  `is_payment` int(1) DEFAULT NULL COMMENT '是否付款',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='进货订单表';

-- ----------------------------
-- Table structure for git_order_details
-- ----------------------------
DROP TABLE IF EXISTS `git_order_details`;
CREATE TABLE `git_order_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `merchandise_id` int(10) DEFAULT NULL COMMENT '商品id',
  `amount` int(10) DEFAULT NULL COMMENT '进货总数量',
  `total_price` double DEFAULT NULL COMMENT '商品总价',
  `git_order_id` int(11) DEFAULT NULL COMMENT '订单id',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='进货详情表';

-- ----------------------------
-- Table structure for inventory
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `merchandise_id` int(10) DEFAULT NULL COMMENT '商品ID',
  `remaining` int(10) DEFAULT NULL COMMENT '剩余数量',
  `sum` int(10) DEFAULT NULL COMMENT '总数量',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='库存表';

-- ----------------------------
-- Table structure for loan_record
-- ----------------------------
DROP TABLE IF EXISTS `loan_record`;
CREATE TABLE `loan_record` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `price` double DEFAULT '0' COMMENT '金额',
  `time` datetime DEFAULT NULL COMMENT '时间',
  `factory_id` int(10) DEFAULT NULL COMMENT '厂家id',
  `interest_rate` double DEFAULT NULL COMMENT '利率',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='货款表';

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `deleted` int(1) DEFAULT '0',
  `name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '姓名',
  `login_name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permission_id` int(1) DEFAULT NULL COMMENT '权限',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='管理员表';

-- ----------------------------
-- Table structure for merchandise
-- ----------------------------
DROP TABLE IF EXISTS `merchandise`;
CREATE TABLE `merchandise` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '商品名称',
  `merchandise_type_id` int(10) DEFAULT NULL,
  `price` double DEFAULT NULL COMMENT '商品价格',
  `factory_id` int(10) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='商品表';

-- ----------------------------
-- Table structure for merchandise_type
-- ----------------------------
DROP TABLE IF EXISTS `merchandise_type`;
CREATE TABLE `merchandise_type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '商品分类名',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='商品分类表';

-- ----------------------------
-- Table structure for out_order
-- ----------------------------
DROP TABLE IF EXISTS `out_order`;
CREATE TABLE `out_order` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL COMMENT '用户id',
  `time` datetime DEFAULT NULL COMMENT '时间',
  `total_price` double DEFAULT NULL COMMENT '总价',
  `is_payment` int(1) NOT NULL COMMENT '是否付款',
  `interest_rate` double DEFAULT NULL COMMENT '利率',
  `arrears` double DEFAULT NULL COMMENT '欠款金额',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='出货订单表';

-- ----------------------------
-- Table structure for out_order_details
-- ----------------------------
DROP TABLE IF EXISTS `out_order_details`;
CREATE TABLE `out_order_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `merchandise_id` int(10) DEFAULT NULL COMMENT '商品id',
  `amount` int(10) DEFAULT NULL COMMENT '数量',
  `out_order_id` int(10) DEFAULT NULL,
  `original_one_price` double DEFAULT NULL COMMENT '商品单原价',
  `original_total_price` double DEFAULT NULL COMMENT '商品总价',
  `actual_one_price` double DEFAULT NULL COMMENT '商品成交单价',
  `actual_total_price` double DEFAULT NULL COMMENT '商品成交总价',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='出货详情表';

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `class` int(1) NOT NULL DEFAULT '0' COMMENT '权限级别 1最高',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='权限表';

-- ----------------------------
-- Table structure for repayment_record
-- ----------------------------
DROP TABLE IF EXISTS `repayment_record`;
CREATE TABLE `repayment_record` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(10) DEFAULT '0' COMMENT '用户id',
  `order_id` int(11) DEFAULT NULL COMMENT '订单id',
  `time` datetime DEFAULT NULL COMMENT '还款时间',
  `money` double DEFAULT NULL COMMENT '还款金额',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='还款记录表';

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户姓名',
  `addr` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户地址',
  `phone` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户手机号',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  `id_card` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户身份证号',
  `area_id` int(10) DEFAULT NULL COMMENT '地区id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='用户表';
