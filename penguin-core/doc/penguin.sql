/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : penguin

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 18/06/2020 14:01:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fun_exp
-- ----------------------------
DROP TABLE IF EXISTS `fun_exp`;
CREATE TABLE `fun_exp`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '实验名称',
  `status` tinyint(4) NOT NULL COMMENT '实验状态 0：审核中 1：未发布 2：发布中 3：已结束',
  `types` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '实验类型',
  `payment` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '实验报酬下限',
  `contact` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系方式',
  `people_num` int(11) NOT NULL COMMENT '实验人数',
  `location` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '实验地点',
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验内容',
  `time` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '实验时间段',
  `duration` int(8) NOT NULL COMMENT '实验时长',
  `requirements` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验要求',
  `preferences` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验偏好',
  `questionnaire_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '问卷ID',
  `file_list` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `note` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `last_update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fun_exp
-- ----------------------------
INSERT INTO `fun_exp` VALUES (9, 'exp7', 1, '[\\\'按键实验\\\',\\\'脑电实验\\\']', '{\\\'paymentMin\\\':\\\'2\\\',\\\'paymentMax\\\':\\\'5\\\'}', '110', 1, '630', 'conetententoet', '[{\\\'dateValue\\\':1587002821746,\\\'timeValue\\\':[1587002821746,1587002821746]},{\\\'dateValue\\\':1587002837428,\\\'timeValue\\\':[1587002837428,1587002837428],\\\'key\\\':1587002837428},{\\\'dateValue\\\':1587002838216,\\\'timeValue\\\':[1587002838216,1587002838216],\\\'key\\\':1587002838216}]', 7, '[\\\'无近视\\\',\\\'右利手\\\']', '[\\\'提交后直接发布\\\']', '23142313', '[]', 'nontentoente', NULL, NULL, 'admin', '2020-06-16 18:16:12');
INSERT INTO `fun_exp` VALUES (10, 'exp8', 2, '[\\\'按键实验\\\',\\\'脑电实验\\\']', '{\\\'paymentMin\\\':\\\'2\\\',\\\'paymentMax\\\':\\\'5\\\'}', '110', 1, '630', 'conetententoet', '[{\\\'dateValue\\\':1587002821746,\\\'timeValue\\\':[1587002821746,1587002821746]},{\\\'dateValue\\\':1587002837428,\\\'timeValue\\\':[1587002837428,1587002837428],\\\'key\\\':1587002837428},{\\\'dateValue\\\':1587002838216,\\\'timeValue\\\':[1587002838216,1587002838216],\\\'key\\\':1587002838216}]', 7, '[\\\'无近视\\\',\\\'右利手\\\']', '[\\\'提交后直接发布\\\']', '23142313', '[]', 'nontentoente', NULL, NULL, NULL, NULL);
INSERT INTO `fun_exp` VALUES (11, 'exp9', 2, '[\\\'按键实验\\\',\\\'脑电实验\\\']', '{\\\'paymentMin\\\':\\\'2\\\',\\\'paymentMax\\\':\\\'5\\\'}', '110', 1, '630', 'conetententoet', '[{\\\'dateValue\\\':1587002821746,\\\'timeValue\\\':[1587002821746,1587002821746]},{\\\'dateValue\\\':1587002837428,\\\'timeValue\\\':[1587002837428,1587002837428],\\\'key\\\':1587002837428},{\\\'dateValue\\\':1587002838216,\\\'timeValue\\\':[1587002838216,1587002838216],\\\'key\\\':1587002838216}]', 7, '[\\\'无近视\\\',\\\'右利手\\\']', '[\\\'提交后直接发布\\\']', '23142313', '[]', 'nontentoente', NULL, NULL, NULL, NULL);
INSERT INTO `fun_exp` VALUES (12, 'exp10', 2, '[\\\'按键实验\\\',\\\'脑电实验\\\']', '{\\\'paymentMin\\\':\\\'2\\\',\\\'paymentMax\\\':\\\'5\\\'}', '110', 1, '630', 'conetententoet', '[{\\\'dateValue\\\':1587002821746,\\\'timeValue\\\':[1587002821746,1587002821746]},{\\\'dateValue\\\':1587002837428,\\\'timeValue\\\':[1587002837428,1587002837428],\\\'key\\\':1587002837428},{\\\'dateValue\\\':1587002838216,\\\'timeValue\\\':[1587002838216,1587002838216],\\\'key\\\':1587002838216}]', 7, '[\\\'无近视\\\',\\\'右利手\\\']', '[\\\'提交后直接发布\\\']', '23142313', '[]', 'nontentoente', NULL, NULL, NULL, NULL);
INSERT INTO `fun_exp` VALUES (13, '实验项目', 1, '[\\\'问卷实验\\\']', '{\\\'paymentMin\\\':\\\'0\\\',\\\'paymentMax\\\':\\\'0\\\'}', '32321312', 1, '地点', '', '[{\\\'dateValue\\\':1590505605246,\\\'timeValue\\\':[\\\'2020-05-26T15:10:46.000Z\\\',\\\'2020-05-26T15:59:59.000Z\\\']},{\\\'dateValue\\\':1590506054738,\\\'timeValue\\\':[\\\'2020-05-26T15:14:22.000Z\\\',\\\'2020-05-26T15:59:59.000Z\\\'],\\\'key\\\':1590506054738}]', 1, '[]', '[\\\'提交后直接发布\\\']', NULL, '[]', '', NULL, NULL, NULL, NULL);
INSERT INTO `fun_exp` VALUES (14, 'testForTimeStamp', 1, '[\\\'按键实验\\\']', '{\\\'paymentMin\\\':\\\'23\\\',\\\'paymentMax\\\':\\\'24\\\'}', '110', 1, '630', '', '[{\\\'dateValue\\\':1591789504771,\\\'timeValue\\\':[1591789504771,1591789504771]}]', 1, '[]', '[\\\'提交后直接发布\\\']', NULL, '[]', '', NULL, NULL, NULL, NULL);
INSERT INTO `fun_exp` VALUES (15, 'testForStampTime2', 1, '[\\\'按键实验\\\',\\\'脑电实验\\\']', '{\\\'paymentMin\\\':\\\'23\\\',\\\'paymentMax\\\':\\\'24\\\'}', '110', 1, '631', '', '[{\\\'dateValue\\\':1591790190543,\\\'timeValue\\\':[1591790190543,1591790190543]}]', 1, '[]', '[\\\'提交后直接发布\\\']', NULL, '[]', '', 'admin', '2020-06-10 19:56:57', NULL, NULL);
INSERT INTO `fun_exp` VALUES (16, 'testForUserExp', 1, '[\\\'按键实验\\\']', '{\\\'paymentMin\\\':\\\'23\\\',\\\'paymentMax\\\':\\\'214\\\'}', '1241', 1, '630', '', '[{\\\'dateValue\\\':1591802370534,\\\'timeValue\\\':[1591802370534,1591802370534]},{\\\'dateValue\\\':1591802394423,\\\'timeValue\\\':[1591802394423,1591802394423],\\\'key\\\':1591802394423}]', 1, '[]', '[\\\'提交后直接发布\\\']', NULL, '[]', '', 'admin', '2020-06-10 23:19:58', NULL, NULL);
INSERT INTO `fun_exp` VALUES (17, 'testForUserExp', 1, '[\\\'问卷实验\\\',\\\'脑电实验\\\']', '{\\\'paymentMin\\\':\\\'23\\\',\\\'paymentMax\\\':\\\'214\\\'}', '312', 1, '123', '', '[{\\\'dateValue\\\':1591802370534,\\\'timeValue\\\':[1591802370534,1591802370534]},{\\\'dateValue\\\':1591802394423,\\\'timeValue\\\':[1591802394423,1591802394423],\\\'key\\\':1591802394423}]', 1, '[]', '[\\\'提交后直接发布\\\']', NULL, '[]', '', 'admin', '2020-06-10 23:21:22', NULL, NULL);
INSERT INTO `fun_exp` VALUES (19, 'partPage1', 1, '[\\\'脑电实验\\\',\\\'问卷实验\\\']', '{\\\'paymentMin\\\':\\\'12\\\',\\\'paymentMax\\\':\\\'332\\\'}', '110', 1, 'lab', '', '[{\\\'dateValue\\\':1592048120217,\\\'timeValue\\\':[1592048120217,1592048120217]}]', 1, '[]', '[\\\'人数到达上限时停止发布\\\',\\\'排除低分被试\\\']', NULL, '[]', '', 'admin', '2020-06-13 19:35:48', 'admin', '2020-06-13 19:59:04');
INSERT INTO `fun_exp` VALUES (20, 'partPage2', 1, '[\\\'按键实验\\\',\\\'问卷实验\\\']', '{\\\'paymentMin\\\':\\\'12\\\',\\\'paymentMax\\\':\\\'332\\\'}', '124124', 1, 'lab2', '', '[{\\\'dateValue\\\':1592048120217,\\\'timeValue\\\':[1592048120217,1592048120217]}]', 1, '[]', '[\\\'提交后直接发布\\\']', NULL, '[]', '', 'admin', '2020-06-13 19:36:07', NULL, NULL);

-- ----------------------------
-- Table structure for fun_exp_user
-- ----------------------------
DROP TABLE IF EXISTS `fun_exp_user`;
CREATE TABLE `fun_exp_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `exp_id` bigint(20) NULL DEFAULT NULL COMMENT '实验ID',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户ID（被试）',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `last_update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fun_exp_user
-- ----------------------------
INSERT INTO `fun_exp_user` VALUES (2, 6, 1, 'admin', '2020-05-31 16:08:15', NULL, NULL);
INSERT INTO `fun_exp_user` VALUES (9, 1, 14, 'gyc', '2020-05-31 16:18:58', NULL, NULL);
INSERT INTO `fun_exp_user` VALUES (19, 2, 1, 'admin', '2020-05-31 20:44:16', NULL, NULL);
INSERT INTO `fun_exp_user` VALUES (20, 4, 1, 'admin', '2020-05-31 20:46:03', NULL, NULL);
INSERT INTO `fun_exp_user` VALUES (21, 5, 1, 'admin', '2020-05-31 22:39:26', NULL, NULL);
INSERT INTO `fun_exp_user` VALUES (23, 11, 1, 'admin', '2020-05-31 22:53:44', NULL, NULL);
INSERT INTO `fun_exp_user` VALUES (24, 10, 3, 'admin', '2020-05-31 22:56:53', NULL, NULL);
INSERT INTO `fun_exp_user` VALUES (26, 8, 1, 'admin', '2020-05-31 23:06:23', NULL, NULL);
INSERT INTO `fun_exp_user` VALUES (27, 7, 1, 'admin', '2020-06-07 16:12:41', NULL, NULL);

-- ----------------------------
-- Table structure for fun_user_exp
-- ----------------------------
DROP TABLE IF EXISTS `fun_user_exp`;
CREATE TABLE `fun_user_exp`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户ID（主试）',
  `exp_id` bigint(20) NULL DEFAULT NULL COMMENT '实验ID',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `last_update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fun_user_exp
-- ----------------------------
INSERT INTO `fun_user_exp` VALUES (1, 1, 13, 'admin', '2020-06-10 23:19:58', NULL, NULL);
INSERT INTO `fun_user_exp` VALUES (2, 1, 17, 'admin', '2020-06-10 23:21:22', NULL, NULL);
INSERT INTO `fun_user_exp` VALUES (4, 1, 19, 'admin', '2020-06-13 19:35:48', NULL, NULL);
INSERT INTO `fun_user_exp` VALUES (5, 1, 20, 'admin', '2020-06-13 19:36:07', NULL, NULL);
INSERT INTO `fun_user_exp` VALUES (6, NULL, 19, 'admin', '2020-06-13 19:58:45', NULL, NULL);
INSERT INTO `fun_user_exp` VALUES (7, NULL, 19, 'admin', '2020-06-13 19:59:04', NULL, NULL);
INSERT INTO `fun_user_exp` VALUES (8, NULL, 9, 'admin', '2020-06-16 18:16:12', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构名称',
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '上级机构ID，一级机构为0',
  `order_num` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `last_update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` tinyint(4) NULL DEFAULT 0 COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '机构管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (19, '三国集团', NULL, 2, 'admin', '2018-09-23 19:36:24', NULL, NULL, 0);
INSERT INTO `sys_dept` VALUES (33, '魏国', 19, 0, 'admin', '2018-09-23 19:40:42', NULL, NULL, 0);
INSERT INTO `sys_dept` VALUES (34, '蜀国', 19, 1, 'admin', '2018-09-23 19:40:54', NULL, NULL, 0);
INSERT INTO `sys_dept` VALUES (35, '吴国', 19, 2, 'admin', '2018-09-23 19:41:04', NULL, NULL, 0);
INSERT INTO `sys_dept` VALUES (36, '微信小程序', NULL, 0, 'admin', '2020-04-09 22:41:14', NULL, NULL, 0);

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '数据值',
  `label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标签名',
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '描述',
  `sort` decimal(10, 0) NOT NULL COMMENT '排序（升序）',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `last_update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` tinyint(4) NULL DEFAULT 0 COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES (3, 'male', '男', 'sex', '性别', 0, 'admin', '2018-09-23 19:52:54', NULL, NULL, '性别', 0);
