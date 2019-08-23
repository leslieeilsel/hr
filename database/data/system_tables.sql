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

 Date: 22/08/2019 18:21:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_departments
-- ----------------------------
DROP TABLE IF EXISTS `sys_departments`;
CREATE TABLE `sys_departments`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '名称',
  `sort` int(11) NOT NULL COMMENT '排序值',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '是否启用',
  `parent_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '父级ID',
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '描述',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '修改人',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_departments
-- ----------------------------
INSERT INTO `sys_departments` VALUES (1, '陕西省西咸新区沣西新城开发建设（集团）有限公司', 1, 1, 0, '陕西省西咸新区沣西新城开发建设（集团）有限公司', 'Admin', '超级管理员', '2019-01-09 10:18:23', '2019-03-21 13:43:26');
INSERT INTO `sys_departments` VALUES (2, '房建工程项目管理部', 1, 1, 1, '电彩部', 'Admin', 'Admin', '2019-01-07 14:38:42', '2019-03-01 14:02:29');
INSERT INTO `sys_departments` VALUES (3, '市政项目部', 2, 1, 1, '市政工程项目管理部', 'Admin', '超级管理员', '2019-03-01 14:04:32', '2019-04-04 10:28:27');
INSERT INTO `sys_departments` VALUES (4, '绿化项目部', 3, 1, 1, '绿化工程项目管理部', 'Admin', '超级管理员', '2019-03-01 14:05:20', '2019-04-04 10:27:58');
INSERT INTO `sys_departments` VALUES (5, '合同预算部', 5, 1, 1, '合同预算部', 'Admin', '超级管理员', '2019-03-01 14:06:01', '2019-04-04 10:29:20');
INSERT INTO `sys_departments` VALUES (6, '发展经营部', 6, 1, 1, '发展经营部', 'Admin', '超级管理员', '2019-03-01 14:08:07', '2019-03-30 15:49:24');
INSERT INTO `sys_departments` VALUES (7, '陕西微软创新中心', 13, 1, 1, NULL, '超级管理员', '超级管理员', '2019-03-21 13:45:55', '2019-04-04 10:39:11');
INSERT INTO `sys_departments` VALUES (8, '水利工程项目管理部', 4, 1, 1, '水利工程项目管理部', '超级管理员', '超级管理员', '2019-03-30 15:47:58', '2019-03-30 15:48:54');
INSERT INTO `sys_departments` VALUES (9, '审计内控部', 7, 1, 1, NULL, '超级管理员', '超级管理员', '2019-04-04 10:29:59', '2019-04-04 10:38:09');
INSERT INTO `sys_departments` VALUES (10, '财务部', 8, 1, 1, NULL, '超级管理员', '超级管理员', '2019-04-04 10:30:19', '2019-04-04 10:38:19');
INSERT INTO `sys_departments` VALUES (11, '沣西新城投资发展有限公司', 9, 1, 1, NULL, '超级管理员', '超级管理员', '2019-04-04 10:31:06', '2019-04-04 10:38:30');
INSERT INTO `sys_departments` VALUES (12, '能源公司', 10, 1, 1, NULL, '超级管理员', '超级管理员', '2019-04-04 10:31:21', '2019-04-04 10:38:40');
INSERT INTO `sys_departments` VALUES (13, '陕西沣西物业管理有限公司', 11, 1, 1, NULL, '超级管理员', '超级管理员', '2019-04-04 10:31:34', '2019-04-04 10:38:51');
INSERT INTO `sys_departments` VALUES (14, '信息产业园投资发展有限公司', 12, 1, 1, NULL, '超级管理员', '超级管理员', '2019-04-04 10:31:50', '2019-04-04 10:39:01');
INSERT INTO `sys_departments` VALUES (21, '西咸新区绿浪农业开发有限公司', 14, 1, 1, NULL, '超级管理员', NULL, '2019-04-07 21:03:30', NULL);
INSERT INTO `sys_departments` VALUES (23, '海绵城市技术中心', 8, 1, 1, NULL, '超级管理员', NULL, '2019-04-07 21:04:45', NULL);
INSERT INTO `sys_departments` VALUES (24, '陕西西咸海绵城市工程技术有限公司', 15, 1, 1, NULL, '超级管理员', NULL, '2019-04-07 21:05:19', NULL);
INSERT INTO `sys_departments` VALUES (25, '发展集团', 16, 1, 1, NULL, '超级管理员', '超级管理员', '2019-04-18 15:40:01', '2019-04-18 15:40:15');
INSERT INTO `sys_departments` VALUES (26, '置业公司', 17, 1, 1, NULL, '超级管理员', NULL, '2019-04-18 21:17:52', NULL);
INSERT INTO `sys_departments` VALUES (27, '西咸新区智慧城市发展集团有限公司', 18, 1, 1, NULL, '超级管理员', '超级管理员', '2019-04-18 21:25:53', '2019-04-18 21:26:08');
INSERT INTO `sys_departments` VALUES (28, '人力资源部', 19, 1, 1, NULL, '超级管理员', NULL, '2019-04-18 21:29:57', NULL);
INSERT INTO `sys_departments` VALUES (29, '开发测试', 1, 1, 0, '11', '超级管理员', NULL, '2019-05-27 16:57:18', NULL);

-- ----------------------------
-- Table structure for sys_dict_categories
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_categories`;
CREATE TABLE `sys_dict_categories`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '名称',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '唯一名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '描述',
  `created_user_id` int(11) NULL DEFAULT NULL COMMENT '创建人',
  `updated_user_id` int(11) NULL DEFAULT NULL COMMENT '修改人',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_categories
