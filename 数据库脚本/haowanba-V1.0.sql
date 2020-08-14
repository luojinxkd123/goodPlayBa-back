/*
 Navicat Premium Data Transfer

 Source Server         : 何圳云服务
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : 106.52.97.48:33060
 Source Schema         : haowanba

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 14/08/2020 11:22:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_app
-- ----------------------------
DROP TABLE IF EXISTS `t_app`;
CREATE TABLE `t_app`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` int(4) NULL DEFAULT NULL COMMENT '是否需要运行（1：需要，0：不需要）',
  `diamond` double(10, 2) NULL DEFAULT NULL COMMENT '当前钻石数量',
  `telephone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联手机号',
  `device_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联设备名称',
  `harvest` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收割记录',
  `pay_password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '交易密码',
  `is_over` int(4) NULL DEFAULT NULL COMMENT '是否结束',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `app_name`(`app_name`, `device_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 175 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_app
-- ----------------------------
INSERT INTO `t_app` VALUES (1, '好玩吧', 0, 0.00, '15008496196', 'nova3', '', '主号1', NULL);
INSERT INTO `t_app` VALUES (2, '好玩吧分身1', 0, 0.00, '17738694556', 'nova3', '', '主号2', NULL);
INSERT INTO `t_app` VALUES (3, '好玩吧分身2', 0, 0.00, '136', 'nova3', '', '主号3', NULL);
INSERT INTO `t_app` VALUES (5, '好玩吧分身3', 0, 0.00, '19938687673', 'nova3', '', '主号4', NULL);
INSERT INTO `t_app` VALUES (6, '好玩吧4', 1, 2.13, '18798740840', 'nova3', '主号4', 'a1234567', NULL);
INSERT INTO `t_app` VALUES (7, '好玩吧5', 1, 2.55, '18287338415', 'nova3', '主号4', 'a1234567', NULL);
INSERT INTO `t_app` VALUES (8, '好玩吧6', 1, 3.15, '13577302716', 'nova3', '主号4;主号1', 'a1234567', NULL);
INSERT INTO `t_app` VALUES (9, '好玩吧7', 1, 2.55, '13628778641', 'nova3', '主号4;主号1', 'a1234567', NULL);
INSERT INTO `t_app` VALUES (10, '好玩吧8', 1, 1.45, '13529906833', 'nova3', '主号4', 'a1234567', NULL);
INSERT INTO `t_app` VALUES (11, '好玩吧9', 1, 2.95, '13887793315', 'nova3', '主号4', 'a1234567', NULL);
INSERT INTO `t_app` VALUES (12, '好玩吧10', 1, 3.27, '14787785207', 'nova3', '主号4;主号1', 'a1234567', NULL);
INSERT INTO `t_app` VALUES (13, '好玩吧11', 1, 1.37, '18787709931', 'nova3', '主号4;主号1', 'a1234567', NULL);
INSERT INTO `t_app` VALUES (14, '好玩吧12', 1, 2.55, '19948615073', 'nova3', '主号4;主号1', 'a1234567', NULL);
INSERT INTO `t_app` VALUES (15, '好玩吧13', 1, 2.03, '15629460352', 'nova3', '主号4', 'a1234567', NULL);
INSERT INTO `t_app` VALUES (16, '好玩吧14', 1, 2.54, '13729635872', 'nova3', '主号4;主号1', 'a1234567', NULL);
INSERT INTO `t_app` VALUES (17, '好玩吧15', 1, 2.39, '13466941302', 'nova3', '主号4;主号1', 'a1234567', NULL);
INSERT INTO `t_app` VALUES (18, '好玩吧16', 1, 4.43, '18270392974', 'nova3', '主号4;主号1', 'a1234567', NULL);
INSERT INTO `t_app` VALUES (19, '好玩吧17', 1, 1.96, '15879881471', 'nova3', '主号4;主号1', 'a1234567', NULL);
INSERT INTO `t_app` VALUES (20, '好玩吧18', 1, 3.41, '13921915238', 'nova3', '主号4;主号1', 'a1234567', NULL);
INSERT INTO `t_app` VALUES (21, '好玩吧19', 1, 3.31, '18879001534', 'nova3', '主号4;主号1', 'a1234567', NULL);
INSERT INTO `t_app` VALUES (22, '好玩吧20', 1, 3.30, '13645199699', 'nova3', '主号4;主号1', 'a1234567', NULL);
INSERT INTO `t_app` VALUES (23, '好玩吧21', 1, 1.05, '15297824840', 'nova3', '主号4;主号1', 'a1234567', NULL);
INSERT INTO `t_app` VALUES (27, '好玩吧1', 1, 2.80, '15171299684', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (28, '好玩吧2', 1, 2.40, '15172220980', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (29, '好玩吧3', 1, 2.40, '15072588712', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (30, '好玩吧4', 1, 2.80, '13797183308', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (31, '好玩吧5', 1, 2.80, '15271685382', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (32, '好玩吧6', 1, 2.80, '18162991892', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (33, '好玩吧7', 1, 2.80, '15872954528', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (34, '好玩吧8', 1, 2.79, '15897668722', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (35, '好玩吧9', 1, 2.79, '13477545465', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (36, '好玩吧10', 1, 3.19, '13774077609', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (37, '好玩吧11', 1, 2.79, '13476504984', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (38, '好玩吧12', 1, 3.19, '13451193044', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (39, '好玩吧13', 1, 2.79, '15629739996', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (40, '好玩吧14', 1, 2.79, '15871986046', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (41, '好玩吧15', 1, 2.78, '15827870637', 'mi5s', NULL, 'a1234567', NULL);
INSERT INTO `t_app` VALUES (42, '好玩吧16', 1, 2.77, '13972865130', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (43, '好玩吧17', 1, 2.37, '13451165340', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (44, '好玩吧18', 1, 2.77, '13986980936', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (45, '好玩吧19', 1, 2.77, '15827868962', 'mi5s', NULL, 'a1234567', NULL);
INSERT INTO `t_app` VALUES (46, '好玩吧20', 1, 3.19, '13310526582', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (47, '好玩吧21', 0, NULL, '', 'mi5s', '没账号', 'a1234567', NULL);
INSERT INTO `t_app` VALUES (48, '好玩吧22', 1, 2.76, '18872406268', 'mi5s', NULL, 'a1234567', NULL);
INSERT INTO `t_app` VALUES (49, '好玩吧23', 1, 3.19, '15872887292', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (50, '好玩吧24', 1, 2.81, '15771066950', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (51, '好玩吧25', 1, 2.41, '18120387369', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (52, '好玩吧26', 1, 2.41, '13337474863', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (53, '好玩吧27', 1, 2.41, '15272849865', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (54, '好玩吧28', 1, 0.10, '15271686175', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (55, '好玩吧29', 1, 2.01, '15071910757', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (56, '好玩吧30', 1, 2.01, '13971860766', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (57, '好玩吧31', 1, 2.41, '15072640822', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (58, '好玩吧32', 1, 2.41, '15872886697', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (59, '好玩吧33', 1, 2.41, '13797204623', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (60, '好玩吧34', 1, 2.01, '13297126635', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (61, '好玩吧35', 1, 2.01, '18672420912', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (62, '好玩吧36', 1, 2.01, '15926864649', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (63, '好玩吧37', 1, 2.41, '18071397859', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (64, '好玩吧38', 1, 2.41, '13797976523', 'mi5s', NULL, 'a1234567', NULL);
INSERT INTO `t_app` VALUES (65, '好玩吧39', 1, 2.01, '15671853571', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (66, '好玩吧40', 1, 2.41, '13581324190', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (67, '好玩吧41', 1, 2.01, '13277245398', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (68, '好玩吧42', 1, 2.01, '15572578020', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (69, '好玩吧43', 1, 2.41, '18971860950', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (70, '好玩吧44', 1, 2.01, '15572578711', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (71, '好玩吧45', 1, 2.41, '18307125411', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (72, '好玩吧46', 1, 2.01, '13477380589', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (73, '好玩吧47', 1, 2.01, '13677243396', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (74, '好玩吧48', 1, 2.41, '15271684311', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (75, '好玩吧49', 1, 2.01, '18696019356', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (76, '好玩吧50', 1, 2.01, '13177153431', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (77, '好玩吧1', 1, 2.81, '18871232249', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (78, '好玩吧2', 1, 2.81, '13597976942', 'minote', NULL, 'a1234567', NULL);
INSERT INTO `t_app` VALUES (84, '好玩吧3', 1, 0.68, '15502750238', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (85, '好玩吧4', 1, 0.00, '18872800828', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (86, '好玩吧5', 0, NULL, '15803056634', 'minote', '密码错误', 'aa147258', NULL);
INSERT INTO `t_app` VALUES (87, '好玩吧6', 1, 0.40, '13477371830', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (88, '好玩吧7', 1, 0.40, '13237274476', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (89, '好玩吧8', 1, 0.40, '15872940971', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (90, '好玩吧9', 1, 0.40, '13797609914', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (91, '好玩吧10', 1, 0.40, '17683936936', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (92, '好玩吧11', 1, 0.40, '17771561089', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (93, '好玩吧12', 1, 0.40, '15071857955', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (94, '好玩吧13', 1, 0.80, '15572611410', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (95, '好玩吧14', 1, 0.40, '13774028026', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (96, '好玩吧15', 1, 0.40, '15171092939', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (97, '好玩吧16', 1, 0.40, '13451183282', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (98, '好玩吧17', 1, 2.77, '18071396682', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (99, '好玩吧18', 1, 0.40, '15271125606', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (100, '好玩吧19', 1, 0.40, '15337473990', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (101, '好玩吧20', 1, 0.40, '15872921428', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (102, '好玩吧21', 1, 0.80, '13797898458', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (103, '好玩吧22', 1, 0.80, '13774043935', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (104, '好玩吧23', 1, 0.40, '15727108719', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (105, '好玩吧24', 1, 0.40, '15771100929', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (106, '好玩吧25', 1, 0.40, '13237291233', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (107, '好玩吧26', 1, 0.40, '15629736242', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (108, '好玩吧27', 1, 0.40, '15587553889', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (109, '好玩吧28', 1, 0.80, '15872191004', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (110, '好玩吧29', 1, 0.40, '17371190281', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (111, '好玩吧30', 1, 0.40, '17079892916', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (112, '好玩吧31', 1, 0.80, '13581337491', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (113, '好玩吧32', 1, 0.80, '13617249147', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (114, '好玩吧33', 1, 0.40, '13337483741', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (115, '好玩吧34', 1, 0.40, '13872910504', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (116, '好玩吧35', 1, 0.40, '13997906849', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (117, '好玩吧36', 1, 0.40, '18771192289', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (118, '好玩吧37', 1, 0.40, '13032777602', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (119, '好玩吧38', 0, NULL, '15908683288', 'minote', '账号不存在', 'aa147258', NULL);
INSERT INTO `t_app` VALUES (120, '好玩吧39', 1, 0.40, '15972873065', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (121, '好玩吧40', 1, 0.40, '15027239187', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (122, '好玩吧41', 1, 0.40, '15027235870', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (123, '好玩吧42', 1, 0.40, '17771574683', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (124, '好玩吧43', 1, 0.40, '15926692910', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (125, '好玩吧44', 1, 0.40, '13871624084', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (126, '好玩吧45', 1, 0.40, '15272403280', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (127, '好玩吧46', 1, 0.00, '13237289183', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (128, '好玩吧47', 1, 0.40, '13317516159', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (129, '好玩吧48', 1, 0.80, '18872851992', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (130, '好玩吧49', 1, NULL, '13597924364', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app` VALUES (131, '好玩吧50', 1, 0.40, '13986527381', 'minote', NULL, 'aa147258', NULL);

-- ----------------------------
-- Table structure for t_app_copy1
-- ----------------------------
DROP TABLE IF EXISTS `t_app_copy1`;
CREATE TABLE `t_app_copy1`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` int(4) NULL DEFAULT NULL COMMENT '是否需要运行（1：需要，0：不需要）',
  `diamond` double(10, 2) NULL DEFAULT NULL COMMENT '当前钻石数量',
  `telephone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联手机号',
  `device_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联设备名称',
  `harvest` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收割记录',
  `pay_password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '交易密码',
  `is_over` int(4) NULL DEFAULT NULL COMMENT '是否结束',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `app_name`(`app_name`, `device_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 174 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_app_copy1
-- ----------------------------
INSERT INTO `t_app_copy1` VALUES (1, '好玩吧', 0, 0.00, '15008496196', 'nova3', '', '主号1', NULL);
INSERT INTO `t_app_copy1` VALUES (2, '好玩吧分身1', 0, 0.00, '17738694556', 'nova3', '', '主号2', NULL);
INSERT INTO `t_app_copy1` VALUES (3, '好玩吧分身2', 0, 0.00, '136', 'nova3', '', '主号3', NULL);
INSERT INTO `t_app_copy1` VALUES (5, '好玩吧分身3', 0, 0.00, '19938687673', 'nova3', '', '主号4', NULL);
INSERT INTO `t_app_copy1` VALUES (6, '好玩吧4', 1, 1.73, '18798740840', 'nova3', '主号4', 'a1234567', NULL);
INSERT INTO `t_app_copy1` VALUES (7, '好玩吧5', 1, 2.55, '18287338415', 'nova3', '主号4', 'a1234567', NULL);
INSERT INTO `t_app_copy1` VALUES (8, '好玩吧6', 1, 3.15, '13577302716', 'nova3', '主号4;主号1', 'a1234567', NULL);
INSERT INTO `t_app_copy1` VALUES (9, '好玩吧7', 1, 2.55, '13628778641', 'nova3', '主号4;主号1', 'a1234567', NULL);
INSERT INTO `t_app_copy1` VALUES (10, '好玩吧8', 1, 1.45, '13529906833', 'nova3', '主号4', 'a1234567', NULL);
INSERT INTO `t_app_copy1` VALUES (11, '好玩吧9', 1, 2.95, '13887793315', 'nova3', '主号4', 'a1234567', NULL);
INSERT INTO `t_app_copy1` VALUES (12, '好玩吧10', 1, 3.27, '14787785207', 'nova3', '主号4;主号1', 'a1234567', NULL);
INSERT INTO `t_app_copy1` VALUES (13, '好玩吧11', 1, 1.37, '18787709931', 'nova3', '主号4;主号1', 'a1234567', NULL);
INSERT INTO `t_app_copy1` VALUES (14, '好玩吧12', 1, 2.55, '19948615073', 'nova3', '主号4;主号1', 'a1234567', NULL);
INSERT INTO `t_app_copy1` VALUES (15, '好玩吧13', 1, 2.03, '15629460352', 'nova3', '主号4', 'a1234567', NULL);
INSERT INTO `t_app_copy1` VALUES (16, '好玩吧14', 1, 2.54, '13729635872', 'nova3', '主号4;主号1', 'a1234567', NULL);
INSERT INTO `t_app_copy1` VALUES (17, '好玩吧15', 1, 2.39, '13466941302', 'nova3', '主号4;主号1', 'a1234567', NULL);
INSERT INTO `t_app_copy1` VALUES (18, '好玩吧16', 1, 4.43, '18270392974', 'nova3', '主号4;主号1', 'a1234567', NULL);
INSERT INTO `t_app_copy1` VALUES (19, '好玩吧17', 1, 1.96, '15879881471', 'nova3', '主号4;主号1', 'a1234567', NULL);
INSERT INTO `t_app_copy1` VALUES (20, '好玩吧18', 1, 3.41, '13921915238', 'nova3', '主号4;主号1', 'a1234567', NULL);
INSERT INTO `t_app_copy1` VALUES (21, '好玩吧19', 1, 3.31, '18879001534', 'nova3', '主号4;主号1', 'a1234567', NULL);
INSERT INTO `t_app_copy1` VALUES (22, '好玩吧20', 1, 3.30, '13645199699', 'nova3', '主号4;主号1', 'a1234567', NULL);
INSERT INTO `t_app_copy1` VALUES (23, '好玩吧21', 1, 1.05, '15297824840', 'nova3', '主号4;主号1', 'a1234567', NULL);
INSERT INTO `t_app_copy1` VALUES (27, '好玩吧1', 1, 2.80, '15171299684', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (28, '好玩吧2', 1, 2.40, '15172220980', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (29, '好玩吧3', 1, 2.40, '15072588712', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (30, '好玩吧4', 1, 2.80, '13797183308', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (31, '好玩吧5', 1, 2.80, '15271685382', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (32, '好玩吧6', 1, 2.80, '18162991892', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (33, '好玩吧7', 1, 2.80, '15872954528', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (34, '好玩吧8', 1, 2.39, '15897668722', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (35, '好玩吧9', 1, 2.39, '13477545465', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (36, '好玩吧10', 1, 3.19, '13774077609', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (37, '好玩吧11', 1, 2.79, '13476504984', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (38, '好玩吧12', 1, 2.79, '13451193044', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (39, '好玩吧13', 1, 2.79, '15629739996', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (40, '好玩吧14', 1, 2.79, '15871986046', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (41, '好玩吧15', 1, 2.78, '15827870637', 'mi5s', NULL, 'a1234567', NULL);
INSERT INTO `t_app_copy1` VALUES (42, '好玩吧16', 1, 2.77, '13972865130', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (43, '好玩吧17', 1, 2.37, '13451165340', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (44, '好玩吧18', 1, 2.77, '13986980936', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (45, '好玩吧19', 1, 2.77, '15827868962', 'mi5s', NULL, 'a1234567', NULL);
INSERT INTO `t_app_copy1` VALUES (46, '好玩吧20', 1, 3.19, '13310526582', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (47, '好玩吧21', 0, NULL, '', 'mi5s', '没账号', 'a1234567', NULL);
INSERT INTO `t_app_copy1` VALUES (48, '好玩吧22', 1, 2.76, '18872406268', 'mi5s', NULL, 'a1234567', NULL);
INSERT INTO `t_app_copy1` VALUES (49, '好玩吧23', 1, 3.19, '15872887292', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (50, '好玩吧24', 1, 2.81, '15771066950', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (51, '好玩吧25', 1, 2.41, '18120387369', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (52, '好玩吧26', 1, 2.41, '13337474863', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (53, '好玩吧27', 1, 2.41, '15272849865', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (54, '好玩吧28', 1, 0.10, '15271686175', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (55, '好玩吧29', 1, 2.01, '15071910757', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (56, '好玩吧30', 1, 2.01, '13971860766', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (57, '好玩吧31', 1, 2.41, '15072640822', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (58, '好玩吧32', 1, 2.41, '15872886697', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (59, '好玩吧33', 1, 2.41, '13797204623', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (60, '好玩吧34', 1, 2.01, '13297126635', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (61, '好玩吧35', 1, 2.01, '18672420912', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (62, '好玩吧36', 1, 2.01, '15926864649', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (63, '好玩吧37', 1, 2.41, '18071397859', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (64, '好玩吧38', 1, 2.41, '13797976523', 'mi5s', NULL, 'a1234567', NULL);
INSERT INTO `t_app_copy1` VALUES (65, '好玩吧39', 1, 2.01, '15671853571', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (66, '好玩吧40', 1, 2.41, '13581324190', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (67, '好玩吧41', 1, 2.01, '13277245398', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (68, '好玩吧42', 1, 2.01, '15572578020', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (69, '好玩吧43', 1, 2.41, '18971860950', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (70, '好玩吧44', 1, 2.01, '15572578711', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (71, '好玩吧45', 1, 2.41, '18307125411', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (72, '好玩吧46', 1, 2.01, '13477380589', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (73, '好玩吧47', 1, 2.01, '13677243396', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (74, '好玩吧48', 1, 2.41, '15271684311', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (75, '好玩吧49', 1, 2.01, '18696019356', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (76, '好玩吧50', 1, 2.01, '13177153431', 'mi5s', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (77, '好玩吧1', 1, 2.81, '18871232249', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (78, '好玩吧2', 1, 2.81, '13597976942', 'minote', NULL, 'a1234567', NULL);
INSERT INTO `t_app_copy1` VALUES (85, '好玩吧4', 1, 0.00, '18872800828', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (86, '好玩吧5', 0, NULL, '15803056634', 'minote', '密码错误', 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (87, '好玩吧6', 1, 0.40, '13477371830', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (88, '好玩吧7', 1, 0.40, '13237274476', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (89, '好玩吧8', 1, 0.40, '15872940971', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (90, '好玩吧9', 1, 0.40, '13797609914', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (91, '好玩吧10', 1, 0.40, '17683936936', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (92, '好玩吧11', 1, 0.40, '17771561089', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (93, '好玩吧12', 1, 0.40, '15071857955', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (94, '好玩吧13', 1, 0.80, '15572611410', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (95, '好玩吧14', 1, 0.40, '13774028026', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (96, '好玩吧15', 1, 0.40, '15171092939', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (97, '好玩吧16', 1, 0.40, '13451183282', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (98, '好玩吧17', 1, 2.77, '18071396682', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (99, '好玩吧18', 1, 0.40, '15271125606', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (100, '好玩吧19', 1, 0.40, '15337473990', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (101, '好玩吧20', 1, 0.40, '15872921428', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (102, '好玩吧21', 1, 0.80, '13797898458', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (103, '好玩吧22', 1, 0.80, '13774043935', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (104, '好玩吧23', 1, 0.40, '15727108719', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (105, '好玩吧24', 1, 0.40, '15771100929', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (106, '好玩吧25', 1, 0.40, '13237291233', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (107, '好玩吧26', 1, 0.40, '15629736242', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (108, '好玩吧27', 1, 0.40, '15587553889', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (109, '好玩吧28', 1, 0.80, '15872191004', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (110, '好玩吧29', 1, 0.40, '17371190281', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (111, '好玩吧30', 1, 0.40, '17079892916', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (112, '好玩吧31', 1, 0.80, '13581337491', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (113, '好玩吧32', 1, 0.80, '13617249147', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (114, '好玩吧33', 1, 0.40, '13337483741', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (115, '好玩吧34', 1, 0.40, '13872910504', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (116, '好玩吧35', 1, 0.40, '13997906849', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (117, '好玩吧36', 1, 0.40, '18771192289', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (118, '好玩吧37', 1, 0.40, '13032777602', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (119, '好玩吧38', 0, NULL, '15908683288', 'minote', '账号不存在', 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (120, '好玩吧39', 1, 0.40, '15972873065', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (121, '好玩吧40', 1, 0.40, '15027239187', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (122, '好玩吧41', 1, 0.40, '15027235870', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (123, '好玩吧42', 1, 0.40, '17771574683', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (124, '好玩吧43', 1, 0.40, '15926692910', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (125, '好玩吧44', 1, 0.40, '13871624084', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (126, '好玩吧45', 1, 0.40, '15272403280', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (127, '好玩吧46', 1, 0.00, '13237289183', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (128, '好玩吧47', 1, 0.40, '13317516159', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (129, '好玩吧48', 1, 0.80, '18872851992', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (130, '好玩吧49', 1, NULL, '13597924364', 'minote', NULL, 'aa147258', NULL);
INSERT INTO `t_app_copy1` VALUES (131, '好玩吧50', 1, 0.40, '13986527381', 'minote', NULL, 'aa147258', NULL);

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '应用名',
  `device_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '设备名称',
  `date` date NULL DEFAULT NULL COMMENT '运行日期',
  `status` tinyint(2) NULL DEFAULT NULL COMMENT '挖矿结果（0:失败，1：成功）',
  `log` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '运行日志',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `date`(`date`) USING BTREE,
  INDEX `app_name`(`app_name`) USING BTREE,
  INDEX `device_name`(`device_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_log
-- ----------------------------
INSERT INTO `t_log` VALUES (1, '好玩吧1', 'mi5s', '2020-08-14', 1, '完成任务');
INSERT INTO `t_log` VALUES (2, '好玩吧1', 'minote', '2020-08-14', 1, '[错误信息]:restart,任务页加载失败...;  完成任务');
INSERT INTO `t_log` VALUES (3, '好玩吧2', 'mi5s', '2020-08-14', 1, '完成任务');
INSERT INTO `t_log` VALUES (4, '好玩吧3', 'mi5s', '2020-08-14', 1, '完成任务');
INSERT INTO `t_log` VALUES (5, '好玩吧4', 'mi5s', '2020-08-14', 1, '[错误信息]:restart,任务页加载失败...;  好玩吧4:超时了,需要重新运行;  完成任务');
INSERT INTO `t_log` VALUES (6, '好玩吧2', 'minote', '2020-08-14', 1, '完成任务');
INSERT INTO `t_log` VALUES (7, '好玩吧4', 'minote', '2020-08-14', 1, '完成任务');
INSERT INTO `t_log` VALUES (8, '好玩吧5', 'mi5s', '2020-08-14', 1, '完成任务');
INSERT INTO `t_log` VALUES (9, '好玩吧6', 'mi5s', '2020-08-14', 1, '完成任务');
INSERT INTO `t_log` VALUES (10, '好玩吧3', 'minote', '2020-08-14', 1, '完成任务');
INSERT INTO `t_log` VALUES (11, '好玩吧6', 'minote', '2020-08-14', 1, '完成任务');
INSERT INTO `t_log` VALUES (12, '好玩吧7', 'mi5s', '2020-08-14', 1, '完成任务');
INSERT INTO `t_log` VALUES (13, '好玩吧7', 'minote', '2020-08-14', 1, '[错误信息]:restart,任务页加载失败...;  好玩吧7:超时了,需要重新运行;  完成任务');
INSERT INTO `t_log` VALUES (14, '好玩吧8', 'mi5s', '2020-08-14', 1, '完成任务');
INSERT INTO `t_log` VALUES (15, '好玩吧4', 'nova3', '2020-08-14', 1, '任务已完成');
INSERT INTO `t_log` VALUES (16, '好玩吧9', 'mi5s', '2020-08-14', 1, '完成任务');
INSERT INTO `t_log` VALUES (17, '好玩吧8', 'minote', '2020-08-14', 1, '完成任务');
INSERT INTO `t_log` VALUES (18, '好玩吧5', 'nova3', '2020-08-14', 1, '任务已完成');
INSERT INTO `t_log` VALUES (19, '好玩吧10', 'mi5s', '2020-08-14', 1, '完成任务');
INSERT INTO `t_log` VALUES (20, '好玩吧6', 'nova3', '2020-08-14', 1, '任务已完成');
INSERT INTO `t_log` VALUES (21, '好玩吧9', 'minote', '2020-08-14', 1, '完成任务');
INSERT INTO `t_log` VALUES (22, '好玩吧7', 'nova3', '2020-08-14', 1, '任务已完成');
INSERT INTO `t_log` VALUES (23, '好玩吧11', 'mi5s', '2020-08-14', 1, '好玩吧11:超时了,需要重新运行;  完成任务');
INSERT INTO `t_log` VALUES (24, '好玩吧10', 'minote', '2020-08-14', 1, '完成任务');
INSERT INTO `t_log` VALUES (25, '好玩吧8', 'nova3', '2020-08-14', 1, '任务已完成');
INSERT INTO `t_log` VALUES (26, '好玩吧12', 'mi5s', '2020-08-14', 1, '完成任务');
INSERT INTO `t_log` VALUES (27, '好玩吧11', 'minote', '2020-08-14', 1, '完成任务');
INSERT INTO `t_log` VALUES (28, '好玩吧9', 'nova3', '2020-08-14', 1, '任务已完成');
INSERT INTO `t_log` VALUES (29, '好玩吧13', 'mi5s', '2020-08-14', 1, '完成任务');
INSERT INTO `t_log` VALUES (30, '好玩吧12', 'minote', '2020-08-14', 1, '完成任务');
INSERT INTO `t_log` VALUES (31, '好玩吧13', 'minote', '2020-08-14', 1, '[错误信息]:restart,任务页加载失败...;  完成任务');
INSERT INTO `t_log` VALUES (32, '好玩吧10', 'nova3', '2020-08-14', 1, '任务已完成');
INSERT INTO `t_log` VALUES (33, '好玩吧14', 'mi5s', '2020-08-14', 1, '完成任务');

SET FOREIGN_KEY_CHECKS = 1;