INSERT INTO `sys_dict` VALUES (4, 'female', '女', 'sex', '性别', 1, 'admin', '2018-09-23 19:53:17', NULL, NULL, '性别', 0);

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求参数',
  `time` bigint(20) NOT NULL COMMENT '执行时长(毫秒)',
  `ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `last_update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2083 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES (1, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 236, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (2, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (3, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 53, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (4, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 60, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (5, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 61, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 13:01:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (6, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 13:01:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (7, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 24, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 13:01:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (8, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 12, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 13:01:16', NULL, NULL);
INSERT INTO `sys_log` VALUES (9, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.save()', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":1586445215000,\"delFlag\":0,\"icon\":\"fa fa-user-circle fa-lg fa-fw\",\"id\":53,\"lastUpdateBy\":\"admin\",\"lastUpdateTime\":1591851722454,\"level\":0,\"name\":\"账户管理\",\"o...', 31, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 13:02:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (10, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 14, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 13:02:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (11, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 13:02:08', NULL, NULL);
INSERT INTO `sys_log` VALUES (12, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 13:02:14', NULL, NULL);
INSERT INTO `sys_log` VALUES (13, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 13:02:14', NULL, NULL);
INSERT INTO `sys_log` VALUES (14, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 13:02:14', NULL, NULL);
INSERT INTO `sys_log` VALUES (15, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.getInfoByName()', '\"admin\"', 25, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 13:02:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (16, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 310, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 13:02:16', NULL, NULL);
INSERT INTO `sys_log` VALUES (17, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":2,\"pageSize\":10}', 27, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 13:02:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (18, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findById()', '1', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 13:05:12', NULL, NULL);
INSERT INTO `sys_log` VALUES (19, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findById()', '1', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 13:05:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (20, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 225, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (21, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (22, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 43, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (23, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 47, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (24, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 147, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 16:42:40', NULL, NULL);
INSERT INTO `sys_log` VALUES (25, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 93, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 16:42:40', NULL, NULL);
INSERT INTO `sys_log` VALUES (26, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 109, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 16:42:40', NULL, NULL);
INSERT INTO `sys_log` VALUES (27, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 16, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 16:44:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (28, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 16:44:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (29, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 16:44:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (30, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 16:44:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (31, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 16:44:11', NULL, NULL);
INSERT INTO `sys_log` VALUES (32, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 16:44:11', NULL, NULL);
INSERT INTO `sys_log` VALUES (33, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"status\":{\"name\":\"status\",\"value\":\"2\"}},\"pageNum\":1,\"pageSize\":10}', 164, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 16:44:11', NULL, NULL);
INSERT INTO `sys_log` VALUES (34, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"label\":{\"name\":\"label\"}},\"pageNum\":1,\"pageSize\":10}', 14, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 16:44:18', NULL, NULL);
INSERT INTO `sys_log` VALUES (35, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 16:45:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (36, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 16:45:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (37, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 16:45:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (38, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 23, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 16:45:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (39, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 25, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 16:45:20', NULL, NULL);
INSERT INTO `sys_log` VALUES (40, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 31, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 16:45:20', NULL, NULL);
INSERT INTO `sys_log` VALUES (41, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"label\":{\"name\":\"label\"}},\"pageNum\":1,\"pageSize\":10}', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 16:45:20', NULL, NULL);
INSERT INTO `sys_log` VALUES (42, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"status\":{\"name\":\"status\",\"value\":\"2\"}},\"pageNum\":1,\"pageSize\":10}', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 16:45:55', NULL, NULL);
INSERT INTO `sys_log` VALUES (43, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '1', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 16:45:55', NULL, NULL);
INSERT INTO `sys_log` VALUES (44, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '2', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 16:45:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (45, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '3', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 16:45:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (46, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '4', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 16:45:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (47, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '5', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 16:45:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (48, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '6', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 16:45:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (49, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '7', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 16:45:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (50, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '8', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 16:45:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (51, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '9', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 16:45:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (52, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '10', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 16:45:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (53, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"label\":{\"name\":\"label\"}},\"pageNum\":1,\"pageSize\":10}', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 16:46:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (54, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 14, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (55, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (56, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (57, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (58, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 17:06:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (59, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 17:06:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (60, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 17:06:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (61, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"label\":{\"name\":\"label\"}},\"pageNum\":1,\"pageSize\":10}', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-11 17:06:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (62, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 33658, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (63, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (64, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 61, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (65, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 65, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (66, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (67, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (68, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 15, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (69, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 23, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (70, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 62, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:31:16', NULL, NULL);
INSERT INTO `sys_log` VALUES (71, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:31:16', NULL, NULL);
INSERT INTO `sys_log` VALUES (72, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 14, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:31:16', NULL, NULL);
INSERT INTO `sys_log` VALUES (73, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.getInfoByName()', '\"admin\"', 298, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:31:21', NULL, NULL);
INSERT INTO `sys_log` VALUES (74, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 453, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:31:22', NULL, NULL);
INSERT INTO `sys_log` VALUES (75, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"label\":{\"name\":\"label\"}},\"pageNum\":1,\"pageSize\":10}', 12, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:32:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (76, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"status\":{\"name\":\"status\",\"value\":\"2\"}},\"pageNum\":1,\"pageSize\":10}', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:34:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (77, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '1', 24, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:34:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (78, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '2', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:34:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (79, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '3', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:34:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (80, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '4', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:34:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (81, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '5', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:34:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (82, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '6', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:34:16', NULL, NULL);
INSERT INTO `sys_log` VALUES (83, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '7', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:34:16', NULL, NULL);
INSERT INTO `sys_log` VALUES (84, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '8', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:34:16', NULL, NULL);
INSERT INTO `sys_log` VALUES (85, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '9', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:34:16', NULL, NULL);
INSERT INTO `sys_log` VALUES (86, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '10', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:34:16', NULL, NULL);
INSERT INTO `sys_log` VALUES (87, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"status\":{\"name\":\"status\",\"value\":\"2\"}},\"pageNum\":1,\"pageSize\":10}', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:34:34', NULL, NULL);
INSERT INTO `sys_log` VALUES (88, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '1', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:34:34', NULL, NULL);
INSERT INTO `sys_log` VALUES (89, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '2', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:34:34', NULL, NULL);
INSERT INTO `sys_log` VALUES (90, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '3', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:34:34', NULL, NULL);
INSERT INTO `sys_log` VALUES (91, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '4', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:34:34', NULL, NULL);
INSERT INTO `sys_log` VALUES (92, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '5', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:34:34', NULL, NULL);
INSERT INTO `sys_log` VALUES (93, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '6', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:34:34', NULL, NULL);
INSERT INTO `sys_log` VALUES (94, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '7', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:34:34', NULL, NULL);
INSERT INTO `sys_log` VALUES (95, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '8', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:34:34', NULL, NULL);
INSERT INTO `sys_log` VALUES (96, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '9', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:34:34', NULL, NULL);
INSERT INTO `sys_log` VALUES (97, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '10', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:34:34', NULL, NULL);
INSERT INTO `sys_log` VALUES (98, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:34:44', NULL, NULL);
INSERT INTO `sys_log` VALUES (99, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.getInfoByName()', '\"admin\"', 28, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:34:44', NULL, NULL);
INSERT INTO `sys_log` VALUES (100, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysDeptServiceImpl.findTree()', NULL, 22, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:36:20', NULL, NULL);
INSERT INTO `sys_log` VALUES (101, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 121, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:36:20', NULL, NULL);
INSERT INTO `sys_log` VALUES (102, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findAll()', NULL, 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:36:20', NULL, NULL);
INSERT INTO `sys_log` VALUES (103, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findById()', '4', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:36:52', NULL, NULL);
INSERT INTO `sys_log` VALUES (104, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.save()', '{\"createBy\":\"admin\",\"createTime\":1534216271000,\"delFlag\":0,\"deptId\":8,\"email\":\"iverson@qq.com\",\"id\":4,\"lastUpdateBy\":\"admin\",\"lastUpdateTime\":1591965411900,\"mobile\":\"18200932238\",\"name\":\"Ryzin\",\"passw...', 42, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:36:52', NULL, NULL);
INSERT INTO `sys_log` VALUES (105, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 53, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:36:52', NULL, NULL);
INSERT INTO `sys_log` VALUES (106, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findAll()', NULL, 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:36:52', NULL, NULL);
INSERT INTO `sys_log` VALUES (107, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"Ryzin\"', 2, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (108, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"Ryzin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (109, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"Ryzin\"', 6, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (110, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"Ryzin\"', 9, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (111, 'Ryzin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"Ryzin\"}},\"pageNum\":1,\"pageSize\":10}', 14, '0:0:0:0:0:0:0:1', 'Ryzin', '2020-06-12 20:37:14', NULL, NULL);
INSERT INTO `sys_log` VALUES (112, 'Ryzin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"Ryzin\"}},\"pageNum\":1,\"pageSize\":10}', 8, '0:0:0:0:0:0:0:1', 'Ryzin', '2020-06-12 20:38:37', NULL, NULL);
INSERT INTO `sys_log` VALUES (113, 'Ryzin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"status\":{\"name\":\"status\",\"value\":\"2\"}},\"pageNum\":1,\"pageSize\":10}', 13, '0:0:0:0:0:0:0:1', 'Ryzin', '2020-06-12 20:38:43', NULL, NULL);
INSERT INTO `sys_log` VALUES (114, 'Ryzin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '1', 1, '0:0:0:0:0:0:0:1', 'Ryzin', '2020-06-12 20:38:43', NULL, NULL);
INSERT INTO `sys_log` VALUES (115, 'Ryzin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '2', 2, '0:0:0:0:0:0:0:1', 'Ryzin', '2020-06-12 20:38:43', NULL, NULL);
INSERT INTO `sys_log` VALUES (116, 'Ryzin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '3', 2, '0:0:0:0:0:0:0:1', 'Ryzin', '2020-06-12 20:38:43', NULL, NULL);
INSERT INTO `sys_log` VALUES (117, 'Ryzin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '4', 2, '0:0:0:0:0:0:0:1', 'Ryzin', '2020-06-12 20:38:43', NULL, NULL);
INSERT INTO `sys_log` VALUES (118, 'Ryzin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '5', 1, '0:0:0:0:0:0:0:1', 'Ryzin', '2020-06-12 20:38:43', NULL, NULL);
INSERT INTO `sys_log` VALUES (119, 'Ryzin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '6', 1, '0:0:0:0:0:0:0:1', 'Ryzin', '2020-06-12 20:38:43', NULL, NULL);
INSERT INTO `sys_log` VALUES (120, 'Ryzin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '7', 1, '0:0:0:0:0:0:0:1', 'Ryzin', '2020-06-12 20:38:44', NULL, NULL);
INSERT INTO `sys_log` VALUES (121, 'Ryzin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '8', 1, '0:0:0:0:0:0:0:1', 'Ryzin', '2020-06-12 20:38:44', NULL, NULL);
INSERT INTO `sys_log` VALUES (122, 'Ryzin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '9', 1, '0:0:0:0:0:0:0:1', 'Ryzin', '2020-06-12 20:38:44', NULL, NULL);
INSERT INTO `sys_log` VALUES (123, 'Ryzin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '10', 1, '0:0:0:0:0:0:0:1', 'Ryzin', '2020-06-12 20:38:44', NULL, NULL);
INSERT INTO `sys_log` VALUES (124, 'Ryzin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"label\":{\"name\":\"label\"}},\"pageNum\":1,\"pageSize\":10}', 9, '0:0:0:0:0:0:0:1', 'Ryzin', '2020-06-12 20:38:47', NULL, NULL);
INSERT INTO `sys_log` VALUES (125, 'Ryzin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"label\":{\"name\":\"label\"}},\"pageNum\":1,\"pageSize\":10}', 7, '0:0:0:0:0:0:0:1', 'Ryzin', '2020-06-12 20:39:40', NULL, NULL);
INSERT INTO `sys_log` VALUES (126, 'Ryzin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"Ryzin\"}},\"pageNum\":1,\"pageSize\":10}', 9, '0:0:0:0:0:0:0:1', 'Ryzin', '2020-06-12 20:41:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (127, 'Ryzin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"label\":{\"name\":\"label\"}},\"pageNum\":1,\"pageSize\":10}', 6, '0:0:0:0:0:0:0:1', 'Ryzin', '2020-06-12 20:41:44', NULL, NULL);
INSERT INTO `sys_log` VALUES (128, 'Ryzin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"Ryzin\"}},\"pageNum\":1,\"pageSize\":10}', 7, '0:0:0:0:0:0:0:1', 'Ryzin', '2020-06-12 20:42:38', NULL, NULL);
INSERT INTO `sys_log` VALUES (129, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (130, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (131, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (132, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (133, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:44:52', NULL, NULL);
INSERT INTO `sys_log` VALUES (134, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:44:52', NULL, NULL);
INSERT INTO `sys_log` VALUES (135, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 19, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:44:52', NULL, NULL);
INSERT INTO `sys_log` VALUES (136, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"label\":{\"name\":\"label\"}},\"pageNum\":1,\"pageSize\":10}', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:44:55', NULL, NULL);
INSERT INTO `sys_log` VALUES (137, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"status\":{\"name\":\"status\",\"value\":\"2\"}},\"pageNum\":1,\"pageSize\":10}', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:45:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (138, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '1', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:45:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (139, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '2', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:45:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (140, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '3', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:45:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (141, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '4', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:45:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (142, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '5', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:45:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (143, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '6', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:45:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (144, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '7', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:45:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (145, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '8', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:45:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (146, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '9', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:45:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (147, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '10', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:45:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (148, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"label\":{\"name\":\"label\"}},\"pageNum\":1,\"pageSize\":10}', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:45:05', NULL, NULL);
INSERT INTO `sys_log` VALUES (149, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:46:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (150, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:46:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (151, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:46:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (152, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:46:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (153, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:46:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (154, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:46:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (155, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"label\":{\"name\":\"label\"}},\"pageNum\":1,\"pageSize\":10}', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:46:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (156, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:46:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (157, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.getInfoByName()', '\"admin\"', 12, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:46:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (158, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"label\":{\"name\":\"label\"}},\"pageNum\":1,\"pageSize\":10}', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:46:08', NULL, NULL);
INSERT INTO `sys_log` VALUES (159, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"status\":{\"name\":\"status\",\"value\":\"2\"}},\"pageNum\":1,\"pageSize\":10}', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:46:28', NULL, NULL);
INSERT INTO `sys_log` VALUES (160, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '1', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:46:28', NULL, NULL);
INSERT INTO `sys_log` VALUES (161, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '2', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:46:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (162, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '3', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:46:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (163, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '4', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:46:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (164, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '5', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:46:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (165, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '6', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:46:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (166, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '7', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:46:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (167, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '8', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:46:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (168, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '9', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:46:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (169, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '10', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:46:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (170, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"label\":{\"name\":\"label\"}},\"pageNum\":1,\"pageSize\":10}', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:46:30', NULL, NULL);
INSERT INTO `sys_log` VALUES (171, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:49:59', NULL, NULL);
INSERT INTO `sys_log` VALUES (172, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:49:59', NULL, NULL);
INSERT INTO `sys_log` VALUES (173, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:49:59', NULL, NULL);
INSERT INTO `sys_log` VALUES (174, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:49:59', NULL, NULL);
INSERT INTO `sys_log` VALUES (175, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:49:59', NULL, NULL);
INSERT INTO `sys_log` VALUES (176, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:49:59', NULL, NULL);
INSERT INTO `sys_log` VALUES (177, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"label\":{\"name\":\"label\"}},\"pageNum\":1,\"pageSize\":10}', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:49:59', NULL, NULL);
INSERT INTO `sys_log` VALUES (178, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"status\":{\"name\":\"status\",\"value\":\"2\"}},\"pageNum\":1,\"pageSize\":10}', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:50:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (179, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '1', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:50:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (180, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '2', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:50:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (181, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '3', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:50:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (182, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '4', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:50:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (183, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '5', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:50:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (184, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '6', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:50:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (185, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '7', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:50:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (186, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '8', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:50:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (187, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '9', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:50:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (188, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '10', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:50:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (189, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"label\":{\"name\":\"label\"}},\"pageNum\":1,\"pageSize\":10}', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:50:18', NULL, NULL);
INSERT INTO `sys_log` VALUES (190, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:51:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (191, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:51:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (192, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 26, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:51:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (193, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 29, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:51:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (194, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:51:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (195, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:51:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (196, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-12 20:51:20', NULL, NULL);
INSERT INTO `sys_log` VALUES (197, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 175, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (198, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (199, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 38, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (200, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 42, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (201, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 26, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 13:45:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (202, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 16, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 13:45:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (203, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 26, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 13:45:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (204, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 289, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 13:46:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (205, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 13:46:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (206, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 13:46:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (207, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 18, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 13:46:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (208, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 22, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 13:46:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (209, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 13:46:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (210, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 13:46:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (211, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 21, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 13:46:59', NULL, NULL);
INSERT INTO `sys_log` VALUES (212, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 13:59:22', NULL, NULL);
INSERT INTO `sys_log` VALUES (213, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 13:59:22', NULL, NULL);
INSERT INTO `sys_log` VALUES (214, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 12, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 13:59:22', NULL, NULL);
INSERT INTO `sys_log` VALUES (215, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 13:59:22', NULL, NULL);
INSERT INTO `sys_log` VALUES (216, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 13:59:22', NULL, NULL);
INSERT INTO `sys_log` VALUES (217, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 13:59:22', NULL, NULL);
INSERT INTO `sys_log` VALUES (218, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 20, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 13:59:23', NULL, NULL);
INSERT INTO `sys_log` VALUES (219, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:00:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (220, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:00:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (221, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:00:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (222, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:00:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (223, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:00:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (224, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:00:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (225, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:00:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (226, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 12, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:05:17', NULL, NULL);
INSERT INTO `sys_log` VALUES (227, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:05:17', NULL, NULL);
INSERT INTO `sys_log` VALUES (228, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:05:17', NULL, NULL);
INSERT INTO `sys_log` VALUES (229, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 14, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:05:17', NULL, NULL);
INSERT INTO `sys_log` VALUES (230, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:05:17', NULL, NULL);
INSERT INTO `sys_log` VALUES (231, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:05:17', NULL, NULL);
INSERT INTO `sys_log` VALUES (232, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:05:17', NULL, NULL);
INSERT INTO `sys_log` VALUES (233, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:06:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (234, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:06:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (235, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:06:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (236, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:06:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (237, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:06:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (238, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:06:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (239, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 30, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:06:27', NULL, NULL);
INSERT INTO `sys_log` VALUES (240, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:07:27', NULL, NULL);
INSERT INTO `sys_log` VALUES (241, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:07:27', NULL, NULL);
INSERT INTO `sys_log` VALUES (242, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:07:27', NULL, NULL);
INSERT INTO `sys_log` VALUES (243, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:07:27', NULL, NULL);
INSERT INTO `sys_log` VALUES (244, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:07:27', NULL, NULL);
INSERT INTO `sys_log` VALUES (245, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:07:27', NULL, NULL);
INSERT INTO `sys_log` VALUES (246, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 17, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:07:27', NULL, NULL);
INSERT INTO `sys_log` VALUES (247, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:11:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (248, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:11:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (249, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:11:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (250, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:11:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (251, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:11:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (252, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:11:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (253, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 12, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:11:16', NULL, NULL);
INSERT INTO `sys_log` VALUES (254, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"status\":{\"name\":\"status\",\"value\":\"2\"}},\"pageNum\":1,\"pageSize\":10}', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:13:53', NULL, NULL);
INSERT INTO `sys_log` VALUES (255, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '1', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:13:53', NULL, NULL);
INSERT INTO `sys_log` VALUES (256, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '2', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:13:53', NULL, NULL);
INSERT INTO `sys_log` VALUES (257, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '3', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:13:53', NULL, NULL);
INSERT INTO `sys_log` VALUES (258, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '4', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:13:53', NULL, NULL);
INSERT INTO `sys_log` VALUES (259, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '5', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:13:53', NULL, NULL);
INSERT INTO `sys_log` VALUES (260, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '6', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:13:53', NULL, NULL);
INSERT INTO `sys_log` VALUES (261, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '7', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:13:53', NULL, NULL);
INSERT INTO `sys_log` VALUES (262, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '8', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:13:53', NULL, NULL);
INSERT INTO `sys_log` VALUES (263, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '9', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:13:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (264, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '10', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:13:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (265, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:14:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (266, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.getInfoByName()', '\"admin\"', 21, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:14:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (267, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:14:14', NULL, NULL);
INSERT INTO `sys_log` VALUES (268, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:18:45', NULL, NULL);
INSERT INTO `sys_log` VALUES (269, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:18:45', NULL, NULL);
INSERT INTO `sys_log` VALUES (270, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:18:45', NULL, NULL);
INSERT INTO `sys_log` VALUES (271, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:18:45', NULL, NULL);
INSERT INTO `sys_log` VALUES (272, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:18:45', NULL, NULL);
INSERT INTO `sys_log` VALUES (273, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:18:45', NULL, NULL);
INSERT INTO `sys_log` VALUES (274, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:18:46', NULL, NULL);
INSERT INTO `sys_log` VALUES (275, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:20:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (276, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:20:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (277, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:20:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (278, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:20:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (279, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:20:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (280, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:20:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (281, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:20:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (282, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:20:24', NULL, NULL);
INSERT INTO `sys_log` VALUES (283, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:20:24', NULL, NULL);
INSERT INTO `sys_log` VALUES (284, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 14, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:20:24', NULL, NULL);
INSERT INTO `sys_log` VALUES (285, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 21, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:20:24', NULL, NULL);
INSERT INTO `sys_log` VALUES (286, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:20:24', NULL, NULL);
INSERT INTO `sys_log` VALUES (287, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:20:24', NULL, NULL);
INSERT INTO `sys_log` VALUES (288, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 17, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:20:25', NULL, NULL);
INSERT INTO `sys_log` VALUES (289, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:20:50', NULL, NULL);
INSERT INTO `sys_log` VALUES (290, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:20:50', NULL, NULL);
INSERT INTO `sys_log` VALUES (291, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:20:51', NULL, NULL);
INSERT INTO `sys_log` VALUES (292, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:20:51', NULL, NULL);
INSERT INTO `sys_log` VALUES (293, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:20:51', NULL, NULL);
INSERT INTO `sys_log` VALUES (294, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:20:51', NULL, NULL);
INSERT INTO `sys_log` VALUES (295, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:20:51', NULL, NULL);
INSERT INTO `sys_log` VALUES (296, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:24:09', NULL, NULL);
INSERT INTO `sys_log` VALUES (297, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:24:09', NULL, NULL);
INSERT INTO `sys_log` VALUES (298, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:24:09', NULL, NULL);
INSERT INTO `sys_log` VALUES (299, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:24:09', NULL, NULL);
INSERT INTO `sys_log` VALUES (300, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:24:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (301, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:24:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (302, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:24:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (303, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:24:41', NULL, NULL);
INSERT INTO `sys_log` VALUES (304, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:24:41', NULL, NULL);
INSERT INTO `sys_log` VALUES (305, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:24:41', NULL, NULL);
INSERT INTO `sys_log` VALUES (306, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:24:41', NULL, NULL);
INSERT INTO `sys_log` VALUES (307, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:24:42', NULL, NULL);
INSERT INTO `sys_log` VALUES (308, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:24:42', NULL, NULL);
INSERT INTO `sys_log` VALUES (309, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:24:42', NULL, NULL);
INSERT INTO `sys_log` VALUES (310, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:28:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (311, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:28:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (312, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:28:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (313, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:28:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (314, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:28:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (315, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:28:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (316, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:28:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (317, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:29:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (318, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:29:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (319, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:29:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (320, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:29:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (321, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:29:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (322, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:29:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (323, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:29:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (324, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:56:12', NULL, NULL);
INSERT INTO `sys_log` VALUES (325, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:56:12', NULL, NULL);
INSERT INTO `sys_log` VALUES (326, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:56:12', NULL, NULL);
INSERT INTO `sys_log` VALUES (327, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:56:12', NULL, NULL);
INSERT INTO `sys_log` VALUES (328, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:56:12', NULL, NULL);
INSERT INTO `sys_log` VALUES (329, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:56:12', NULL, NULL);
INSERT INTO `sys_log` VALUES (330, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:56:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (331, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:56:43', NULL, NULL);
INSERT INTO `sys_log` VALUES (332, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:56:43', NULL, NULL);
INSERT INTO `sys_log` VALUES (333, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:56:43', NULL, NULL);
INSERT INTO `sys_log` VALUES (334, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:56:43', NULL, NULL);
INSERT INTO `sys_log` VALUES (335, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:56:43', NULL, NULL);
INSERT INTO `sys_log` VALUES (336, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:56:43', NULL, NULL);
INSERT INTO `sys_log` VALUES (337, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:56:44', NULL, NULL);
INSERT INTO `sys_log` VALUES (338, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:57:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (339, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:57:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (340, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:57:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (341, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 16, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:57:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (342, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:57:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (343, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:57:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (344, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:57:14', NULL, NULL);
INSERT INTO `sys_log` VALUES (345, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:59:28', NULL, NULL);
INSERT INTO `sys_log` VALUES (346, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:59:28', NULL, NULL);
INSERT INTO `sys_log` VALUES (347, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:59:28', NULL, NULL);
INSERT INTO `sys_log` VALUES (348, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:59:28', NULL, NULL);
INSERT INTO `sys_log` VALUES (349, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:59:28', NULL, NULL);
INSERT INTO `sys_log` VALUES (350, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:59:28', NULL, NULL);
INSERT INTO `sys_log` VALUES (351, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 14:59:28', NULL, NULL);
INSERT INTO `sys_log` VALUES (352, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:00:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (353, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:00:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (354, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:00:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (355, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:00:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (356, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:00:16', NULL, NULL);
INSERT INTO `sys_log` VALUES (357, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:00:16', NULL, NULL);
INSERT INTO `sys_log` VALUES (358, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:00:16', NULL, NULL);
INSERT INTO `sys_log` VALUES (359, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:01:32', NULL, NULL);
INSERT INTO `sys_log` VALUES (360, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:01:32', NULL, NULL);
INSERT INTO `sys_log` VALUES (361, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:01:32', NULL, NULL);
INSERT INTO `sys_log` VALUES (362, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:01:32', NULL, NULL);
INSERT INTO `sys_log` VALUES (363, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:01:32', NULL, NULL);
INSERT INTO `sys_log` VALUES (364, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:01:32', NULL, NULL);
INSERT INTO `sys_log` VALUES (365, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:01:32', NULL, NULL);
INSERT INTO `sys_log` VALUES (366, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:02:46', NULL, NULL);
INSERT INTO `sys_log` VALUES (367, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:02:46', NULL, NULL);
INSERT INTO `sys_log` VALUES (368, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:02:46', NULL, NULL);
INSERT INTO `sys_log` VALUES (369, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 16, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:02:46', NULL, NULL);
INSERT INTO `sys_log` VALUES (370, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:02:46', NULL, NULL);
INSERT INTO `sys_log` VALUES (371, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:02:46', NULL, NULL);
INSERT INTO `sys_log` VALUES (372, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 18, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:02:47', NULL, NULL);
INSERT INTO `sys_log` VALUES (373, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:04:49', NULL, NULL);
INSERT INTO `sys_log` VALUES (374, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:04:49', NULL, NULL);
INSERT INTO `sys_log` VALUES (375, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:04:49', NULL, NULL);
INSERT INTO `sys_log` VALUES (376, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 14, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:04:49', NULL, NULL);
INSERT INTO `sys_log` VALUES (377, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:04:49', NULL, NULL);
INSERT INTO `sys_log` VALUES (378, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:04:49', NULL, NULL);
INSERT INTO `sys_log` VALUES (379, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 14, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:04:49', NULL, NULL);
INSERT INTO `sys_log` VALUES (380, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:12:55', NULL, NULL);
INSERT INTO `sys_log` VALUES (381, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:12:55', NULL, NULL);
INSERT INTO `sys_log` VALUES (382, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:12:55', NULL, NULL);
INSERT INTO `sys_log` VALUES (383, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:12:55', NULL, NULL);
INSERT INTO `sys_log` VALUES (384, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:12:55', NULL, NULL);
INSERT INTO `sys_log` VALUES (385, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:12:55', NULL, NULL);
INSERT INTO `sys_log` VALUES (386, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:12:55', NULL, NULL);
INSERT INTO `sys_log` VALUES (387, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:13:18', NULL, NULL);
INSERT INTO `sys_log` VALUES (388, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysDeptServiceImpl.findTree()', NULL, 30, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:17:11', NULL, NULL);
INSERT INTO `sys_log` VALUES (389, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 121, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:17:11', NULL, NULL);
INSERT INTO `sys_log` VALUES (390, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findAll()', NULL, 20, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:17:11', NULL, NULL);
INSERT INTO `sys_log` VALUES (391, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:24:50', NULL, NULL);
INSERT INTO `sys_log` VALUES (392, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:24:50', NULL, NULL);
INSERT INTO `sys_log` VALUES (393, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:24:50', NULL, NULL);
INSERT INTO `sys_log` VALUES (394, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:24:50', NULL, NULL);
INSERT INTO `sys_log` VALUES (395, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:24:50', NULL, NULL);
INSERT INTO `sys_log` VALUES (396, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:24:50', NULL, NULL);
INSERT INTO `sys_log` VALUES (397, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysDeptServiceImpl.findTree()', NULL, 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:24:51', NULL, NULL);
INSERT INTO `sys_log` VALUES (398, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 45, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:24:51', NULL, NULL);
INSERT INTO `sys_log` VALUES (399, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findAll()', NULL, 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:24:51', NULL, NULL);
INSERT INTO `sys_log` VALUES (400, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"status\":{\"name\":\"status\",\"value\":\"2\"}},\"pageNum\":1,\"pageSize\":10}', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:26:51', NULL, NULL);
INSERT INTO `sys_log` VALUES (401, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '1', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:26:51', NULL, NULL);
INSERT INTO `sys_log` VALUES (402, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '2', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:26:51', NULL, NULL);
INSERT INTO `sys_log` VALUES (403, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '3', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:26:51', NULL, NULL);
INSERT INTO `sys_log` VALUES (404, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '4', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:26:51', NULL, NULL);
INSERT INTO `sys_log` VALUES (405, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '5', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:26:51', NULL, NULL);
INSERT INTO `sys_log` VALUES (406, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '6', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:26:51', NULL, NULL);
INSERT INTO `sys_log` VALUES (407, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '7', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:26:51', NULL, NULL);
INSERT INTO `sys_log` VALUES (408, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '8', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:26:51', NULL, NULL);
INSERT INTO `sys_log` VALUES (409, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '9', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:26:51', NULL, NULL);
INSERT INTO `sys_log` VALUES (410, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '10', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:26:51', NULL, NULL);
INSERT INTO `sys_log` VALUES (411, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysDeptServiceImpl.findTree()', NULL, 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:56:37', NULL, NULL);
INSERT INTO `sys_log` VALUES (412, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 49, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:56:37', NULL, NULL);
INSERT INTO `sys_log` VALUES (413, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findAll()', NULL, 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:56:37', NULL, NULL);
INSERT INTO `sys_log` VALUES (414, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:56:41', NULL, NULL);
INSERT INTO `sys_log` VALUES (415, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:56:41', NULL, NULL);
INSERT INTO `sys_log` VALUES (416, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:56:41', NULL, NULL);
INSERT INTO `sys_log` VALUES (417, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:56:41', NULL, NULL);
INSERT INTO `sys_log` VALUES (418, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:56:41', NULL, NULL);
INSERT INTO `sys_log` VALUES (419, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:56:41', NULL, NULL);
INSERT INTO `sys_log` VALUES (420, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 27, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:56:42', NULL, NULL);
INSERT INTO `sys_log` VALUES (421, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysDeptServiceImpl.findTree()', NULL, 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:56:42', NULL, NULL);
INSERT INTO `sys_log` VALUES (422, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findAll()', NULL, 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 15:56:42', NULL, NULL);
INSERT INTO `sys_log` VALUES (423, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 16:02:00', NULL, NULL);
INSERT INTO `sys_log` VALUES (424, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 16:02:00', NULL, NULL);
INSERT INTO `sys_log` VALUES (425, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 16:02:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (426, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 16:02:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (427, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 16:02:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (428, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 16:02:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (429, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (430, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (431, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (432, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 168, '127.0.0.1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (433, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 3, '127.0.0.1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (434, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 39, '127.0.0.1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (435, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 45, '127.0.0.1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (436, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 17, '127.0.0.1', 'admin', '2020-06-13 17:12:59', NULL, NULL);
INSERT INTO `sys_log` VALUES (437, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 21, '127.0.0.1', 'admin', '2020-06-13 17:12:59', NULL, NULL);
INSERT INTO `sys_log` VALUES (438, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 38, '127.0.0.1', 'admin', '2020-06-13 17:12:59', NULL, NULL);
INSERT INTO `sys_log` VALUES (439, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 160, '127.0.0.1', 'admin', '2020-06-13 17:13:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (440, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:20:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (441, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:20:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (442, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:20:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (443, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 12, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:20:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (444, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:20:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (445, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 12, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:20:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (446, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 21, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:20:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (447, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:31:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (448, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:31:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (449, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 16, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:31:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (450, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 12, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:31:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (451, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:31:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (452, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:31:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (453, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 30, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:31:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (454, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:38:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (455, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:38:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (456, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:38:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (457, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:38:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (458, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:38:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (459, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:38:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (460, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:38:14', NULL, NULL);
INSERT INTO `sys_log` VALUES (461, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 14, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:39:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (462, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:39:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (463, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:39:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (464, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 18, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:39:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (465, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:39:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (466, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 12, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:39:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (467, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 22, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:39:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (468, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:40:55', NULL, NULL);
INSERT INTO `sys_log` VALUES (469, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:40:55', NULL, NULL);
INSERT INTO `sys_log` VALUES (470, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:40:55', NULL, NULL);
INSERT INTO `sys_log` VALUES (471, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:40:55', NULL, NULL);
INSERT INTO `sys_log` VALUES (472, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:40:55', NULL, NULL);
INSERT INTO `sys_log` VALUES (473, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:40:55', NULL, NULL);
INSERT INTO `sys_log` VALUES (474, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:40:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (475, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:42:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (476, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:42:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (477, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:42:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (478, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 16, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:42:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (479, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:42:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (480, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:42:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (481, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 21, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:42:14', NULL, NULL);
INSERT INTO `sys_log` VALUES (482, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.delete()', '[{\"id\":1}]', 19, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:42:16', NULL, NULL);
INSERT INTO `sys_log` VALUES (483, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:42:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (484, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:42:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (485, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:42:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (486, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 14, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:42:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (487, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:42:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (488, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:42:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (489, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:42:59', NULL, NULL);
INSERT INTO `sys_log` VALUES (490, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:43:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (491, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:43:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (492, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:43:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (493, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:43:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (494, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:43:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (495, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:43:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (496, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 12, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:43:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (497, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.delete()', '[{\"id\":2}]', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:44:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (498, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.delete()', '[{\"id\":2}]', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:44:09', NULL, NULL);
INSERT INTO `sys_log` VALUES (499, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:44:30', NULL, NULL);
INSERT INTO `sys_log` VALUES (500, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:44:30', NULL, NULL);
INSERT INTO `sys_log` VALUES (501, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:44:30', NULL, NULL);
INSERT INTO `sys_log` VALUES (502, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:44:30', NULL, NULL);
INSERT INTO `sys_log` VALUES (503, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:44:30', NULL, NULL);
INSERT INTO `sys_log` VALUES (504, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:44:30', NULL, NULL);
INSERT INTO `sys_log` VALUES (505, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:44:31', NULL, NULL);
INSERT INTO `sys_log` VALUES (506, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:45:46', NULL, NULL);
INSERT INTO `sys_log` VALUES (507, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:45:46', NULL, NULL);
INSERT INTO `sys_log` VALUES (508, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:45:46', NULL, NULL);
INSERT INTO `sys_log` VALUES (509, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:45:46', NULL, NULL);
INSERT INTO `sys_log` VALUES (510, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:45:46', NULL, NULL);
INSERT INTO `sys_log` VALUES (511, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:45:46', NULL, NULL);
INSERT INTO `sys_log` VALUES (512, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:45:49', NULL, NULL);
INSERT INTO `sys_log` VALUES (513, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:45:50', NULL, NULL);
INSERT INTO `sys_log` VALUES (514, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:45:50', NULL, NULL);
INSERT INTO `sys_log` VALUES (515, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:45:50', NULL, NULL);
INSERT INTO `sys_log` VALUES (516, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:45:50', NULL, NULL);
INSERT INTO `sys_log` VALUES (517, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:45:50', NULL, NULL);
INSERT INTO `sys_log` VALUES (518, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:48:09', NULL, NULL);
INSERT INTO `sys_log` VALUES (519, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:48:09', NULL, NULL);
INSERT INTO `sys_log` VALUES (520, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:48:09', NULL, NULL);
INSERT INTO `sys_log` VALUES (521, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:48:09', NULL, NULL);
INSERT INTO `sys_log` VALUES (522, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:48:09', NULL, NULL);
INSERT INTO `sys_log` VALUES (523, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:48:09', NULL, NULL);
INSERT INTO `sys_log` VALUES (524, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 23, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:48:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (525, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:48:30', NULL, NULL);
INSERT INTO `sys_log` VALUES (526, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:48:30', NULL, NULL);
INSERT INTO `sys_log` VALUES (527, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:48:30', NULL, NULL);
INSERT INTO `sys_log` VALUES (528, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:48:30', NULL, NULL);
INSERT INTO `sys_log` VALUES (529, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:48:30', NULL, NULL);
INSERT INTO `sys_log` VALUES (530, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 12, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:48:30', NULL, NULL);
INSERT INTO `sys_log` VALUES (531, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 17, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:48:31', NULL, NULL);
INSERT INTO `sys_log` VALUES (532, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.delete()', '[{\"id\":3}]', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:48:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (533, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:48:34', NULL, NULL);
INSERT INTO `sys_log` VALUES (534, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:48:51', NULL, NULL);
INSERT INTO `sys_log` VALUES (535, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:48:51', NULL, NULL);
INSERT INTO `sys_log` VALUES (536, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:48:51', NULL, NULL);
INSERT INTO `sys_log` VALUES (537, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:48:51', NULL, NULL);
INSERT INTO `sys_log` VALUES (538, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:48:51', NULL, NULL);
INSERT INTO `sys_log` VALUES (539, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:48:51', NULL, NULL);
INSERT INTO `sys_log` VALUES (540, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 18, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:48:51', NULL, NULL);
INSERT INTO `sys_log` VALUES (541, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.delete()', '[{\"id\":4}]', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:48:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (542, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:48:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (543, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:49:12', NULL, NULL);
INSERT INTO `sys_log` VALUES (544, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:49:12', NULL, NULL);
INSERT INTO `sys_log` VALUES (545, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:49:12', NULL, NULL);
INSERT INTO `sys_log` VALUES (546, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:49:12', NULL, NULL);
INSERT INTO `sys_log` VALUES (547, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:49:12', NULL, NULL);
INSERT INTO `sys_log` VALUES (548, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:49:12', NULL, NULL);
INSERT INTO `sys_log` VALUES (549, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 21, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:49:12', NULL, NULL);
INSERT INTO `sys_log` VALUES (550, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.delete()', '[{\"id\":5}]', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:49:40', NULL, NULL);
INSERT INTO `sys_log` VALUES (551, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:49:40', NULL, NULL);
INSERT INTO `sys_log` VALUES (552, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.delete()', '[{\"id\":6}]', 12, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:49:43', NULL, NULL);
INSERT INTO `sys_log` VALUES (553, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:49:43', NULL, NULL);
INSERT INTO `sys_log` VALUES (554, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.delete()', '[{\"id\":7}]', 12, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:49:45', NULL, NULL);
INSERT INTO `sys_log` VALUES (555, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 12, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:49:45', NULL, NULL);
INSERT INTO `sys_log` VALUES (556, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.delete()', '[{\"id\":8}]', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:49:47', NULL, NULL);
INSERT INTO `sys_log` VALUES (557, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:49:47', NULL, NULL);
INSERT INTO `sys_log` VALUES (558, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.delete()', '[{\"id\":18}]', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:49:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (559, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:49:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (560, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"status\":{\"name\":\"status\",\"value\":\"2\"}},\"pageNum\":1,\"pageSize\":10}', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:59:49', NULL, NULL);
INSERT INTO `sys_log` VALUES (561, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '9', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:59:49', NULL, NULL);
INSERT INTO `sys_log` VALUES (562, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '10', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:59:49', NULL, NULL);
INSERT INTO `sys_log` VALUES (563, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '11', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:59:49', NULL, NULL);
INSERT INTO `sys_log` VALUES (564, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '12', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:59:49', NULL, NULL);
INSERT INTO `sys_log` VALUES (565, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '13', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:59:49', NULL, NULL);
INSERT INTO `sys_log` VALUES (566, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '14', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:59:49', NULL, NULL);
INSERT INTO `sys_log` VALUES (567, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '15', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:59:49', NULL, NULL);
INSERT INTO `sys_log` VALUES (568, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '16', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:59:49', NULL, NULL);
INSERT INTO `sys_log` VALUES (569, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '17', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:59:49', NULL, NULL);
INSERT INTO `sys_log` VALUES (570, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysDeptServiceImpl.findTree()', NULL, 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:59:55', NULL, NULL);
INSERT INTO `sys_log` VALUES (571, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 78, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:59:55', NULL, NULL);
INSERT INTO `sys_log` VALUES (572, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findAll()', NULL, 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 17:59:55', NULL, NULL);
INSERT INTO `sys_log` VALUES (573, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:00:59', NULL, NULL);
INSERT INTO `sys_log` VALUES (574, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:00:59', NULL, NULL);
INSERT INTO `sys_log` VALUES (575, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:00:59', NULL, NULL);
INSERT INTO `sys_log` VALUES (576, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:00:59', NULL, NULL);
INSERT INTO `sys_log` VALUES (577, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:00:59', NULL, NULL);
INSERT INTO `sys_log` VALUES (578, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:00:59', NULL, NULL);
INSERT INTO `sys_log` VALUES (579, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysDeptServiceImpl.findTree()', NULL, 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:01:00', NULL, NULL);
INSERT INTO `sys_log` VALUES (580, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 34, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:01:00', NULL, NULL);
INSERT INTO `sys_log` VALUES (581, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findAll()', NULL, 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:01:00', NULL, NULL);
INSERT INTO `sys_log` VALUES (582, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:01:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (583, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysDeptServiceImpl.findTree()', NULL, 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:01:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (584, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 29, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:01:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (585, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findAll()', NULL, 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:01:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (586, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:02:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (587, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:03:20', NULL, NULL);
INSERT INTO `sys_log` VALUES (588, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:03:20', NULL, NULL);
INSERT INTO `sys_log` VALUES (589, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:03:20', NULL, NULL);
INSERT INTO `sys_log` VALUES (590, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:03:20', NULL, NULL);
INSERT INTO `sys_log` VALUES (591, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:03:20', NULL, NULL);
INSERT INTO `sys_log` VALUES (592, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:03:20', NULL, NULL);
INSERT INTO `sys_log` VALUES (593, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:03:21', NULL, NULL);
INSERT INTO `sys_log` VALUES (594, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:05:30', NULL, NULL);
INSERT INTO `sys_log` VALUES (595, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:05:30', NULL, NULL);
INSERT INTO `sys_log` VALUES (596, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:05:30', NULL, NULL);
INSERT INTO `sys_log` VALUES (597, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 18, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:05:30', NULL, NULL);
INSERT INTO `sys_log` VALUES (598, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:05:30', NULL, NULL);
INSERT INTO `sys_log` VALUES (599, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:05:30', NULL, NULL);
INSERT INTO `sys_log` VALUES (600, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:05:30', NULL, NULL);
INSERT INTO `sys_log` VALUES (601, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 32, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:07:32', NULL, NULL);
INSERT INTO `sys_log` VALUES (602, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysDeptServiceImpl.findTree()', NULL, 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:07:32', NULL, NULL);
INSERT INTO `sys_log` VALUES (603, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findAll()', NULL, 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:07:32', NULL, NULL);
INSERT INTO `sys_log` VALUES (604, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:07:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (605, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:07:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (606, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:07:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (607, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:07:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (608, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:07:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (609, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:07:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (610, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysDeptServiceImpl.findTree()', NULL, 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:07:34', NULL, NULL);
INSERT INTO `sys_log` VALUES (611, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 26, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:07:34', NULL, NULL);
INSERT INTO `sys_log` VALUES (612, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findAll()', NULL, 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:07:34', NULL, NULL);
INSERT INTO `sys_log` VALUES (613, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysDeptServiceImpl.findTree()', NULL, 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:07:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (614, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:07:38', NULL, NULL);
INSERT INTO `sys_log` VALUES (615, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:07:38', NULL, NULL);
INSERT INTO `sys_log` VALUES (616, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findRoleMenus()', '2', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 18:07:40', NULL, NULL);
INSERT INTO `sys_log` VALUES (617, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 11, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (618, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (619, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (620, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (621, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (622, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 12, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (623, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 12, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (624, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (625, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (626, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (627, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (628, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (629, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (630, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (631, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (632, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (633, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (634, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (635, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 1, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (636, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (637, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (638, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (639, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (640, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (641, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (642, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:35:17', NULL, NULL);
INSERT INTO `sys_log` VALUES (643, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:35:17', NULL, NULL);
INSERT INTO `sys_log` VALUES (644, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:35:17', NULL, NULL);
INSERT INTO `sys_log` VALUES (645, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:35:20', NULL, NULL);
INSERT INTO `sys_log` VALUES (646, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.save()', '{\"contact\":\"110\",\"content\":\"\",\"createBy\":\"admin\",\"createTime\":1592048148255,\"duration\":1,\"fileList\":\"[]\",\"id\":0,\"location\":\"lab\",\"name\":\"partPage1\",\"note\":\"\",\"payment\":\"{\\\\\'paymentMin\\\\\':\\\\\'12\\\\\',\\\\\'p...', 44, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:35:48', NULL, NULL);
INSERT INTO `sys_log` VALUES (647, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:35:48', NULL, NULL);
INSERT INTO `sys_log` VALUES (648, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.save()', '{\"contact\":\"124124\",\"content\":\"\",\"createBy\":\"admin\",\"createTime\":1592048167452,\"duration\":1,\"fileList\":\"[]\",\"id\":0,\"location\":\"lab2\",\"name\":\"partPage2\",\"note\":\"\",\"payment\":\"{\\\\\'paymentMin\\\\\':\\\\\'12\\\\\',...', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:36:07', NULL, NULL);
INSERT INTO `sys_log` VALUES (649, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:36:08', NULL, NULL);
INSERT INTO `sys_log` VALUES (650, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:39:25', NULL, NULL);
INSERT INTO `sys_log` VALUES (651, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:39:25', NULL, NULL);
INSERT INTO `sys_log` VALUES (652, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:39:25', NULL, NULL);
INSERT INTO `sys_log` VALUES (653, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:39:25', NULL, NULL);
INSERT INTO `sys_log` VALUES (654, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:39:25', NULL, NULL);
INSERT INTO `sys_log` VALUES (655, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:39:25', NULL, NULL);
INSERT INTO `sys_log` VALUES (656, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:39:25', NULL, NULL);
INSERT INTO `sys_log` VALUES (657, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:40:22', NULL, NULL);
INSERT INTO `sys_log` VALUES (658, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:40:22', NULL, NULL);
INSERT INTO `sys_log` VALUES (659, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:40:22', NULL, NULL);
INSERT INTO `sys_log` VALUES (660, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:40:22', NULL, NULL);
INSERT INTO `sys_log` VALUES (661, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:40:22', NULL, NULL);
INSERT INTO `sys_log` VALUES (662, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:40:22', NULL, NULL);
INSERT INTO `sys_log` VALUES (663, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":2,\"pageSize\":10}', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:40:22', NULL, NULL);
INSERT INTO `sys_log` VALUES (664, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:41:21', NULL, NULL);
INSERT INTO `sys_log` VALUES (665, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:41:22', NULL, NULL);
INSERT INTO `sys_log` VALUES (666, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:41:22', NULL, NULL);
INSERT INTO `sys_log` VALUES (667, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:41:22', NULL, NULL);
INSERT INTO `sys_log` VALUES (668, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:41:22', NULL, NULL);
INSERT INTO `sys_log` VALUES (669, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:41:22', NULL, NULL);
INSERT INTO `sys_log` VALUES (670, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":2,\"pageSize\":10}', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:41:22', NULL, NULL);
INSERT INTO `sys_log` VALUES (671, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:42:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (672, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:42:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (673, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:42:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (674, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:42:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (675, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:42:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (676, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:42:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (677, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":2,\"pageSize\":10}', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:42:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (678, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:42:05', NULL, NULL);
INSERT INTO `sys_log` VALUES (679, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":2,\"pageSize\":10}', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:42:06', NULL, NULL);
INSERT INTO `sys_log` VALUES (680, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:42:07', NULL, NULL);
INSERT INTO `sys_log` VALUES (681, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":2,\"pageSize\":10}', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:42:09', NULL, NULL);
INSERT INTO `sys_log` VALUES (682, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:42:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (683, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":2,\"pageSize\":10}', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:42:11', NULL, NULL);
INSERT INTO `sys_log` VALUES (684, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:42:12', NULL, NULL);
INSERT INTO `sys_log` VALUES (685, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:42:28', NULL, NULL);
INSERT INTO `sys_log` VALUES (686, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:42:28', NULL, NULL);
INSERT INTO `sys_log` VALUES (687, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:42:28', NULL, NULL);
INSERT INTO `sys_log` VALUES (688, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:42:28', NULL, NULL);
INSERT INTO `sys_log` VALUES (689, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:42:28', NULL, NULL);
INSERT INTO `sys_log` VALUES (690, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:42:28', NULL, NULL);
INSERT INTO `sys_log` VALUES (691, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:42:28', NULL, NULL);
INSERT INTO `sys_log` VALUES (692, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:42:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (693, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:42:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (694, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:42:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (695, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:42:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (696, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:42:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (697, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:42:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (698, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:42:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (699, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":2,\"pageSize\":10}', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:43:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (700, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:43:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (701, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":2,\"pageSize\":10}', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:43:05', NULL, NULL);
INSERT INTO `sys_log` VALUES (702, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:43:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (703, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:43:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (704, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:43:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (705, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:43:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (706, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:43:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (707, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:43:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (708, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:43:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (709, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:45:21', NULL, NULL);
INSERT INTO `sys_log` VALUES (710, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:45:21', NULL, NULL);
INSERT INTO `sys_log` VALUES (711, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:45:21', NULL, NULL);
INSERT INTO `sys_log` VALUES (712, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:45:21', NULL, NULL);
INSERT INTO `sys_log` VALUES (713, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:45:21', NULL, NULL);
INSERT INTO `sys_log` VALUES (714, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:45:21', NULL, NULL);
INSERT INTO `sys_log` VALUES (715, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:45:22', NULL, NULL);
INSERT INTO `sys_log` VALUES (716, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:46:16', NULL, NULL);
INSERT INTO `sys_log` VALUES (717, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:46:16', NULL, NULL);
INSERT INTO `sys_log` VALUES (718, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:46:16', NULL, NULL);
INSERT INTO `sys_log` VALUES (719, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:46:16', NULL, NULL);
INSERT INTO `sys_log` VALUES (720, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:46:16', NULL, NULL);
INSERT INTO `sys_log` VALUES (721, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:46:16', NULL, NULL);
INSERT INTO `sys_log` VALUES (722, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:46:17', NULL, NULL);
INSERT INTO `sys_log` VALUES (723, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:48:41', NULL, NULL);
INSERT INTO `sys_log` VALUES (724, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:48:41', NULL, NULL);
INSERT INTO `sys_log` VALUES (725, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:48:41', NULL, NULL);
INSERT INTO `sys_log` VALUES (726, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:48:41', NULL, NULL);
INSERT INTO `sys_log` VALUES (727, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:48:41', NULL, NULL);
INSERT INTO `sys_log` VALUES (728, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:48:41', NULL, NULL);
INSERT INTO `sys_log` VALUES (729, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:48:42', NULL, NULL);
INSERT INTO `sys_log` VALUES (730, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:52:20', NULL, NULL);
INSERT INTO `sys_log` VALUES (731, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:52:20', NULL, NULL);
INSERT INTO `sys_log` VALUES (732, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:52:20', NULL, NULL);
INSERT INTO `sys_log` VALUES (733, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:52:20', NULL, NULL);
INSERT INTO `sys_log` VALUES (734, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:52:20', NULL, NULL);
INSERT INTO `sys_log` VALUES (735, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:52:20', NULL, NULL);
INSERT INTO `sys_log` VALUES (736, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:52:20', NULL, NULL);
INSERT INTO `sys_log` VALUES (737, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:56:32', NULL, NULL);
INSERT INTO `sys_log` VALUES (738, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:56:32', NULL, NULL);
INSERT INTO `sys_log` VALUES (739, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:56:32', NULL, NULL);
INSERT INTO `sys_log` VALUES (740, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:56:32', NULL, NULL);
INSERT INTO `sys_log` VALUES (741, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:56:32', NULL, NULL);
INSERT INTO `sys_log` VALUES (742, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:56:32', NULL, NULL);
INSERT INTO `sys_log` VALUES (743, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:56:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (744, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:57:12', NULL, NULL);
INSERT INTO `sys_log` VALUES (745, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:57:12', NULL, NULL);
INSERT INTO `sys_log` VALUES (746, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:57:12', NULL, NULL);
INSERT INTO `sys_log` VALUES (747, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:57:12', NULL, NULL);
INSERT INTO `sys_log` VALUES (748, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:57:12', NULL, NULL);
INSERT INTO `sys_log` VALUES (749, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:57:12', NULL, NULL);
INSERT INTO `sys_log` VALUES (750, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:57:12', NULL, NULL);
INSERT INTO `sys_log` VALUES (751, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.save()', '{\"contact\":\"110\",\"content\":\"\",\"duration\":1,\"fileList\":\"[]\",\"id\":19,\"lastUpdateBy\":\"admin\",\"lastUpdateTime\":1592049525247,\"location\":\"lab\",\"name\":\"partPage1\",\"note\":\"\",\"payment\":\"{\\\\\'paymentMin\\\\\':\\\\\'1...', 36, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:58:45', NULL, NULL);
INSERT INTO `sys_log` VALUES (752, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:58:45', NULL, NULL);
INSERT INTO `sys_log` VALUES (753, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.save()', '{\"contact\":\"110\",\"content\":\"\",\"duration\":1,\"fileList\":\"[]\",\"id\":19,\"lastUpdateBy\":\"admin\",\"lastUpdateTime\":1592049543905,\"location\":\"lab\",\"name\":\"partPage1\",\"note\":\"\",\"payment\":\"{\\\\\'paymentMin\\\\\':\\\\\'1...', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:59:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (754, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:59:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (755, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":2,\"pageSize\":10}', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:59:11', NULL, NULL);
INSERT INTO `sys_log` VALUES (756, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:59:12', NULL, NULL);
INSERT INTO `sys_log` VALUES (757, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:59:53', NULL, NULL);
INSERT INTO `sys_log` VALUES (758, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:59:53', NULL, NULL);
INSERT INTO `sys_log` VALUES (759, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:59:53', NULL, NULL);
INSERT INTO `sys_log` VALUES (760, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:59:53', NULL, NULL);
INSERT INTO `sys_log` VALUES (761, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:59:53', NULL, NULL);
INSERT INTO `sys_log` VALUES (762, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:59:53', NULL, NULL);
INSERT INTO `sys_log` VALUES (763, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 19:59:53', NULL, NULL);
INSERT INTO `sys_log` VALUES (764, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysDeptServiceImpl.findTree()', NULL, 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 20:02:08', NULL, NULL);
INSERT INTO `sys_log` VALUES (765, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 51, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 20:02:08', NULL, NULL);
INSERT INTO `sys_log` VALUES (766, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findAll()', NULL, 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 20:02:08', NULL, NULL);
INSERT INTO `sys_log` VALUES (767, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 20:09:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (768, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysDeptServiceImpl.findTree()', NULL, 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (769, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 28, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (770, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 5, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (771, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 10, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (772, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 6, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (773, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysDeptServiceImpl.findTree()', NULL, 4, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (774, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 13, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (775, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysDeptServiceImpl.findTree()', NULL, 1, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (776, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 26, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (777, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 1, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (778, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (779, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (780, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (781, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 20:43:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (782, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 20:43:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (783, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 20:43:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (784, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysDeptServiceImpl.findTree()', NULL, 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 20:43:59', NULL, NULL);
INSERT INTO `sys_log` VALUES (785, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 26, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 20:43:59', NULL, NULL);
INSERT INTO `sys_log` VALUES (786, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findAll()', NULL, 0, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 20:44:00', NULL, NULL);
INSERT INTO `sys_log` VALUES (787, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 20:44:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (788, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findAll()', NULL, 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 20:44:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (789, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 207, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (790, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (791, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 48, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (792, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 54, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (793, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 72, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:02:18', NULL, NULL);
INSERT INTO `sys_log` VALUES (794, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 46, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:02:18', NULL, NULL);
INSERT INTO `sys_log` VALUES (795, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 56, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:02:18', NULL, NULL);
INSERT INTO `sys_log` VALUES (796, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"status\":{\"name\":\"status\",\"value\":\"2\"}},\"pageNum\":1,\"pageSize\":10}', 155, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:02:23', NULL, NULL);
INSERT INTO `sys_log` VALUES (797, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '9', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:02:23', NULL, NULL);
INSERT INTO `sys_log` VALUES (798, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '10', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:02:23', NULL, NULL);
INSERT INTO `sys_log` VALUES (799, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '11', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:02:23', NULL, NULL);
INSERT INTO `sys_log` VALUES (800, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '12', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:02:23', NULL, NULL);
INSERT INTO `sys_log` VALUES (801, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '13', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:02:23', NULL, NULL);
INSERT INTO `sys_log` VALUES (802, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '14', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:02:24', NULL, NULL);
INSERT INTO `sys_log` VALUES (803, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '15', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:02:24', NULL, NULL);
INSERT INTO `sys_log` VALUES (804, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '16', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:02:24', NULL, NULL);
INSERT INTO `sys_log` VALUES (805, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '17', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:02:24', NULL, NULL);
INSERT INTO `sys_log` VALUES (806, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '19', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:02:24', NULL, NULL);
INSERT INTO `sys_log` VALUES (807, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 26, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:02:25', NULL, NULL);
INSERT INTO `sys_log` VALUES (808, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":2,\"pageSize\":10}', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:02:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (809, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 14, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:02:30', NULL, NULL);
INSERT INTO `sys_log` VALUES (810, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"exp7\"}},\"pageNum\":1,\"pageSize\":10}', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:02:40', NULL, NULL);
INSERT INTO `sys_log` VALUES (811, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 190, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (812, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (813, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 44, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (814, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 48, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (815, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 21, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:37:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (816, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:37:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (817, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 24, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:37:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (818, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 237, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:37:59', NULL, NULL);
INSERT INTO `sys_log` VALUES (819, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":2,\"pageSize\":10}', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (820, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 14, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (821, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"exp7\"}},\"pageNum\":1,\"pageSize\":10}', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:05', NULL, NULL);
INSERT INTO `sys_log` VALUES (822, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 14, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (823, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"exp10\"}},\"pageNum\":1,\"pageSize\":10}', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:18', NULL, NULL);
INSERT INTO `sys_log` VALUES (824, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"status\":{\"name\":\"status\",\"value\":\"2\"}},\"pageNum\":1,\"pageSize\":10}', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:23', NULL, NULL);
INSERT INTO `sys_log` VALUES (825, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '9', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:23', NULL, NULL);
INSERT INTO `sys_log` VALUES (826, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '10', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:23', NULL, NULL);
INSERT INTO `sys_log` VALUES (827, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '11', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:23', NULL, NULL);
INSERT INTO `sys_log` VALUES (828, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '12', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:23', NULL, NULL);
INSERT INTO `sys_log` VALUES (829, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '13', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:23', NULL, NULL);
INSERT INTO `sys_log` VALUES (830, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '14', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:23', NULL, NULL);
INSERT INTO `sys_log` VALUES (831, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '15', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:23', NULL, NULL);
INSERT INTO `sys_log` VALUES (832, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '16', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:23', NULL, NULL);
INSERT INTO `sys_log` VALUES (833, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '17', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:23', NULL, NULL);
INSERT INTO `sys_log` VALUES (834, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '19', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:23', NULL, NULL);
INSERT INTO `sys_log` VALUES (835, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"status\":{\"name\":\"status\",\"value\":\"2\"}},\"pageNum\":1,\"pageSize\":10}', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (836, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '9', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (837, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '10', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (838, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '11', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (839, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '12', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (840, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '13', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (841, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '14', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (842, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '15', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (843, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '16', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (844, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '17', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (845, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '19', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (846, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"status\":{\"name\":\"status\",\"value\":\"2\"}},\"pageNum\":1,\"pageSize\":10}', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:53', NULL, NULL);
INSERT INTO `sys_log` VALUES (847, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '9', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:53', NULL, NULL);
INSERT INTO `sys_log` VALUES (848, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '10', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (849, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '11', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (850, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '12', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (851, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '13', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (852, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '14', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (853, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '15', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (854, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '16', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (855, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '17', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (856, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '19', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-13 21:38:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (857, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 296, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (858, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (859, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 93, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (860, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 98, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (861, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 74, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:50:49', NULL, NULL);
INSERT INTO `sys_log` VALUES (862, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:50:49', NULL, NULL);
INSERT INTO `sys_log` VALUES (863, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 23, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:50:49', NULL, NULL);
INSERT INTO `sys_log` VALUES (864, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 21, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:51:05', NULL, NULL);
INSERT INTO `sys_log` VALUES (865, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"status\":{\"name\":\"status\",\"value\":\"2\"}},\"pageNum\":1,\"pageSize\":10}', 234, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:52:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (866, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '9', 49, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:52:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (867, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '10', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:52:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (868, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '11', 14, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:52:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (869, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '12', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:52:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (870, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '13', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:52:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (871, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '14', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:52:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (872, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '15', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:52:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (873, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '16', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:52:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (874, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '17', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:52:30', NULL, NULL);
INSERT INTO `sys_log` VALUES (875, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '19', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:52:30', NULL, NULL);
INSERT INTO `sys_log` VALUES (876, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 85, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:52:35', NULL, NULL);
INSERT INTO `sys_log` VALUES (877, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":2,\"pageSize\":10}', 16, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:52:44', NULL, NULL);
INSERT INTO `sys_log` VALUES (878, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:52:45', NULL, NULL);
INSERT INTO `sys_log` VALUES (879, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":2,\"pageSize\":10}', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:52:47', NULL, NULL);
INSERT INTO `sys_log` VALUES (880, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 12, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:52:48', NULL, NULL);
INSERT INTO `sys_log` VALUES (881, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 14, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:56:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (882, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:56:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (883, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:56:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (884, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:56:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (885, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:56:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (886, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:56:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (887, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 20, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:56:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (888, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:56:42', NULL, NULL);
INSERT INTO `sys_log` VALUES (889, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:56:42', NULL, NULL);
INSERT INTO `sys_log` VALUES (890, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:56:42', NULL, NULL);
INSERT INTO `sys_log` VALUES (891, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 19, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:56:42', NULL, NULL);
INSERT INTO `sys_log` VALUES (892, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:56:42', NULL, NULL);
INSERT INTO `sys_log` VALUES (893, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:56:42', NULL, NULL);
INSERT INTO `sys_log` VALUES (894, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 28, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:56:42', NULL, NULL);
INSERT INTO `sys_log` VALUES (895, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:58:45', NULL, NULL);
INSERT INTO `sys_log` VALUES (896, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:58:45', NULL, NULL);
INSERT INTO `sys_log` VALUES (897, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:58:45', NULL, NULL);
INSERT INTO `sys_log` VALUES (898, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:58:45', NULL, NULL);
INSERT INTO `sys_log` VALUES (899, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:58:45', NULL, NULL);
INSERT INTO `sys_log` VALUES (900, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:58:45', NULL, NULL);
INSERT INTO `sys_log` VALUES (901, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:58:45', NULL, NULL);
INSERT INTO `sys_log` VALUES (902, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:59:21', NULL, NULL);
INSERT INTO `sys_log` VALUES (903, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:59:21', NULL, NULL);
INSERT INTO `sys_log` VALUES (904, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:59:21', NULL, NULL);
INSERT INTO `sys_log` VALUES (905, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:59:21', NULL, NULL);
INSERT INTO `sys_log` VALUES (906, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:59:21', NULL, NULL);
INSERT INTO `sys_log` VALUES (907, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:59:21', NULL, NULL);
INSERT INTO `sys_log` VALUES (908, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 17:59:21', NULL, NULL);
INSERT INTO `sys_log` VALUES (909, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:02:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (910, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:02:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (911, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:02:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (912, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:02:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (913, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:02:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (914, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:02:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (915, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:02:30', NULL, NULL);
INSERT INTO `sys_log` VALUES (916, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:03:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (917, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:03:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (918, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:03:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (919, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:03:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (920, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:03:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (921, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:03:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (922, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 16, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:03:35', NULL, NULL);
INSERT INTO `sys_log` VALUES (923, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:13:00', NULL, NULL);
INSERT INTO `sys_log` VALUES (924, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:13:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (925, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:13:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (926, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:13:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (927, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:13:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (928, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 16, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:13:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (929, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 58, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:13:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (930, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:14:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (931, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:14:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (932, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 20, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:14:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (933, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 23, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:14:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (934, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:14:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (935, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:14:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (936, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:14:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (937, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.save()', '{\"contact\":\"110\",\"content\":\"conetententoet\",\"duration\":7,\"fileList\":\"[]\",\"id\":9,\"lastUpdateBy\":\"admin\",\"lastUpdateTime\":1592302572240,\"location\":\"630\",\"name\":\"exp7\",\"note\":\"nontentoente\",\"payment\":\"{\\...', 92, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:16:12', NULL, NULL);
INSERT INTO `sys_log` VALUES (938, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 14, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:16:12', NULL, NULL);
INSERT INTO `sys_log` VALUES (939, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:18:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (940, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:18:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (941, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:18:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (942, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:18:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (943, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:18:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (944, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:18:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (945, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:18:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (946, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:19:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (947, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:19:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (948, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 28, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:19:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (949, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 31, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:19:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (950, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:19:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (951, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:19:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (952, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 14, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:19:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (953, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:19:48', NULL, NULL);
INSERT INTO `sys_log` VALUES (954, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:19:48', NULL, NULL);
INSERT INTO `sys_log` VALUES (955, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:19:48', NULL, NULL);
INSERT INTO `sys_log` VALUES (956, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:19:48', NULL, NULL);
INSERT INTO `sys_log` VALUES (957, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:19:48', NULL, NULL);
INSERT INTO `sys_log` VALUES (958, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:19:48', NULL, NULL);
INSERT INTO `sys_log` VALUES (959, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 24, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:19:48', NULL, NULL);
INSERT INTO `sys_log` VALUES (960, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:20:32', NULL, NULL);
INSERT INTO `sys_log` VALUES (961, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:20:32', NULL, NULL);
INSERT INTO `sys_log` VALUES (962, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:20:32', NULL, NULL);
INSERT INTO `sys_log` VALUES (963, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:20:32', NULL, NULL);
INSERT INTO `sys_log` VALUES (964, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:20:32', NULL, NULL);
INSERT INTO `sys_log` VALUES (965, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:20:32', NULL, NULL);
INSERT INTO `sys_log` VALUES (966, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:20:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (967, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:20:49', NULL, NULL);
INSERT INTO `sys_log` VALUES (968, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:20:50', NULL, NULL);
INSERT INTO `sys_log` VALUES (969, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:20:50', NULL, NULL);
INSERT INTO `sys_log` VALUES (970, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:20:50', NULL, NULL);
INSERT INTO `sys_log` VALUES (971, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:20:50', NULL, NULL);
INSERT INTO `sys_log` VALUES (972, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:20:50', NULL, NULL);
INSERT INTO `sys_log` VALUES (973, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:20:50', NULL, NULL);
INSERT INTO `sys_log` VALUES (974, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 84, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (975, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysDeptServiceImpl.findTree()', NULL, 31, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (976, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 57, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (977, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (978, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 1, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (979, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (980, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (981, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysDeptServiceImpl.findTree()', NULL, 2, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (982, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 46, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (983, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 2, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (984, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (985, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 2, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (986, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 1, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (987, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (988, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 1, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (989, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (990, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:23:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (991, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:23:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (992, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:23:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (993, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:23:12', NULL, NULL);
INSERT INTO `sys_log` VALUES (994, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:23:39', NULL, NULL);
INSERT INTO `sys_log` VALUES (995, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:23:39', NULL, NULL);
INSERT INTO `sys_log` VALUES (996, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:23:39', NULL, NULL);
INSERT INTO `sys_log` VALUES (997, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:23:39', NULL, NULL);
INSERT INTO `sys_log` VALUES (998, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:23:39', NULL, NULL);
INSERT INTO `sys_log` VALUES (999, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:23:39', NULL, NULL);
INSERT INTO `sys_log` VALUES (1000, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:23:40', NULL, NULL);
INSERT INTO `sys_log` VALUES (1001, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:24:32', NULL, NULL);
INSERT INTO `sys_log` VALUES (1002, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:24:32', NULL, NULL);
INSERT INTO `sys_log` VALUES (1003, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 21, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:24:32', NULL, NULL);
INSERT INTO `sys_log` VALUES (1004, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 25, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:24:32', NULL, NULL);
INSERT INTO `sys_log` VALUES (1005, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:24:32', NULL, NULL);
INSERT INTO `sys_log` VALUES (1006, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:24:32', NULL, NULL);
INSERT INTO `sys_log` VALUES (1007, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 17, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:24:32', NULL, NULL);
INSERT INTO `sys_log` VALUES (1008, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:43:40', NULL, NULL);
INSERT INTO `sys_log` VALUES (1009, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:43:40', NULL, NULL);
INSERT INTO `sys_log` VALUES (1010, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:43:40', NULL, NULL);
INSERT INTO `sys_log` VALUES (1011, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:43:40', NULL, NULL);
INSERT INTO `sys_log` VALUES (1012, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:43:40', NULL, NULL);
INSERT INTO `sys_log` VALUES (1013, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:43:40', NULL, NULL);
INSERT INTO `sys_log` VALUES (1014, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 18, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:43:41', NULL, NULL);
INSERT INTO `sys_log` VALUES (1015, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:43:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (1016, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:43:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (1017, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:43:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (1018, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:43:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (1019, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:43:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (1020, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:43:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (1021, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:43:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (1022, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"status\":{\"name\":\"status\",\"value\":\"2\"}},\"pageNum\":1,\"pageSize\":10}', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:44:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (1023, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '9', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:44:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (1024, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '10', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:44:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (1025, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '11', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:44:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (1026, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '12', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:44:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (1027, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '13', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:44:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (1028, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '14', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:44:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (1029, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '15', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:44:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (1030, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '16', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:44:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (1031, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '17', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:44:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (1032, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '19', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:44:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (1033, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:44:28', NULL, NULL);
INSERT INTO `sys_log` VALUES (1034, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:45:55', NULL, NULL);
INSERT INTO `sys_log` VALUES (1035, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.save()', '{\"createBy\":\"admin\",\"createTime\":1592304398651,\"icon\":\"\",\"id\":0,\"name\":\"查看报名情况\",\"orderNum\":0,\"parentId\":48,\"parentName\":\"实验管理\",\"perms\":\"fun:subject:viewpeo\",\"type\":2,\"url\":\"\"}', 31, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:46:39', NULL, NULL);
INSERT INTO `sys_log` VALUES (1036, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:46:39', NULL, NULL);
INSERT INTO `sys_log` VALUES (1037, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:47:43', NULL, NULL);
INSERT INTO `sys_log` VALUES (1038, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:47:43', NULL, NULL);
INSERT INTO `sys_log` VALUES (1039, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:47:43', NULL, NULL);
INSERT INTO `sys_log` VALUES (1040, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:47:43', NULL, NULL);
INSERT INTO `sys_log` VALUES (1041, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:47:43', NULL, NULL);
INSERT INTO `sys_log` VALUES (1042, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:47:43', NULL, NULL);
INSERT INTO `sys_log` VALUES (1043, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:47:43', NULL, NULL);
INSERT INTO `sys_log` VALUES (1044, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:49:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (1045, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:49:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (1046, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 20, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:49:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (1047, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 22, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:49:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (1048, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:49:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (1049, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:49:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (1050, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:49:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (1051, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 16, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:49:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (1052, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:50:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1053, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:50:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1054, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:50:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1055, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:50:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1056, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:50:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1057, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:50:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1058, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:50:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1059, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:50:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (1060, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:50:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (1061, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:50:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (1062, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:50:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (1063, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:50:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (1064, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:50:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (1065, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:50:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (1066, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:51:31', NULL, NULL);
INSERT INTO `sys_log` VALUES (1067, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:51:31', NULL, NULL);
INSERT INTO `sys_log` VALUES (1068, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:51:31', NULL, NULL);
INSERT INTO `sys_log` VALUES (1069, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:51:31', NULL, NULL);
INSERT INTO `sys_log` VALUES (1070, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:51:31', NULL, NULL);
INSERT INTO `sys_log` VALUES (1071, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:51:31', NULL, NULL);
INSERT INTO `sys_log` VALUES (1072, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 16, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 18:51:31', NULL, NULL);
INSERT INTO `sys_log` VALUES (1073, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 174, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1074, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1075, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 35, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1076, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 39, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1077, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 26, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 22:50:27', NULL, NULL);
INSERT INTO `sys_log` VALUES (1078, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 16, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 22:50:27', NULL, NULL);
INSERT INTO `sys_log` VALUES (1079, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 26, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 22:50:27', NULL, NULL);
INSERT INTO `sys_log` VALUES (1080, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 253, '0:0:0:0:0:0:0:1', 'admin', '2020-06-16 22:50:30', NULL, NULL);
INSERT INTO `sys_log` VALUES (1081, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 218, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1082, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1083, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 60, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1084, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 63, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1085, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 27, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:14:44', NULL, NULL);
INSERT INTO `sys_log` VALUES (1086, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:14:44', NULL, NULL);
INSERT INTO `sys_log` VALUES (1087, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 19, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:14:44', NULL, NULL);
INSERT INTO `sys_log` VALUES (1088, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 180, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:14:47', NULL, NULL);
INSERT INTO `sys_log` VALUES (1089, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 17, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:17:32', NULL, NULL);
INSERT INTO `sys_log` VALUES (1090, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:17:32', NULL, NULL);
INSERT INTO `sys_log` VALUES (1091, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 95, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:17:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (1092, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 108, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:17:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (1093, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 14, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:17:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (1094, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 82, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:17:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (1095, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 32, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:17:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (1096, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:19:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (1097, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:19:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (1098, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 17, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:19:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (1099, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 26, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:19:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (1100, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:19:16', NULL, NULL);
INSERT INTO `sys_log` VALUES (1101, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 17, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:19:16', NULL, NULL);
INSERT INTO `sys_log` VALUES (1102, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 31, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:19:16', NULL, NULL);
INSERT INTO `sys_log` VALUES (1103, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:23:05', NULL, NULL);
INSERT INTO `sys_log` VALUES (1104, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:23:05', NULL, NULL);
INSERT INTO `sys_log` VALUES (1105, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:23:05', NULL, NULL);
INSERT INTO `sys_log` VALUES (1106, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:23:05', NULL, NULL);
INSERT INTO `sys_log` VALUES (1107, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:23:05', NULL, NULL);
INSERT INTO `sys_log` VALUES (1108, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:23:05', NULL, NULL);
INSERT INTO `sys_log` VALUES (1109, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 17, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:23:05', NULL, NULL);
INSERT INTO `sys_log` VALUES (1110, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:25:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (1111, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:25:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (1112, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 12, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:25:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (1113, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 14, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:25:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (1114, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:25:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (1115, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:25:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (1116, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 26, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:25:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (1117, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 265, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1118, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1119, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 51, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1120, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 55, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1121, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 24, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:27:55', NULL, NULL);
INSERT INTO `sys_log` VALUES (1122, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 57, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:27:55', NULL, NULL);
INSERT INTO `sys_log` VALUES (1123, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 68, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:27:55', NULL, NULL);
INSERT INTO `sys_log` VALUES (1124, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 162, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:27:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (1125, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 16, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:36:25', NULL, NULL);
INSERT INTO `sys_log` VALUES (1126, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:36:25', NULL, NULL);
INSERT INTO `sys_log` VALUES (1127, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 28, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:36:25', NULL, NULL);
INSERT INTO `sys_log` VALUES (1128, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 53, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:36:25', NULL, NULL);
INSERT INTO `sys_log` VALUES (1129, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 26, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:36:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1130, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:36:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1131, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 18, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:36:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1132, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 213, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1133, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 18, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1134, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 34, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1135, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 99, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1136, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1137, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 11, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1138, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 16, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1139, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:46:00', NULL, NULL);
INSERT INTO `sys_log` VALUES (1140, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:46:00', NULL, NULL);
INSERT INTO `sys_log` VALUES (1141, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 22, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:46:00', NULL, NULL);
INSERT INTO `sys_log` VALUES (1142, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 245, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:46:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (1143, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 16, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:51:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (1144, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:51:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (1145, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:51:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (1146, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:51:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (1147, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:51:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (1148, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:51:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (1149, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 21, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 13:51:20', NULL, NULL);
INSERT INTO `sys_log` VALUES (1150, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 161, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1151, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 271, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1152, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 19, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1153, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1154, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1155, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 17, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1156, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 25, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 14:05:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (1157, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 18, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 14:05:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (1158, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 31, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 14:05:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (1159, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 25, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 14:05:23', NULL, NULL);
INSERT INTO `sys_log` VALUES (1160, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 272, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1161, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1162, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 49, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1163, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 53, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1164, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 50, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 14:37:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (1165, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 14:37:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (1166, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 21, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 14:37:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (1167, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 286, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 14:38:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (1168, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 16, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 14:49:37', NULL, NULL);
INSERT INTO `sys_log` VALUES (1169, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 12, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 14:49:37', NULL, NULL);
INSERT INTO `sys_log` VALUES (1170, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 14:49:37', NULL, NULL);
INSERT INTO `sys_log` VALUES (1171, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 20, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 14:49:37', NULL, NULL);
INSERT INTO `sys_log` VALUES (1172, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 14:49:37', NULL, NULL);
INSERT INTO `sys_log` VALUES (1173, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 14:49:37', NULL, NULL);
INSERT INTO `sys_log` VALUES (1174, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 30, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 14:49:37', NULL, NULL);
INSERT INTO `sys_log` VALUES (1175, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 125, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 14:49:41', NULL, NULL);
INSERT INTO `sys_log` VALUES (1176, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:12:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (1177, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:12:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (1178, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 16, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:12:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (1179, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 19, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:12:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (1180, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 14, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:12:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (1181, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 20, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:12:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (1182, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 24, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:12:55', NULL, NULL);
INSERT INTO `sys_log` VALUES (1183, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:12:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (1184, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 252, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1185, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1186, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 48, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1187, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 53, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1188, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 17, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:14:51', NULL, NULL);
INSERT INTO `sys_log` VALUES (1189, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 26, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:14:52', NULL, NULL);
INSERT INTO `sys_log` VALUES (1190, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 34, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:14:52', NULL, NULL);
INSERT INTO `sys_log` VALUES (1191, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 242, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:16:50', NULL, NULL);
INSERT INTO `sys_log` VALUES (1192, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 26, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:16:51', NULL, NULL);
INSERT INTO `sys_log` VALUES (1193, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 210, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1194, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1195, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 38, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1196, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 45, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1197, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:32:24', NULL, NULL);
INSERT INTO `sys_log` VALUES (1198, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:32:25', NULL, NULL);
INSERT INTO `sys_log` VALUES (1199, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 26, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:32:25', NULL, NULL);
INSERT INTO `sys_log` VALUES (1200, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"status\":{\"name\":\"status\",\"value\":\"2\"}},\"pageNum\":1,\"pageSize\":10}', 140, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:32:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1201, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '9', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:32:27', NULL, NULL);
INSERT INTO `sys_log` VALUES (1202, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '10', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:32:27', NULL, NULL);
INSERT INTO `sys_log` VALUES (1203, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '11', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:32:27', NULL, NULL);
INSERT INTO `sys_log` VALUES (1204, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '12', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:32:27', NULL, NULL);
INSERT INTO `sys_log` VALUES (1205, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '13', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:32:27', NULL, NULL);
INSERT INTO `sys_log` VALUES (1206, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '14', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:32:27', NULL, NULL);
INSERT INTO `sys_log` VALUES (1207, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '15', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:32:27', NULL, NULL);
INSERT INTO `sys_log` VALUES (1208, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '16', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:32:27', NULL, NULL);
INSERT INTO `sys_log` VALUES (1209, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '17', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:32:27', NULL, NULL);
INSERT INTO `sys_log` VALUES (1210, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '19', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:32:28', NULL, NULL);
INSERT INTO `sys_log` VALUES (1211, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 53, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:32:28', NULL, NULL);
INSERT INTO `sys_log` VALUES (1212, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 240, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1213, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1214, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 58, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1215, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 65, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1216, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 17, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:35:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (1217, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 20, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:35:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (1218, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 31, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:35:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (1219, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 202, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:35:59', NULL, NULL);
INSERT INTO `sys_log` VALUES (1220, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 66, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:36:06', NULL, NULL);
INSERT INTO `sys_log` VALUES (1221, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 246, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1222, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1223, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 87, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1224, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 94, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1225, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 23, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:42:55', NULL, NULL);
INSERT INTO `sys_log` VALUES (1226, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 12, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:42:55', NULL, NULL);
INSERT INTO `sys_log` VALUES (1227, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 20, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:42:55', NULL, NULL);
INSERT INTO `sys_log` VALUES (1228, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 192, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:42:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (1229, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 260, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1230, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1231, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 44, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1232, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 49, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1233, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 17, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:44:42', NULL, NULL);
INSERT INTO `sys_log` VALUES (1234, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 31, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:44:43', NULL, NULL);
INSERT INTO `sys_log` VALUES (1235, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 39, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:44:43', NULL, NULL);
INSERT INTO `sys_log` VALUES (1236, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 261, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:44:47', NULL, NULL);
INSERT INTO `sys_log` VALUES (1237, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 241, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1238, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1239, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 57, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1240, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 64, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1241, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 19, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:52:07', NULL, NULL);
INSERT INTO `sys_log` VALUES (1242, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:52:07', NULL, NULL);
INSERT INTO `sys_log` VALUES (1243, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 17, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:52:07', NULL, NULL);
INSERT INTO `sys_log` VALUES (1244, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 210, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:52:12', NULL, NULL);
INSERT INTO `sys_log` VALUES (1245, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 27, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 15:52:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (1246, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 218, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1247, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1248, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 42, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1249, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 49, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1250, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 18, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 16:01:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (1251, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 16, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 16:01:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (1252, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 34, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 16:01:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (1253, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 157, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 16:01:16', NULL, NULL);
INSERT INTO `sys_log` VALUES (1254, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 26, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 16:01:22', NULL, NULL);
INSERT INTO `sys_log` VALUES (1255, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 285, '127.0.0.1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1256, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 3, '127.0.0.1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1257, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 66, '127.0.0.1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1258, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 84, '127.0.0.1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1259, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 23, '127.0.0.1', 'admin', '2020-06-17 16:11:12', NULL, NULL);
INSERT INTO `sys_log` VALUES (1260, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 38, '127.0.0.1', 'admin', '2020-06-17 16:11:12', NULL, NULL);
INSERT INTO `sys_log` VALUES (1261, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 52, '127.0.0.1', 'admin', '2020-06-17 16:11:12', NULL, NULL);
INSERT INTO `sys_log` VALUES (1262, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 244, '127.0.0.1', 'admin', '2020-06-17 16:11:14', NULL, NULL);
INSERT INTO `sys_log` VALUES (1263, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 24, '127.0.0.1', 'admin', '2020-06-17 16:11:16', NULL, NULL);
INSERT INTO `sys_log` VALUES (1264, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 239, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1265, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1266, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 55, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1267, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 62, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1268, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 24, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 16:14:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (1269, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 16:14:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (1270, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 42, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 16:14:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (1271, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 196, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 16:14:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (1272, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 35, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 16:14:17', NULL, NULL);
INSERT INTO `sys_log` VALUES (1273, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 250, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1274, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1275, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 51, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1276, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 56, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1277, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 20, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 16:20:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (1278, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 16:20:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (1279, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 29, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 16:20:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (1280, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 280, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 16:20:21', NULL, NULL);
INSERT INTO `sys_log` VALUES (1281, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 20, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 16:20:28', NULL, NULL);
INSERT INTO `sys_log` VALUES (1282, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 14, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 16:21:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (1283, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 20, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 16:21:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (1284, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 14, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 16:21:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (1285, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 41, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 16:21:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (1286, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 17, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 16:21:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (1287, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 22, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 16:21:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (1288, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 29, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 16:21:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (1289, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 16:22:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (1290, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 225, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1291, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1292, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 44, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1293, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 48, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1294, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 33, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 16:31:09', NULL, NULL);
INSERT INTO `sys_log` VALUES (1295, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 16:31:09', NULL, NULL);
INSERT INTO `sys_log` VALUES (1296, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 30, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 16:31:09', NULL, NULL);
INSERT INTO `sys_log` VALUES (1297, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 196, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 16:31:11', NULL, NULL);
INSERT INTO `sys_log` VALUES (1298, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 30, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 16:31:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (1299, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 229, '127.0.0.1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1300, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 4, '127.0.0.1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1301, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 45, '127.0.0.1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1302, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 50, '127.0.0.1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1303, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 28, '127.0.0.1', 'admin', '2020-06-17 16:36:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (1304, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 14, '127.0.0.1', 'admin', '2020-06-17 16:36:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (1305, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 21, '127.0.0.1', 'admin', '2020-06-17 16:36:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (1306, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 235, '127.0.0.1', 'admin', '2020-06-17 16:37:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (1307, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 222, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1308, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1309, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 49, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1310, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 59, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1311, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 30, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 16:53:24', NULL, NULL);
INSERT INTO `sys_log` VALUES (1312, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 16:53:24', NULL, NULL);
INSERT INTO `sys_log` VALUES (1313, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 35, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 16:53:24', NULL, NULL);
INSERT INTO `sys_log` VALUES (1314, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 213, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 16:53:25', NULL, NULL);
INSERT INTO `sys_log` VALUES (1315, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 220, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1316, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1317, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 55, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1318, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 62, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1319, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 27, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 19:17:47', NULL, NULL);
INSERT INTO `sys_log` VALUES (1320, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 20, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 19:17:47', NULL, NULL);
INSERT INTO `sys_log` VALUES (1321, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 48, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 19:17:47', NULL, NULL);
INSERT INTO `sys_log` VALUES (1322, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 220, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 19:17:50', NULL, NULL);
INSERT INTO `sys_log` VALUES (1323, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 279, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1324, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1325, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 43, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1326, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 47, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1327, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 41, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 19:21:40', NULL, NULL);
INSERT INTO `sys_log` VALUES (1328, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 58, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 19:21:40', NULL, NULL);
INSERT INTO `sys_log` VALUES (1329, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 64, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 19:21:40', NULL, NULL);
INSERT INTO `sys_log` VALUES (1330, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 234, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 19:21:42', NULL, NULL);
INSERT INTO `sys_log` VALUES (1331, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 256, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1332, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1333, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 33, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1334, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 38, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1335, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 18, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 19:26:44', NULL, NULL);
INSERT INTO `sys_log` VALUES (1336, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 34, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 19:26:45', NULL, NULL);
INSERT INTO `sys_log` VALUES (1337, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 49, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 19:26:45', NULL, NULL);
INSERT INTO `sys_log` VALUES (1338, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 227, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 19:26:47', NULL, NULL);
INSERT INTO `sys_log` VALUES (1339, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 288, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1340, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1341, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 50, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1342, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 54, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1343, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 58, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 19:29:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (1344, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 37, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 19:29:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (1345, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 61, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 19:29:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (1346, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 211, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 19:29:38', NULL, NULL);
INSERT INTO `sys_log` VALUES (1347, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 234, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1348, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1349, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 47, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1350, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 53, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1351, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 17, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 19:32:11', NULL, NULL);
INSERT INTO `sys_log` VALUES (1352, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 19, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 19:32:11', NULL, NULL);
INSERT INTO `sys_log` VALUES (1353, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 28, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 19:32:11', NULL, NULL);
INSERT INTO `sys_log` VALUES (1354, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 247, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 19:32:14', NULL, NULL);
INSERT INTO `sys_log` VALUES (1355, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 223, '127.0.0.1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1356, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 4, '127.0.0.1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1357, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 45, '127.0.0.1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1358, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 49, '127.0.0.1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1359, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 20, '127.0.0.1', 'admin', '2020-06-17 19:41:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (1360, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 15, '127.0.0.1', 'admin', '2020-06-17 19:41:16', NULL, NULL);
INSERT INTO `sys_log` VALUES (1361, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 35, '127.0.0.1', 'admin', '2020-06-17 19:41:16', NULL, NULL);
INSERT INTO `sys_log` VALUES (1362, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 205, '127.0.0.1', 'admin', '2020-06-17 19:41:17', NULL, NULL);
INSERT INTO `sys_log` VALUES (1363, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 249, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1364, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1365, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 45, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1366, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 49, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1367, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 46, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 19:49:59', NULL, NULL);
INSERT INTO `sys_log` VALUES (1368, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 18, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 19:50:00', NULL, NULL);
INSERT INTO `sys_log` VALUES (1369, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 38, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 19:50:00', NULL, NULL);
INSERT INTO `sys_log` VALUES (1370, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 294, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 19:50:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (1371, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 37, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 19:50:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (1372, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 298, '127.0.0.1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1373, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 5, '127.0.0.1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1374, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 67, '127.0.0.1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1375, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 72, '127.0.0.1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1376, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 15, '127.0.0.1', 'admin', '2020-06-17 20:04:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (1377, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 13, '127.0.0.1', 'admin', '2020-06-17 20:04:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (1378, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 19, '127.0.0.1', 'admin', '2020-06-17 20:04:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (1379, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 296, '127.0.0.1', 'admin', '2020-06-17 20:04:05', NULL, NULL);
INSERT INTO `sys_log` VALUES (1380, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 44, '127.0.0.1', 'admin', '2020-06-17 20:04:06', NULL, NULL);
INSERT INTO `sys_log` VALUES (1381, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 237, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1382, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1383, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 40, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1384, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 48, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1385, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 16, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:21:32', NULL, NULL);
INSERT INTO `sys_log` VALUES (1386, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 38, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:21:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (1387, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 45, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:21:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (1388, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 195, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:21:34', NULL, NULL);
INSERT INTO `sys_log` VALUES (1389, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 23, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:21:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (1390, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 215, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1391, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1392, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 46, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1393, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 51, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1394, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 16, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:28:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (1395, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 30, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:28:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (1396, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 51, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:28:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (1397, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 233, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:28:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (1398, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 21, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:28:17', NULL, NULL);
INSERT INTO `sys_log` VALUES (1399, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:30:44', NULL, NULL);
INSERT INTO `sys_log` VALUES (1400, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:30:44', NULL, NULL);
INSERT INTO `sys_log` VALUES (1401, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:30:44', NULL, NULL);
INSERT INTO `sys_log` VALUES (1402, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:30:44', NULL, NULL);
INSERT INTO `sys_log` VALUES (1403, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:30:44', NULL, NULL);
INSERT INTO `sys_log` VALUES (1404, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 22, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:30:44', NULL, NULL);
INSERT INTO `sys_log` VALUES (1405, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 70, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:30:45', NULL, NULL);
INSERT INTO `sys_log` VALUES (1406, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:30:47', NULL, NULL);
INSERT INTO `sys_log` VALUES (1407, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 21, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:34:47', NULL, NULL);
INSERT INTO `sys_log` VALUES (1408, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:34:47', NULL, NULL);
INSERT INTO `sys_log` VALUES (1409, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 49, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:34:47', NULL, NULL);
INSERT INTO `sys_log` VALUES (1410, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 58, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:34:47', NULL, NULL);
INSERT INTO `sys_log` VALUES (1411, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:34:47', NULL, NULL);
INSERT INTO `sys_log` VALUES (1412, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 18, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:34:47', NULL, NULL);
INSERT INTO `sys_log` VALUES (1413, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 20, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:34:48', NULL, NULL);
INSERT INTO `sys_log` VALUES (1414, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"10\"}},\"pageNum\":1,\"pageSize\":10}', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:34:49', NULL, NULL);
INSERT INTO `sys_log` VALUES (1415, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 67, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:37:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (1416, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysDeptServiceImpl.findTree()', NULL, 33, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:37:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (1417, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findAll()', NULL, 16, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:37:14', NULL, NULL);
INSERT INTO `sys_log` VALUES (1418, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 17, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:37:24', NULL, NULL);
INSERT INTO `sys_log` VALUES (1419, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:37:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1420, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:39:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (1421, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:39:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (1422, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:39:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (1423, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:39:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (1424, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:39:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (1425, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:39:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (1426, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 16, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:39:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (1427, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:39:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (1428, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:43:35', NULL, NULL);
INSERT INTO `sys_log` VALUES (1429, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:43:35', NULL, NULL);
INSERT INTO `sys_log` VALUES (1430, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:43:35', NULL, NULL);
INSERT INTO `sys_log` VALUES (1431, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:43:35', NULL, NULL);
INSERT INTO `sys_log` VALUES (1432, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:43:35', NULL, NULL);
INSERT INTO `sys_log` VALUES (1433, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:43:35', NULL, NULL);
INSERT INTO `sys_log` VALUES (1434, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 12, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:43:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (1435, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"16\"}},\"pageNum\":1,\"pageSize\":10}', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:43:40', NULL, NULL);
INSERT INTO `sys_log` VALUES (1436, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 44, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:43:55', NULL, NULL);
INSERT INTO `sys_log` VALUES (1437, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysDeptServiceImpl.findTree()', NULL, 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:43:55', NULL, NULL);
INSERT INTO `sys_log` VALUES (1438, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findAll()', NULL, 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:43:55', NULL, NULL);
INSERT INTO `sys_log` VALUES (1439, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 12, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:45:20', NULL, NULL);
INSERT INTO `sys_log` VALUES (1440, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:45:22', NULL, NULL);
INSERT INTO `sys_log` VALUES (1441, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:51:00', NULL, NULL);
INSERT INTO `sys_log` VALUES (1442, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:51:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (1443, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:51:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (1444, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:51:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (1445, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:51:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (1446, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:51:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (1447, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 16, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:51:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (1448, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:51:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (1449, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:51:44', NULL, NULL);
INSERT INTO `sys_log` VALUES (1450, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:51:44', NULL, NULL);
INSERT INTO `sys_log` VALUES (1451, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:51:44', NULL, NULL);
INSERT INTO `sys_log` VALUES (1452, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:51:44', NULL, NULL);
INSERT INTO `sys_log` VALUES (1453, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:51:44', NULL, NULL);
INSERT INTO `sys_log` VALUES (1454, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:51:44', NULL, NULL);
INSERT INTO `sys_log` VALUES (1455, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:51:45', NULL, NULL);
INSERT INTO `sys_log` VALUES (1456, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:51:47', NULL, NULL);
INSERT INTO `sys_log` VALUES (1457, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:53:08', NULL, NULL);
INSERT INTO `sys_log` VALUES (1458, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:53:08', NULL, NULL);
INSERT INTO `sys_log` VALUES (1459, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:53:08', NULL, NULL);
INSERT INTO `sys_log` VALUES (1460, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:53:08', NULL, NULL);
INSERT INTO `sys_log` VALUES (1461, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:53:08', NULL, NULL);
INSERT INTO `sys_log` VALUES (1462, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:53:08', NULL, NULL);
INSERT INTO `sys_log` VALUES (1463, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 21, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:53:08', NULL, NULL);
INSERT INTO `sys_log` VALUES (1464, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:53:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (1465, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:54:11', NULL, NULL);
INSERT INTO `sys_log` VALUES (1466, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:54:11', NULL, NULL);
INSERT INTO `sys_log` VALUES (1467, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:54:11', NULL, NULL);
INSERT INTO `sys_log` VALUES (1468, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:54:11', NULL, NULL);
INSERT INTO `sys_log` VALUES (1469, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:54:11', NULL, NULL);
INSERT INTO `sys_log` VALUES (1470, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:54:11', NULL, NULL);
INSERT INTO `sys_log` VALUES (1471, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:54:12', NULL, NULL);
INSERT INTO `sys_log` VALUES (1472, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:54:14', NULL, NULL);
INSERT INTO `sys_log` VALUES (1473, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysDeptServiceImpl.findTree()', NULL, 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:54:41', NULL, NULL);
INSERT INTO `sys_log` VALUES (1474, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 31, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:54:41', NULL, NULL);
INSERT INTO `sys_log` VALUES (1475, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findAll()', NULL, 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:54:41', NULL, NULL);
INSERT INTO `sys_log` VALUES (1476, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysDeptServiceImpl.findTree()', NULL, 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:54:49', NULL, NULL);
INSERT INTO `sys_log` VALUES (1477, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysDeptServiceImpl.findTree()', NULL, 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:54:51', NULL, NULL);
INSERT INTO `sys_log` VALUES (1478, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 30, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:54:51', NULL, NULL);
INSERT INTO `sys_log` VALUES (1479, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findAll()', NULL, 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:54:51', NULL, NULL);
INSERT INTO `sys_log` VALUES (1480, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:55:23', NULL, NULL);
INSERT INTO `sys_log` VALUES (1481, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:55:23', NULL, NULL);
INSERT INTO `sys_log` VALUES (1482, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:55:23', NULL, NULL);
INSERT INTO `sys_log` VALUES (1483, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:55:23', NULL, NULL);
INSERT INTO `sys_log` VALUES (1484, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:55:23', NULL, NULL);
INSERT INTO `sys_log` VALUES (1485, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:55:23', NULL, NULL);
INSERT INTO `sys_log` VALUES (1486, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 30, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:55:24', NULL, NULL);
INSERT INTO `sys_log` VALUES (1487, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysDeptServiceImpl.findTree()', NULL, 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:55:24', NULL, NULL);
INSERT INTO `sys_log` VALUES (1488, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findAll()', NULL, 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:55:24', NULL, NULL);
INSERT INTO `sys_log` VALUES (1489, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysDeptServiceImpl.findTree()', NULL, 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:55:28', NULL, NULL);
INSERT INTO `sys_log` VALUES (1490, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysDeptServiceImpl.findTree()', NULL, 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:55:28', NULL, NULL);
INSERT INTO `sys_log` VALUES (1491, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 34, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:55:28', NULL, NULL);
INSERT INTO `sys_log` VALUES (1492, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findAll()', NULL, 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:55:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (1493, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:55:34', NULL, NULL);
INSERT INTO `sys_log` VALUES (1494, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:55:35', NULL, NULL);
INSERT INTO `sys_log` VALUES (1495, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:57:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (1496, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 36, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:57:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (1497, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:57:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (1498, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:57:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (1499, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:57:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (1500, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:57:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (1501, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:57:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (1502, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:57:05', NULL, NULL);
INSERT INTO `sys_log` VALUES (1503, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:57:45', NULL, NULL);
INSERT INTO `sys_log` VALUES (1504, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:57:45', NULL, NULL);
INSERT INTO `sys_log` VALUES (1505, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:57:45', NULL, NULL);
INSERT INTO `sys_log` VALUES (1506, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:57:45', NULL, NULL);
INSERT INTO `sys_log` VALUES (1507, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:57:45', NULL, NULL);
INSERT INTO `sys_log` VALUES (1508, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:57:45', NULL, NULL);
INSERT INTO `sys_log` VALUES (1509, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 19, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:57:45', NULL, NULL);
INSERT INTO `sys_log` VALUES (1510, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:57:46', NULL, NULL);
INSERT INTO `sys_log` VALUES (1511, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:59:50', NULL, NULL);
INSERT INTO `sys_log` VALUES (1512, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:59:50', NULL, NULL);
INSERT INTO `sys_log` VALUES (1513, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:59:50', NULL, NULL);
INSERT INTO `sys_log` VALUES (1514, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:59:50', NULL, NULL);
INSERT INTO `sys_log` VALUES (1515, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:59:50', NULL, NULL);
INSERT INTO `sys_log` VALUES (1516, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:59:50', NULL, NULL);
INSERT INTO `sys_log` VALUES (1517, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:59:50', NULL, NULL);
INSERT INTO `sys_log` VALUES (1518, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 20:59:52', NULL, NULL);
INSERT INTO `sys_log` VALUES (1519, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:00:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (1520, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:00:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (1521, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:00:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (1522, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 25, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:00:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (1523, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:00:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (1524, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:00:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (1525, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:00:30', NULL, NULL);
INSERT INTO `sys_log` VALUES (1526, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:00:31', NULL, NULL);
INSERT INTO `sys_log` VALUES (1527, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysDeptServiceImpl.findTree()', NULL, 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:01:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (1528, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 34, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:01:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (1529, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findAll()', NULL, 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:01:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (1530, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 6, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1531, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1532, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 6, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1533, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1534, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 1, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1535, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1536, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1537, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:03:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (1538, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:03:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (1539, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:03:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (1540, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:03:05', NULL, NULL);
INSERT INTO `sys_log` VALUES (1541, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:03:07', NULL, NULL);
INSERT INTO `sys_log` VALUES (1542, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:03:47', NULL, NULL);
INSERT INTO `sys_log` VALUES (1543, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:03:47', NULL, NULL);
INSERT INTO `sys_log` VALUES (1544, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:03:47', NULL, NULL);
INSERT INTO `sys_log` VALUES (1545, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:03:47', NULL, NULL);
INSERT INTO `sys_log` VALUES (1546, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:03:47', NULL, NULL);
INSERT INTO `sys_log` VALUES (1547, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:03:47', NULL, NULL);
INSERT INTO `sys_log` VALUES (1548, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:03:48', NULL, NULL);
INSERT INTO `sys_log` VALUES (1549, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:05:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1550, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:05:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1551, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:05:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1552, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:05:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1553, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:05:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1554, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:05:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1555, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:05:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1556, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 245, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1557, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1558, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 37, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1559, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 42, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1560, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 30, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:19:25', NULL, NULL);
INSERT INTO `sys_log` VALUES (1561, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:19:25', NULL, NULL);
INSERT INTO `sys_log` VALUES (1562, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 24, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:19:25', NULL, NULL);
INSERT INTO `sys_log` VALUES (1563, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 173, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:19:27', NULL, NULL);
INSERT INTO `sys_log` VALUES (1564, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 44, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:19:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (1565, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 24, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:41:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (1566, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:41:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (1567, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 22, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:41:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (1568, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 75, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:41:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (1569, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:41:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (1570, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:41:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (1571, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 20, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:41:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (1572, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 12, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:41:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (1573, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:41:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (1574, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:41:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (1575, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:41:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (1576, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 27, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:41:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (1577, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:41:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (1578, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:41:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (1579, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 19, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:41:34', NULL, NULL);
INSERT INTO `sys_log` VALUES (1580, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:41:35', NULL, NULL);
INSERT INTO `sys_log` VALUES (1581, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.deletePeo()', '[{\"id\":1}]', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:41:37', NULL, NULL);
INSERT INTO `sys_log` VALUES (1582, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.deletePeo()', '[{\"id\":1}]', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:41:59', NULL, NULL);
INSERT INTO `sys_log` VALUES (1583, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:43:35', NULL, NULL);
INSERT INTO `sys_log` VALUES (1584, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:43:35', NULL, NULL);
INSERT INTO `sys_log` VALUES (1585, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:43:35', NULL, NULL);
INSERT INTO `sys_log` VALUES (1586, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:43:35', NULL, NULL);
INSERT INTO `sys_log` VALUES (1587, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:43:35', NULL, NULL);
INSERT INTO `sys_log` VALUES (1588, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:43:35', NULL, NULL);
INSERT INTO `sys_log` VALUES (1589, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 14, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:43:35', NULL, NULL);
INSERT INTO `sys_log` VALUES (1590, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:43:37', NULL, NULL);
INSERT INTO `sys_log` VALUES (1591, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:45:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1592, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:45:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1593, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:45:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1594, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:45:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1595, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:45:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1596, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:45:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1597, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:45:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1598, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:45:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (1599, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:46:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (1600, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:46:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (1601, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:46:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (1602, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:46:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (1603, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:46:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (1604, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:46:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (1605, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:46:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (1606, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:46:05', NULL, NULL);
INSERT INTO `sys_log` VALUES (1607, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:46:05', NULL, NULL);
INSERT INTO `sys_log` VALUES (1608, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.deletePeo()', '[{\"id\":1}]', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:46:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (1609, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 19, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:46:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (1610, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"10\"}},\"pageNum\":1,\"pageSize\":10}', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:46:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (1611, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 14, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:46:52', NULL, NULL);
INSERT INTO `sys_log` VALUES (1612, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:46:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (1613, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.deletePeo()', '[{\"id\":1}]', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:47:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (1614, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:47:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (1615, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:48:15', NULL, NULL);
INSERT INTO `sys_log` VALUES (1616, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"10\"}},\"pageNum\":1,\"pageSize\":10}', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:48:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (1617, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"12\"}},\"pageNum\":1,\"pageSize\":10}', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 21:48:55', NULL, NULL);
INSERT INTO `sys_log` VALUES (1618, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 12, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:02:50', NULL, NULL);
INSERT INTO `sys_log` VALUES (1619, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:02:50', NULL, NULL);
INSERT INTO `sys_log` VALUES (1620, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:02:50', NULL, NULL);
INSERT INTO `sys_log` VALUES (1621, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:02:50', NULL, NULL);
INSERT INTO `sys_log` VALUES (1622, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:02:50', NULL, NULL);
INSERT INTO `sys_log` VALUES (1623, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:02:50', NULL, NULL);
INSERT INTO `sys_log` VALUES (1624, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 29, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:02:50', NULL, NULL);
INSERT INTO `sys_log` VALUES (1625, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:02:53', NULL, NULL);
INSERT INTO `sys_log` VALUES (1626, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:02:53', NULL, NULL);
INSERT INTO `sys_log` VALUES (1627, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 214, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1628, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1629, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 41, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1630, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 46, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1631, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 18, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:04:34', NULL, NULL);
INSERT INTO `sys_log` VALUES (1632, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 14, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:04:34', NULL, NULL);
INSERT INTO `sys_log` VALUES (1633, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 24, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:04:34', NULL, NULL);
INSERT INTO `sys_log` VALUES (1634, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 208, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:04:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (1635, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"10\"}},\"pageNum\":1,\"pageSize\":10}', 17, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:04:38', NULL, NULL);
INSERT INTO `sys_log` VALUES (1636, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"10\"}},\"pageNum\":1,\"pageSize\":10}', 33, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:04:38', NULL, NULL);
INSERT INTO `sys_log` VALUES (1637, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.deletePeo()', '[{\"id\":3}]', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:04:43', NULL, NULL);
INSERT INTO `sys_log` VALUES (1638, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"10\"}},\"pageNum\":1,\"pageSize\":10}', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:04:43', NULL, NULL);
INSERT INTO `sys_log` VALUES (1639, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"10\"}},\"pageNum\":1,\"pageSize\":10}', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:04:47', NULL, NULL);
INSERT INTO `sys_log` VALUES (1640, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 271, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1641, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1642, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 41, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1643, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 47, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1644, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 47, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:12:37', NULL, NULL);
INSERT INTO `sys_log` VALUES (1645, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 12, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:12:37', NULL, NULL);
INSERT INTO `sys_log` VALUES (1646, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 20, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:12:37', NULL, NULL);
INSERT INTO `sys_log` VALUES (1647, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 177, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:12:38', NULL, NULL);
INSERT INTO `sys_log` VALUES (1648, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 29, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:12:40', NULL, NULL);
INSERT INTO `sys_log` VALUES (1649, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 39, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:12:40', NULL, NULL);
INSERT INTO `sys_log` VALUES (1650, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.deletePeo()', '[{\"id\":25}]', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:12:41', NULL, NULL);
INSERT INTO `sys_log` VALUES (1651, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:12:41', NULL, NULL);
INSERT INTO `sys_log` VALUES (1652, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:12:44', NULL, NULL);
INSERT INTO `sys_log` VALUES (1653, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"10\"}},\"pageNum\":1,\"pageSize\":10}', 20, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:12:46', NULL, NULL);
INSERT INTO `sys_log` VALUES (1654, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"16\"}},\"pageNum\":1,\"pageSize\":10}', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:14:59', NULL, NULL);
INSERT INTO `sys_log` VALUES (1655, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"16\"}},\"pageNum\":1,\"pageSize\":10}', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:15:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (1656, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"13\"}},\"pageNum\":1,\"pageSize\":10}', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:15:05', NULL, NULL);
INSERT INTO `sys_log` VALUES (1657, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:21:11', NULL, NULL);
INSERT INTO `sys_log` VALUES (1658, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.delete()', '[{\"id\":54}]', 14, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:21:22', NULL, NULL);
INSERT INTO `sys_log` VALUES (1659, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:21:22', NULL, NULL);
INSERT INTO `sys_log` VALUES (1660, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 14, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:21:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1661, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:21:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1662, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:21:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1663, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:21:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1664, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:21:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1665, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:21:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1666, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 25, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:21:27', NULL, NULL);
INSERT INTO `sys_log` VALUES (1667, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 18, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:21:35', NULL, NULL);
INSERT INTO `sys_log` VALUES (1668, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"12\"}},\"pageNum\":1,\"pageSize\":10}', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:21:37', NULL, NULL);
INSERT INTO `sys_log` VALUES (1669, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"12\"}},\"pageNum\":1,\"pageSize\":10}', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:21:37', NULL, NULL);
INSERT INTO `sys_log` VALUES (1670, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"11\"}},\"pageNum\":1,\"pageSize\":10}', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:21:40', NULL, NULL);
INSERT INTO `sys_log` VALUES (1671, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:21:45', NULL, NULL);
INSERT INTO `sys_log` VALUES (1672, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"11\"}},\"pageNum\":1,\"pageSize\":10}', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:21:52', NULL, NULL);
INSERT INTO `sys_log` VALUES (1673, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"status\":{\"name\":\"status\",\"value\":\"2\"}},\"pageNum\":1,\"pageSize\":10}', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:22:06', NULL, NULL);
INSERT INTO `sys_log` VALUES (1674, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '9', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:22:06', NULL, NULL);
INSERT INTO `sys_log` VALUES (1675, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '10', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:22:06', NULL, NULL);
INSERT INTO `sys_log` VALUES (1676, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '11', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:22:07', NULL, NULL);
INSERT INTO `sys_log` VALUES (1677, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '12', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:22:07', NULL, NULL);
INSERT INTO `sys_log` VALUES (1678, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '13', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:22:07', NULL, NULL);
INSERT INTO `sys_log` VALUES (1679, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '14', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:22:07', NULL, NULL);
INSERT INTO `sys_log` VALUES (1680, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '15', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:22:07', NULL, NULL);
INSERT INTO `sys_log` VALUES (1681, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '16', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:22:07', NULL, NULL);
INSERT INTO `sys_log` VALUES (1682, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '17', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:22:07', NULL, NULL);
INSERT INTO `sys_log` VALUES (1683, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.getExpUserCount()', '19', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:22:07', NULL, NULL);
INSERT INTO `sys_log` VALUES (1684, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:22:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1685, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.getInfoByName()', '\"admin\"', 18, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:22:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1686, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 12, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:28:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (1687, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:28:47', NULL, NULL);
INSERT INTO `sys_log` VALUES (1688, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.delete()', '[{\"id\":51}]', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:28:59', NULL, NULL);
INSERT INTO `sys_log` VALUES (1689, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:28:59', NULL, NULL);
INSERT INTO `sys_log` VALUES (1690, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.save()', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":1586445184000,\"delFlag\":0,\"icon\":\"fa fa-list-alt fa-lg fa-fw\",\"id\":52,\"lastUpdateBy\":\"admin\",\"lastUpdateTime\":1592404165418,\"level\":1,\"name\":\"报名管理\",\"orde...', 25, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:29:25', NULL, NULL);
INSERT INTO `sys_log` VALUES (1691, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:29:25', NULL, NULL);
INSERT INTO `sys_log` VALUES (1692, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:29:30', NULL, NULL);
INSERT INTO `sys_log` VALUES (1693, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:29:30', NULL, NULL);
INSERT INTO `sys_log` VALUES (1694, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 12, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:29:30', NULL, NULL);
INSERT INTO `sys_log` VALUES (1695, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 19, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:29:30', NULL, NULL);
INSERT INTO `sys_log` VALUES (1696, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:29:30', NULL, NULL);
INSERT INTO `sys_log` VALUES (1697, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:29:30', NULL, NULL);
INSERT INTO `sys_log` VALUES (1698, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:29:30', NULL, NULL);
INSERT INTO `sys_log` VALUES (1699, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:30:39', NULL, NULL);
INSERT INTO `sys_log` VALUES (1700, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:30:39', NULL, NULL);
INSERT INTO `sys_log` VALUES (1701, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:30:39', NULL, NULL);
INSERT INTO `sys_log` VALUES (1702, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:30:39', NULL, NULL);
INSERT INTO `sys_log` VALUES (1703, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:30:39', NULL, NULL);
INSERT INTO `sys_log` VALUES (1704, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 16, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:30:39', NULL, NULL);
INSERT INTO `sys_log` VALUES (1705, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:30:40', NULL, NULL);
INSERT INTO `sys_log` VALUES (1706, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:34:27', NULL, NULL);
INSERT INTO `sys_log` VALUES (1707, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:34:27', NULL, NULL);
INSERT INTO `sys_log` VALUES (1708, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:34:27', NULL, NULL);
INSERT INTO `sys_log` VALUES (1709, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:34:27', NULL, NULL);
INSERT INTO `sys_log` VALUES (1710, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:34:27', NULL, NULL);
INSERT INTO `sys_log` VALUES (1711, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:34:27', NULL, NULL);
INSERT INTO `sys_log` VALUES (1712, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:34:27', NULL, NULL);
INSERT INTO `sys_log` VALUES (1713, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 49, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:40:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (1714, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysDeptServiceImpl.findTree()', NULL, 54, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:40:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (1715, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findAll()', NULL, 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:40:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (1716, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:40:35', NULL, NULL);
INSERT INTO `sys_log` VALUES (1717, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.save()', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":1586445184000,\"delFlag\":0,\"icon\":\"fa fa-list-alt fa-lg fa-fw\",\"id\":52,\"lastUpdateBy\":\"admin\",\"lastUpdateTime\":1592404993615,\"level\":1,\"name\":\"报名管理\",\"orde...', 12, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:43:14', NULL, NULL);
INSERT INTO `sys_log` VALUES (1718, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:43:14', NULL, NULL);
INSERT INTO `sys_log` VALUES (1719, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.save()', '{\"createBy\":\"admin\",\"createTime\":1592405021934,\"icon\":\"\",\"id\":0,\"name\":\"查看实验\",\"orderNum\":0,\"parentId\":52,\"parentName\":\"报名管理\",\"perms\":\"fun:exper:viewexp\",\"type\":2,\"url\":\"\"}', 12, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:43:42', NULL, NULL);
INSERT INTO `sys_log` VALUES (1720, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:43:42', NULL, NULL);
INSERT INTO `sys_log` VALUES (1721, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.save()', '{\"createBy\":\"admin\",\"createTime\":1592405050565,\"icon\":\"\",\"id\":0,\"name\":\"取消报名\",\"orderNum\":0,\"parentId\":52,\"parentName\":\"报名管理\",\"perms\":\"fun:exper:cancelregist\",\"type\":2,\"url\":\"\"}', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:44:11', NULL, NULL);
INSERT INTO `sys_log` VALUES (1722, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:44:11', NULL, NULL);
INSERT INTO `sys_log` VALUES (1723, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysDeptServiceImpl.findTree()', NULL, 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:44:17', NULL, NULL);
INSERT INTO `sys_log` VALUES (1724, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 43, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:44:17', NULL, NULL);
INSERT INTO `sys_log` VALUES (1725, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findAll()', NULL, 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:44:17', NULL, NULL);
INSERT INTO `sys_log` VALUES (1726, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:44:22', NULL, NULL);
INSERT INTO `sys_log` VALUES (1727, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:44:24', NULL, NULL);
INSERT INTO `sys_log` VALUES (1728, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:44:24', NULL, NULL);
INSERT INTO `sys_log` VALUES (1729, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findRoleMenus()', '1', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:44:30', NULL, NULL);
INSERT INTO `sys_log` VALUES (1730, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findRoleMenus()', '9', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:44:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (1731, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.saveRoleMenus()', '[{\"createBy\":\"admin\",\"createTime\":1592405086535,\"menuId\":46,\"roleId\":9},{\"createBy\":\"admin\",\"createTime\":1592405086537,\"menuId\":50,\"roleId\":9},{\"createBy\":\"admin\",\"createTime\":1592405086538,\"menuId\":5...', 23, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:44:47', NULL, NULL);
INSERT INTO `sys_log` VALUES (1732, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findRoleMenus()', '10', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:44:48', NULL, NULL);
INSERT INTO `sys_log` VALUES (1733, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.saveRoleMenus()', '[{\"createBy\":\"admin\",\"createTime\":1592405098267,\"menuId\":46,\"roleId\":10},{\"createBy\":\"admin\",\"createTime\":1592405098269,\"menuId\":47,\"roleId\":10},{\"createBy\":\"admin\",\"createTime\":1592405098270,\"menuId\"...', 24, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:44:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (1734, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findRoleMenus()', '2', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:45:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (1735, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.saveRoleMenus()', '[{\"createBy\":\"admin\",\"createTime\":1592405126644,\"menuId\":1,\"roleId\":2},{\"createBy\":\"admin\",\"createTime\":1592405126646,\"menuId\":2,\"roleId\":2},{\"createBy\":\"admin\",\"createTime\":1592405126647,\"menuId\":9,\"...', 70, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_log` VALUES (1736, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findRoleMenus()', '1', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:45:28', NULL, NULL);
INSERT INTO `sys_log` VALUES (1737, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findRoleMenus()', '9', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:45:30', NULL, NULL);
INSERT INTO `sys_log` VALUES (1738, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findRoleMenus()', '10', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:45:34', NULL, NULL);
INSERT INTO `sys_log` VALUES (1739, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findRoleMenus()', '12', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:45:38', NULL, NULL);
INSERT INTO `sys_log` VALUES (1740, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findRoleMenus()', '13', 1, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:45:39', NULL, NULL);
INSERT INTO `sys_log` VALUES (1741, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:50:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (1742, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:50:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (1743, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:50:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (1744, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:58:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (1745, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:58:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (1746, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:58:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (1747, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:58:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (1748, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:58:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (1749, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:58:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (1750, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:58:05', NULL, NULL);
INSERT INTO `sys_log` VALUES (1751, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:59:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (1752, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:59:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (1753, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:59:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (1754, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:59:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (1755, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:59:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (1756, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:59:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (1757, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 22:59:55', NULL, NULL);
INSERT INTO `sys_log` VALUES (1758, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:00:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (1759, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:00:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (1760, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:00:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (1761, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:00:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (1762, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:00:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (1763, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:00:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (1764, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:00:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (1765, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:02:24', NULL, NULL);
INSERT INTO `sys_log` VALUES (1766, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:02:24', NULL, NULL);
INSERT INTO `sys_log` VALUES (1767, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:02:24', NULL, NULL);
INSERT INTO `sys_log` VALUES (1768, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:02:24', NULL, NULL);
INSERT INTO `sys_log` VALUES (1769, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:02:24', NULL, NULL);
INSERT INTO `sys_log` VALUES (1770, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:02:24', NULL, NULL);
INSERT INTO `sys_log` VALUES (1771, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:02:24', NULL, NULL);
INSERT INTO `sys_log` VALUES (1772, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:10:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (1773, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:10:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (1774, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 14, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:10:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (1775, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 17, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:10:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (1776, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:10:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (1777, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:10:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (1778, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 211, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1779, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1780, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 39, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1781, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 42, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1782, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 17, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:14:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (1783, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 17, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:14:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (1784, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 30, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:14:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (1785, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 12, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:19:16', NULL, NULL);
INSERT INTO `sys_log` VALUES (1786, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:19:17', NULL, NULL);
INSERT INTO `sys_log` VALUES (1787, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 22, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:19:17', NULL, NULL);
INSERT INTO `sys_log` VALUES (1788, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 29, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:19:17', NULL, NULL);
INSERT INTO `sys_log` VALUES (1789, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 14, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:19:17', NULL, NULL);
INSERT INTO `sys_log` VALUES (1790, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 19, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:19:17', NULL, NULL);
INSERT INTO `sys_log` VALUES (1791, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 179, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1792, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1793, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 37, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1794, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 41, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1795, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 21, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:24:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (1796, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 28, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:24:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (1797, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 36, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:24:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (1798, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:24:49', NULL, NULL);
INSERT INTO `sys_log` VALUES (1799, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 19, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:24:49', NULL, NULL);
INSERT INTO `sys_log` VALUES (1800, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 32, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:24:49', NULL, NULL);
INSERT INTO `sys_log` VALUES (1801, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 66, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:24:49', NULL, NULL);
INSERT INTO `sys_log` VALUES (1802, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:24:49', NULL, NULL);
INSERT INTO `sys_log` VALUES (1803, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:24:49', NULL, NULL);
INSERT INTO `sys_log` VALUES (1804, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPageByUserName()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 209, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:24:50', NULL, NULL);
INSERT INTO `sys_log` VALUES (1805, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 144, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1806, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1807, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 41, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1808, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 45, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1809, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 30, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:29:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (1810, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:29:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (1811, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 23, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:29:04', NULL, NULL);
INSERT INTO `sys_log` VALUES (1812, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPageByUserName()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 128, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:29:06', NULL, NULL);
INSERT INTO `sys_log` VALUES (1813, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 29, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:32:44', NULL, NULL);
INSERT INTO `sys_log` VALUES (1814, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 26, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:32:44', NULL, NULL);
INSERT INTO `sys_log` VALUES (1815, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 31, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:32:44', NULL, NULL);
INSERT INTO `sys_log` VALUES (1816, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 39, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:32:44', NULL, NULL);
INSERT INTO `sys_log` VALUES (1817, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:32:44', NULL, NULL);
INSERT INTO `sys_log` VALUES (1818, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:32:44', NULL, NULL);
INSERT INTO `sys_log` VALUES (1819, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPageByUserName()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 16, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:32:45', NULL, NULL);
INSERT INTO `sys_log` VALUES (1820, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.deletePeo()', '[{\"id\":11}]', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:35:34', NULL, NULL);
INSERT INTO `sys_log` VALUES (1821, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPageByUserName()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 17, '0:0:0:0:0:0:0:1', 'admin', '2020-06-17 23:35:34', NULL, NULL);
INSERT INTO `sys_log` VALUES (1822, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 14, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1823, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPageByUserName()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 23, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1824, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 202, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1825, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1826, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 42, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1827, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 49, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1828, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 30, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 00:10:08', NULL, NULL);
INSERT INTO `sys_log` VALUES (1829, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 26, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 00:10:08', NULL, NULL);
INSERT INTO `sys_log` VALUES (1830, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 39, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 00:10:08', NULL, NULL);
INSERT INTO `sys_log` VALUES (1831, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPageByUserName()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 164, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 00:10:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (1832, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 23, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 00:10:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (1833, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 00:10:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (1834, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 00:10:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (1835, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 19, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 00:10:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (1836, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 00:10:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (1837, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 16, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 00:10:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (1838, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPageByUserName()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 18, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 00:10:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (1839, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 192, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1840, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1841, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 63, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1842, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 67, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1843, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 29, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:40:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (1844, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:40:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (1845, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 21, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:40:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (1846, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 140, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1847, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1848, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 41, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1849, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 45, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1850, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 17, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:42:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (1851, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:42:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (1852, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 21, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:42:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (1853, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPageByUserName()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 194, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:42:21', NULL, NULL);
INSERT INTO `sys_log` VALUES (1854, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysDeptServiceImpl.findTree()', NULL, 33, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:45:42', NULL, NULL);
INSERT INTO `sys_log` VALUES (1855, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 105, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:45:42', NULL, NULL);
INSERT INTO `sys_log` VALUES (1856, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findAll()', NULL, 16, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:45:43', NULL, NULL);
INSERT INTO `sys_log` VALUES (1857, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:45:48', NULL, NULL);
INSERT INTO `sys_log` VALUES (1858, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:45:48', NULL, NULL);
INSERT INTO `sys_log` VALUES (1859, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:47:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (1860, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.save()', '{\"children\":[{\"children\":[],\"createBy\":\"admin\",\"createTime\":1591775075000,\"delFlag\":0,\"icon\":\"\",\"id\":55,\"level\":2,\"name\":\"添加实验\",\"orderNum\":0,\"parentId\":48,\"parentName\":\"实验管理\",\"perms\":\"fun:subject:adde...', 29, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:48:21', NULL, NULL);
INSERT INTO `sys_log` VALUES (1861, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 17, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:48:21', NULL, NULL);
INSERT INTO `sys_log` VALUES (1862, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.save()', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":1591775075000,\"delFlag\":0,\"icon\":\"\",\"id\":55,\"lastUpdateBy\":\"admin\",\"lastUpdateTime\":1592452109451,\"level\":2,\"name\":\"添加实验\",\"orderNum\":0,\"parentId\":48,\"par...', 12, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:48:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (1863, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:48:30', NULL, NULL);
INSERT INTO `sys_log` VALUES (1864, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.save()', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":1591775243000,\"delFlag\":0,\"icon\":\"\",\"id\":56,\"lastUpdateBy\":\"admin\",\"lastUpdateTime\":1592452116170,\"level\":2,\"name\":\"修改实验\",\"orderNum\":0,\"parentId\":48,\"par...', 12, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:48:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (1865, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:48:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (1866, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.save()', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":1591775298000,\"delFlag\":0,\"icon\":\"\",\"id\":57,\"lastUpdateBy\":\"admin\",\"lastUpdateTime\":1592452122696,\"level\":2,\"name\":\"查看实验\",\"orderNum\":0,\"parentId\":48,\"par...', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:48:43', NULL, NULL);
INSERT INTO `sys_log` VALUES (1867, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:48:43', NULL, NULL);
INSERT INTO `sys_log` VALUES (1868, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.save()', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":1591775324000,\"delFlag\":0,\"icon\":\"\",\"id\":58,\"lastUpdateBy\":\"admin\",\"lastUpdateTime\":1592452128478,\"level\":2,\"name\":\"删除实验\",\"orderNum\":0,\"parentId\":48,\"par...', 18, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:48:48', NULL, NULL);
INSERT INTO `sys_log` VALUES (1869, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:48:49', NULL, NULL);
INSERT INTO `sys_log` VALUES (1870, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.save()', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":1592304399000,\"delFlag\":0,\"icon\":\"\",\"id\":59,\"lastUpdateBy\":\"admin\",\"lastUpdateTime\":1592452135235,\"level\":2,\"name\":\"查看报名情况\",\"orderNum\":0,\"parentId\":48,\"p...', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:48:55', NULL, NULL);
INSERT INTO `sys_log` VALUES (1871, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:48:55', NULL, NULL);
INSERT INTO `sys_log` VALUES (1872, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.save()', '{\"children\":[{\"children\":[],\"createBy\":\"admin\",\"createTime\":1592405022000,\"delFlag\":0,\"icon\":\"\",\"id\":60,\"level\":2,\"name\":\"查看实验\",\"orderNum\":0,\"parentId\":52,\"parentName\":\"报名管理\",\"perms\":\"fun:exper:viewex...', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:49:09', NULL, NULL);
INSERT INTO `sys_log` VALUES (1873, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:49:09', NULL, NULL);
INSERT INTO `sys_log` VALUES (1874, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:50:53', NULL, NULL);
INSERT INTO `sys_log` VALUES (1875, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 16, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:50:53', NULL, NULL);
INSERT INTO `sys_log` VALUES (1876, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 20, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:50:53', NULL, NULL);
INSERT INTO `sys_log` VALUES (1877, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:50:53', NULL, NULL);
INSERT INTO `sys_log` VALUES (1878, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:50:53', NULL, NULL);
INSERT INTO `sys_log` VALUES (1879, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:50:53', NULL, NULL);
INSERT INTO `sys_log` VALUES (1880, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:50:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (1881, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 131, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1882, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1883, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 57, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1884, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 62, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1885, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 51, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:54:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (1886, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:54:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (1887, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 22, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:54:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (1888, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPageByUserName()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 139, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 11:54:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (1889, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:03:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (1890, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 34, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:03:21', NULL, NULL);
INSERT INTO `sys_log` VALUES (1891, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:03:21', NULL, NULL);
INSERT INTO `sys_log` VALUES (1892, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findRoleMenus()', '1', 14, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:03:23', NULL, NULL);
INSERT INTO `sys_log` VALUES (1893, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 88, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:03:34', NULL, NULL);
INSERT INTO `sys_log` VALUES (1894, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysDeptServiceImpl.findTree()', NULL, 28, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:03:34', NULL, NULL);
INSERT INTO `sys_log` VALUES (1895, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findAll()', NULL, 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:03:34', NULL, NULL);
INSERT INTO `sys_log` VALUES (1896, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:03:39', NULL, NULL);
INSERT INTO `sys_log` VALUES (1897, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPageByUserName()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 33, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1898, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1899, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1900, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1901, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1902, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:40:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (1903, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:40:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (1904, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:40:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (1905, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPageByUserName()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:40:55', NULL, NULL);
INSERT INTO `sys_log` VALUES (1906, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:41:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (1907, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:41:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (1908, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findRoleMenus()', '1', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:41:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (1909, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findRoleMenus()', '2', 23, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:41:27', NULL, NULL);
INSERT INTO `sys_log` VALUES (1910, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findRoleMenus()', '9', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:41:29', NULL, NULL);
INSERT INTO `sys_log` VALUES (1911, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findRoleMenus()', '10', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:41:31', NULL, NULL);
INSERT INTO `sys_log` VALUES (1912, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findRoleMenus()', '9', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:41:34', NULL, NULL);
INSERT INTO `sys_log` VALUES (1913, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findRoleMenus()', '1', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:41:34', NULL, NULL);
INSERT INTO `sys_log` VALUES (1914, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPageByUserName()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:41:39', NULL, NULL);
INSERT INTO `sys_log` VALUES (1915, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1916, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1917, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1918, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1919, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:41:49', NULL, NULL);
INSERT INTO `sys_log` VALUES (1920, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:41:49', NULL, NULL);
INSERT INTO `sys_log` VALUES (1921, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:41:49', NULL, NULL);
INSERT INTO `sys_log` VALUES (1922, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPageByUserName()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:41:51', NULL, NULL);
INSERT INTO `sys_log` VALUES (1923, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:41:54', NULL, NULL);
INSERT INTO `sys_log` VALUES (1924, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysDictServiceImpl.findPage()', '{\"columnFilters\":{\"label\":{\"name\":\"label\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 26, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:41:59', NULL, NULL);
INSERT INTO `sys_log` VALUES (1925, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:42:00', NULL, NULL);
INSERT INTO `sys_log` VALUES (1926, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:42:00', NULL, NULL);
INSERT INTO `sys_log` VALUES (1927, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findRoleMenus()', '1', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:42:02', NULL, NULL);
INSERT INTO `sys_log` VALUES (1928, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:42:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (1929, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPageByUserName()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:42:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (1930, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 19, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:42:38', NULL, NULL);
INSERT INTO `sys_log` VALUES (1931, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:43:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (1932, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:43:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (1933, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:43:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (1934, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:43:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (1935, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:43:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (1936, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:43:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (1937, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 14, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:43:11', NULL, NULL);
INSERT INTO `sys_log` VALUES (1938, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPageByUserName()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:43:14', NULL, NULL);
INSERT INTO `sys_log` VALUES (1939, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPage()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"},\"expName\":{\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:43:19', NULL, NULL);
INSERT INTO `sys_log` VALUES (1940, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:43:20', NULL, NULL);
INSERT INTO `sys_log` VALUES (1941, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findExpUsersPage()', '{\"columnFilters\":{\"expId\":{\"value\":\"9\"}},\"pageNum\":1,\"pageSize\":10}', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:43:20', NULL, NULL);
INSERT INTO `sys_log` VALUES (1942, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPageByUserName()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 17, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:43:25', NULL, NULL);
INSERT INTO `sys_log` VALUES (1943, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 2, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1944, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1945, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1946, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 8, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1947, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:44:06', NULL, NULL);
INSERT INTO `sys_log` VALUES (1948, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:44:06', NULL, NULL);
INSERT INTO `sys_log` VALUES (1949, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:44:06', NULL, NULL);
INSERT INTO `sys_log` VALUES (1950, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPageByUserName()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 6, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:44:08', NULL, NULL);
INSERT INTO `sys_log` VALUES (1951, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:44:17', NULL, NULL);
INSERT INTO `sys_log` VALUES (1952, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 8, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:44:24', NULL, NULL);
INSERT INTO `sys_log` VALUES (1953, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:44:24', NULL, NULL);
INSERT INTO `sys_log` VALUES (1954, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findRoleMenus()', '1', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:44:25', NULL, NULL);
INSERT INTO `sys_log` VALUES (1955, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysDeptServiceImpl.findTree()', NULL, 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:44:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (1956, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPage()', '{\"columnFilters\":{\"name\":{\"name\":\"name\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":10}', 58, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:44:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (1957, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysRoleServiceImpl.findAll()', NULL, 2, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:44:56', NULL, NULL);
INSERT INTO `sys_log` VALUES (1958, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:45:01', NULL, NULL);
INSERT INTO `sys_log` VALUES (1959, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.save()', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":1592405022000,\"delFlag\":0,\"icon\":\"\",\"id\":60,\"lastUpdateBy\":\"admin\",\"lastUpdateTime\":1592455517122,\"level\":2,\"name\":\"查看实验\",\"orderNum\":0,\"parentId\":52,\"par...', 41, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:45:17', NULL, NULL);
INSERT INTO `sys_log` VALUES (1960, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:45:17', NULL, NULL);
INSERT INTO `sys_log` VALUES (1961, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.save()', '{\"children\":[],\"createBy\":\"admin\",\"createTime\":1592405051000,\"delFlag\":0,\"icon\":\"\",\"id\":61,\"lastUpdateBy\":\"admin\",\"lastUpdateTime\":1592455523756,\"level\":2,\"name\":\"取消报名\",\"orderNum\":0,\"parentId\":52,\"par...', 14, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:45:24', NULL, NULL);
INSERT INTO `sys_log` VALUES (1962, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', 'null', 4, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:45:24', NULL, NULL);
INSERT INTO `sys_log` VALUES (1963, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPageByUserName()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:45:28', NULL, NULL);
INSERT INTO `sys_log` VALUES (1964, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:45:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (1965, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:45:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (1966, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:45:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (1967, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:45:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (1968, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:45:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (1969, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 7, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:45:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (1970, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPageByUserName()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 18, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 12:45:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (1971, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 167, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1972, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1973, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 45, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1974, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 52, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1975, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 29, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:07:37', NULL, NULL);
INSERT INTO `sys_log` VALUES (1976, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 20, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:07:37', NULL, NULL);
INSERT INTO `sys_log` VALUES (1977, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 33, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:07:37', NULL, NULL);
INSERT INTO `sys_log` VALUES (1978, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPageByUserName()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 122, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:07:39', NULL, NULL);
INSERT INTO `sys_log` VALUES (1979, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 151, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1980, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1981, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 36, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1982, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 41, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1983, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 18, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:13:20', NULL, NULL);
INSERT INTO `sys_log` VALUES (1984, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:13:20', NULL, NULL);
INSERT INTO `sys_log` VALUES (1985, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 22, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:13:20', NULL, NULL);
INSERT INTO `sys_log` VALUES (1986, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPageByUserName()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 175, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:13:22', NULL, NULL);
INSERT INTO `sys_log` VALUES (1987, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 147, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1988, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1989, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 36, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1990, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 41, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (1991, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 18, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:15:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1992, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:15:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1993, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 21, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:15:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (1994, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPageByUserName()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 196, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:15:28', NULL, NULL);
INSERT INTO `sys_log` VALUES (1995, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 17, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:15:32', NULL, NULL);
INSERT INTO `sys_log` VALUES (1996, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 35, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:15:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (1997, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 62, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:15:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (1998, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 93, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:15:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (1999, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:15:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (2000, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:15:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (2001, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPageByUserName()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:15:33', NULL, NULL);
INSERT INTO `sys_log` VALUES (2002, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 130, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (2003, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (2004, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 45, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (2005, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 51, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (2006, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 25, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:17:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (2007, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 23, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:17:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (2008, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 29, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:17:57', NULL, NULL);
INSERT INTO `sys_log` VALUES (2009, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPageByUserName()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 165, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:17:58', NULL, NULL);
INSERT INTO `sys_log` VALUES (2010, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 11, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:25:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (2011, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 20, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:25:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (2012, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 43, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:25:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (2013, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 26, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:25:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (2014, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:25:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (2015, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 14, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:25:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (2016, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPageByUserName()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 23, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:25:03', NULL, NULL);
INSERT INTO `sys_log` VALUES (2017, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 250, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (2018, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (2019, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 50, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (2020, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 55, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (2021, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 17, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:27:05', NULL, NULL);
INSERT INTO `sys_log` VALUES (2022, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 21, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:27:05', NULL, NULL);
INSERT INTO `sys_log` VALUES (2023, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 29, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:27:05', NULL, NULL);
INSERT INTO `sys_log` VALUES (2024, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPageByUserName()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 268, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:27:06', NULL, NULL);
INSERT INTO `sys_log` VALUES (2025, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 14, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:30:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (2026, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 10, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:30:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (2027, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 9, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:30:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (2028, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:30:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (2029, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 14, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:30:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (2030, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 20, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:30:13', NULL, NULL);
INSERT INTO `sys_log` VALUES (2031, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPageByUserName()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 12, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:30:14', NULL, NULL);
INSERT INTO `sys_log` VALUES (2032, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 320, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (2033, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 66, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (2034, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (2035, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 15, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (2036, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 18, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (2037, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:33:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (2038, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 18, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:33:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (2039, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 24, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:33:10', NULL, NULL);
INSERT INTO `sys_log` VALUES (2040, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPageByUserName()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 279, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:33:12', NULL, NULL);
INSERT INTO `sys_log` VALUES (2041, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 216, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (2042, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (2043, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 42, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (2044, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 46, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (2045, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 27, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:36:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (2046, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:36:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (2047, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 23, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:36:36', NULL, NULL);
INSERT INTO `sys_log` VALUES (2048, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPageByUserName()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 202, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:36:38', NULL, NULL);
INSERT INTO `sys_log` VALUES (2049, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 192, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (2050, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (2051, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 39, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (2052, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 44, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (2053, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 21, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:39:41', NULL, NULL);
INSERT INTO `sys_log` VALUES (2054, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 13, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:39:41', NULL, NULL);
INSERT INTO `sys_log` VALUES (2055, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 20, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:39:41', NULL, NULL);
INSERT INTO `sys_log` VALUES (2056, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPageByUserName()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 192, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:39:42', NULL, NULL);
INSERT INTO `sys_log` VALUES (2057, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 200, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (2058, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 3, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (2059, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 78, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (2060, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 82, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (2061, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:43:25', NULL, NULL);
INSERT INTO `sys_log` VALUES (2062, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 18, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:43:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (2063, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 25, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:43:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (2064, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPageByUserName()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 237, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:43:27', NULL, NULL);
INSERT INTO `sys_log` VALUES (2065, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 472, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (2066, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 5, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (2067, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 41, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (2068, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 47, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (2069, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 23, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:54:47', NULL, NULL);
INSERT INTO `sys_log` VALUES (2070, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 15, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:54:47', NULL, NULL);
INSERT INTO `sys_log` VALUES (2071, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 44, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:54:47', NULL, NULL);
INSERT INTO `sys_log` VALUES (2072, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPageByUserName()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 198, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 13:54:52', NULL, NULL);
INSERT INTO `sys_log` VALUES (2073, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 224, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (2074, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findByName()', '\"admin\"', 4, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (2075, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 55, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (2076, NULL, NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 62, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_log` VALUES (2077, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findTree()', '\"admin\"', 18, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 14:00:24', NULL, NULL);
INSERT INTO `sys_log` VALUES (2078, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysMenuServiceImpl.findByUser()', '\"admin\"', 43, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 14:00:24', NULL, NULL);
INSERT INTO `sys_log` VALUES (2079, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.SysUserServiceImpl.findPermissions()', '\"admin\"', 58, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 14:00:24', NULL, NULL);
INSERT INTO `sys_log` VALUES (2080, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPageByUserName()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 288, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 14:00:26', NULL, NULL);
INSERT INTO `sys_log` VALUES (2081, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.deletePeoByExpIdAndUserName()', '{\"createBy\":\"admin\",\"expId\":12}', 19, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 14:00:28', NULL, NULL);
INSERT INTO `sys_log` VALUES (2082, 'admin', NULL, 'com.ryzin.penguin.admin.service.impl.FunExpServiceImpl.findPageByUserName()', '{\"columnFilters\":{\"userName\":{\"value\":\"admin\"}},\"pageNum\":1,\"pageSize\":10}', 16, '0:0:0:0:0:0:0:1', 'admin', '2020-06-18 14:00:28', NULL, NULL);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单URL,类型：1.普通页面（如用户管理， /sys/user） 2.嵌套完整外部页面，以http(s)开头的链接 3.嵌套服务器页面，使用iframe:前缀+目标URL(如SQL监控， iframe:/druid/login.html, iframe:前缀会替换成服务器地址)',
  `perms` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：sys:user:add,sys:user:edit)',
  `type` int(11) NULL DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `last_update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` tinyint(4) NULL DEFAULT 0 COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, NULL, NULL, 0, 'fa fa-cogs fa-lg fa-fw', 0, NULL, NULL, 'admin', '2020-04-09 23:03:39', 0);
INSERT INTO `sys_menu` VALUES (2, '用户管理', 1, '/sys/user', NULL, 1, 'fa fa-users fa-lg fa-fw', 1, NULL, NULL, 'admin', '2020-04-09 23:04:11', 0);
INSERT INTO `sys_menu` VALUES (3, '机构管理', 1, '/sys/dept', NULL, 1, 'fa fa-sitemap fa-lg fa-fw', 2, NULL, NULL, 'admin', '2020-04-09 23:04:28', 0);
INSERT INTO `sys_menu` VALUES (4, '角色管理', 1, '/sys/role', NULL, 1, 'fa fa-id-card-o fa-lg fa-fw', 4, NULL, NULL, 'admin', '2020-04-09 23:04:46', 0);
INSERT INTO `sys_menu` VALUES (5, '菜单管理', 1, '/sys/menu', NULL, 1, 'fa fa-bars fa-lg fa-fw', 5, NULL, NULL, 'admin', '2020-04-09 23:05:02', 0);
INSERT INTO `sys_menu` VALUES (6, '数据监控', 43, 'http://localhost:8001/druid/login.html', NULL, 1, 'fa fa-database fa-lg fa-fw', 0, NULL, NULL, 'admin', '2020-04-09 23:05:56', 0);
INSERT INTO `sys_menu` VALUES (7, '字典管理', 1, '/sys/dict', NULL, 1, 'fa fa-book fa-lg fa-fw', 7, NULL, NULL, 'admin', '2020-04-09 23:05:13', 0);
INSERT INTO `sys_menu` VALUES (8, '系统日志', 1, '/sys/log', 'sys:log:view', 1, 'fa fa-file-text-o fa-lg fa-fw', 8, NULL, NULL, 'admin', '2020-04-09 23:05:26', 0);
INSERT INTO `sys_menu` VALUES (9, '查看', 2, NULL, 'sys:user:view', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (10, '新增', 2, NULL, 'sys:user:add', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (11, '修改', 2, NULL, 'sys:user:edit', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (12, '删除', 2, NULL, 'sys:user:delete', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (13, '查看', 3, NULL, 'sys:dept:view', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (14, '新增', 3, NULL, 'sys:dept:add', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (15, '修改', 3, NULL, 'sys:dept:edit', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (16, '删除', 3, NULL, 'sys:dept:delete', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (17, '查看', 4, NULL, 'sys:role:view', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (18, '新增', 4, NULL, 'sys:role:add', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (19, '修改', 4, NULL, 'sys:role:edit', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (20, '删除', 4, NULL, 'sys:role:delete', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (21, '查看', 5, NULL, 'sys:menu:view', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (22, '新增', 5, NULL, 'sys:menu:add', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (23, '修改', 5, NULL, 'sys:menu:edit', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (24, '删除', 5, NULL, 'sys:menu:delete', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (31, '查看', 7, NULL, 'sys:dict:view', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (32, '新增', 7, NULL, 'sys:dict:add', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (33, '修改', 7, NULL, 'sys:dict:edit', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (34, '删除', 7, NULL, 'sys:dict:delete', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (35, '接口文档', 0, 'http://localhost:8001/swagger-ui.html', NULL, 1, 'fa fa-puzzle-piece fa-rotate-270 fa-lg fa-fw', 3, NULL, NULL, 'admin', '2020-04-09 23:06:40', 0);
INSERT INTO `sys_menu` VALUES (38, '服务监控', 43, 'http://localhost:8000/', '', 1, 'fa fa-server fa-lg fa-fw', 1, 'admin', '2018-11-02 20:02:15', 'admin', '2020-04-09 23:06:05', 0);
INSERT INTO `sys_menu` VALUES (41, '注册中心', 44, 'http://localhost:8500', '', 1, 'fa fa-registered fa-lg fa-fw', 0, 'admin', '2018-11-03 11:06:48', 'admin', '2020-04-09 23:06:28', 0);
INSERT INTO `sys_menu` VALUES (43, '系统监控', 0, '', '', 0, 'fa fa-eye fa-lg fa-fw', 1, 'admin', '2018-12-27 10:57:29', 'admin', '2020-04-09 23:05:41', 0);
INSERT INTO `sys_menu` VALUES (44, '服务治理', 0, '', '', 0, 'fa fa-bullseye fa-lg fa-fw', 2, 'admin', '2018-12-27 11:05:48', 'admin', '2020-04-09 23:06:18', 0);
INSERT INTO `sys_menu` VALUES (46, '实验项目', 0, '/CustomFunction/ExperimentalProjects', '', 1, 'fa fa-heartbeat fa-lg fa-fw', 6, 'admin', '2020-04-09 23:07:46', 'admin', '2020-04-09 23:08:01', 0);
INSERT INTO `sys_menu` VALUES (47, '主试实验管理', NULL, '', '', 1, 'fa fa-object-group fa-lg fa-fw', 7, 'admin', '2020-04-09 23:09:34', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (48, '实验管理', 47, '/CustomFunction/ExperimentManagement', 'fun:exper:expmng', 1, 'fa fa-list-alt fa-lg fa-fw', 1, 'admin', '2020-04-09 23:10:12', 'admin', '2020-06-18 11:48:21', 0);
INSERT INTO `sys_menu` VALUES (50, '被试实验管理', 0, '', '', 1, 'fa fa-object-ungroup fa-lg fa-fw', 8, 'admin', '2020-04-09 23:11:42', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (52, '报名管理', 50, '/CustomFunction/RegistrationManagement', 'fun:subject:registmng', 1, 'fa fa-list-alt fa-lg fa-fw', 2, 'admin', '2020-04-09 23:13:04', 'admin', '2020-06-18 11:49:09', 0);
INSERT INTO `sys_menu` VALUES (53, '账户管理', 0, '/Profile/Profile', '', 1, 'fa fa-user-circle fa-lg fa-fw', 9, 'admin', '2020-04-09 23:13:35', 'admin', '2020-06-11 13:02:02', 0);
INSERT INTO `sys_menu` VALUES (55, '添加实验', 48, '', 'fun:exper:addexp', 2, '', 0, 'admin', '2020-06-10 15:44:35', 'admin', '2020-06-18 11:48:29', 0);
INSERT INTO `sys_menu` VALUES (56, '修改实验', 48, '', 'fun:exper:editexp', 2, '', 0, 'admin', '2020-06-10 15:47:23', 'admin', '2020-06-18 11:48:36', 0);
INSERT INTO `sys_menu` VALUES (57, '查看实验', 48, '', 'fun:exper:viewexp', 2, '', 0, 'admin', '2020-06-10 15:48:18', 'admin', '2020-06-18 11:48:43', 0);
INSERT INTO `sys_menu` VALUES (58, '删除实验', 48, '', 'fun:exper:deleteexp', 2, '', 0, 'admin', '2020-06-10 15:48:44', 'admin', '2020-06-18 11:48:48', 0);
INSERT INTO `sys_menu` VALUES (59, '查看报名情况', 48, '', 'fun:exper:viewpeo', 2, '', 0, 'admin', '2020-06-16 18:46:39', 'admin', '2020-06-18 11:48:55', 0);
INSERT INTO `sys_menu` VALUES (60, '查看实验', 52, '', 'fun:subject:viewexp', 2, '', 0, 'admin', '2020-06-17 22:43:42', 'admin', '2020-06-18 12:45:17', 0);
INSERT INTO `sys_menu` VALUES (61, '取消报名', 52, '', 'fun:subject:cancelregist', 2, '', 0, 'admin', '2020-06-17 22:44:11', 'admin', '2020-06-18 12:45:24', 0);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `last_update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` tinyint(4) NULL DEFAULT 0 COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, 'admin', '超级管理员', 'admin', '2018-08-14 11:11:11', 'admin', '2018-09-23 19:07:18', 0);
INSERT INTO `sys_role` VALUES (2, 'dev', '开发人员', 'admin', '2018-08-14 11:11:11', 'admin', '2018-08-14 11:11:11', 0);
INSERT INTO `sys_role` VALUES (9, 'subject', '被试', 'admin', '2020-04-09 22:44:28', NULL, NULL, 0);
INSERT INTO `sys_role` VALUES (10, 'experimenter', '主试', 'admin', '2020-04-09 22:46:04', NULL, NULL, 0);
INSERT INTO `sys_role` VALUES (12, '角色1', '', 'admin', '2020-05-25 11:22:14', NULL, NULL, 0);
INSERT INTO `sys_role` VALUES (13, '角色2', '', 'admin', '2020-05-25 11:23:10', NULL, NULL, 0);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '机构ID',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `last_update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色与机构对应关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NULL DEFAULT NULL COMMENT '菜单ID',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `last_update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 516 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色与菜单对应关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (7, 3, 25, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (8, 3, 26, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (9, 3, 27, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (10, 3, 28, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (11, 3, 29, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (12, 3, 30, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (13, 11, 47, 'admin', '2020-05-18 21:36:49', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (14, 11, 48, 'admin', '2020-05-18 21:36:49', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (15, 11, 49, 'admin', '2020-05-18 21:36:49', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (16, 11, 53, 'admin', '2020-05-18 21:36:49', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (224, 4, 1, 'admin', '2018-09-23 16:22:41', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (225, 4, 2, 'admin', '2018-09-23 16:22:41', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (226, 4, 9, 'admin', '2018-09-23 16:22:41', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (227, 4, 3, 'admin', '2018-09-23 16:22:41', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (228, 4, 13, 'admin', '2018-09-23 16:22:41', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (229, 4, 4, 'admin', '2018-09-23 16:22:41', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (230, 4, 17, 'admin', '2018-09-23 16:22:41', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (231, 4, 5, 'admin', '2018-09-23 16:22:41', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (232, 4, 21, 'admin', '2018-09-23 16:22:41', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (233, 4, 6, 'admin', '2018-09-23 16:22:41', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (234, 4, 7, 'admin', '2018-09-23 16:22:41', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (235, 4, 31, 'admin', '2018-09-23 16:22:41', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (236, 4, 8, 'admin', '2018-09-23 16:22:41', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (237, 4, 25, 'admin', '2018-09-23 16:22:41', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (238, 4, 26, 'admin', '2018-09-23 16:22:41', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (239, 4, 27, 'admin', '2018-09-23 16:22:41', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (240, 4, 28, 'admin', '2018-09-23 16:22:41', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (241, 4, 29, 'admin', '2018-09-23 16:22:41', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (242, 4, 30, 'admin', '2018-09-23 16:22:41', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (243, 4, 35, 'admin', '2018-09-23 16:22:41', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (404, 3, 1, 'admin', '2018-09-23 19:51:55', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (405, 3, 2, 'admin', '2018-09-23 19:51:55', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (406, 3, 9, 'admin', '2018-09-23 19:51:55', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (407, 3, 3, 'admin', '2018-09-23 19:51:55', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (408, 3, 13, 'admin', '2018-09-23 19:51:55', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (409, 3, 8, 'admin', '2018-09-23 19:51:55', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (410, 3, 6, 'admin', '2018-09-23 19:51:55', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (411, 3, 28, 'admin', '2018-09-23 19:51:55', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (412, 3, 29, 'admin', '2018-09-23 19:51:55', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (413, 3, 30, 'admin', '2018-09-23 19:51:55', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (431, 8, 1, 'admin', '2018-09-23 19:55:08', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (432, 8, 2, 'admin', '2018-09-23 19:55:08', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (433, 8, 9, 'admin', '2018-09-23 19:55:08', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (434, 8, 3, 'admin', '2018-09-23 19:55:08', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (435, 8, 13, 'admin', '2018-09-23 19:55:08', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (436, 8, 4, 'admin', '2018-09-23 19:55:08', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (437, 8, 17, 'admin', '2018-09-23 19:55:08', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (438, 8, 5, 'admin', '2018-09-23 19:55:08', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (439, 8, 21, 'admin', '2018-09-23 19:55:08', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (440, 8, 7, 'admin', '2018-09-23 19:55:08', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (441, 8, 31, 'admin', '2018-09-23 19:55:08', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (442, 8, 8, 'admin', '2018-09-23 19:55:08', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (443, 8, 6, 'admin', '2018-09-23 19:55:08', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (444, 8, 35, 'admin', '2018-09-23 19:55:08', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (455, 12, 46, 'admin', '2020-05-31 15:12:05', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (456, 9, 46, 'admin', '2020-06-17 22:44:47', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (457, 9, 50, 'admin', '2020-06-17 22:44:47', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (458, 9, 52, 'admin', '2020-06-17 22:44:47', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (459, 9, 60, 'admin', '2020-06-17 22:44:47', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (460, 9, 61, 'admin', '2020-06-17 22:44:47', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (461, 9, 53, 'admin', '2020-06-17 22:44:47', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (462, 10, 46, 'admin', '2020-06-17 22:44:58', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (463, 10, 47, 'admin', '2020-06-17 22:44:58', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (464, 10, 48, 'admin', '2020-06-17 22:44:58', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (465, 10, 50, 'admin', '2020-06-17 22:44:58', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (466, 10, 52, 'admin', '2020-06-17 22:44:58', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (467, 10, 60, 'admin', '2020-06-17 22:44:58', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (468, 10, 61, 'admin', '2020-06-17 22:44:58', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (469, 10, 53, 'admin', '2020-06-17 22:44:58', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (470, 2, 1, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (471, 2, 2, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (472, 2, 9, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (473, 2, 10, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (474, 2, 11, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (475, 2, 12, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (476, 2, 3, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (477, 2, 13, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (478, 2, 14, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (479, 2, 15, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (480, 2, 16, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (481, 2, 4, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (482, 2, 17, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (483, 2, 18, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (484, 2, 19, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (485, 2, 20, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (486, 2, 5, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (487, 2, 21, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (488, 2, 22, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (489, 2, 23, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (490, 2, 24, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (491, 2, 7, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (492, 2, 31, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (493, 2, 32, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (494, 2, 33, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (495, 2, 34, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (496, 2, 8, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (497, 2, 43, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (498, 2, 6, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (499, 2, 38, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (500, 2, 44, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (501, 2, 41, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (502, 2, 35, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (503, 2, 46, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (504, 2, 47, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (505, 2, 48, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (506, 2, 55, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (507, 2, 56, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (508, 2, 57, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (509, 2, 58, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (510, 2, 59, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (511, 2, 50, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (512, 2, 52, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (513, 2, 60, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (514, 2, 61, 'admin', '2020-06-17 22:45:27', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (515, 2, 53, 'admin', '2020-06-17 22:45:27', NULL, NULL);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `salt` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '盐',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮箱',
  `mobile` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态  0：禁用   1：正常',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '机构ID',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `last_update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` tinyint(4) NULL DEFAULT 0 COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`id`, `name`, `email`, `mobile`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', 'bd1718f058d8a02468134432b8656a86', 'YzcmCZNvbXocrsz9dm8e', 'admin@qq.com', '13612345678', 1, 4, 'admin', '2018-08-14 11:11:11', 'admin', '2018-08-14 11:11:11', 0);
INSERT INTO `sys_user` VALUES (2, 'Louis', '9ec9750e709431dad22365cabc5c625482e574c74adaebba7dd02f1129e4ce1d', 'YzcmCZNvbXocrsz9dm8e', 'louis@qq.com', '18200932231', 1, 6, 'admin', '2018-08-14 11:11:11', 'admin', '2018-08-14 11:11:11', 0);
INSERT INTO `sys_user` VALUES (3, 'Kobe', '9ec9750e709431dad22365cabc5c625482e574c74adaebba7dd02f1129e4ce1d', 'YzcmCZNvbXocrsz9dm8e', 'kobe@qq.com', '18200932232', 1, 7, 'admin', '2018-08-14 11:11:11', 'admin', '2018-08-14 11:11:11', 0);
INSERT INTO `sys_user` VALUES (4, 'Ryzin', 'd4ed541279e0b82baba5fc19ebd11f5c', '1d9b1868eeb24496834a', 'iverson@qq.com', '18200932233', 1, 8, 'admin', '2018-08-14 11:11:11', 'admin', '2020-06-12 20:36:52', 0);
INSERT INTO `sys_user` VALUES (5, 'Iverson5', '9ec9750e709431dad22365cabc5c625482e574c74adaebba7dd02f1129e4ce1d', 'YzcmCZNvbXocrsz9dm8e', 'iverson@qq.com', '18200932238', 1, 12, 'admin', '2018-08-14 11:11:11', 'admin', '2020-05-31 15:09:05', 0);
INSERT INTO `sys_user` VALUES (13, 'teacher', 'e9e8d75b4aecf4a61d39e0d27bca1ea3', '4d491216cc7c46e58497', 'test@qq.com', '13889700022', 1, 1, 'admin', '2020-05-18 21:38:17', 'admin', '2020-05-18 21:45:24', 0);
INSERT INTO `sys_user` VALUES (14, 'gyc', '87f3003b3f02add86b2ed4e6ff8abdfa', 'c82a51d24a3b4bdfa316', 'test@qq.com', '13889700023', 1, 1, 'admin', '2020-05-31 16:16:59', 'admin', '2020-05-31 16:17:43', 0);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色ID',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `last_update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与角色对应关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user_role` VALUES (2, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user_role` VALUES (3, 3, 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user_role` VALUES (5, 13, 11, 'admin', '2020-05-18 21:45:24', NULL, NULL);
INSERT INTO `sys_user_role` VALUES (7, 5, 9, 'admin', '2020-05-31 15:09:05', NULL, NULL);
INSERT INTO `sys_user_role` VALUES (8, 14, 9, 'admin', '2020-05-31 16:17:43', NULL, NULL);
INSERT INTO `sys_user_role` VALUES (9, 14, 2, 'admin', '2020-05-31 16:17:43', NULL, NULL);
INSERT INTO `sys_user_role` VALUES (10, 4, 10, 'admin', '2020-06-12 20:36:52', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