-- ----------------------------
INSERT INTO `sys_dict_categories` VALUES (1, '性别', 'sex', NULL, 1, NULL, '2019-01-25 10:22:35', '2019-01-25 10:22:35');
INSERT INTO `sys_dict_categories` VALUES (2, '职位', 'office', '职位', 1, NULL, '2019-08-19 18:01:22', '2019-08-19 18:01:22');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '名称',
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '字段值',
  `dict_id` int(10) UNSIGNED NOT NULL COMMENT '字典ID',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '描述',
  `created_user_id` int(11) NULL DEFAULT NULL COMMENT '创建人',
  `updated_user_id` int(11) NULL DEFAULT NULL COMMENT '修改人',
  `sort` int(11) NOT NULL COMMENT '排序值',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '是否启用',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_dict_data_dict_id_foreign`(`dict_id`) USING BTREE,
  CONSTRAINT `sys_dict_data_dict_id_foreign` FOREIGN KEY (`dict_id`) REFERENCES `sys_dict_categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, '男', '0', 1, NULL, 1, NULL, 0, 1, '2019-01-25 10:23:00', '2019-01-25 10:23:00');
INSERT INTO `sys_dict_data` VALUES (2, '女', '1', 1, NULL, 1, NULL, 1, 1, '2019-01-25 10:23:23', '2019-01-25 10:23:23');
INSERT INTO `sys_dict_data` VALUES (3, '填报员', '0', 2, '填报员', 1, NULL, 0, 1, '2019-03-20 21:36:22', '2019-03-20 21:36:22');
INSERT INTO `sys_dict_data` VALUES (4, '审核员', '1', 2, '审核员', 1, NULL, 1, 1, '2019-03-20 21:36:36', '2019-03-20 21:36:36');
INSERT INTO `sys_dict_data` VALUES (5, '管理人员', '2', 2, '管理人员', 1, NULL, 2, 1, '2019-03-20 21:36:53', '2019-03-20 21:36:53');

-- ----------------------------
-- Table structure for sys_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_menus`;
CREATE TABLE `sys_menus`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '英文标题',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '前端组件',
  `parent_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '父级ID',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '描述',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '地址',
  `link_type` int(11) NOT NULL DEFAULT 0 COMMENT '链接类型',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '第三方链接',
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT 'icon',
  `target` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self' COMMENT '链接跳转类型',
  `enabled` int(11) NOT NULL DEFAULT 1 COMMENT '是否启用',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序值',
  `created_user_id` int(11) NULL DEFAULT NULL COMMENT '创建用户ID',
  `updated_user_id` int(11) NULL DEFAULT NULL COMMENT '修改用户ID',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menus
