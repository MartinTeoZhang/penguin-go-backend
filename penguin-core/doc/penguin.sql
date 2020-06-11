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

 Date: 11/06/2020 00:22:04
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
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fun_exp
-- ----------------------------
INSERT INTO `fun_exp` VALUES (1, 'exo1', 2, '[\\\'按键实验\\\',\\\'脑电实验\\\']', '{\\\'paymentMin\\\':\\\'2\\\',\\\'paymentMax\\\':\\\'5\\\'}', '110', 1, '630', 'conetententoet', '[{\\\'dateValue\\\':1587002821746,\\\'timeValue\\\':[1587002821746,1587002821746]},{\\\'dateValue\\\':1587002837428,\\\'timeValue\\\':[1587002837428,1587002837428],\\\'key\\\':1587002837428},{\\\'dateValue\\\':1587002838216,\\\'timeValue\\\':[1587002838216,1587002838216],\\\'key\\\':1587002838216}]', 7, '[\\\'无近视\\\',\\\'右利手\\\']', '[\\\'提交后直接发布\\\']', '23142313', '[]', 'nontentoente', NULL, NULL, NULL, NULL);
INSERT INTO `fun_exp` VALUES (2, 'exp2', 2, '[\\\'按键实验\\\',\\\'问卷实验\\\']', '{\\\'paymentMin\\\':\\\'1111\\\',\\\'paymentMax\\\':\\\'10000\\\'}', '1101101101101101101101101101101101101101', 9, '63-dwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww', 'contentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentconte', '[{\\\'dateValue\\\':1587007494949,\\\'timeValue\\\':[1587007494949,1587007494949]},{\\\'dateValue\\\':1587007497753,\\\'timeValue\\\':[1587007497753,1587007497753],\\\'key\\\':1587007497753},{\\\'dateValue\\\':1587007498260,\\\'timeValue\\\':[1587007498260,1587007498260],\\\'key\\\':1587007498260},{\\\'dateValue\\\':1587007499231,\\\'timeValue\\\':[1587007499231,1587007499231],\\\'key\\\':1587007499231},{\\\'dateValue\\\':1587007499800,\\\'timeValue\\\':[1587007499800,1587007499800],\\\'key\\\':1587007499800},{\\\'dateValue\\\':1587007500334,\\\'timeValue\\\':[1587007500334,1587007500334],\\\'key\\\':1587007500334},{\\\'dateValue\\\':1587007500859,\\\'timeValue\\\':[1587007500859,1587007500859],\\\'key\\\':1587007500859},{\\\'dateValue\\\':1587007501909,\\\'timeValue\\\':[1587007501909,1587007501909],\\\'key\\\':1587007501909},{\\\'dateValue\\\':1587007502434,\\\'timeValue\\\':[1587007502434,1587007502434],\\\'key\\\':1587007502434}]', 1, '[\\\'无近视\\\',\\\'矫正视力\\\',\\\'无高度近视\\\',\\\'右利手\\\',\\\'左利手\\\']', '[\\\'提交后直接发布\\\',\\\'排除低分被试\\\',\\\'人数到达上限时停止发布\\\',\\\'排除职业被试\\\']', NULL, '[]', 'notenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenotenot', NULL, NULL, NULL, NULL);
INSERT INTO `fun_exp` VALUES (3, 'exp3', 1, '[\\\'按键实验\\\',\\\'脑电实验\\\']', '{\\\'paymentMin\\\':\\\'2\\\',\\\'paymentMax\\\':\\\'5\\\'}', '110', 1, '630', 'conetententoet', '[{\\\'dateValue\\\':1587002821746,\\\'timeValue\\\':[1587002821746,1587002821746]},{\\\'dateValue\\\':1587002837428,\\\'timeValue\\\':[1587002837428,1587002837428],\\\'key\\\':1587002837428},{\\\'dateValue\\\':1587002838216,\\\'timeValue\\\':[1587002838216,1587002838216],\\\'key\\\':1587002838216}]', 7, '[\\\'无近视\\\',\\\'右利手\\\']', '[\\\'提交后直接发布\\\']', '23142313', '[]', 'nontentoente', NULL, NULL, NULL, NULL);
INSERT INTO `fun_exp` VALUES (4, '实验3', 2, '[\\\'问卷实验\\\']', '{\\\'paymentMin\\\':\\\'20\\\',\\\'paymentMax\\\':\\\'20\\\'}', '13800000000', 1, 'didian', '', '[{\\\'dateValue\\\':1590401316838,\\\'timeValue\\\':[1590401316838,1590401316838]}]', 1, '[]', '[\\\'提交后直接发布\\\']', NULL, '[]', '', NULL, NULL, NULL, NULL);
INSERT INTO `fun_exp` VALUES (5, '3132', 2, '[\\\'问卷实验\\\']', '{\\\'paymentMin\\\':\\\'0\\\',\\\'paymentMax\\\':\\\'0\\\'}', '0', 1, '0', '', '[{\\\'dateValue\\\':1590401940443,\\\'timeValue\\\':[1590401940443,1590401940443]}]', 1, '[]', '[\\\'提交后直接发布\\\']', NULL, '[]', '', NULL, NULL, NULL, NULL);
INSERT INTO `fun_exp` VALUES (6, '12', 2, '[\\\'脑电实验\\\']', '{\\\'paymentMin\\\':\\\'0\\\',\\\'paymentMax\\\':\\\'0\\\'}', '3', 1, '3', '', '[{\\\'dateValue\\\':1590412426827,\\\'timeValue\\\':[1590412426827,1590412426827]}]', 1, '[]', '[\\\'提交后直接发布\\\']', NULL, '[]', '', NULL, NULL, NULL, NULL);
INSERT INTO `fun_exp` VALUES (7, 'exp1', 2, '[\\\'按键实验\\\',\\\'脑电实验\\\']', '{\\\'paymentMin\\\':\\\'2\\\',\\\'paymentMax\\\':\\\'5\\\'}', '110', 1, '630', 'conetententoet', '[{\\\'dateValue\\\':1587002821746,\\\'timeValue\\\':[1587002821746,1587002821746]},{\\\'dateValue\\\':1587002837428,\\\'timeValue\\\':[1587002837428,1587002837428],\\\'key\\\':1587002837428},{\\\'dateValue\\\':1587002838216,\\\'timeValue\\\':[1587002838216,1587002838216],\\\'key\\\':1587002838216}]', 7, '[\\\'无近视\\\',\\\'右利手\\\']', '[\\\'提交后直接发布\\\']', '23142313', '[]', 'nontentoente', NULL, NULL, NULL, NULL);
INSERT INTO `fun_exp` VALUES (8, 'exp6', 2, '[\\\'按键实验\\\',\\\'脑电实验\\\']', '{\\\'paymentMin\\\':\\\'2\\\',\\\'paymentMax\\\':\\\'5\\\'}', '110', 1, '630', 'conetententoet', '[{\\\'dateValue\\\':1587002821746,\\\'timeValue\\\':[1587002821746,1587002821746]},{\\\'dateValue\\\':1587002837428,\\\'timeValue\\\':[1587002837428,1587002837428],\\\'key\\\':1587002837428},{\\\'dateValue\\\':1587002838216,\\\'timeValue\\\':[1587002838216,1587002838216],\\\'key\\\':1587002838216}]', 7, '[\\\'无近视\\\',\\\'右利手\\\']', '[\\\'提交后直接发布\\\']', '23142313', '[]', 'nontentoente', NULL, NULL, NULL, NULL);
INSERT INTO `fun_exp` VALUES (9, 'exp7', 2, '[\\\'按键实验\\\',\\\'脑电实验\\\']', '{\\\'paymentMin\\\':\\\'2\\\',\\\'paymentMax\\\':\\\'5\\\'}', '110', 1, '630', 'conetententoet', '[{\\\'dateValue\\\':1587002821746,\\\'timeValue\\\':[1587002821746,1587002821746]},{\\\'dateValue\\\':1587002837428,\\\'timeValue\\\':[1587002837428,1587002837428],\\\'key\\\':1587002837428},{\\\'dateValue\\\':1587002838216,\\\'timeValue\\\':[1587002838216,1587002838216],\\\'key\\\':1587002838216}]', 7, '[\\\'无近视\\\',\\\'右利手\\\']', '[\\\'提交后直接发布\\\']', '23142313', '[]', 'nontentoente', NULL, NULL, NULL, NULL);
INSERT INTO `fun_exp` VALUES (10, 'exp8', 2, '[\\\'按键实验\\\',\\\'脑电实验\\\']', '{\\\'paymentMin\\\':\\\'2\\\',\\\'paymentMax\\\':\\\'5\\\'}', '110', 1, '630', 'conetententoet', '[{\\\'dateValue\\\':1587002821746,\\\'timeValue\\\':[1587002821746,1587002821746]},{\\\'dateValue\\\':1587002837428,\\\'timeValue\\\':[1587002837428,1587002837428],\\\'key\\\':1587002837428},{\\\'dateValue\\\':1587002838216,\\\'timeValue\\\':[1587002838216,1587002838216],\\\'key\\\':1587002838216}]', 7, '[\\\'无近视\\\',\\\'右利手\\\']', '[\\\'提交后直接发布\\\']', '23142313', '[]', 'nontentoente', NULL, NULL, NULL, NULL);
INSERT INTO `fun_exp` VALUES (11, 'exp9', 2, '[\\\'按键实验\\\',\\\'脑电实验\\\']', '{\\\'paymentMin\\\':\\\'2\\\',\\\'paymentMax\\\':\\\'5\\\'}', '110', 1, '630', 'conetententoet', '[{\\\'dateValue\\\':1587002821746,\\\'timeValue\\\':[1587002821746,1587002821746]},{\\\'dateValue\\\':1587002837428,\\\'timeValue\\\':[1587002837428,1587002837428],\\\'key\\\':1587002837428},{\\\'dateValue\\\':1587002838216,\\\'timeValue\\\':[1587002838216,1587002838216],\\\'key\\\':1587002838216}]', 7, '[\\\'无近视\\\',\\\'右利手\\\']', '[\\\'提交后直接发布\\\']', '23142313', '[]', 'nontentoente', NULL, NULL, NULL, NULL);
INSERT INTO `fun_exp` VALUES (12, 'exp10', 2, '[\\\'按键实验\\\',\\\'脑电实验\\\']', '{\\\'paymentMin\\\':\\\'2\\\',\\\'paymentMax\\\':\\\'5\\\'}', '110', 1, '630', 'conetententoet', '[{\\\'dateValue\\\':1587002821746,\\\'timeValue\\\':[1587002821746,1587002821746]},{\\\'dateValue\\\':1587002837428,\\\'timeValue\\\':[1587002837428,1587002837428],\\\'key\\\':1587002837428},{\\\'dateValue\\\':1587002838216,\\\'timeValue\\\':[1587002838216,1587002838216],\\\'key\\\':1587002838216}]', 7, '[\\\'无近视\\\',\\\'右利手\\\']', '[\\\'提交后直接发布\\\']', '23142313', '[]', 'nontentoente', NULL, NULL, NULL, NULL);
INSERT INTO `fun_exp` VALUES (13, '实验项目', 1, '[\\\'问卷实验\\\']', '{\\\'paymentMin\\\':\\\'0\\\',\\\'paymentMax\\\':\\\'0\\\'}', '32321312', 1, '地点', '', '[{\\\'dateValue\\\':1590505605246,\\\'timeValue\\\':[\\\'2020-05-26T15:10:46.000Z\\\',\\\'2020-05-26T15:59:59.000Z\\\']},{\\\'dateValue\\\':1590506054738,\\\'timeValue\\\':[\\\'2020-05-26T15:14:22.000Z\\\',\\\'2020-05-26T15:59:59.000Z\\\'],\\\'key\\\':1590506054738}]', 1, '[]', '[\\\'提交后直接发布\\\']', NULL, '[]', '', NULL, NULL, NULL, NULL);
INSERT INTO `fun_exp` VALUES (14, 'testForTimeStamp', 1, '[\\\'按键实验\\\']', '{\\\'paymentMin\\\':\\\'23\\\',\\\'paymentMax\\\':\\\'24\\\'}', '110', 1, '630', '', '[{\\\'dateValue\\\':1591789504771,\\\'timeValue\\\':[1591789504771,1591789504771]}]', 1, '[]', '[\\\'提交后直接发布\\\']', NULL, '[]', '', NULL, NULL, NULL, NULL);
INSERT INTO `fun_exp` VALUES (15, 'testForStampTime2', 1, '[\\\'按键实验\\\',\\\'脑电实验\\\']', '{\\\'paymentMin\\\':\\\'23\\\',\\\'paymentMax\\\':\\\'24\\\'}', '110', 1, '631', '', '[{\\\'dateValue\\\':1591790190543,\\\'timeValue\\\':[1591790190543,1591790190543]}]', 1, '[]', '[\\\'提交后直接发布\\\']', NULL, '[]', '', 'admin', '2020-06-10 19:56:57', NULL, NULL);
INSERT INTO `fun_exp` VALUES (16, 'testForUserExp', 1, '[\\\'按键实验\\\']', '{\\\'paymentMin\\\':\\\'23\\\',\\\'paymentMax\\\':\\\'214\\\'}', '1241', 1, '630', '', '[{\\\'dateValue\\\':1591802370534,\\\'timeValue\\\':[1591802370534,1591802370534]},{\\\'dateValue\\\':1591802394423,\\\'timeValue\\\':[1591802394423,1591802394423],\\\'key\\\':1591802394423}]', 1, '[]', '[\\\'提交后直接发布\\\']', NULL, '[]', '', 'admin', '2020-06-10 23:19:58', NULL, NULL);
INSERT INTO `fun_exp` VALUES (17, 'testForUserExp', 1, '[\\\'问卷实验\\\',\\\'脑电实验\\\']', '{\\\'paymentMin\\\':\\\'23\\\',\\\'paymentMax\\\':\\\'214\\\'}', '312', 1, '123', '', '[{\\\'dateValue\\\':1591802370534,\\\'timeValue\\\':[1591802370534,1591802370534]},{\\\'dateValue\\\':1591802394423,\\\'timeValue\\\':[1591802394423,1591802394423],\\\'key\\\':1591802394423}]', 1, '[]', '[\\\'提交后直接发布\\\']', NULL, '[]', '', 'admin', '2020-06-10 23:21:22', NULL, NULL);
INSERT INTO `fun_exp` VALUES (18, 'testForUserExp_Id', 1, '[\\\'脑电实验\\\']', '{\\\'paymentMin\\\':\\\'3\\\',\\\'paymentMax\\\':\\\'12\\\'}', '412', 1, '4124', '', '[{\\\'dateValue\\\':1591804636230,\\\'timeValue\\\':[1591804636230,1591804636230]}]', 1, '[]', '[\\\'提交后直接发布\\\']', NULL, '[]', '', 'admin', '2020-06-10 23:57:46', NULL, NULL);

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
INSERT INTO `fun_exp_user` VALUES (1, 1, 1, 'admin', '2020-05-31 16:07:58', NULL, NULL);
INSERT INTO `fun_exp_user` VALUES (2, 6, 1, 'admin', '2020-05-31 16:08:15', NULL, NULL);
INSERT INTO `fun_exp_user` VALUES (9, 1, 14, 'gyc', '2020-05-31 16:18:58', NULL, NULL);
INSERT INTO `fun_exp_user` VALUES (19, 2, 1, 'admin', '2020-05-31 20:44:16', NULL, NULL);
INSERT INTO `fun_exp_user` VALUES (20, 4, 1, 'admin', '2020-05-31 20:46:03', NULL, NULL);
INSERT INTO `fun_exp_user` VALUES (21, 5, 1, 'admin', '2020-05-31 22:39:26', NULL, NULL);
INSERT INTO `fun_exp_user` VALUES (22, 12, 1, 'admin', '2020-05-31 22:39:42', NULL, NULL);
INSERT INTO `fun_exp_user` VALUES (23, 11, 1, 'admin', '2020-05-31 22:53:44', NULL, NULL);
INSERT INTO `fun_exp_user` VALUES (24, 10, 1, 'admin', '2020-05-31 22:56:53', NULL, NULL);
INSERT INTO `fun_exp_user` VALUES (25, 9, 1, 'admin', '2020-05-31 23:06:09', NULL, NULL);
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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fun_user_exp
-- ----------------------------
INSERT INTO `fun_user_exp` VALUES (1, 1, 0, 'admin', '2020-06-10 23:19:58', NULL, NULL);
INSERT INTO `fun_user_exp` VALUES (2, 1, 0, 'admin', '2020-06-10 23:21:22', NULL, NULL);
INSERT INTO `fun_user_exp` VALUES (3, 1, 18, 'admin', '2020-06-10 23:57:46', NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 4322 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_log
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单管理' ROW_FORMAT = Dynamic;

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
INSERT INTO `sys_menu` VALUES (48, '实验管理', 47, '/CustomFunction/ExperimentManagement', 'fun:subject:expmng', 1, 'fa fa-list-alt fa-lg fa-fw', 1, 'admin', '2020-04-09 23:10:12', 'admin', '2020-06-10 15:54:20', 0);
INSERT INTO `sys_menu` VALUES (50, '被试实验管理', 0, '', '', 1, 'fa fa-object-ungroup fa-lg fa-fw', 8, 'admin', '2020-04-09 23:11:42', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (51, '被试管理', 50, '', '', 1, 'fa fa-users fa-lg fa-fw', 1, 'admin', '2020-04-09 23:12:24', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (52, '实验管理', 50, '', '', 1, 'fa fa-list-alt fa-lg fa-fw', 2, 'admin', '2020-04-09 23:13:04', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (53, '账户管理', 0, '', '', 1, 'fa fa-user-circle fa-lg fa-fw', 9, 'admin', '2020-04-09 23:13:35', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (54, '被试管理', 47, '', 'fun:subject:peomng', 1, 'fa fa-users fa-lg fa-fw', 0, 'admin', '2020-06-10 15:43:24', 'admin', '2020-06-10 15:45:16', 0);
INSERT INTO `sys_menu` VALUES (55, '添加实验', 48, '', 'fun:subject:addexp', 2, '', 0, 'admin', '2020-06-10 15:44:35', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (56, '修改实验', 48, '', 'fun:subject:editexp', 2, '', 0, 'admin', '2020-06-10 15:47:23', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (57, '查看实验', 48, '', 'fun:subject:viewexp', 2, '', 0, 'admin', '2020-06-10 15:48:18', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (58, '删除实验', 48, '', 'fun:subject:deleteexp', 2, '', 0, 'admin', '2020-06-10 15:48:44', NULL, NULL, 0);

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
) ENGINE = InnoDB AUTO_INCREMENT = 456 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色与菜单对应关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1, 2, 25, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 2, 26, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (3, 2, 27, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (4, 2, 28, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (5, 2, 29, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (6, 2, 30, NULL, NULL, NULL, NULL);
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
INSERT INTO `sys_role_menu` VALUES (388, 2, 1, 'admin', '2018-09-23 19:51:53', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (389, 2, 2, 'admin', '2018-09-23 19:51:53', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (390, 2, 9, 'admin', '2018-09-23 19:51:53', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (391, 2, 3, 'admin', '2018-09-23 19:51:53', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (392, 2, 13, 'admin', '2018-09-23 19:51:53', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (393, 2, 17, 'admin', '2018-09-23 19:51:53', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (394, 2, 5, 'admin', '2018-09-23 19:51:53', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (395, 2, 21, 'admin', '2018-09-23 19:51:53', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (396, 2, 7, 'admin', '2018-09-23 19:51:53', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (397, 2, 31, 'admin', '2018-09-23 19:51:53', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (398, 2, 8, 'admin', '2018-09-23 19:51:53', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (399, 2, 6, 'admin', '2018-09-23 19:51:53', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (400, 2, 35, 'admin', '2018-09-23 19:51:53', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (401, 2, 28, 'admin', '2018-09-23 19:51:53', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (402, 2, 29, 'admin', '2018-09-23 19:51:53', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (403, 2, 30, 'admin', '2018-09-23 19:51:53', NULL, NULL);
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
INSERT INTO `sys_role_menu` VALUES (445, 9, 46, 'admin', '2020-04-09 23:14:57', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (446, 9, 50, 'admin', '2020-04-09 23:14:57', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (447, 9, 52, 'admin', '2020-04-09 23:14:57', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (448, 9, 53, 'admin', '2020-04-09 23:14:57', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (449, 10, 46, 'admin', '2020-04-09 23:15:15', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (450, 10, 47, 'admin', '2020-04-09 23:15:15', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (451, 10, 49, 'admin', '2020-04-09 23:15:15', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (452, 10, 50, 'admin', '2020-04-09 23:15:15', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (453, 10, 52, 'admin', '2020-04-09 23:15:15', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (454, 10, 53, 'admin', '2020-04-09 23:15:15', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (455, 12, 46, 'admin', '2020-05-31 15:12:05', NULL, NULL);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `salt` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '盐',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态  0：禁用   1：正常',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '机构ID',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `last_update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` tinyint(4) NULL DEFAULT 0 COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', 'bd1718f058d8a02468134432b8656a86', 'YzcmCZNvbXocrsz9dm8e', 'admin@qq.com', '13612345678', 1, 4, 'admin', '2018-08-14 11:11:11', 'admin', '2018-08-14 11:11:11', 0);
INSERT INTO `sys_user` VALUES (2, 'Louis', '9ec9750e709431dad22365cabc5c625482e574c74adaebba7dd02f1129e4ce1d', 'YzcmCZNvbXocrsz9dm8e', 'louis@qq.com', '18200932238', 1, 6, 'admin', '2018-08-14 11:11:11', 'admin', '2018-08-14 11:11:11', 0);
INSERT INTO `sys_user` VALUES (3, 'Kobe', '9ec9750e709431dad22365cabc5c625482e574c74adaebba7dd02f1129e4ce1d', 'YzcmCZNvbXocrsz9dm8e', 'kobe@qq.com', '18200932238', 1, 7, 'admin', '2018-08-14 11:11:11', 'admin', '2018-08-14 11:11:11', 0);
INSERT INTO `sys_user` VALUES (4, 'Iverson', '9ec9750e709431dad22365cabc5c625482e574c74adaebba7dd02f1129e4ce1d', 'YzcmCZNvbXocrsz9dm8e', 'iverson@qq.com', '18200932238', 1, 8, 'admin', '2018-08-14 11:11:11', 'admin', '2020-05-31 15:08:02', 0);
INSERT INTO `sys_user` VALUES (5, 'Iverson5', '9ec9750e709431dad22365cabc5c625482e574c74adaebba7dd02f1129e4ce1d', 'YzcmCZNvbXocrsz9dm8e', 'iverson@qq.com', '18200932238', 1, 12, 'admin', '2018-08-14 11:11:11', 'admin', '2020-05-31 15:09:05', 0);
INSERT INTO `sys_user` VALUES (13, 'teacher', 'e9e8d75b4aecf4a61d39e0d27bca1ea3', '4d491216cc7c46e58497', 'test@qq.com', '13889700023', 1, 1, 'admin', '2020-05-18 21:38:17', 'admin', '2020-05-18 21:45:24', 0);
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
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与角色对应关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user_role` VALUES (2, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user_role` VALUES (3, 3, 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user_role` VALUES (5, 13, 11, 'admin', '2020-05-18 21:45:24', NULL, NULL);
INSERT INTO `sys_user_role` VALUES (6, 4, 10, 'admin', '2020-05-31 15:08:03', NULL, NULL);
INSERT INTO `sys_user_role` VALUES (7, 5, 9, 'admin', '2020-05-31 15:09:05', NULL, NULL);
INSERT INTO `sys_user_role` VALUES (8, 14, 9, 'admin', '2020-05-31 16:17:43', NULL, NULL);
INSERT INTO `sys_user_role` VALUES (9, 14, 2, 'admin', '2020-05-31 16:17:43', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
