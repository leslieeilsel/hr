/*
 Navicat Premium Data Transfer

 Source Server         : MySQL 5.7
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : hr

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 19/08/2019 15:39:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for iba_role_department
-- ----------------------------
DROP TABLE IF EXISTS `iba_role_department`;
CREATE TABLE `iba_role_department`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `department_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of iba_role_department
-- ----------------------------
INSERT INTO `iba_role_department` VALUES (1, 2, 3);
INSERT INTO `iba_role_department` VALUES (2, 4, 3);
INSERT INTO `iba_role_department` VALUES (3, 5, 3);
INSERT INTO `iba_role_department` VALUES (28, 2, 1);
INSERT INTO `iba_role_department` VALUES (29, 3, 1);
INSERT INTO `iba_role_department` VALUES (30, 4, 1);
INSERT INTO `iba_role_department` VALUES (31, 5, 1);
INSERT INTO `iba_role_department` VALUES (39, 2, 4);
INSERT INTO `iba_role_department` VALUES (40, 3, 5);
INSERT INTO `iba_role_department` VALUES (41, 4, 6);
INSERT INTO `iba_role_department` VALUES (42, 8, 7);
INSERT INTO `iba_role_department` VALUES (43, 5, 8);
INSERT INTO `iba_role_department` VALUES (44, 9, 9);
INSERT INTO `iba_role_department` VALUES (45, 10, 10);
INSERT INTO `iba_role_department` VALUES (46, 11, 11);
INSERT INTO `iba_role_department` VALUES (47, 15, 11);
INSERT INTO `iba_role_department` VALUES (48, 12, 12);
INSERT INTO `iba_role_department` VALUES (49, 16, 12);
INSERT INTO `iba_role_department` VALUES (52, 13, 13);
INSERT INTO `iba_role_department` VALUES (53, 17, 13);
INSERT INTO `iba_role_department` VALUES (54, 14, 14);
INSERT INTO `iba_role_department` VALUES (55, 18, 14);
INSERT INTO `iba_role_department` VALUES (56, 7, 15);
INSERT INTO `iba_role_department` VALUES (57, 19, 15);
INSERT INTO `iba_role_department` VALUES (58, 20, 15);
INSERT INTO `iba_role_department` VALUES (59, 21, 16);
INSERT INTO `iba_role_department` VALUES (60, 22, 16);
INSERT INTO `iba_role_department` VALUES (62, 24, 18);
INSERT INTO `iba_role_department` VALUES (63, 23, 17);
INSERT INTO `iba_role_department` VALUES (64, 24, 17);
INSERT INTO `iba_role_department` VALUES (65, 25, 19);
INSERT INTO `iba_role_department` VALUES (66, 26, 20);
INSERT INTO `iba_role_department` VALUES (67, 27, 21);
INSERT INTO `iba_role_department` VALUES (68, 28, 22);
INSERT INTO `iba_role_department` VALUES (69, 6, 23);

-- ----------------------------
-- Table structure for iba_system_department
-- ----------------------------
DROP TABLE IF EXISTS `iba_system_department`;
CREATE TABLE `iba_system_department`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `parent_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of iba_system_department
-- ----------------------------
INSERT INTO `iba_system_department` VALUES (1, '陕西省西咸新区沣西新城开发建设（集团）有限公司', 1, 1, 0, '陕西省西咸新区沣西新城开发建设（集团）有限公司', 'Admin', '超级管理员', '2019-01-09 10:18:23', '2019-03-21 13:43:26');
INSERT INTO `iba_system_department` VALUES (2, '房建工程项目管理部', 1, 1, 1, '电彩部', 'Admin', 'Admin', '2019-01-07 14:38:42', '2019-03-01 14:02:29');
INSERT INTO `iba_system_department` VALUES (3, '市政项目部', 2, 1, 1, '市政工程项目管理部', 'Admin', '超级管理员', '2019-03-01 14:04:32', '2019-04-04 10:28:27');
INSERT INTO `iba_system_department` VALUES (4, '绿化项目部', 3, 1, 1, '绿化工程项目管理部', 'Admin', '超级管理员', '2019-03-01 14:05:20', '2019-04-04 10:27:58');
INSERT INTO `iba_system_department` VALUES (5, '合同预算部', 5, 1, 1, '合同预算部', 'Admin', '超级管理员', '2019-03-01 14:06:01', '2019-04-04 10:29:20');
INSERT INTO `iba_system_department` VALUES (6, '发展经营部', 6, 1, 1, '发展经营部', 'Admin', '超级管理员', '2019-03-01 14:08:07', '2019-03-30 15:49:24');
INSERT INTO `iba_system_department` VALUES (7, '陕西微软创新中心', 13, 1, 1, NULL, '超级管理员', '超级管理员', '2019-03-21 13:45:55', '2019-04-04 10:39:11');
INSERT INTO `iba_system_department` VALUES (8, '水利工程项目管理部', 4, 1, 1, '水利工程项目管理部', '超级管理员', '超级管理员', '2019-03-30 15:47:58', '2019-03-30 15:48:54');
INSERT INTO `iba_system_department` VALUES (9, '审计内控部', 7, 1, 1, NULL, '超级管理员', '超级管理员', '2019-04-04 10:29:59', '2019-04-04 10:38:09');
INSERT INTO `iba_system_department` VALUES (10, '财务部', 8, 1, 1, NULL, '超级管理员', '超级管理员', '2019-04-04 10:30:19', '2019-04-04 10:38:19');
INSERT INTO `iba_system_department` VALUES (11, '沣西新城投资发展有限公司', 9, 1, 1, NULL, '超级管理员', '超级管理员', '2019-04-04 10:31:06', '2019-04-04 10:38:30');
INSERT INTO `iba_system_department` VALUES (12, '能源公司', 10, 1, 1, NULL, '超级管理员', '超级管理员', '2019-04-04 10:31:21', '2019-04-04 10:38:40');
INSERT INTO `iba_system_department` VALUES (13, '陕西沣西物业管理有限公司', 11, 1, 1, NULL, '超级管理员', '超级管理员', '2019-04-04 10:31:34', '2019-04-04 10:38:51');
INSERT INTO `iba_system_department` VALUES (14, '信息产业园投资发展有限公司', 12, 1, 1, NULL, '超级管理员', '超级管理员', '2019-04-04 10:31:50', '2019-04-04 10:39:01');
INSERT INTO `iba_system_department` VALUES (21, '西咸新区绿浪农业开发有限公司', 14, 1, 1, NULL, '超级管理员', NULL, '2019-04-07 21:03:30', NULL);
INSERT INTO `iba_system_department` VALUES (23, '海绵城市技术中心', 8, 1, 1, NULL, '超级管理员', NULL, '2019-04-07 21:04:45', NULL);
INSERT INTO `iba_system_department` VALUES (24, '陕西西咸海绵城市工程技术有限公司', 15, 1, 1, NULL, '超级管理员', NULL, '2019-04-07 21:05:19', NULL);
INSERT INTO `iba_system_department` VALUES (25, '发展集团', 16, 1, 1, NULL, '超级管理员', '超级管理员', '2019-04-18 15:40:01', '2019-04-18 15:40:15');
INSERT INTO `iba_system_department` VALUES (26, '置业公司', 17, 1, 1, NULL, '超级管理员', NULL, '2019-04-18 21:17:52', NULL);
INSERT INTO `iba_system_department` VALUES (27, '西咸新区智慧城市发展集团有限公司', 18, 1, 1, NULL, '超级管理员', '超级管理员', '2019-04-18 21:25:53', '2019-04-18 21:26:08');
INSERT INTO `iba_system_department` VALUES (28, '人力资源部', 19, 1, 1, NULL, '超级管理员', NULL, '2019-04-18 21:29:57', NULL);
INSERT INTO `iba_system_department` VALUES (29, '开发测试', 1, 1, 0, '11', '超级管理员', NULL, '2019-05-27 16:57:18', NULL);

-- ----------------------------
-- Table structure for iba_system_dict
-- ----------------------------
DROP TABLE IF EXISTS `iba_system_dict`;
CREATE TABLE `iba_system_dict`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_user_id` int(11) NULL DEFAULT NULL,
  `updated_user_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of iba_system_dict
-- ----------------------------
INSERT INTO `iba_system_dict` VALUES (1, '性别', 'sex', NULL, 1, NULL, '2019-01-25 10:22:35', '2019-01-25 10:22:35');

-- ----------------------------
-- Table structure for iba_system_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `iba_system_dict_data`;
CREATE TABLE `iba_system_dict_data`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dict_id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_user_id` int(11) NULL DEFAULT NULL,
  `updated_user_id` int(11) NULL DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of iba_system_dict_data
-- ----------------------------
INSERT INTO `iba_system_dict_data` VALUES (1, '男', '0', 1, NULL, 1, NULL, 0, 1, '2019-01-25 10:23:00', '2019-01-25 10:23:00');
INSERT INTO `iba_system_dict_data` VALUES (2, '女', '1', 1, NULL, 1, NULL, 1, 1, '2019-01-25 10:23:23', '2019-01-25 10:23:23');

-- ----------------------------
-- Table structure for iba_system_notify
-- ----------------------------
DROP TABLE IF EXISTS `iba_system_notify`;
CREATE TABLE `iba_system_notify`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `user_id` int(10) NULL DEFAULT NULL,
  `type` int(255) NULL DEFAULT NULL,
  `send_user_id` int(10) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ibiart_slms_role_menus
-- ----------------------------
DROP TABLE IF EXISTS `ibiart_slms_role_menus`;
CREATE TABLE `ibiart_slms_role_menus`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `checked` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ibiart_slms_role_menus
-- ----------------------------
INSERT INTO `ibiart_slms_role_menus` VALUES (1, 1, 1, 1);
INSERT INTO `ibiart_slms_role_menus` VALUES (2, 1, 2, 1);
INSERT INTO `ibiart_slms_role_menus` VALUES (3, 1, 3, 1);
INSERT INTO `ibiart_slms_role_menus` VALUES (4, 1, 4, 1);
INSERT INTO `ibiart_slms_role_menus` VALUES (5, 1, 5, 1);
INSERT INTO `ibiart_slms_role_menus` VALUES (6, 1, 6, 1);
INSERT INTO `ibiart_slms_role_menus` VALUES (7, 1, 7, 1);
INSERT INTO `ibiart_slms_role_menus` VALUES (8, 1, 8, 1);
INSERT INTO `ibiart_slms_role_menus` VALUES (9, 1, 9, 1);
INSERT INTO `ibiart_slms_role_menus` VALUES (10, 1, 10, 1);
INSERT INTO `ibiart_slms_role_menus` VALUES (11, 1, 11, 1);
INSERT INTO `ibiart_slms_role_menus` VALUES (12, 1, 12, 1);

-- ----------------------------
-- Table structure for ibiart_slms_roles
-- ----------------------------
DROP TABLE IF EXISTS `ibiart_slms_roles`;
CREATE TABLE `ibiart_slms_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `is_default` int(11) NOT NULL DEFAULT 0,
  `data_type` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ibiart_slms_roles
-- ----------------------------
INSERT INTO `ibiart_slms_roles` VALUES (1, 'Superadmin', '超级管理员，拥有所有权限', 1, 0, '2018-12-17 18:47:02', '2019-04-09 09:33:07');

-- ----------------------------
-- Table structure for ibiart_slms_user_roles
-- ----------------------------
DROP TABLE IF EXISTS `ibiart_slms_user_roles`;
CREATE TABLE `ibiart_slms_user_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `parent_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `link_type` int(11) NULL DEFAULT 0,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '',
  `target` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self',
  `enabled` int(11) NOT NULL DEFAULT 1,
  `sort` int(11) NULL DEFAULT NULL,
  `created_user_id` int(11) NULL DEFAULT NULL,
  `updated_user_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 1 COMMENT '类型     pc端1   移动端2',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES (1, '首页', 'base', NULL, 0, NULL, '/', 0, NULL, 'md-home', '_self', 1, 0, 1, NULL, '2019-03-25 20:44:45', '2019-03-25 20:45:32', 1);
INSERT INTO `menus` VALUES (2, '首页', 'home', 'views/sys/monitor/monitor', 1, NULL, '/home', 1, 'http://139.217.6.78:9000/slogan', 'md-home', '_self', 1, 0, 1, NULL, '2019-03-25 20:46:08', '2019-03-25 20:46:08', 1);
INSERT INTO `menus` VALUES (3, '系统管理', 'sys-manage', NULL, 0, '系统管理', '/sys-manage', 0, NULL, 'md-briefcase', '_self', 1, 1, 1, NULL, '2019-01-03 14:36:56', '1999-12-31 00:00:00', 1);
INSERT INTO `menus` VALUES (4, '用户管理', 'users', 'views/user/users', 3, '用户管理', 'users', 0, NULL, NULL, '_self', 1, 1, 1, NULL, '2019-01-25 11:08:19', '1999-12-31 00:00:00', 1);
INSERT INTO `menus` VALUES (5, '角色权限管理', 'role-manage', 'views/user/role-manage', 3, '角色权限管理', 'role-manage', 0, NULL, NULL, '_self', 1, 2, 1, NULL, '2018-12-27 16:13:30', '1999-12-31 00:00:00', 1);
INSERT INTO `menus` VALUES (6, '部门管理', 'department-manage', 'views/sys/department-manage/departmentManage', 3, '部门管理', 'department-manage/departmentManage', 0, NULL, NULL, '_self', 1, 3, 1, NULL, '2019-01-03 14:44:20', '1999-12-31 00:00:00', 1);
INSERT INTO `menus` VALUES (7, '菜单管理', 'menuManage', 'views/sys/menu-manage/menuManage', 3, '重构菜单', 'menuManage', 0, NULL, NULL, '_self', 1, 4, 1, NULL, '2019-01-23 14:45:44', '1999-12-31 00:00:00', 1);
INSERT INTO `menus` VALUES (8, '事件日志', 'eventlogs', 'views/sys/monitor/monitor', 3, '日志显示了程序中的潜在错误, 比如异常和调试信息。', 'eventlogs', 1, 'http://139.217.6.78:9000/logs', NULL, '_self', 1, 5, 1, NULL, '2019-01-09 16:37:32', '1999-12-31 00:00:00', 1);
INSERT INTO `menus` VALUES (9, '操作日志', 'operationlogs', 'views/sys/operationlogs', 3, '记录系统功能操作日志', 'operationlogs', 0, NULL, NULL, '_self', 1, 6, 1, NULL, '2019-01-10 02:46:52', '1999-12-31 00:00:00', 1);
INSERT INTO `menus` VALUES (10, '数据字典管理', 'dict', 'views/sys/dict-manage/dictManage', 3, '数据字典管理', 'dict-manage/dictManage', 0, NULL, NULL, '_self', 1, 7, 1, NULL, '2019-01-25 11:06:21', '1999-12-31 00:00:00', 1);
INSERT INTO `menus` VALUES (11, '个人中心', 'profile', 'views/sys/profile/profile', 3, '个人中心', '/sys/profile', 0, NULL, NULL, '_self', 1, 8, 1, NULL, '2019-01-18 14:54:09', '1999-12-31 00:00:00', 1);
INSERT INTO `menus` VALUES (12, '通知管理', 'notify', 'views/sys/notify/notify', 3, NULL, 'notify', 0, NULL, NULL, '_self', 1, 0, 1, NULL, '2019-03-26 03:24:42', '2019-03-26 03:24:42', 1);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2018_11_25_144044_create_department_table', 2);
INSERT INTO `migrations` VALUES (4, '2018_12_07_113125_create_menus_table', 3);
INSERT INTO `migrations` VALUES (5, '2018_12_16_213605_create_ibiart_slms_roles_table', 4);
INSERT INTO `migrations` VALUES (13, '2018_12_16_214318_create_ibiart_slms_role_menus_table', 5);
INSERT INTO `migrations` VALUES (14, '2018_12_18_145341_create_ibiart_slms_user_roles_table', 5);
INSERT INTO `migrations` VALUES (15, '2019_01_07_111419_create_iba_system_department_table', 6);
INSERT INTO `migrations` VALUES (22, '2019_01_09_192434_create_operation_log_table', 7);
INSERT INTO `migrations` VALUES (23, '2019_01_14_103115_create_iba_system_dict_table', 7);
INSERT INTO `migrations` VALUES (24, '2019_01_14_103133_create_iba_system_dict_data_table', 7);
INSERT INTO `migrations` VALUES (26, '2019_02_16_194843_create_iba_project_info_table', 8);
INSERT INTO `migrations` VALUES (27, '2019_02_17_135128_create_iba_project_early_warning_table', 9);
INSERT INTO `migrations` VALUES (31, '2019_02_27_150253_create_iba_project_plan_table', 11);
INSERT INTO `migrations` VALUES (32, '2019_03_04_180541_create_iba_project_schedule_table', 11);
INSERT INTO `migrations` VALUES (33, '2019_02_25_173859_create_iba_project_projects_table', 12);
INSERT INTO `migrations` VALUES (35, '2019_03_18_160436_create_iba_role_department_table', 13);

-- ----------------------------
-- Table structure for operation_log
-- ----------------------------
DROP TABLE IF EXISTS `operation_log`;
CREATE TABLE `operation_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ip_place` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
INSERT INTO `password_resets` VALUES ('admin@admin.com', '$2y$10$099y9HWV.8dLZvmyq81bXOelt6gMnokHjPLWsGtYFWgEnsbZCdNVC', '2018-11-29 18:02:23');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `department_id` int(11) NULL DEFAULT NULL,
  `group_id` int(11) NULL DEFAULT NULL,
  `office` int(11) NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `last_login` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `ding_user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '超级管理员', '15594990729', 'admin@admin.com', NULL, '$2y$10$q7IuhSqsnGL5g3CNQEypleEuDMZrJyQImZqwSlLEORMoGHBp9u9.u', '超级管理员', 6, 1, 2, NULL, '2019-08-15 15:58:42', '2019-03-26 15:10:17', '2019-08-15 15:58:42', '');

SET FOREIGN_KEY_CHECKS = 1;