-- ----------------------------
INSERT INTO `sys_menus` VALUES (1, '首页', 'base', NULL, 0, NULL, '/', 0, NULL, 'md-home', '_self', 1, 0, 1, NULL, '2019-03-25 20:44:45', '2019-03-25 20:45:32');
INSERT INTO `sys_menus` VALUES (2, '首页', 'home', 'views/sys/monitor/monitor', 1, NULL, '/home', 1, 'http://139.217.6.78:9000/slogan', 'md-home', '_self', 1, 0, 1, NULL, '2019-03-25 20:46:08', '2019-03-25 20:46:08');
INSERT INTO `sys_menus` VALUES (3, '系统管理', 'sys-manage', NULL, 0, '系统管理', '/sys-manage', 0, NULL, 'md-briefcase', '_self', 1, 1, 1, NULL, '2019-01-03 14:36:56', '1999-12-31 00:00:00');
INSERT INTO `sys_menus` VALUES (4, '用户管理', 'users', 'views/user/users', 3, '用户管理', 'users', 0, NULL, NULL, '_self', 1, 1, 1, NULL, '2019-01-25 11:08:19', '1999-12-31 00:00:00');
INSERT INTO `sys_menus` VALUES (5, '角色权限管理', 'role-manage', 'views/user/role-manage', 3, '角色权限管理', 'role-manage', 0, NULL, NULL, '_self', 1, 2, 1, NULL, '2018-12-27 16:13:30', '1999-12-31 00:00:00');
INSERT INTO `sys_menus` VALUES (6, '部门管理', 'department-manage', 'views/sys/department-manage/departmentManage', 3, '部门管理', 'department-manage/departmentManage', 0, NULL, NULL, '_self', 1, 3, 1, NULL, '2019-01-03 14:44:20', '1999-12-31 00:00:00');
INSERT INTO `sys_menus` VALUES (7, '菜单管理', 'menuManage', 'views/sys/menu-manage/menuManage', 3, '重构菜单', 'menuManage', 0, NULL, NULL, '_self', 1, 4, 1, NULL, '2019-01-23 14:45:44', '1999-12-31 00:00:00');
INSERT INTO `sys_menus` VALUES (8, '事件日志', 'eventlogs', 'views/sys/monitor/monitor', 3, '日志显示了程序中的潜在错误, 比如异常和调试信息。', 'eventlogs', 1, 'http://139.217.6.78:9000/logs', NULL, '_self', 1, 5, 1, NULL, '2019-01-09 16:37:32', '1999-12-31 00:00:00');
INSERT INTO `sys_menus` VALUES (9, '操作日志', 'operationlogs', 'views/sys/operationlogs', 3, '记录系统功能操作日志', 'operationlogs', 0, NULL, NULL, '_self', 1, 6, 1, NULL, '2019-01-10 02:46:52', '1999-12-31 00:00:00');
INSERT INTO `sys_menus` VALUES (10, '数据字典管理', 'dict', 'views/sys/dict-manage/dictManage', 3, '数据字典管理', 'dict-manage/dictManage', 0, NULL, NULL, '_self', 1, 7, 1, NULL, '2019-01-25 11:06:21', '1999-12-31 00:00:00');
INSERT INTO `sys_menus` VALUES (11, '个人中心', 'profile', 'views/sys/profile/profile', 3, '个人中心', '/sys/profile', 0, NULL, NULL, '_self', 1, 8, 1, NULL, '2019-01-18 14:54:09', '1999-12-31 00:00:00');

-- ----------------------------
-- Table structure for sys_notices
-- ----------------------------
DROP TABLE IF EXISTS `sys_notices`;
CREATE TABLE `sys_notices`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `send_user_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_operation_logs
-- ----------------------------
DROP TABLE IF EXISTS `sys_operation_logs`;
CREATE TABLE `sys_operation_logs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '操作名称',
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '请求类型',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '请求路径',
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'ip地址',
  `ip_place` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'ip信息',
  `user_id` int(11) NOT NULL COMMENT '操作用户',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles`;
CREATE TABLE `sys_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '角色名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '描述',
  `is_default` int(11) NOT NULL DEFAULT 0 COMMENT '是否设置为注册用户默认角色',
  `data_type` int(11) NOT NULL COMMENT '数据权限类型',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_roles
-- ----------------------------
INSERT INTO `sys_roles` VALUES (1, 'Superadmin', '超级管理员，拥有所有权限', 1, 0, '2018-12-17 18:47:02', '2019-04-09 09:33:07');

