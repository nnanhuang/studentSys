/*
 Navicat Premium Data Transfer

 Source Server         : MYSQL
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : minjie

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 23/06/2023 02:57:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for major
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major`  (
  `ID` int NOT NULL,
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
-- Table structure for orgservice
-- ----------------------------
DROP TABLE IF EXISTS `orgservice`;
CREATE TABLE `orgservice`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `studentID` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `time` varchar(50) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`, `studentID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf16 COLLATE = utf16_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orgservice
-- ----------------------------
INSERT INTO `orgservice` VALUES (1, '1', '哈哈哈哈', '哈哈哈哈');
INSERT INTO `orgservice` VALUES (4, '2', '嘿嘿嘿黑', '急急急');
INSERT INTO `orgservice` VALUES (5, '1', '阿斯顿发送到', '是打发点');

-- ----------------------------
-- Table structure for school
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school`  (
  `ID` int NOT NULL,
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
  `ID` int NOT NULL AUTO_INCREMENT,
  `studentID` int NOT NULL,
  `content` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`, `studentID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf16 COLLATE = utf16_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sciperformance
-- ----------------------------
INSERT INTO `sciperformance` VALUES (1, 1, '8sbGFhDxw1', '专利');
INSERT INTO `sciperformance` VALUES (2, 2, 'tNj832XdZP', '专利');
INSERT INTO `sciperformance` VALUES (3, 3, 'sbhut7CVco', '专利');
INSERT INTO `sciperformance` VALUES (4, 4, '3zK44kdc00', '其他');
INSERT INTO `sciperformance` VALUES (5, 5, 'LexyK2jUpm', '比赛');
INSERT INTO `sciperformance` VALUES (6, 6, 'wlxyMGmBQS', '论文');
INSERT INTO `sciperformance` VALUES (7, 7, 'hwRCOGXjbS', '专利');
INSERT INTO `sciperformance` VALUES (8, 8, 'Ap2JEDQqvw', '比赛');
INSERT INTO `sciperformance` VALUES (9, 9, 'Yvk5RfOYM5', '论文');
INSERT INTO `sciperformance` VALUES (10, 10, 'Ww24PE6zAY', '其他');
INSERT INTO `sciperformance` VALUES (11, 11, 'prPysgoYi5', '比赛');
INSERT INTO `sciperformance` VALUES (12, 12, 'QxIT6eQdvn', '论文');
INSERT INTO `sciperformance` VALUES (13, 13, 'mIfv9j8Wnu', '比赛');
INSERT INTO `sciperformance` VALUES (14, 14, 'oAWxgC8d8m', '论文');
INSERT INTO `sciperformance` VALUES (15, 15, 'O5XdLehAQY', '论文');
INSERT INTO `sciperformance` VALUES (16, 16, '2J82eLavlG', '论文');
INSERT INTO `sciperformance` VALUES (17, 17, 'keiNlDb8T1', '论文');
INSERT INTO `sciperformance` VALUES (18, 18, 'KZNwXTU26H', '其他');
INSERT INTO `sciperformance` VALUES (19, 19, 'UDHk9rhbPh', '比赛');
INSERT INTO `sciperformance` VALUES (20, 20, 'czVPqjbSZG', '专利');
INSERT INTO `sciperformance` VALUES (21, 21, '21nM3E3sd1', '其他');
INSERT INTO `sciperformance` VALUES (22, 22, 'I23PgrOV9v', '比赛');
INSERT INTO `sciperformance` VALUES (23, 23, 'st40KgRMZm', '其他');
INSERT INTO `sciperformance` VALUES (24, 24, 'EFtazJNXmq', '比赛');
INSERT INTO `sciperformance` VALUES (25, 25, 'x1c7PEormc', '其他');
INSERT INTO `sciperformance` VALUES (26, 26, 'sCiCGyWYqv', '比赛');
INSERT INTO `sciperformance` VALUES (27, 27, '3diXEGNcTV', '论文');
INSERT INTO `sciperformance` VALUES (28, 28, 'dpnMiU1cJJ', '专利');
INSERT INTO `sciperformance` VALUES (29, 29, 'ak2eyYOSVI', '比赛');
INSERT INTO `sciperformance` VALUES (30, 30, 'SwLZjNZCxs', '其他');
INSERT INTO `sciperformance` VALUES (31, 31, '8h1ZbXmC6q', '论文');
INSERT INTO `sciperformance` VALUES (32, 32, 'L2w949bi3M', '比赛');
INSERT INTO `sciperformance` VALUES (33, 33, 'CVw9nKuVFi', '专利');
INSERT INTO `sciperformance` VALUES (34, 34, 'l3OJKe1TSi', '论文');
INSERT INTO `sciperformance` VALUES (35, 35, 'kolNqeZbrQ', '比赛');
INSERT INTO `sciperformance` VALUES (36, 36, '5wHHzYJAMu', '其他');
INSERT INTO `sciperformance` VALUES (37, 37, 'KtrIzWIT3E', '比赛');
INSERT INTO `sciperformance` VALUES (38, 38, 'R4ceWvtJYF', '论文');
INSERT INTO `sciperformance` VALUES (39, 39, 'd9iLjjEpeA', '比赛');
INSERT INTO `sciperformance` VALUES (40, 40, '53yikAsbhk', '专利');
INSERT INTO `sciperformance` VALUES (41, 41, 'RiwcaA0UKm', '论文');
INSERT INTO `sciperformance` VALUES (42, 42, 'qnGXN06E2r', '其他');
INSERT INTO `sciperformance` VALUES (43, 43, 'U99Ji4gJzm', '其他');
INSERT INTO `sciperformance` VALUES (44, 44, 'LH3FP4Gz5W', '论文');
INSERT INTO `sciperformance` VALUES (45, 45, '4VFUDMw83k', '专利');
INSERT INTO `sciperformance` VALUES (46, 46, 'sBYQlqCMdR', '其他');
INSERT INTO `sciperformance` VALUES (47, 47, 'AUKtPsE4pe', '专利');
INSERT INTO `sciperformance` VALUES (48, 48, 'N9hj5h9sxW', '其他');
INSERT INTO `sciperformance` VALUES (49, 49, 'ZxaePTjjBB', '专利');
INSERT INTO `sciperformance` VALUES (50, 50, 'A2jrF9vK7J', '论文');
INSERT INTO `sciperformance` VALUES (51, 51, 'WGeKfKw5jc', '论文');
INSERT INTO `sciperformance` VALUES (52, 52, 'joAZYLlXwt', '专利');
INSERT INTO `sciperformance` VALUES (53, 53, 'V7dFMjhuP3', '其他');
INSERT INTO `sciperformance` VALUES (54, 54, 'DvPlFFNjSB', '其他');
INSERT INTO `sciperformance` VALUES (55, 55, 'v69qvt8alO', '论文');
INSERT INTO `sciperformance` VALUES (56, 56, '0AB659aUlM', '论文');
INSERT INTO `sciperformance` VALUES (57, 57, '3YL1GiTrlN', '其他');
INSERT INTO `sciperformance` VALUES (58, 58, 'TXgqwDjYzw', '专利');
INSERT INTO `sciperformance` VALUES (59, 59, '2C0BPSoO8w', '论文');
INSERT INTO `sciperformance` VALUES (60, 60, 'OsJ9UtMu3d', '论文');
INSERT INTO `sciperformance` VALUES (61, 61, 'YUlF3ceKla', '比赛');
INSERT INTO `sciperformance` VALUES (62, 62, 'At5keTQ5Dj', '比赛');
INSERT INTO `sciperformance` VALUES (63, 63, 'AjWLjMWU5s', '专利');
INSERT INTO `sciperformance` VALUES (64, 64, 'cRk91B6nsf', '其他');
INSERT INTO `sciperformance` VALUES (65, 65, 'lLaUSlFX2Q', '论文');
INSERT INTO `sciperformance` VALUES (66, 66, 'DWRwGqpIps', '其他');
INSERT INTO `sciperformance` VALUES (67, 67, 'dalp99XZJR', '论文');
INSERT INTO `sciperformance` VALUES (68, 68, '250K3hgvwU', '比赛');
INSERT INTO `sciperformance` VALUES (69, 69, 'sdG4rnJSWu', '专利');
INSERT INTO `sciperformance` VALUES (70, 70, 'yYuxlE0W0v', '论文');
INSERT INTO `sciperformance` VALUES (71, 71, 'cQxNcy3egL', '比赛');
INSERT INTO `sciperformance` VALUES (72, 72, 'KTsJPPVIgy', '比赛');
INSERT INTO `sciperformance` VALUES (73, 73, 'wfxbcmKHUm', '专利');
INSERT INTO `sciperformance` VALUES (74, 74, 'V1WPau78m9', '论文');
INSERT INTO `sciperformance` VALUES (75, 75, '21qvpSA8c6', '专利');
INSERT INTO `sciperformance` VALUES (76, 76, 'C8cejmlQ35', '比赛');
INSERT INTO `sciperformance` VALUES (77, 77, 'tbHSvwOxal', '专利');
INSERT INTO `sciperformance` VALUES (78, 78, 'thRPAjeHqj', '专利');
INSERT INTO `sciperformance` VALUES (79, 79, 'vTi3Reqzcc', '其他');
INSERT INTO `sciperformance` VALUES (80, 80, 'CfLxfhvFmw', '专利');
INSERT INTO `sciperformance` VALUES (81, 81, 'ZCNjSXVuiE', '其他');
INSERT INTO `sciperformance` VALUES (82, 82, 'AEWUA3PKfS', '比赛');
INSERT INTO `sciperformance` VALUES (83, 83, 'Qcpxhe4JgA', '专利');
INSERT INTO `sciperformance` VALUES (84, 84, 'oR9enBzBHk', '论文');
INSERT INTO `sciperformance` VALUES (85, 85, '5DEZ4QisH2', '其他');
INSERT INTO `sciperformance` VALUES (86, 86, 'WGcE8J7M6P', '其他');
INSERT INTO `sciperformance` VALUES (87, 87, 'fvi6loXVzn', '专利');
INSERT INTO `sciperformance` VALUES (88, 88, '3iKT1qZchV', '其他');
INSERT INTO `sciperformance` VALUES (89, 89, '11un3RliIm', '论文');
INSERT INTO `sciperformance` VALUES (90, 90, '68k4YjoQbn', '比赛');
INSERT INTO `sciperformance` VALUES (91, 91, 'zVsyOBH5Yn', '论文');
INSERT INTO `sciperformance` VALUES (92, 92, 'DbsZALUN8W', '专利');
INSERT INTO `sciperformance` VALUES (93, 93, 'Q8Fek1HBDq', '论文');
INSERT INTO `sciperformance` VALUES (94, 94, 'h8jEWlCG4D', '专利');
INSERT INTO `sciperformance` VALUES (95, 95, 'tISBStFeoe', '比赛');
INSERT INTO `sciperformance` VALUES (96, 96, 'HaAqZYIFsg', '其他');
INSERT INTO `sciperformance` VALUES (97, 97, 'AFAxYfxCM8', '比赛');
INSERT INTO `sciperformance` VALUES (98, 98, 'KoxHO6sTGP', '论文');
INSERT INTO `sciperformance` VALUES (99, 99, 'Fi9skbdD4n', '其他');
INSERT INTO `sciperformance` VALUES (100, 100, 'AjqpZkQOmI', '其他');
INSERT INTO `sciperformance` VALUES (101, 788, '啊实打实大发', '论文');
INSERT INTO `sciperformance` VALUES (102, 788, '阿达', '论文');
INSERT INTO `sciperformance` VALUES (103, 788, '阿达', '论文');

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `studentID` int NOT NULL,
  `score` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `studentID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf16 COLLATE = utf16_unicode_ci ROW_FORMAT = Dynamic;

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
  `studentID` int NOT NULL,
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
INSERT INTO `scoresum` VALUES (1, 100, 1, NULL, 11, NULL, NULL, NULL);
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
  `ID` int NOT NULL,
  `studentID` int NOT NULL,
  `time` datetime NULL DEFAULT NULL,
  `theme` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `sponsor` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `duration` float NULL DEFAULT NULL,
  PRIMARY KEY (`ID`, `studentID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf16 COLLATE = utf16_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of socialpractice
-- ----------------------------
INSERT INTO `socialpractice` VALUES (1, 1, '2006-08-11 06:57:30', 'Industrial industry', 'He Kee Trading Company Limited', 15.28);
INSERT INTO `socialpractice` VALUES (2, 2, '2005-09-23 23:50:47', 'Industrial industry', 'Yuan Kee Toy Company Limited', 482.6);
INSERT INTO `socialpractice` VALUES (3, 3, '2017-05-18 06:42:00', 'Pharmaceutical industry', 'Yoshida Corporation', 995.82);
INSERT INTO `socialpractice` VALUES (4, 4, '2007-01-18 18:31:50', 'Financial services industry', 'Wallace Food Inc.', 865.7);
INSERT INTO `socialpractice` VALUES (5, 5, '2012-12-06 06:13:15', 'Electronics industry', 'Marvin Trading LLC', 141.78);
INSERT INTO `socialpractice` VALUES (6, 6, '2014-07-07 20:43:12', 'Manufacturing industry', 'Xiuying Company Limited', 937.81);
INSERT INTO `socialpractice` VALUES (7, 7, '2001-07-25 01:22:13', 'Logistic industry', 'Olson Network Systems Inc.', 477.68);
INSERT INTO `socialpractice` VALUES (8, 8, '2002-10-09 10:25:44', 'Landed property industry', 'Spencer Brothers LLC', 55.01);
INSERT INTO `socialpractice` VALUES (9, 9, '2019-01-19 07:43:15', 'Pharmaceutical industry', 'Yeow Kee Network Systems Limited', 867.05);
INSERT INTO `socialpractice` VALUES (10, 10, '2004-07-18 00:11:38', 'Consulting industry', 'Dai Kee Company Limited', 873.97);
INSERT INTO `socialpractice` VALUES (11, 11, '2016-02-05 17:45:27', 'Manufacturing industry', 'Itsuki Food Corporation', 920.06);
INSERT INTO `socialpractice` VALUES (12, 12, '2020-12-27 19:41:06', 'Trading industry', 'Anqi Industrial Company Limited', 714.59);
INSERT INTO `socialpractice` VALUES (13, 13, '2008-02-17 05:19:24', 'Consulting industry', 'Anqi Engineering Company Limited', 380.42);
INSERT INTO `socialpractice` VALUES (14, 14, '2020-09-12 12:38:50', 'Logistic industry', 'Zhennan Consultants Company Limited', 763.36);
INSERT INTO `socialpractice` VALUES (15, 15, '2000-06-22 20:39:41', 'Electronics industry', 'Zitao Company Limited', 140.15);
INSERT INTO `socialpractice` VALUES (16, 16, '2003-04-24 10:30:43', 'Information technology industry', 'Ma Kee Trading Limited', 937.27);
INSERT INTO `socialpractice` VALUES (17, 17, '2019-02-18 06:04:22', 'Financial services industry', 'Ethel Inc.', 518.34);
INSERT INTO `socialpractice` VALUES (18, 18, '2010-02-12 06:54:38', 'Logistic industry', 'Rui Pharmaceutical Company Limited', 95.36);
INSERT INTO `socialpractice` VALUES (19, 19, '2005-09-28 22:03:18', 'Landed property industry', 'Shimizu Corporation', 919.12);
INSERT INTO `socialpractice` VALUES (20, 20, '2008-03-02 06:20:52', 'Logistic industry', 'Frederick Network Systems LLC', 313.07);
INSERT INTO `socialpractice` VALUES (21, 21, '2005-03-30 14:19:20', 'Financial services industry', 'Zitao Technology Company Limited', 476.32);
INSERT INTO `socialpractice` VALUES (22, 22, '2001-09-12 11:55:18', 'Trading industry', 'Tao Kee Development & Trading Company Limited', 114.98);
INSERT INTO `socialpractice` VALUES (23, 23, '2010-07-12 20:30:31', 'Consulting industry', 'Xiaoming Property Company Limited', 239.7);
INSERT INTO `socialpractice` VALUES (24, 24, '2010-02-21 23:52:45', 'Catering industry', 'Zitao Food Company Limited', 169.83);
INSERT INTO `socialpractice` VALUES (25, 25, '2020-03-24 08:40:15', 'Electronics industry', 'Ka Keung Development & Trading Limited', 263.04);
INSERT INTO `socialpractice` VALUES (26, 26, '2012-07-26 04:03:05', 'Telecommunication industry', 'Kenta Residence Corporation', 330.68);
INSERT INTO `socialpractice` VALUES (27, 27, '2018-08-21 02:00:10', 'Trading industry', 'Mills Brothers Network Systems Inc.', 307.16);
INSERT INTO `socialpractice` VALUES (28, 28, '2003-12-15 14:46:05', 'Catering industry', 'Sakamoto Food Corporation', 126.38);
INSERT INTO `socialpractice` VALUES (29, 29, '2003-05-20 22:46:09', 'Financial services industry', 'Adams Network Systems LLC', 939.57);
INSERT INTO `socialpractice` VALUES (30, 30, '2009-10-20 09:23:22', 'Logistic industry', 'Fung Kee Network Systems Limited', 195.84);
INSERT INTO `socialpractice` VALUES (31, 31, '2012-09-27 19:45:40', 'Consulting industry', 'Xiaoming Toy Company Limited', 660.56);
INSERT INTO `socialpractice` VALUES (32, 32, '2004-01-26 05:16:42', 'Pharmaceutical industry', 'Seiko Food Corporation', 6.04);
INSERT INTO `socialpractice` VALUES (33, 33, '2019-11-01 12:13:03', 'Industrial industry', 'Maruyama Network Systems Corporation', 699.87);
INSERT INTO `socialpractice` VALUES (34, 34, '2000-09-16 04:16:37', 'Telecommunication industry', 'Zhennan Consultants Company Limited', 781.12);
INSERT INTO `socialpractice` VALUES (35, 35, '2013-06-10 14:23:31', 'Logistic industry', 'Lu Pharmaceutical Company Limited', 346.4);
INSERT INTO `socialpractice` VALUES (36, 36, '2012-07-03 20:26:21', 'Landed property industry', 'Zhong Kee Company Limited', 793.31);
INSERT INTO `socialpractice` VALUES (37, 37, '2023-01-05 13:27:22', 'Telecommunication industry', 'Ellen Electronic LLC', 974.42);
INSERT INTO `socialpractice` VALUES (38, 38, '2011-05-24 18:18:04', 'Industrial industry', 'Kikuchi Telecommunication Corporation', 539.43);
INSERT INTO `socialpractice` VALUES (39, 39, '2004-12-19 14:00:07', 'Financial services industry', 'Aoshi Corporation', 100.29);
INSERT INTO `socialpractice` VALUES (40, 40, '2010-03-27 21:25:54', 'Financial services industry', 'Tao Kee Network Systems Company Limited', 530.5);
INSERT INTO `socialpractice` VALUES (41, 41, '2006-02-24 09:45:03', 'Trading industry', 'Lan Company Limited', 194.37);
INSERT INTO `socialpractice` VALUES (42, 42, '2010-12-19 20:39:42', 'Engineering industry', 'Martin Toy LLC', 878.52);
INSERT INTO `socialpractice` VALUES (43, 43, '2005-10-12 09:40:59', 'Consulting industry', 'Moreno Technology LLC', 975.52);
INSERT INTO `socialpractice` VALUES (44, 44, '2004-01-21 04:54:40', 'Electronics industry', 'Arimura Corporation', 395.66);
INSERT INTO `socialpractice` VALUES (45, 45, '2018-11-27 22:08:17', 'Trading industry', 'Yamada Food Corporation', 84.4);
INSERT INTO `socialpractice` VALUES (46, 46, '2006-10-21 10:36:54', 'Manufacturing industry', 'Sarah Inc.', 952.45);
INSERT INTO `socialpractice` VALUES (47, 47, '2010-04-16 21:07:00', 'Engineering industry', 'Chan\'s Limited', 377.46);
INSERT INTO `socialpractice` VALUES (48, 48, '2017-11-13 14:29:18', 'Electronics industry', 'Denise Inc.', 368.9);
INSERT INTO `socialpractice` VALUES (49, 49, '2011-11-17 05:10:25', 'Catering industry', 'Siu Wai Consultants Limited', 863.03);
INSERT INTO `socialpractice` VALUES (50, 50, '2008-02-23 15:33:47', 'Telecommunication industry', 'Carter\'s Toy LLC', 982.89);
INSERT INTO `socialpractice` VALUES (51, 51, '2009-02-06 07:37:19', 'Financial services industry', 'Takuya Corporation', 807.1);
INSERT INTO `socialpractice` VALUES (52, 52, '2007-07-12 03:10:32', 'Logistic industry', 'Daichi Logistic Corporation', 521.41);
INSERT INTO `socialpractice` VALUES (53, 53, '2005-11-18 03:40:51', 'Engineering industry', 'Fang Kee Company Limited', 903.67);
INSERT INTO `socialpractice` VALUES (54, 54, '2000-03-03 13:54:30', 'Engineering industry', 'Rebecca Inc.', 748.36);
INSERT INTO `socialpractice` VALUES (55, 55, '2002-10-31 02:20:44', 'Consulting industry', 'Wright Brothers Network Systems Inc.', 442.83);
INSERT INTO `socialpractice` VALUES (56, 56, '2007-12-21 04:00:48', 'Pharmaceutical industry', 'Chang Kee Technology Limited', 833.43);
INSERT INTO `socialpractice` VALUES (57, 57, '2016-08-21 10:03:09', 'Engineering industry', 'Marie Consultants Inc.', 290.52);
INSERT INTO `socialpractice` VALUES (58, 58, '2010-10-31 17:05:51', 'Engineering industry', 'Cheng Toy Company Limited', 746.07);
INSERT INTO `socialpractice` VALUES (59, 59, '2008-09-02 11:37:17', 'Logistic industry', 'Miu Corporation', 736.99);
INSERT INTO `socialpractice` VALUES (60, 60, '2015-08-05 08:21:09', 'Landed property industry', 'Itsuki Corporation', 136.5);
INSERT INTO `socialpractice` VALUES (61, 61, '2002-06-10 21:08:43', 'Consulting industry', 'Wai Man Pharmaceutical Limited', 298.43);
INSERT INTO `socialpractice` VALUES (62, 62, '2002-01-01 03:32:49', 'Landed property industry', 'Ryota Corporation', 261.34);
INSERT INTO `socialpractice` VALUES (63, 63, '2018-05-07 22:49:51', 'Engineering industry', 'Tang Kee Company Limited', 511.2);
INSERT INTO `socialpractice` VALUES (64, 64, '2014-06-07 13:31:47', 'Consulting industry', 'Wai Man Communications Limited', 850.65);
INSERT INTO `socialpractice` VALUES (65, 65, '2012-06-08 20:23:21', 'Manufacturing industry', 'Jiang Kee Telecommunication Company Limited', 521.1);
INSERT INTO `socialpractice` VALUES (66, 66, '2001-01-15 06:57:53', 'Logistic industry', 'Nishimura Food Corporation', 806.4);
INSERT INTO `socialpractice` VALUES (67, 67, '2005-05-07 11:37:56', 'Catering industry', 'Feng Kee Food Company Limited', 369.17);
INSERT INTO `socialpractice` VALUES (68, 68, '2000-09-23 18:20:53', 'Consulting industry', 'Thomas Communications LLC', 808.06);
INSERT INTO `socialpractice` VALUES (69, 69, '2001-08-19 17:21:02', 'Engineering industry', 'Rui Company Limited', 312.79);
INSERT INTO `socialpractice` VALUES (70, 70, '2007-11-19 14:20:53', 'Electronics industry', 'Yuto Communications Corporation', 793.37);
INSERT INTO `socialpractice` VALUES (71, 71, '2002-04-13 04:46:09', 'Trading industry', 'Morales\'s Trading LLC', 997.56);
INSERT INTO `socialpractice` VALUES (72, 72, '2009-10-20 12:18:40', 'Financial services industry', 'Kaito Technology Corporation', 816.79);
INSERT INTO `socialpractice` VALUES (73, 73, '2008-08-31 06:51:18', 'Engineering industry', 'Endo Logistic Corporation', 285.72);
INSERT INTO `socialpractice` VALUES (74, 74, '2001-07-06 20:21:12', 'Trading industry', 'Howard Electronic Inc.', 498.38);
INSERT INTO `socialpractice` VALUES (75, 75, '2012-11-11 09:15:36', 'Consulting industry', 'Jin Kee Communications Company Limited', 853.38);
INSERT INTO `socialpractice` VALUES (76, 76, '2004-01-11 20:14:47', 'Financial services industry', 'Nicole Logistic LLC', 761.05);
INSERT INTO `socialpractice` VALUES (77, 77, '2018-11-23 03:29:52', 'Engineering industry', 'Pang Kee Limited', 429.11);
INSERT INTO `socialpractice` VALUES (78, 78, '2013-01-03 11:19:41', 'Logistic industry', 'Tao Kee Toy Limited', 336.71);
INSERT INTO `socialpractice` VALUES (79, 79, '2011-09-19 10:15:01', 'Pharmaceutical industry', 'Powell Consultants LLC', 231.4);
INSERT INTO `socialpractice` VALUES (80, 80, '2011-10-01 03:16:47', 'Logistic industry', 'Philip Engineering LLC', 802.47);
INSERT INTO `socialpractice` VALUES (81, 81, '2009-09-19 00:53:47', 'Consulting industry', 'Burns\'s Inc.', 345.87);
INSERT INTO `socialpractice` VALUES (82, 82, '2002-12-05 10:54:52', 'Industrial industry', 'Yao Kee Company Limited', 375.62);
INSERT INTO `socialpractice` VALUES (83, 83, '2017-02-20 15:14:20', 'Manufacturing industry', 'Xiuying Property Company Limited', 999.13);
INSERT INTO `socialpractice` VALUES (84, 84, '2008-07-07 09:24:45', 'Electronics industry', 'Lai Yan Development & Trading Limited', 329.68);
INSERT INTO `socialpractice` VALUES (85, 85, '2005-05-18 21:16:16', 'Manufacturing industry', 'Choi Kee Limited', 681.12);
INSERT INTO `socialpractice` VALUES (86, 86, '2009-11-20 08:17:03', 'Financial services industry', 'Ziyi Company Limited', 496.15);
INSERT INTO `socialpractice` VALUES (87, 87, '2008-07-21 11:05:00', 'Information technology industry', 'Yuito Corporation', 24.55);
INSERT INTO `socialpractice` VALUES (88, 88, '2002-01-02 15:48:57', 'Catering industry', 'Wei Kee Consultants Company Limited', 569.6);
INSERT INTO `socialpractice` VALUES (89, 89, '2004-08-04 06:29:53', 'Catering industry', 'Fujiwara Consultants Corporation', 380.87);
INSERT INTO `socialpractice` VALUES (90, 90, '2004-12-21 03:57:14', 'Pharmaceutical industry', 'Pak\'s Electronic Limited', 692.35);
INSERT INTO `socialpractice` VALUES (91, 91, '2002-08-27 22:02:25', 'Electronics industry', 'Adams\'s Food Inc.', 545.99);
INSERT INTO `socialpractice` VALUES (92, 92, '2004-05-03 16:26:57', 'Manufacturing industry', 'Yunxi Company Limited', 429.86);
INSERT INTO `socialpractice` VALUES (93, 93, '2004-07-28 20:44:39', 'Trading industry', 'Minato Corporation', 933.96);
INSERT INTO `socialpractice` VALUES (94, 94, '2007-05-25 11:46:10', 'Electronics industry', 'Deng Toy Company Limited', 697.02);
INSERT INTO `socialpractice` VALUES (95, 95, '2009-08-03 08:45:08', 'Telecommunication industry', 'Myers Inc.', 103.09);
INSERT INTO `socialpractice` VALUES (96, 96, '2017-05-05 01:37:46', 'Information technology industry', 'Lu Company Limited', 981.96);
INSERT INTO `socialpractice` VALUES (97, 97, '2005-12-18 17:38:54', 'Landed property industry', 'Du Company Limited', 578.44);
INSERT INTO `socialpractice` VALUES (98, 98, '2001-10-12 13:53:06', 'Landed property industry', 'Yuna Pharmaceutical Corporation', 191.99);
INSERT INTO `socialpractice` VALUES (99, 99, '2018-08-28 17:14:57', 'Catering industry', 'Iwasaki Corporation', 567.91);
INSERT INTO `socialpractice` VALUES (100, 100, '2007-12-21 12:49:02', 'Landed property industry', 'Yunxi Company Limited', 275.74);

-- ----------------------------
-- Table structure for statement
-- ----------------------------
DROP TABLE IF EXISTS `statement`;
CREATE TABLE `statement`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `studentID` int NOT NULL,
  `content` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`, `studentID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = utf16 COLLATE = utf16_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of statement
-- ----------------------------
INSERT INTO `statement` VALUES (1, 999, 'asc', '思想政治');
INSERT INTO `statement` VALUES (104, 788, '111', '思想政治');
INSERT INTO `statement` VALUES (105, 221, 'abcd', '行为规范');
INSERT INTO `statement` VALUES (106, 221, 'okkkk', '身体健康');

-- ----------------------------
-- Table structure for studentinfo
-- ----------------------------
DROP TABLE IF EXISTS `studentinfo`;
CREATE TABLE `studentinfo`  (
  `studentID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `EnglishName` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `social_ID` int NULL DEFAULT NULL,
  `stuNo` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `gender` enum('男','女') CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `year` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `school_ID` int NULL DEFAULT NULL,
  `place` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `nationality` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `birthday` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `majorID` int NULL DEFAULT NULL,
  `political` enum('共青团员','中共党员（含预备党员）','群众','其他') CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  `stu_type` enum('二学位','专业硕士','工程博士','工学博士','工程管理硕士') CHARACTER SET utf16 COLLATE utf16_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`studentID`) USING BTREE,
  INDEX `school_ID`(`school_ID` ASC) USING BTREE,
  INDEX `majorID`(`majorID` ASC) USING BTREE,
  CONSTRAINT `majorID` FOREIGN KEY (`majorID`) REFERENCES `major` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `school_ID` FOREIGN KEY (`school_ID`) REFERENCES `school` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf16 COLLATE = utf16_unicode_ci ROW_FORMAT = Dynamic;

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
  `ID` int NOT NULL,
  `studentID` int NOT NULL,
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
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username_UNIQUE`(`username` ASC) USING BTREE,
  INDEX `username_INDEX`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '001', '001');
INSERT INTO `user` VALUES (2, '111', '111');
INSERT INTO `user` VALUES (3, '788', '788');
INSERT INTO `user` VALUES (4, '687', '687');
INSERT INTO `user` VALUES (5, '228', '228');
INSERT INTO `user` VALUES (6, '221', '221');

-- ----------------------------
-- Table structure for volunteerservice
-- ----------------------------
DROP TABLE IF EXISTS `volunteerservice`;
CREATE TABLE `volunteerservice`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `studentID` int NOT NULL,
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
