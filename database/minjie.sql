/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : minjie

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 03/07/2023 04:09:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for major
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major`  (
  `ID` int(0) NOT NULL,
  `name` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf16 COLLATE = utf16_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of major
-- ----------------------------
INSERT INTO `major` VALUES (1, '软件工程与数据技术系');
INSERT INTO `major` VALUES (2, '网络软件与系统安全系');
INSERT INTO `major` VALUES (3, '集成电路与智能系统系');
INSERT INTO `major` VALUES (4, '金融信息与工程管理系');
INSERT INTO `major` VALUES (5, '数字艺术与艺术传播系');

-- ----------------------------
-- Table structure for nodes
-- ----------------------------
DROP TABLE IF EXISTS `nodes`;
CREATE TABLE `nodes`  (
  `id` int(0) NOT NULL,
  `type` tinyint(1) UNSIGNED ZEROFILL NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `index` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0',
  `permiss` int(0) NULL DEFAULT NULL,
  `parent_id` int(0) NULL DEFAULT NULL,
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nodes
-- ----------------------------
INSERT INTO `nodes` VALUES (1, 1, 'Odometer', '/dashboard', '系统首页', 1, NULL, 'dashboard');
INSERT INTO `nodes` VALUES (2, 1, 'Calendar', '1', '学工模块', 2, NULL, 'dashboard');
INSERT INTO `nodes` VALUES (3, 1, NULL, '/import', '导入学生信息', 3, 2, 'dashboard');
INSERT INTO `nodes` VALUES (4, 1, NULL, '/importExcel', '导入基本信息', 4, 3, 'importExcel');
INSERT INTO `nodes` VALUES (5, 1, NULL, '/importGpa', '导入成绩信息', 5, 3, 'importGpa');
INSERT INTO `nodes` VALUES (6, 1, NULL, '/importVolun', '导入志愿服务信息', 6, 3, 'importVolun');
INSERT INTO `nodes` VALUES (7, 1, NULL, '/ScoreSummary', '导出学生信息', 7, 2, 'ScoreSummary');
INSERT INTO `nodes` VALUES (8, 1, 'Edit', '3', '评委模块', 8, NULL, 'dashboard');
INSERT INTO `nodes` VALUES (9, 1, NULL, '/pwGPA', '绩点审核', 9, 8, 'pwGPA');
INSERT INTO `nodes` VALUES (10, 1, NULL, '/pwVolun', '志愿时长审核', 10, 8, 'pwVolun');
INSERT INTO `nodes` VALUES (11, 1, NULL, '4', '各项打分', 11, 8, 'dashboard');
INSERT INTO `nodes` VALUES (12, 1, NULL, '/assessResearch', '学生科研情况', 12, 11, 'assessSci');
INSERT INTO `nodes` VALUES (13, 1, NULL, '/assessServePosition', '学生骨干服务', 13, 11, 'assessServePosition');
INSERT INTO `nodes` VALUES (14, 1, NULL, '/assessSocialActivity', '学生社会实践', 14, 11, 'assessSocialActivity');
INSERT INTO `nodes` VALUES (15, 1, NULL, '/assessStuConclusion', '学生学年总结', 15, 11, 'assessStuConclusion');
INSERT INTO `nodes` VALUES (16, 1, 'Setting', '/icon', '学生模块', 16, NULL, 'dashboard');
INSERT INTO `nodes` VALUES (17, 1, NULL, '/checkgpa', '我的成绩', 17, 16, 'checkgpa');
INSERT INTO `nodes` VALUES (18, 1, NULL, '/checkvolun', '我的志愿时长', 18, 16, 'checkvolun');
INSERT INTO `nodes` VALUES (19, 1, NULL, '/addInfo', '基本信息填报', 19, 16, 'addInfo');
INSERT INTO `nodes` VALUES (20, 1, NULL, '4', '成绩信息填报', 20, 16, 'dashboard');
INSERT INTO `nodes` VALUES (21, 1, NULL, '/addResearch', '科研情况', 21, 20, 'addResearch');
INSERT INTO `nodes` VALUES (22, 1, NULL, '/viewSubmittedServePosition', '骨干服务', 22, 20, 'viewServePosition');
INSERT INTO `nodes` VALUES (23, 1, NULL, '/viewSubmittedSocial', '社会实践', 23, 20, 'viewSocial');
INSERT INTO `nodes` VALUES (24, 0, NULL, '/Statement', '学年总结填报', 24, 20, 'Statement');
INSERT INTO `nodes` VALUES (25, 0, NULL, '/viewSubmittedSci', '已提交的科研情况', 25, NULL, 'viewSci');
INSERT INTO `nodes` VALUES (26, 0, NULL, '/addSocial', '已提交的社会实践情况', 26, NULL, 'addSocial');
INSERT INTO `nodes` VALUES (27, 0, NULL, '/addServePosition', '骨干服务填报', 27, NULL, 'addServePosition');
INSERT INTO `nodes` VALUES (28, 0, NULL, '/importWhiteList', '导入白名单', 28, 3, 'importWhiteList');
INSERT INTO `nodes` VALUES (29, 0, NULL, '/weights', '修改评分规则', 29, 3, 'weights');
INSERT INTO `nodes` VALUES (30, 1, NULL, '/viewSubmittedStatement', '学年总结', 30, 20, 'viewStatement');

-- ----------------------------
-- Table structure for orgservice
-- ----------------------------
DROP TABLE IF EXISTS `orgservice`;
CREATE TABLE `orgservice`  (
  `ID` int(0) NOT NULL AUTO_INCREMENT,
  `studentID` int(0) NOT NULL,
  `time` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `material` longtext CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL,
  PRIMARY KEY (`ID`, `studentID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf16 COLLATE = utf16_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, '评委获取成绩', '/teacher/getGPA');
INSERT INTO `permissions` VALUES (2, '评委获取志愿时长', '/teacher/getVolunteer');
INSERT INTO `permissions` VALUES (3, '评委修改成绩', '/teacher/changeGPA');
INSERT INTO `permissions` VALUES (4, '评委修改志愿时长', '/teacher/changeVolunteer');
INSERT INTO `permissions` VALUES (5, '获取用户角色', '/user/get/role');
INSERT INTO `permissions` VALUES (6, '获取用户动态菜单', '/user/get/menu');
INSERT INTO `permissions` VALUES (7, '学生获取成绩', '/stu/getStuGPA');
INSERT INTO `permissions` VALUES (8, '学生获取志愿时长', '/stu/getStuVolunteer');
INSERT INTO `permissions` VALUES (9, '用户登录', '/auth/login');
INSERT INTO `permissions` VALUES (10, '获取用户信息', '/user/profile/get');
INSERT INTO `permissions` VALUES (11, '获取学生成绩汇总数据', '/scoreSum/getList');
INSERT INTO `permissions` VALUES (12, '用户注册', '/auth/register');
INSERT INTO `permissions` VALUES (13, '修改密码', '/user/password/update');
INSERT INTO `permissions` VALUES (14, '修改个人信息', '/user/update');
INSERT INTO `permissions` VALUES (15, '提交科研信息', '/sci/add');
INSERT INTO `permissions` VALUES (16, '学生查看科研情况', '/sci/viewSubmitted');
INSERT INTO `permissions` VALUES (17, '删除科研记录', '/sci/delete');
INSERT INTO `permissions` VALUES (18, '修改科研记录', '/sci/modify');
INSERT INTO `permissions` VALUES (19, '提交社会实践记录', '/social/add');
INSERT INTO `permissions` VALUES (20, '学生查看社会实践记录', '/social/viewSubmitted');
INSERT INTO `permissions` VALUES (21, '删除社会实践记录', '/social/delete');
INSERT INTO `permissions` VALUES (22, '修改社会实践记录', '/social/modify');
INSERT INTO `permissions` VALUES (23, '提交骨干服务', '/servePosition/add');
INSERT INTO `permissions` VALUES (24, '学生查看骨干服务', '/servePosition/viewSubmitted');
INSERT INTO `permissions` VALUES (25, '删除骨干服务记录', '/servePosition/delete');
INSERT INTO `permissions` VALUES (26, '修改骨干服务记录', '/servePosition/modify');
INSERT INTO `permissions` VALUES (27, '评委查看科研经历分数', '/sci/viewScoreInfo');
INSERT INTO `permissions` VALUES (28, '评委查看科研经历记录', '/sci/viewSubmittedT');
INSERT INTO `permissions` VALUES (29, '评委提交科研经历打分', '/sci/submitScore');
INSERT INTO `permissions` VALUES (30, '评委查看骨干服务分数', '/servePosition/viewStuScore');
INSERT INTO `permissions` VALUES (31, '评委查看骨干服务记录', '/servePosition/viewSubmittedT');
INSERT INTO `permissions` VALUES (32, '评委提交骨干服务打分', '/servePosition/submitScore');
INSERT INTO `permissions` VALUES (34, '评委查看社会实践分数', '/social/viewStuScore');
INSERT INTO `permissions` VALUES (35, '评委查看社会实践记录', '/social/viewSubmittedT');
INSERT INTO `permissions` VALUES (36, '评委提交社会实践打分', '/social/submitSPSScore');
INSERT INTO `permissions` VALUES (37, '导入基本信息Excel', '/studentInfo/upload');
INSERT INTO `permissions` VALUES (38, '获取基本信息列表', '/studentInfo/getList');
INSERT INTO `permissions` VALUES (39, '导入志愿时长Excel', '/volun/upload');
INSERT INTO `permissions` VALUES (40, '获取志愿时长列表', '/volun/getList');
INSERT INTO `permissions` VALUES (41, '导入GPAExcel', '/gpa/upload');
INSERT INTO `permissions` VALUES (42, '获取GPA列表', '/gpa/getList');
INSERT INTO `permissions` VALUES (43, '导入白名单Excel', '/user/upload');
INSERT INTO `permissions` VALUES (44, '获取白名单列表', '/user/getList');
INSERT INTO `permissions` VALUES (45, '获取用户动态路由', '/user/get/router');
INSERT INTO `permissions` VALUES (46, '导入用户角色', '/userRole/upload');
INSERT INTO `permissions` VALUES (47, '获取用户动态路由', '/scoreSum/compute');
INSERT INTO `permissions` VALUES (48, '提交个人总结', '/sta/add');
INSERT INTO `permissions` VALUES (49, '学生查看个人总结', '/sta/viewSubmitted');
INSERT INTO `permissions` VALUES (50, '学生修改个人总结', '/sta/modify');
INSERT INTO `permissions` VALUES (51, '学生删除个人总结', '/sta/delete');
INSERT INTO `permissions` VALUES (52, '评委查看个人总结分数', '/sta/viewStuScore');
INSERT INTO `permissions` VALUES (53, '评委查看个人总结记录', '/sta/viewSubmittedT');
INSERT INTO `permissions` VALUES (54, '评委提交个人总结打分', '/sta/submitScore');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'student');
INSERT INTO `role` VALUES (2, 'admin');
INSERT INTO `role` VALUES (3, 'social_judge');
INSERT INTO `role` VALUES (4, 'sci_judge');
INSERT INTO `role` VALUES (5, 'volunteer_judge');
INSERT INTO `role` VALUES (6, 'org_judge');
INSERT INTO `role` VALUES (7, 'sum_judge');
INSERT INTO `role` VALUES (8, 'gpa_judge');

-- ----------------------------
-- Table structure for role_nodes
-- ----------------------------
DROP TABLE IF EXISTS `role_nodes`;
CREATE TABLE `role_nodes`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `role_id` int(0) NULL DEFAULT NULL,
  `node_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE,
  INDEX `node_id`(`node_id`) USING BTREE,
  CONSTRAINT `role_nodes_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `role_nodes_ibfk_2` FOREIGN KEY (`node_id`) REFERENCES `nodes` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_nodes
-- ----------------------------
INSERT INTO `role_nodes` VALUES (1, 1, 1);
INSERT INTO `role_nodes` VALUES (2, 1, 16);
INSERT INTO `role_nodes` VALUES (3, 1, 17);
INSERT INTO `role_nodes` VALUES (4, 1, 18);
INSERT INTO `role_nodes` VALUES (5, 1, 19);
INSERT INTO `role_nodes` VALUES (6, 1, 20);
INSERT INTO `role_nodes` VALUES (7, 1, 21);
INSERT INTO `role_nodes` VALUES (8, 1, 22);
INSERT INTO `role_nodes` VALUES (9, 1, 23);
INSERT INTO `role_nodes` VALUES (10, 1, 24);
INSERT INTO `role_nodes` VALUES (11, 2, 1);
INSERT INTO `role_nodes` VALUES (12, 2, 2);
INSERT INTO `role_nodes` VALUES (13, 2, 3);
INSERT INTO `role_nodes` VALUES (14, 2, 4);
INSERT INTO `role_nodes` VALUES (15, 2, 5);
INSERT INTO `role_nodes` VALUES (16, 2, 6);
INSERT INTO `role_nodes` VALUES (17, 2, 7);
INSERT INTO `role_nodes` VALUES (18, 3, 1);
INSERT INTO `role_nodes` VALUES (19, 3, 8);
INSERT INTO `role_nodes` VALUES (20, 3, 14);
INSERT INTO `role_nodes` VALUES (21, 4, 1);
INSERT INTO `role_nodes` VALUES (22, 4, 8);
INSERT INTO `role_nodes` VALUES (23, 4, 12);
INSERT INTO `role_nodes` VALUES (24, 4, 11);
INSERT INTO `role_nodes` VALUES (25, 3, 11);
INSERT INTO `role_nodes` VALUES (26, 5, 1);
INSERT INTO `role_nodes` VALUES (27, 5, 8);
INSERT INTO `role_nodes` VALUES (28, 5, 10);
INSERT INTO `role_nodes` VALUES (29, 6, 1);
INSERT INTO `role_nodes` VALUES (30, 6, 8);
INSERT INTO `role_nodes` VALUES (31, 6, 11);
INSERT INTO `role_nodes` VALUES (32, 6, 13);
INSERT INTO `role_nodes` VALUES (33, 7, 1);
INSERT INTO `role_nodes` VALUES (34, 7, 8);
INSERT INTO `role_nodes` VALUES (35, 7, 11);
INSERT INTO `role_nodes` VALUES (36, 7, 15);
INSERT INTO `role_nodes` VALUES (37, 8, 1);
INSERT INTO `role_nodes` VALUES (38, 8, 8);
INSERT INTO `role_nodes` VALUES (39, 8, 9);
INSERT INTO `role_nodes` VALUES (40, 1, 25);
INSERT INTO `role_nodes` VALUES (41, 1, 26);
INSERT INTO `role_nodes` VALUES (42, 1, 27);
INSERT INTO `role_nodes` VALUES (43, 2, 28);
INSERT INTO `role_nodes` VALUES (44, 2, 29);
INSERT INTO `role_nodes` VALUES (45, 1, 30);

-- ----------------------------
-- Table structure for role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_permissions`;
CREATE TABLE `role_permissions`  (
  `role_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  PRIMARY KEY (`role_id`, `permission_id`) USING BTREE,
  INDEX `FK_permission_id`(`permission_id`) USING BTREE,
  CONSTRAINT `FK_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_permissions
-- ----------------------------
INSERT INTO `role_permissions` VALUES (2, 1);
INSERT INTO `role_permissions` VALUES (8, 1);
INSERT INTO `role_permissions` VALUES (2, 2);
INSERT INTO `role_permissions` VALUES (5, 2);
INSERT INTO `role_permissions` VALUES (2, 3);
INSERT INTO `role_permissions` VALUES (2, 4);
INSERT INTO `role_permissions` VALUES (5, 4);
INSERT INTO `role_permissions` VALUES (8, 4);
INSERT INTO `role_permissions` VALUES (1, 5);
INSERT INTO `role_permissions` VALUES (2, 5);
INSERT INTO `role_permissions` VALUES (3, 5);
INSERT INTO `role_permissions` VALUES (4, 5);
INSERT INTO `role_permissions` VALUES (5, 5);
INSERT INTO `role_permissions` VALUES (6, 5);
INSERT INTO `role_permissions` VALUES (7, 5);
INSERT INTO `role_permissions` VALUES (8, 5);
INSERT INTO `role_permissions` VALUES (1, 6);
INSERT INTO `role_permissions` VALUES (2, 6);
INSERT INTO `role_permissions` VALUES (3, 6);
INSERT INTO `role_permissions` VALUES (4, 6);
INSERT INTO `role_permissions` VALUES (5, 6);
INSERT INTO `role_permissions` VALUES (6, 6);
INSERT INTO `role_permissions` VALUES (7, 6);
INSERT INTO `role_permissions` VALUES (8, 6);
INSERT INTO `role_permissions` VALUES (1, 7);
INSERT INTO `role_permissions` VALUES (2, 7);
INSERT INTO `role_permissions` VALUES (1, 8);
INSERT INTO `role_permissions` VALUES (2, 8);
INSERT INTO `role_permissions` VALUES (1, 9);
INSERT INTO `role_permissions` VALUES (2, 9);
INSERT INTO `role_permissions` VALUES (3, 9);
INSERT INTO `role_permissions` VALUES (4, 9);
INSERT INTO `role_permissions` VALUES (5, 9);
INSERT INTO `role_permissions` VALUES (6, 9);
INSERT INTO `role_permissions` VALUES (7, 9);
INSERT INTO `role_permissions` VALUES (8, 9);
INSERT INTO `role_permissions` VALUES (1, 10);
INSERT INTO `role_permissions` VALUES (2, 10);
INSERT INTO `role_permissions` VALUES (3, 10);
INSERT INTO `role_permissions` VALUES (4, 10);
INSERT INTO `role_permissions` VALUES (5, 10);
INSERT INTO `role_permissions` VALUES (6, 10);
INSERT INTO `role_permissions` VALUES (7, 10);
INSERT INTO `role_permissions` VALUES (8, 10);
INSERT INTO `role_permissions` VALUES (2, 11);
INSERT INTO `role_permissions` VALUES (7, 11);
INSERT INTO `role_permissions` VALUES (1, 13);
INSERT INTO `role_permissions` VALUES (2, 13);
INSERT INTO `role_permissions` VALUES (3, 13);
INSERT INTO `role_permissions` VALUES (4, 13);
INSERT INTO `role_permissions` VALUES (5, 13);
INSERT INTO `role_permissions` VALUES (6, 13);
INSERT INTO `role_permissions` VALUES (7, 13);
INSERT INTO `role_permissions` VALUES (8, 13);
INSERT INTO `role_permissions` VALUES (1, 14);
INSERT INTO `role_permissions` VALUES (2, 14);
INSERT INTO `role_permissions` VALUES (3, 14);
INSERT INTO `role_permissions` VALUES (4, 14);
INSERT INTO `role_permissions` VALUES (5, 14);
INSERT INTO `role_permissions` VALUES (6, 14);
INSERT INTO `role_permissions` VALUES (7, 14);
INSERT INTO `role_permissions` VALUES (8, 14);
INSERT INTO `role_permissions` VALUES (1, 15);
INSERT INTO `role_permissions` VALUES (2, 15);
INSERT INTO `role_permissions` VALUES (1, 16);
INSERT INTO `role_permissions` VALUES (2, 16);
INSERT INTO `role_permissions` VALUES (1, 17);
INSERT INTO `role_permissions` VALUES (2, 17);
INSERT INTO `role_permissions` VALUES (1, 18);
INSERT INTO `role_permissions` VALUES (2, 18);
INSERT INTO `role_permissions` VALUES (1, 19);
INSERT INTO `role_permissions` VALUES (2, 19);
INSERT INTO `role_permissions` VALUES (1, 20);
INSERT INTO `role_permissions` VALUES (2, 20);
INSERT INTO `role_permissions` VALUES (1, 21);
INSERT INTO `role_permissions` VALUES (2, 21);
INSERT INTO `role_permissions` VALUES (1, 22);
INSERT INTO `role_permissions` VALUES (2, 22);
INSERT INTO `role_permissions` VALUES (1, 23);
INSERT INTO `role_permissions` VALUES (2, 23);
INSERT INTO `role_permissions` VALUES (1, 24);
INSERT INTO `role_permissions` VALUES (2, 24);
INSERT INTO `role_permissions` VALUES (1, 25);
INSERT INTO `role_permissions` VALUES (2, 25);
INSERT INTO `role_permissions` VALUES (1, 26);
INSERT INTO `role_permissions` VALUES (2, 26);
INSERT INTO `role_permissions` VALUES (2, 27);
INSERT INTO `role_permissions` VALUES (4, 27);
INSERT INTO `role_permissions` VALUES (2, 28);
INSERT INTO `role_permissions` VALUES (4, 28);
INSERT INTO `role_permissions` VALUES (2, 29);
INSERT INTO `role_permissions` VALUES (4, 29);
INSERT INTO `role_permissions` VALUES (2, 30);
INSERT INTO `role_permissions` VALUES (6, 30);
INSERT INTO `role_permissions` VALUES (2, 31);
INSERT INTO `role_permissions` VALUES (6, 31);
INSERT INTO `role_permissions` VALUES (2, 32);
INSERT INTO `role_permissions` VALUES (6, 32);
INSERT INTO `role_permissions` VALUES (2, 34);
INSERT INTO `role_permissions` VALUES (3, 34);
INSERT INTO `role_permissions` VALUES (2, 35);
INSERT INTO `role_permissions` VALUES (3, 35);
INSERT INTO `role_permissions` VALUES (2, 36);
INSERT INTO `role_permissions` VALUES (3, 36);
INSERT INTO `role_permissions` VALUES (2, 37);
INSERT INTO `role_permissions` VALUES (2, 38);
INSERT INTO `role_permissions` VALUES (2, 39);
INSERT INTO `role_permissions` VALUES (2, 40);
INSERT INTO `role_permissions` VALUES (2, 41);
INSERT INTO `role_permissions` VALUES (2, 42);
INSERT INTO `role_permissions` VALUES (2, 43);
INSERT INTO `role_permissions` VALUES (2, 44);
INSERT INTO `role_permissions` VALUES (1, 45);
INSERT INTO `role_permissions` VALUES (2, 45);
INSERT INTO `role_permissions` VALUES (3, 45);
INSERT INTO `role_permissions` VALUES (4, 45);
INSERT INTO `role_permissions` VALUES (5, 45);
INSERT INTO `role_permissions` VALUES (6, 45);
INSERT INTO `role_permissions` VALUES (7, 45);
INSERT INTO `role_permissions` VALUES (8, 45);
INSERT INTO `role_permissions` VALUES (2, 46);
INSERT INTO `role_permissions` VALUES (2, 47);
INSERT INTO `role_permissions` VALUES (1, 48);
INSERT INTO `role_permissions` VALUES (2, 48);
INSERT INTO `role_permissions` VALUES (1, 49);
INSERT INTO `role_permissions` VALUES (2, 49);
INSERT INTO `role_permissions` VALUES (1, 50);
INSERT INTO `role_permissions` VALUES (2, 50);
INSERT INTO `role_permissions` VALUES (1, 51);
INSERT INTO `role_permissions` VALUES (2, 51);
INSERT INTO `role_permissions` VALUES (2, 52);
INSERT INTO `role_permissions` VALUES (7, 52);
INSERT INTO `role_permissions` VALUES (2, 53);
INSERT INTO `role_permissions` VALUES (7, 53);
INSERT INTO `role_permissions` VALUES (2, 54);
INSERT INTO `role_permissions` VALUES (7, 54);

-- ----------------------------
-- Table structure for school
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school`  (
  `ID` int(0) NOT NULL,
  `name` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf16 COLLATE = utf16_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO `school` VALUES (1, '求知一苑');
INSERT INTO `school` VALUES (2, '求知二苑');
INSERT INTO `school` VALUES (3, '求知三苑');
INSERT INTO `school` VALUES (4, '未名一苑');
INSERT INTO `school` VALUES (5, '未名二苑');
INSERT INTO `school` VALUES (6, '未名三苑');
INSERT INTO `school` VALUES (7, '未名四苑');
INSERT INTO `school` VALUES (8, '博雅一苑');
INSERT INTO `school` VALUES (9, '博雅二苑');
INSERT INTO `school` VALUES (10, '博雅三苑');
INSERT INTO `school` VALUES (11, '博雅四苑');
INSERT INTO `school` VALUES (12, '燕南一苑');
INSERT INTO `school` VALUES (13, '燕南二苑');
INSERT INTO `school` VALUES (14, '燕南三苑');
INSERT INTO `school` VALUES (15, '燕南四苑');
INSERT INTO `school` VALUES (16, '英杰一苑');
INSERT INTO `school` VALUES (17, '英杰二苑');
INSERT INTO `school` VALUES (18, '英杰三苑');
INSERT INTO `school` VALUES (19, '英杰四苑');
INSERT INTO `school` VALUES (20, 'MEM一苑');
INSERT INTO `school` VALUES (21, '博士博实苑');
INSERT INTO `school` VALUES (22, '其他');

-- ----------------------------
-- Table structure for sciperformance
-- ----------------------------
DROP TABLE IF EXISTS `sciperformance`;
CREATE TABLE `sciperformance`  (
  `ID` int(0) NOT NULL AUTO_INCREMENT,
  `studentID` int(0) NOT NULL,
  `content` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `type` enum('论文','比赛','专利','其他') CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `material` longtext CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL,
  PRIMARY KEY (`ID`, `studentID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf16 COLLATE = utf16_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sciperformance
-- ----------------------------
INSERT INTO `sciperformance` VALUES (104, 1, '1', '论文', '/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAMCAgMCAgMDAwMEAwMEBQgFBQQEBQoHBwYIDAoMDAsKCwsNDhIQDQ4RDgsLEBYQERMUFRUVDA8XGBYUGBIUFRT/2wBDAQMEBAUEBQkFBQkUDQsNFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBT/wAARCAOaA8ADASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD9LaKKK886wooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiloASlrzv4o/Fmz8C2hSIiW/P3YzXmVj+0brV4Ti0QD3Fc8q0YytI9ijlOLrw9pCOh9IdaM14la/tDTqALjS1b3jf8AnXQ23x00CSBXvDNZk+ibhT+sUu4pZXiYrWJ6ZRWJovinT9aiElldxzqeynn8q2I5g/1rZNS1izzalKdJ2mh9FFFMyCiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiuQ8ffESw8DWe+d83DfcSjY1pUaleXJTV2dfVHXNWi0TS7m7lYKsaMefXBrwEftQanc3DeRpUIt+kfmv8/wDwL3rR8UfE+bxp8PLvCBJ27A1yPEwTaPdhk2Jp1F7WOh4T4g1O58c+LDO7sXuJwEVuO/3eK+kdP/Z/02PSbJhc3Md2sAMpUZXfj722vOvg58PLtlutZmhSYW2TAccFwOvNb/iH4peKPDHlhJGYtkESDcpGema5oKKvKotz6jGVKtWaoYSSXKWNd+AOpJbs+mXi33orjy3rz3xF4D8T+H9MZr2xljjBwZA3mV6XoH7RVwttD/aemxZP3ngbH869V8J+LdG8b2JMEkchcYaJsE/lVeyp1PhZwvG43Bfx4XXc+M9M1e70OYXNleS28i85jbGfwr3/AOBHj/UfE15cWt/ctP5UQYFu9eW/FuDTx40uV0yJI7aELF5KjCblxu27a9N/Zw0cSC/1Vl5wIlPtU0IuM2kz0M1dKtlsa/LZyse5UUDmivTR+ZhRRRTAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooorK4BRRRVAFFFFWAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAV8b/FbxBN4n8W387SE2isYkH3eFY19kV8c/ErwzPovi3VbV87GmMyf7rciuDGOSptxPruGuR4mSlvbQ5LA+zSnzee1dP4B8WwabPHFqaCS1dtsiAc49a4u4DQsV9KYtrLcj5a8KE2nc/VKtCNaDhI+7/Dy6c+l27ae0a2hHy+VUfiHwfpXiO2aK8gSRSMZA5rivgDaXMHgOFbnqJWr0DVtTg0qzaed9iL3r6GGsUz8OqxnSxMo05bHk/iH9ny2u2/4l10IE/wBsZNWvDvg6T4Y6Be3d3ci4jSPHyDBrmfEfxn1FrqcQObeJCBhBzXL6r8a9RvtJudPmYzpIwGXHNYuVOLutz6eGHx9aChUd4/iee6jeT6jqrtkvJM+APcmvrn4UaCfD3gyzhcfvnXcxryP4NfDCLXpRrV2mbeNsICOpr6Jih+ypHGn3EGAKrDwes2RxBj4VOXCUvs7/AORKOlFFFd58UFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAjNtUn0Fcw3iFxNKoJ4NdDf3CwWEr9wK8/wDtSea5I6mvlM5x7o1I06cj0MJS9pzXLl/rk9yjJuIWq2j3MiTnaTmqd0Hdh5Y611fhvQ/IiEso5PPNfOYT6xisYbVVTpqx0o6UUL92iv0s8p7hRRRViCiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACuc8YeBdP8AGFk0VzGFnA+SYDkGujoqXFSVma0qs6MlODsz5o8X/s8659pb+zpFvYh03sFNbfhL4A3Fswl1B4oCR9xGLEfpXvhGaj281yfV6ad7Hu/23ipQ5HIjsLKHT7OO2t0EcMa4VRXhPxW8Rz3fiu4sVP7iAbEH8zXvsY6ivDfix4Zlttbur5fuuM1c9I6GeWezeI/e+p4zq+43EpzwT271jfY7i5l+WL5M/ezXTzaNLc3BJ37fpXaeBvhreatP8yMLf1215ig5Ox+hzxlLD0+aT2PSvgGrp4KKv90SkCvTQc1Q0TR4NH0+Gzt0CRRKBx3PrWjtr2IR5YpH5ViaqrVZVO42iiitTjCiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAxvFcog0w4PzMcCuc8O6YNRkcsMqnWr/AIwuS7xxdlOa0vCNsLezmfHMuMV8RVpxxmYp20juejTm6ULouW+k2sAyqDIq0BgYHSpRHgUm2vs6VKnTVoKxxSbm7sF6GloXpRWhmFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUYooqCgxVW/0221WBobmMOp7kc1aoxSauJTcXoc5p3w70LTJjJDZpuIx8/NdBBbxWybY0CgdgMU+ikopFOrOWjYdKKKK0RkFFFFMoKKKKACiiigAooooAKKKKACiiigAopcUlAJXCis/WfEWl+HbX7TqmoW2nQf89LmVUH6muA8UftO/C3weyLqXjPTVdgSEglEp49l+tBsqbZ6fRXzf/wAPA/g7+/8A+Jzd/u/u/wChSfP9OK4nUP8Agpv4Ctb5kttB1i9th0kVUQn8C1BssLUlqkfY1FfDMX/BUbSDdbH8FXqwf89VuVJ/75/+vW/pP/BTbwbeXQgm0DUobf5h9qDRn/gTKD/u/r/drFzNlgKtj7HozXyXcf8ABTD4V2cnlMNUlcDny7ZSB/49XX+Fv28Pg94m2j/hJBp8jfwXsLJj8RkUKojGeEqw6H0LRWD4b8d+HvFmmQahpOr2d5ZzjdHLHMuGH4mtmK5jl+5IjjsVYEfpVqSZzOLW5LRRRVkBRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABTJJRGuTT6xfFE7wWQKHGTisa1VUYOb6FwjzOxBqXiNYlPlNlqzIfF1zvxLjbWH52RycmoWDPnPSvy6vm+KrVb0pWR6scPG2pvoDrmoZHIzXbWtstvAsYAGBXJ+CYirPIw+ldeJMmvtMlgnSdeXxSOSu9eVbIWmU4tTa+lOQKKKKYBRRRUEhRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAVl+J9Rm0jQdSvLdd88Fs8qL6kCtShlWRSrjINAI+XfgN+2/o3xM8UXfhvxCIfD+rxZEcjSYjk/2fm719PAn61+V/7f37PcnwS8U2/jPwvE0PhrVZfLHl7sW9xnc6fjtZl+jelfS/7AX7Vk3xo8MXHhbXnkm8S6NEHFy683UB2ruY/wB5T+jD05D0atCLgpUz67opM0tB59mOooooFYKKKKACiiigAooooAKKKKACigkDvRmgBV707FRM20GmCXNBZLRQpyKKCAooopWAKKKKYBRRRQAUUUUAFFFFABRRRQAUUUUAFI8ixKWdgijqWOBWZ4k8UaR4P0ibVNb1K10uxhGXnupNiivy+/bR/bU1X4h69deGfBOqS2PhSL/l6tW2PdP/ABM3fH92g1p0nUeh9g/G79vj4a/CBZ7OK+PiLWlBC2dgQyq3+2/QV8LfGH/go/8AE3xzi20K4i8K2S5A/s/mSQf7TtXydcSXV3M81zNJcTMcl5GJJNX9F8M3+vySJaxmTywC5/uiocrHr0cNGGrNXxN8WPF3jNidc8QX+pEnJ+0XDP8AzrHXUbgoAZ5AP941738Nf2FPiZ8Q7SHULDTY7ayk6XF+yxKB/ut8x/Kvpzwh/wAEu9P+zRS+IfE0nmvzLbWturKvsrN/8TU87Om1KG7Pz3szOVzDx5Y2Vu2Oi6rcW3npbTPGeN23iv1Y0H9g34RaHEgTRLi5mT/lrPdMWJr1XR/g34N0XRk0qDw7YfYlAHlPArA/pUu7KWKpw0R+KuleFNeu/tr2mlXFwz/KWhjYl/bitVfA3iq5H/IBvvI/56+Q/wDwL/2Wv2y0jwhoeg2y2+m6RZWUCjCxwQKqgfQCrp0iyP8Ay6w/9+xUWB49bJH4H33hbVBcNHHp80TSSYQBCC/51jDzu8dfv/8A8Ipo/wD0DbX/AL8r/hWRN8JfBVxcNPL4X0p5m6ubRM/ypWMHi0+h+Gmk+LtZ0qMJa6ne2iD7ggnZAD+Fd94U+OHjvRsW9p4q1SCIfM0YuWKt9a/XjWP2fPhvrtrPb3vg7SpEmxvK24VjjpyPrXn2sfsJfCPUwxt9EfTXP8VtKR+lOwvrS7HzB4f/AOCkvjLwjp1vaXVjHr21MPJO+1zxknd9Qx/4FX0X8M/+CjXwu8WmG312abwtqL4Bjvhuhz7SD+teNfED/gmH9pmnn8LeK9uTkQahDkN/s7h/3zz618rfFb9kT4p/D55JL7w7cXsERJlutLja5iHT5uF3Y59Kacoi5KFbVqzP2o0DxLoviuxjvdH1K3vreQblkt5Q6kfhV/BB61+Ffwq+NnxA+Bl9JP4d1aWzbcBJA+XjyM8FCeOvINfen7Pn/BSnR/FciaX8SIIdCvGPyaraqxt/YOg3Ffr0+lWqnc5KmDcVeGp9w0VU0zVbPWbKC8sLqG9s541liuLeQSRyIc4ZWGQQcVbrVO551wooopgFFFFBIUUUUAFFFFABUN3aR3kDRSDINTUVEoqcXGWxUXZnHXPhGcSMYcMtOsPB83m7pmGPSuxQ4py8Zrwf7GwnP7Tk1Oj2rKFhpqWSYUYq1t96dmkr26FONGHJFWRjJ31CiiitjMKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKx/EnjHQ/CGky6prWq2mm2EX3555QqigaVjgP2oPh8Pib8BvGnh4xrJI1jJdW24Z2zR/OhH/AAJcf8Cr8sf2HPFU3gv9ojwvP5jRRTT/AGSZAudwkDIQR9WH5V+met/tq/BXSTFHP42sLhZSVzCC6jHrX5mLc6H8Nf2l7nWPDl4uuaDYamNRtGg43xbw4H6VDlY9jB05V3yRP2grx74y/ta/Df4HDyfEGsGfUinmLp1hGZpmH6Kv/AmFfm/8c/20viD8SNSNml/LpOlhm222nyGFgpxwzDluntXzp4kvdT1XUXurmeeadjkvLIzH9aSnc2qZfNM/Qrxd/wAFbdDhgdPC3gu/vZRws2p3Eca/XEZb+deeal/wVu8eT/8AHj4N8P2n/XZppf5OtfFEPhjVJj8llO/0Rj/SrQ8FawR/yDbn/v03+FP2tJbyEsrxLV1B/cfbumf8Fb/FMcc41DwTo907f6k200sIT/eDO+78Cte4/Bz/AIKa/D3xmwh8W2s3gy7GArbjc27n/eVflH+8Pxr8m7nTpLaRlkjZGU4IYYNRAYFWnF6xdziqYeVJ2mrH9DHhfxZpPjLSotT0bUbfUbGYBkuLWQOjD8OlbQGM81+Cnwl/aG8dfBi/E/hfX7mzhJBktC5aGUZ6Mp4r9bv2Vv2rtF/aD8OBZWt9N8S2+EuNPaYZk9ZIx3HtTscrge+0UUUjIKKKKAKmoxl4Gx6Vj6XqYhnMTHAzXQsu8Mprh9TjNpqT46ZoA7iSPdG/0rgJ78QX8jE8q1d6kvmWkb/3xXlniUtBq1wg4GaDamrnqFjMJ7WNwc5UVPWD4NvftelICcleDW9QZTVm0FFFFBAUUUUAFFFFABRS4OK+fP2qv2tNH/Z28PmK1EGseJ5/9XYecF8of3pPQUGkIOWx9APKkX33VB/tHFeW/En9qL4Y/CtzHr/iu0il/wCeVuDcSf8AfMe41+S/xa/bH+IvxZnddR164srbcSLbT2MUIHoT1avFL3WZ7yVnmnkuJD1d2Jz+dB3wwt1dn7MP/wAFCfgfH18VyH/d0+5P8o6itv8Agoj8Dbm+gtV8VSIZW2+bLp9ykae7MY+BX4xec1NSRg5yaDo+q0up/Qv4P8c+H/H+lR6l4c1i01eykGVktpQ36Csz4pfFbw58HvCl14h8UX8djYQqQik5knk/hjjX+Imvws8DfF3xd8OLnz/Dev3ukPkEi3lIU/UdK6T46ftOeMvj9/YMXiS7MsOlQCJI1O3zJO8zf7VBzPCRT0eh0P7Uv7V+v/tHeOZpxcvY+FrdiNN0nP3I+zSesh/iP/Aa8d06OS8nESgszf3RmtDwV4A1fxxrNrpuj2ct1c3EixrtT5RuOASa/U39nL9hLw94BtLHVPFgg1fVYsTRW/l7VgPv6tQdkVGlHQ+UfgL+wV4w8f6jZ3uuwDRfDkxBa4ZsSlfl6RsPmz83+Ffof8Lv2bvA3wqtrQaRpEb3lugH2+cBpnbu390H8K9NjEcEaxQRrDEowAoxxUingis5K5yVMQ3oiJIwCQMke9GBTgMZpazSscV2xnSin0mK0SKWgtJgUtFIBMCjApaKAEwKMUtFACYprRKwIIyD60+ikNNo+e/jl+xJ8PvjSsl29q+ga0Qdt5pxCI5P/PSPGGr8+v2if2RvFnwO1CSYWkmp+HAeNYtYQYgP9tR91vY8e9fsTVTUtMtdWs5rS8giuraZSskMyhlcHsQaVjtpVpQPyG/Zj/am8R/AHWoraC9a/wDDrsPtmizSEq47vHn7rbf/ALKv1k+FHxX8PfF/wna6/wCHbvz7WZfmifiSFu6sOxFfnx+2d+xEng20vPGngK0ml09d0lxpcIy0DYJzGf7vB47V4b+yf+0vqXwG8fQSXbzS6FMQl5abjjJ/ix6ihXRtVhGvE/auisjwn4r07xp4c07XNKnW4sL6FZopFOQQa162TueI4uDcWFFFFMQUUUUAFFFFABRRRQAUUUUrAFFFFMAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigNwrzz4yfHjwl8DdAbVvEeptBj/AFVrafNcSn0VP/Zm+WvHf2sP229C+B1vfaBo0keq+M0AUW6nMdsSv3pD/wCy1+WXjfx34p+LOuzarr+q3GrX0hJD3D/cHoo6AUrno4XCyrysj6N+Mv8AwUj8f+NTLB4SnXwtpBJEf2cj7QwDtyznuQR93FfOPiXx142+IUct1quq6prE2fMLPIznJ+ldn8Kvg0mpK17rkTGH+GHP3vevdtM0+3022WC3hW3hUYCIMV4eIzOFNuKVz9Hy7hb61SvPQ+LYvC3iCX7mj35z/wBO0v8A8TXrPwd+FGsjVjf6nYta2hQKRMSD/KvoX7QkfAFJ9qz9K8upmUqitFWPssv4UpYOp7S9/kedt8EdDF5JNcTvcRt/yzIrd03wB4dsEATTYmK9GcZropVyM1EvGa8+WIqS0cj6hZfQg7pHV+Avhdq3jm5kTTraKK3jAzK3yr36DvXSeI/2fvE3h7TJb7yYLyKIFpBA3zKvrgjmvaf2btY02bwja2tvNGt6nDhuua7b4l+NNH8N+F9UTULmItNC8ZAPJ3AivVpUYOnztn5xjM7xtDHPDUqenTQ+ANa8H6PrKtHfWEErd9yAH868C+JPwRudG86+0YNdWY5aH+NP8RX0rd/NMx6+9V64aOMqU5XTPtswybD5lh0qq179j4T8vbG24EODgg10PgHxtqXgPxJZ6zpFy8GoWrBoWU9DXo/xm+F6aUTrOnR/uJD++iA+6fUV4vEQsxKgjb1zX2WGrxxEOZH4BmOX1curyoVVt+KP6BvhF8S9O+Lnw90fxXpkqvBfxB3jU/6mQcNGf908V2FfkD+xb+13q/we8T2nh/U51uPCF9OqyrMeLfc/zSrj+L2r9erWVbm2jmQh45FDKy8giuk8WpDl1JKKKKRiFYOqaPNczl0UEVvUdqAILRWjt40/ujFch4o0WS71B5AnXviu1BK9KZs8x8kUFxfKUdA0r+yrBIiBvPJxWlTgMUtBMpXGUUUUEBRRRQAUUV84/tp/tIXfwC8CQ/2MkUniDUyy2zTHHlKoO58f8CGPUig1pUpVZcqPNv20/wBt6++F+tf8Il4JnjGtW5H2y7ZQyJlTtRf9r61+YfjXxhqvjTWLnVNZvZLy6mcszSNuOab4r8W6h4p1m81PU53ubu7kMru5ySx75qpougXviXUYLGyiM1xKwVVFctSpY+ghh1HSCMzqPau38G/BfxZ43eL+y9Kllgk6XLDEQ+rV9L/CD9k+y0i1iv8AxKonvvvC1+9GF/h3ep9q+hbWwjtIUhtYktoEGFRVCgD6CvCxGaRg+WGrPboZe5K8z5Bt/wBh/wAQPb7pddsYpP8AnnsY/rXDeMv2X/G/g+1a6kskv7cE82bb2A9SK/QOMkA85xTSxOa8+OaVU7nc8upNWPygnjeF3RgVZTggjBBqKvtD9pb9nlPEEMviXw7aRRXUUf8ApVpbxhPMxnMgAHJ9f84+OZ7U20pRgcj1r6XDYyOIhdbng18LKhKzPvT/AIJufFPw7pWtnwrqtlaw31/j7FfmP59//PNm/Pb/APZV+lmBX4EeDden0HVrK7t5XhaGRXV4zgrg9RX7Ufs5/Fe0+Lvw6s9ShuBNe26i3vBnkSAfe+jDB/H2rqTPMrwajdHptFFFaXR5VgorJ1rxRp2gQ+beXKIpOMA5NcbrXxv0mytXNjG95cfwqflU/U1zzr04bs66WErVvgiekUV4HN8edWZ2KWsCL2Xk4rJvfjJr92TtnWFfSMVl9cpdz145Fi5K9j6Sor5pb4o669vg38ufrWbrHj7WNQjjjn1OZ4wOE3VP12kbLh7FM+qKK+U18bauIVjGq3aovQCU8Voad8SddsUdV1S4fIwN7ZxUfX6Zb4dxKV7n05RXzxY/GHXrX/l4Wb/roM1s2vx21FcedawSfQEU1jqbOSeSYmB7dRXnGmfG/SLkIl1FJBIeu0ZFdVpHjfRNcH+iX8Tsf4S2DXXCvTnszy6mErUX78TaooorQwWhBd2qXcMkUi7o5FKMPUHrX48ftYfs9XnwY+KN9I8GzQNRZ7ixkU5BXP3fbGf0r9jgM18lf8FHPhr/AMJX8I012KMvcaTNkp1Xy2+9xQd2GklKzOS/4Jp/Hq4160vfh5qlwshsI3uNPdjyU3LuQewyf1r72XvX4Z/s3fEiT4Z/Fvw3quVFnFfwvccfME3qrbffaXHvu2/xV+4dhdpe2sVzC6yQSqHRlOcg0RZzYuFp3LVFA5FFWeeFFFFWAUUUUEhRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFeEftXftNab+z74MdgRceIr1CLC1HUf9ND7Cvb9S1G10fTru/vZ0trK0ieeed+FjjUFmY+wAJr8Tf2ufjw3xz+Luq6vaLN/ZMIWCwimK7khUkc4/wBos3/AqDpw9NynfoeYeLfE+p+OvEV3rOpTPealePueRzkkk17n8G/hnHpunQajqIElw/zIh7V598GPAEniTWPtl0uy2tjuZSOtfSaGK2VVhG0AYUDtXzOPxu9Kk/mftvDWTRhFV6y06FhmqBj1pSxI560znNfNH6QNK5oVKlVeKULig3Ww3tikC1Jik21IFmy1K4sH321xLbP/AHoXKn9KL7U7rUmDXVzNcsP4ppC5/WquDRg1SlK3Lc5vZRUue2pqeHvC2peKrtrfTbc3EijLY/hFQaz4cv8AQ7h4b22khZTj5hxXsP7Lt6q69qtkR87wiUfQZB/9CFeq/GH4e23ijwlduqBbi0HmxSgddv8ADXoU8HKdPnR8hiuIJYXH/VKqtF21PinWdJj1fSrqzkGRKhAz618ceJtEk8M67fWM64aNyvPpX2vXzl+0zpH2bXrK/RcLcx4JA7j/APVXp5XVcJuB5nF2AjWwv1lLWJ5Tp18tvNtzjnII7Gv28/Yt8dDxv+zn4Yke5W5urKEWkuG3FdnyqD+GK/DFM9cV+lP/AASa8Sz3Vv4x0h7qPyUMVz9nJ+fcflLfTivqbn4rP3o2P0RFFFFI89oKKKKCgoxiiigAooooAKKKKCQooooAp6tqtvounXV/dv5VraxNNK56Kqgkn9K/Fn9rD463vxv+I19fzPu02B3isYD0ji3HH498/Sv0c/4KA/Eg+BvgFqNjbkG+1uRbNEzz5edz/hgY/Gvx8mlM8zOe5qJOyPbwFNqLqPrsQaXpU+r36RRIZJXYKqgZr75+BfwL03wFoi3l5bJLrUigvIR9z2FeNfsn/Bv+2tWm8RahDm3tyBArjhn9fw619nGNY4ioH5V81j6vuuJ9ZhqajG7MukzXk/je/wDENxrN3EsUkEaAhcI0fy5OCPWvP/7Y1hIC63lxH7vu/wAa+WcGlc+ow2FdbS9j6ZppXg14H4W+MWp6XcLBqP8ApkA43dSK970y5i1SziuIGDxSqGUj0NKOpWJws8Nbm1TJ7a3Egr4R/af+ELeBfFcuoWcRGk37GRMDiN+pX+or76t7XYtePftXeEG8Q/CTU7iJcz2LxzjA5xuwf516+AqOnU8mfO4tKpG3Y+BbMiNRz0r9Ff8AgmR4wt5k8U6c10IZWCOtnn/WEcGSvzZnEtvlWyCK+tf2APFV14c1jxJNbAGSWzC7j1GGPSvrJVFDVnz8qEqt4I/Tbxr8SNN8HRGJ2M9+ekSc/n6V4n4h+Leu63dMFnW2tv7kf3hXinxI+P2heFrqSHU9TF3qnVo4zuc/Wvnfx3+1/qVzvg8P2yWa9DM3L15sqlWrJ8ux7+EwGAwcFOu+aR9oXGtSTozTzMR3LvXG618U/D2hs8d5qUCMvUBsmvgjUfjb4v1Pf5mrS4bsCa5K61jUNRlaW6upJWP95qawkp6yZ2SzTDU1ahTR923/AO1B4Is2ZBePK4OCAtcRq37ZOnxb1sdHZm7NJJxXyFnNHXgmtI4KCOKedVbaR/r7j6f/AOGzNTY4GmxKPwp6/tg6i4/49Ih+FfLogHUSGlAZRw2a0+qwOX+2a39P/gH07c/thamg/dafCfwos/2y9TGRLp0I/CvmDe/QZpNjvyc0fVYB/bNbt+P/AAD7K0f9szTZvM/tLSTH/c+zPn8812OjftReDNTtZZZbia08vqJEz+or4GGVpftBHFN4SD6FLOKq6fj/AMA/R/w98XvCPiZR/Z+u2zO38EzbT+tdZDqeQHin47PEcj9K/Lm3vXhbcjFWHRgcGu08N/G7xX4TKjT9WuAo/gc7l/WsJYJr4Wd1LNqU1arA/Ubwx8XNc0AKhuPttsP+WcvOP8K9Y8M/GnRta2x3WbKc8Yb7ua/MnwT+2W7bIfEenJJ2Nxb/ACt9TXuXhD4v+FPGsSvpuqRNKf8AljM2x8/7Ib73/AahOvh3rqh1MHgcwXuaSP0HgxPCk0bB42GQw7ivnn9u/X4NB/Z61x5p0haZ0iRWON5OeKyPAvxZ1Pwsyqsv2uyPWFzn8vSvnT/gpn8a4PED+HPCenTExov266Rk/iP3RmvRo11VTPmK2V1MHUu9j4k0O6/4qSw/67K//jy5Wv338C/8iXoX/XlD/wCgLX4S/BPSotb+LHhaC4dY4DqNv5jOuUC79zFvbC1+j/xk/b7h0mb+yvA9tBc+QGX7XMvXb8q7F4x+NaTqwpK82clXDzxDSgfbS96WvyP8a/th/FO+umB8TXemof4Ywsf8ga5bSv2s/ixpepy3sfje/f8A6ZO3mJ/3y1QsXSl8OonlFZK90fszRX5o/CX/AIKd+JdJ8q28f6bFrUYwGu7FPJlHuVX5Tj/d/Gvuf4TftD+AvjNalvDWuw3V2qgvYv8AJOnttPX6rkV1Qqxnszy6uHqUm1JHo9FAorU4gooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKBHjX7YXiay8K/s5+N7q9k2faLFrKEBtpaWX92uPYbsn/ZDV+Hsjm4uif4mLA/if/rV+nH/AAVl8S3On/D3wTo8b4tr2/nnmT1MaqEP4b2/OvzJ0lRNq1qn9+ZR+ZoPZwSTio9T6w+EeiDSPCUBIw8gzXZxgMG9qr6XbLZ2EECjARQKnHy7vevzubu2z+mcFT5KUIdkLQqjmkBpy96xPRHqOKXFIvSlqCwoxRRQAmBRgUtFCEel/s6XLwfEyCMH5JLaUMPXgYr62uYEutPmt3UMkgIKnoc18SfDPXo/DXjnSdRlYiCOXbLj+63B/pX2dceJ9Ni083X2uLyNm7ztwxX0mBq/u7H4/wAT4ap9eVVLofC3ieyGneItVtVG1IbqVFHsGOP0xXin7RWmfbfCEFxjJgmyf++Xr2/xdfw6t4p1a7tm3wS3MjK3qNxryf4924b4eXP/AF1j/wDQjXHhXy11Y+2zCn7bKJqe/KfKIUYr6o/4JueJrXQ/2ibC1u5NiX8LQxgnrJ/DXy8yAZr039lrWLbQfj74KurwyLb/ANoxRkxfeyzBVx/wIivs0j+eGtD94KKFO4ZHIoqjzmtQooooAKKKKCQooooAKKKKACiiik9gPzt/4Kv+Itl14J0YNgpFLeY/3mC/+yV+e9pH5s0aDncwH619x/8ABWG1/wCLl+EZ/wDqEbP/ACM9fJPwgsYr/wCIWgwToJInukDKe4zXHUnyxcmfU4ONqMUff/wl8Np4V+H+k24TbKYRI/HUtz/LFe7eDPCkT2q3UnzFxnmuL0GwF1fQxKoESY49AO1ezWFstnZxxKMBQBXg0oOtJzZ6WLrcqUEU5PDGmS/6yxt3/wB6IGuC+IHwL8M+JPD91bW2nRWN8fnjlt0Uc/SvUMVGyetdE6EGrNHDh8dXpVFySPy51Oxl0jWLi2mUpJFI0bKRjBBxXufwA8RC8t7vSZWzJGBImf7tedfHfyh8VPEHkbPK+0HHl/d/CrfwHuHj8eQBWwrxOre9fLunyzaR+s4r97g1OW+jPp4IAKq6pplvqmmXVjdRiS2uY2ikU91IINW170rjINddP3T4Z6nwP8QP2W/EOk+JdQgsNMN1aK58qS2PbP8Adr0TRvhzrHwP+B2o3cNu0WvalJtMkaqDAn93d619VEdRWd4m8Ox+KvDt9pUwB86MhCex7V6Ht5SVpMKcUpXPyv1pL1bp3u8iUnJO4H+VZZHrXpXxE8IXPh7Wr7TrxCs8DkZI+8OxFefyW22vcoyUoJo8/FR99lTAFAGas/Zz60CD3rpPPsQhaNntUpTFN49aDJjMYpobFOcjFQk4p2ILCyAelL5wqrvpu41RNyyZAaYRmoVbGakEgoHe4xiwOAKkjt5XBIU4pyv34q5bamYMfKDQNFDaR2oiu5Ld98UjRuOjKcGrmoXYuW3YAJrOYdaVrmik4apnuvwv/as17wtNFaa/nWNMGFEnSaMfX+L8a5L41+Nbbx/4zvdUtfMaGTAQSDnHNebIDXuX7NPw88OePdcltfEDupPEAB4Y1g4wpXnY9SOIrYmCpSZc/ZQ+Ec/jzxLNeXUZi02wUt5sg+V5D0Uf3to5r6u8G/ADQvDt9Je3Cm+uGkL5mX3zXe+F/C2m+EtLi0/S7ZLa2iGAqDGfrWvXzWJxDqzv0OujS9lGxi3Hg7w/PIZJdFspHxjc8INcD4z+CXgvxPpl1ajR49NuG5F1ZrtdD/Cc9x7V6ddE7TWQRljnvXC6zhszrirnxb8SP2Y9c8BB7jTHGq6evyeYo2SKB6r81eZ+GfGmr/D/AMQWeq6XcS2Op2cyzRlW24cHg46f0r9IVgBBr5K/aZ+Ao025fxFocGLRubiJB/qz6/SvSwmO5ny1PvMMRhnKN47n3z+xt+1mv7QPhy4i1mC3s/ElkQJ442wk+f4lXOa+kq/n88E+PtV8Ca5DqGl3ktleQMGjmhYq6H2xX7f/ALP/AMVLX4xfCzRfEkEgeaeELcpnJSUcMD+NfWU22rM+GxmHVN88dmeiUUUVqeYFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFAI+A/+CuWkPJ4I8B6mJPkivLiAx47sqkH/wAdNfmhpReG9tZV6pIrfka/XP8A4Kd+Er7xF+zsl7aAyw6TqUVxPCP7rBk8z/gO8/8AfVfkZa3H2c/Sg9LCPllc+3tKn+06dazdd8Stn6irB715t8FvHi+IdGXTrlwbq2XCE9StelFeDXwWIpOlVlBn9PZdiIYrDwqQ7IapqVOhqJF5NTIK5D0h46UUDiisiwopMijIoAbRRR2NABmpheT7NnnybP7u84/KquTmnoK0RyyhB/GPxXkv7Q2uR2XhdbEHdPOxJQ9kAPP513OsfELw9oM3k3mqQJL/AHQwP8q+aviv4sh8V+I7i5tpvMtsFY/oK9rA0Juam0fGcQ5jSoYSdKnLWWhwgBINdB8P9aufCvi7SdVt0SWW1u4Z0EqbwCrhhx+FYtuAQa90/Zf/AGetW+NXi6UWrrbWmn27XEssiFlOeAvHf0r7FH4Zc/Rz4Eftl+HvHckWiazdJa6k7AQ3JwiTfQfX5a+l6/Cn4kaBqngHx7fWM80sF7DJ5kZ8tk/vetfY37Iv7eMsE9p4X+IWrebayYjt9Uuiu+P0DN/Ev+1Ssc04X1R+iVFVrK+hvreOe3lWe3kG6OWM5Vh2INWQc0jnegUUUUGYUUUUAFFFFABRRRSYH50/8FXtPxrHge9+/vt54tnphwc/+PfpXxz8Ctv/AAtfwwM/8vkX86/Q/wD4Kh+AZte+EOj+KLeVk/sC8LTrGuSUk2/NntgoP++q/MrwZrL+HvF+m6hCCslvcI6kHHQ159ZXhKJ9ZgZKVFH6w+GGxq8XP3q9izkDFeEaHqCzfZLqNgVk2sGHoa9VsPFdm8f+srxcPUVNNM3xcHKSkjk/jR8b7L4U2iKsJvtWlHyW6sAEHq1fI/ij48+MPGW5L7U5Y4D/AMsoXKr+Va/7UmoHVPijMqtutobdEiOePuj5lriPAngfUfEupCG3QyQn7zt2rhxFec5uKeh97lOX4XD0VXlG77swLi3utb1BEijlubqUngZZmJNfQnwe+F03g0S6hfLm8nQKFP8AyzHcV1Xg/wCH+meEEdoI3luG6yyOePpXU9a5VFrcnMMwVV+zhshlFFFaI+fIitOQ4/Co5LqCLO+aNP8AeYCq8mt6fDIiSXkCs+duZBziqswRzfxJ+FWg/EzTjDqdqv2lQRHdRjbIh+vf8a+PPih+zlrfgeSR0tje6dn5LyJc49mHY19wx+J9IlmaKPU7R5F6qJlyP1q3HfW8o+WeJ/o4NdFGtOi9BSSmrSR+VtxpnlZGc+9Zc8JiJ6n8K/Q7x5+zP4T8YedcW0R0q9clvMg+4T7ivn7xJ+yR4u00SPYG11GIdNhw2P8Ad617NLG056S0OCeHa+E+a2Zu6moygOe1drrfw51/RpWW80uaEjrlCP51gvpUkeQ6FCOxGK74zjLZnK6D6mGyEGh4/kq5JDhyKc0WVra6sYOFjJ2NmnrEa1BaDFOFoPSp5jDkMgxNzUexhW+liD2p39nJjpT5g9k3sc+rke9TKeCcVrCzhUnIFTR2sGOgo5hqlI59pOangjElX59NQE7afbWQFTzG8ad9y7aWlt9k6Dza9H+BqSp470dbeLe3n1w+laLd6g8cdrbyTvJ91Y1yTX2p+zV8B28E2ieIdYQf2lMv7m3xkRL/AHj71wYivFQaPTwtP3rroe8ImBRsqUDijbXyzO9lK5Tg1kSphjxXQvFuBqhPZ5BwK5p03LY0o1EnZmWCR3ql4j0mLX9CvrCZQyXMDwkH/aUj+taLWkoJ44pBGVHNRBODOu6PzB8ZeF5/DfiO8s5QVeKQqQfrX2x/wTG+Of8Awjviy78B6lcbbPWP3lpvOAtwOgH+8vH+1tWvBv2tbaC3+KFy0KBDJDGz47naOayv2U7v7D8dPBl3nHk6tbydv76ivvsLPnpxkfI42mrTifuRRRRXoHxwUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUV5V+0f8b7D4HfD+61O4mVNQuVMNlG38UlBcY3OP/ay+O/gPwL4I1vw14imGoXWq2j2x06La7JkZVm9P4a/Fi7gWHUJ4VBjVH27G617Zp2keIvjf8Srl2WS9vdQui0jqxICs/zbPb5v5V9FftO/sceF/Avw30i8l1+Gx8Vww/6TuibZOqr/ALK8Y6ZoOyEbHw74W8S3PhnV4ri3coyMDweo9K+yND1WLW9Jtb6Egxzxhxjt6ivi2ewMc+0qQw/vDFfRfwA1We40CbT5TuW3O5CewPavDzSipU1UW6P1Pg/MKkazw0noz1PbT171m6t4i0zQxm/vYrX/AK6NisT/AIWv4R/6Dlt+Tf4V8uoTktEfrE8XQp7yOxo7GqGm6xZ6rCJbK7huoyMgxOGq8DnIrncHF6ounXhVV4O4zNG6k7mikajqKKy/EXiK08Nae91dvhR0Xuxq4xuRVqxpR5pFy9vrbTbd57mURRr1Jr5r+Jnxj1DXNQMGm3cljp6fdMTbWb61l/Eb4m3nia5crIYrfOFiBx+deegeZ16V9VgcucV7Sr9x+QZ9xM6snQwbtHuWZtReR2cuzuerE81ntKxPJrbttELKS3BrOv7E28hFfQRhGOiR+YVqlWrLmlK5BDOU71+pv/BMHwRe6b8N9W8QXpD2t/N5VuPQL1r8/v2bvC+ia58XvDNt4mja60iW7WOSAfx7jhc+2a/cnStKstC02DTtNtYrKxt0CRQQrtVQOwFbWViI36ny5+3Z+zjp/j/wTdeK9MgEeuaeolcIOZkGePrX5Ufap9Nuv+WkBjNf0AXtnFqOn3NncRiW3mQpIh/iQ8EV+MH7Wvwcb4PfFrVtJi3NpkztLaFl/wCWbEsvPfg4/wCAmkNSufX37B37YBv00z4e+KrwSbxssNQnbBB4xGxr77Uda/nb06ebTL2G5glaKaFw6spwa/dD9l34kP8AFL4I+GNcuJI3vzbCG7VGB2yrwc46Z6496loynG+p6rRRRUHKFFFFABRRRQAUUUooA5b4n+CdM+Inw/17w5rBCaff2kkMkhGfLypw34Hn8K/KDUf2Qtd0rxjHDZuupaek/F3j5HT+9Xrv7Wf7Xfj34b/H7xB4ftL1V0qJFiXT5TkFODu/EVv/AAS/aE0D4t2Mdv8AalsfEIA36e4wZT38sZ5+leRjZOOi6n1WXUZQhd7M9I8P6W2jaPY2DHebaFYi3rgYrRBxTu1RkHJr5ty6HvJJ6mbqnhfSdblMt9Yw3EmMbnXJq1puk2ekxCOzto7dBxhFAq1g0VB0891YlHIopqnrXO/EXxta/D3wjf65djelumUj/vt2FXa5g9DlfjL8c9I+FOmukjeZqTRF446+Jte/ah8a6oJ/+JlKPN/55sePm7VxPxI+I2q/E/xTeatqMzbJG+SHPyoozgCua4AxXt4XB+7zT6nBUxNnZHQTfE7xTeGQy6lePvYt80uP61Tbxfrsud97OfrKf8aySaNx9a9RYemuhxSxNXozUHifVO91N/39NaWm+PtW0/Hl310v+7Ma5jPvSZp/V6fYj6zW/mPVtM+PHi6xwYfEF8uOzSZrs7X9sDx7aAD7Tbzr/wBNIQfm6Bq+eA5AxmlEzjo5/OoeFpPoaRxlVdT620/9sye5iiTV/DllPtUKzIvJrpNG+Mvwe8aRD+39Ch0u5fht8Qx+Yr4rjv5E6ncPemy3TzZyfwFYPCQ+zobxxkvtI+3bf9mf4bePdR+16H4kEkI/eG2tWV+PTB5FZus/sQuxdtN1iOP0jmiOa+O9E1/VfDV8l5pV/PZXCHKvE5BFfaH7M/7V1z441ePw74wuI11CXC297jaJD6N71x16danG8XdHTTqUq2lrM5O+/Yu8Q2sQaG5gumJ+6px/SsW+/ZF8YWmStqsv+42f6V94JwTTnGRXnQrzRr7CHY+BV/ZX8ZAf8g5/zrk/EPwW8VaDN5cmj3L5OPkjLfyFfpDtoMfFdEcTNFKjBH5g3nwr8QQc3GmXdv8A70D/AOFXY/gv4naaKH+yrvzZPuL5BGfxr9HdW1rRtCiaXU76ysFAzuupVjz+Zri9X+P/AIB0bKya5bzSj+CBGf8A8ext/WtPrNTsLkh3Pj3w1+zF4x8Q3Zg/s17Ty/8AWfam8uvT9E/Yx1K11OCa51C1WAfeUAua9Lu/2vPBFruCJfTEdNkS4P8A49VP/hsvweP+XHUP++F/xpe0r1NFEOSB6Z4O+FHh/wAEoG06yVZiBmWT5m/D0rrwCBXg8X7Zngnd+/t9RhX18tT/AOzVds/2wPh9dPtaa/gH96S3GP0Y1ySw1eTuzaMoxVke1UV5lB+0x8OZ/wDmZII/9+KQf+y122ieMdE8R2K3em6raXkLcjypQSfwrGWHnD4kVzJmvRtHpQDkUVjYkaY1PUCo2tY26qKmorN0+Yd2fBf7ZqiL4oGMDANujf8AjoH/ALLXlPwr1WbRfH3h+4t2KSrfQ7SOx3itz9oXxefF/wAUNbu9+6KKYwR89FXIqP8AZ+8PJ4p+L3hTTJBlZ7+Ef+PivscLBwpRizx68lKbP3csl2WsS+ij+VTUkY2oo9Bilr0EfFsKKKKYBRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFfmz/AMFQ/iB9o8Z6D4eglhnOnWzyyKCrtG7Ngbl+lfpNX4zftc6hPrH7UPi2TduEUwiH/AQFWg6KR9Gf8Ex/Ax1VdZ8S3cCtFZlbaFnXkSHDNj8AP++hXsX7XnwC8QfFRrXUvDUSfbLeNkkXewCqW6jHerH/AAT30e1034HyXUK4mvL53mPqVVUH/oNfSR6mg6r2Pw9+LXwi8Q+Ab27j1PTZLFXlxHIEPzVw2mePtd8K27Q6bfy2oB+YBRya/dzxV4A8O+OLF7PX9HtdUt3GCs8Yavzx/wCCin7MXgnwD4f0zxN4c05NIupHNu8EYxGU9cf3veplDmVmdFPFVKL5qTsz4s1zxNrHjQw3N2yzPH3NZflzKDvUA+1XNAGLZhWmEB6gVUKUaatFESxdetK9SV2Y+leJNR0KcS2V3LbODn5GwD+FeleFv2j9V0vZDrMKalbjgyp8s/59K851PTBhpYh9VrAYYJ7VnUw1Kp8SPQw+bYvC/BNn0dqP7T+mLB/xL9LvJpv+nrZGv/ju41h/8NOaoJv+QXZ+T9X3f+hV4YDngGnLaMex/KuX+zcOnflPUlxRmEo8vMe4J+1HfrP+80e0aH/ZkcN/Wuf+J3xCPjBRPpzzJBn7spBrzMWhHUGrEC7MA9PStI4GhF3UTmqcRY7EU3SqS0HW1hLdvl2JrdtNKSFenPvT7eAQAdPwq9HJkdK9Gx82RInl5FYOuRnduroZevFZHiBNtuDUlGfoWrzaZdxSwyNHLEwZHB6EV+7fwV8QT+K/hT4U1a6Ty7i506F3TfuIO3ua/BKDmQfWv2S/4J9+OX8XfAKxsZiGm0iRrPeT8zL1X9M1YH0sgAXPtXw3/wAFPPBI1Dwp4f8AESeUz29y9s5df3hVtzL83t81fcinrnivk/8A4KL3Vj/wqLT4LgYP2wyJJ/uo/wAv480GaPyjlttjGv0g/wCCUfj9tQ8M+KvCkgOyzeO9hkJ4beWVgB7bQfxr87dUuIEDSJwpPFfbf/BKa5muPHHiYDiD7Gn/AANtzYqWOWx+mVFFFYnEFFFFABRRSigFqJRXyH+2L+24/wAG70eGvCX2W71spm4uZT8kI/u/WvgLxR+2J8WvGLSC78a39tG3/LKzfy8D6ilc76eCqTdnofYv7dn7P1r8TvFcWs6JEketQIIrliPlkQK3y8f71fG3gv4L+MNA8e2P/Eqv4Jorj93KNyfxfe3eldh+z18UvEmreOrAXmtX2oCe5GVuZi5O5f4t1fbifKMgAE/SvmMVWfO4s+2oUPZ0kmyO2cm1i9cLVgqM5qLvUin1rx+pskOLqeMVGVBoaeNc5NRNfxg9ad0XZkqjBr5e/bq8bfZfDWleG4nw9wzXMgB7LwK+mv7Ri9a+Av2zPEI1j4rXUUbZjsoUtwPcjcf5114Zc9RGFZNQbPn4cUuTSDpRX1SR843djgc0HoabRnitDMQmkzQTSVZQuaAaApPSgqRQB9RfsW/AfwJ8ar/XG8XO9y1h5Yi02Kdk3ht25jt+bjavT1r6L8T/APBPD4banGx0m51TQpj02zrLGP8AgLLn9a/Ofw14s1jwfqceo6JqNxpl9GcrPbvtYV+nv7K37TFj8cvDS6fqUkdv4rskAuIc488D/lov9amw7nwh+0J+zP4n+AV/A98F1PQ7t2S11SBcIxHZhztP1rzDw9qD6TrFtexMUkhdZFI68HNfsX8aPh1p3xM+F+u6BqqL5cluZYJW/wCWLopZZB/wLg1+NajFxj0NRJXVgpTcZXP1Z+GXjSPx/wCCdK11GDPdRbpAOzg4NdWehr5+/Yv1ptR+Fn2VmB+y3DouOwr6Azwa+RkrSaPpoz5kQ96+bf2mf2mh4K8/w74dmkGqj/W3cX/LP/ZX3r6J1O9XTdOu7thuWCJ5SM4yFBP9K/J/xn4im8TeJtR1KVyxnnaTk+prqw9L2srGFepyRuP8SeNdT8UXb3F7dT3EjHJeZyW/nWdb3jIvLH8Sapg5pmTXuKhGKPEdZ3Ogi1Akdaf9tJ71hwykCpxN71rCmkdMKzsaMk5k706J+KpRyhh1q/p1u17dwW6nDzSLEp9ycf1qnE3jVGZPrS2mqT2lx8sxHtX3R4W/4J4aM/h2GTWdfuzqcib5Daxjy1b0zmvPPif/AME/vEWi2D6p4U1WPWI40LPaTp5cpx6Z4NYTpc4vb62OO+H/AO1T4r8L29vZT3SahYxcBLldzY9N/XH419f/AAy+KOkfE3SvtNhIEuY1BmtmPzIfb1Ffmg9hcWUskU67JI2KMvoR1r1T4D/E+58BeLLGZHP2eaaOC4XPBjLDNeXiMIlHmR34epzOzP0NwPWua+I3jCz8DeDNS1e7n8jyYm8o7c5kwdorfB75r4K/a6+Nf/CceJV0HTZmGl6YzJIVPyyS9/y/r7VwUKLqTUTSrU5UeBajfNqGoXFw5O6aRnOfUkmvpX/gnn4W/wCEu/aQ0Msm6LSt15KcdCmTH/48q18v53c1+qP/AAS6+Cs/hPwBrHjfUrby7jXJEitC6/N5UYILD2J/ka+pgraHzVedk2fcI6UUUV1Hzj3CiiigQUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABX4iftZXt0n7RXjxwvlbb7jb9RX7d1+R3/BRDwtY+F/jnq81vDF/p8IuJP4PvA/wrQdNI+rv+CaHiSLW/gJdW6TvNNZ6nLHJuYHG4Kw6exr6yUV+ev/BJzXPl8caQbnPmLBeLB9CyM/6qv/Aa/Q8KBQXNjVHFfn//AMFUJ76OPwtbbv8AQngdsf7Yb/Cv0C218rf8FGPDbax8DjqaR+bNp1x2jyQjKdxz2+6B+NNGUWz8ndHwu5a1gozisLT5NlyVPFbSMWNaGw1gMsCeKyL3TI5RxxWvNGeTWZO7qSKCzMTTljet2wt49vIFZwwTk5qzDexwjHNAE95Ai5wKzHUAnFWp71JM4NVC2/pQZ6IuW186jB5rUtZWmGay7WyeQZArVtYnhGKsZMRms/XIt9k3tWkASDVXUU3Wkg9qllnHQ8S/jX6ff8EtNejv/C/ifT4m3iCSORj/AHT0r8wPuy19AfspftP3/wCzvrGqSw2K6nb3sYDwtMUzg1QH7V7MZr82P+CnnxI+0+K9G8GwS5js4ftlyoP/AC0bcFX/AL55/GvRtF/4KleF5bUDUfDF1DP8uRBchk+9/eYLXwF8evirN8YPiX4h8XT7kkv7g7ImOSka/LGPwQKPwoA81u5GdzmvvL/gkzB5nj/xgews4v5tXwafn6jNfqX/AMEsfhV/wjvw71vxdPHifWJ/s0LgcGGPof8AvpmqWRLY+6aKKKxOIKKKKACvBP20/jNP8G/gxqF9p5U6teuLS2yzKUZg3zggg5GK97r4S/4Kv6l5Xw/8I2KxROZryWRmP+sG1V249uWJ9wtB04aKlVSZ+bms63c61cPLcuZHYklick8133wO+B+o/FbWJEhJt7O3TzJJSO1eVxt71+hf7KkNqvwj097ZNszyN5hxzuryMVWdKm2tz7KhactS78Lv2fNG+HF5HdbnvNRRsiWZVXb8vavXlANQAHuMmpY2xXzbnKbvI9VE5UBc1nXd35W4CrF3OY0NYdxKZCa4qsrG1KFwa6LZ5ppkJ71VGQamU5FcXM7naopDSxzX5w/G7WP7a+JPiK5zlXvZAPop2j9BX6O4ya/M74m2jWHjnXbV/vw3s0bfUSMP6V7+WPmqM8vMNKWhyXenYJpveut0jSoJbVHZAxI719gtT5Q5uHS7mf7sZP4VOPD931K4rtBi2XCKPyqITNIen5VVmYnHf2LeH/lg1M/s6aEnzI2Ue4r0m3sNgyXU/SpZvICFXiV/qKLMaPNFEKLznNV5R5mdrAD3rvLjS7OckmBR9BWZceF7aXOwsn0o5WByATGa6X4cfEPWfhb4tsvEOhzmC9tnDezDPKn2NZ934fubQkqPNj9R1qCS02L8y4PvTKufS/xL/wCCgXjHxz4Sm0TT9Ms9C+1RmK5uoSzyFT1CZPy5r5cSU785zSsoBIpu2k0TFansnwm/aM1v4WaJPp2jQ2aJI++SS5RmYn27Voa3+1x4+1PUHnj1k2yEAeVAm1R+FeHIaft9q8+WGptt2PRp1Zx6ntUv7WPjy70a+0y51BLu1u4jE/nJllB67T1BrxKQ5c1L0FV2OWNaQoxp6xHVm5rUevSlpF6UtdBwWAcUZNFGKstaCqxB61NHeSwSwyRuVeN1cEHkEHNQYooKUrH3h+z/APt+2bQWWhfECMWbBRH/AGzEpZP+2i/1H5V9oxXUF3bwz2s8dzbTIJI5YjlWU9CDX4fV6d8PP2kfiR8M9KbStA8S3MOnHOy2nVZ1iz18veDs+g4HpSsUnc6/9qe1tLL43eJ47N0MTSiQhTzuK5NeaeG2/wCJpajP8YX8zWZrXiO81i+lv9TuXur25YvJK5yWJ61sfDmN7vxnoscf32uo8fXPFY1V+7Z3Yd++j7Z/aj+Ib+BPhIRaziPUdS2WkIzzyMs35A/nX54yIXkd3JZic5J619bft4fahB4G25+y+Xc7/wDe/c4r5f8ACfhC/wDGOuxafYRvLLO4RQO1edhFGMXIrFNt2R1v7O/wl1L4yfE/R/DdtFPJbTTqbqeGPP2eLPLHPHT19q/djwn4bsfB3hnTdC0yPytP0+3S2t09ERQo/lXxN+zk/gX9jjwFqN74huvL1KWJGuSPnkds/dVfTmvYfhl+3n8OPij47sPCmkm8S9vDshmkiAjZvQc56Z7dq9OnNSdj57Fcy0Po2iiiuo8kKKKKCQooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACvyy/wCCpejGw+L+kXxX9zfWG3P+7kV+ptfDX/BUXwE+s+CfD3iGL5RYztBM23OQwJUe3INBrT3PnP8A4Jj+N4tA+O8ejTvtGr2c1sg9XVRKo/IPX6xbsk1+D/wx8RXHw88caT4ispRb3NhcpOkvTbjjP5V+z3gH43+E/FPgXT/EUuvabax3EAaRJLqNWR8fMu3dQdLV0eip3ryT9qrSLLxB8B/GWnXlzDbmSxkmh819u50G4Y/KvGvjr/wUO8MeA5brSvCAXXdRX5TeL88MR+nV/wBK/PT4q/tD+NPiprU9/rmsTuJDhYQAiqOcYAOB/OmiIwPK9SmMepnZ93NdNp8qSxLg5NcswEkzk8mrGn37Ws+CePStCjpWVncgU2W2ijXMpFVX1yOOEkferAvNXlu2IY8elAFjU7+CNj5XI9qzftpYE1GRnPetXRfB2teIpPL0vTZ9Ql/55Wy73/75HP6UFmWbk5q9Zyblya94+EH7G/i34j69b2uoae/hqz48y61LMRH+6uCWNdb+1D+yXF8ADYw6fNPqNrdW2TelDiSRc569KjmM3Fo+crXXYIUwwOfpUo8RW+e+PpXOXVpJE2Mdaj+zOVp8wrHWx+IbNgfmOfpVe/1i3lgdFYgkelcs1u0RzTkBPXNUUNIJcmrVsdpzUax5BPSu08HfCDxl4zsb+90Pw9f6paWP/HzNDAzLF9SBVlHNqxZTUEqZ7V0F14L1axmaKa0mSReCvlnj+tK/hW/SHe9tIg/vMhAoC6KPhXSW1XV7e0RQWmcIM+pr91fgBoGn+GvhD4Z0/TbU2lvFZxsF/vMw3MfzNfmJ+yT+yhrvxR1/S9c1HTruz8PJKrM8qGETKOu16/XXT7KLTrOC1gUJDAgjUDpgVDMpySLFFFFZHKFFFFABXwP/AMFXrSR/DngW5/5Yxz3MR/3mVD/7LX3xXyj/AMFLPCEuv/s5XGpQpuOk38FxIR2QtsP6utB1YX+Kj8ha+0P2J/GxvtC1DQJHy9s3nxA/hmvjBsZPpXofwK+Ir/D/AMf6Tfbytt5oSYdih615OMp89Nn1OHlyzP0x60oB7VBp17DqVpDdW7iSGZQ6MO4NWwOK+XR7TK14u6OsOUYY10Ey7ojWHcLhjXHWR1UHYrKu8+1KTtGF5o3hQV7mkRfs+WbkGuLY7h2OK+Ev2sfBi+HviLcahBHtg1NftJIHAk6OP5N/wKvu7zAQa4n4rfDq3+JfhK602VhFOBugm25KPzg16GDr+wqXexzYil7am4n5oZ5rrPDd35lqUzytHjz4e6p4I1iaw1G2MMqH5WA+SQf3lNczbXUtlJuRipHUV95h6saiumfF16UqTs0d+s3Y8igKC2VOPauesPESS/LL8p9a2IZ1kAZWBHqK9A4TWinYDFKyq45NQ29xGo+Y1aEsLdGFBSIlQenFNkwvQVZLAg4xVWWQKTuGaBjbdckg1z3iWFYCSMc+lbDXyRgsOMVy2v6ibtiB2rORaMnOTU1lbNe3kVun3pDgVVXvXqH7Ongabxv8R7FAiNa2redPv6bR/j0rixFTkps2o03Ulyo+ovBn7Kngi48MafPfafJJeyWyyO3mEAlhn0rXu/2ZPh9cD/kDND/1ylYf0r1u2aVY2Bbg9AOwoMec18L9ar/zH2kKFJdD5F/aL+BHhPwT4Ml1zQ7e4gufNVGR5Mxrmvlav0N/aZ0T+0fhFq6hT/ouLjH+71zX55GvqsBVlVh7zPBzCmqbXKTRgYNXLHTJLxsAFR61SsB5lyufu5rvrWOIWyiMAGvYjG54pgr4Uk6+YKkHhdh/y0FdAVwvWmYJ6Gr5EZupbQ55vDLjpIDUDeG5xnDKa6tIvU1OsSYxSGnc4KbSLmHOYyw9RUttZOFzIdo9K761tMk1Q8VaaYNOeUDmkbROCvgom+Vs4r139mfQ/wC3PizoCbdy28guSfTZ8w/lXjEuWc19XfsG+H4b3xH4g1aZCz2cCpE3oWDZ/pXDjJclJs7cK/fPpj40fBfTvi/4dtbC7lNtLaSiSKZRyBxuX8cD8q5/TPAPhT9nLwVqWuWdnGby3hLNdO2DKf7texA5HXNfNP7XnhbxX4yTS9N0iynuNNXczfZ0JG8njOK+dpVWtLnsOCep8j+PPiRqHxH8R32sajcSPM7EgOxKBf7qrXun/BPj4c6j40+P2k6lDb50zRs3dzPjgFeUX/vrbWL8H/2N/GHjLxXa2ep2M2hae8mDJcLmTBbA4r9bfhJ8JPDvwe8JWugeHLCO0toUVZJQo8ydh/G7dzX02GcZaxex4GOcacXfqdvRR0ortPlwooooICiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAK8/+Onw/h+I/w31jSJYw7vCzR57MAa9ApGUMCCMg0FRdnc/Bb4neGpfBmuXGnSoY3DlACMcCuH/tq8tswieXyfQbq/Wz9q39hPT/AIz6hFrnhYWejauzFrpXXCT+/wDsn+f8/l0/8EsfiX31vSP+/hoPQU4tHx1FctNyWYk9zXYeH/hZrnjzyYdLsZZzLt8vyvvu27+Gvv74X/8ABLPw7pyQz+L/ABFdX84wWt7Fdqg+mT1FfX/gL4T+EvhrpyWXh7RLWxVRgzhA0r+5Y80EOSR+aPir/gndeeBPgvc+M9YvrhtRs4/Pl0+CLedv95mz8uPTHrXyBe6WVmZ4wQuf4hiv6Fr6wtdUsLixvIVntLiNopYmGQynORX5/fFn/gm5dDVNQv8AwbqSXlvPIXjsbv5GhHpnvVohTXU/N+SxbBzVOS1ZM96+ttV/4J//ABdFw8cWhLJD2MUygspbbkcV5b8YP2cfFHwT0fS7nxSkFjeajvaLT/NDzLGpxvbHTJ7VRV09jzXwB4ZuPF/jPRtFthme9uo4E+pYCv3V+DPww034OfD3TfCuloDDaIQ0zL88jMcsxPua/I39ifw6niD9ozwhbNHuEVyZ2YjpsBI/Wv2rwMGl0KWh4D4n0qTQfEVwBJvbzDMj47Ek4/nXb694H0b41fC+XQdbh862uU2PJGcyQnsVbs1ZnxVtPL1KCfH3l2k10PwjuN2jXMWfuyZrkT947JxTpcx+ZP7R37AfjT4VWd1rukKniHw7BljPAu2SJf8AajJzxXyh9lmPrn2r+gPxtoreJ/CWraQrhDeW0kAYjgbht/rX4h/Efwrd+FfFWpR6hGtrOlw4kiA+brW5xJXOBg8Pajdcppl1N/2zbn8Mf1rZ0r4aeKdXkSO10G9Z5DhB9nbk9hX6J/8ABO7446J4ysB4M1yygbV7ZR9jkmtlyV7cmvur+wdOD7/sFrv/AL3kLmrJlofkL8IP+CfXxF8fM099o/8AY9mxBJvpPLbG70/3fX2r9OP2evgHpHwC8Bw+GrII7GRp7iRRjzHb+lenogRQAMAdqbVJmTlcrro+nRoUWxt1T+6Ilx/Km3ej6bfA/abG3uP+usKt/MVaoqiLkcMMVtEsUMaxRqMBEGAB9KdRRWZkOoooqACiiigA7Gud+IXgu0+I3gLxB4WvgDbarZyWpLDO0spCt+BwfwroqAMUGtN8ruj8APiX4Bv/AIb+M9a8PaiuLjTryW0Zx0co5XI9jiuXhYxSK44KnINfo5/wUl/ZptBaXvxT0y/jtpS0a32nuP8AXNkIrJ78ljX5xVzyWp9BTlzRTR9Qfs1/tOS+HZ7Xw54hlabTJJdqXLHJtyzf+g/y+nT7Yzk9a/JTRJxbXTN3I4Nfpl8FNRudT+GOgXFyyv8AuBEjKMEqvAz6nFfNYyiqcuZbM+goSk4LmO6AypFU5bUNnirq9DTgoNeS1c6U7HOTWJVicVFIhK4xXSvErKeBVdLNGJ4rn9mjpVVo5+O3b0NWYrRiDxW1HZqCeBViOBR2pqmkHtWcZ4m+GWheNbH7Prlgl7EM7Tnay57g18l/GT9jnVtCkuNT8MRHV9K+8YY+LiL14/iFfdBWkC7QcV6OHrToP3TjrQjWVpH5I3vha+0yVo7nTri3YcHz4ytUWtZICSAV/wB01+sGueDdF8SxNHqWmW10CMZaMZrxvxp+xz4Q1/zJLGSXSpT0EfK5r26eZL7Wh5M8D/Kz4FjvbiPpI34mrMWt3CdSD9RX0b4l/Ye8Q2O99J1CG+QdFfg15drv7OXxD0KaRJPDdxcInWS2+dTXdHGxkr8yOR4WS6HDnxDOFPT9arHxBOc5A/M1tP8ADnxRE5R/DuoBh1HkGnr8HvGV0POh8O6gYv8Arga1WKi92Q8PJdDlp7+e4Jy5A9BUBLHqc13LfA/xzH5W7wzqIEudp8g84/8A107TPg3r9zdNDewHTsHGZyM/lmh4mFtzejgqtZ8sUcDX3b+xr8KZtA8H3Wv6rF9muNQZFhiI5EfaT/gR/wDQf9quD+H/AMJvAXhMLqOrW93r18MEb9qQgj+HAr2ab48yCFYLHSIraJOFXd0HavncbjYyTij6TBZNiIT5pI9fexCZAOah/s8188a3+0V4v028GEtfsrcqrw54+ta8n7Vps4YxPpMFxJsBYwybf0NeHBRmezLL60Vc9s1DwxBrWiX2nXCh47qJ42B75r83fjp8Jrn4V+Lr6xcM1nu3QSFcAqScD8K+wtP/AGuNEkwLnSbuA9yrhhVL4m+OPhx8W/D8tjqBmE8sf7uV0+eNv8K9bC1JYd3R5OKwdSrFpo+ArSYRuD0rrbPUY5YgA2DipPEnwm8RaDaPqLabLcaSDgXcI3p+nSuSBKjjjFfTUq8Zq6Pk6tCpTbVjtUuj2+YVctrqMj5l2muKtdblg4IyKvR+Jlx8yY+ld6dzz2u51/2m3H8VAu4B/FXJHxLD/cpjeJI+0ZosJHolnq9lCoJxuHrXN+OvFou4PIhIA6Vx91rskmdh2isyXdMdzsT9awOhMmGDg+tfZv7FGlTWPhHVtS+ZFu7lYV54ITJP/oVfLPgrwFqnjHVYLGwtnuJZMDYi5I9z2H41+inw78HW3gfwrpui2yjZZwhWYfxyHlm/PNeBmmJgqXs09We5l+HnNuTR1kd3LH0c1keMPGi+EPDV9qsp87yBu21fPesjxV4Yh8VeH7zS5mAS5jIORXy1Gq09T6GdH3dDyP4Wft1jS/Gdkdc0mK+gik62HyOn93cp3Z/76r9M/CPiWz8X+HdP1nT38yyvoVnhb/ZIyK/BDxb4fuPBfim90y6UpJazGPn2PFfof/wTU+Plzr1rffD29VmW1ja5s7lm3buVypz0H+DV97g4RjC66nxWYx9pLmjsj73ooor0D5phRRRQQFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUANooooAKKKKC7hRRRVkDCtfl3/wVC8SJefF/SNJiiwLDTk3yf3i0jNiv1Hr8c/28/E3/AAkP7SvixAdy2MkdqPbbGtNHRAuf8E74Gb9ozSpHjCp5UuD68V+vFfk1/wAE6v8AS/2hrYHnyrSeT+H73y9K/WUPmmdByHxE0X+0tId1XMkfzA1i/B9j5F6vuK9DuoFuIXjbkMMc1z3h3wtN4cuZfLlEkL9fWuVxtI0VX924M6EivzR/4KcfC5tD8Vab4usoUW01GNhLt4IkUYbP4sG/4FX6XV4z+1p8Io/i18FtfslSNtRsoWvLIvtH7xVPHzeoyPritTJM/In4NfFi6+FPjjRtfgLYsrhZpEB++o6j8q/b74TfFHRfi94G0vxPoV1Hc2N7EG/dvuMb/wASN6EcfnX4BXUb29xLDIu1kbFffn/BLr4522iane/DrUpyq6nJ52neY3CzKvzIP95VP6VQSV0fpfRQKKg43oFFFFaEBRRRQAUUUVABRRRQAUUUUFo/O7/gqr46vYrjw54YgMkVilu19KcYWV2YooBz/CA2f94V+cmTX3x/wVN87/hZvhvHmeR/ZK9fubvOk+77/KPzFfDWl6VNqur29nChMs8qxKCO5OB/Oueb1PoqK91JGl4K0T+19ViiZXaPO59i5O0deP8APWv0m+Eli2m/DvSrYyeZGmfK+UrhPTnnrnrXL/C74A+FvB2jWv2nTLfUNQChnkuo1kCt/s5HFeqxxrGAqABF6Adq+axmIVR8qPoqatFE9FFFeYbB2NNQYzXl3xC/aN8J/Dy8ls72aS4uo2KvHCOQR/8Arp3gj9pHwR44uFgtdRMEzf8ALO4Ty+afs3ugcrHqlAOKTilppAtrhSHoaWkPQ0WAjPFJSmkrMBtAxzmiikQN8iEchFB+lHzAYUcUoGKcGIp3dhnO+MfEq+HtDubpiAyrsQe9fMF4zaxdy3Mp+Z2zXqfx41ktNHp8Zwi/M4rySOQ+UXU4CCuc+7yah7Oj7Tqx5DRQbM8A1WE7KTTDM7jk1Ed3NQe+kF0sN2MTciuF13S5NOumDZMbco/qK7UrmodasP7R0p4sfvYxuQ1dPSRz1qfu3PPCQKUN71BcZHFdt8JPhnd/EfXVtUOy2j5lf2r1U1Y8WpKNOLcj6P8AgH4Wn/sCHVL7/UzR/wCq/g2/7X/fNb3iL9nr4e+JrZ0uPD9qrOS3nW6hGye+Vru/DugQeGtFtNOh/exwR7BI/wB7v/jV3YAOBipVRp6M+SryjUm2fOGs/sOeCb9D9jur6wb1SQN/MGuB1X/gn7db2bTfFkTL2S5tjn8wf6V9mYNGDW0cRUW0jzpUIPofCuofsE+LYIt1prWm3T/3X3R/rg1z15+xJ8RrcZjj064/653J/qtfobjIpAuK2WLrR15iHhKT6H51WP7FnxLvM79Ps7T/AK73S/0Br0vwn+w3bWE8DeJNXkuW4ZobMbFU+gb+vFfZdZ2qW54cD2Nc1bHVpK1y6OFpRd7HC+DvhxoHgKzFtotnHbDHLhdzt9WNdIgxmjpmlXvXgzm5ttnuU7RVkLio53EFvLO5xFEu52/uj1qUAnoM14h+1Z8SV8KeGIvD9nMV1C/UmUo2Cqdh/WtKNN1ZcqKq1VTi5M+R/i54nbxh4/1fVCSyzzFgfYcD9BX1z/wSx8JXF78Sde8QJs8iwskt5N33syM23H/fJr4rKgnmv1W/4Jm/DGXwl8H7vxFcoFl8QzrNHkc+VHlV/UtX6Fh1ZWPiMXNRhKTPsCil9aSuw+WCiiiggKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAK/B/wDaL8Qz6/8AGfxzffaZWE2t3bg/d485v8FH/Aa/eCvw9/a38AX3gn47eL9OvF2NNeSTx8f6yNyWR1x0ySP++WrRG9M9F/4JpGFv2hYP+eyWE55f/dr9bBmvyK/4JpWkw/aVtMQSyiKxn8zH3E+796v15xTNpOwCijNFYM5rthUdxbx3UEkMiho3BVh7VJR2NRc0TsfiT+2F8Hn+Dvxr1rTIw76fcubq1lb+JWJOB9OlcF8H/FD+DPiR4f1hTtNneRzAnsQwNfo5/wAFGfgHqXxA0TS/FukQ/aJ9IVlnRWwRHyxP6V+aN1afZbnyPI/79fP/AOPVutUdK1R/QF4c1mHxFoOn6pbkGG8gSdcHPDDP9a0K4H4AQS2vwR8CQTf6yPRbRD+ESiu+qTimFFFFBmFFFFABRRRQAUDnpWN4v8ZaH4C0C41rxDqcGk6XAV8y5uGwq5OBXxT8Tf8Agq14Y0C7uLLwb4audcC/KLu8kEcTHuQBz+tBrCnKpsfd9FfnXov/AAVpjmaFdQ8BFF3DzXt70nA74BXr+NfS3wI/bV+Hnx0KWljfjRtbZxGNM1NxHJI3P+rPRulBq6E462PAP+CoXgS5v18L+JFSVrSJZLRmUfIjD5hur4F8G3CWHjPSp2+6l1Gx/wC+hX7m/En4f6X8UPBmqeHdVhV7e8iMZZl5jbsw9CK/E34sfDTVPhF8RtX8OanGyT6dL+7c8eZGD+7cexFctZO10e9gKkZrklufpDamrS968U/Zu+LUPjjwvbWF7cj+1bVRHtc/NIo6Yr2te9fGyi1JpnvIkrA8ceMrTwL4fuNVvVLxxDhFOC1b+cV8tft3+O5tC8O6HottxLeM0rkf3RV0qfPLlKcuVHzl4iOqfF/xlfX1tmWS5nLqjHtXJz2Go+ENUbz4JLeaFuh4Ir1L9me0+3TX9+3KwMoHtmvYPEvhHR/FsbpfWySMRxIBhl/Gv2LA8M08RhHOO58JiM+WHxLgzzr4VftY6z4Z8uDUXOoaeOPLlb5kH+yf6V9ifD34paB8R9NW50i+jmfHzwE4kQ+hFfnl8R/hJqPhMvc2wNxYk/LKo6ezelcV4T8T6r4S1mO/sLuazuYyMNGxH/66+Gx+TVcNNpr/ACPpsJmtLEQTR+uWKK8T/Z+/aJsPijpkdhfyJb69CoDITgTe4969qV818xODg2me2mpK6EooorkIGUYpxFJiiwhu2kxTqKLAfOnxouBN4lvh/dRI686H3cV6d8dtJa013zR92fDZ968zXHSuc/T8us8LCxDtpCpxU+w03bn0pHeVShQ5PSpd5dcIOakS2eVtmCSa9D8C/C671mRZJIykPdmFVHc48TXVKDcmeM+FPh3f+MPHL6TbxN5SnLyY4Ar7N8A/D3T/AAFoiW1tEvnsB5kmOTVnwj4E0/wnNLJbRr50oG+THJroyN4Zu1dXNdWR8FisU60nbYbnI65oxQOKKZ5YmBRgUtFMQUUUUDCggHqM0UUrAVZ9OgnySu1vVeKiXR4UBOWP1q/TJ5o7a2mnlbZFEpd2PZR1NLli+g1JrqcL8VPiNpHwm8JXGsai4EpBS2gH3pn9BX5ueM/H99401u51W/maWeZieT90egrsP2kPjFc/FXxzdSRyMukWTmCyh7bQTlyPU15Paw+fMEzjNfQ4TCxprmtqeZXxEp+70PQPhN8PNc+LvjfStA0KA3FzdzJHnHEYzyzegA71+7ngvwvZ+CfCml6FYII7TT7ZLaMAY4UYz+J5r5V/4J2/s7W3wy+HieLtQt8a7riZQyBWEUPZVx67d30r7DHSvagrI+axtXmfs0A5FFFFaHmhRRRQSFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFfA3/BR74KtrmvaL4vg0yW8tzb/AGS8eJchMN8rMewGetffNUNe0Kx8S6Rc6ZqVvHdWdwu2SORQQRzVrQ1g7M/JH9lf41aD+z/4pkmWzJnlUx3TudylNwzt4+XpX6m+BPiBovxH8PW+s6HdpdWkw6qeVPcGvy8/bR/Zc1X4N+IX8QaZG0nhu8kJV4wSIW7Kx7Vw/wCzV+1RrfwJ1s+Vm50uZx59oG6juRVHe1GcT9ms809e9ebfDL4/+CvijZ239l65Z/2nIoL6e8oEyHuCp5r0hT14qGjkcbDqKKKzMjz34++Mk8A/B/xRrJ+/FaOkf++wIFfia2rya14gff5U888rcy/x/Lj5q/RH/gp98URofgHS/CNtd7Z72b7RcIp52D7oP41+ffwM8PS+LPi74X0aL799fwxn/dEis36KauO1jqg9D92PAem/2N4J0DT/AN5/omn28H737/yxqvze/HNblNiUJGFHQDFOpHPMKKKKDEKKKKACoL6+g02zmurqZIIIVLu7nAAqevj3/go18bv+ED+HNv4Wspguo66xD4PKxL1/Og1pU/aS5T40/bq/anvfjd43k0TSb1v+EP01ysEcfyidxwXYZ5PavCvDHwg8XeK7I3Ok6Hc3UR6SKvBrrPgt8Fn+JfivfcT+To9oPOuARy6/3QfWvunSNJtNC0+GxsIEtrWEbUjQYArwMfmKw7UYn2+Ey+LhrofnXr/wz8R+EbR21TTbqxQnH71OM/WuV03VbrQ9Ws7+ylMV3ZzJcQv/AHXU5U/ga/TnxT4csvGfh670nUI1khnTbkjOPcV8h/E/9lDU/C9tNf6Upu7YZOe469vyrLC5lGq7S0Ctl84XtsffP/BPn9pyb4z/AA7Ok+KdVWbxTosoged2xNcw/wDLNz/eb7y/gDT/ANv/APZ0h+JHgI+MNItfM8RaHCzFIxzc2/Vl9yvUV+VHh7xDrXw51qG+0u9m03UYGBEkDFTx2P8Aga/T79lX9uTw58XNBXwx4/ltdM1gwi38y4OIrxdu3n0Jr3YyU0eBKnOhPmR+Z2i61qXhDXbe8tJZLa9tX8xTyACD3Ffa/wAIf2p9H8XLBpmttDY6mIwGuo0YRSP6fN92uf8A2xf2GNY8Lavd+Lfh4Yr3QJozcS6YZ182AcszJn70fevh4apPbDOea86vhVJ3R7FLGRa94/Xi2miuYRJFIssbDIZDkGviL9u7XPtPjvSdNByLeyzj03GtH9kH446lc6jNoOqMbmGQ/u27qKz/ANvLTIoPH2iXkYx59htY/wC0HavNp03CqkdlV89JyiYH7MA26Lr46fvY/wCVexIMGvDv2Zb/AG3Ou2XZ4km/Jsf1r27OM1/THD0ozwUbH4jnKcMU7k37kgwzxbon614P8ZvhSElk1vR4h5GcSRD9Gr3nTbObWdVs9PgG6a5lWFPqxwK9v8U/soXGl6BcXx1JZ54oGPlYrTN8NhqtOMKq1fUxwOJrwblDVI/LnSdWvdA1KO6s5pLO8hbIZDgg1+hH7N3xrT4neHEtdSmRNctlw/bzR/eHvXxx8bfh6dH1Fb+xiKW0jEEAfdPpXG+B/G2peCtagvrGd4ZomBypxmvwvOsqlh5tWP1bKMyjWgtT9X9tG2uN+FHxM074m+GINQs5F+0Iii5hByUfHNdpXwjjZ2PqhpGKTFOPSm1IDdtJT6TFIVjn/GHg208YaZJbTqPMA/dydwa+b/FngTUPCeqvBJGzQ5+WUDgivrFOKSZd3aspRPZwOY1MHpuux8ZywTNwiyP7BDWpong3VtVYGCwuG92XFfWCaJYKMjT7cn1CAVILdYeERUHooxUcp6Us/n0pr7/+AeV+GPgxHbzx3GpyCfGD5K9Pxr1i2toLSERwxCNR2FC9KWrSPn8Tja+Jb55adug/pRRRW6OBXGUUUUygooooAKKKKACiiigArnfiLLdQeA/EBtAxuPsUm0IrF/8AgOO9dFTh0px3B7H5Ealp0tvd3EckDb955r6Q/YE+CFv8SvjJYXupeQ9hpgN0YZ4hIJGB4XB/Gvd/2h/hF4W1j4f6tqJ0yCC/tYiY5rWLY/HO1sda5H/gmnc3kXxhltLeIPam1YyE9utfT0KimtDzatBwi5M/UccdOKKKK9FbHw46iiitCgooooJCiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiirKMDxv4K0rx74bvtE1i1S7sLuMpJG4z+I96/Jf9qP9hnxN8HNfvtV0iCTUvCbsWgvrZcmMfe2SRryv1+7/u1+w9RXVpFe2sttOiywSja8bcqw9xTRvCdtGfz4aR4k1PwtrEOoaZcyWl5buHEqnBBB6H2r9LP2Y/8Agop4f8XWdroPj66h0zWIwEGptxHMOm6Q/dU15D+2P+wzqngjUrvxZ4EtJ7zw7ITJNZRL5klsWZiQB/FGu7/x35t33q+KLq0ntbY/uceX6/K3/fNM2umf0AaF4h0nxPYpe6Nqlnq1m4ys9jOsqH8VJq7NNHbQvLKwVFHJNfhL8Fv2hPGnwU19NT8Lao1ud6tPZzDMVwBn5JF4yOexDf7Vfe97/wAFC/DnxI+EXieyhQ6D4se1ZI4rsBoJ3b723Lfz/wDHqixlynxF+1X8Tbr4ofGnxFetOZ7CO7eO254CKSOPxNetf8E2/hLqnjP442nieOL/AIkugK8lxKRwJSvyKP8AaOT/AMB3V8tXaSX90zxjc0kjjP456V+vP/BO34Zal8NfgRB/a9l9hvdWma8aIjBx0Dfjz+VCVi7WR9QqOKWhelFSc1TUKKKKDMKKKUDNAAK/E/8Abh+Kx+J3x912eGbfY6c/2K2AOQAnBP4kE1+ynjjV4/D3gzXtRlkMaW1lNN5g6gqjH+lfz/6ik+ra7qF1Kxmnubh5CzHkksTWc3ZWPWwNPXnZ9sfsn+FBonwzttQdMTX7bueuwdK9iIOTWb4Ms4tN8I6RbwqFjjtY1AA/2RWyFBFfmGInKvWcnt0P0uhBQpK+5DHGSDVqytySafbw7geK1dPtgM5q4QCdRJHxd+05+zvL4fnn8SaBb7tKY7p4UGWgLN1A/u/yr5st7iXT5wclWQgg1+uLxb4niPKN1HrXy7+0j8DvCXmW99a6aul3t053y2vyL/3z0r6fD41Uo2qHhTwNTFT/AHSPmTxf8dvGvjiztLTWPEN5eQWsQhiRpCAFFeezfvM16Pq3wVvoNz2F3Hcr1Cv8rV9DfAL9kXQda8K2uteLIpZ7uWRiLaKTaAi/d3Y/vV3PHUnG5zVMrr0naascd+wb4Xnu/FeqalNbRGygjHlyyx7337v4fSvRP24/DIvfCui6wV3NZzyQO4HqDj/x4V9E+E/Aeh+CrIWmg6Va6RagY8u3TGfr61z3x38Hz+PPhlr2jW6B7uWAy2+eodOfk9+n/fVeZ7fmqKaOmMeSPKfnj8H/ABQPDXjC2mkbEMh8t/oa+qpnV5Q8ZzEwBUj0r4jmiks7l1YFJY2KsD1BBr6j+EPi0eJ/CcAkbNzbDy5M+1fuHB2O5ouhJn5TxLheV+0XQ9B0jUX0bWLG/j+/azpMv1Vgf6V6543/AGodW8S+Hp9LtLNbNZEKSy5+bBH8NeLMayte1iPRbF7iUFlHpX6XVwtLETjKau0fCQr1KcXGDsmTahaW+rWssN3GJlZcYcZ5r5q+I3guTwvqz7FJtpDujbHb0r27QviJFqN19muoRAhHEgrS8b+E4PFGgXNsygzqu6JvevKzzKKeLw7lCOqPWynMJ4aqoyejPG/gd8Yrj4Y+M7G6MzLYOwS6jJ+Vkr9J9Pv4NVsLe9tXElvcIJI2U5BBr8jrm059K+/f2OfiAfE/w4XSLmbzL3Sz5XPUp/DX8z5ng3Qk5JH7ng8QqtO1z3yiiivnj0QooopgIBijFLRQAAkd6KKKgzGUUdaKBjlNLTKUNVlISiiigYUUUVYBRRRQAUUUUgCn0z615V8dPjpo3wx8PyxRXscmtzcQxIdxjPqwp0velygea/tg/FGOC3h8H6bdmK9Yh7zyzyg/hVvruz+Vewf8E0PhPPp1lrvjq9jlV7rNnarMP4TyzLXyd8HPAWv/ALTXxPt0vDPIbm5V7y7U7gi8tzu+UDHb/Cv2F8HeFLDwP4V0vQ9Mi8mzsIFt4l9FFfT4Oi4JyZ4GZ4tRp+zjuzYHNFA6UV6Z8iFFFFWUFFFFBIUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUVZQUdjRRQBGepr5F/aU/YG0T4t3smr+FxB4e1Zgxli2BIZ2/vfL0NfXu2lIzVFJ2Pxl8X/sL/E7w7rYtk8NzX8XmKoubVdykevrXOD9k34ni5x/wh2rY/5af6Ofu7vpX7d0UGqkfBP7Jn7BMWizxeKPHdqJZkcSWumyrwvcM4/pX3fawR2sKRRRrFGg2qiDAA9KnpMYoE3ccvQ0tIvQ0tSYMKKKKgQUq9aQc0q9aBHlH7VrY/Z18f8AP/MMl/ka/FHwlbi88RWUcw/1l0i4+rCv2q/aw046p+zv49hH8OmySf8AfPP9K/FTST9k123l87yMTofM9Oa5qkvdb7H0eWW5NT9N7DRI49OgjU4CIAPyqZdKI6NUmiXH2nRbKbOfMhRs/UVcRutfCOikfYU6rsMtrDyx1zVtI9g4pYzxTquMbClK4CvIv2jbUy6Bpk39ydh/47Xrtcv8SdBHiHwhfWwXdKi+bH9R/wDWq5q6OzBVfZVkz5IjbFfQfwD8YxvpzaPI2HjJZQx6g18/TQtbXDxsMEHHNWNP1CfTblLi2laKVDkMpxXnqTiz7fE4eOKpcp9sZorhvhx8RbXxTpES3M8cWooNrxscbz6iu2D5rtpyuro/Pa9CVGbhPc/O79qX4Wt4E+IV5dRLiw1FzPFhcKue38/yrgvh141l8G61HOCWtmIWaLPDL6198/tK/DI/Ej4d3KWsIk1SyBmt8DlsZyK/OC4tngmZSpDKdpGOhr7DKMdPDTjOD1R8xmWEjWg1JaH2Np2owavYxXdrIJIZVDAiotR06LUrZ4Z03xtwQa+avh18R5/CGr24naWXTs+XKhOdo9RX63fAh/hx8Qvh3YT6B9n1u2SJEk86PbIku0Bldexr9ww3FOH9lFzXvH5XVyKpGo+V+6fmFrOlzaFqjwsCqg5jbOeK7nwR4oa6VbK5f5ukbk/pXtv7Vvwy0yy8Yy2mm2yWiSRiSJY+m4n5q+aP7Jv9C1VQoJ8twTxjoa/QMHXhjMPGrHZo8CtR9lNw6o4r40eGT4c8WSSQpssr1fOiwOASTuH51237IHjGbw/8VLWyeTba6ivksCeN3auj+Jz6Tr/g7ZMFmvQm6AKPmB7181w391ol8ksMjRSxsGjkU4IIr8N4qyl0asklo9UfpeQ49Tpq71WjP17or8zvD37SXxA0pgIfENy4X+CVtw/I16Tp/wC3N4styFvbGzuFHUou0mvyWWCmj7uOJh1Z9z0V8naD+3bpzgLrGhyQ+s1vJkf98mur0X9tnwDqVx5Ux1G0X/npJACuPXhqxeGqLodKrQfU+h6K8xt/2kfhtcSbE8WWgH9+RJET/vorj9avx/HbwBJ93xbpn/ApsfzrL2FTsP2kTv6KwNK8e+Gtajhax8Q6XdLMMx+XeRnd+talxqFrauUmuoYn/uvIAf1NZ8jQKSexZ/Sk/WqMGsWN1nyb23k/3ZV/xon1iwtf9de28f8AvSr/AI0uQsvUVWtdRtLpd0FzFMp7o4IrN1Xxx4c0N9mo6/plk/8Adnu40P5E0uUo26K468+MfgextfPfxVpciekNwHP6Vx+p/tafDPTJGR9dd2H921lx/wCg1ssPUlqkB7DRXylrv7fegQFhpWg3t7g4HmyLFkeucNXA337d/iieRjbaVY20fZSrMR+O6umODqNHNLEU47s+66K/M2L9qD4gReI01dteuJXVw32ZmxEQM/Lt6Yr7s+BfxJv/AIp+DU1O+s/ss6EB8cA1FTDypr3iqdWNTY9FjLOSGG1R3rndf8faf4aYiR1kYds1uanbzXNjJHA21yMZrxTXfg/rWs6g7tOzKT3NcE3Y9LDQoyf7yVjlPit8X9V160nt9MkNomcAp1NeF/Cj4E+OP2g/FNvb29tLe/vGMmoXeTFGud3Lf0r6y0X4AWlpcLJdXfmEcmH7tep6UZ/CulTQ+Hv9Anj/AHkXlfcL+4rfC1FTlzNXNMwVJxjCh53Paf2fPgLofwH8FwaLpgS4vSo+03mPmlb6+gG0Y9q9RZa/Jfx1+018YPBPxHh8jxZqZWPb+6lbzIX6feQ/71ekeG/+CnniLStUSPxHo1rq1qBhhZoYZC31yRX1lLFQmux8DiMuxDk53ufo/RXzp8Hf28/hf8WBFbS6j/wjWqyYC2WqOqb29EfOG/SvoaORJo1kicSRsAVZTkEV0qVzxnTsS0UDpRVEhRRRVkBRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQO42iiirLCijFHQ4oJA9ar6hcG1sZZc/dGanYjdWZ4pfy/Dt6w6hKgaVzh9A1iY69D8554r0wcV4bZXbW14swPzKa9ut5BNBHIOjKDQaShZGH8QdLj1vwL4gsZVDxz2MyFT0Pymvwf8QwLa6pLGAFEcpGPoa/fu6gW5tJ4WAZZEZCD3BBFfg78aPDdx4P+J3ijSLjIe11CVRx1XecGuerH93Kx62XStzRPvr4J65/wkXwt8O3u7cxtVRvqvH9K7ZBg182/sSeMf7R8H3+gyPmSymMqAn+BiP619KqvNfIzjZ2Z9XTehMvSn0xelPrAsKZT6Z2NJ7AfOnxp8ELol8L6BcQTEnjsfSvL4cFTzzX174z0mz1TwvfLeqCoXKn+6e1fKd1p+LloolIO4ivPe9z7/LMT7ailLdGn4K1F7TV7fa2GLgr/ALwPH619a2hYwIX++VG7696+dfhv8NLzUri3vLmDZbBsh/Wvo2MbUxXRR0ueDnEoSqpx36jwa+Yv2iP2arC90++8ReHbdobwyNPd28fR89WUY/Svpyiu+E3Td4nzsoKSsz8j/EOi3ej3TxTxPGwPIYVtfD34neIPh3qcd/oGr3ek3cZXEtrKyHaG3bTg8r7V96/G39nfTfiqJLyCRdP1YxhPOVeHx03CvjDxj+zv4s8D6lLFeabJNAp+W6twWjYevtXvYfGqas9GeLWwjj8OqPYLj9qKD4qamb7xU8NpdIoAKH5H/wBr23Vx+u+OItakZrEAQno4OTXiV/olxZOQ8bIR3xTdB1ubSLwhiTG3DD1r9iyLiiNCMaFSOi0Pg80yWTbq00esaXpd7qtyfI59zXZeLv2NfFf/AAryTxxaxLeQ/elgj6oPWun8MxWf9g2ElvEEEsSyfnX0j4J/aR8E+BfhyNG13z55ljKG2VMhs19jnyePwkI0Ffm7anzeX11ha8qc9P8AgH5WywyWM7KwKspwQRyKTdnmvZvGH9k6p4iv57OyjTT3nLRQlf4M8LWp4Y0rwread9ku9PiVv7+zj86+PXBGJmufmX3H0n9uQjpytnz9Lk5psR2Zr6YPwd8LajGTbyGEnp5b1jXX7PVlIW+z3zD6gGvJrcJY6m7KzNYcQYfafungyNnNOzxXrV1+ztqKZMOoRSexXFZ8vwC15AcSwt9K8ipw9j6ejgejTzihP4aiPOra6K55xVm78QX9yD519LL9Wr0fw3+zF468VyTJpunidohkhW7VV8bfsz/Ef4dvEdf8OT2kMrFEk6gsO1eLPLK0ajpyht5HqwxkZr3ZHnttrFwqn/SJR+NSDVLh2/4+JP8Avqt9vhZ4ijQn+y5/++Kgi+HPiIMf+JXcf98Vayqv0j+BX16Md52KcXibVbNCIb6ZR6Bqy73Vr2/k3T3Ezn/fNdNa/DzX7uIvHpdwQPWMium8G/s3+O/HU5j03RXcj1cCoeV1lvTJ/tCD2qHmazM4+Yu3+8xNVJzljxivf/FX7FvxJ8H6Ouo3+mokJYLjzwDk1xur/BDVNDsTeajeWltEOCC2W/Ad61pZbXnHmjHQzljISly81zyvBXNAcmtG8tFjXg1Uhg3Zrz7I3tcdYWUuo3kNrAu+eVgiL6k1+pvwL8Ev8P8A4badp0wKXUkayTKeoOOlfKX7I/7Pp1zXbTxhq0GdNsWD26yDieQfdK/7K9fyr7kGSK+fx1eMpKMeh7mFg4U9R+40lFFeO9TqCgcZx3ooqoqxSM7VPDela1GU1DTra7U9RNEGrxb4ifsieGPFXmz6UzaTdNyEU5i/LtXvVFbxnKGqY72Pzb+Jf7PPif4W37zvbvdWYPy3lsjFfzNei/B79tP4i/BqK0t4dRfVNJgKB7C+QvwoxwS2V/D0HYV9s3VrBe27wXESTwuMMki5BH0r5H/aN/ZtuIFn13wtaxi0UFprRDjb7j29q9Khi9bM462EpV9ZLU/R74H/ABx0T42eDLHXdPuEhnlUC5syw3xuOvHpXpf8q/BfwZ4213wFqUN3pV5LY3cLhiFOASO1fpd+yx+3TovxD0220LxdKml+IFARZXOIpfuquW/vc/8A669qFVPRnzmKwDpx5oan11RSUtdB4o6iiirAKKKKCQooooAKKKKACiiigAooooAKKKKACijpRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFADaKKKsofjiud8W3wtbYAnrW/v7Vx/xAU/ZVIoGW/COr/wBo+ZF/zzArZ1i1N7pdzABkuhA+teeeB7/7LrKLn5ZRtP1r08nNS3oaKNjwSvYvCF59t8P2rk5ZV2H6ivOfGWkf2Trs6quIZv3qegz1H511XwyvN9lc2xP3G3AVindm7s0drX5Bf8FE/h/P4R/aEvdVEMqafrsCXELmMiMsBtbax+9X6+18uf8ABQf4YT+OvgpPqNn5S3Oiv9qPmBixQ/K23n9Ktq6sa4SpyVT80/2cfHreAviRYzO5FpcN5MwzxtPFfo7AyTxiWNtyNyDX5RWpFrdZPWvvT9mT4yx+P/D/APY90SupaXCkY3nmWIcKR/u8D8RXzuLo8vvI+roTvoe2gYFPplPrxjsCmU+mUho574hXItfCF62cbtq/rXgHhzTW1jxBa2oG5pHAr234t5/4Q25/3l/nXlHwoIPji0z6P/6DxXAfT5f7tGUj6B0ywi0+0jgiUKkagACrg6Ui9KWumDSR4NVuUnKTCiiitkcwVHNBHPGVkjWRT2YZFSUVZRx3ir4Y6F4l8M6npraPZb7iB41/dAfMRx+tfm14q+GHiLwlrU+nXenPFLGxUDbx+lfquoxnBrJ1jw1Za5FIl7aw3W8Y/fRhsfnXXhcW8PO6OedGNVOLPz3uvilcaD4W0rRIP+P6KPZcS/3Pmb5Vqp/a8+pp5ksrOSOrV1fxV/Zd8WaLc63rUaW50m2YzvOsirtTG7G3d6eleYeBtXtrTUPIviZYM8Zr9v4Z4onKpyVpaM/Nc5yRQk6tNHeeGvDUuuTekY6mtvUfAN3YEvBlgPzrshdW1jpK3GnoJbbH7sRfcrM0j4hW19cRW92PISV9oY1+1066lFSiz4KzWxw8Wo3ujTHduUjrXc+GPHMV+gjuWEc3Tnoa+pdf/ZT8E+LPAVxfWAaO+Ft5kd+r/fYLn5vavh/W/D194evJI7qNkCt8smOGFcOFx9LHqXJo47lVMNOPxPc9/wDCGiDxNrcNq3nCEn5vICg+3zNwPxrsPH3wb1HwhosWpSTLPbyHHlOu10/I814Z8Gfi9L4A8UWct8JbuxQ/NH5uzA/hO72POK98+JP7QOi/ELQIrWxujbSvLnyppV+5/wDXrzMdOtQrK3wmtHDxUH3NP9n74h6L4Ue4TWnjibGEBQnIyv8AjWx+0p8UdE8df2XZ6fcwypBmYSxN/Gy/d/VvfivBftVoB/x9wf8Af1f8aQ3lmEL/AGqHZ/e8wYrzZYTDSxH1nmdxzr4mNL2SWgbfajFZNx4z0K3Xc2qW2P8AroK5DX/jnoekyvFah9SdeMw8J/30a9WtmeFoRvKUfkjhoYXE4ifKj1G0YIpFdd8N/ipovwl1uXWdcvBY6cIiGkPJHPYd6+RtT/aP1clksbOC1Xsz5dv8K851/wAYal4kuHmvLl5mb+8eB+FfC5nxBhalKUIxbZ9VgslrxmpVNj61/aQ/blTxix03wm5eySUn7Rcx7XYc9F/hFfLGveM9S8RTNLe3clwx7E/KPoK5Yda3PD/hTWPEl9FZaXYTXt1L9yKIZLV+e18wq1I78qPtKGDjT+FGf9nmuiSOlfWP7Nf7L1rr9lb+IvEsHm2u7db2q8rIfVvaus+AX7JkWhLb6t40tkubwYeOwH3E/wCun976V9SW6R28IjjUIqjACjFfFYvGLWFNn0tDDWV5Fex0620nT4bO0t44IIlCoiDAAqUDilJorxz0ErIKKKKBCEU2n00igBKOxoo7GqAjbpUD85FTtUTL1rMD5y+Pf7M1prdndeIfDy+VfxAvJaIOGHcgV8cR313oN+yrLJbXET8kHBUg1+qyhoxkKGB4r48/a1+AotDN4p8P2+Y2y97Cg+51+YCvWwuIv7kzGcLq59RfsU/tqx/Ep7fwb4ukEesBRHaX27CXAVeFkLfx/Kef4s19o7utfz4+ENfufDmt2l/byNFLBIHVlOCCDkH9K/Y39kn9pTSvjF4JstMvL+EeKrOECa1LfO6D+LJ5Y+v4V7tKbejPm8XhN5wPoOikU5GaWuw8IdRRRQQFFFFABRRRQAUUUUAFFFFAC15F+0F+034T/Z78PG+1aUalqcqk2mkWsq+dP3z/ALK4/irf+OHxh0P4IfD7UPEuuSN5ca+Xb20X+suJT0RfevxK+L/xQ1j4vfEDVPFGr3LTT3c52oWYrAu75Ixu/hH8IqJSsduGoKq7M+mfHf8AwVC+JWu6kx8P6fpfh7TgcCLy/tEjD/adv/ZVH1r7I/Y6/a50/wDaN0O50++ltrDxVp6h5rRWIMsPy5lX1Xc3/Aa/I5/AV9FoU2ovIieWm/yj1I+tdL+zH8V7n4P/ABq8O+IreQrAkywXiDo0DnbID9F+b/eWohVUnY9LEYGNOneO5+7dFFFa3PBaHUUUUxBRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFACEUlOppGKAEIyPeqepafHqVs8bgE44zV2mle4oBOx5Tpelz6Zr2D/yykr1oDFVxBHv3+Wu/wDvYGfzqapSNXK6KeraNb6xbmKdQf7pxnFV9G8N2+iyO8BOWXaRitaiixN2JtqnrWi2fiTRrvStQiE9ndRtDKh7qwIq7RVFwdmfhz+1j8LE+EXxl17QLSN47GKXzLYt/FG2SD/SuN+FfxP1D4b+LLPV7VixibbJEThZUPVTX6Zf8FDv2dI/iH4Km8a6XAr6xpFsxuUUfPLAuWyB6ryfpn0r8oNTtfstwcdK5qkFNOLPoMNN/Emfq74Q8UWXjHw/Y6vp8oltrqMOpBzjPUH3FbdfnF+zx8ern4Y+IoYr24nk0GVgstqpyq/7X1r9ENE1W313SbXUbSQTW1zGJI5FOQymvlcRQlRlZ7H0FOopq5dooorlsaGT4o0hdb0C9syATJGQPr2r5wt/tfhLxEHUmO4tpPz5r6lrhviD8PYfEds1xbqI71BkMB972Ncs6dtUe3l+KjTbpz2Zq+DPGVt4osgysFuVA3x5/UV0g5r5YurHUdBumWRJLaZD1U4/Wt/wr8T9es7oIbn7VGP4Jhms4ysb4jL+f36UkfRFFUdB1B9V02O5kQRu3UDpV/bXVFnz004ScWJRRRViCiiipGjj/i9pr6t8N/ElmnWaxkGB/umvy0Ixmv13ubdLq3kikUMjqVYHuDX5Z/Fjw+3hT4i+INJZdqwXTmPjqjHcMfgf0r6HLKiUrHDjo88Wz0f4DeKhd6dLoV3IGdVzFk9V9Km8Y+HptH1EtBGzWznIIFeK+G9ak8Pa3aXsLlXikB+ozzX1tpd3a+INMhu9iy21wgMZPr3r+iuGM0+tUvZVH7yPxzOMJ9Vqc8fhf5lz4T/HfxTb+GrrwmJGmtvL2xy5+eNMY27qg1bSYdStZIJVDfWpdL0y3sLsSxRLGx4JAxmvq26/Z58OXXhWGeCGWC98pf8ASvM/ib+9X0FbFUcFPVWuePR58Umo9D83PiVoV54ZLiCNnVujgfdryFzcozS8s2eWr7X1nTINTs7nT7u3DPICokI6V8weMPDkngzXZbKZN0LnKHHavheKfrFRRxFOXun1GS1KVT93P4jhxqF1/eaj+0Lr+81d9ovw1ufHtrcXOg24bVLYfNZopLXCf3o19R3xXUWH7JnxK1C381NBeL/YnkSNvyLV+XVMxlT/AIk7H3FPAqWyPFzcTyZ3E0g3Gvozwx+xH461bzP7VNpowH3PNmVy3/fBbFdr4T/YMuYb9/8AhINet3sx937ACZH+u9cL+tcMszoPWU7nXHASWyPj77Nk11+i/C/X9ZEX2TS7mcSfdMcRNfduifsneBtFkhkns5b+SKTejSzEkD+7xXsFrp8FpbJBBClvBGMJHGMACvNrZkpK1M7YYLl+M+T/AIN/saJCPt/i/MTEArYxnk/77dvoK+j/AAR8LfDXw/tmGj6dFDM5JMx+Z8ema6gAAYoC4rxqmInU3Z6EYQirRRIDxRSAYFLWAbBRRRVgFFFFABTT1NOpp6mgBKD0NFIehoAYaSlNJQAZxVa+sLfUbeSC5hSeKQbXRxkMPQ1ZopAfn58f/gtN8LvEk1xaxl9FvWLwSAcL6ofpXL/Bz4r33wp+IGk+ILKRlktJl8xc/wCsjJwQfwyK+8/jF8P4/iL4HvtMKBrkDzIGxyGFfnD4h0C70XWp7SWLZLE5RlPUYOK+hwdbnjZ7o460Lao/eX4f+M9L8f8Ag/TNf0e6W7sbyEOkicj3H4V0Nfnf/wAEy/jV/Z82p/DzVrrAuCbvTUc/df8A5aIPwXd+dfoar7q9uLuj43EUnSqNEtFA5FFUcYUUUUAFFFFABRRXyh+2x+2Dc/Am2tvD3hkxP4qvV81rgqrraRjpx/eb37ZoNadOVWXLE+r6UV+L2gft3fFvS/FH9qz+Jp7794n+i3RLw7Vb7u3+H/ar7U1r9v3wt4i/Z417XdMmis/FMdt9lbS5eGWaRduUH8SqM8UHRLC1Inyf/wAFAv2jZfir8SrzQLCYt4f0NzDCFPEsnOWr54+Hvh/+1NVWeTmGD53J/i9qw7ppdb1N3Zi7zOSzHqWJ617F4T0RNF0SCIgLORmX615+Jqcq0PrMrwaerWxfvyo066QAYMTDH4GvBrdfK1FTjGH/AKmvctQ3eRMB3Rv5V4TOZFu/fd/WsMJ1PQzZ6wZ/Qj4O1b+3vCWiant2fbbGC52/3d8YbH61sVwvwGk834I/D59uzd4f087fT/R4+K7qvXitD85mmpO46iiiggKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKAG4opxGaaODQA4DiiiigAooooKCiiigSGS28d1E8Uq7o24Ir8j/wBuf9lO5+D3iZ9a0qBpfDGoSn7LIo/1BO4+S3svY+lfroveuK+Mnwp0f4zeANT8La1Hvt7pco6nDRyA5VlPYggUmrnbh6zpSuj+f7pmvbvgD+0ZrPwpvY7S4kfUfD7tiS0duYx6oe30p37T37Muu/s/eLlstQY3VhcsXtb1Fwsyf0b2rxDd2zXPUpRqLlktD3qdfW6P1u8IeMdJ8c6HBq2j3SXNrKAeD8yn0YdjWzX5e/CH43a58KtYjnsp2lsmOJ7Vj8sg/wAa/QX4TfGPQPivo4udMuk+1ooM1ozfPGfcV87Xw0qPoetSqqaO9ooory2dSKd/o9lqkZjuraOdf9tQayrX4f6DZXEs0GnpHLL99gx5/WuhoqOVGyrVIqykR28UVnAIolCqOgqUNkVxHxE+IaeBooyYkmnkUuiM2MgV55b/ALSz+f8Av9LQQf8ATOX5v1GKdjrp4CriFznvNFc54K8b2XjSwNxbfu5FOHhZsstdHTRwzozpScZIKKKKDOwV8RftufDFdM1228W2j5W+cxTqB0YDivt2uV+IXgGy+IHhe+0m7hSUSIWjDjID4OD+tduHqezmmRUjzRaPymlj3R5Jw/UV7V8AvGyosmhXkmD9+3LHv3Fea+PfCF34O8SXmmXaFJIHIGR1GTisOyvJ9MvYLq3YpNEwZWFfpGTZg8HXjVT06+h8ZmeCWJoypvfofbAJzXoGm/GfxNpuk2+nrOktpCCFR68T+HPjSHxhokUwYC5QBZU759a7FCcGv3WlOhmFJVI6o/IZU62DqOEtGLNM004c9awfiJ4Gg8Z6K+FC3ka5jf8ApW6o+YVoxTDaBwKrEYaFem6VRaM1oYiVCoqkeh8faJ4l1D4feIEubV5Le8gcEMvBGO9fox8GvifZfFHwbb6jbhYrpAEuIQckN/e/4F1/Gvh747eBV0jWF1aBd1tcnLBR9xv8/wA63f2V/iuPBXjGPTbiTbZX/wC5IJwA38J/pX838Q5ZLC1pQsftmUZhDE0VJPc+/PWmqDmpMYp2BX5+4WPpExq0+iimtBhRRRQAUUUVYBRRRVkBRRRQAU09TTqaepoASiiigBppnrTzTdtIBKKXbRtrO4De1fBv7V3gs+FfiJJqkbEW1+vmgY4DdxX3nXyz+3Zp8cfhzRb4jBWUxdOuf/1frXp4J2mRNe6z5o+H/ji78E+MdM16wnaG60+6juFIPyMQy4DV+7mg6pDrej2GpW7bre8t47iM+quoYfoRX89HWv2p/YX8aR+NP2bPCcgl8y40+NtOmBPKtGflH/fBWvqKT6HymPjdKSPoFelFA4FFbnhhRRRQAUUUUAFfi3+2/wCNJ/Gfx+8SSLdfaYrWYwRn0C8beK/Y/wAVySw+GNXeB/LmW1lKP6NsODX4L+Lria58T6nPcOZLiW6keR26lixzUSlY9rLoe82zQ034dG/8PPqQ/wBZ2H0rjriT7NJIG4cfKa+iPD1qLbw3YpxseMEj614b8R9G/svxFcKv3H+cVw06jlJpn0GIoqEFJFPwavn+IbKPGQZAT+Fe1YIry74V6Ob/AFtbkfdhGTXrj2+M1yYid5HsZb7tIwdeuPs+mXcndYzivFLgg3ZI6bv616x46vBaaPMp6udo/OvOPBtr/aPizSbYxJP513FH5Upwr7nAwT2zmt8KtGcOaSvKx+8XwV0qTQ/g54E0+V3eW20GwidnPJIt0zXZ1Fa2wtLaKEYxGgXj2FS17EVZHwVR+8x1FFFQYBRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFA0eWftE/ATRPj74BvdC1GOKK/CE2N8y5NvJjg/T/AD65/Ff4zfBPxT8FfE9xo/iXTns5EY+VcYby5h2KnuK/flhmvM/jt+z34T/aE8LpoviiGZDBIJba+tCqzwHPO0srKQQMEEHrSsehRq20Z+CinrXQ+CPHOreAdeg1bR7p7a6iYE4PDj0I7ivZv2tP2O9f/Zz14T2fm6z4UuWItb9Y/mX/AGZB2b9D2r50BrGcFOPLI9SnUcXdH6k/A/4x2Pxd8JwX6AW+oINtzbE8q3cj2r0evyf+GvxM1j4b67DqOmXLRlSN8eflcehFfpP8IfivpHxW8JWmq2FxGLkrtuLbd88Ug6jH+etfN4jCSpu62Pbo1lUR3NHajFFeaddjiviR8Oh46t4THMLe6g+45GQRnoa8TuvgJ4pF0zfZ4mXPUTKM19RL3oYZpWPXw2YVMPDlWpwfwr8ESeCtMdLplFzN94A5ru8V4Z8YfiP4g0DxT9i02f7HbxxhgxTO41leFf2gfEAuoYb4QXsP+rOEAelY6pYSvif3j6n0RRWfouqLq9hHcouzf/DnOK0KR4MlyuwUD2ooqzM8D/aW/Z8h+IWm3fiDTDs1i2hLNCBhZVX+tfAGp2jWF1JBJjeh2mv176CvnD9pT9mO38eQDXvDtokWsRZM8CDAmHqPevUweL9i+WexxYih7RXjufFPg3xVeeFNTS7tJCBkb488MK+rfCvj3SPG9orWjiO4A+eE8HNfI3iHw7f+GNRltL20ms5UOCsqkfrVSy1a4sJhJDM8Ui8hkbBFfomUZ7UwUrwd4nxWYZVHEq0lZn26Y8U3cR3r5p8NfHjXtJCx3Mq6hCOMTfex9a6g/tHrgn+xj/3/AP8A61fpeH4lwlWN5uzPiJ5HioytHU9M+IWijxF4VvIMbpFTcvsRXyqkzWN6skZ2yRncDXo2p/tC6vfW0sVnZW9mGBHm7mL15XLcS3U7zSMWkc5Y+tfEcRYzC46SlT7H2GRYSthIuNU/TX4BfET/AIWL8PLC8lkD3kCiGYd8jof8+lek180/sPf8iNqv/Xwv/oNfS1fi9WKU2kfo0HeIUUUVgbBRRRQAyiiigB9FN3UbqsgdRTd1G6gB1NPU0bqSgAooooAKTApaKQCYFGBTgM0h4rMBNteN/tY6AmufBrVy00UH2XFxukHXGflHoTXstecftCf8ki8Tf9ej/wAjXVh5WqKwpbM/MQEiv0t/4JK+IPtPhvx5pJ/5ZXEF4AfvcqVb/wBBWvzZ2e1fff8AwSZvfL8WeOrLb9+xim3emJAMfju/Svr6Z8tiV7h+ltFA6UV0ng2CiiigVgooooEinrMRn0m9iAyXhcAf8BNfgT8QG+zeMdXi6bbqQf8Ajxr+gBhmvwq/ag8Jx+DPjl410qFdkdvqMvlDH8LMTWFQ9nL52k0z0XwuftXhjTJuxt1/76x/jWJ4x+Ho8V7ZN6W8ycszDOVqz8KLz7d4EswTlomdD/30T/WuwHK14k5OD0PuoQjVhZnHeFPB1v4WtBHBK0szjEjMK15IOea0XjGScVWuF2ozegzXNdvU64RUVZHk3xeut01tAP8AlmDXqn/BOH4a2Hj39ouwuNSTzbXRbWbUfJcZWV12og/AvuxXhviKX7fcSnH8RpvgD4geI/hV4oh1vwxqU+maigKeZAqsSp6ja3Br2MM0o2PmsfzTnKx+/pOSaK+cv2J/2nbn9ovwRqr60trF4h0mdY5ktI2jWSJh8j4ZmPJDflX0YORXrJ6HxdT3HZj6KKKgyCiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACjFFFAXMbxX4Q0nxpo1xpWsWUV9YzqVeKVQQa/KX9uT9ii6+EOv3HifwpYyv4QuXLkRgv8AZDz972r9c6raxo9h4j0i60vVLaO7sblDHJFKuQQaVjro13HSR/OY3ytg8H0rR0HxJqnhi+S80q+msLpDxLA2019YftjfsJ3/AMINQ/trwwHvvDd3IWJUEtaMT90/7Poa+QTby28jwTKUlQ4INZtdGetCd9Ys/SX9lz4qa18R/Bks+rq0htQsYmcDLn14FezrJurwH9iqBofgpE7Mzebcsw3Hp9Pyr3uPoK+PxCSqysfTUW3TTY+iiiuc0OK+IHwr034gTwzzXMlpcRLjdGOtchpf7PMVneK0up74Ubcuxfm/GvYdmGJFEYwTWcvI74YutGNlJjLGyjsoFijUKqirNIORS1KOQZRRRVkhRRRVgcH8Sfgz4d+JljJFqFoi3RGEuUXDA+/rXzB4x/YW1a1uJJdFvIbtOoRuDX23Sr3roo1ZUneLM504zVmj8yNX/Zv8c6TcyxHQrqUpyWgQuKg0/wCAXjq/8sQeHL2Td/fiIr9QKK71j6i1Rz/VaZ+cFt+yX8R5s/8AEkMX+/KBXtnw5/YihsPKu/E999okGD9mt/uj6mvrArSr3rlqY6vPS4Rw8ImT4c8N6d4W0uHT9LtY7S1iACpGMfifU1rL3o20oGK4b33OlaC0UUUywooooAKKKKAEyKMim0UEDsijIptFACk0lFFABRRRQAUAZoozjJpMZKvFRvyaqTajsyMVCup5zWDkgUJbl9e9eRftS6l9g+DuuYbDSp5Y/HivUP7QFfOn7anieK08A2lgH+e6nGR7CunDO9RWFJNJ3PiM4Nfe/wDwSlt5D408ZTKuYU05EZvRjIpUfiFb8q+BlYN0r9JP+CUmhXkWheN9YePy7GeW3to3/wCejqGLf985H/fVfZwPmcV8B+gA6UUL0orpPngooooEFFFFACivyp/4KjfDr/hHPi7YeJYItltrVqPMZRx5ycN+mz/vqv1V6V8u/wDBRD4P/wDCz/gLe6hbw+Zq3h9hfwEAk+XyJR/3yc/8BqJq6OihP2c0z8yvgjrnl3Nzprt8rjcgNewr3FfL/hDVm0bXLW4yV2OFb6Zr6ctp1uYY5kOVdQRXh4iPU/RMFU5oIcy1BPFujYeoxVkjNJtH4VwnonmU/wAPZJL5jE6+ST3rL+JNvZaYlrZQqDOh9K6nxv8AECy8PRTWtqRLfMMYHRa8u0PStY+Ivi6z0rToZdQ1fUJfLhiQZLMfSvTw8ZM8TEyhdpbn35/wSe0XZD4+1Tswtbf/ANGH+lfoFXmH7N3wTsfgL8LNN8NQLC2p7BNqU8bEme4P3mye3G0f7ten17C7HwGImp1G0OoooqjFBRRRQMKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKO1AIrXtlBfWs9tcxJPBKhV43GQwr+f7xiILzxtrMkIzC91K0f8AumRsfpX7p/HHXn8MfB/xrq8Upt5rTR7qSGRTgrJ5TbT+eK/DTTtLOoarGsfJklVOfrWM5curPey2PNzX8v1P0B/Zr8Pf8I38HNEt8YMoaY/iSa9RjrE8FaMNA8GaNpwGPs1skZHvt5/XNbaV8bUldn1kNFYfRRRWTAKMYoorFjCiiiiIBRRRWyEFFFFABRRRQAUUUUAFFFFIAooopgFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABVWe52ZAqve6/Yae5W4uY4mHZ2xUX263vIvMhkWRGGQVOQa56jsb043ILiR3zxVQM4Jqd5jyKh3muBs9BKyF3vXwx+1z41PiP4grpcT7rfTk2kDpvPWvuSW4FvDJI3RFLH8K/Mb4m68dd8cazfE5827kwfYMa9vKqfPUbfQ83Gy5IGNbdTX6tf8EutFuLL4IatfPLut7vVnWOL+6VjTcfx3D8q/KzQLSTVL+G0iBaWVwigdyTiv3c/Z5+GS/CP4P+G/C+FE9pbhrjauMzN8z59eTX2UVqfHYmVoWPRU+7S0UVueHcKKKKBXCiiigYUdevNFFAz8Xf22/gPL8F/jFqiWdjPB4c1KRrvTLh1GxlOC8Skc/uywX5uayfhJ4pGqaX9gnfM8HC56kV+q37Uv7P1j+0F8Mb/QJQkWroPP029I5hnAO3/gJ+6R6GvyN1f4V+L/gz8RItG1qFbLUxt3ogyrpngj61w16d0z6nLMXyvkkdd8QdVutKkspLeQpGThsHrWL4x+Jx07w9bR2YVryYYdh/BWl8XPk0W3PQ7mx+HNd7+yz+yLa/tTeGdR1SbW20Y6beLBIQuQ0ZXdke/FefRpc2p7+MxPsabZ8r6PY6p4s1y3s7C2l1LUryQJHEgyWJP8q/Xz9jT9knTfgb4Zj1jV7SO58a3kYaWZhkWoP/ACzX3/vV13wR/Y8+G3wMjjudG0sahq6qA2p3yiSUn1Gfu17YDXrxjyo+FxGNlWVo7C0UUVoeWOoooqywooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKD0NFFAI8n/AGtLiK3/AGb/AB403+rOmuh/4F8v9a/Gj4T20niT4i6FpkRP7+5Wv0m/4KV/FCz0P4RTeDUk3arqskM5jU8iBZDlv++gtfGX7EPgT+0viNd63ImYdJgJUkcb34rz8ZK1PzPqcvpuKcj7ljXbCqdhT1708gGk218ke7FiUUUUM0CiiisWAUUUURAKKKK2TAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA8b+PukyppcV+h4ZtlcV8LPiU+kTDTdSctAxwsjHkGvoLxR4atfFei3OmXaB45FOwn+Fuxr5I8SeG7zw1q0tldRskkbEK/97HvXNV7n12XOnXpypy8j6iLFiaXGRXzNZ+Ldd0xf3GpXEX/bQ06Tx94kl4bWbhvodv8AKuI1eXzbsjof2n/jPb+CfC9xoWn3gbWL9SrbesUXKsdw+6a+EmcyuXJz9e/vXqXx1eea/wBMeeR5nKvlnYnuPWvOtK0i71rULexsbd7q8uJFiihjGWdj0FfaZZRjTo3W7PgM2c6deVJ9D2f9jP4aH4o/Hjw3ozx+bZLN9pvUxwYE+Zs/kB+NfuOAAOOlfIv7Af7Jl18CPDt94i8SBP8AhKdYjRfs+zBsoRzsJ/vE8n8K+uq9pI+QxEruwUUUVqcAUUUUAFFFFBQUUUUDRHd3MdpA00zrFEnLOxwBX5FfF3xm3xy/an1zWbOIyafp7i3B8xSHWLcEbdnvX3X+2z+0JZ/CD4cTaYk6LrGuK1raKU3FRj94/XsCB9TXyt+zL8LobHwzea5qsD3d1qkxlWa6bcxUcda87GVVCNj6fKMPzS9rI8H+PY+y6JpmP78mf++a+vP+CS98Jfh949sjGVe21G3YsT13RSf/ABNfNP7Yv2Sx8V6Rp1kFiWGyEkgd93zM7f3q+tf+CWcFs3wd8T31uf8AX6xsYHr8sSkEe3zn8c1GEd0dWcS/cs+z1HFQXsv2ePOcVaQcVm+I22WgI9a9E+MS0L1vIJYlYdxUlZOg3fnQbSckVrUCHUUUVYBRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAVV1PUYdJ0+6vbhtkFtE0sjeijrVqvl7/AIKCfE2TwN8G59NtZRHd6ufIyDzs74qJSsa0qbqS5Ufnb8fvinqHxl+J+p6rczl7aWYw2sZ/hjDHaP6mvrX9nf4aw/D3wFakRbL7UR9puCeuDjaPyGfxr4n+Efhl/GXxD0TTgu9ftK7/AGQHc3P0Wv0qRVQBUAVFAVQOwFfO42q3ofe0KajGy6CUUUV4x0WCiiimwCiiisWAUUUUAFFFFO4BRRRVAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQMVetZev8Ag/SfE6f6fbLIw6OODWnUinrVGsKsqTvF2Z4b4i/Z6lk3vpl8q+iOK5FvgF4tjOVS0fH/AE3H+FfUG3g1EyVl7KHY9Wlmddbs/P39p/4bap4RsdCmvljV52cYR93pXA/AO7/sX4t+Fb//AJ5ahC3/AI9/9evp/wDbrsDL4R8P3f8AzwvCn/fSn/4mvkPw1fNo2p2V5Gdr28ySA+hBzX1WB92nZHyeYTlWrSnLc/oC0+TzbdH/ALyhqs1ynwr8Sw+L/h94f1mAOIr2yimXeMHlRXV16sdj5Cr8cgooorQ5QooooAKKKKCgqvqGo22lWc13eTpb20K7pJZDhVHqasV8Hf8ABSz9oy88LaTZfD3QLl4Lq/Bl1OSF8MsQPyx/RuSfbFRKSidFCjKtLlifPvjbxVqP7VH7SV5dXULppVtP5VlCw+WK2Utz/vHHP1r6vs7GHRdKtbG3ULDbxLEoHsK8I/ZI+GT+HvDCeJb9v9O1UGRYmHKJub5v+BGvoG5KiGRyOEUsa+UxdZzqH6DQpqjTUUfAH7Vmrf2l8VtUX/n3dYf++VA/pX6Af8EybA2/7Ol3dFQovNankQD+6IoV/mpr8vPiJqE+qeL9Xubh98kly7FvxNfsH+xN4YTwv+zR4LiSN4nvLb7dIJF2sWk5BI+gWvawitE8DNJc1FrzPeE+7WV4m/48x9a1FOBWX4mI+xj616J8qtil4YH+u/Cta6vY7OMvK20etUvDUW21d8feNHiSAPpsrH+EZoA0NN1CC+gZkk3YqzEdyE+lcv4RkALJ2xXUqdqsBVgFFAooJCiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACvx9/be+JV547+OOuW/203Gm6dL9lhjB+VSvX9T+lfq18Udej8MfDrxJq0rBEs7GWYkn0U1+FF/rja7ql7eSMzSzStK5Y5JLEnrXPUPcyunzSc2fSv7F3ghn16+8Szp5dvBC0ETEdXblj+WB/wKvr2vIf2YNGGmfC61cr81wxkz9T/gBXrirXyeInzTZ9mrKOg6iiiuYkKKKKGQFFFFYsAooooAKKKKACiiirAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAoooqwH0UUUFrQ+d/237ff8L9PPpqSf+gPXwtG4XI9K/Q39rm0+1fBHW2/593hn/wC+ZBX51hucg19Hg37h5WI+Nn7j/slaoNV/Z18CyDHy6dGn5cf0r1uvA/2Fv+TZvBv7ry/3Un/AvnPNe/160dj5Gt/EkMooorQ5QooooAKUUmRnHeuM+I/xg8J/CywmuPEOs2lnIkZkW2eUCSQAE4A/CplLlRrGLkcx+0b8d9N+C/gLVNSaRJNYWIiys8/NI5HBI/uivyb8CaBrP7Rvxae/1VnuoJrj7RqFw+Ruj7rn/a6Ve+KXxd1f4+/Fy6uVeWS2vbnyrOKQnKxZ+VW9q+uvhJ8KrH4Y+H4rSFFe7cBp5scs3+A7V42KxKhv1PssBhFRjd7na6bp9vplrDaWqCK2t40hiQdFRVCgfkK82/aJ+ISeB/AlyscgW7u1McYzzjua9SAxmviT9r74jQeJPFiaLatmDTeJWB6vzxXiUoOtUuetUlyxZ4NNeSeINTSJEDT3UmzJ/vFq/dj4R+Em8DfC7wn4edSsmm6Zb2zg9nWMBv1zX4xfsteCZfH/AMePB2jxx+ar3yzSL/sJl2/RTX7nKPlFfT0YOx8djZczQgOBis7WoPtMG2tMDNNliDrXckeMQabALezjQemTVDxRJ5ekzc9cD9a1UUqAKo61ZG9tDGADz0NFhGR4QjLoXrqcYqpo2mCwtgMYNXTzTASiiigkKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA+df2/fFv/CJ/s0eJGR9s98Y7OPnrucbv/HQa/G3TWOW55Nfp5/wVV8S/Yvhb4c0Qfevr9pj/ALsanP6stfl9Z/8AH1COxNc09z6bLValfzP1D+E1ibD4a+H4sY/0OM/pXXL0FZ/hqEW3hvS4hwFtYxj/AIDWkOlfHtXPoYvQWiiipLCiiis2AUUUVABRRRQgCiiirQBRRRSAKKKKACiiigAooooAKKKKsAoooqWAUUUVLAKKKKSAKKKK0QBRRRTAKKKKACiiigAooooAfRRRQNHmH7SUH2n4KeLl9LGR/wDvkE/0r8y45OBX6b/tGz/Z/gn4xf10+RP++gV/rX5hIeK97AXcWeTifjZ+237CdvLb/sy+DvNl83fHK6/7KmRsCvoCvFv2O7L7B+zj4BjxjdpiSH6kkmvac17cdj5Ot8chlFFFaHMFFLjivkj9qD9urw98M7K+0TwjfJqfi1CYmkSPfBa46kn+Jh6VLlY1p05VJWien/tHftNeGfgBoDz3cqXuvTqRZaZG3zs2Bhm9FFfk143+Jnib41+ObvUb6SW/vdRk2JGmeM9EUdhXOeNPiDr/AMYfE8+sarNLealO+GcknI44HpX1b+yp8Ez4W0o6/q1sst9eACFZBlolx+n1rzcTiY0o3Z9bgcCoe/I0f2ff2dLTwHDFrurxLPrkqgqrDIgHt717xtqSorq6isbSa4mYLHEpdifQV8pVnKtPmke6kkjzj49fFKH4Y+Cbm4Rx/ad0DFax553H+L8K/OfV9Wk1S8uJZCWklcsxJzXqH7RPxXl+I/jG6u1c/wBn26GG0jzwI8t/493rznwd4O1Hxrrtto+kwm4vrk4RfU19Dg6PLDmZ5uIqXukfdv8AwS3+DPn6rqvxEvYTi2U2diSP4m++w/4Dlf8AgRr9IgcivNv2efhtL8KfhJoHhy5mM95BCDOccK55Kj2BPFekL3r24Rsj4/ET5p6C0UUVZxBgUUUUALSUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUANooooA/Ob/grZfyJqPw9tYz1gvGYexMef/Qa/P/Rcrqtk3pKv86+5v+Cs2rtN4+8F6YfuW2nSXA+skm0/+ihXw/o+Df2mOf3q/wA65Z/Ez6jL/wCCj9VtFP8AxJ7D/r3j/wDQRWmlZmi/8gew/wCveP8A9BFaaV8ZzHux2Aikp9NIqjUSiiioAKKKKgAooooQBRRRVoAoooqQCiiigAooooAKKKKACiiincAooopAFFFFABRRRSsAUUUVoAUUUUAFFFFABRRRQAUUUUAPooooGjwv9svVV034GavA3El5LBDH9fNVj/46rV+eOmxedewJ13SKv619n/t8eICNA8NaI33pJ5br8EBUf+jK+T/hnojeI/G2i6Wg+e7vYYF+rNgV9JglaB5GKlabP3X+Ceny6T8K/C1lKAHt9PhTgY/hFdpnmqfh/ThpWh2Nmo4t4I4uOnCgf0rj/iH8dfAvwu0G/wBW1/xJYQRWZ2PBHOskxk7IEBzu9q9VbHyVS86jsd9XH/E74teF/hBoR1bxTqkWnWxDeWrcvKR1CDueRXwT8W/+Crt9ceba/D/w7BZryovdUYySH3CD5V/M18P/ABE+LHiv4r61LqnirWrnVrlzkLI58tPZV6ChzSOilhpS1lofY37R/wDwUi1Pxzpt5oPge1m0PTZMo163/HxKOmVP8PevjLSbK+8SayFzLcSSsS7MxJJ9TTPA/hLVvGPiC20zS7Vrm4nOMCvvP4Jfs6aV8NVj1O9g8/X9oBL8iE/7NcVeuqceaR9FhMKoK6RyfwL/AGY4tCih1XXwGmwHjt2HT3NfScEMcUSKgACgKMDHFNDZqVelfLVakqs+ZnvxairEc0qW8LyysEjTlmPQV8lftO/tDQXUA8P+G70umT9pmjPBYdvoP5079pH9psn7b4Y8Mz7YGylzeIeW9kbpivkKa6ad5HdizsxYse5Jr0cLg23zzOatVUSad2mk+Y7jnP8AOvtX/gm38HP+Em+I03ie8g3WOjxiSNmHWY/dFfJfwv8AAOp/EXxjpWhaXC013e3CwKqjPzsfmb6DrX7kfBn4RaR8GfAen+HdMjXzIk33M4HM0p+8x/kK+gpx1Pn8ViOSLtuzuKKKK7eh8wFFFFZgFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAfmP/AMFZrDb8QfB17/f014fykJ/9mr4TtWNv1NfpN/wVj0h28MeDtT+05RLmW3Fv6EqrE/8Ajo/OvzVGe/auWe7PosHK1FH6f/BnxBJ4k+GugXsrh5GtUVm9SBg13Kt1rw79kXWYtV+EVjGsgaS2keJ17rzxXuC96+OdNxdmfRw2JKKKKDUKKKKTAKKKKgAooooQBRRRVWAKKKKgAooooAKKKKACiiigAooopXAKKKKYBRRRQAUUUU7AFFFFUAUUUUAFFFFABRRRQAUUUUAPoorP8Q61D4c0S91KcFo7aMvtBwWPYficD8aEXCEqkuWJ+f37ZHjRfE3xmv7WGTfbaTFHYKAePMUZlP8A30dv/Aa8n8A+N7zwJ4t07W9P8oXVnMJYzKu4BhnBx9a1fGPgzXn1zUdSuU+3vdzvPJcRD5mZjkkj8a5E6Tdxbi9pOOerRGvpsPOChZM8nF4epTlefU9W8WftXfFrxJrd3qMnxD8QxPcqUaC0v3ggVfRY0IVfwArySe6mu2Z55WkY8nJ6mugsfh7r9/Hvj0u6K/7MLM3/AHyOa9d+E/7HXiTxjNDe+Iw+g6YPvxuv79voK3nWpwV3I4oUZTdlE+f7Kzmu7gRQo0srnCogyTX0V8Fv2UtW8U7L3V4zYWrYP78Y4+lfTXgb9mzwV4HkjubXT/tF4nPmzc5P0r1VVDxhVURBRgLjivGrY9vSnoetSwkY6z1OT+H/AMJfD/w4s1h0S0SN3A865kbfJIfY9q7LFRAYrkvH/wAVtA+G1tI+qXqNPtytrEcyGvM96o7vVnXdLodRfXkGmWk11dSiGCJS7uegFfHfx+/arn1ee50DwxObTTBlJr9DiS49l/uj/wAerz/4tftEeI/iFc31vHdtZ6LN9yzjOMgdNxrxi5kknYs5yScnNezhMFb36n3HHVr20iPvr6S+md2Ytk5JPernhjw3eeKNatNLsYpJrm6kEUaRJvZmPQBep/CqdlZvdSCNepr9Mf2AP2QhoaWfxI8TwNHduWbTLK4i2vFnjzD/AEr2rHmVaqinObPXP2MP2XtM+DvhGy1zWNJRfG135jSzXABe2jZseWn935f+BfNtr6aooraOh8zVrSqyuwooorUxCiiipAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA+c/wBvH4UzfEz4D6o1iJG1HSpEvoliUuWC5VxtHJ+Vj+VfjVexeRdzR/3W2/lX9D8kaTRtG6h0YYZWGQRX5M/tt/sdaz8NvF+r+LtEthc+Eb6U3AaFMGzdicxED+H0Pb+eE49T1cHV09mxv7CGq7o/E1hn7ghkA/76/wAa+uV718bfsN2F9b+JfELGNksfsiDLKRl9wx+gNfZSg818pXdps+vh8KH0UUVzGwUUUUgCiiipAKKKKEAUUUVXQAooorMAooooAKKKKACiiigAoooqACiiiqQBRRRVIAoooqgCiiigAooooAKKKKACiiigAooooAeOK8Q/aI8abUt9At35OJrjH/jq/wBfyr1zxJrsHhzRbvUbhgI4ELY/vHsPxNfHXiHWbjxBq91f3DFpZ3LnPb0FQ5WPpcmwjqVHUlsihbA5Oa+sPAvgzTh4U08zadAzvGHJkUMea+evhr4YbxP4psbMLmLeHkPoor65tFWKFYUGFjQKB9KKU76nZnNRX5SlBpFtZriG0hjA/uxinng1dzXM+K/HugeFLJ7nUNSgtwhwwdsGtX7x8lsbYArL1/xBp3hqya81S9hsbUdZZ22ivmL4jftxQQGW18JaV5hHH2u95X6gA818yeN/ihrvjrVZNQ1a+N3O3QOWwg9FHRR7Cuungpz8jGVenHqfU3xT/bItbK0n0vwvgvJHhry5XDjPdcdPrXyT4j8ZX2v3klxc3MlxK5yZHOfy9K5+W6eZiWxn2J/rTVOa9mhhYUVtqeVWxLnpHYtxzFhycmtnwt4R1TxnqsenaRYXWo3b9IbOEyyH6KOTW/8ACr4KeLPi9qb6f4Y0qbUZ41Dy+WMiNTnBPpX6sfsb/smW/wCz34dkutXjt7vxfekLcXUYysMf8Ma+/wDeP+W7kefUrqnG8jzH9jz9g2z8LRWfi7x3aBtUOJbXSJF/1Xo0o/vf7P8ADX3MEjVFVFChRgADAA9qKAMVSR4NWvKq7sKKKK2RkFFFFWAUUUVIBRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABXxf/wAFMvicNA+Hem+EraT/AEjVJvNcg9FX/wCvX2hX5Mf8FCPH/wDwlnx61HTIlke20iMWigHj7u4t+dY1HZHpYGnzVLm3+xdqc93ba1bn/URGP+TV9QgCvnD9ja1js/Amo3mzElxcbd2OoH/6zX0GNRjHevjcTL32fdQpOxdpD0NU/wC04/WlXUI271xKZp7F7k5pKRZQ3elrRO+xLTQ+iiimIKKKKACiiirAKKKKACiiigAooozQAUUZoyKACikyKWoAKKKKACiiigAoooxVAFFFFMyCiiigoKKKKAH0UUUAFFFfM37W37RI8EafP4Q0C4365ex4uJ4zg2qeg9GNbUqUqsuVGVSfs48xlfHv456VqesHR7fUoRZWrEPh/vuO59hXil38UtEts7bkysO0aE14a8kzzu8hLM5yzMckmkIz1r1o5dBbm1PPqlGHLTX4/wDAPpfwp+11Z+B7SWLTdC8+ZxjzppP6Y/rVzVP28PEE/wDyD9Nt7U/9NF3/ANa+WdtG2uhYKkjzq+b4mv8AEz2bXP2u/iPrFw+3V2tYz/DbqEFeZa14r1bxHdPcalfTXUrHJaRyTWPS4zXZChTitEedLE1Z6NjvNP8Aeb86Fy3QVYsdJudQmEcMLMx7Yr6L+CX7E/j/AOK0ltLFpj6bpEh+e/vEKL+HHNaWsZWa1Z8+aVoV3q1wkVvC8jsQAqrkmvrn9nP/AIJ9+J/iLNHqPiaJtB0IsuGuFxLID3Ve4r7W+BH7DHgj4Oy2mpXRk8Q67AAVnu1Xyom/2FxX0eqBQFAAUdABwKLHBPFQhp1OG+DvwN8JfBDQ/wCzvDWnpbPIB59wR+8mb1Y16F2NQqKkU8VpFHlTqSqSbkFFFFaWICiiimWFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAV+Jn7XVrPpf7SnjgTw+T/po/75KrX7Zk4BNfkn/wAFK/CcWkfH24volwdQtIbh27FgNtc9ZaHrZc7TaOl/ZH8S/bvBeo6eW+a1mBUexFe7A5XNfnx8E/itc/DbxAbkAy2swEdxFnhlz/Ovuzw74nsvFOjW+p6dMJrSYZUg9PY18Zj4ShK/c++w84zibGetCttNNQ7lz1pa8e7O5IsJdFav211uAGTWRVi1fa4q6cmmZTgmjdByM0UyNhs60+u9anA1YfRVbUNRtdJsZLu9uobS3jGWlmfaorxrxH+114B8P6gLUX0l+ckM9qhIXH1xmt40pS2RlKaR7dRXg2nftj+BdR1O2s4zeKZ3Cb3RQF/Wp/F37WXg/Q557e1jur+VBtEkeAu79a09hU7EKoe5UZ4r4U8Vfti+LtR1RzpKJpNr0EY+eQ/jXl2ufGrxjrXiB9QutZuWmb0lZQi/3cLXRDBVJ7lymoq5+lN7r2n6WGe61C2s1Xr9olArn7j4y+CYnKP4n09GHXD5r8y9e8W61rhLXurXc3tJIawo7qcfKZCR6gZNdSy59ZGLr+R+kes/tX/D3RZyE1Z71B/HbQMQvvmsX/htLwBjhb4/9sP/AK9fAS5Ioq/qEF1MniX2Pu+T9tzwQnSx1Vx/sxp/V6m/4bW8C+R5ht9TH+x5K7v/AEKvgo5wajU4NNZfDuR9al2P0B079s/4d3xAlnvrIn/ntbHA/LNdJZ/tOfDe7sPtQ8TW0X/TGXKyfka/OAAlajZevFJYCHcf1p9j9StA+Lng3xHtFh4k06dmGQq3KZ/nXVQXtvdIHgnjmQjIaNgwP5V+QLDBNdJonxI8TeHgo0/XL61C9FSdto/AnFZvL+0hrF90fq+CDS1+f3g/9tbxtoO2PUUg1qBeMOu18fUV7vof7XPhrxd4evsTNous+WBFBcnClvY1wVcNUpbo7KNWNaSiup6jP8XdJtNYNi5y3rXcwyCaLf0zXx54Vuv7e8UWPfzpU/8AHmr61juY4YsbsCvMUj3a+FUF7pewPWjC+tZh1RQe5oGqA9jVe1PNdFmnRWcupKaljv0Y9apVUyPZNFyikRgwzS1a1ItYdmlqLmvMPih+0H4W+G9vcwz3a3epoOLSE5H/AAJv4a2jFsRa+PHxdtfhR4JvbxJojrEq+XaQuf4mzhj6AYP41+ZGp6xdatqFzeXc8l1d3EjSyzStuZ2PUk10/wAUPijrnxU1+fUdXu3dCx8uEnhRXEgEH1r6XC0PYw82fP4qt7SXLHZE6tuFLXTeCPhp4j8el10PSrnUZFODHbRF2H4Cu6H7J3xV/wChK1U/9sffFdljh0PHtlJszX2p4L/4JkfEbV206fVFsdNs51DzyPcbpIFPYx4+9X0z8J/+CZ/gDwdcx3fieRvFE64KIxZIf+BAdaqxnKrCG7Py08F/D3W/G2ppZaPpV5qU7nAW2hZ/5V9afB3/AIJveNvGKm614QeF7NWClb9Ga4I5yVjX04+8RnNfpn4H+FXg/wCG1kLXwz4fsdIiAxi2iCk/U9T+JrqIkCbsDrV8uhzPF2+A+e/hB+w58OPhjFbz3Gmr4j1SMDN3qagpuHdYhwv619DQwx28SxxoqIg2qqjCqPQDsKOaSlY5qlWdTdhjmkAFLRVWOMUDiloooAKKKKsAooooLCiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAK+fv2t/2adL+O3g2e5CND4g06Jns7lOTgZJTHfP86+gaMcUmrqxpTqOnLmR/PZ4j0a60HU7uyljl3xMVPmJtNdF8N/jHr3w8vVexu38jI8y2lOUcfSv0w/a7/YZ0X4l6Je+IfBGmQ6d4yU73hhZYorxe67T8obuMYr8xfiH8IvFnw31GS28RaLd6dIuOLiIrn3B7j6VwVKEZJxkro+rw+LU480Nz6a8I/ti+HL8JFrUEumznjzIvnTPuOo/DNerWHxm8F31r9oXxNpqRYyWmnEePruxivzb6GrLXTfZ2jJ4PFeNVy2k/h0PXhmM7WaufpWPib4RI/wCRo0f/AMDY/wDGs/VPjd4G0Dm78T2Ev/Xq5l/9BBr83ARipojisY5VD+YHmMn9k+9/E37Y/gXRLJ20z7XrU4+7HHH5Sn/gTdPyrx7xZ+3R4kvZ3XQNMstKtj0M6maYfjnb/wCO181SPlSKgC56V6VLAUqer1OGriqk9nY6Xxd8TfEvjW6muNW1a5uWk6qXIX6Y6Vykbsc5JP1qX7NLLnbXr/gP9jf4u/EW0hvNG8I3z2U33LmZDFGfxbFehGCWiR58qnLq2eS2Rm+0jyeTXunwx/ZV+JvxZs1u9M8OXa2TtgXV0DHCV9VZvvfQV9u/snf8E8NO+Ftzp/irxvfR6v4ghAcabHEsltayfwtuZcuw/wBn5fr/ABfa0UKW67ISNg6BV2/pgVso3OeWPUPhVz8vfAH/AATC8dXt058Q6laaVa4bMiN5h3fwrgV11j/wSr1Wa7/0zxXYRWf9+OKQv/3zX6L0VVjkljqkttD8/v8Ah09ph1KKU+N5vsP/AC0t/sfz/g+7/wBlrfH/AASo8Df9DJrH5p/8RX3FRRYwljKq6nxzP/wS8+GEoTbq2ux7VAOJIzk+v3Kqn/glt8M+ca3r/wD33F/8RX2hRS5TP69VPhS//wCCU3hWYsbPxXqkY7CSJXP6YrlB/wAEnGj8118fea3l4jjksGC7/UkSZr9FqKOUPr1U/L+6/wCCWPjeK33W/iDR55f+ebNIv67TXmHjL/gn38ZPC1vcXEXhxdWgi/isLiORm+iZ3H8q/Y7ZRtxS5TRYyr1PwB1T4R+N9LuHhvPCOs20ynDRyWEisD9Nua5S9066sJDHcW0sLjqrIQfyr+inH0P4Vz/iD4c+E/Gfkf8ACQ+GNG1ryP8AU/2nYRT+X/u7lOPwpWNo45reP4n4FaN4b1K6ngW2s5LoTN5e2Ec81N4o8OXuj20L3NlNbRSHAeQY6V++Xh74deEvCUHk6L4Z0jS48Y22djHECP8AgIFfMP8AwUY+Cmo/En4T2V3oOmC8udEuXu3iiADCIrhsLjntxWcoX3OyOMjJabn5pfBv4l6h4d8YaPE0zTWZukR48/PtJ/hr9FbhvP6Gvy20q3bRddsrro1vKrfTBr71+Hv7QPhzxygt/tA03UBs2wyj5ZPXBr57MsMoSvTjofX4LEznC1WV35nqIBp1RW99DdLujkjkHqh4qXIr5yzT1PWumKvenqcVl6l4h0vR0332oW1on96aUKP1rg/EP7R/gTw7bzSNqxvpIxxHaIX3H0B6VrCEpfCjGTSPaLJyYwDXPeOfij4a+HEEcuu6ktsZPuRIjSSH/gIGa+OfGX7afivVTeW2hWcGk2LHbHIebhV/vbs/+y14ZrnjDVPEV29zqF7Pdzucl5XJNe5QwNSSvLQ8atiqUNFqz6M+Nv7Xeo67dS6d4Vk+w6YAB9pwRNJ/8T9K+Y9T1a61S4kmuZnmkc5Z3YkmoTKXJLHk1d0fRLrXLsWtnC887fdRBkmvoaGGp01tqeTUxMp6LRGKQcmus+Ffwn8UfGbxjaeGfCemtqGpT5ZmJ2xQoOryN/CK+sP2bv8AgnLrHxMs31jxnNeeGdNXBit/LXz5x7q33fw3V+i3wY+Avg34FeGxpHhHSI9Pjf5p7qQ+Zc3Ld2kkxk9Ogwo7AV0nkVqsYLzOO/ZD/Ztj/Zw+HsOi3FxHqmsXTC4vbuNRtWT+7G2M7R/tV7v5QGeTTIxtzT95oSPMdVsbRRRWiRk23uFFFFMQUUUUrAFFFFMAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigBrDNc342+HHhv4jaLNpXiTSbfVLKUYKTICR9D1H4V01FA03F3R8beP/8AgmD8OvEzyT6Bf3nhu4PK7T5qD8DXjniP/gk9r0e7+yfGdnc+n2m3K/yr9LCM01lqOSJ1LF1o6XPykH/BLH4mCTb/AGtouP73mHFaOl/8Eq/HtxPsvPEWkWcf/PRQ0n6DFfqNso2Gl7OI/rlbufm5Yf8ABJrWf+X3xzp3/bC2k/rXqfhb/glh8OdJffq2t6nrK/3Rtg/lX2hsNLsp8iH9aqy3Z5T4E/Ze+Fvw7gRNH8Hae0ij/XXUImdvclu9et2j+VEsSfJGowqDgAewpgUAYpy96GjGU3Ldjj1NJiiigwCiiigoKKKKACiiigysFFFFBVgooooGFFFFABUV7ZxX1rLBKoeORSjKe4NS0UmrhF8p+R/7YP7Imq/CDXrvXNPi+2eFr2UtFPEvNuxz8jj+tfJx/wBFuTzJ+Ff0Ja5oNh4k0u503U7SK9sbhSksEyhlce4NfG/xc/4JgeEPF00134Q1mfwtcyEt5EiefBn2HBH51k43Pfw2PtpM/MzS/HGv6XE4s9ZvrUZ+6k7AflmtKz+JfiszgnxJqPP/AE8GvpfxP/wTA+KWiXTjS7vSNdtB92SOdopG+qMvy/gTXLj/AIJ3fG0AkeGLf/wPg/8Ai6XsKb3R6n17tM+dfEPiDUdVuna9vp7snqZZC1YobOa+qdO/4JzfGrUc+b4es7L/AK+b+L/2VjXdeC/+CVPjm/v4P+En1/StIsj88v2FnuZB/sDKqPx5oVKMdkc1XExlq5nw5nFdJ4O+HniDx3ceRoOk3moy+kEJP61+pHgv/gmP8LPDl9Bd6jPqviBoxk295MqwlvXCKrf+PV9KeBvhX4U+HGniy8OaHaaVbjqsEYBP1PU/jV8p58sTFbH5Q/Cf/gnx8TfiHq3l6jpv/CO6argPd35wcd8KK/RD4FfsUeAfgfHbXdvbjV/EEXJ1G6UHa3+yvaveRwMClDEU+U46mJk1ZCrHgYJB/ACnAYpm40mTVJHnuTerHUUUVaQgoooplhRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAGBRgUUUAGBRgUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRSsAUUUUWAKKKKLAFFFFFgCiiiiwrBRRRTGFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRR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');
INSERT INTO `sciperformance` VALUES (105, 1, '123', '论文', '/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAMCAgMCAgMDAwMEAwMEBQgFBQQEBQoHBwYIDAoMDAsKCwsNDhIQDQ4RDgsLEBYQERMUFRUVDA8XGBYUGBIUFRT/2wBDAQMEBAUEBQkFBQkUDQsNFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBT/wAARCAOaA8ADASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD9LaKKK886wooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiloASlrzv4o/Fmz8C2hSIiW/P3YzXmVj+0brV4Ti0QD3Fc8q0YytI9ijlOLrw9pCOh9IdaM14la/tDTqALjS1b3jf8AnXQ23x00CSBXvDNZk+ibhT+sUu4pZXiYrWJ6ZRWJovinT9aiElldxzqeynn8q2I5g/1rZNS1izzalKdJ2mh9FFFMyCiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiuQ8ffESw8DWe+d83DfcSjY1pUaleXJTV2dfVHXNWi0TS7m7lYKsaMefXBrwEftQanc3DeRpUIt+kfmv8/wDwL3rR8UfE+bxp8PLvCBJ27A1yPEwTaPdhk2Jp1F7WOh4T4g1O58c+LDO7sXuJwEVuO/3eK+kdP/Z/02PSbJhc3Md2sAMpUZXfj722vOvg58PLtlutZmhSYW2TAccFwOvNb/iH4peKPDHlhJGYtkESDcpGema5oKKvKotz6jGVKtWaoYSSXKWNd+AOpJbs+mXi33orjy3rz3xF4D8T+H9MZr2xljjBwZA3mV6XoH7RVwttD/aemxZP3ngbH869V8J+LdG8b2JMEkchcYaJsE/lVeyp1PhZwvG43Bfx4XXc+M9M1e70OYXNleS28i85jbGfwr3/AOBHj/UfE15cWt/ctP5UQYFu9eW/FuDTx40uV0yJI7aELF5KjCblxu27a9N/Zw0cSC/1Vl5wIlPtU0IuM2kz0M1dKtlsa/LZyse5UUDmivTR+ZhRRRTAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooorK4BRRRVAFFFFWAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAV8b/FbxBN4n8W387SE2isYkH3eFY19kV8c/ErwzPovi3VbV87GmMyf7rciuDGOSptxPruGuR4mSlvbQ5LA+zSnzee1dP4B8WwabPHFqaCS1dtsiAc49a4u4DQsV9KYtrLcj5a8KE2nc/VKtCNaDhI+7/Dy6c+l27ae0a2hHy+VUfiHwfpXiO2aK8gSRSMZA5rivgDaXMHgOFbnqJWr0DVtTg0qzaed9iL3r6GGsUz8OqxnSxMo05bHk/iH9ny2u2/4l10IE/wBsZNWvDvg6T4Y6Be3d3ci4jSPHyDBrmfEfxn1FrqcQObeJCBhBzXL6r8a9RvtJudPmYzpIwGXHNYuVOLutz6eGHx9aChUd4/iee6jeT6jqrtkvJM+APcmvrn4UaCfD3gyzhcfvnXcxryP4NfDCLXpRrV2mbeNsICOpr6Jih+ypHGn3EGAKrDwes2RxBj4VOXCUvs7/AORKOlFFFd58UFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAjNtUn0Fcw3iFxNKoJ4NdDf3CwWEr9wK8/wDtSea5I6mvlM5x7o1I06cj0MJS9pzXLl/rk9yjJuIWq2j3MiTnaTmqd0Hdh5Y611fhvQ/IiEso5PPNfOYT6xisYbVVTpqx0o6UUL92iv0s8p7hRRRViCiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACuc8YeBdP8AGFk0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QAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRR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');

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score`  (
  `ID` int(0) NOT NULL AUTO_INCREMENT,
  `studentID` int(0) NOT NULL,
  `score` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `studentID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf16 COLLATE = utf16_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES (1, 1, '305', 1);
INSERT INTO `score` VALUES (2, 2, '403.08', 1);
INSERT INTO `score` VALUES (3, 3, '860.25', 1);
INSERT INTO `score` VALUES (4, 4, '862.52', 0);
INSERT INTO `score` VALUES (5, 5, '640.03', 0);
INSERT INTO `score` VALUES (6, 6, '145.88', 0);
INSERT INTO `score` VALUES (7, 7, '925.97', 0);
INSERT INTO `score` VALUES (8, 8, '89.02', 0);
INSERT INTO `score` VALUES (9, 9, '759.03', 0);
INSERT INTO `score` VALUES (10, 10, '487.66', 0);
INSERT INTO `score` VALUES (11, 11, '574.47', 0);
INSERT INTO `score` VALUES (12, 12, '948.29', 0);
INSERT INTO `score` VALUES (13, 13, '408.61', 0);
INSERT INTO `score` VALUES (14, 14, '365.07', 0);
INSERT INTO `score` VALUES (15, 15, '864.85', 0);
INSERT INTO `score` VALUES (16, 16, '614.05', 0);
INSERT INTO `score` VALUES (17, 17, '200.98', 0);
INSERT INTO `score` VALUES (18, 18, '104.06', 0);
INSERT INTO `score` VALUES (19, 19, '919.97', 0);
INSERT INTO `score` VALUES (20, 20, '478.85', 0);
INSERT INTO `score` VALUES (21, 21, '806.75', 0);
INSERT INTO `score` VALUES (22, 22, '241.78', 0);
INSERT INTO `score` VALUES (23, 23, '295.59', 0);
INSERT INTO `score` VALUES (24, 24, '661.59', 0);
INSERT INTO `score` VALUES (25, 25, '87.14', 0);
INSERT INTO `score` VALUES (26, 26, '76.01', 0);
INSERT INTO `score` VALUES (27, 27, '687.93', 0);
INSERT INTO `score` VALUES (28, 28, '937.04', 0);
INSERT INTO `score` VALUES (29, 29, '665.01', 0);
INSERT INTO `score` VALUES (30, 30, '275.34', 0);
INSERT INTO `score` VALUES (31, 31, '58.62', 0);
INSERT INTO `score` VALUES (32, 32, '357.99', 0);
INSERT INTO `score` VALUES (33, 33, '547.19', 0);
INSERT INTO `score` VALUES (34, 34, '5.23', 0);
INSERT INTO `score` VALUES (35, 35, '647.08', 0);
INSERT INTO `score` VALUES (36, 36, '152.62', 0);
INSERT INTO `score` VALUES (37, 37, '275.86', 0);
INSERT INTO `score` VALUES (38, 38, '786.73', 0);
INSERT INTO `score` VALUES (39, 39, '191.81', 0);
INSERT INTO `score` VALUES (40, 40, '549.21', 0);
INSERT INTO `score` VALUES (41, 41, '431.02', 0);
INSERT INTO `score` VALUES (42, 42, '449.13', 0);
INSERT INTO `score` VALUES (43, 43, '463.13', 0);
INSERT INTO `score` VALUES (44, 44, '269.12', 0);
INSERT INTO `score` VALUES (45, 45, '474.28', 0);
INSERT INTO `score` VALUES (46, 46, '9.97', 0);
INSERT INTO `score` VALUES (47, 47, '342.05', 0);
INSERT INTO `score` VALUES (48, 48, '181.63', 0);
INSERT INTO `score` VALUES (49, 49, '782.71', 0);
INSERT INTO `score` VALUES (50, 50, '515.15', 0);
INSERT INTO `score` VALUES (51, 51, '384.7', 0);
INSERT INTO `score` VALUES (52, 52, '996.33', 0);
INSERT INTO `score` VALUES (53, 53, '232.13', 0);
INSERT INTO `score` VALUES (54, 54, '375.76', 0);
INSERT INTO `score` VALUES (55, 55, '475.66', 0);
INSERT INTO `score` VALUES (56, 56, '618.74', 0);
INSERT INTO `score` VALUES (57, 57, '13.93', 0);
INSERT INTO `score` VALUES (58, 58, '961.11', 0);
INSERT INTO `score` VALUES (59, 59, '122.53', 0);
INSERT INTO `score` VALUES (60, 60, '838.4', 0);
INSERT INTO `score` VALUES (61, 61, '544.77', 0);
INSERT INTO `score` VALUES (62, 62, '744.83', 0);
INSERT INTO `score` VALUES (63, 63, '634.13', 0);
INSERT INTO `score` VALUES (64, 64, '865.93', 0);
INSERT INTO `score` VALUES (65, 65, '491.49', 0);
INSERT INTO `score` VALUES (66, 66, '835.52', 0);
INSERT INTO `score` VALUES (67, 67, '792.92', 0);
INSERT INTO `score` VALUES (68, 68, '549.48', 0);
INSERT INTO `score` VALUES (69, 69, '427.96', 0);
INSERT INTO `score` VALUES (70, 70, '204.91', 0);
INSERT INTO `score` VALUES (71, 71, '980.66', 0);
INSERT INTO `score` VALUES (72, 72, '131.5', 0);
INSERT INTO `score` VALUES (73, 73, '838.93', 0);
INSERT INTO `score` VALUES (74, 74, '160.71', 0);
INSERT INTO `score` VALUES (75, 75, '655.2', 0);
INSERT INTO `score` VALUES (76, 76, '622.4', 0);
INSERT INTO `score` VALUES (77, 77, '93.78', 0);
INSERT INTO `score` VALUES (78, 78, '879.94', 0);
INSERT INTO `score` VALUES (79, 79, '850.12', 0);
INSERT INTO `score` VALUES (80, 80, '762.05', 0);
INSERT INTO `score` VALUES (81, 81, '796.71', 0);
INSERT INTO `score` VALUES (82, 82, '110.81', 0);
INSERT INTO `score` VALUES (83, 83, '555.72', 0);
INSERT INTO `score` VALUES (84, 84, '982.94', 0);
INSERT INTO `score` VALUES (85, 85, '921.28', 0);
INSERT INTO `score` VALUES (86, 86, '533.33', 0);
INSERT INTO `score` VALUES (87, 87, '644.43', 0);
INSERT INTO `score` VALUES (88, 88, '558.69', 0);
INSERT INTO `score` VALUES (89, 89, '297.59', 0);
INSERT INTO `score` VALUES (90, 90, '296.85', 0);
INSERT INTO `score` VALUES (91, 91, '679.75', 0);
INSERT INTO `score` VALUES (92, 92, '631.36', 0);
INSERT INTO `score` VALUES (93, 93, '532.36', 0);
INSERT INTO `score` VALUES (94, 94, '298.05', 0);
INSERT INTO `score` VALUES (95, 95, '432.37', 0);
INSERT INTO `score` VALUES (96, 96, '196.54', 0);
INSERT INTO `score` VALUES (97, 97, '927.18', 0);
INSERT INTO `score` VALUES (98, 98, '556.84', 0);
INSERT INTO `score` VALUES (99, 99, '204.07', 0);
INSERT INTO `score` VALUES (100, 100, '735.1', 0);

-- ----------------------------
-- Table structure for scoresum
-- ----------------------------
DROP TABLE IF EXISTS `scoresum`;
CREATE TABLE `scoresum`  (
  `studentID` int(0) NOT NULL,
  `socialScore` float NULL DEFAULT NULL,
  `sciScore` float NULL DEFAULT NULL,
  `volunteerScore` float NULL DEFAULT NULL,
  `orgScore` float NULL DEFAULT 0,
  `sumScore` float NULL DEFAULT NULL,
  `studyScore` float NULL DEFAULT NULL,
  `finalScore` float NULL DEFAULT NULL,
  PRIMARY KEY (`studentID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf16 COLLATE = utf16_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scoresum
-- ----------------------------
INSERT INTO `scoresum` VALUES (1, 1, 1, NULL, 11, NULL, NULL, NULL);
INSERT INTO `scoresum` VALUES (2, NULL, 12, NULL, 67, NULL, NULL, NULL);
INSERT INTO `scoresum` VALUES (3, NULL, NULL, NULL, 11, NULL, NULL, NULL);
INSERT INTO `scoresum` VALUES (4, 100, NULL, NULL, 90, NULL, NULL, NULL);
INSERT INTO `scoresum` VALUES (5, NULL, NULL, NULL, 100, NULL, NULL, NULL);
INSERT INTO `scoresum` VALUES (6, NULL, NULL, NULL, 11, NULL, NULL, NULL);
INSERT INTO `scoresum` VALUES (47, NULL, NULL, NULL, 11, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for socialpractice
-- ----------------------------
DROP TABLE IF EXISTS `socialpractice`;
CREATE TABLE `socialpractice`  (
  `ID` int(0) NOT NULL AUTO_INCREMENT,
  `studentID` int(0) NOT NULL,
  `time` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `material` longtext CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL,
  PRIMARY KEY (`ID`, `studentID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf16 COLLATE = utf16_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of socialpractice
-- ----------------------------
INSERT INTO `socialpractice` VALUES (13, 1, '11', '22', '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');

-- ----------------------------
-- Table structure for statement
-- ----------------------------
DROP TABLE IF EXISTS `statement`;
CREATE TABLE `statement`  (
  `ID` int(0) NOT NULL AUTO_INCREMENT,
  `studentID` int(0) NOT NULL,
  `type` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`, `studentID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = utf16 COLLATE = utf16_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of statement
-- ----------------------------
INSERT INTO `statement` VALUES (109, 1, '学习态度', 'abcd');
INSERT INTO `statement` VALUES (110, 1, '思想政治', '123456');

-- ----------------------------
-- Table structure for studentinfo
-- ----------------------------
DROP TABLE IF EXISTS `studentinfo`;
CREATE TABLE `studentinfo`  (
  `studentID` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `EnglishName` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `social_ID` int(0) NULL DEFAULT NULL,
  `stuNo` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `gender` enum('男','女') CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `year` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `school_ID` int(0) NULL DEFAULT NULL,
  `place` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `nationality` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `birthday` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `majorID` int(0) NULL DEFAULT NULL,
  `political` enum('共青团员','中共党员（含预备党员）','群众','其他') CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `stu_type` enum('二学位','专业硕士','工程博士','工学博士','工程管理硕士') CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`studentID`) USING BTREE,
  INDEX `school_ID`(`school_ID`) USING BTREE,
  INDEX `majorID`(`majorID`) USING BTREE,
  CONSTRAINT `majorID` FOREIGN KEY (`majorID`) REFERENCES `major` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `school_ID` FOREIGN KEY (`school_ID`) REFERENCES `school` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf16 COLLATE = utf16_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of studentinfo
-- ----------------------------
INSERT INTO `studentinfo` VALUES (1, 'Wong Kwok Yin', 'Wong Kwok Yin', 763, '788', '女', '(121) 316 6806', 'wong8@yahoo.com', 'Iblf62T5a2', 4, 'New York', 'v8vwL5rDjj', '2004-06-23', 4, '群众', '工程博士');
INSERT INTO `studentinfo` VALUES (2, 'Huang Anqi', 'Huang Anqi', 226, '221', '女', '5204 138369', 'hanq9@outlook.com', '9ntw7JnIug', 17, 'Shenzhen', 'EPQYcCThDe', '2021-12-16', 4, '其他', '工学博士');
INSERT INTO `studentinfo` VALUES (3, 'Lei Rui', 'Lei Rui', 991, '891', '女', '70-4350-3456', 'leirui8@hotmail.com', 'x4s57V6ihW', 7, 'Nagoya', 'Jil0WUTYkC', '2013-06-13', 4, '群众', '工学博士');
INSERT INTO `studentinfo` VALUES (4, 'Tao Yuning', 'Tao Yuning', 652, '979', '女', '718-425-3352', 'yuningtao@outlook.com', '6DryhSe8e4', 10, 'Oxford', 'iRy3evXmq7', '2007-01-07', 1, '中共党员（含预备党员）', '二学位');
INSERT INTO `studentinfo` VALUES (5, 'Xiao Jiehong', 'Xiao Jiehong', 304, '913', '男', '5330 851351', 'jiehoxiao75@gmail.com', 'GReR4z9b76', 7, 'Nara', 'E9XbvUdraS', '2014-07-06', 2, '中共党员（含预备党员）', '工程管理硕士');
INSERT INTO `studentinfo` VALUES (6, 'Craig Ruiz', 'Craig Ruiz', 637, '412', '女', '330-305-2537', 'rucraig@gmail.com', 'j9wbEnNR4c', 21, 'Nagoya', 'YVEgFTqQe6', '2022-09-27', 2, '中共党员（含预备党员）', '工学博士');
INSERT INTO `studentinfo` VALUES (7, 'Russell Porter', 'Russell Porter', 912, '228', '男', '66-982-5978', 'russellporter@outlook.com', '0LffNAQTlx', 5, 'Birmingham', 'ju9ZIDAmZF', '2007-05-09', 3, '共青团员', '专业硕士');
INSERT INTO `studentinfo` VALUES (8, 'Sakamoto Daisuke', 'Sakamoto Daisuke', 908, '899', '男', '3-0296-8922', 'dsakamoto@outlook.com', 'rMXqd737yp', 1, 'Los Angeles', '3i1nLVKiyG', '2006-01-08', 3, '其他', '专业硕士');
INSERT INTO `studentinfo` VALUES (9, 'Tammy Diaz', 'Tammy Diaz', 893, '116', '男', '769-401-9877', 'dita518@yahoo.com', '8TX981F7mb', 14, 'Shenzhen', '6RDyxuJIzo', '2020-08-15', 2, '群众', '二学位');
INSERT INTO `studentinfo` VALUES (10, 'Yeung Ling Ling', 'Yeung Ling Ling', 840, '128', '女', '52-559-8083', 'yeulingling@yahoo.com', 'G1TBalIo7W', 2, 'New York', 'hOu7tglyfg', '2009-10-25', 4, '其他', '工程博士');
INSERT INTO `studentinfo` VALUES (11, 'Jiang Shihan', 'Jiang Shihan', 949, '173', '女', '(20) 2124 0629', 'shihanjiang@gmail.com', 'wQohV95m5R', 15, 'Leicester', '0Mr2g9grAj', '2017-12-20', 5, '共青团员', '工程博士');
INSERT INTO `studentinfo` VALUES (12, 'Xie Lan', 'Xie Lan', 577, '255', '男', '20-803-9299', 'lanxie1027@icloud.com', '8b415pjauT', 8, 'Albany', 'fnSTJKIcsP', '2007-05-20', 3, '中共党员（含预备党员）', '二学位');
INSERT INTO `studentinfo` VALUES (13, 'Jiang Anqi', 'Jiang Anqi', 692, '663', '女', '80-1093-2814', 'jiang70@mail.com', '21o1rAqBKY', 11, 'Chicago', 'rMHI6CuTWh', '2023-05-03', 1, '中共党员（含预备党员）', '二学位');
INSERT INTO `studentinfo` VALUES (14, 'Theodore Campbell', 'Theodore Campbell', 113, '632', '女', '614-759-1190', 'theodorecampbell@outlook.com', 'tERkoTg779', 22, 'Columbus', 'XfyFtRKjBW', '2016-01-17', 5, '其他', '二学位');
INSERT INTO `studentinfo` VALUES (15, 'Lee Chieh Lun', 'Lee Chieh Lun', 791, '7', '男', '7069 772300', 'leechie310@gmail.com', 'miRo0ZnQir', 10, 'Sapporo', '2PUm3YGDs4', '2005-01-15', 4, '其他', '工程博士');
INSERT INTO `studentinfo` VALUES (16, 'Loui Chieh Lun', 'Loui Chieh Lun', 511, '382', '女', '718-466-7374', 'chiehl@mail.com', 'bfX6aAfyWf', 6, 'London', '47cys4vKpD', '2001-11-24', 2, '中共党员（含预备党员）', '工程管理硕士');
INSERT INTO `studentinfo` VALUES (17, 'Tse Kwok Yin', 'Tse Kwok Yin', 911, '634', '男', '70-2837-1482', 'kwokyin4@outlook.com', '113DVA7Vvu', 2, 'Chicago', '4FULzH1kdK', '2018-10-20', 1, '中共党员（含预备党员）', '二学位');
INSERT INTO `studentinfo` VALUES (18, 'Anne Woods', 'Anne Woods', 582, '687', '男', '838-268-5936', 'woodsanne@gmail.com', 'PsF5hhVLiT', 2, 'New York', 'swe0ACrAAv', '2020-05-16', 3, '共青团员', '专业硕士');
INSERT INTO `studentinfo` VALUES (19, 'To Lai Yan', 'To Lai Yan', 88, '60', '男', '718-294-2363', 'laiyanto@gmail.com', 'VXl7OjazON', 8, 'London', 'CqsLMlQoMN', '2006-03-25', 4, '中共党员（含预备党员）', '工学博士');
INSERT INTO `studentinfo` VALUES (20, 'George Rogers', 'George Rogers', 635, '641', '男', '177-0223-1160', 'rogersgeorge@gmail.com', 'fhJVeoJIeV', 13, 'Osaka', 'E6LRr1bIWm', '2010-09-23', 5, '群众', '工学博士');
INSERT INTO `studentinfo` VALUES (21, 'Hashimoto Airi', 'Hashimoto Airi', 579, '212', '女', '(161) 227 3383', 'airihashimoto1013@icloud.com', 'xCQEQCF6Rq', 11, 'Nara', 'gkkBw27Ioj', '2016-07-06', 2, '共青团员', '工程管理硕士');
INSERT INTO `studentinfo` VALUES (22, 'Chan Hok Yau', 'Chan Hok Yau', 52, '179', '女', '80-4498-2164', 'chanhy@icloud.com', '6mGq9Oo8ZY', 17, 'London', 'XDxMQaWmhL', '2001-01-23', 2, '群众', '工学博士');
INSERT INTO `studentinfo` VALUES (23, 'Tang Yuning', 'Tang Yuning', 616, '346', '男', '5194 591534', 'tanyunin64@outlook.com', 'KIVS6IhF6M', 13, 'Beijing', 'dH85Mhf1e2', '2009-02-09', 2, '共青团员', '工程管理硕士');
INSERT INTO `studentinfo` VALUES (24, 'Nakajima Hazuki', 'Nakajima Hazuki', 675, '320', '女', '20-534-9297', 'nahazuk@gmail.com', 'jl5vbCJYWp', 5, 'Birmingham', 'HlYStXCmPX', '2021-07-12', 3, '其他', '二学位');
INSERT INTO `studentinfo` VALUES (25, 'Lo Wai Lam', 'Lo Wai Lam', 360, '64', '女', '134-9302-0439', 'wllo@gmail.com', 'xVVLu7NbCQ', 4, 'Chengdu', 'a7b0p9QKoE', '2023-02-15', 2, '共青团员', '工程管理硕士');
INSERT INTO `studentinfo` VALUES (26, 'Pang Kwok Kuen', 'Pang Kwok Kuen', 45, '824', '女', '5315 398642', 'kwokkuenpa@outlook.com', 'gDGIiEfDby', 9, 'Akron', '4kzeqY5mkv', '2008-07-14', 2, '群众', '工程博士');
INSERT INTO `studentinfo` VALUES (27, 'Pang Sau Man', 'Pang Sau Man', 602, '665', '男', '312-715-2863', 'pangsm@outlook.com', '4Yg39AhQgu', 11, 'Tokyo', 'RcrjAxkXVl', '2013-05-04', 1, '群众', '工程博士');
INSERT INTO `studentinfo` VALUES (28, 'Elaine Garza', 'Elaine Garza', 23, '561', '女', '614-810-3242', 'garza1229@gmail.com', 'e1mGxhLfEe', 3, 'Guangzhou', '1zc4a6yEvx', '2003-06-19', 1, '群众', '专业硕士');
INSERT INTO `studentinfo` VALUES (29, 'Mak Wai Man', 'Mak Wai Man', 317, '3', '男', '760-865-3356', 'waimanmak@outlook.com', 'rkl0ZTGRB1', 15, 'Shanghai', 'rX7Wjvk5ki', '2015-09-27', 5, '共青团员', '工学博士');
INSERT INTO `studentinfo` VALUES (30, 'Tam Ming Sze', 'Tam Ming Sze', 732, '614', '男', '330-004-3364', 'tamingsze85@yahoo.com', 'JfRsXnX7ly', 18, 'Shenzhen', '7FTMMZxWod', '2011-08-02', 4, '共青团员', '专业硕士');
INSERT INTO `studentinfo` VALUES (31, 'Iwasaki Itsuki', 'Iwasaki Itsuki', 662, '442', '男', '330-152-7182', 'iwasaki97@mail.com', 'HGVeIVsZES', 17, 'Tokyo', 'BVqdWKvyIF', '2007-12-22', 1, '其他', '工程博士');
INSERT INTO `studentinfo` VALUES (32, 'Tang Anqi', 'Tang Anqi', 446, '120', '女', '(1223) 07 3304', 'taanqi@gmail.com', '7PKKemCLzw', 20, 'Los Angeles', 'tmobww3Yc1', '2006-08-18', 3, '群众', '工程博士');
INSERT INTO `studentinfo` VALUES (33, 'Eleanor Warren', 'Eleanor Warren', 128, '717', '女', '718-463-7784', 'eleanorwa@outlook.com', 'ouvr2rfS3H', 3, 'Nagoya', 'dN1BbQgSGe', '2011-01-29', 3, '共青团员', '二学位');
INSERT INTO `studentinfo` VALUES (34, 'Du Rui', 'Du Rui', 600, '193', '女', '838-375-1049', 'ruid@gmail.com', 'ZsOknHMffQ', 11, 'Beijing', 'PoPwcopRoS', '2021-10-16', 2, '中共党员（含预备党员）', '工程博士');
INSERT INTO `studentinfo` VALUES (35, 'Kwok Kwok Yin', 'Kwok Kwok Yin', 905, '961', '男', '138-0174-2605', 'kykwok@icloud.com', '3pb8XhmvaL', 16, 'New York', 'lYLdHFGM6y', '2011-09-26', 1, '共青团员', '专业硕士');
INSERT INTO `studentinfo` VALUES (36, 'Arimura Rena', 'Arimura Rena', 358, '76', '男', '330-957-6964', 'arrena02@icloud.com', 'XwSxbsObc5', 10, 'Liverpool', 'yEEh1tUy1R', '2021-06-14', 1, '其他', '工程博士');
INSERT INTO `studentinfo` VALUES (37, 'Kam On Na', 'Kam On Na', 497, '929', '男', '760-209-4826', 'onka@icloud.com', 'j7nbK4Imgb', 19, 'Leicester', '8SVWHJthj0', '2016-02-10', 1, '群众', '工程博士');
INSERT INTO `studentinfo` VALUES (38, 'Nakamori Hikaru', 'Nakamori Hikaru', 783, '228', '男', '183-8024-2667', 'nahikaru@outlook.com', '2FL6n3ZjSg', 12, 'Zhongshan', 'DbtL4MV08C', '2002-03-17', 3, '其他', '工学博士');
INSERT INTO `studentinfo` VALUES (39, 'Wu Anqi', 'Wu Anqi', 151, '374', '男', '312-962-5507', 'wuanqi@icloud.com', 'QjhOT3Lc9H', 7, 'Sapporo', 'qlqjzpkaPi', '2002-08-01', 4, '共青团员', '工程管理硕士');
INSERT INTO `studentinfo` VALUES (40, 'Michelle Patel', 'Michelle Patel', 883, '947', '女', '212-509-7265', 'patelmic2009@icloud.com', 'a99JM5Hqmk', 7, 'Albany', 'Emn9mtzmnK', '2009-08-02', 5, '其他', '工学博士');
INSERT INTO `studentinfo` VALUES (41, 'Matsuda Rin', 'Matsuda Rin', 266, '830', '女', '147-5578-8567', 'rinma7@gmail.com', 'ugnd0gnwhv', 19, 'Brooklyn', 'KebrhbN3Qn', '2018-02-04', 5, '其他', '工程管理硕士');
INSERT INTO `studentinfo` VALUES (42, 'Rita Black', 'Rita Black', 17, '136', '男', '66-840-3594', 'ritablack@gmail.com', 'aXfHX1PQkg', 17, 'Beijing', 'e2smcpolgE', '2013-06-23', 4, '其他', '工程管理硕士');
INSERT INTO `studentinfo` VALUES (43, 'Wu Yunxi', 'Wu Yunxi', 534, '476', '女', '212-322-1046', 'yunxiwu@mail.com', 'Z3aL4k1L57', 4, 'Brooklyn', '5caOwtNDwK', '2001-04-22', 2, '共青团员', '二学位');
INSERT INTO `studentinfo` VALUES (44, 'Choi Wing Sze', 'Choi Wing Sze', 694, '249', '女', '80-6179-8117', 'wsch5@mail.com', 'dvWMr7VGLt', 16, 'Brooklyn', 'IftEkyQNQq', '2013-10-24', 3, '其他', '二学位');
INSERT INTO `studentinfo` VALUES (45, 'Fu Ho Yin', 'Fu Ho Yin', 442, '662', '男', '147-8581-1048', 'hoyinfu@icloud.com', 'Co6GTuBf2h', 16, 'Chengdu', 'rLZjOK2vaY', '2003-09-10', 3, '群众', '工程博士');
INSERT INTO `studentinfo` VALUES (46, 'Nakagawa Hina', 'Nakagawa Hina', 138, '923', '女', '90-8677-4752', 'nahina7@outlook.com', '2QviXFPgFK', 22, 'Liverpool', 'lJFdZj9jCy', '2017-11-19', 5, '群众', '专业硕士');
INSERT INTO `studentinfo` VALUES (47, 'Che Hiu Tung', 'Che Hiu Tung', 30, '202', '女', '(121) 952 3403', 'hiuc622@outlook.com', '3UKFEMQ6hO', 6, 'Beijing', 'GmA01QI14Q', '2010-03-11', 5, '群众', '工程博士');
INSERT INTO `studentinfo` VALUES (48, 'Hayashi Yuna', 'Hayashi Yuna', 266, '666', '女', '70-4094-6217', 'yunahayas@outlook.com', '5G64gSVH8P', 19, 'London', 'Wzjfj3H7k2', '2001-09-25', 1, '共青团员', '二学位');
INSERT INTO `studentinfo` VALUES (49, 'Wong Lik Sun', 'Wong Lik Sun', 437, '131', '男', '74-156-0901', 'liksunwong06@outlook.com', 'xo8WvU9gos', 19, 'Cambridge', 'MTgEM9ld04', '2017-09-28', 2, '共青团员', '工程管理硕士');
INSERT INTO `studentinfo` VALUES (50, 'Cheng Anqi', 'Cheng Anqi', 940, '742', '男', '3-8834-4730', 'canqi@outlook.com', 'nuKR2HwF6B', 2, 'Osaka', 'Z1ju3XUaYT', '2002-07-19', 2, '其他', '工程博士');
INSERT INTO `studentinfo` VALUES (51, 'Siu Yun Fat', 'Siu Yun Fat', 467, '917', '女', '755-340-1372', 'yunfat2@gmail.com', 'tCohqGxkZH', 4, 'Oxford', 'IyHN8j12iR', '2002-03-26', 1, '其他', '工程管理硕士');
INSERT INTO `studentinfo` VALUES (52, 'Lok Chiu Wai', 'Lok Chiu Wai', 775, '340', '女', '176-0630-5349', 'lokcw1228@gmail.com', 'i91pJwrVBm', 17, 'Osaka', 'JXgYIT0B5D', '2012-07-12', 5, '中共党员（含预备党员）', '工程博士');
INSERT INTO `studentinfo` VALUES (53, 'Ikeda Kazuma', 'Ikeda Kazuma', 552, '498', '男', '7861 937738', 'kai@gmail.com', 'NY8WsVhPqy', 22, 'Los Angeles', 'DyuyhcecuS', '2014-04-28', 1, '共青团员', '二学位');
INSERT INTO `studentinfo` VALUES (54, 'So Wing Kuen', 'So Wing Kuen', 644, '92', '女', '7270 535088', 'wingkuenso322@outlook.com', 'Mp6AYgwPk6', 20, 'Los Angeles', 'uFnuZMZevC', '2019-11-05', 3, '共青团员', '工学博士');
INSERT INTO `studentinfo` VALUES (55, 'So Kar Yan', 'So Kar Yan', 976, '299', '男', '5002 498810', 'karyanso@mail.com', 'ou13uVM0nG', 9, 'Dongguan', 'ghlDEsvmOY', '2000-03-04', 1, '其他', '专业硕士');
INSERT INTO `studentinfo` VALUES (56, 'Chiba Momoe', 'Chiba Momoe', 918, '940', '女', '189-7399-0064', 'mc08@hotmail.com', 'gSKKdq6Icc', 9, 'Sapporo', 'WH5EBX6nhu', '2003-10-04', 3, '中共党员（含预备党员）', '工程博士');
INSERT INTO `studentinfo` VALUES (57, 'Lo Fu Shing', 'Lo Fu Shing', 683, '756', '女', '760-222-7706', 'lofushing@icloud.com', 'kXuMTaKOlr', 20, 'Nara', 'tgWAjA0EQ1', '2002-11-25', 4, '其他', '二学位');
INSERT INTO `studentinfo` VALUES (58, 'Zou Xiaoming', 'Zou Xiaoming', 878, '420', '男', '7939 412245', 'zoxia@mail.com', 'HB1xTzS5Ki', 18, 'Cambridge', 'IVrIchvfc2', '2021-10-08', 4, '中共党员（含预备党员）', '专业硕士');
INSERT INTO `studentinfo` VALUES (59, 'Kono Kazuma', 'Kono Kazuma', 379, '718', '女', '(1865) 52 2229', 'konokazuma@outlook.com', 'ZhNW7Sho8b', 22, 'Brooklyn', 'EGIniDFMnt', '2006-05-08', 4, '中共党员（含预备党员）', '专业硕士');
INSERT INTO `studentinfo` VALUES (60, 'Fang Jialun', 'Fang Jialun', 993, '60', '男', '5986 085231', 'fangj98@icloud.com', 'ecWLhE4SpF', 21, 'Columbus', '2rBS2zpgsM', '2010-08-17', 3, '中共党员（含预备党员）', '工程博士');
INSERT INTO `studentinfo` VALUES (61, 'Hu Zhennan', 'Hu Zhennan', 914, '210', '男', '7181 307522', 'hzhennan7@icloud.com', '7bzQfvGizi', 20, 'Liverpool', 'H3CCDoAudf', '2020-04-24', 1, '群众', '工程博士');
INSERT INTO `studentinfo` VALUES (62, 'Nakajima Itsuki', 'Nakajima Itsuki', 108, '542', '男', '5546 425047', 'nits1002@gmail.com', '0lAzoBE84o', 15, 'Los Angeles', 'iMhyG2AFkq', '2020-11-27', 4, '其他', '工程博士');
INSERT INTO `studentinfo` VALUES (63, 'Carolyn Bryant', 'Carolyn Bryant', 711, '24', '男', '169-3763-5939', 'bryantcarolyn@hotmail.com', 'xGrkEEeSaK', 7, 'Birmingham', 'gTx31G5Khr', '2016-05-27', 1, '其他', '工程博士');
INSERT INTO `studentinfo` VALUES (64, 'Yin Zhiyuan', 'Yin Zhiyuan', 101, '857', '女', '5689 036569', 'yzhiyu@yahoo.com', 'wfT6vXKlG8', 16, 'Cambridge', 'yHtLId1tn3', '2017-02-24', 2, '其他', '工程管理硕士');
INSERT INTO `studentinfo` VALUES (65, 'To Ka Man', 'To Ka Man', 620, '277', '女', '191-1315-6902', 'kmto8@outlook.com', 'HwO7FYs2j2', 4, 'London', '9pU71P7qdw', '2006-03-20', 1, '群众', '工学博士');
INSERT INTO `studentinfo` VALUES (66, 'Lei Zhennan', 'Lei Zhennan', 932, '238', '女', '330-178-0311', 'zhenle@icloud.com', 'HyxUAvJObG', 15, 'Leicester', 'IU65dw621w', '2001-09-14', 2, '中共党员（含预备党员）', '工学博士');
INSERT INTO `studentinfo` VALUES (67, 'Deng Jiehong', 'Deng Jiehong', 767, '698', '男', '718-847-0870', 'jieden1012@icloud.com', 'PXGXc3XCqu', 20, 'Nara', 'i92adSCXjY', '2017-04-17', 1, '其他', '工学博士');
INSERT INTO `studentinfo` VALUES (68, 'Yu Yunxi', 'Yu Yunxi', 890, '257', '男', '7941 958399', 'yunxiyu@outlook.com', 'q3BEEv0Eha', 2, 'Shenzhen', 'iJ0DVJ3lqZ', '2006-10-08', 2, '其他', '二学位');
INSERT INTO `studentinfo` VALUES (69, 'Heather Bennett', 'Heather Bennett', 969, '428', '女', '182-6148-0462', 'bennett1990@gmail.com', 'PTALuxTnYk', 5, 'Cambridge', 'VLkAe1YrSV', '2006-05-07', 3, '共青团员', '专业硕士');
INSERT INTO `studentinfo` VALUES (70, 'Sugawara Mitsuki', 'Sugawara Mitsuki', 273, '863', '男', '3-3516-7594', 'msugawara@outlook.com', 'T87kszPP4R', 11, 'Tokyo', 'Nk4s2NpxnI', '2009-02-22', 1, '群众', '工程博士');
INSERT INTO `studentinfo` VALUES (71, 'Murata Shino', 'Murata Shino', 542, '617', '女', '11-014-8382', 'shinomurata89@outlook.com', 'x79zVnC8Ik', 1, 'Manchester', 'ddpP1Q0j3G', '2018-01-30', 1, '中共党员（含预备党员）', '二学位');
INSERT INTO `studentinfo` VALUES (72, 'Ying Wing Kuen', 'Ying Wing Kuen', 510, '235', '女', '66-341-3654', 'yinwing220@outlook.com', 'pTDivhRlS7', 15, 'Liverpool', '07ITgr9nfF', '2022-04-16', 3, '其他', '二学位');
INSERT INTO `studentinfo` VALUES (73, 'Aoki Mitsuki', 'Aoki Mitsuki', 626, '540', '男', '330-089-9072', 'mitsuki1005@gmail.com', 'zOpyQFZ6Aa', 17, 'Shanghai', 'klwXx65KDT', '2004-05-23', 2, '其他', '专业硕士');
INSERT INTO `studentinfo` VALUES (74, 'Sakai Momoe', 'Sakai Momoe', 955, '442', '女', '838-267-5553', 'momoesakai1964@gmail.com', '14N684UYoz', 16, 'Tokyo', 'N3cVCLhvlP', '2019-06-02', 3, '中共党员（含预备党员）', '二学位');
INSERT INTO `studentinfo` VALUES (75, 'Mao Zhiyuan', 'Mao Zhiyuan', 751, '915', '男', '838-856-5199', 'maoz122@yahoo.com', '2ZZ2aOyXQT', 14, 'Los Angeles', 'FwI0QjO1d0', '2009-07-02', 5, '群众', '专业硕士');
INSERT INTO `studentinfo` VALUES (76, 'Yu Lan', 'Yu Lan', 349, '748', '男', '7352 683816', 'yu819@outlook.com', '67pgLfQAKL', 6, 'New York', 'Zp1FXjzN2A', '2017-05-11', 2, '中共党员（含预备党员）', '工程博士');
INSERT INTO `studentinfo` VALUES (77, 'Ti Chun Yu', 'Ti Chun Yu', 501, '453', '男', '90-9561-3298', 'tichunyu301@mail.com', 'ZPnaY4SM2O', 18, 'Liverpool', '7z2DaKuAcV', '2011-06-14', 3, '共青团员', '工学博士');
INSERT INTO `studentinfo` VALUES (78, 'Yamaguchi Itsuki', 'Yamaguchi Itsuki', 697, '518', '女', '212-696-7531', 'yamaguchiitsuki313@mail.com', 'AxNTzfVfGk', 6, 'Leicester', 'PWzSct5w40', '2007-08-08', 1, '中共党员（含预备党员）', '工学博士');
INSERT INTO `studentinfo` VALUES (79, 'Chen Lu', 'Chen Lu', 48, '634', '男', '213-082-2455', 'chlu9@icloud.com', 'd484G3duII', 8, 'Manchester', '9lJrVEm9PS', '2016-01-21', 1, '共青团员', '工程博士');
INSERT INTO `studentinfo` VALUES (80, 'Ng Ting Fung', 'Ng Ting Fung', 676, '334', '男', '(121) 881 6428', 'ngtingfung7@outlook.com', 'jL4rq8Lv7x', 21, 'Beijing', 'tZ63sZHI0h', '2019-04-03', 2, '共青团员', '二学位');
INSERT INTO `studentinfo` VALUES (81, 'Lui Chieh Lun', 'Lui Chieh Lun', 213, '298', '男', '154-1591-4268', 'lcl@gmail.com', 'KjiDrCL4SV', 3, 'Nagoya', 'iq3NwTyVhq', '2004-12-14', 3, '中共党员（含预备党员）', '工学博士');
INSERT INTO `studentinfo` VALUES (82, 'Uchida Rena', 'Uchida Rena', 812, '349', '男', '755-254-7618', 'rena1@hotmail.com', 'V8InFFwZEp', 11, 'Tokyo', 'ZoPsBVLNxN', '2012-09-01', 2, '共青团员', '工程管理硕士');
INSERT INTO `studentinfo` VALUES (83, 'Marvin Stevens', 'Marvin Stevens', 744, '947', '女', '52-645-4786', 'stevmarvin86@mail.com', 'ks6usVrPcR', 3, 'Birmingham', 'TpY1yfYdYa', '2001-04-05', 2, '群众', '工学博士');
INSERT INTO `studentinfo` VALUES (84, 'Liu Yunxi', 'Liu Yunxi', 887, '332', '女', '(151) 560 6046', 'yl604@gmail.com', 'tB5wUCzZPm', 12, 'Albany', 'hUoWHu46i5', '2022-06-19', 1, '中共党员（含预备党员）', '专业硕士');
INSERT INTO `studentinfo` VALUES (85, 'Sakamoto Yuna', 'Sakamoto Yuna', 487, '434', '男', '5136 212519', 'yunasak9@mail.com', 'vgM4hOn536', 8, 'Liverpool', '1wOECyGFfm', '2007-08-01', 4, '共青团员', '二学位');
INSERT INTO `studentinfo` VALUES (86, 'Lee Yu Ling', 'Lee Yu Ling', 698, '502', '女', '10-595-7555', 'leeyuling@yahoo.com', 'CW5YcFUKEe', 20, 'New York', '3bigK4YlsJ', '2012-05-28', 5, '共青团员', '工学博士');
INSERT INTO `studentinfo` VALUES (87, 'Kato Kasumi', 'Kato Kasumi', 632, '591', '女', '(116) 405 3186', 'kato1@gmail.com', 'UVLUB5nseZ', 22, 'Leicester', '7u1d81ipI2', '2006-11-16', 4, '共青团员', '工学博士');
INSERT INTO `studentinfo` VALUES (88, 'Marilyn Washington', 'Marilyn Washington', 156, '388', '男', '7595 151578', 'marilyn1944@icloud.com', 'IPweBf7UAk', 22, 'Birmingham', 'O3LcoE2J5q', '2010-08-11', 2, '共青团员', '工程管理硕士');
INSERT INTO `studentinfo` VALUES (89, 'Kwok Chiu Wai', 'Kwok Chiu Wai', 383, '456', '女', '614-254-3792', 'kwokchiuwai@icloud.com', 'AMKcC2E4Ne', 15, 'Cambridge', 'mYgLuPOEYy', '2021-04-02', 3, '中共党员（含预备党员）', '专业硕士');
INSERT INTO `studentinfo` VALUES (90, 'Gerald Wallace', 'Gerald Wallace', 96, '856', '男', '(161) 866 3894', 'gerald3@gmail.com', 'MZwykSBd3N', 12, 'Shenzhen', 'kjp5JHpz7U', '2003-05-31', 2, '群众', '二学位');
INSERT INTO `studentinfo` VALUES (91, 'Yu Zhennan', 'Yu Zhennan', 909, '769', '男', '755-337-3956', 'yuzhennan88@hotmail.com', 'JMCykwHphm', 13, 'London', 'PUjtZYfHD6', '2022-06-15', 2, '其他', '二学位');
INSERT INTO `studentinfo` VALUES (92, 'Noguchi Daisuke', 'Noguchi Daisuke', 80, '227', '男', '179-1747-4812', 'noguchidaisuke8@gmail.com', 'ymunnHHx3G', 6, 'Los Angeles', 'NFGGsg5iKg', '2020-10-15', 5, '共青团员', '工程管理硕士');
INSERT INTO `studentinfo` VALUES (93, 'Abe Akina', 'Abe Akina', 800, '626', '男', '5581 789219', 'abakina2@hotmail.com', 'hP9OVkdw2W', 11, 'Chengdu', '5DiIf7kzJZ', '2021-11-05', 2, '共青团员', '工程博士');
INSERT INTO `studentinfo` VALUES (94, 'Wan Suk Yee', 'Wan Suk Yee', 204, '279', '男', '769-0034-8303', 'wan6@outlook.com', 'dXn3Q86WZu', 14, 'Brooklyn', 'LPtsVaRkSU', '2000-11-14', 1, '中共党员（含预备党员）', '工程博士');
INSERT INTO `studentinfo` VALUES (95, 'Okamoto Kaito', 'Okamoto Kaito', 967, '677', '女', '74-288-9240', 'okamotokaito@outlook.com', 'KXTJP3NCuH', 10, 'Osaka', 'lZvz1IRMsf', '2000-02-19', 5, '中共党员（含预备党员）', '工程博士');
INSERT INTO `studentinfo` VALUES (96, 'Lam Ming Sze', 'Lam Ming Sze', 652, '157', '女', '718-949-9194', 'lammings705@icloud.com', 'jQiyjf4f1L', 12, 'Chengdu', 'Rt7l07la6c', '2020-02-23', 2, '其他', '工程博士');
INSERT INTO `studentinfo` VALUES (97, 'Matsumoto Shino', 'Matsumoto Shino', 843, '170', '女', '186-7483-3531', 'mshino422@yahoo.com', 'AnfmbB2uA8', 8, 'Shenzhen', 'jtyfUZIme4', '2020-05-28', 5, '群众', '工程管理硕士');
INSERT INTO `studentinfo` VALUES (98, 'Rosa Rice', 'Rosa Rice', 302, '701', '女', '718-741-9684', 'ricerosa@outlook.com', 'HUzqkpt3Gp', 11, 'Leicester', '7ofAzWsHJD', '2013-02-09', 3, '群众', '工学博士');
INSERT INTO `studentinfo` VALUES (99, 'Eddie Washington', 'Eddie Washington', 608, '469', '男', '213-052-4684', 'washingtoneddie1966@hotmail.com', 'DibmzSD6FE', 21, 'Tokyo', 'Lrt0uMDfLn', '2019-11-08', 4, '群众', '工程管理硕士');
INSERT INTO `studentinfo` VALUES (100, 'Kimberly Ramos', 'Kimberly Ramos', 703, '562', '女', '213-516-6770', 'kimram1951@icloud.com', 'PubGU5drfQ', 8, 'Brooklyn', '2Y0lw5V3tL', '2020-03-26', 3, '中共党员（含预备党员）', '工程博士');

-- ----------------------------
-- Table structure for stusummary
-- ----------------------------
DROP TABLE IF EXISTS `stusummary`;
CREATE TABLE `stusummary`  (
  `ID` int(0) NOT NULL,
  `studentID` int(0) NOT NULL,
  `content` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `year` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf16 COLLATE = utf16_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stusummary
-- ----------------------------
INSERT INTO `stusummary` VALUES (927, 367, 'ExbPmnEtYG', 'yrKjN1cmLX');
INSERT INTO `stusummary` VALUES (33, 945, 'WgF8B4WE4n', 'wOnY15qSST');
INSERT INTO `stusummary` VALUES (979, 918, 'EUkphcMdyY', 'NOriB0cKgF');
INSERT INTO `stusummary` VALUES (831, 919, '6AkFN9w2z3', 'kieRSxSvyj');
INSERT INTO `stusummary` VALUES (548, 605, 'MGBkut8z4i', 'KS896yv5k7');
INSERT INTO `stusummary` VALUES (173, 466, 'FbpgYrQ7Q5', 'Y6jMKU3KLM');
INSERT INTO `stusummary` VALUES (625, 125, 'DktPOdAVXq', 'oJWe9DbbNi');
INSERT INTO `stusummary` VALUES (573, 586, 'Mz7DfUphzn', '3EBby1cGWT');
INSERT INTO `stusummary` VALUES (942, 142, 'YeJBqmKnoa', 'pjrxIuulqq');
INSERT INTO `stusummary` VALUES (969, 576, 'eWR1AvJRUe', '8LRRH3ANIA');
INSERT INTO `stusummary` VALUES (583, 816, 'MJBWaDTMUb', 'Bs1FvfWjLG');
INSERT INTO `stusummary` VALUES (938, 747, 'Knb0pvctyL', 'LotLjIn4xL');
INSERT INTO `stusummary` VALUES (811, 784, 'QCmC6ajWHt', '4HpSGIipCg');
INSERT INTO `stusummary` VALUES (772, 688, 'cWRW8NSiOv', 'ZXs4DwK4SL');
INSERT INTO `stusummary` VALUES (542, 251, 'AkEjdD67IG', '9iuFTCZXlo');
INSERT INTO `stusummary` VALUES (74, 877, '4ScJymgjKC', '8d1ssTnPwS');
INSERT INTO `stusummary` VALUES (812, 638, '7qGGTKZQz6', 'Ctr4S5Mbld');
INSERT INTO `stusummary` VALUES (428, 282, 'g5vuOZWfzk', 'PPhQJbenQG');
INSERT INTO `stusummary` VALUES (738, 180, 'NZOXvoAAjy', 'YEW2eXz2ny');
INSERT INTO `stusummary` VALUES (519, 390, '1H0ZYRPqcP', 'dtBURBVQGj');
INSERT INTO `stusummary` VALUES (246, 229, 'T1wxIuxlIL', 'K5iqALsNij');
INSERT INTO `stusummary` VALUES (388, 996, 'U5DC5Om5IB', 'nAp7IPF3v2');
INSERT INTO `stusummary` VALUES (920, 658, 'OCz3GrEgrr', 'FIDYzAR3EE');
INSERT INTO `stusummary` VALUES (49, 882, 'ya8buDRCo4', 'K9cbSYsivA');
INSERT INTO `stusummary` VALUES (871, 919, 'R6jMTAU6UA', 'LVMb6zP7L1');
INSERT INTO `stusummary` VALUES (722, 483, 'z0BbIAShws', '96x079k3aS');
INSERT INTO `stusummary` VALUES (929, 706, 'MQ20AQ4ODZ', 'mOCFGGZdZF');
INSERT INTO `stusummary` VALUES (172, 132, 'abvICAMKLU', '1xuii5tI6T');
INSERT INTO `stusummary` VALUES (367, 64, 'iVXn9CrKsc', 'tM493nYcaC');
INSERT INTO `stusummary` VALUES (199, 15, 'eX5aWr0JQu', '6dFMGkn86i');
INSERT INTO `stusummary` VALUES (629, 928, 'brPBCpxWUj', 'g91UBb2JWG');
INSERT INTO `stusummary` VALUES (8, 653, 'etBED4jAqt', 'RY0NttJAPk');
INSERT INTO `stusummary` VALUES (899, 774, 'lnk1Jg3Pxo', 'nClbRsEVDX');
INSERT INTO `stusummary` VALUES (575, 763, 'Idon1XDlsR', '9DRtL11YQs');
INSERT INTO `stusummary` VALUES (619, 52, '8GKwdxcXFR', 'E6yGijmqJh');
INSERT INTO `stusummary` VALUES (472, 946, 'xDeXMAfUc7', 'EzlgtoKA9c');
INSERT INTO `stusummary` VALUES (413, 129, 'dlDM2D2dvU', '7avNQz9UY2');
INSERT INTO `stusummary` VALUES (191, 35, 'p2juiZSxGa', 'LHSvBsYNRr');
INSERT INTO `stusummary` VALUES (843, 5, 'kaA9u8HejQ', 'wf5vMlgbIG');
INSERT INTO `stusummary` VALUES (91, 475, 'hDQDgYA9Op', 'boVVIEDRoj');
INSERT INTO `stusummary` VALUES (148, 759, 'MWm2TQGwVz', 'asgLruz4H3');
INSERT INTO `stusummary` VALUES (816, 812, 'M22yKdw8fB', 'EYnMzfKBjk');
INSERT INTO `stusummary` VALUES (576, 772, 'BLlVyb9Ssp', 'yHyUKSw2GN');
INSERT INTO `stusummary` VALUES (73, 885, 'iZYqaolW5S', 'KErzQ9fJxB');
INSERT INTO `stusummary` VALUES (80, 56, '7R6S7uejGv', 'PTbYR3USvD');
INSERT INTO `stusummary` VALUES (53, 546, 'TNhZjWaFCl', 'jRYHPVygrD');
INSERT INTO `stusummary` VALUES (632, 442, 'i3cuaxhKvb', 'GGPeQ0IRuG');
INSERT INTO `stusummary` VALUES (418, 39, 'cB6W3CVkCS', '3XIb2tGRKh');
INSERT INTO `stusummary` VALUES (78, 478, 'byXtHX1UL9', 'o58Q1GntE5');
INSERT INTO `stusummary` VALUES (582, 11, 'ynWP6ZWoes', 'JvZ9wsT4JW');
INSERT INTO `stusummary` VALUES (786, 536, 'hrXRkwX8wD', 'f14erUT0B3');
INSERT INTO `stusummary` VALUES (120, 19, 'cBphgz7epb', 'UfCin76QPk');
INSERT INTO `stusummary` VALUES (720, 582, 'PeQYKS9llW', 'JPyjOQdLmM');
INSERT INTO `stusummary` VALUES (890, 484, '8OPAFi7r6k', 'W523IRWzHo');
INSERT INTO `stusummary` VALUES (871, 69, 'IZVgc69BVg', 'oV2upyOLbv');
INSERT INTO `stusummary` VALUES (744, 891, '209FnJvH3G', 'mbTdJkK6FK');
INSERT INTO `stusummary` VALUES (682, 687, '7CDfjjtrfU', 'ugO3h1JfSn');
INSERT INTO `stusummary` VALUES (949, 182, 'HedqkT755y', 'HKcF2vskwU');
INSERT INTO `stusummary` VALUES (875, 430, 'SWx3ij67yY', 'uUNnUgr6kD');
INSERT INTO `stusummary` VALUES (281, 253, 'QrlOJgQw37', 'SC55nyqus8');
INSERT INTO `stusummary` VALUES (768, 372, 'ZmWZydSwz9', 'e6DZ7fmNcX');
INSERT INTO `stusummary` VALUES (435, 747, 'EZq28jNyK8', 'tNfOx8Ux9I');
INSERT INTO `stusummary` VALUES (690, 353, 'olroAKVUx4', 'TaEFFACLcN');
INSERT INTO `stusummary` VALUES (40, 966, 'Wu9NhmbOnW', 'jNjDI5AzD5');
INSERT INTO `stusummary` VALUES (164, 415, 'fqh2ETbmnc', 'dAxAGllK5R');
INSERT INTO `stusummary` VALUES (391, 669, 'zBuOqrj8Ll', 'wIasQirSts');
INSERT INTO `stusummary` VALUES (547, 380, 'Ks68h7ACcM', '4PSydt1WqS');
INSERT INTO `stusummary` VALUES (308, 960, 'SSDvCQroXB', 'kEhPFnkZmB');
INSERT INTO `stusummary` VALUES (814, 51, 'JmNWBLEMmV', 'h0rJSWAbfs');
INSERT INTO `stusummary` VALUES (421, 699, 'SRADxTmr5u', 'teZzu5UBLo');
INSERT INTO `stusummary` VALUES (390, 272, 'Kwssv2Oj5u', 'UPVKeO10Si');
INSERT INTO `stusummary` VALUES (475, 912, 's7ApENPFLL', 'o2FAKWdPuk');
INSERT INTO `stusummary` VALUES (366, 610, 'lcHE9Y3h5R', 'TW6BOxHeds');
INSERT INTO `stusummary` VALUES (909, 142, 'mMHZ05ugoT', 'uyr1Djqe9i');
INSERT INTO `stusummary` VALUES (296, 336, 'VOTgP9b9Zi', 'WZmnCTra0H');
INSERT INTO `stusummary` VALUES (512, 785, 'f0LdFlrFDP', '1EKKZ7haBn');
INSERT INTO `stusummary` VALUES (642, 79, 'stXqMU2zr8', 'qa8HJfk2vq');
INSERT INTO `stusummary` VALUES (297, 287, 'xLjNbGOCB9', 'iBzdWIZNcu');
INSERT INTO `stusummary` VALUES (710, 163, '9DOwTgcV9T', 'NFG3Us0zof');
INSERT INTO `stusummary` VALUES (782, 877, '3lbXtROyeY', 'vk5iieUXYC');
INSERT INTO `stusummary` VALUES (279, 2, 'fPUCbWIt1B', 'ywqc6rFXIZ');
INSERT INTO `stusummary` VALUES (568, 150, 'S9eHm5MDnM', 'XgJbfCxkFN');
INSERT INTO `stusummary` VALUES (444, 914, 'pOZrzhsDfw', 'sn7JsBK6qQ');
INSERT INTO `stusummary` VALUES (388, 150, 'kJAcBngoXe', 'a8hI9IgpwT');
INSERT INTO `stusummary` VALUES (192, 548, '6vdKxtCowu', 'VlWvvxtGZB');
INSERT INTO `stusummary` VALUES (272, 562, 'V59nxcx8R4', '6Vyo2VZrGT');
INSERT INTO `stusummary` VALUES (454, 675, 'B72seO7bH1', '62kW8MOTAE');
INSERT INTO `stusummary` VALUES (932, 817, 'e6UUbT8cQe', 'biJXTa3JyA');
INSERT INTO `stusummary` VALUES (94, 808, 'Jg1lIqx2ji', 'QZu2UtAr4n');
INSERT INTO `stusummary` VALUES (1000, 743, 'EM7qBRNy0G', 'mYI0ik8fQk');
INSERT INTO `stusummary` VALUES (576, 568, 'XBCVz8kbfD', 'prCfxmhKaC');
INSERT INTO `stusummary` VALUES (104, 928, 'pjIKvVr232', 'cNOZlHwUNy');
INSERT INTO `stusummary` VALUES (96, 39, 'H9eWRKFNlI', 'BOZnzws2Kd');
INSERT INTO `stusummary` VALUES (942, 769, 'kXrPtZzYvd', '6ci3pNCFvc');
INSERT INTO `stusummary` VALUES (191, 888, '1kXpxChyfq', 'uutIutGQGk');
INSERT INTO `stusummary` VALUES (594, 226, 'qiYK8C8NWc', 'zUmqTQOQIV');
INSERT INTO `stusummary` VALUES (348, 443, 'jZIVbwoEq1', '0zJRP2oE77');
INSERT INTO `stusummary` VALUES (909, 477, 'bn7Gfq7RWF', 'Lph6062cxJ');
INSERT INTO `stusummary` VALUES (941, 524, 'WIRropfkFL', 'mkaTn0ydye');
INSERT INTO `stusummary` VALUES (397, 75, 'GLtuD3eLic', 'NvPptOAqJy');
INSERT INTO `stusummary` VALUES (477, 476, 'DH9fjDHGXY', '2iCrNHTVmd');
INSERT INTO `stusummary` VALUES (629, 491, 'OtIHfdaQ6y', '855EFb0e2X');
INSERT INTO `stusummary` VALUES (555, 675, '0Ckdztc5mX', 'IXMZgDUec4');
INSERT INTO `stusummary` VALUES (200, 719, 'tverbV4VrA', 'PbESUslVmX');
INSERT INTO `stusummary` VALUES (877, 108, '46Pxlfg9rb', 'X2WQBctkUd');
INSERT INTO `stusummary` VALUES (214, 908, '4bAsnEujS1', 'XxTqYJHlnw');
INSERT INTO `stusummary` VALUES (826, 629, 'jd66SrnfFy', 'sFIJTRFjwO');
INSERT INTO `stusummary` VALUES (226, 571, '2WkIIGeg3z', 'lDCNnYIBMO');
INSERT INTO `stusummary` VALUES (526, 776, 'JdH6LhZMlh', 'RTuGL8kTKG');
INSERT INTO `stusummary` VALUES (529, 147, 'XWD0SrGIb2', 'iATyx6aoiB');
INSERT INTO `stusummary` VALUES (117, 138, 'stq2DqdhIH', 'mILdtZvibW');
INSERT INTO `stusummary` VALUES (244, 77, 'HKd3wzTHlh', 'OD2AyiOkn1');
INSERT INTO `stusummary` VALUES (337, 753, 'pxtwshUVor', 'MeUvN6YthW');
INSERT INTO `stusummary` VALUES (595, 867, 'WGFjuPANZP', 'Ug5OzJlY5c');
INSERT INTO `stusummary` VALUES (67, 792, 'O07nb0tAO1', '5lf825oSX4');
INSERT INTO `stusummary` VALUES (339, 968, 'FvmAu0duQI', 'VJoRKgj0AK');
INSERT INTO `stusummary` VALUES (85, 604, 'cH2YzXlLSB', 'z8ejRHFE6i');
INSERT INTO `stusummary` VALUES (99, 465, 'FFdbk9KKGV', 'd2rlrwsVUN');
INSERT INTO `stusummary` VALUES (852, 866, '8D4OVuwpbN', 'rdsp5XJafO');
INSERT INTO `stusummary` VALUES (416, 178, '27fduRI0wR', 'CjgjOSmeVC');
INSERT INTO `stusummary` VALUES (449, 334, 'tVXKuEqONz', 'FFZiDQyJdC');
INSERT INTO `stusummary` VALUES (126, 230, 'OtX7UzLakA', 'ehu139ZsHG');
INSERT INTO `stusummary` VALUES (697, 90, 'f9tN6LRcuq', 'wEsu8xQGuV');
INSERT INTO `stusummary` VALUES (95, 125, '0pDE1oSuff', 'yvpeyCBzBS');
INSERT INTO `stusummary` VALUES (292, 140, 'JcAP6zfv7V', 'rV9sFaxOOz');
INSERT INTO `stusummary` VALUES (283, 706, 'olmJPcONGw', 'RGTcUnMW1q');
INSERT INTO `stusummary` VALUES (90, 175, 'bCl7Hy9R35', 'fCz0uSALxz');
INSERT INTO `stusummary` VALUES (367, 276, 'LhLZ8vq2qr', 'G1PgwsJSUV');
INSERT INTO `stusummary` VALUES (381, 293, '2WOl8lUa1d', 'nfycRI4XRy');
INSERT INTO `stusummary` VALUES (986, 29, 'ZEljI46UJX', 'sDwNvm22FA');
INSERT INTO `stusummary` VALUES (767, 594, 'dwBq7CdwCb', 's0ocG0Hzgf');
INSERT INTO `stusummary` VALUES (449, 22, 'pSVYXKorbH', 'YI6N2vHWQS');
INSERT INTO `stusummary` VALUES (414, 659, '5dkCu8gDGh', '74pmjrQxgA');
INSERT INTO `stusummary` VALUES (979, 915, 'EiMT5cdu24', 'WKrhlrtLGK');
INSERT INTO `stusummary` VALUES (665, 6, 'SmIzRTZmXP', '3Kn0lYdZI7');
INSERT INTO `stusummary` VALUES (137, 69, 'r5kL6aNbUA', 'xH2In970gz');
INSERT INTO `stusummary` VALUES (395, 213, '1DMOvcrkyu', 'cGgyZkJ1jg');
INSERT INTO `stusummary` VALUES (671, 371, 'ZcKWpQJPy9', '9QU5oxFsRZ');
INSERT INTO `stusummary` VALUES (225, 192, 'U7ASGNH3po', 'PtkoqnjFaw');
INSERT INTO `stusummary` VALUES (373, 930, 'rXfbeY59GM', 'au0mB6X9xG');
INSERT INTO `stusummary` VALUES (52, 306, 'IO3A6BvjSk', 'OJSgm8ekuZ');
INSERT INTO `stusummary` VALUES (367, 589, 'hQcGTB8CWE', 'FHL8a0NNgc');
INSERT INTO `stusummary` VALUES (61, 248, 'e44wk2nU7X', 'B7ZLBGiiFZ');
INSERT INTO `stusummary` VALUES (741, 59, '9tT8KLbnHq', 'nhT6vL5N5P');
INSERT INTO `stusummary` VALUES (61, 637, 'N91JrQOLFz', 'Iy1VsL2WLE');
INSERT INTO `stusummary` VALUES (269, 33, 'PheTpWemFw', 'ZYl0rmyrq7');
INSERT INTO `stusummary` VALUES (156, 254, 'Mm56dVurRh', 'EeWXweo1os');
INSERT INTO `stusummary` VALUES (382, 126, 'R52VuJgkBM', 'O1r3Om4I0j');
INSERT INTO `stusummary` VALUES (562, 938, 'YPg3d6QYRN', 'XZkNf7lwqN');
INSERT INTO `stusummary` VALUES (619, 850, 'M1pMQ4DLLC', '8h79HzmHok');
INSERT INTO `stusummary` VALUES (728, 536, 'd4WA5p6da0', 'Fr2NxZ7lNQ');
INSERT INTO `stusummary` VALUES (817, 302, 'xHoeYLuIMm', 'HknycM8lAr');
INSERT INTO `stusummary` VALUES (602, 506, 'l5HFX2UALT', 'lhB2UArP94');
INSERT INTO `stusummary` VALUES (940, 66, 'Ud7M6aT7LT', 'dl22nQe5Cu');
INSERT INTO `stusummary` VALUES (190, 928, 'NytejDq6un', 'HRlnHFyKeP');
INSERT INTO `stusummary` VALUES (648, 897, 'v6JaiWoAfI', 'MJNRTnFHtQ');
INSERT INTO `stusummary` VALUES (279, 501, 'wk29yD2PVr', 'DKmRI5vxlY');
INSERT INTO `stusummary` VALUES (172, 856, 'drhfmCoGna', 'VXYEyvpmd2');
INSERT INTO `stusummary` VALUES (190, 26, 'YFecFMu1Mv', '9Xov1ULNZ1');
INSERT INTO `stusummary` VALUES (714, 382, 'qXCdyWaDf5', '5GnFSn7YiI');
INSERT INTO `stusummary` VALUES (677, 924, 'nJl62qrVxq', '6Z0lHkWyeu');
INSERT INTO `stusummary` VALUES (67, 689, 'n3QJZoICAB', 'EQow2Z2fON');
INSERT INTO `stusummary` VALUES (504, 317, 'Yuombk55pH', 'clJi9vE6zt');
INSERT INTO `stusummary` VALUES (427, 921, 'TDMFB53lPk', '3juxEAYDAK');
INSERT INTO `stusummary` VALUES (954, 35, 'x9mdBARf0e', 'AesLJblX5g');
INSERT INTO `stusummary` VALUES (608, 454, 'rtO53JCACz', 'FMze2CGadT');
INSERT INTO `stusummary` VALUES (569, 779, 'kVrMSa9UK3', 'oyxVWkkSDe');
INSERT INTO `stusummary` VALUES (389, 457, 'tm2P9G0zck', 'EYCksgPf8i');
INSERT INTO `stusummary` VALUES (370, 552, 'pMTHreRaZf', 'ACejcHfrEb');
INSERT INTO `stusummary` VALUES (511, 992, 'wp4pGaTdIu', 'te434tm4IO');
INSERT INTO `stusummary` VALUES (396, 966, 'iUHdbnn0CY', '33nJxKHyIR');
INSERT INTO `stusummary` VALUES (911, 69, 'QhAxD7TKTl', 'JEnk8INZQM');
INSERT INTO `stusummary` VALUES (427, 552, 'e5zfBaUjJ6', 'xaSGQgbX0H');
INSERT INTO `stusummary` VALUES (143, 882, 'FlnVYrC93A', 't82xj9w6RW');
INSERT INTO `stusummary` VALUES (228, 184, 'AE9hHVQNNH', 'nzKJ7ZviOe');
INSERT INTO `stusummary` VALUES (626, 869, 'KB9Pv9bUtV', 'hVGkbOwi3e');
INSERT INTO `stusummary` VALUES (115, 60, '3Gzwym3VlI', 'SPhiOOLYSK');
INSERT INTO `stusummary` VALUES (687, 920, 'psWZBtraCU', 'zUMTTxanS6');
INSERT INTO `stusummary` VALUES (699, 676, 'EVn5lZEepz', 'W0hfqgPLDs');
INSERT INTO `stusummary` VALUES (393, 366, 'wnjujrjWXu', 'YYo8kAnosU');
INSERT INTO `stusummary` VALUES (115, 118, 'akdMSUFc7L', 'hxNDpWDHl3');
INSERT INTO `stusummary` VALUES (210, 665, 'wTNf7mBuJg', '9KPyaiL31J');
INSERT INTO `stusummary` VALUES (184, 56, 'VrdydmKHNv', 'w8GcNSoQCv');
INSERT INTO `stusummary` VALUES (122, 680, 'oDvhqyg3Ro', 'EGGfwTH9Vf');
INSERT INTO `stusummary` VALUES (744, 284, 'v98OeEPqjT', 'SV5DGDbSU8');
INSERT INTO `stusummary` VALUES (74, 506, 'XPqUOOiWWF', 'NURoyi9fdd');
INSERT INTO `stusummary` VALUES (984, 870, 'W4E5aAKjcO', 'w3PcfHiUit');
INSERT INTO `stusummary` VALUES (330, 737, 'lpo8UeZCjb', '1kyqFiuXiY');
INSERT INTO `stusummary` VALUES (430, 23, 'DbTtbuEVT3', 'QCthvQwjIb');
INSERT INTO `stusummary` VALUES (943, 933, 'GwmzjtHz8b', 'IqqsXhZdoZ');
INSERT INTO `stusummary` VALUES (379, 327, 'HxjAGmVjLF', 'LbsH1IPt6S');
INSERT INTO `stusummary` VALUES (359, 213, 'PjcR8C5FF0', 'uxWACfXPXJ');
INSERT INTO `stusummary` VALUES (922, 548, '3jisJXGklq', 'aR6601fxlJ');
INSERT INTO `stusummary` VALUES (970, 60, '3BxqOkTION', '8xnRXZ4Dw9');
INSERT INTO `stusummary` VALUES (745, 811, '7FWt6W6ZHk', 'mqyCJ8kqi7');
INSERT INTO `stusummary` VALUES (860, 341, 'dA4NZ5KAU9', 'wHVjSUYBJC');
INSERT INTO `stusummary` VALUES (395, 64, 'MTDZEvNnyz', 'zzkmFGCnoq');
INSERT INTO `stusummary` VALUES (665, 156, 'oFKC2WjVBO', 'rzY1QYb64v');
INSERT INTO `stusummary` VALUES (445, 893, 'JJdbzk9WOj', 'bXHQee40aF');
INSERT INTO `stusummary` VALUES (554, 945, 'G4q5MQQC9t', 'eMeopUExxq');
INSERT INTO `stusummary` VALUES (473, 221, 'f7J37kcUZR', 'fzVBP42j56');
INSERT INTO `stusummary` VALUES (629, 298, 'DbEp66BCeJ', 'xSf81yZ3Sh');
INSERT INTO `stusummary` VALUES (898, 535, 'PK4y6ALIg2', '1ISJDuRdNX');
INSERT INTO `stusummary` VALUES (490, 166, 'NluIWePZHt', 'ihDBdnZlkE');
INSERT INTO `stusummary` VALUES (565, 974, 'pomncQQdd4', 'LbgxyygLxS');
INSERT INTO `stusummary` VALUES (917, 480, '8Ym88Wxxja', 'yDsxS4oUIt');
INSERT INTO `stusummary` VALUES (679, 927, 'klTK3czDNc', '94yk8ZcazK');
INSERT INTO `stusummary` VALUES (686, 11, 'tgLemFfZoa', 'IOgtD3KL4t');
INSERT INTO `stusummary` VALUES (280, 165, 'xaomcdelEU', 'Kc9k8AuRv9');
INSERT INTO `stusummary` VALUES (171, 871, 'edE7n3IaeQ', 'OZyE9kDLyV');
INSERT INTO `stusummary` VALUES (894, 855, 'FzTN6cdOdJ', 'RMIs1Otmc1');
INSERT INTO `stusummary` VALUES (641, 677, '8acqEh8L9T', 'mRTm86x8Su');
INSERT INTO `stusummary` VALUES (208, 988, 'He7nTD3F4u', 'CqzbYOroGm');
INSERT INTO `stusummary` VALUES (639, 289, 'yBCHqJQGf0', 'YuqJUgs9eU');
INSERT INTO `stusummary` VALUES (888, 374, 'eT89AdqFeO', 'kg4gNXjv1c');
INSERT INTO `stusummary` VALUES (821, 554, '01dZ0CElDq', 'j7utox2YDF');
INSERT INTO `stusummary` VALUES (993, 557, 'MhboUAG8KV', 'rO9HtBUpxo');
INSERT INTO `stusummary` VALUES (819, 276, 'YnZsHbTqTN', '9AUyytUkOo');
INSERT INTO `stusummary` VALUES (743, 48, 'jxRz7RI1uV', '9HiztXt6dd');
INSERT INTO `stusummary` VALUES (417, 590, '0IOXWaYNoW', 'WNsTxpXzp6');
INSERT INTO `stusummary` VALUES (6, 98, 'gBOjqXZOQN', 'SzGFeiUZGm');
INSERT INTO `stusummary` VALUES (499, 647, 'WplwF1ly0B', 'l8JYnh20m2');
INSERT INTO `stusummary` VALUES (494, 926, 'x8HCBCSYPW', 'L9Mw5dJIKj');
INSERT INTO `stusummary` VALUES (247, 93, 'drwmQdU1Vv', 'm3RIaGteNC');
INSERT INTO `stusummary` VALUES (275, 822, 'PE6mR31RJF', 'abIVNVcE6J');
INSERT INTO `stusummary` VALUES (29, 123, '44YkvBWOdN', 'Sbr8uTgWG6');
INSERT INTO `stusummary` VALUES (618, 501, 'ujcrnLZOnd', 'XdKusEdNED');
INSERT INTO `stusummary` VALUES (980, 172, 'TONw6wUN9n', 'vzJWWFXjdq');
INSERT INTO `stusummary` VALUES (895, 769, 'aYVip3l1pu', 'gcNIWJBpPI');
INSERT INTO `stusummary` VALUES (972, 403, 'Rq7zrQQ8ch', 'XL5mu0Zx5E');
INSERT INTO `stusummary` VALUES (175, 969, 'bFBPKlG5xx', 'luvw1fOjVk');
INSERT INTO `stusummary` VALUES (586, 660, 'PDSqMRkA5Y', 's7Nsv5OSCR');
INSERT INTO `stusummary` VALUES (52, 256, 'bxVUgGewga', 'WmIg25IOZR');
INSERT INTO `stusummary` VALUES (319, 474, 'JfIH6YHTqr', 'L0y8FK4JoT');
INSERT INTO `stusummary` VALUES (545, 127, 'KWVfU3hoaU', 'siwBUKJoio');
INSERT INTO `stusummary` VALUES (84, 660, 'U5UEjWzleN', 'Kx3vxdwU7V');
INSERT INTO `stusummary` VALUES (357, 466, 'dDGqMmwusy', 'R0rMi6HsTJ');
INSERT INTO `stusummary` VALUES (121, 529, '8Ia8kK06pW', '9424DsEjyP');
INSERT INTO `stusummary` VALUES (423, 486, 'g9803LdblT', 'wMEe0vrqSL');
INSERT INTO `stusummary` VALUES (362, 138, 'eE2akzWZqI', 'x1pLxlMGCw');
INSERT INTO `stusummary` VALUES (674, 769, '2DYznJL5a8', 'KgodrCA2tN');
INSERT INTO `stusummary` VALUES (74, 483, 'W3BxIluaL3', 'rMSCXIM9AU');
INSERT INTO `stusummary` VALUES (122, 74, 'tx7hcv1tmX', 'eSFtm9u7zX');
INSERT INTO `stusummary` VALUES (474, 782, '71y0vg56f0', 'n5vlc7NLSp');
INSERT INTO `stusummary` VALUES (767, 534, 'UYJVyZBOna', 'T8bqjYCVLN');
INSERT INTO `stusummary` VALUES (862, 974, '17XKMoBT4c', 'gZw0YDbRF3');
INSERT INTO `stusummary` VALUES (939, 193, 'PLy0o3LMkC', 'ah0t7tme73');
INSERT INTO `stusummary` VALUES (973, 607, 'dnZ5aWiXs8', 'kSjaR39MjZ');
INSERT INTO `stusummary` VALUES (781, 194, 'p9cwvzfjTN', 'viRRdJjlFK');
INSERT INTO `stusummary` VALUES (356, 891, 'Aq4yKkY60A', '1GLJB6ROSa');
INSERT INTO `stusummary` VALUES (803, 793, 'zakIfzUr98', 'ys2zcuONNi');
INSERT INTO `stusummary` VALUES (888, 372, 'h07Z8P1NMZ', 'TkLQuOxr31');
INSERT INTO `stusummary` VALUES (505, 120, 'E0VjlUa6Z9', 'nKDCIsJAtI');
INSERT INTO `stusummary` VALUES (589, 613, 'tYdY0hTN2H', 'up7mVGsmwY');
INSERT INTO `stusummary` VALUES (660, 200, 'yylID2JP3L', 'XzRyCMc4q5');
INSERT INTO `stusummary` VALUES (332, 322, 'EfyR4AY2a0', 'MDHZUQJu2U');
INSERT INTO `stusummary` VALUES (610, 491, 'AAXSskQGTV', 'xt8rLCAkmM');
INSERT INTO `stusummary` VALUES (375, 605, 'aWP6lOxLS7', 'j0OdHXCDKC');
INSERT INTO `stusummary` VALUES (915, 285, 'WMRgbZBKdI', 'RL20L5mDZ3');
INSERT INTO `stusummary` VALUES (336, 518, 'WGntCKl0cM', '7yeMB6k0A3');
INSERT INTO `stusummary` VALUES (883, 851, 'Wx7q1ozpdo', 'Wdjhfa9Cd6');
INSERT INTO `stusummary` VALUES (27, 773, 'SfTMMLR5Pr', 'FZ4KRMUZU3');
INSERT INTO `stusummary` VALUES (833, 619, 'Av8qqHtOfQ', 'XwzJUDxPos');
INSERT INTO `stusummary` VALUES (55, 937, 'usm7LFsY1L', 'q8lcvBfo4a');
INSERT INTO `stusummary` VALUES (521, 26, '49SMysPB7a', '4UnR7V3SKH');
INSERT INTO `stusummary` VALUES (485, 527, 'aBTJapinII', 'ucoh8Ie0YK');
INSERT INTO `stusummary` VALUES (258, 190, '06yuS6Q5NK', 'HOJCw5ekrS');
INSERT INTO `stusummary` VALUES (499, 81, '19Rvh7DHLC', 'oe5fqS2TVX');
INSERT INTO `stusummary` VALUES (870, 169, 'dFcy8zNAvY', '5PAadJWa2s');
INSERT INTO `stusummary` VALUES (570, 838, 'nvTPITQ9Sr', 'ol5a8AaOIJ');
INSERT INTO `stusummary` VALUES (103, 345, '4K7cLuN3Qa', '2GHtfvoVhv');
INSERT INTO `stusummary` VALUES (164, 365, 'VeTFPho8wG', 'DAhOvdzQgu');
INSERT INTO `stusummary` VALUES (295, 505, 'xSsnW1Oa0Y', '86S95VmFLX');
INSERT INTO `stusummary` VALUES (971, 244, 'oJJ8aUAxeu', 'u42thYEVs9');
INSERT INTO `stusummary` VALUES (38, 242, 'FQc4M8dqQM', 'OcFzhJsBBL');
INSERT INTO `stusummary` VALUES (30, 966, 'fe6ZHzWSIk', 'sLOwwAbFMY');
INSERT INTO `stusummary` VALUES (739, 327, 'dWAIrs7H2J', 'dGMkiRo0lP');
INSERT INTO `stusummary` VALUES (595, 816, 'TjlKUA9DL5', 'QLYQR87tnK');
INSERT INTO `stusummary` VALUES (819, 792, 'SIllC1EYQI', 'N5ZGq44SCt');
INSERT INTO `stusummary` VALUES (44, 528, 'Y4h7YpoJir', '2Rf2PkQMF0');
INSERT INTO `stusummary` VALUES (30, 967, 'JexphWPTGo', 'eMjWL9Ml5e');
INSERT INTO `stusummary` VALUES (169, 357, 'iA80GDQFVS', 'DR3LP57c9U');
INSERT INTO `stusummary` VALUES (46, 4, 'gZCsBj2ljk', 'oPdTzLGkMK');
INSERT INTO `stusummary` VALUES (134, 701, '36BalY0kKs', '5xewiqkb7e');
INSERT INTO `stusummary` VALUES (495, 503, 'Xa2cndlQdq', 'zs7yCyeBc0');
INSERT INTO `stusummary` VALUES (561, 128, 'uC2ULJTyue', '1ZqCpNQEtl');
INSERT INTO `stusummary` VALUES (169, 964, 'cc29GVaJfc', 'jmaVZIcP82');
INSERT INTO `stusummary` VALUES (632, 660, 'ekdKUNIzMz', 'pMVi6DnUV5');
INSERT INTO `stusummary` VALUES (909, 831, 'Yb9zMpqUVo', 'HxkWTOCpSV');
INSERT INTO `stusummary` VALUES (583, 934, 'n9X3q7VCtm', 'xBiMDnXqah');
INSERT INTO `stusummary` VALUES (713, 755, 'PxbLk7nyc5', 'gQV6chIdGu');
INSERT INTO `stusummary` VALUES (185, 99, 'AqqitThs0N', 'woFwAidrjE');
INSERT INTO `stusummary` VALUES (419, 343, 'VnZDgpH8lD', 'lcU3pp95I4');
INSERT INTO `stusummary` VALUES (311, 738, 'OlFEEno3JX', '4wpwtrK0mX');
INSERT INTO `stusummary` VALUES (24, 201, '4g0YUDmTwr', 'S2GRhblAPW');
INSERT INTO `stusummary` VALUES (853, 743, 'RD8U5orEIK', 'qu3JZ3T9u2');
INSERT INTO `stusummary` VALUES (161, 326, 'XcwHSXJMjY', '8wVn0gxkug');
INSERT INTO `stusummary` VALUES (293, 975, 'kNIcS862M0', 'GFnxjw5lEq');
INSERT INTO `stusummary` VALUES (381, 744, 'VmIG0osPrU', 'FmEAonI0Dm');
INSERT INTO `stusummary` VALUES (266, 857, '4NEXOUAAWv', 'Tyx9AJwxaV');
INSERT INTO `stusummary` VALUES (790, 116, '3l6Wsv6owY', 'XHJF6WoULw');
INSERT INTO `stusummary` VALUES (31, 415, 'WmGdw1SNP3', 'GrHoVInWOF');
INSERT INTO `stusummary` VALUES (785, 861, 'V8uYfYEaUR', 'XmeIQcPntY');
INSERT INTO `stusummary` VALUES (843, 243, 'bBBifHQks5', 'b0cHI7Ki37');
INSERT INTO `stusummary` VALUES (912, 141, 'HmbIlJwaP8', 'QNHVTlQ8br');
INSERT INTO `stusummary` VALUES (804, 678, 'reIJf4WwK1', 'e5Z0y4xkSy');
INSERT INTO `stusummary` VALUES (472, 243, 'GYd7h6dodx', 'NjWh389fgB');
INSERT INTO `stusummary` VALUES (279, 335, 'dSVerv40BI', 'FTJ5ap82xS');
INSERT INTO `stusummary` VALUES (617, 27, 'bbZtqlTEZj', '6c81K18mIt');
INSERT INTO `stusummary` VALUES (516, 765, '3wVLfzfFC0', '2ezb3FA0Yn');
INSERT INTO `stusummary` VALUES (719, 140, 'RmvWESLIvi', 'iiZOjCeOhx');
INSERT INTO `stusummary` VALUES (98, 488, '5bAIJxfzpy', 'RvH7Fg0Xoa');
INSERT INTO `stusummary` VALUES (583, 48, '6OXZFITk9r', 'rRXDdWQUWl');
INSERT INTO `stusummary` VALUES (330, 473, 'HC2z8VfjEH', 'ryQhqLhkyx');
INSERT INTO `stusummary` VALUES (986, 888, 'b0eSmic3A0', 'GZxFEu3258');
INSERT INTO `stusummary` VALUES (126, 760, '6Kf7jTeimC', 'gv4RLZtnFG');
INSERT INTO `stusummary` VALUES (442, 734, 'UnyuIz6OSo', 'EKBmfYAgoL');
INSERT INTO `stusummary` VALUES (362, 233, 'e2Dxul59Ke', 'c2VEIO2OqD');
INSERT INTO `stusummary` VALUES (893, 639, 'FdPGMIbRzw', 'hlv7vdsMbl');
INSERT INTO `stusummary` VALUES (340, 84, 'g4ppX83i8E', '29zIdT4UEc');
INSERT INTO `stusummary` VALUES (920, 654, 'VE7gNHwjRs', 'wdb4ByTDZ5');
INSERT INTO `stusummary` VALUES (327, 349, 'i5kNd76QkZ', 'KtLnrt8SD1');
INSERT INTO `stusummary` VALUES (778, 199, 'UQnU7BFEV7', 'xRn3WXhuwb');
INSERT INTO `stusummary` VALUES (541, 638, 'u9jhIPyl7X', 'POC76anyJt');
INSERT INTO `stusummary` VALUES (247, 913, 'q3jiiyULb6', 'sAEcDhNaOo');
INSERT INTO `stusummary` VALUES (501, 97, 'nafOtnp6K3', 'qY3UkwrgVa');
INSERT INTO `stusummary` VALUES (713, 949, 'DOXeaNr1Zq', 'TV3PeMbtG9');
INSERT INTO `stusummary` VALUES (620, 980, 'VX9fdgkg8m', 'EiLauAMeGV');
INSERT INTO `stusummary` VALUES (796, 963, '5gV5hM0GBv', '4QFcCbton3');
INSERT INTO `stusummary` VALUES (824, 646, 'tJ7Ri8p1nt', 'MCxkghkdzB');
INSERT INTO `stusummary` VALUES (172, 438, 'gh2JNp3JQH', 'tglndNCZjr');
INSERT INTO `stusummary` VALUES (356, 446, 'yAUngBBZxj', 'yief2GFYzI');
INSERT INTO `stusummary` VALUES (956, 242, 'K1DPiPgwpe', '1Di2hwbMnk');
INSERT INTO `stusummary` VALUES (805, 341, '5ixxUx2wLJ', 'ZQQWbxt2EW');
INSERT INTO `stusummary` VALUES (704, 647, 'DQ2DZhlmJG', '2tsuwDlUim');
INSERT INTO `stusummary` VALUES (976, 66, 'SyWNiHZRtP', 'ihBmBVppWg');
INSERT INTO `stusummary` VALUES (682, 276, 'HtApBU8t3C', 'uxJTgSMRwl');
INSERT INTO `stusummary` VALUES (719, 97, 'oQOr2vGHe9', 'gHb3Kj7Qw4');
INSERT INTO `stusummary` VALUES (965, 698, 'j8jGMUCIHo', 'JtKSZvBoWt');
INSERT INTO `stusummary` VALUES (701, 685, 'dLPMtPmnFD', 'KzMFhCVCgY');
INSERT INTO `stusummary` VALUES (701, 471, 'd1zYZ0jWNM', 'Q9PL8F9jMB');
INSERT INTO `stusummary` VALUES (810, 343, 'JbpKrvS9fx', '3shVqQwlsg');
INSERT INTO `stusummary` VALUES (866, 956, 'rkTS5G7P6x', 'KeE0fOJnmc');
INSERT INTO `stusummary` VALUES (159, 667, 'UBoAja0vjW', 'CqApz9pMHA');
INSERT INTO `stusummary` VALUES (656, 129, 'UztGsi89VY', 'fPGUsHqRwe');
INSERT INTO `stusummary` VALUES (442, 725, 'UxiznQcnYo', 'ze0J16pWSk');
INSERT INTO `stusummary` VALUES (435, 346, 'DmAxic4P5z', 'EX3XOFvXef');
INSERT INTO `stusummary` VALUES (146, 235, 'rxYYzxIWlM', 'hHjkxAbyq0');
INSERT INTO `stusummary` VALUES (557, 501, '506lroRV8J', 'B3q8Ptd3IH');
INSERT INTO `stusummary` VALUES (95, 954, 'LpK4xV98dd', 'jSrsQTATQx');
INSERT INTO `stusummary` VALUES (213, 631, 'Q0dwDzUb0N', 'cieVuh5sEL');
INSERT INTO `stusummary` VALUES (770, 142, 'jv7VT31UBN', 'dFa6TAp3ko');
INSERT INTO `stusummary` VALUES (77, 253, 'EwGp95Fg4r', 'oBHccAK2Re');
INSERT INTO `stusummary` VALUES (212, 2, 'zVZ0EZt5wF', 'zhRF4ZfZHD');
INSERT INTO `stusummary` VALUES (220, 69, 'sr53EdA1cr', '86B85993YD');
INSERT INTO `stusummary` VALUES (83, 958, 'YmRGvzCQCy', '7DpIFhdZqI');
INSERT INTO `stusummary` VALUES (713, 527, '2lKimUzW2x', '2Ihb6T8Muy');
INSERT INTO `stusummary` VALUES (668, 408, 'A0jMTQz26O', 'tdoh11N8nT');
INSERT INTO `stusummary` VALUES (221, 345, '9yXAqBJMgY', 'htNI5fo5Xx');
INSERT INTO `stusummary` VALUES (531, 625, '2zCJiV3MPv', 'c4TjcqOj3s');
INSERT INTO `stusummary` VALUES (501, 418, 'lSf1gdvxIc', 'G8XP4ZMzlQ');
INSERT INTO `stusummary` VALUES (14, 384, 'q89MB5IuqW', 'FKxhqBwTmO');
INSERT INTO `stusummary` VALUES (608, 174, 'GYqaTCA1th', '8kbcH1mfpM');
INSERT INTO `stusummary` VALUES (210, 971, 'JO6Bizdlrg', 'dlQEWIBETN');
INSERT INTO `stusummary` VALUES (433, 794, 'd75mJ2tjnQ', 'UYssOhCPS9');
INSERT INTO `stusummary` VALUES (152, 868, 'Fl902eLyrV', 'nBZJwDV6Fx');
INSERT INTO `stusummary` VALUES (311, 11, 'PnYhiu2ova', '5BLYzdXdnK');
INSERT INTO `stusummary` VALUES (766, 672, 'cPH6dLyRSj', 'LhytwRGW9Z');
INSERT INTO `stusummary` VALUES (896, 982, 'tUVLyaj8Lx', '41tI1QwlwR');
INSERT INTO `stusummary` VALUES (25, 304, 'F7Zv3XhGEJ', 'm5IfKuWIQU');
INSERT INTO `stusummary` VALUES (953, 499, 'rSWjzVDTbT', '7WbXIdDx9N');
INSERT INTO `stusummary` VALUES (341, 26, 'vlZ419Sa9l', 'QKf63aEf8h');
INSERT INTO `stusummary` VALUES (44, 338, 'di1HFcNv0S', 'Fg9nWKcGwe');
INSERT INTO `stusummary` VALUES (123, 860, 'rHSeD11MJT', 'X0cJyzmrV2');
INSERT INTO `stusummary` VALUES (21, 947, 'KiBPXt2clf', 'Wfp9XF8lij');
INSERT INTO `stusummary` VALUES (208, 150, 'PUT3tGX08q', 'W2hkndIa0U');
INSERT INTO `stusummary` VALUES (33, 911, 'kt5P4uhv2E', 'Mo14Fr0IDJ');
INSERT INTO `stusummary` VALUES (767, 778, 'rrDhgLlStU', '9SSWHJswh7');
INSERT INTO `stusummary` VALUES (332, 966, 'j4i6yPb56a', 'dumbmL8Nyv');
INSERT INTO `stusummary` VALUES (833, 530, '0UTppMPal8', 'LkSZFVvMKw');
INSERT INTO `stusummary` VALUES (531, 219, 'vQrtYrM9IK', 'AUlu9gQGQH');
INSERT INTO `stusummary` VALUES (567, 250, 'cbqaFfusGN', '8DUARWtmQx');
INSERT INTO `stusummary` VALUES (723, 989, '3RHdRY68bs', 'kyYrwS8RnP');
INSERT INTO `stusummary` VALUES (18, 534, 'pXV5ZBQMCB', 'CCzeSR379b');
INSERT INTO `stusummary` VALUES (844, 45, 'TnwiaO94AJ', 'Vr81fVnPSy');
INSERT INTO `stusummary` VALUES (650, 187, 'xsomy6Wpyu', 'jtX4EudQbg');
INSERT INTO `stusummary` VALUES (441, 138, 'gNQWpxNG0J', 'MR6IEkHS7O');
INSERT INTO `stusummary` VALUES (960, 852, 'kvHmPNUIwG', 'Z5yVrq5nzZ');
INSERT INTO `stusummary` VALUES (654, 143, 'CoKB0RqTSy', 'smjoKyPKnD');
INSERT INTO `stusummary` VALUES (858, 63, 'QdRedOzYw1', 'nNfUlBxmwd');
INSERT INTO `stusummary` VALUES (332, 439, 'KdpwN5HR24', 'ASF95RETJC');
INSERT INTO `stusummary` VALUES (862, 524, 'ACkaRExFV3', 'bWc4Lz9kft');
INSERT INTO `stusummary` VALUES (493, 897, 'Mwha8fuLev', '2EdmXTYVID');
INSERT INTO `stusummary` VALUES (124, 630, 'NZLLldJILA', 'pfDEMVSCVC');
INSERT INTO `stusummary` VALUES (681, 677, 'fhgWFbrJqh', 'FqyRJBu8qD');
INSERT INTO `stusummary` VALUES (359, 813, 'kiR500MZ6F', 'kRHJN1op9m');
INSERT INTO `stusummary` VALUES (652, 193, 'cSIkzE1ct4', 'nMHCpQdBo2');
INSERT INTO `stusummary` VALUES (96, 41, 'tSQoSFCul5', 'XcoBTXsiGk');
INSERT INTO `stusummary` VALUES (974, 383, 'fpxd8Ajo1L', 'K1h1k4SYKY');
INSERT INTO `stusummary` VALUES (731, 154, 'fZaWB5Q2S6', 'zmHSFsWjxD');
INSERT INTO `stusummary` VALUES (216, 750, 'F8r23Nutwp', 'l0ceTUQRSY');
INSERT INTO `stusummary` VALUES (704, 162, 'h4GB7gDFgH', 'QzQPx4G5sQ');
INSERT INTO `stusummary` VALUES (903, 477, 'AH7gBfhxUg', 'rmBQNULZEd');
INSERT INTO `stusummary` VALUES (184, 471, 'bA2PxlDK8Y', 'HW23grGKIN');
INSERT INTO `stusummary` VALUES (447, 487, 'pq6RDy1xHh', 'QQmFwi3tmw');
INSERT INTO `stusummary` VALUES (236, 757, 'LXRiylrEF2', '99koOo7Pqb');
INSERT INTO `stusummary` VALUES (978, 756, '1wzBeQ4Y8u', 'hPgNWhT9Ps');
INSERT INTO `stusummary` VALUES (116, 24, '03xbQsoDiZ', 'AvofsNpd6J');
INSERT INTO `stusummary` VALUES (906, 234, 'I0hwGZlL9o', 'lBDu0adAhn');
INSERT INTO `stusummary` VALUES (10, 848, 'aTkPeG6hbd', 'PcClGaZvDE');
INSERT INTO `stusummary` VALUES (985, 828, 'xOGchSZdLo', 'pWFtO0DHAb');
INSERT INTO `stusummary` VALUES (157, 372, 'F8tA72NtoP', '9HMaiZeriK');
INSERT INTO `stusummary` VALUES (979, 117, 'uBm2tzvwhW', '09okkwkpvi');
INSERT INTO `stusummary` VALUES (337, 382, 'pWjKXH8L7i', 'xIY8oLrGSr');
INSERT INTO `stusummary` VALUES (650, 954, 'ofjmRbgT4a', 'ec3rg7XScV');
INSERT INTO `stusummary` VALUES (958, 576, 'fSjvEw6NVz', '8Wp5ljvAuP');
INSERT INTO `stusummary` VALUES (160, 708, 'omFOudHKt2', 'Cxcv5Xbt8L');
INSERT INTO `stusummary` VALUES (131, 63, 'Tj73t8EjsY', 'zfmL4J2HRG');
INSERT INTO `stusummary` VALUES (493, 849, 'CRuq7U9gIn', 'tupdQUEBTr');
INSERT INTO `stusummary` VALUES (298, 658, 'Deru1k6YM3', 'ledDBwVW2O');
INSERT INTO `stusummary` VALUES (816, 665, 'FpC29U1DQa', 'KrKiEosepc');
INSERT INTO `stusummary` VALUES (598, 235, '5NBUgl0zDi', 'Pb2Og59csj');
INSERT INTO `stusummary` VALUES (704, 72, 'WWu0ZwJqAk', '11UWB9BmJV');
INSERT INTO `stusummary` VALUES (852, 231, 'TWoyF22WeF', 'qH9vYIxOtl');
INSERT INTO `stusummary` VALUES (373, 38, 'HDJNyOop5s', 'wdGc8s16yA');
INSERT INTO `stusummary` VALUES (517, 707, '1t6JqsFj4L', 'xtUYZUqLEb');
INSERT INTO `stusummary` VALUES (144, 443, 'Ft7HNHL1Li', 'bSN3YQwSmP');
INSERT INTO `stusummary` VALUES (846, 461, 'fxaJ1KlTyY', 'lWXxAcl62I');
INSERT INTO `stusummary` VALUES (237, 88, 'Mam3ASMMKM', 'TkFHb7hbKB');
INSERT INTO `stusummary` VALUES (776, 643, 'bgBOYaness', 'J20dgJqcik');
INSERT INTO `stusummary` VALUES (153, 688, 'vFg33NOZNt', 'SHGKJzUPPv');
INSERT INTO `stusummary` VALUES (240, 854, 'upZX6DgGEN', 'hzKNw8PsWU');
INSERT INTO `stusummary` VALUES (48, 584, 'WrQkDzVNtF', 'tcooo88nLT');
INSERT INTO `stusummary` VALUES (43, 971, '1sjHM3L1LB', 'XNugIgK3bS');
INSERT INTO `stusummary` VALUES (321, 489, 'OXjvnUZBMb', 'BsAHHqBVot');
INSERT INTO `stusummary` VALUES (745, 455, 'inHcuFsJB2', 'wXAJI4o4F7');
INSERT INTO `stusummary` VALUES (895, 192, '44FAKsr2go', 'whITHPJJuV');
INSERT INTO `stusummary` VALUES (726, 863, 'Ljjg0HCB5j', 'QGmhq0NQzv');
INSERT INTO `stusummary` VALUES (362, 718, 'qKLU5BH7dw', 'FF8F5Gtn6K');
INSERT INTO `stusummary` VALUES (403, 51, 'WLD6FKIL1L', '5YPcjqgLSg');
INSERT INTO `stusummary` VALUES (942, 973, 'Ad12ozdj1L', 'gmsarqVZKZ');
INSERT INTO `stusummary` VALUES (199, 489, '9qLIXlCAEH', 'MBhbRHZIdz');
INSERT INTO `stusummary` VALUES (13, 891, '13TV7KvdOH', 'lKRXsp5Foe');
INSERT INTO `stusummary` VALUES (198, 648, 'UcYMJtZ6Dw', 'yenPZWmIjy');
INSERT INTO `stusummary` VALUES (983, 842, 'HHXHs5oRIN', 'CSVu9I1xET');
INSERT INTO `stusummary` VALUES (66, 651, 'halOHpYljD', 'IjqO7tjSt8');
INSERT INTO `stusummary` VALUES (966, 956, 'E6sqYJcHXM', 'X5K6UiGd3j');
INSERT INTO `stusummary` VALUES (578, 823, '4jv3dF80kh', '6b0DmjzSqd');
INSERT INTO `stusummary` VALUES (450, 947, 'fOZfCxroP6', 'MPyAn5kPXN');
INSERT INTO `stusummary` VALUES (778, 172, 'AvzQ8fuErK', 'JcQ6a0A8Ck');
INSERT INTO `stusummary` VALUES (68, 145, 'PHdU9tH6w2', '8kv8i879s7');
INSERT INTO `stusummary` VALUES (338, 874, 'ChEo1QAtKD', 'JyM2JyeLGk');
INSERT INTO `stusummary` VALUES (884, 912, 'I7WOdlrzTN', '04X9Xmlx2u');
INSERT INTO `stusummary` VALUES (888, 110, 'VuEnZQAv3m', '3fIOFdujVb');
INSERT INTO `stusummary` VALUES (49, 298, '3xWYauC5Ih', 'osZcmrZeDi');
INSERT INTO `stusummary` VALUES (287, 13, 'wWzUmVH87g', 'T2hcXet5Ax');
INSERT INTO `stusummary` VALUES (883, 873, 'a9jwnLyIsU', 'NclMdTe7jP');
INSERT INTO `stusummary` VALUES (520, 417, 'j7IsRYUNHH', '39IPrQRIow');
INSERT INTO `stusummary` VALUES (638, 906, 'TRdDR1kdAo', '7XeMExDXOo');
INSERT INTO `stusummary` VALUES (8, 700, 'aycdqM9VBw', '0nqkqLqHEk');
INSERT INTO `stusummary` VALUES (175, 856, '54xwhJmr1v', 'E1ZLItfrht');
INSERT INTO `stusummary` VALUES (955, 194, 'adwIetaKIU', 'PrGCAo6N1v');
INSERT INTO `stusummary` VALUES (127, 474, '2yq1AAGA1q', '2fetmV76hy');
INSERT INTO `stusummary` VALUES (136, 617, 'LmEkqutBIW', 'oyfNDa641q');
INSERT INTO `stusummary` VALUES (919, 435, 'FvW9RZPlO5', 'ZRKMPglLKB');
INSERT INTO `stusummary` VALUES (654, 606, 'waZObNOwZy', 'NPQ2wgeYUk');
INSERT INTO `stusummary` VALUES (641, 37, 'EAazJEeK6k', 'itCXysyZaO');
INSERT INTO `stusummary` VALUES (534, 445, 'Ke0VOEJehB', 'uapR1lYXZ5');
INSERT INTO `stusummary` VALUES (243, 265, 'vw1wxzos5E', 'CQQaVBsR7h');
INSERT INTO `stusummary` VALUES (927, 645, 'WLyJYl3q2r', 'F8RYk4qe9n');
INSERT INTO `stusummary` VALUES (481, 874, 'ISMi3h2fbY', 'CDEU83OXlj');
INSERT INTO `stusummary` VALUES (25, 387, 'zOQFcg2rRn', 'PexxkRCiJ9');
INSERT INTO `stusummary` VALUES (381, 634, 'r6YzcNlWey', 'KZic5RdYFh');
INSERT INTO `stusummary` VALUES (252, 550, 'Weggj1dGXV', 'uJGKnt1GmK');
INSERT INTO `stusummary` VALUES (147, 571, 'Q1Xl2iLCvu', 'ZovREmUIwX');
INSERT INTO `stusummary` VALUES (714, 476, 'lrXQgO4GAO', 'LwC4T0p8wd');
INSERT INTO `stusummary` VALUES (655, 224, 'aZ5nj8iX1E', '03JvlQK08Y');
INSERT INTO `stusummary` VALUES (254, 847, 'TZl5aFiNoN', 'oHVxNkv0zh');
INSERT INTO `stusummary` VALUES (185, 256, 'XOtCSEA6bY', 'nu3sC3aTsY');
INSERT INTO `stusummary` VALUES (354, 21, 'hcgjd18UZt', 'DVpjyHZEyQ');
INSERT INTO `stusummary` VALUES (509, 699, 'oBFLhqP0AS', 'RWRRlPmIrQ');
INSERT INTO `stusummary` VALUES (114, 31, 'SuEDJIquGD', 'bmlTiMorQg');
INSERT INTO `stusummary` VALUES (185, 88, 'JcKRpXsOMV', 'WyZgk9FI4I');
INSERT INTO `stusummary` VALUES (136, 256, 'ACAXdkhcbd', 'vivjjJ6l9Y');
INSERT INTO `stusummary` VALUES (666, 733, '2qxXEQysCH', 'ITXwfOl3Aj');
INSERT INTO `stusummary` VALUES (865, 804, 'RMdW34RE4N', 'oYNp8Wf2jV');
INSERT INTO `stusummary` VALUES (675, 520, 'rotMegLiyV', '8WmbUVMp9o');
INSERT INTO `stusummary` VALUES (183, 617, 'E9Qy1hV8hJ', 'TP0nqK6BKp');
INSERT INTO `stusummary` VALUES (196, 972, 'ou1B0KHtcP', '0XpwbAI4mK');
INSERT INTO `stusummary` VALUES (339, 263, 'QMeZBeIm8t', 'FSbGx7WjKf');
INSERT INTO `stusummary` VALUES (69, 494, 'XGxgyOL4M5', 'hS1DZdk8ph');
INSERT INTO `stusummary` VALUES (270, 778, '35vSmmRfza', 'bfzxhzQJr8');
INSERT INTO `stusummary` VALUES (131, 805, 'SuygFoGYZW', '4EoZ2U6Juu');
INSERT INTO `stusummary` VALUES (385, 804, 'SI5S8r7WpC', 'lMJqms1S8O');
INSERT INTO `stusummary` VALUES (974, 781, 'qJKU8HbHnU', 'm5VHDj67uP');
INSERT INTO `stusummary` VALUES (511, 825, 'dHRFUjTSTx', 'x7zVqodAjr');
INSERT INTO `stusummary` VALUES (519, 837, '7ALEfhedFK', 'KUwq93pAEG');
INSERT INTO `stusummary` VALUES (979, 573, 'KSW8KkIiIJ', 'PDbEWwO7Do');
INSERT INTO `stusummary` VALUES (560, 469, 'uMpgATS8zX', 'aaO17ouNR9');
INSERT INTO `stusummary` VALUES (14, 644, 'Amm5FFoQLN', 'Hcz1YYAkrD');
INSERT INTO `stusummary` VALUES (127, 615, 'HZlZirMzmM', 'Zcnwnc2HDR');
INSERT INTO `stusummary` VALUES (930, 112, 'qKVxn8PxS5', 'UPXlz6xHca');
INSERT INTO `stusummary` VALUES (841, 897, '3xwuVDa9ro', 'Z8MJ55StAn');
INSERT INTO `stusummary` VALUES (377, 515, 'D2O04lDFnk', 'gVbmMRi53z');
INSERT INTO `stusummary` VALUES (5, 166, '1GpKK87psB', 'kbtMGxvGxA');
INSERT INTO `stusummary` VALUES (652, 756, 'Bg22kKD3a5', 's6zC3WliKg');
INSERT INTO `stusummary` VALUES (248, 51, 'FZqFtGGq0H', 'qzBy9On9Cl');
INSERT INTO `stusummary` VALUES (654, 150, 'KlhLqmO0JX', 'QQyfkGgsHR');
INSERT INTO `stusummary` VALUES (941, 301, 'FCxLdk9qCl', '94AfxtqtAn');
INSERT INTO `stusummary` VALUES (279, 710, 'G833eILN1n', 'HFB0p1t3Je');
INSERT INTO `stusummary` VALUES (852, 793, 'gcKtDScBcM', 'z5PJV4GmbB');
INSERT INTO `stusummary` VALUES (872, 207, 'AKu7Kj9hgb', 'vsrrRjE1h2');
INSERT INTO `stusummary` VALUES (911, 560, 'bESvMWYQYs', 'B5h9flMv4w');
INSERT INTO `stusummary` VALUES (706, 723, '0i0XMGEABt', 'HOi2pMdtlw');
INSERT INTO `stusummary` VALUES (375, 725, 'XvdePjUnj2', 'f7BUG4o1h0');
INSERT INTO `stusummary` VALUES (823, 80, '9LZFmKVo2m', 'gRyjKQpTIZ');
INSERT INTO `stusummary` VALUES (632, 556, '8afzBmaiAj', 'Tdrg4PEP7J');
INSERT INTO `stusummary` VALUES (729, 600, 'lYVizgneiI', '8nOPxrM83G');
INSERT INTO `stusummary` VALUES (367, 405, '7GIq0ICeuv', 'Kh6dBOsMsc');
INSERT INTO `stusummary` VALUES (167, 835, '4ek46NQYla', 'IbiY651X6r');
INSERT INTO `stusummary` VALUES (23, 554, 'CIMOh4vGlw', 'sSiqDtT6ua');
INSERT INTO `stusummary` VALUES (546, 504, '5vTsrVfcjX', 'Irdw9IZIJF');
INSERT INTO `stusummary` VALUES (993, 279, 'cRi2oNeLEA', 'RbixTq4P0a');
INSERT INTO `stusummary` VALUES (141, 930, 'Aq3AQKkWQa', 'aLUohuydxZ');
INSERT INTO `stusummary` VALUES (614, 977, 'E1PxgmUvzJ', 'P8osx12U2p');
INSERT INTO `stusummary` VALUES (732, 969, 'GdEm1N8gDa', 'nEZ0gdF07P');
INSERT INTO `stusummary` VALUES (30, 393, 'lpVwYrbf4Y', '1IGCBJtiJP');
INSERT INTO `stusummary` VALUES (569, 363, 's23NZUc1No', 'AVuBtsxs3U');
INSERT INTO `stusummary` VALUES (462, 160, 'pCj1SOK3GX', 'rdb7VcNkOG');
INSERT INTO `stusummary` VALUES (885, 706, '7ZtEyFwRHm', '4WbybD7mr6');
INSERT INTO `stusummary` VALUES (697, 967, 'OEnhDmuSSV', 'gH0vrtb6iD');
INSERT INTO `stusummary` VALUES (946, 456, 'laeWoe7ca8', 'qjGy40cnbE');
INSERT INTO `stusummary` VALUES (561, 634, 'skLUVlRgPn', 'TLOGdPkjHg');
INSERT INTO `stusummary` VALUES (805, 798, 'pf1VhnzkxG', 'HT3PyFXC4q');
INSERT INTO `stusummary` VALUES (357, 210, 'U6bcufOINy', '49nxboS7KE');
INSERT INTO `stusummary` VALUES (614, 56, 'CiTG3lID4i', 'Nn56LQLyj5');
INSERT INTO `stusummary` VALUES (733, 442, '3z3m27wxEm', 'crp48ypZyn');
INSERT INTO `stusummary` VALUES (271, 934, 'D1siv6eSq5', 'CmrNDqvjiB');
INSERT INTO `stusummary` VALUES (471, 147, 'Rh3oENLMC1', '1LuZX9MaBj');
INSERT INTO `stusummary` VALUES (342, 735, 'U3hDz737Zs', 'flfPjvzqJd');
INSERT INTO `stusummary` VALUES (659, 144, 'udxrD7F3ha', 'Q0Xxle89ID');
INSERT INTO `stusummary` VALUES (319, 228, 'OUo0cvRM6X', 'KLwcSXgSmx');
INSERT INTO `stusummary` VALUES (161, 943, '4j3WtmOOI4', 'EO95FeXBm9');
INSERT INTO `stusummary` VALUES (184, 723, 'Q1OT28vGJo', 'LdHZCbNodg');
INSERT INTO `stusummary` VALUES (388, 366, '9FNMJVXqVl', 'S3NqZw7ctZ');
INSERT INTO `stusummary` VALUES (768, 67, '4vVRdrOVbS', 'dD9Ghu0g0T');
INSERT INTO `stusummary` VALUES (429, 116, 'HxOKSCPYbW', 'v2BgUXD0lJ');
INSERT INTO `stusummary` VALUES (895, 250, 'lDHJeMDAYm', 'ck8oyecYmw');
INSERT INTO `stusummary` VALUES (114, 636, 'e0Iy07M3xX', 'gDtwxsPyof');
INSERT INTO `stusummary` VALUES (960, 770, 'y3oE3Of5RV', 'ZTjOQqsdjE');
INSERT INTO `stusummary` VALUES (455, 916, 'maX95NRZdQ', 'Cl2gPWY1Tl');
INSERT INTO `stusummary` VALUES (220, 954, 'pGdyJvsR9a', 'YcmKHmFbF6');
INSERT INTO `stusummary` VALUES (416, 770, 'Zteatr0n48', 'ss0ubFdDZO');
INSERT INTO `stusummary` VALUES (483, 344, '16NnfqfYEn', 'kxhLqpmt0w');
INSERT INTO `stusummary` VALUES (683, 345, 'OmL1AZXYpN', 'PqW2EAzyjZ');
INSERT INTO `stusummary` VALUES (526, 550, 'YxGBoS0WjN', '1hLsiqTLwP');
INSERT INTO `stusummary` VALUES (291, 252, 'XwLptsxC3d', 'zaS5cil6K2');
INSERT INTO `stusummary` VALUES (166, 25, 'D15je1VaaZ', 'GrgGVBh9CJ');
INSERT INTO `stusummary` VALUES (816, 202, 'ikSdp1EWMD', 'K8Q9wbkpPx');
INSERT INTO `stusummary` VALUES (127, 787, '9UrQnpxJMx', 'bukiRrtGBm');
INSERT INTO `stusummary` VALUES (62, 278, 'UZ1mgnb5sZ', 'rUKdkHqG4P');
INSERT INTO `stusummary` VALUES (720, 998, '8J16aEqSeT', 'WkFBlPJNwi');
INSERT INTO `stusummary` VALUES (831, 55, 'aZon49lnV3', 'qLe66oKdGG');
INSERT INTO `stusummary` VALUES (379, 730, 'd4Ab3Hmf8B', 'HvOZyiaClu');
INSERT INTO `stusummary` VALUES (194, 550, 'tjPRt3k23M', 'vGmySPhfl1');
INSERT INTO `stusummary` VALUES (723, 846, 'euPBtbDJsf', 'lqXh5rfsyB');
INSERT INTO `stusummary` VALUES (645, 162, 'SaBXXa04JV', 'HpP7IRRJU6');
INSERT INTO `stusummary` VALUES (284, 816, 'CScF7v6XAg', 'Vby8Xq8kao');
INSERT INTO `stusummary` VALUES (902, 945, 'OWDsV8zGqf', 'GhbLneOJUB');
INSERT INTO `stusummary` VALUES (124, 1, '37z1Vh1VDo', 'DN9GvzGsQJ');
INSERT INTO `stusummary` VALUES (676, 467, 'P8hb3x907h', 'ouSRUhzVm9');
INSERT INTO `stusummary` VALUES (270, 660, 'ES8mRx7Vem', 'vHLyRL4A4T');
INSERT INTO `stusummary` VALUES (981, 359, 'rP6G2bmFJf', 'A05Z5jV8uN');
INSERT INTO `stusummary` VALUES (338, 524, 'ZEE2ZBNKEw', 'IPx9G9IhPb');
INSERT INTO `stusummary` VALUES (949, 983, 'NLjAKqzlES', 'qwWuIwi5qT');
INSERT INTO `stusummary` VALUES (159, 710, 'F2LJMcDlcZ', '035Xd8kjWc');
INSERT INTO `stusummary` VALUES (728, 80, 'ieax679pAR', '6qWfGaNA4C');
INSERT INTO `stusummary` VALUES (449, 432, 'E7ZlqEoMyG', 'npmNBRp8Kl');
INSERT INTO `stusummary` VALUES (604, 751, 'bDbHFlUEh8', '6uEsVGv6nP');
INSERT INTO `stusummary` VALUES (450, 319, 'RZd9syLDfk', 'qYfqCkNCZc');
INSERT INTO `stusummary` VALUES (951, 17, '050uO9TyAU', 'wFlxibhngU');
INSERT INTO `stusummary` VALUES (791, 221, 'mBtXXGbvpR', 'k8VsLqEryO');
INSERT INTO `stusummary` VALUES (95, 814, 'xNpv387sKN', '7XjBAKvbOo');
INSERT INTO `stusummary` VALUES (581, 268, 'dFEaNM3Rqx', '2kUnvcrPEt');
INSERT INTO `stusummary` VALUES (225, 609, 'Ltpu2MhkUV', 'flZsWsYdAS');
INSERT INTO `stusummary` VALUES (314, 2, '54beFvh95R', 'CRO1KDpWPE');
INSERT INTO `stusummary` VALUES (461, 910, 'wBoyB7KfAQ', '5zxk4xSFXH');
INSERT INTO `stusummary` VALUES (372, 932, 'E3gh8z4wu7', 'rOdMD22fWc');
INSERT INTO `stusummary` VALUES (387, 319, 'ISOJnPl6Qi', 'ixCT7X5tft');
INSERT INTO `stusummary` VALUES (367, 509, 'reGDDvBiLu', 'lxwurM4kCJ');
INSERT INTO `stusummary` VALUES (384, 142, '0J6nQJCS6j', 'Me5xEydbim');
INSERT INTO `stusummary` VALUES (475, 55, 'VWVAxCSmFP', 'JhAQtg7Oij');
INSERT INTO `stusummary` VALUES (979, 628, 'Vq4iUHJ9Bn', '4TFREEy7Uf');
INSERT INTO `stusummary` VALUES (133, 643, 'N6zSar9dGT', 'wtqA8MpiUs');
INSERT INTO `stusummary` VALUES (573, 148, 'aZT75Ck4cp', '3IroN5LtnW');
INSERT INTO `stusummary` VALUES (450, 206, 'O2fRI36dGn', '7fJJkNmbCm');
INSERT INTO `stusummary` VALUES (534, 97, 'IXJ8w1iOoo', 'kK7IP7O9JW');
INSERT INTO `stusummary` VALUES (281, 886, 'EKfmH1naYK', 'KH1gHbDwYd');
INSERT INTO `stusummary` VALUES (101, 774, 'rLtZPPjVw3', 'DoXKf0R15Z');
INSERT INTO `stusummary` VALUES (109, 923, 'jCdqjGbRHE', 'GfLLEjgwMG');
INSERT INTO `stusummary` VALUES (819, 356, 'VKyiyuPAJj', 'Z5hbZUJAqH');
INSERT INTO `stusummary` VALUES (474, 991, 'B0elBXbmjp', 'LnmMEjjXZH');
INSERT INTO `stusummary` VALUES (327, 260, 'yvOJRjncHc', 'k0ZlELLl0j');
INSERT INTO `stusummary` VALUES (919, 987, 'SBVB8KrdeL', 'sTHpgPAdaG');
INSERT INTO `stusummary` VALUES (823, 400, 'ZXanCD6JNR', 'GDAa7RF6Rw');
INSERT INTO `stusummary` VALUES (398, 730, 'vO7bCFoEAk', 'pz8lJ9CtW2');
INSERT INTO `stusummary` VALUES (807, 711, 'WLq0Px5YdT', 'e1nve2IOoC');
INSERT INTO `stusummary` VALUES (225, 886, 'mCuIN9LlUa', 'FcyG96SpKg');
INSERT INTO `stusummary` VALUES (464, 131, '0sz8XftlVU', '2QDVlzXiVx');
INSERT INTO `stusummary` VALUES (614, 781, 'IuDK8Euewy', 'h0ObYLekxr');
INSERT INTO `stusummary` VALUES (98, 409, '6ZkAJ8WQHV', '45YVrMrhjb');
INSERT INTO `stusummary` VALUES (345, 80, '9shNNOKiRW', 'Kajm7J8YGJ');
INSERT INTO `stusummary` VALUES (846, 564, 'l2IjzRr6xY', 'u7xjPqJkKi');
INSERT INTO `stusummary` VALUES (707, 710, 'ifgfbR8Pdk', 'IK4nWYuTnH');
INSERT INTO `stusummary` VALUES (163, 103, 'UvzUMUdaKT', '0OtdckuiEp');
INSERT INTO `stusummary` VALUES (161, 625, 'G9EBFd7u6n', 'N4JqEsKCiW');
INSERT INTO `stusummary` VALUES (233, 105, 'Ny3jc6Sfzt', 'u8OWrkxGbu');
INSERT INTO `stusummary` VALUES (720, 49, 'HlVseyRuyW', 'bLkOpphpao');
INSERT INTO `stusummary` VALUES (849, 431, 'c8E5OZOe0Q', 'msbYymnA99');
INSERT INTO `stusummary` VALUES (650, 384, 'WrDNJHrjrj', '71PiEaHmo0');
INSERT INTO `stusummary` VALUES (787, 997, 'KtBEPjrKgd', 'IJK9OeuHLY');
INSERT INTO `stusummary` VALUES (638, 432, 'TxHCiILUeh', 'zrbxTiHS0j');
INSERT INTO `stusummary` VALUES (376, 227, 'bnCfIzfGOz', 'qnIWYwur8h');
INSERT INTO `stusummary` VALUES (453, 339, 'dYkFLzCk7n', 'FAQjVCaHgv');
INSERT INTO `stusummary` VALUES (136, 767, 'tRwLCVHQkx', 'qpAodXjwpS');
INSERT INTO `stusummary` VALUES (77, 767, 'TJP3pyuvBw', '0Fokuen8jS');
INSERT INTO `stusummary` VALUES (160, 556, 'YrZjpYWp04', 'qwlUO6fk2l');
INSERT INTO `stusummary` VALUES (916, 245, 'YTtOkkLHDp', 'ZhlRS78yiF');
INSERT INTO `stusummary` VALUES (953, 982, 'gXABf29LR4', '5ZMrFWOBH2');
INSERT INTO `stusummary` VALUES (714, 538, 'YkQA8DVPMu', 'V4bnljfwuI');
INSERT INTO `stusummary` VALUES (974, 808, 'GCncNRzZZU', 'qzU3PHf9HR');
INSERT INTO `stusummary` VALUES (106, 621, 'qpigVW5g1I', 'eEN5655mIQ');
INSERT INTO `stusummary` VALUES (171, 835, 'qjvJfDWMol', 'zveujRe1xg');
INSERT INTO `stusummary` VALUES (374, 716, 'LpjBMevx74', 'E17N6Uvcyf');
INSERT INTO `stusummary` VALUES (872, 602, 'vFRsND5tQP', '2demTw4mt8');
INSERT INTO `stusummary` VALUES (248, 573, 'FzedsqGgW6', 'j0NKMLUOIl');
INSERT INTO `stusummary` VALUES (665, 331, 'sOIksd03OL', 'WD4Yw13EAS');
INSERT INTO `stusummary` VALUES (892, 360, '0MvAjZJmlC', 'ztplE4ksMk');
INSERT INTO `stusummary` VALUES (188, 528, 'OVZSBBuhCN', 'JOxH8kiLlF');
INSERT INTO `stusummary` VALUES (116, 451, 'vSFhtV4XIV', 'mENYpuP9mY');
INSERT INTO `stusummary` VALUES (596, 81, '7AROqirV8k', 'fyndBaS4Wl');
INSERT INTO `stusummary` VALUES (441, 322, 'kRqNF0T8cN', '1HgEeYsOu9');
INSERT INTO `stusummary` VALUES (187, 494, 'eA5sjrh09U', 'qJsZVYJPZV');
INSERT INTO `stusummary` VALUES (229, 572, 'GFoQcBfLvl', 'ViE3fnWuea');
INSERT INTO `stusummary` VALUES (33, 485, 'e8gu4jTKvf', 'F3aPe0FBR0');
INSERT INTO `stusummary` VALUES (926, 297, 'JLtZkYEjnx', 'jY5UgkVvri');
INSERT INTO `stusummary` VALUES (644, 281, '4nFwiLBymo', 'wwnpZAFVxX');
INSERT INTO `stusummary` VALUES (809, 861, 'G5IPUmRJak', 'jaHLaBu4GG');
INSERT INTO `stusummary` VALUES (167, 794, 'IboJcZvoVL', 'SQ2sMLdFVl');
INSERT INTO `stusummary` VALUES (384, 832, 'rDY8el98Cp', '1G6REPoOe8');
INSERT INTO `stusummary` VALUES (546, 161, 'RTFICr8sM5', 'XSOtZaSZe6');
INSERT INTO `stusummary` VALUES (722, 632, 'tiR0ubhQ3j', 'M96Dj6Wz4F');
INSERT INTO `stusummary` VALUES (72, 624, 'VJMIJzAc8H', 'lm7Ua4U6ds');
INSERT INTO `stusummary` VALUES (65, 627, 'jIABGLEEAG', 'o79OMNgNm9');
INSERT INTO `stusummary` VALUES (535, 260, 'JwvUUXrmZI', 'ppwzOXPsKq');
INSERT INTO `stusummary` VALUES (70, 866, 'AgDMbtTvaW', 'Y2P6TbFFCl');
INSERT INTO `stusummary` VALUES (261, 736, '3n5Rrofzqw', 'OvpVXBBVsy');
INSERT INTO `stusummary` VALUES (47, 225, 'zyGfUhqRjk', 'IkKmtf13qd');
INSERT INTO `stusummary` VALUES (776, 761, 'ZzO7czTjNF', 'edu7SyuW46');
INSERT INTO `stusummary` VALUES (160, 607, 'uA2D5oUyoU', 'QV1lfHSPn7');
INSERT INTO `stusummary` VALUES (728, 122, 'IqvLiZK8FB', '5U2vhG6XkO');
INSERT INTO `stusummary` VALUES (444, 465, 'yjS0Et6nDo', '7YpizW8dbY');
INSERT INTO `stusummary` VALUES (590, 30, '88hLNLGoq8', 'bY0sCpPJLi');
INSERT INTO `stusummary` VALUES (572, 24, 'HwlVPLS2dL', 'LIm1qX41tT');
INSERT INTO `stusummary` VALUES (193, 648, 'BME2J7k5T0', '0saqyUDw5Z');
INSERT INTO `stusummary` VALUES (969, 485, 'XnHei6IXY4', 'nBdVKIXXmu');
INSERT INTO `stusummary` VALUES (974, 487, 'pjbeML4lnd', 'FEURBkUAHL');
INSERT INTO `stusummary` VALUES (642, 434, 'ZH4CGeBbui', 'Z5q6eTZUEa');
INSERT INTO `stusummary` VALUES (31, 382, 'jDtnEcARIw', 'PqPVZbrsY3');
INSERT INTO `stusummary` VALUES (613, 933, 'HXn8ycMKOI', 'AhkGUITCjC');
INSERT INTO `stusummary` VALUES (533, 94, 'lrtS9CCG84', 'J89gr2JrgH');
INSERT INTO `stusummary` VALUES (491, 763, '225G9BZ5h0', 'fIEuqE82go');
INSERT INTO `stusummary` VALUES (708, 61, 'dApL4pJOQk', 'cNGqtFA370');
INSERT INTO `stusummary` VALUES (79, 225, 'lNdL99wB3o', 'aKaudANBjZ');
INSERT INTO `stusummary` VALUES (163, 803, '41dA80WxVt', 'VKxnHEs0Jp');
INSERT INTO `stusummary` VALUES (804, 297, '0RUrTP9aho', 'vOjyknJHKc');
INSERT INTO `stusummary` VALUES (238, 652, 'gSoXShBHAT', 'mqWbD9gRtp');
INSERT INTO `stusummary` VALUES (756, 517, 'AM6FNoL982', 'MARe7vxqEW');
INSERT INTO `stusummary` VALUES (148, 521, 'izLkLRi9WN', 'hNCEond4fF');
INSERT INTO `stusummary` VALUES (867, 810, 'zORK2Hx5gg', '2rfOJ6rC6k');
INSERT INTO `stusummary` VALUES (568, 513, '6djElfEjjO', 'HA1DufARH0');
INSERT INTO `stusummary` VALUES (20, 964, 'oiyW1eTiE1', 'vTSbGWmcia');
INSERT INTO `stusummary` VALUES (732, 621, 'l3J6vD4gKx', 'kxgI1T9QLc');
INSERT INTO `stusummary` VALUES (147, 865, 'H9KzKCc9n5', 'SAMJGRKUdk');
INSERT INTO `stusummary` VALUES (852, 540, 'QkW7q4HQDz', 'V283L0ThkI');
INSERT INTO `stusummary` VALUES (520, 490, 'wnsZjaz64X', '9AajciBTvb');
INSERT INTO `stusummary` VALUES (818, 761, 'ctEuGmeYBx', 'Ne9ZYim37x');
INSERT INTO `stusummary` VALUES (239, 479, 'vMM4fIxmSm', 'X49wruSY2L');
INSERT INTO `stusummary` VALUES (910, 501, 'cRaLmirL9B', 'mCsz6iGYIq');
INSERT INTO `stusummary` VALUES (580, 702, 'C45ZtpiZh1', 's5f0qigc2D');
INSERT INTO `stusummary` VALUES (599, 140, 'mxGm8vH0sh', 'fbk8Yp5JPI');
INSERT INTO `stusummary` VALUES (368, 629, 'K4yK1RRbm3', 'MXVN95mwkI');
INSERT INTO `stusummary` VALUES (569, 876, 'Fh3vH5DMlc', '0O92AHSaas');
INSERT INTO `stusummary` VALUES (482, 916, '6NLscpnIPZ', 'bNrF3GMLXD');
INSERT INTO `stusummary` VALUES (844, 259, 'KDHAtRlZt2', 'H0pnBSjDa2');
INSERT INTO `stusummary` VALUES (817, 966, '5utytVNRwy', '4ISIXbHTXe');
INSERT INTO `stusummary` VALUES (482, 886, 'BD1pXcI9dz', 'FbaXQCRno4');
INSERT INTO `stusummary` VALUES (279, 659, 'SG6ZtVfNyM', 'B2PBsSHpxZ');
INSERT INTO `stusummary` VALUES (863, 431, 'KGKs1XGJkN', 'oUEC7SSWhH');
INSERT INTO `stusummary` VALUES (558, 244, 'fDIftHVmSp', 'dQpJCS5kms');
INSERT INTO `stusummary` VALUES (18, 868, 'EPR22uU0ob', 'jCDFAo1hla');
INSERT INTO `stusummary` VALUES (546, 354, '2mEtVREyxL', 'A6XXMANZ4D');
INSERT INTO `stusummary` VALUES (935, 212, 'j23bHEEgdG', 'gwljvmbpCA');
INSERT INTO `stusummary` VALUES (862, 68, 'TeM9jwCpQG', 'Zc0EfE8nHa');
INSERT INTO `stusummary` VALUES (176, 398, 'SKn7VKJEaF', 'CT4VEWN1LG');
INSERT INTO `stusummary` VALUES (866, 813, 'kXRrVfMoPl', '3Npxc3AIz0');
INSERT INTO `stusummary` VALUES (188, 886, 'kj3D1PQty9', 'RQRA7wCAhS');
INSERT INTO `stusummary` VALUES (848, 456, 'TukCd03MIi', 'J9f3KtQndb');
INSERT INTO `stusummary` VALUES (907, 72, 'dZpNIlOKev', 'kFQ6gbgszK');
INSERT INTO `stusummary` VALUES (695, 572, 'gIWmfXxaJr', 'XiwKWrH0g8');
INSERT INTO `stusummary` VALUES (911, 35, 'PRDLCxAmFA', 's6lk5LjCWb');
INSERT INTO `stusummary` VALUES (21, 365, 'wfRW59Jmg0', '22hrAUwxKZ');
INSERT INTO `stusummary` VALUES (867, 794, 'KCJxfZ1LDf', 'nEbxwsqSAI');
INSERT INTO `stusummary` VALUES (129, 437, 'oKY1g6QVEp', '8F9fDEHUiJ');
INSERT INTO `stusummary` VALUES (297, 513, 'VXWqpzd9eT', '72TNOBtoBz');
INSERT INTO `stusummary` VALUES (271, 825, 'iPykxIAQRr', 'H6gPOCgRji');
INSERT INTO `stusummary` VALUES (20, 309, 'Eaokcq9phg', 'nqLUvx2z2z');
INSERT INTO `stusummary` VALUES (908, 725, 'zdC1Brl8aP', 'B7p4epxLBC');
INSERT INTO `stusummary` VALUES (621, 944, '6JgnmGRQ1l', 'H7lQLWaU1q');
INSERT INTO `stusummary` VALUES (930, 514, 'h5dxzgIgLa', 'kQGwQSmRdA');
INSERT INTO `stusummary` VALUES (103, 580, 'wk4B2PIxSM', '9jHXeUt7fU');
INSERT INTO `stusummary` VALUES (625, 193, 'SCCx6mys2F', 'fxd9LhVZec');
INSERT INTO `stusummary` VALUES (637, 274, 'HZxde3za7Q', '0JkJnb5Vr2');
INSERT INTO `stusummary` VALUES (972, 978, 'Rdsvpm2J7o', 'gse9mZ3eza');
INSERT INTO `stusummary` VALUES (721, 492, 'WUCvC5PQVL', 'zWaSnDQ8AI');
INSERT INTO `stusummary` VALUES (47, 299, '8lVLJOjMtF', 'EiZjwJzoIl');
INSERT INTO `stusummary` VALUES (966, 359, 'CsfFqJRY5w', 'KcZ4Nrz0KO');
INSERT INTO `stusummary` VALUES (936, 887, 'lE3b3fyJyl', 'GbO0Zt7RO8');
INSERT INTO `stusummary` VALUES (124, 278, '2ojtNvgttL', 'pDTYXaLTCo');
INSERT INTO `stusummary` VALUES (238, 900, '8PTKeJ9Wsc', 'qENR26SVw1');
INSERT INTO `stusummary` VALUES (206, 462, 'yVlPFe8s9g', 'ijK1woOx3d');
INSERT INTO `stusummary` VALUES (218, 823, 'o2kLHx2tI4', 'LlEeaT7QxJ');
INSERT INTO `stusummary` VALUES (907, 238, 'I5uIilusVE', 'NiWw6oqSMS');
INSERT INTO `stusummary` VALUES (917, 438, 'Qyf4K3o3EJ', 'N9YV9bvQzR');
INSERT INTO `stusummary` VALUES (599, 813, 'WSSSZdYUcb', 'DiBqSTmvLZ');
INSERT INTO `stusummary` VALUES (66, 714, 'vofLeU7iQc', 'lOlOg15RDE');
INSERT INTO `stusummary` VALUES (859, 691, 'B8G33riOba', 'NkPA0UtL1P');
INSERT INTO `stusummary` VALUES (137, 388, 'l5fxAqgizS', '3ZDIV8PvND');
INSERT INTO `stusummary` VALUES (409, 274, 'JGgeYGIYHz', '6lGGb23ZHt');
INSERT INTO `stusummary` VALUES (199, 797, 'GAHkn8PRQW', 'TzaQdr8IMo');
INSERT INTO `stusummary` VALUES (713, 937, '1ygmYwGkDO', 'SpG9YSHTRU');
INSERT INTO `stusummary` VALUES (369, 551, 'I9NzHg7l0Q', 'djLtHptu4w');
INSERT INTO `stusummary` VALUES (289, 550, '0wI9fncs5H', 'RYJWdkEVNm');
INSERT INTO `stusummary` VALUES (579, 856, 'nzLAqo4NdC', 'JEWgcNWYY2');
INSERT INTO `stusummary` VALUES (244, 774, 'mV4gJpqj8j', 'WZ8Togc9yw');
INSERT INTO `stusummary` VALUES (419, 46, 'r5oT2vpLoz', 'GXnFyYnZSW');
INSERT INTO `stusummary` VALUES (583, 472, 'GhLPIDmwJA', '0fe85Sltw3');
INSERT INTO `stusummary` VALUES (119, 828, 'IZWdWYQVCV', 'L7VEgDHIv4');
INSERT INTO `stusummary` VALUES (252, 966, 'IWe2wIVRCv', 'cVrUlHcttj');
INSERT INTO `stusummary` VALUES (676, 520, 'Dm6x15JYy4', 'ezQgamQnX5');
INSERT INTO `stusummary` VALUES (842, 17, 'cGIeH3rNew', 'JfPOJgJ2kh');
INSERT INTO `stusummary` VALUES (272, 667, 'Tsyrz4GMQd', 'AZbedNkAVc');
INSERT INTO `stusummary` VALUES (406, 217, 'go872BOSBk', 'I0AAfRy11E');
INSERT INTO `stusummary` VALUES (996, 419, 'FRgOMOK5pV', 'htNXYY0ZMY');
INSERT INTO `stusummary` VALUES (632, 636, 'RFbdqtmOWz', 'ClkzIc1BO1');
INSERT INTO `stusummary` VALUES (107, 678, '4R2mpADIRF', 'n1gNdrpFYu');
INSERT INTO `stusummary` VALUES (987, 166, 'DdVAKdNOtq', 'HCXnXY6DK9');
INSERT INTO `stusummary` VALUES (797, 381, 'Suoi6lGBN3', 'bKRIA3GUPo');
INSERT INTO `stusummary` VALUES (109, 422, 'tfkRsLZpxn', 'Ya00FebQNP');
INSERT INTO `stusummary` VALUES (60, 579, 'maYWeNnt6V', 'xIKYl3l36x');
INSERT INTO `stusummary` VALUES (95, 408, 'J7PoGleeZg', 'xUwEqGNJix');
INSERT INTO `stusummary` VALUES (872, 18, 'UlLnbvV83M', 'stdMu96wxy');
INSERT INTO `stusummary` VALUES (277, 793, 'PD22EtBjHV', 'jYykrnr5w7');
INSERT INTO `stusummary` VALUES (763, 652, 'JFW6ox3VXv', 'rvmgAcPb1B');
INSERT INTO `stusummary` VALUES (200, 711, 'eaSoa6SL5I', 'LYL1867Utz');
INSERT INTO `stusummary` VALUES (863, 509, 'kulv6AXoQ2', 'icShVqJD7f');
INSERT INTO `stusummary` VALUES (998, 406, 'BHKGVdNtxK', 'EItBbzW1uy');
INSERT INTO `stusummary` VALUES (185, 488, 'SQehdV9pmQ', 'zaC0fyJGaP');
INSERT INTO `stusummary` VALUES (530, 97, 'VKh82G5Tex', '98x8FZan2E');
INSERT INTO `stusummary` VALUES (631, 298, 'V4QdrmYcsh', 'J7hD3TSafZ');
INSERT INTO `stusummary` VALUES (177, 513, 'iS9ru0bWFJ', 'NUenyGG5Yf');
INSERT INTO `stusummary` VALUES (438, 384, 'Ja85f9Oa9k', 'm7wXtFQwDd');
INSERT INTO `stusummary` VALUES (552, 559, 'FwtfALC65g', 'kwOkDu5ADd');
INSERT INTO `stusummary` VALUES (49, 683, '3cbIzFLhKF', 'r4uhs2DdXA');
INSERT INTO `stusummary` VALUES (605, 639, 'u1Xgb1mYXT', 'MSJGvJJ4AK');
INSERT INTO `stusummary` VALUES (415, 201, 'IAI01wBD53', '4BSZ3XZ4Oz');
INSERT INTO `stusummary` VALUES (253, 550, 'H9GCdn2F0v', 'WLnvrfBoCq');
INSERT INTO `stusummary` VALUES (577, 125, 'Vn0YtXSoDw', '7KR8yZAc4G');
INSERT INTO `stusummary` VALUES (524, 485, 'EWYQcx7VMN', 'AwruxYP0VI');
INSERT INTO `stusummary` VALUES (219, 209, 'sbBobb9z6p', 'MlBEWNd10h');
INSERT INTO `stusummary` VALUES (367, 60, 'zHL74vl7vn', 'Rqs99XFALC');
INSERT INTO `stusummary` VALUES (279, 309, '9PirLeKT9N', 'qemmXkatIK');
INSERT INTO `stusummary` VALUES (420, 500, 'wPbDW552uk', 'Ecza9G9wtA');
INSERT INTO `stusummary` VALUES (640, 693, 'FFUBnRxutg', 'sxDNHPTEi8');
INSERT INTO `stusummary` VALUES (447, 256, 'NpihrC1uKy', 'HaIgA4cq3B');
INSERT INTO `stusummary` VALUES (730, 764, 'D9VUeKVrFg', 'OpD7LOcYAC');
INSERT INTO `stusummary` VALUES (898, 173, 'mT1MhGXT9p', '00clsGOSTA');
INSERT INTO `stusummary` VALUES (272, 761, 'TpEue3awrK', 'zdq2AJelOo');
INSERT INTO `stusummary` VALUES (67, 312, 'KQn8VToP2x', '6CZ7eohp51');
INSERT INTO `stusummary` VALUES (431, 577, 'OVTgF5Tjqr', '0ujSiZnwEz');
INSERT INTO `stusummary` VALUES (722, 120, '3AurmH942s', 'inm4E2bify');
INSERT INTO `stusummary` VALUES (938, 812, 'j1XyJIUXU1', '3cRxXBHiFk');
INSERT INTO `stusummary` VALUES (788, 997, '49kjp9Fng7', '23tgkKhDRw');
INSERT INTO `stusummary` VALUES (167, 568, 'i8mDqwiSEo', 'cK8Ikvg9Ix');
INSERT INTO `stusummary` VALUES (66, 938, 'VTPHIoPQJB', 'YwSDhpzVoH');
INSERT INTO `stusummary` VALUES (94, 904, 'n0iYTrwkKg', '4C4FoVEo3B');
INSERT INTO `stusummary` VALUES (443, 445, '83hpvfR3KX', '6RwbmtLee8');
INSERT INTO `stusummary` VALUES (301, 90, 'xyX4hGZJEk', 'siBA6g8sif');
INSERT INTO `stusummary` VALUES (907, 417, '3PMeAMkhIv', 'o80LGMflUr');
INSERT INTO `stusummary` VALUES (770, 817, 'PBVgXWd3kZ', 'HbDD5mCeFs');
INSERT INTO `stusummary` VALUES (351, 12, 'HTaex3nGhk', 'S2jOPvBkBn');
INSERT INTO `stusummary` VALUES (203, 507, 'lShpVhXSVV', '8VIX2unIcO');
INSERT INTO `stusummary` VALUES (190, 408, 'lU7LmjN8K8', 'YgWgOTKmxs');
INSERT INTO `stusummary` VALUES (574, 779, 'Da0SUE0mry', 'LcH18jXRH4');
INSERT INTO `stusummary` VALUES (755, 128, '2AkykRDEAn', 'faTi5m03Gw');
INSERT INTO `stusummary` VALUES (244, 506, 'FL18wxrnVW', 'g3esR4CQH4');
INSERT INTO `stusummary` VALUES (920, 253, 'fsbIrSOv28', 'jPjJqW0yaG');
INSERT INTO `stusummary` VALUES (94, 593, 'dU0zS8Bo4b', 'nUls1rsm1Z');
INSERT INTO `stusummary` VALUES (350, 890, 'BJtZysrIE1', 'mMkRlAHoRw');
INSERT INTO `stusummary` VALUES (58, 607, 'cbc60wHmxT', '5STshwD8GZ');
INSERT INTO `stusummary` VALUES (843, 27, 'zYM25ASdCE', 'CqCMN4i8m0');
INSERT INTO `stusummary` VALUES (341, 699, 'rZwqnvBvaU', '2Dqv5Nr5QG');
INSERT INTO `stusummary` VALUES (651, 973, 'nkHdghGvsI', 'y19b3CYAvW');
INSERT INTO `stusummary` VALUES (403, 432, '3hpygVsbFk', 't0IH6ZNTp5');
INSERT INTO `stusummary` VALUES (298, 868, 'iBnfXnVb5T', '5juDOuF8wo');
INSERT INTO `stusummary` VALUES (245, 744, 'V8aa06P4pe', 'Qz239MrKV1');
INSERT INTO `stusummary` VALUES (607, 180, 'wFIFcKJjz9', '0lrIsZkYZC');
INSERT INTO `stusummary` VALUES (90, 974, 'UD7CIZE84F', 'PrFgh06HzB');
INSERT INTO `stusummary` VALUES (838, 281, 'uJstEVEEGJ', 'dzQgkGQDI3');
INSERT INTO `stusummary` VALUES (47, 842, 'LysMHKP94O', 'CYyJCnjQdu');
INSERT INTO `stusummary` VALUES (682, 805, 'jzXsuUwZe3', 'CAS0mpyr8n');
INSERT INTO `stusummary` VALUES (380, 842, 'SYPujXe7ME', 'IVplloIgeg');
INSERT INTO `stusummary` VALUES (697, 499, 'Lt4N3soRdp', '5TS7xL9j3V');
INSERT INTO `stusummary` VALUES (24, 607, 'PPygZODkBJ', 'jJuv6iCmdg');
INSERT INTO `stusummary` VALUES (465, 748, 'PTSD9UDVQP', 'qHhFUSvoFD');
INSERT INTO `stusummary` VALUES (884, 692, 'R6OKUKkOlL', '8VtBZI8kfT');
INSERT INTO `stusummary` VALUES (505, 835, 'UF8Hws2rnN', 'PK9Zq6YKZ0');
INSERT INTO `stusummary` VALUES (359, 798, 'pAONKYD6Dy', 'cQr3QbSyJO');
INSERT INTO `stusummary` VALUES (167, 16, 'D9echiDqa1', '3uiZHYMByl');
INSERT INTO `stusummary` VALUES (758, 855, 'mDC5ZZwdtd', 'n7e8jpcOoi');
INSERT INTO `stusummary` VALUES (930, 544, '91IIcifG7h', 'bnd4CtHyPn');
INSERT INTO `stusummary` VALUES (250, 382, 'mkqhqi5RAN', 'samPJ7DpJw');
INSERT INTO `stusummary` VALUES (213, 184, 'BCJoUfy65l', 'kgL74n3Dyl');
INSERT INTO `stusummary` VALUES (824, 202, 'VxpB3fzu0Q', 'q7qSkcroL1');
INSERT INTO `stusummary` VALUES (864, 841, 'lLkQV4lWND', 'De0Vvp7axs');
INSERT INTO `stusummary` VALUES (213, 303, 'p3DIneztgC', '0Lj2mrMaMA');
INSERT INTO `stusummary` VALUES (16, 644, 'knJhX1NmWH', 'RANORt92mY');
INSERT INTO `stusummary` VALUES (269, 147, 'nQ5aAJ9ams', 'Kc3uPgMbaS');
INSERT INTO `stusummary` VALUES (242, 614, 'GAYjEffPXg', 'sM9ctftgh1');
INSERT INTO `stusummary` VALUES (861, 431, '3h2MCuuQaI', 'ESguduOxwS');
INSERT INTO `stusummary` VALUES (850, 452, 'GQoiEIhcbB', '2F0cTzqRL6');
INSERT INTO `stusummary` VALUES (308, 224, '9CqKOtL4yZ', 'X4xxVGkEoD');
INSERT INTO `stusummary` VALUES (326, 427, 'UO1r0K1jGk', 'LXP38qs8hC');
INSERT INTO `stusummary` VALUES (31, 896, '3qkDEsdSBO', 'fugZpB4Pge');
INSERT INTO `stusummary` VALUES (601, 464, '2AR7gWNwR9', 'dRAPTr9QPW');
INSERT INTO `stusummary` VALUES (857, 628, 'w80sCNAbHl', 'hnbnkJaT7B');
INSERT INTO `stusummary` VALUES (906, 842, 'Dr0nRrV3Vc', 's788yZGBcA');
INSERT INTO `stusummary` VALUES (710, 701, '8qnHof9Kgf', 'OYKKjSxxPD');
INSERT INTO `stusummary` VALUES (555, 165, 'rMjK3VZxyM', 'nnkNX32iXE');
INSERT INTO `stusummary` VALUES (484, 751, 'YdcjsqBeRp', '5jUzdzGAjS');
INSERT INTO `stusummary` VALUES (21, 862, 'i7UHva5KWH', 'AX1u29rzbY');
INSERT INTO `stusummary` VALUES (902, 75, 'NDXRQdvcTw', 'lYImXjKmLQ');
INSERT INTO `stusummary` VALUES (256, 703, 'w8K9ejFfAA', 'RpUACf8YM7');
INSERT INTO `stusummary` VALUES (448, 755, 'BdAVIqSTJB', 'F2SnZv2dzv');
INSERT INTO `stusummary` VALUES (813, 973, 'lkPnhtDRmM', '5hxmQIq5JA');
INSERT INTO `stusummary` VALUES (593, 350, 'vD12e9txH2', '8UF8LM3rNi');
INSERT INTO `stusummary` VALUES (450, 848, '5lmFGbsyH2', 'WwcLFuu4L5');
INSERT INTO `stusummary` VALUES (952, 483, '9Wbeto8PM0', 'Ti5raOtkGr');
INSERT INTO `stusummary` VALUES (120, 518, 'lfj13RY7il', 'NgTqnWekgl');
INSERT INTO `stusummary` VALUES (740, 365, 'bdAFwtyNJg', 'qIaVgtB2Ni');
INSERT INTO `stusummary` VALUES (612, 780, 'sb1g0vwQSv', 'xEYkQoDc6y');
INSERT INTO `stusummary` VALUES (307, 426, 'jRO8H0cUGE', 'ROlmraOZpx');
INSERT INTO `stusummary` VALUES (246, 228, 'CI9McqN6Oy', '4JmYp87m6j');
INSERT INTO `stusummary` VALUES (625, 799, 'jjd1piOdri', 'seiAH0SNFt');
INSERT INTO `stusummary` VALUES (615, 379, 'bVLT2MKKuG', 'AAGQ4sR9SQ');
INSERT INTO `stusummary` VALUES (723, 131, 'OUsFtV0IJr', 'nc2ZWmK2WK');
INSERT INTO `stusummary` VALUES (353, 634, 'BQzmlTC6bR', 'BUxJ8lp4mL');
INSERT INTO `stusummary` VALUES (125, 125, 'vPcqWs41Jd', 'RQNYLVPscJ');
INSERT INTO `stusummary` VALUES (895, 670, '0rUgr1fv9t', 'kc6FS80RgH');
INSERT INTO `stusummary` VALUES (387, 85, 'AgKauRqtYX', '5D5IMGYiFR');
INSERT INTO `stusummary` VALUES (772, 429, 'XwYyMZRmxz', 'j8UJTlCOjk');
INSERT INTO `stusummary` VALUES (951, 32, '51NfPZ3IU9', 'JKassEaOlY');
INSERT INTO `stusummary` VALUES (465, 561, 'qNGegpvML2', 'it6mcXG51f');
INSERT INTO `stusummary` VALUES (791, 833, 'TaKcnFYeAB', 'qL5BqKy2NO');
INSERT INTO `stusummary` VALUES (33, 625, 'HtAauxwOYr', 'n5Alcz2eMH');
INSERT INTO `stusummary` VALUES (236, 524, 'fGBMdw3og5', 'PXY0kUq2LI');
INSERT INTO `stusummary` VALUES (684, 923, 'U2axOxOdcA', 'p49OyIe6RN');
INSERT INTO `stusummary` VALUES (258, 628, 'BWyqhcwzlJ', 'pSv204MU8Q');
INSERT INTO `stusummary` VALUES (35, 471, 'u24SgLmign', 'WwycnoTRky');
INSERT INTO `stusummary` VALUES (167, 192, 'yRpoAjR4no', 'di0RLHGVMk');
INSERT INTO `stusummary` VALUES (125, 435, 'umPltO9OmG', 'IQ2IO3aIbl');
INSERT INTO `stusummary` VALUES (365, 253, 'Kx3sNghDw7', 'Eep3ilnyxB');
INSERT INTO `stusummary` VALUES (940, 305, '6xUxPSQVHO', '8tJQ7nm4xV');
INSERT INTO `stusummary` VALUES (712, 495, 'tZBQM61L6h', 'jTeSgWPENb');
INSERT INTO `stusummary` VALUES (620, 259, '9Mwpro5egb', '7BAVKWL9oL');
INSERT INTO `stusummary` VALUES (932, 612, '7F4uInFO0m', 'e4GIf6IJFo');
INSERT INTO `stusummary` VALUES (846, 202, 'RvujkMo8zH', '5TpJkWzLuv');
INSERT INTO `stusummary` VALUES (454, 683, 'Y9cM1Kxw0b', '9h9UJYzxlw');
INSERT INTO `stusummary` VALUES (215, 170, 'bctw0VVQyA', 'ugEAryqf8I');
INSERT INTO `stusummary` VALUES (606, 829, 'ybhPuUToY1', 'y7WFGp7P1W');
INSERT INTO `stusummary` VALUES (64, 162, 'sy5VIZZFHB', 'h5e4bS8WsP');
INSERT INTO `stusummary` VALUES (604, 278, 'G7I4tRr14N', '16j1oS42dA');
INSERT INTO `stusummary` VALUES (487, 753, 'DwjsXKIIeV', 'yMEdYMlR7h');
INSERT INTO `stusummary` VALUES (775, 540, 'bQfqFftpnC', 'KjcGcchytE');
INSERT INTO `stusummary` VALUES (421, 88, 'PZmHFdqHob', 'jQ0jBWeTUl');
INSERT INTO `stusummary` VALUES (539, 380, 'mHKy1JACg6', 'LU0KS0JzjT');
INSERT INTO `stusummary` VALUES (487, 592, 'r5jHbNtP5b', '0HSRG29Abc');
INSERT INTO `stusummary` VALUES (105, 806, 'Zl2SvhSoKP', 'xkuhhgPbRJ');
INSERT INTO `stusummary` VALUES (542, 495, 'rcjLneheH1', 'keaq2uIXxC');
INSERT INTO `stusummary` VALUES (998, 355, 'f4jLdn6Akn', 'HHSV6SQQv8');
INSERT INTO `stusummary` VALUES (773, 244, 'Xb8Mr02QMx', 'SGV0B46NlV');
INSERT INTO `stusummary` VALUES (455, 17, 'zbvC2k0coB', 'pU313im6Km');
INSERT INTO `stusummary` VALUES (108, 565, '4Zhwb6b1Gs', 'NJFkhteKSq');
INSERT INTO `stusummary` VALUES (189, 375, 'o4sfEKMD4x', 'YtWwcNWNIK');
INSERT INTO `stusummary` VALUES (179, 327, 'U1DHsFAzpl', 'Cid9Uq3vKO');
INSERT INTO `stusummary` VALUES (268, 868, 'LUMrp4OE57', 'OXgk6kkLcn');
INSERT INTO `stusummary` VALUES (469, 89, 'mfh2dqKWZV', 'zRUR4LpPSR');
INSERT INTO `stusummary` VALUES (288, 260, 'RFiH4nHlUi', 'iikvjBbRU2');
INSERT INTO `stusummary` VALUES (317, 659, '6JV8v6lcsh', 'MEIqAlLxs2');
INSERT INTO `stusummary` VALUES (678, 942, '8oAWN46d9Z', '90GeJDZOpK');
INSERT INTO `stusummary` VALUES (800, 650, '9jDWEEAqi0', 'bU2Jjr5KeO');
INSERT INTO `stusummary` VALUES (636, 960, 'omHAjh29Qo', '0fgzxtqqWl');
INSERT INTO `stusummary` VALUES (897, 527, '8Xn1ErriD5', 'qWTNdaeBgy');
INSERT INTO `stusummary` VALUES (634, 888, '7ajKD4rFGn', 'Lfsq8qRS2a');
INSERT INTO `stusummary` VALUES (411, 89, 'vUqj99Rbxy', 'ivBpsfldWZ');
INSERT INTO `stusummary` VALUES (9, 409, 'ESLIUXQlEZ', 'OXmuJQOarU');
INSERT INTO `stusummary` VALUES (756, 211, 'ulj3WWzLYk', 'RCyOcHNVaX');
INSERT INTO `stusummary` VALUES (936, 879, 'UpPZYGH4z4', 'YDSZsprhpv');
INSERT INTO `stusummary` VALUES (235, 390, 'ImxqME7faz', 'Ehuw4wHD6U');
INSERT INTO `stusummary` VALUES (655, 154, 'WULk4hXPDQ', 'YfMsFfaX7E');
INSERT INTO `stusummary` VALUES (152, 688, 'YWxUvw6GRG', 'oSNbGwsKWV');
INSERT INTO `stusummary` VALUES (857, 411, 'FnWtwgvtmc', 'b6N15vXkeu');
INSERT INTO `stusummary` VALUES (60, 68, 'TXXHPfJDUD', 'GUHOQy6OJm');
INSERT INTO `stusummary` VALUES (116, 274, '1NLUOcPB2q', 'Bxs0fyOwJP');
INSERT INTO `stusummary` VALUES (286, 937, 'pImTLWW0sV', 'FjVv536tw8');
INSERT INTO `stusummary` VALUES (202, 603, '4kLB33AXdV', 'eyZA9On1rN');
INSERT INTO `stusummary` VALUES (751, 8, 'BMnERm89dV', 'gVXfN4X9zm');
INSERT INTO `stusummary` VALUES (272, 372, 'CaNlfDCG3M', 'gqDfzNrdve');
INSERT INTO `stusummary` VALUES (457, 347, 'wbmteEOXpA', 'nugiH69uwf');
INSERT INTO `stusummary` VALUES (756, 242, 'CaT7hALXOL', 'sS6pZLCH08');
INSERT INTO `stusummary` VALUES (261, 477, 'U5ynRBQf0M', 'A5dgVMVkyF');
INSERT INTO `stusummary` VALUES (730, 432, 'PeF4eX9jfw', 'oqyQ2QgTLg');
INSERT INTO `stusummary` VALUES (537, 454, 'dtuMdYHjfb', 'b630R5r2wT');
INSERT INTO `stusummary` VALUES (351, 20, 'QvqBUy6EWr', 'CDnkauGV4g');
INSERT INTO `stusummary` VALUES (633, 384, '1bLrEwXH22', 'VHZy3D7IPU');
INSERT INTO `stusummary` VALUES (277, 128, 'EdxbJyfQ3f', 'xSG7jwVZmv');
INSERT INTO `stusummary` VALUES (405, 650, 'nkWlyd5AZB', 'ZCXj1ny9ql');
INSERT INTO `stusummary` VALUES (114, 37, 'Nhx4rTIxKI', 'xA4Yxj1Pho');
INSERT INTO `stusummary` VALUES (447, 98, 'YqNtz8b2LZ', 'AI9vYjQZl8');
INSERT INTO `stusummary` VALUES (675, 759, 'Yo7rXzYoeD', 'iYCzbE3m4Q');
INSERT INTO `stusummary` VALUES (793, 86, 'irnJxtqNfQ', '1tmy6mxjFc');
INSERT INTO `stusummary` VALUES (479, 127, 'iRomMYsotW', 'NDI0wGXmFI');
INSERT INTO `stusummary` VALUES (132, 113, '5YWS3xd2aS', 'wV7aqUOVFH');
INSERT INTO `stusummary` VALUES (545, 270, 'ZKgqdMfzPt', 'CDI5EBZ3T3');
INSERT INTO `stusummary` VALUES (355, 177, 'YazuNcl4qH', 'K37izRfVmH');
INSERT INTO `stusummary` VALUES (647, 82, 'FXjzCIPgtS', 'SOMWu7HVCJ');
INSERT INTO `stusummary` VALUES (118, 651, 'JHeweww5Yn', 'ENW9CJND1I');
INSERT INTO `stusummary` VALUES (764, 164, 'NMCyhk453T', 'tLS8idoc7j');
INSERT INTO `stusummary` VALUES (513, 302, 'g9XPLCqK1j', 'r7pcfbyf0I');
INSERT INTO `stusummary` VALUES (392, 468, 'TYdN9rnZ9n', 'ox2e1BzjxS');
INSERT INTO `stusummary` VALUES (291, 949, 'Odmc2JD3mD', 'P9qPOwM3Ga');
INSERT INTO `stusummary` VALUES (502, 264, 'UTiVDfdpaB', 'kcJueEl0FV');
INSERT INTO `stusummary` VALUES (471, 734, 'CITmqlIr3M', 'psHgeWrpXc');
INSERT INTO `stusummary` VALUES (601, 538, 'KOmFeHhbff', 'OJqfsEbLjB');
INSERT INTO `stusummary` VALUES (116, 31, 'OgZzrB7YSZ', '3cSsb2LPHg');
INSERT INTO `stusummary` VALUES (339, 252, 'L7qj4ZS9Tc', 'ZXCugpVj3O');
INSERT INTO `stusummary` VALUES (607, 956, 'wtPurO68pY', '6Ds9OGNuo5');
INSERT INTO `stusummary` VALUES (32, 863, 'DOBMfnhiCG', 'ZUxvT7QCPt');
INSERT INTO `stusummary` VALUES (612, 986, 'tA32Ko9sQb', 'Ks2OU17371');
INSERT INTO `stusummary` VALUES (101, 210, '3wLLWCBTbA', 'f6OVdCZmn8');
INSERT INTO `stusummary` VALUES (443, 818, 'N48KoAakYD', '1pVAc2gsRi');
INSERT INTO `stusummary` VALUES (854, 406, 'OHTm9agKcX', 'EG7NbOU3pA');
INSERT INTO `stusummary` VALUES (586, 35, 'YCV9gUDN4q', 'JMGXndafls');
INSERT INTO `stusummary` VALUES (520, 222, 'zeYW6fPKgl', 'seoo2Eayg9');
INSERT INTO `stusummary` VALUES (370, 333, 'oQ1BLqBoRu', 'vRWr809Dr0');
INSERT INTO `stusummary` VALUES (204, 493, 'pkDGI2PWOS', 'YxGqJXMrI0');
INSERT INTO `stusummary` VALUES (820, 331, 'EztOJpCsV8', 'bwLgkqPzCp');
INSERT INTO `stusummary` VALUES (260, 923, 'WMznVuEHNQ', 'pv81CdeLdj');
INSERT INTO `stusummary` VALUES (737, 933, 'QsoPguTS7a', 'xaFSSriMyz');
INSERT INTO `stusummary` VALUES (189, 698, 'mYC5kRLpp5', 'IpC56ktoy5');
INSERT INTO `stusummary` VALUES (598, 659, 'QRXEjdS55Q', 'lkwPDsPTOe');
INSERT INTO `stusummary` VALUES (101, 254, 'NxxRgpMSIF', 'NWix4zxavt');
INSERT INTO `stusummary` VALUES (4, 430, 'w6pcj8w1I9', 'CKKsme0FwJ');
INSERT INTO `stusummary` VALUES (51, 860, 'VmihUJmMH2', 'dNqlqa56iC');
INSERT INTO `stusummary` VALUES (194, 412, 'Zq6N5WqliL', 'uNk2SxffgC');
INSERT INTO `stusummary` VALUES (223, 202, 'JOjcoasVYq', 'WI42gNZfua');
INSERT INTO `stusummary` VALUES (238, 792, 'wWhuHAua9D', 'emQFE62q9Y');
INSERT INTO `stusummary` VALUES (873, 613, 'CflU2qZnbN', '8tCl2YiB4W');
INSERT INTO `stusummary` VALUES (837, 994, 'cWOGCeXUAf', 'RlDA8YWZw2');
INSERT INTO `stusummary` VALUES (904, 189, 'SZINZUuyJI', 'e6Dzt6Bfbz');
INSERT INTO `stusummary` VALUES (885, 333, 'x7ZMqju7hm', 'tSkfvUk0us');
INSERT INTO `stusummary` VALUES (328, 909, 'Jf7jZpI1ig', 'UJUK5sbgMu');
INSERT INTO `stusummary` VALUES (827, 812, 'j87aR2JEmA', 'W7UCJcY8g2');
INSERT INTO `stusummary` VALUES (724, 926, 'OoK2AYyBhp', 'oevLxWYQ8B');
INSERT INTO `stusummary` VALUES (867, 85, '9FPrdK7sdA', 'bZFep4Poxx');
INSERT INTO `stusummary` VALUES (76, 401, 'wpOj8eqQtH', 'DgMmfBYg80');
INSERT INTO `stusummary` VALUES (708, 427, 'BHWYJmOyBM', 'wMnYR1a76Z');
INSERT INTO `stusummary` VALUES (706, 577, '0Hv73YcZWT', 'rGVonfAIfW');
INSERT INTO `stusummary` VALUES (783, 838, 'RgknDyXHv6', 'I802lLK6rM');
INSERT INTO `stusummary` VALUES (404, 987, 'iMzJKMgivv', 'ReSbaTcFzz');
INSERT INTO `stusummary` VALUES (610, 798, 'Yj5uwAxNXv', 'XZYw5jVomv');
INSERT INTO `stusummary` VALUES (724, 211, 'h2WhkupgZ6', 'VfF0bTLr47');
INSERT INTO `stusummary` VALUES (326, 874, 'hx0q3LMIYS', 'dU0OnszIyr');
INSERT INTO `stusummary` VALUES (441, 388, 'uit3xbxUCB', 'dv9Ta2VpGL');
INSERT INTO `stusummary` VALUES (92, 935, 'qisBDCwbxg', 'kt3jUcmb1F');
INSERT INTO `stusummary` VALUES (334, 6, 'tQPwY7iKzK', 'hPXoPgzpF0');
INSERT INTO `stusummary` VALUES (804, 641, 'LWeii2kgHE', 'ca3h35oVMl');
INSERT INTO `stusummary` VALUES (980, 340, 'uFgC7dHoCz', 'NHU8RWinFt');
INSERT INTO `stusummary` VALUES (979, 988, 'nFz2zV0LJQ', 'GB5vvE0KUy');
INSERT INTO `stusummary` VALUES (585, 975, 'NRnBuTumiK', '3bZUfuJbS8');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username_UNIQUE`(`username`) USING BTREE,
  INDEX `username_INDEX`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '001', '001');
INSERT INTO `user` VALUES (2, '111', '111');
INSERT INTO `user` VALUES (3, '788', '788');
INSERT INTO `user` VALUES (4, '687', '687');
INSERT INTO `user` VALUES (5, '228', '228');
INSERT INTO `user` VALUES (6, '221', '221');
INSERT INTO `user` VALUES (7, '002', '002');
INSERT INTO `user` VALUES (8, '003', '003');

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles`  (
  `user_id` int(0) NOT NULL,
  `role_id` int(0) NULL DEFAULT NULL,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE,
  CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf16 COLLATE = utf16_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
INSERT INTO `user_roles` VALUES (1, 3);
INSERT INTO `user_roles` VALUES (2, 2);
INSERT INTO `user_roles` VALUES (3, 1);
INSERT INTO `user_roles` VALUES (4, 4);
INSERT INTO `user_roles` VALUES (5, 5);
INSERT INTO `user_roles` VALUES (6, 6);
INSERT INTO `user_roles` VALUES (7, 7);
INSERT INTO `user_roles` VALUES (8, 8);
INSERT INTO `user_roles` VALUES (8, 2);

-- ----------------------------
-- Table structure for volunteerservice
-- ----------------------------
DROP TABLE IF EXISTS `volunteerservice`;
CREATE TABLE `volunteerservice`  (
  `ID` int(0) NOT NULL AUTO_INCREMENT,
  `studentID` int(0) NOT NULL,
  `duration` float NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `studentID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf16 COLLATE = utf16_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of volunteerservice
-- ----------------------------
INSERT INTO `volunteerservice` VALUES (1, 1, 114.88, 1);
INSERT INTO `volunteerservice` VALUES (2, 2, 261.97, 1);
INSERT INTO `volunteerservice` VALUES (3, 3, 632.39, 1);
INSERT INTO `volunteerservice` VALUES (4, 4, 785.26, 1);
INSERT INTO `volunteerservice` VALUES (5, 5, 665.58, 1);
INSERT INTO `volunteerservice` VALUES (6, 6, 186.78, 1);
INSERT INTO `volunteerservice` VALUES (7, 7, 768.71, 1);
INSERT INTO `volunteerservice` VALUES (8, 8, 764.38, 1);
INSERT INTO `volunteerservice` VALUES (9, 9, 170.27, 1);
INSERT INTO `volunteerservice` VALUES (10, 10, 145.87, 1);
INSERT INTO `volunteerservice` VALUES (11, 11, 966.87, 1);
INSERT INTO `volunteerservice` VALUES (12, 12, 138.34, 1);
INSERT INTO `volunteerservice` VALUES (13, 13, 368.9, 1);
INSERT INTO `volunteerservice` VALUES (14, 14, 950.32, 1);
INSERT INTO `volunteerservice` VALUES (15, 15, 272.8, 1);
INSERT INTO `volunteerservice` VALUES (16, 16, 122.46, 1);
INSERT INTO `volunteerservice` VALUES (17, 17, 545.26, 1);
INSERT INTO `volunteerservice` VALUES (18, 18, 628.58, 1);
INSERT INTO `volunteerservice` VALUES (19, 19, 814.76, 1);
INSERT INTO `volunteerservice` VALUES (20, 20, 495.97, 0);
INSERT INTO `volunteerservice` VALUES (21, 21, 693.16, 1);
INSERT INTO `volunteerservice` VALUES (22, 22, 95.58, 0);
INSERT INTO `volunteerservice` VALUES (23, 23, 342.69, 0);
INSERT INTO `volunteerservice` VALUES (24, 24, 61.61, 0);
INSERT INTO `volunteerservice` VALUES (25, 25, 710.72, 0);
INSERT INTO `volunteerservice` VALUES (26, 26, 589.41, 0);
INSERT INTO `volunteerservice` VALUES (27, 27, 615.53, 0);
INSERT INTO `volunteerservice` VALUES (28, 28, 581.55, 0);
INSERT INTO `volunteerservice` VALUES (29, 29, 146.54, 0);
INSERT INTO `volunteerservice` VALUES (30, 30, 757.79, 0);
INSERT INTO `volunteerservice` VALUES (31, 31, 387.7, 0);
INSERT INTO `volunteerservice` VALUES (32, 32, 354.04, 0);
INSERT INTO `volunteerservice` VALUES (33, 33, 681.88, 0);
INSERT INTO `volunteerservice` VALUES (34, 34, 554.5, 0);
INSERT INTO `volunteerservice` VALUES (35, 35, 26.65, 0);
INSERT INTO `volunteerservice` VALUES (36, 36, 82.35, 0);
INSERT INTO `volunteerservice` VALUES (37, 37, 309.62, 0);
INSERT INTO `volunteerservice` VALUES (38, 38, 411.13, 0);
INSERT INTO `volunteerservice` VALUES (39, 39, 420.44, 0);
INSERT INTO `volunteerservice` VALUES (40, 40, 552.97, 0);
INSERT INTO `volunteerservice` VALUES (41, 41, 236.42, 0);
INSERT INTO `volunteerservice` VALUES (42, 42, 689.74, 0);
INSERT INTO `volunteerservice` VALUES (43, 43, 876.45, 0);
INSERT INTO `volunteerservice` VALUES (44, 44, 853.01, 0);
INSERT INTO `volunteerservice` VALUES (45, 45, 756.49, 0);
INSERT INTO `volunteerservice` VALUES (46, 46, 560.36, 0);
INSERT INTO `volunteerservice` VALUES (47, 47, 921.38, 0);
INSERT INTO `volunteerservice` VALUES (48, 48, 542.51, 0);
INSERT INTO `volunteerservice` VALUES (49, 49, 764.3, 0);
INSERT INTO `volunteerservice` VALUES (50, 50, 487.97, 0);
INSERT INTO `volunteerservice` VALUES (51, 51, 95.78, 0);
INSERT INTO `volunteerservice` VALUES (52, 52, 957.04, 0);
INSERT INTO `volunteerservice` VALUES (53, 53, 656.45, 0);
INSERT INTO `volunteerservice` VALUES (54, 54, 835.78, 0);
INSERT INTO `volunteerservice` VALUES (55, 55, 330.35, 0);
INSERT INTO `volunteerservice` VALUES (56, 56, 461.56, 0);
INSERT INTO `volunteerservice` VALUES (57, 57, 872.96, 0);
INSERT INTO `volunteerservice` VALUES (58, 58, 228.38, 0);
INSERT INTO `volunteerservice` VALUES (59, 59, 880.91, 0);
INSERT INTO `volunteerservice` VALUES (60, 60, 588.07, 0);
INSERT INTO `volunteerservice` VALUES (61, 61, 272.49, 0);
INSERT INTO `volunteerservice` VALUES (62, 62, 24.67, 0);
INSERT INTO `volunteerservice` VALUES (63, 63, 32.97, 0);
INSERT INTO `volunteerservice` VALUES (64, 64, 161.57, 0);
INSERT INTO `volunteerservice` VALUES (65, 65, 162.3, 0);
INSERT INTO `volunteerservice` VALUES (66, 66, 494.44, 0);
INSERT INTO `volunteerservice` VALUES (67, 67, 937.14, 0);
INSERT INTO `volunteerservice` VALUES (68, 68, 198.54, 0);
INSERT INTO `volunteerservice` VALUES (69, 69, 239.49, 0);
INSERT INTO `volunteerservice` VALUES (70, 70, 581.73, 0);
INSERT INTO `volunteerservice` VALUES (71, 71, 870.43, 0);
INSERT INTO `volunteerservice` VALUES (72, 72, 528.11, 0);
INSERT INTO `volunteerservice` VALUES (73, 73, 788.03, 0);
INSERT INTO `volunteerservice` VALUES (74, 74, 724.12, 0);
INSERT INTO `volunteerservice` VALUES (75, 75, 525.74, 0);
INSERT INTO `volunteerservice` VALUES (76, 76, 2.43, 0);
INSERT INTO `volunteerservice` VALUES (77, 77, 580.24, 0);
INSERT INTO `volunteerservice` VALUES (78, 78, 190.08, 0);
INSERT INTO `volunteerservice` VALUES (79, 79, 415.42, 0);
INSERT INTO `volunteerservice` VALUES (80, 80, 392.43, 0);
INSERT INTO `volunteerservice` VALUES (81, 81, 958.08, 0);
INSERT INTO `volunteerservice` VALUES (82, 82, 396.51, 0);
INSERT INTO `volunteerservice` VALUES (83, 83, 214.52, 0);
INSERT INTO `volunteerservice` VALUES (84, 84, 578.95, 0);
INSERT INTO `volunteerservice` VALUES (85, 85, 67.18, 0);
INSERT INTO `volunteerservice` VALUES (86, 86, 633.47, 0);
INSERT INTO `volunteerservice` VALUES (87, 87, 283.55, 0);
INSERT INTO `volunteerservice` VALUES (88, 88, 413.99, 0);
INSERT INTO `volunteerservice` VALUES (89, 89, 528.75, 0);
INSERT INTO `volunteerservice` VALUES (90, 90, 396.66, 0);
INSERT INTO `volunteerservice` VALUES (91, 91, 805.87, 0);
INSERT INTO `volunteerservice` VALUES (92, 92, 252.92, 0);
INSERT INTO `volunteerservice` VALUES (93, 93, 114.46, 0);
INSERT INTO `volunteerservice` VALUES (94, 94, 707.71, 0);
INSERT INTO `volunteerservice` VALUES (95, 95, 514.51, 0);
INSERT INTO `volunteerservice` VALUES (96, 96, 838.06, 0);
INSERT INTO `volunteerservice` VALUES (97, 97, 741.94, 0);
INSERT INTO `volunteerservice` VALUES (98, 98, 850.37, 0);
INSERT INTO `volunteerservice` VALUES (99, 99, 930.05, 0);
INSERT INTO `volunteerservice` VALUES (100, 100, 608.37, 0);

-- ----------------------------
-- Table structure for weights
-- ----------------------------
DROP TABLE IF EXISTS `weights`;
CREATE TABLE `weights`  (
  `gpa` double NULL DEFAULT 1,
  `social` double NULL DEFAULT 1,
  `sci` double NULL DEFAULT 1,
  `volun` double NULL DEFAULT 1,
  `org` double NULL DEFAULT 1,
  `sum` double NULL DEFAULT 0,
  `gpaLimit` double NULL DEFAULT 0,
  `socialLimit` double NULL DEFAULT 0,
  `sciLimit` double NULL DEFAULT 0,
  `volunLimit` double NULL DEFAULT 0,
  `orgLimit` double NULL DEFAULT 0,
  `sumLimit` double NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of weights
-- ----------------------------
INSERT INTO `weights` VALUES (1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0);

SET FOREIGN_KEY_CHECKS = 1;