-- ----------------------------
-- Table structure for sys_roles_departments
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles_departments`;
CREATE TABLE `sys_roles_departments`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `department_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_roles_departments
-- ----------------------------
INSERT INTO `sys_roles_departments` VALUES (1, 2, 3);
INSERT INTO `sys_roles_departments` VALUES (2, 4, 3);
INSERT INTO `sys_roles_departments` VALUES (3, 5, 3);
INSERT INTO `sys_roles_departments` VALUES (28, 2, 1);
INSERT INTO `sys_roles_departments` VALUES (29, 3, 1);
INSERT INTO `sys_roles_departments` VALUES (30, 4, 1);
INSERT INTO `sys_roles_departments` VALUES (31, 5, 1);
INSERT INTO `sys_roles_departments` VALUES (39, 2, 4);
INSERT INTO `sys_roles_departments` VALUES (40, 3, 5);
INSERT INTO `sys_roles_departments` VALUES (41, 4, 6);
INSERT INTO `sys_roles_departments` VALUES (42, 8, 7);
INSERT INTO `sys_roles_departments` VALUES (43, 5, 8);
INSERT INTO `sys_roles_departments` VALUES (44, 9, 9);
INSERT INTO `sys_roles_departments` VALUES (45, 10, 10);
INSERT INTO `sys_roles_departments` VALUES (46, 11, 11);
INSERT INTO `sys_roles_departments` VALUES (47, 15, 11);
INSERT INTO `sys_roles_departments` VALUES (48, 12, 12);
INSERT INTO `sys_roles_departments` VALUES (49, 16, 12);
INSERT INTO `sys_roles_departments` VALUES (52, 13, 13);
INSERT INTO `sys_roles_departments` VALUES (53, 17, 13);
INSERT INTO `sys_roles_departments` VALUES (54, 14, 14);
INSERT INTO `sys_roles_departments` VALUES (55, 18, 14);
INSERT INTO `sys_roles_departments` VALUES (56, 7, 15);
INSERT INTO `sys_roles_departments` VALUES (57, 19, 15);
INSERT INTO `sys_roles_departments` VALUES (58, 20, 15);
INSERT INTO `sys_roles_departments` VALUES (59, 21, 16);
INSERT INTO `sys_roles_departments` VALUES (60, 22, 16);
INSERT INTO `sys_roles_departments` VALUES (62, 24, 18);
INSERT INTO `sys_roles_departments` VALUES (63, 23, 17);
INSERT INTO `sys_roles_departments` VALUES (64, 24, 17);
INSERT INTO `sys_roles_departments` VALUES (65, 25, 19);
INSERT INTO `sys_roles_departments` VALUES (66, 26, 20);
INSERT INTO `sys_roles_departments` VALUES (67, 27, 21);
INSERT INTO `sys_roles_departments` VALUES (68, 28, 22);
INSERT INTO `sys_roles_departments` VALUES (69, 6, 23);

-- ----------------------------
-- Table structure for sys_roles_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles_menus`;
CREATE TABLE `sys_roles_menus`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `checked` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_roles_menus
-- ----------------------------
INSERT INTO `sys_roles_menus` VALUES (1, 1, 1, 1);
INSERT INTO `sys_roles_menus` VALUES (2, 1, 2, 1);
INSERT INTO `sys_roles_menus` VALUES (3, 1, 3, 1);
INSERT INTO `sys_roles_menus` VALUES (4, 1, 4, 1);
INSERT INTO `sys_roles_menus` VALUES (5, 1, 5, 1);
INSERT INTO `sys_roles_menus` VALUES (6, 1, 6, 1);
INSERT INTO `sys_roles_menus` VALUES (7, 1, 7, 1);
INSERT INTO `sys_roles_menus` VALUES (8, 1, 8, 1);
INSERT INTO `sys_roles_menus` VALUES (9, 1, 9, 1);
INSERT INTO `sys_roles_menus` VALUES (10, 1, 10, 1);
INSERT INTO `sys_roles_menus` VALUES (11, 1, 11, 1);
INSERT INTO `sys_roles_menus` VALUES (12, 1, 12, 1);

SET FOREIGN_KEY_CHECKS = 1;
