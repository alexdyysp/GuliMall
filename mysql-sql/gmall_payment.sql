/*
Navicat MySQL Data Transfer

Source Server         : atguigu
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : gmall

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2019-04-30 16:39:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for payment_info
-- ----------------------------
DROP TABLE IF EXISTS `payment_info`;
CREATE TABLE `payment_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `order_sn` varchar(255) DEFAULT NULL COMMENT '对外业务编号',
  `order_id` varchar(50) DEFAULT NULL COMMENT '订单编号',
  `alipay_trade_no` varchar(50) DEFAULT NULL COMMENT '支付宝交易编号',
  `total_amount` decimal(10,2) DEFAULT NULL COMMENT '支付金额',
  `subject` varchar(200) DEFAULT NULL COMMENT '交易内容',
  `payment_status` varchar(20) DEFAULT NULL COMMENT '支付状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `confirm_time` datetime DEFAULT NULL COMMENT '创建时间',
  `callback_content` varchar(4000) DEFAULT NULL COMMENT '回调信息',
  `callback_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=280 DEFAULT CHARSET=utf8 COMMENT='支付信息表';

-- ----------------------------
-- Records of payment_info
-- ----------------------------
INSERT INTO `payment_info` VALUES ('250', 'atguigu201903201547321553068052208', '281', '2019032022001409701031928056', '10001.00', '黑鲨游戏手机Gmall1015系列低配双核版', '已支付', '2019-03-20 15:47:35', null, 'charset=utf-8&out_trade_no=atguigu201903201551591553068319124&method=alipay.trade.page.pay.return&total_amount=0.01&sign=JHMpfB9wv%2FOaNV9Cpjp7%2B6uY83ScfJ4YIG6dsDtrJlbbRJj6Z7%2FMlT3EazeB487wlKGPFim9L2xzIl8MwBpCwOc2qI95pCDwDrXgaO%2F2yA%2FlDp6bDkcRx84Lkm%2F2MNwZ%2FyFSW%2FyyDxWGEI3izHYMm1rf8T6nNDKvfuKTrKiKiIAGSv%2FJX1z7InGW%2BgeWtLlYWdV9fS1aKDEUZwGJaKwQeGf0c2YpZ2u%2FPoBuT32IQTbACx60SO4Jdz4y%2BVjwF5UmvLZD6HP7n5hvcQE833r9FOCU3rOskdAWNWt4wEvaJ%2FAuq%2BFAg6xHTDk1E2iDwkLVjumnYM%2FUcpw6G6Yu60nVtQ%3D%3D&trade_no=2019032022001409701031928056&auth_app_id=2018020102122556&version=1.0&app_id=2018020102122556&sign_type=RSA2&seller_id=2088921750292524&timestamp=2019-03-20+15%3A52%3A40', '2019-03-20 15:52:43');
INSERT INTO `payment_info` VALUES ('251', 'atguigu201903201549081553068148868', '282', '2019032022001409701031928056', '10001.00', '黑鲨游戏手机Gmall1015系列低配双核版', '已支付', '2019-03-20 15:49:12', null, 'charset=utf-8&out_trade_no=atguigu201903201551591553068319124&method=alipay.trade.page.pay.return&total_amount=0.01&sign=JHMpfB9wv%2FOaNV9Cpjp7%2B6uY83ScfJ4YIG6dsDtrJlbbRJj6Z7%2FMlT3EazeB487wlKGPFim9L2xzIl8MwBpCwOc2qI95pCDwDrXgaO%2F2yA%2FlDp6bDkcRx84Lkm%2F2MNwZ%2FyFSW%2FyyDxWGEI3izHYMm1rf8T6nNDKvfuKTrKiKiIAGSv%2FJX1z7InGW%2BgeWtLlYWdV9fS1aKDEUZwGJaKwQeGf0c2YpZ2u%2FPoBuT32IQTbACx60SO4Jdz4y%2BVjwF5UmvLZD6HP7n5hvcQE833r9FOCU3rOskdAWNWt4wEvaJ%2FAuq%2BFAg6xHTDk1E2iDwkLVjumnYM%2FUcpw6G6Yu60nVtQ%3D%3D&trade_no=2019032022001409701031928056&auth_app_id=2018020102122556&version=1.0&app_id=2018020102122556&sign_type=RSA2&seller_id=2088921750292524&timestamp=2019-03-20+15%3A52%3A40', '2019-03-20 15:52:43');
INSERT INTO `payment_info` VALUES ('252', 'atguigu201903201551591553068319124', '283', '2019032022001409701031928056', '10001.00', '黑鲨游戏手机Gmall1015系列低配双核版', '已支付', '2019-03-20 15:52:01', null, 'charset=utf-8&out_trade_no=atguigu201903201551591553068319124&method=alipay.trade.page.pay.return&total_amount=0.01&sign=JHMpfB9wv%2FOaNV9Cpjp7%2B6uY83ScfJ4YIG6dsDtrJlbbRJj6Z7%2FMlT3EazeB487wlKGPFim9L2xzIl8MwBpCwOc2qI95pCDwDrXgaO%2F2yA%2FlDp6bDkcRx84Lkm%2F2MNwZ%2FyFSW%2FyyDxWGEI3izHYMm1rf8T6nNDKvfuKTrKiKiIAGSv%2FJX1z7InGW%2BgeWtLlYWdV9fS1aKDEUZwGJaKwQeGf0c2YpZ2u%2FPoBuT32IQTbACx60SO4Jdz4y%2BVjwF5UmvLZD6HP7n5hvcQE833r9FOCU3rOskdAWNWt4wEvaJ%2FAuq%2BFAg6xHTDk1E2iDwkLVjumnYM%2FUcpw6G6Yu60nVtQ%3D%3D&trade_no=2019032022001409701031928056&auth_app_id=2018020102122556&version=1.0&app_id=2018020102122556&sign_type=RSA2&seller_id=2088921750292524&timestamp=2019-03-20+15%3A52%3A40', '2019-03-20 15:52:43');
