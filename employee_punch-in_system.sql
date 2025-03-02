/*
 Navicat Premium Data Transfer

 Source Server         : shi
 Source Server Type    : MySQL
 Source Server Version : 80035 (8.0.35)
 Source Host           : localhost:3306
 Source Schema         : employee_punch-in_system

 Target Server Type    : MySQL
 Target Server Version : 80035 (8.0.35)
 File Encoding         : 65001

 Date: 02/03/2025 20:21:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dakainfo
-- ----------------------------
DROP TABLE IF EXISTS `dakainfo`;
CREATE TABLE `dakainfo`  (
  `index` bigint NOT NULL AUTO_INCREMENT,
  `employeeNo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `employeeName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `department` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `startDate` date NULL DEFAULT NULL,
  `startTime` time NULL DEFAULT NULL,
  PRIMARY KEY (`index` DESC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dakainfo
-- ----------------------------
INSERT INTO `dakainfo` VALUES (18, '0001', 'admin', '', '', '2025-02-07', '22:32:03');
INSERT INTO `dakainfo` VALUES (17, '0011', 'Quincy', '技术部', '项目经理', '2025-02-07', '00:07:46');
INSERT INTO `dakainfo` VALUES (16, '0011', 'Quincy', '技术部', '项目经理', '2025-02-06', '11:57:36');
INSERT INTO `dakainfo` VALUES (15, '0015', 'Wang', '财政部', '会计', '2025-02-06', '11:32:44');
INSERT INTO `dakainfo` VALUES (14, '0012', 'XiaoMing', '技术部', '技术工程师', '2025-02-05', '11:28:04');
INSERT INTO `dakainfo` VALUES (13, '0011', 'Quincy', '技术部', '项目经理', '2025-02-05', '11:26:31');
INSERT INTO `dakainfo` VALUES (12, '0011', 'Quincy', '技术部', '项目经理', '2025-02-04', '15:36:21');
INSERT INTO `dakainfo` VALUES (11, '0012', 'XiaoMing', '技术部', '技术工程师', '2025-02-04', '15:27:30');
INSERT INTO `dakainfo` VALUES (10, '0012', 'XiaoMing', '技术部', '技术工程师', '2025-02-03', '23:31:19');
INSERT INTO `dakainfo` VALUES (9, '0011', 'Quincy', '技术部', '项目经理', '2025-02-03', '16:33:33');
INSERT INTO `dakainfo` VALUES (6, '0001', 'admin', '', '', '2025-01-27', NULL);
INSERT INTO `dakainfo` VALUES (5, '0014', 'ZhangMeng', '技术部', '程序员', '2025-01-27', NULL);
INSERT INTO `dakainfo` VALUES (4, '0011', 'Quincy', '技术部', '项目经理', '2025-01-27', NULL);
INSERT INTO `dakainfo` VALUES (3, '0001', 'admin', '', '', '2025-01-27', NULL);

-- ----------------------------
-- Table structure for employeeinfo
-- ----------------------------
DROP TABLE IF EXISTS `employeeinfo`;
CREATE TABLE `employeeinfo`  (
  `employeeNo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `employeeName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `employeeGender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `department` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `photograph` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`employeeNo`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employeeinfo
-- ----------------------------
INSERT INTO `employeeinfo` VALUES ('0000', 'Shi', '男', '2025-02-05', '行政部', '行政经理', '15239421841', '1040054624@qq.com', 'C:/code/employee_punch-in_system/QQOldPIC/1-14122G11113-50.jpg', '2d55bd2a2e0df1afa70e9049dd420045', '管理员');
INSERT INTO `employeeinfo` VALUES ('0001', 'admin', NULL, '2000-01-01', NULL, NULL, '10086', NULL, 'C:\\code\\employee_punch-in_system\\QQOldPIC\\1-14122G11115.jpg', 'e10adc3949ba59abbe56e057f20f883e', '管理员');
INSERT INTO `employeeinfo` VALUES ('0011', 'Quincy', '男', '2025-01-25', '技术部', '项目经理', '110120119', '10022@qq.com', 'C:\\code\\employee_punch-in_system\\QQOldPIC\\1-14122G11110.jpg', 'e10adc3949ba59abbe56e057f20f883e', '管理员');
INSERT INTO `employeeinfo` VALUES ('0012', 'XiaoMing', '男', '2025-01-25', '技术部', '技术工程师', '123456789', '123456789@163.com', 'C:\\code\\employee_punch-in_system\\QQOldPIC\\1-14122G11110-50.jpg', 'e10adc3949ba59abbe56e057f20f883e', '员工');
INSERT INTO `employeeinfo` VALUES ('0013', 'LiHua', '男', '2025-01-25', '技术部', '软件工程师', '214532156', '214532156@163.com', 'C:\\code\\employee_punch-in_system\\QQOldPIC\\1-14122G11112-50.jpg', 'e10adc3949ba59abbe56e057f20f883e', '员工');
INSERT INTO `employeeinfo` VALUES ('0014', 'ZhangMeng', '女', '2025-01-25', '技术部', '程序员', '546513164', '546513164@163.com', 'C:\\code\\employee_punch-in_system\\QQOldPIC\\1-14122G11110-51.jpg', 'e10adc3949ba59abbe56e057f20f883e', '员工');
INSERT INTO `employeeinfo` VALUES ('0015', 'Wang', '女', '2025-02-06', '财政部', '会计', '1211111111', '1211111111@qq.com', 'C:/code/employee_punch-in_system/QQOldPIC/1-14122G11136-50.jpg', 'e10adc3949ba59abbe56e057f20f883e', '员工');
INSERT INTO `employeeinfo` VALUES ('0016', 'Wu', '男', '2025-02-06', '行政部', '文件档案专员', '122222222', '122222222@qq.com', 'C:/code/employee_punch-in_system/QQOldPIC/1-14122G11113.jpg', 'e10adc3949ba59abbe56e057f20f883e', '员工');

-- ----------------------------
-- Table structure for qiantuiinfo
-- ----------------------------
DROP TABLE IF EXISTS `qiantuiinfo`;
CREATE TABLE `qiantuiinfo`  (
  `index` int NOT NULL AUTO_INCREMENT,
  `employeeNo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `employeeName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `department` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `leaveDate` date NULL DEFAULT NULL,
  `leaveTime` time NULL DEFAULT NULL,
  PRIMARY KEY (`index`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qiantuiinfo
-- ----------------------------
INSERT INTO `qiantuiinfo` VALUES (1, '0001', 'admin', '', '', NULL, '17:00:33');
INSERT INTO `qiantuiinfo` VALUES (8, '0011', 'Quincy', '技术部', '项目经理', '2025-02-03', '23:01:01');
INSERT INTO `qiantuiinfo` VALUES (9, '0012', 'XiaoMing', '技术部', '技术工程师', '2025-02-03', '23:31:22');
INSERT INTO `qiantuiinfo` VALUES (10, '0012', 'XiaoMing', '技术部', '技术工程师', '2025-02-04', '15:27:34');
INSERT INTO `qiantuiinfo` VALUES (12, '0011', 'Quincy', '技术部', '项目经理', '2025-02-04', '15:43:07');
INSERT INTO `qiantuiinfo` VALUES (13, '0011', 'Quincy', '技术部', '项目经理', '2025-02-06', '22:48:49');
INSERT INTO `qiantuiinfo` VALUES (14, '0011', 'Quincy', '技术部', '项目经理', '2025-02-07', '15:21:29');
INSERT INTO `qiantuiinfo` VALUES (15, '0001', 'admin', '', '', '2025-02-07', '22:32:09');

-- ----------------------------
-- Table structure for qingjiainfo
-- ----------------------------
DROP TABLE IF EXISTS `qingjiainfo`;
CREATE TABLE `qingjiainfo`  (
  `index` int NOT NULL AUTO_INCREMENT,
  `employeeNo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `employeeName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `department` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `startTime` datetime NULL DEFAULT NULL,
  `endTime` datetime NULL DEFAULT NULL,
  `days` int NULL DEFAULT NULL,
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `permit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`index`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qingjiainfo
-- ----------------------------
INSERT INTO `qingjiainfo` VALUES (2, '0011', 'Quincy', '技术部', '项目经理', '2025-01-28 16:13:17', '2025-01-31 16:13:17', 3, '过年', '是');
INSERT INTO `qingjiainfo` VALUES (3, '', '', '', '', '2025-01-30 13:30:43', '2025-01-30 13:30:43', 0, '', '是');
INSERT INTO `qingjiainfo` VALUES (4, '0011', 'Quincy', '技术部', '项目经理', '2025-01-30 13:42:12', '2025-02-02 13:42:12', 3, '过年回家走亲戚', '否');
INSERT INTO `qingjiainfo` VALUES (5, '0011', 'Quincy', '技术部', '项目经理', '2025-02-02 16:39:59', '2025-03-01 16:39:59', 27, '', '是');
INSERT INTO `qingjiainfo` VALUES (6, '0011', 'Quincy', '技术部', '项目经理', '2025-02-02 16:42:04', '2025-02-05 16:42:04', 3, '', '否');
INSERT INTO `qingjiainfo` VALUES (7, '0011', 'Quincy', '技术部', '项目经理', '2025-02-07 00:41:25', '2025-02-07 00:41:25', 0, '', '否');

-- ----------------------------
-- Table structure for user_test
-- ----------------------------
DROP TABLE IF EXISTS `user_test`;
CREATE TABLE `user_test`  (
  `no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `gender` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `date` datetime NULL DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_bin NULL DEFAULT NULL,
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_test
-- ----------------------------
INSERT INTO `user_test` VALUES ('1', 'admin', '男', '2025-01-19 15:26:21', '管理员', 'e10adc3949ba59abbe56e057f20f883e', '管理员');
INSERT INTO `user_test` VALUES ('2', 'Quincy', '男', '2021-03-04 00:00:00', '项目经理', 'e10adc3949ba59abbe56e057f20f883e', '管理员');
INSERT INTO `user_test` VALUES ('3', 'Mary', '女', '2021-05-14 00:00:00', '程序员', 'e10adc3949ba59abbe56e057f20f883e', '管理员');

-- ----------------------------
-- Table structure for worktime
-- ----------------------------
DROP TABLE IF EXISTS `worktime`;
CREATE TABLE `worktime`  (
  `index` int NOT NULL AUTO_INCREMENT,
  `employeeNo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `employeeName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `workStartTimeNormal` time NULL DEFAULT NULL,
  `workStartTimeReal` time NULL DEFAULT NULL,
  `workEndTimeNormal` time NULL DEFAULT NULL,
  `workEndTimeReal` time NULL DEFAULT NULL,
  `workTime` float NULL DEFAULT NULL,
  `overTime` float NULL DEFAULT NULL,
  `beLate` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `leaveEarly` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`index`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of worktime
-- ----------------------------
INSERT INTO `worktime` VALUES (1, '0011', 'Quincy', '2025-02-03', '09:00:00', '16:33:33', '17:00:00', '23:01:01', 6.5, 6, NULL, NULL);
INSERT INTO `worktime` VALUES (2, '0012', 'XiaoMing', '2025-02-03', '09:00:00', '23:31:19', '17:00:00', '23:31:22', 0, 6.5, NULL, NULL);
INSERT INTO `worktime` VALUES (3, '0012', 'XiaoMing', '2025-02-04', '09:00:00', '15:27:30', '17:00:00', '15:27:34', 0, -1.5, NULL, NULL);
INSERT INTO `worktime` VALUES (4, '0011', 'Quincy', '2025-02-04', '09:00:00', '15:36:21', '17:00:00', '15:43:07', 0.1, 0, '是', '是');
INSERT INTO `worktime` VALUES (5, '0011', 'Quincy', '2025-02-05', '09:00:00', '11:26:31', '17:00:00', NULL, NULL, NULL, '是', NULL);
INSERT INTO `worktime` VALUES (6, '0012', 'XiaoMing', '2025-02-05', '09:00:00', '11:28:04', '17:00:00', NULL, NULL, NULL, '是', NULL);
INSERT INTO `worktime` VALUES (7, '0015', 'Wang', '2025-02-06', '09:00:00', '11:32:44', '17:00:00', NULL, NULL, NULL, '是', NULL);
INSERT INTO `worktime` VALUES (8, '0011', 'Quincy', '2025-02-06', '09:00:00', '11:57:36', '17:00:00', '22:48:49', 10.9, 5.8, '是', '否');
INSERT INTO `worktime` VALUES (9, '0011', 'Quincy', '2025-02-07', '09:00:00', '00:07:46', '17:00:00', '15:21:29', 15.2, 0, '否', '是');
INSERT INTO `worktime` VALUES (10, '0001', 'admin', '2025-02-07', '09:00:00', '22:32:03', '17:00:00', '22:32:09', 0, 5.5, '是', '否');

SET FOREIGN_KEY_CHECKS = 1;
