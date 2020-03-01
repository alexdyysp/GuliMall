/*
Navicat MySQL Data Transfer

Source Server         : atguigu
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : gmall_wms

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2019-04-30 16:34:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for wms_ware_info
-- ----------------------------
DROP TABLE IF EXISTS `wms_ware_info`;
CREATE TABLE `wms_ware_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `areacode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wms_ware_info
-- ----------------------------
INSERT INTO `wms_ware_info` VALUES ('1', '朝阳1号仓库', '北京', '110000');
INSERT INTO `wms_ware_info` VALUES ('2', '大兴2号仓库', '北京', '110000');
INSERT INTO `wms_ware_info` VALUES ('3', '大兴3号仓库', '京', '123123');
INSERT INTO `wms_ware_info` VALUES ('4', '朝阳2号仓库', '京', '123123');
INSERT INTO `wms_ware_info` VALUES ('5', '朝阳3号仓库', '京', '123123');
INSERT INTO `wms_ware_info` VALUES ('6', '朝41号仓库', '京', '123123');
INSERT INTO `wms_ware_info` VALUES ('7', '朝阳5号仓库', '京', '123123');
INSERT INTO `wms_ware_info` VALUES ('8', '朝阳6号仓库', '京', '123123');

-- ----------------------------
-- Table structure for wms_ware_order_task
-- ----------------------------
DROP TABLE IF EXISTS `wms_ware_order_task`;
CREATE TABLE `wms_ware_order_task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `order_id` bigint(20) DEFAULT NULL COMMENT '订单编号',
  `consignee` varchar(100) DEFAULT NULL COMMENT '收货人',
  `consignee_tel` varchar(20) DEFAULT NULL COMMENT '收货人电话',
  `delivery_address` varchar(1000) DEFAULT NULL COMMENT '送货地址',
  `order_comment` varchar(200) DEFAULT NULL COMMENT '订单备注',
  `payment_way` varchar(2) DEFAULT NULL COMMENT '付款方式 1:在线付款 2:货到付款',
  `task_status` varchar(20) DEFAULT NULL,
  `order_body` varchar(200) DEFAULT NULL COMMENT '订单描述',
  `tracking_no` varchar(200) DEFAULT NULL COMMENT '物流单号',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `ware_id` bigint(20) DEFAULT NULL COMMENT '仓库编号',
  `task_comment` varchar(500) DEFAULT NULL COMMENT '工作单备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8 COMMENT='库存工作单表 库存工作单表';

-- ----------------------------
-- Records of wms_ware_order_task
-- ----------------------------
INSERT INTO `wms_ware_order_task` VALUES ('97', null, '刚哥', '1399910102', '北京市昌平宏福科技楼', '该订单非常重要 ，请务必送达', null, 'DEDUCTED', null, null, '2018-06-02 16:10:10', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('130', '99', '刚哥', '1399910102', '北京市昌平宏福科技楼', null, null, 'DEDUCTED', null, null, '2018-06-02 16:22:13', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('131', '100', '刚哥', '1399910102', '北京市昌平宏福科技楼', null, null, 'DEDUCTED', null, null, '2018-06-02 16:27:08', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('132', '109', null, null, null, null, null, 'DEDUCTED', null, null, '2018-06-27 14:41:23', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('133', '112', null, null, null, null, null, 'DEDUCTED', null, null, '2018-06-29 10:53:20', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('134', '128', '测试收件人', '123123123123123', '测试收件地址', null, null, 'DEDUCTED', null, null, '2018-08-20 09:32:42', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('135', '129', '测试收件人', '123123123123123', '测试收件地址', null, null, 'DEDUCTED', null, null, '2018-08-20 11:03:07', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('136', '151', '博哥', '123123123123', '北京市海淀区双榆树东里', null, null, 'DEDUCTED', null, null, '2018-09-27 09:59:39', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('137', '207', '博哥', '123123123123', '北京市海淀区双榆树东里', null, null, 'DEDUCTED', null, null, '2018-11-12 10:47:52', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('138', '208', '博哥', '123123123123', '北京市海淀区双榆树东里', null, null, 'DEDUCTED', null, null, '2018-11-12 10:51:19', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('139', '209', '博哥', '123123123123', '北京市海淀区双榆树东里', null, null, 'DEDUCTED', null, null, '2018-11-12 10:53:33', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('140', '227', '博哥', '123123123123', '北京市海淀区双榆树东里', null, null, 'DEDUCTED', null, null, '2018-12-21 10:56:10', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('141', '228', '博哥', '123123123123', '北京市海淀区双榆树东里', null, null, 'DEDUCTED', null, null, '2018-12-21 11:03:24', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('142', '229', '博哥', '123123123123', '北京市海淀区双榆树东里', null, null, 'DEDUCTED', null, null, '2018-12-21 11:10:53', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('143', '230', '博哥', '123123123123', '北京市海淀区双榆树东里', null, null, 'DEDUCTED', null, null, '2018-12-21 11:14:35', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('144', '231', '博哥', '123123123123', '北京市海淀区双榆树东里', null, null, 'DEDUCTED', null, null, '2018-12-21 11:17:59', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('145', '232', '博哥', '123123123123', '北京市海淀区双榆树东里', null, null, 'DEDUCTED', null, null, '2018-12-21 14:39:48', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('146', '247', '博哥', '123123123123', '北京市海淀区双榆树东里', null, null, 'DEDUCTED', null, null, '2019-02-15 09:59:14', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('147', '248', '博哥', '123123123123', '北京市海淀区双榆树东里', null, null, 'DEDUCTED', null, null, '2019-02-15 10:51:32', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('148', '249', '博哥', '123123123123', '北京市海淀区双榆树东里', null, null, 'DEDUCTED', null, null, '2019-02-15 11:22:13', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('149', '250', '博哥', '123123123123', '北京市海淀区双榆树东里', null, null, 'DEDUCTED', null, null, '2019-02-15 11:23:21', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('150', '251', '博哥', '123123123123', '北京市海淀区双榆树东里', null, null, 'DEDUCTED', null, null, '2019-02-15 11:26:54', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('151', '252', '博哥', '123123123123', '北京市海淀区双榆树东里', null, null, 'DEDUCTED', null, null, '2019-02-15 11:28:35', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('152', '253', '博哥', '123123123123', '北京市海淀区双榆树东里', null, null, 'DEDUCTED', null, null, '2019-02-15 11:32:24', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('153', '254', '博哥', '123123123123', '北京市海淀区双榆树东里', null, null, 'DEDUCTED', null, null, '2019-02-15 11:34:14', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('154', '255', '博哥', '123123123123', '北京市海淀区双榆树东里', null, null, 'DEDUCTED', null, null, '2019-02-15 11:35:23', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('155', '256', '博哥', '123123123123', '北京市海淀区双榆树东里', null, null, 'DEDUCTED', null, null, '2019-02-15 11:37:13', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('156', '257', '博哥', '123123123123', '北京市海淀区双榆树东里', null, null, 'DEDUCTED', null, null, '2019-02-15 11:38:47', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('157', '258', '博哥', '123123123123', '北京市海淀区双榆树东里', null, null, 'DEDUCTED', null, null, '2019-02-15 11:51:41', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('158', '294', '博哥', '123123123123', '北京市海淀区双榆树东里', null, null, 'DEDUCTED', null, null, '2019-03-22 23:09:34', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('159', '295', '博哥', '123123123123', '北京市海淀区双榆树东里', null, null, 'OUT_OF_STOCK', null, null, '2019-03-22 23:14:03', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('160', '296', '博哥', '123123123123', '北京市海淀区双榆树东里', null, null, 'PAID', null, null, '2019-03-22 23:19:48', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('161', '297', '博哥', '123123123123', '北京市海淀区双榆树东里', null, null, 'DEDUCTED', null, null, '2019-03-22 23:21:29', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('162', '298', '博哥', '123123123123', '北京市海淀区双榆树东里', null, null, 'DEDUCTED', null, null, '2019-03-22 23:33:22', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('163', '307', '博哥', '123123123123', '北京市海淀区双榆树东里', null, null, 'DEDUCTED', null, null, '2019-03-23 15:44:05', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('164', '308', '博哥', '123123123123', '北京市海淀区双榆树东里', null, null, 'DEDUCTED', null, null, '2019-03-23 15:44:06', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('165', '309', '博哥', '123123123123', '北京市海淀区双榆树东里', null, null, 'DEDUCTED', null, null, '2019-03-23 15:44:06', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('166', '310', '博哥', '123123123123', '北京市海淀区双榆树东里', null, null, 'DEDUCTED', null, null, '2019-03-23 15:44:06', null, null);
INSERT INTO `wms_ware_order_task` VALUES ('167', '311', '博哥', '123123123123', '北京市海淀区双榆树东里', null, null, 'DEDUCTED', null, null, '2019-03-23 16:44:06', null, null);

-- ----------------------------
-- Table structure for wms_ware_order_task_detail
-- ----------------------------
DROP TABLE IF EXISTS `wms_ware_order_task_detail`;
CREATE TABLE `wms_ware_order_task_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `sku_id` bigint(20) DEFAULT NULL COMMENT 'sku_id',
  `sku_name` varchar(200) DEFAULT NULL COMMENT 'sku名称',
  `sku_nums` int(11) DEFAULT NULL COMMENT '购买个数',
  `task_id` bigint(20) DEFAULT NULL COMMENT '工作单编号',
  `sku_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=292 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wms_ware_order_task_detail
-- ----------------------------
INSERT INTO `wms_ware_order_task_detail` VALUES ('286', '103', '黑鲨游戏手机Gmall1015系列低配双核版', null, '162', '1');
INSERT INTO `wms_ware_order_task_detail` VALUES ('287', '103', '黑鲨游戏手机Gmall1015系列低配双核版', null, '163', '1');
INSERT INTO `wms_ware_order_task_detail` VALUES ('288', '103', '黑鲨游戏手机Gmall1015系列低配双核版', null, '164', '1');
INSERT INTO `wms_ware_order_task_detail` VALUES ('289', '103', '黑鲨游戏手机Gmall1015系列低配双核版', null, '165', '1');
INSERT INTO `wms_ware_order_task_detail` VALUES ('290', '103', '黑鲨游戏手机Gmall1015系列低配双核版', null, '166', '1');
INSERT INTO `wms_ware_order_task_detail` VALUES ('291', '103', '黑鲨游戏手机Gmall1015系列低配双核版', null, '167', '1');

-- ----------------------------
-- Table structure for wms_ware_sku
-- ----------------------------
DROP TABLE IF EXISTS `wms_ware_sku`;
CREATE TABLE `wms_ware_sku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `sku_id` bigint(20) DEFAULT NULL COMMENT 'skuid',
  `warehouse_id` bigint(20) DEFAULT NULL COMMENT '仓库id',
  `stock` int(11) DEFAULT '0' COMMENT '库存数',
  `stock_name` varchar(200) DEFAULT NULL COMMENT '存货名称',
  `stock_locked` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_skuid` (`sku_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wms_ware_sku
-- ----------------------------
INSERT INTO `wms_ware_sku` VALUES ('9', '80', '2', '10', '测试编号80sku库存', '10');
INSERT INTO `wms_ware_sku` VALUES ('11', '22', '2', '100', '小米美颜', '1');
INSERT INTO `wms_ware_sku` VALUES ('12', '13', '2', '100', '一堆小米6 全网通 6GB+128GB 亮黑色 移动联通电信4G手机 双卡双待', '1');
INSERT INTO `wms_ware_sku` VALUES ('13', '88', '2', '100', '又一联想拯救者', '1');
INSERT INTO `wms_ware_sku` VALUES ('14', '94', '1', '100', '一堆尚硅谷超长待机', '1');
INSERT INTO `wms_ware_sku` VALUES ('15', '85', '6', '10', '进了一批iphoneXs', '2');
INSERT INTO `wms_ware_sku` VALUES ('16', '97', '5', '10', '刚刚进货的iphoneRx一批', '0');
INSERT INTO `wms_ware_sku` VALUES ('18', '95', '4', '10', '一堆尚硅谷无人驾驶手机R720', '3');
INSERT INTO `wms_ware_sku` VALUES ('19', '98', '6', '100', '18年12月21日新入库一堆硅谷gmall0725全面屏游戏智能手机 6GB+64GB 红色 硅谷纪念限量版手机', '3');
INSERT INTO `wms_ware_sku` VALUES ('20', '96', '6', '10', '突然到货一拼商品', '0');
INSERT INTO `wms_ware_sku` VALUES ('21', '96', '1', '10', '突然到货一堆sku96商品手机', '1');
INSERT INTO `wms_ware_sku` VALUES ('22', '100', '1', '100', '一堆尚硅谷游戏机', '1');
INSERT INTO `wms_ware_sku` VALUES ('23', '102', '6', '10', '一堆手机0906系列256G大内存容量版', '1');
INSERT INTO `wms_ware_sku` VALUES ('28', '104', '3', '10', '10台尚硅谷黑鲨系列手机gmall1015', '0');
INSERT INTO `wms_ware_sku` VALUES ('29', '103', '2', '10', '黑纱gmall1015低配版', '5');
