/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 80032
 Source Host           : localhost:3306
 Source Schema         : kbk-authorization

 Target Server Type    : MySQL
 Target Server Version : 80032
 File Encoding         : 65001

 Date: 24/06/2023 20:20:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for apis
-- ----------------------------
DROP TABLE IF EXISTS `apis`;
CREATE TABLE `apis`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `created_at` datetime(3) NOT NULL COMMENT '创建时间',
  `updated_at` datetime(3) NOT NULL COMMENT '更新时间',
  `deleted_at` datetime(3) NULL DEFAULT NULL COMMENT '删除时间',
  `domain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所在域',
  `group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '分组',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '请求方式',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '请求路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of apis
-- ----------------------------
INSERT INTO `apis` VALUES (1, '2022-12-06 11:08:41.000', '2022-12-06 11:08:41.000', NULL, 'default', '基础分组', '登录', 'POST', '/admin.v1.Admin/Login');
INSERT INTO `apis` VALUES (2, '2022-12-06 12:09:22.000', '2022-12-06 12:09:22.000', NULL, 'default', '基础分组', '角色菜单列表', 'GET', '/admin.v1.Admin/GetRoleMenu');
INSERT INTO `apis` VALUES (3, '2022-12-06 11:09:37.000', '2022-12-06 11:09:37.000', NULL, 'default', '基础分组', '登录用户信息', 'GET', '/admin.v1.Admin/GetAdministratorInfo');
INSERT INTO `apis` VALUES (4, '2022-12-06 11:10:21.000', '2022-12-06 11:10:21.000', NULL, 'default', '基础分组', '退出登录', 'POST', '/admin.v1.Admin/LoginOut');
INSERT INTO `apis` VALUES (5, '2022-12-06 11:13:11.000', '2022-12-06 11:13:47.000', NULL, 'default', '基础分组', '菜单栏信息(树)', 'GET', '/admin.v1.Admin/GetRoleMenuTree');
INSERT INTO `apis` VALUES (6, '2022-12-06 11:14:45.000', '2022-12-06 11:14:45.000', NULL, 'default', '基础分组', '获取按钮列表信息', 'GET', '/admin.v1.Admin/GetRoleMenuBtn');
INSERT INTO `apis` VALUES (7, '2022-12-06 11:16:14.000', '2022-12-06 11:24:28.000', NULL, 'default', '管理员管理', '新增', 'POST', '/admin.v1.Admin/CreateAdministrator');
INSERT INTO `apis` VALUES (8, '2022-12-06 11:17:40.000', '2022-12-06 11:24:32.000', NULL, 'default', '管理员管理', '编辑', 'PUT', '/admin.v1.Admin/UpdateAdministrator');
INSERT INTO `apis` VALUES (9, '2022-12-06 11:18:42.000', '2022-12-06 11:24:36.000', NULL, 'default', '管理员管理', '列表', 'GET', '/admin.v1.Admin/GetAdministratorList');
INSERT INTO `apis` VALUES (10, '2022-12-06 11:19:14.000', '2022-12-06 11:24:40.000', NULL, 'default', '管理员管理', '详情', 'GET', '/admin.v1.Admin/GetAdministrator');
INSERT INTO `apis` VALUES (11, '2022-12-06 11:19:59.000', '2022-12-06 11:24:45.000', NULL, 'default', '管理员管理', '删除', 'DELETE', '/admin.v1.Admin/DeleteAdministrator');
INSERT INTO `apis` VALUES (12, '2022-12-06 11:20:41.000', '2022-12-06 11:24:49.000', NULL, 'default', '管理员管理', '恢复', 'PATCH', '/admin.v1.Admin/RecoverAdministrator');
INSERT INTO `apis` VALUES (13, '2022-12-06 11:21:27.000', '2022-12-06 11:24:53.000', NULL, 'default', '管理员管理', '禁用', 'PATCH', '/admin.v1.Admin/forbidAdministrator');
INSERT INTO `apis` VALUES (14, '2022-12-06 11:22:26.000', '2022-12-06 11:24:57.000', NULL, 'default', '管理员管理', '解禁', 'PATCH', '/admin.v1.Admin/approveAdministrator');
INSERT INTO `apis` VALUES (15, '2022-12-06 11:27:05.000', '2022-12-06 11:27:05.000', NULL, 'default', '菜单管理', '新增', 'POST', '/admin.v1.Admin/CreateMenu');
INSERT INTO `apis` VALUES (16, '2022-12-06 11:27:48.000', '2022-12-06 11:27:48.000', NULL, 'default', '菜单管理', '编辑', 'PUT', '/admin.v1.Admin/UpdateMenu');
INSERT INTO `apis` VALUES (17, '2022-12-07 16:52:30.000', '2022-12-07 16:52:32.000', NULL, 'default', '菜单管理', '列表(树)', 'GET', '/admin.v1.Admin/GetMenuTree');
INSERT INTO `apis` VALUES (18, '2022-12-06 11:29:24.000', '2022-12-06 11:29:24.000', NULL, 'default', '菜单管理', '删除', 'DELETE', '/admin.v1.Admin/DeleteMenu');
INSERT INTO `apis` VALUES (19, '2022-12-06 11:29:24.000', '2022-12-06 11:29:24.000', NULL, 'default', '菜单管理', '列表(全部)', 'GET', '/admin.v1.Admin/GetMenuAll');
INSERT INTO `apis` VALUES (21, '2022-12-06 12:03:52.000', '2022-12-06 12:03:52.000', NULL, 'default', '角色管理', '新增', 'POST', '/admin.v1.Admin/CreateRole');
INSERT INTO `apis` VALUES (22, '2022-12-06 12:04:40.000', '2022-12-06 12:04:40.000', NULL, 'default', '角色管理', '编辑', 'PUT', '/admin.v1.Admin/UpdateRole');
INSERT INTO `apis` VALUES (23, '2022-12-06 12:05:11.000', '2022-12-06 12:05:11.000', NULL, 'default', '角色管理', '删除', 'DELETE', '/admin.v1.Admin/DeleteRole');
INSERT INTO `apis` VALUES (24, '2022-12-06 12:05:42.000', '2022-12-06 12:05:42.000', NULL, 'default', '角色管理', '列表', 'GET', '/admin.v1.Admin/GetRoleAll');
INSERT INTO `apis` VALUES (26, '2022-12-06 12:09:22.000', '2022-12-06 12:09:22.000', NULL, 'default', '角色管理', '获取已有权限api', 'GET', '/admin.v1.Admin/GetPolicies');
INSERT INTO `apis` VALUES (27, '2022-12-06 12:10:04.000', '2022-12-06 12:10:04.000', NULL, 'default', '角色管理', '设置角色菜单', 'POST', '/admin.v1.Admin/SetRoleMenu');
INSERT INTO `apis` VALUES (28, '2022-12-06 12:12:10.000', '2022-12-06 12:12:10.000', NULL, 'default', '角色管理', '设置角色API', 'POST', '/admin.v1.Admin/UpdatePolicies');
INSERT INTO `apis` VALUES (30, '2022-12-06 12:13:20.000', '2022-12-06 12:13:20.000', NULL, 'default', '角色管理', '设置角色菜单按钮', 'POST', '/admin.v1.Admin/SetRoleMenuBtn');
INSERT INTO `apis` VALUES (31, '2022-12-06 12:14:07.000', '2022-12-06 12:14:07.000', NULL, 'default', 'API管理', '新增', 'POST', '/admin.v1.Admin/CreateApi');
INSERT INTO `apis` VALUES (32, '2022-12-06 12:14:35.000', '2022-12-06 12:14:35.000', NULL, 'default', 'API管理', '编辑', 'PUT', '/admin.v1.Admin/UpdateApi');
INSERT INTO `apis` VALUES (33, '2022-12-06 12:15:21.000', '2022-12-06 12:15:21.000', NULL, 'default', 'API管理', '列表', 'GET', '/admin.v1.Admin/GetApiList');
INSERT INTO `apis` VALUES (34, '2022-12-06 12:16:19.000', '2022-12-06 12:16:19.000', NULL, 'default', 'API管理', '删除', 'DELETE', '/admin.v1.Admin/DeleteApi');
INSERT INTO `apis` VALUES (35, '2023-05-24 01:28:00.000', '2023-05-24 01:28:02.000', NULL, 'default', 'API管理', 'API列表(全部)', 'GET', '/admin.v1.Admin/GetApiAll');
INSERT INTO `apis` VALUES (36, '2022-12-07 18:26:33.000', '2022-12-07 18:26:33.000', NULL, 'default', '角色管理', '查看角色成员', 'GET', '/admin.v1.Admin/GetUsersForRole');
INSERT INTO `apis` VALUES (37, '2022-12-07 18:26:56.000', '2022-12-07 18:26:56.000', NULL, 'default', '角色管理', '移除角色用户', 'DELETE', '/admin.v1.Admin/DeleteRoleForUser');
INSERT INTO `apis` VALUES (38, '2022-12-07 18:26:33.000', '2022-12-07 18:26:33.000', NULL, 'default', '角色管理', '查看用户角色', 'GET', '/admin.v1.Admin/GetRolesForUser');
INSERT INTO `apis` VALUES (39, '2022-12-07 18:26:33.000', '2022-12-07 18:26:33.000', NULL, 'default', '角色管理', '删除用户所有角色', 'DELETE', '/admin.v1.Admin/DeleteRolesForUser');
INSERT INTO `apis` VALUES (40, '2023-06-05 17:36:05.000', '2023-06-05 17:36:07.000', NULL, 'default', '日志管理', '日志列表', 'GET', '/admin.v1.Admin/GetApiLogList');
INSERT INTO `apis` VALUES (41, '2023-06-05 17:36:05.000', '2023-06-05 17:36:07.000', NULL, 'default', '角色管理', '设置用户角色', 'POST', '/admin.v1.Admin/SetRolesForUser');
INSERT INTO `apis` VALUES (45, '2023-06-18 13:49:30.729', '2023-06-18 13:49:30.729', NULL, 'default', '基础分组', '获取阿里云oss token', 'GET', '/admin.v1.Admin/GetOssStsToken');
INSERT INTO `apis` VALUES (46, '2023-06-20 16:32:50.000', '2023-06-20 16:32:56.000', NULL, 'default', 'AI分组', '发送chatgpt训练内容', 'POST', '/admin.v1.Admin/CreateGptMessage');

-- ----------------------------
-- Table structure for casbin_rule
-- ----------------------------
DROP TABLE IF EXISTS `casbin_rule`;
CREATE TABLE `casbin_rule`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ptype` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `v0` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `v1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `v2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `v3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `v4` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `v5` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `v6` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `v7` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_casbin_rule`(`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 392679 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of casbin_rule
-- ----------------------------
INSERT INTO `casbin_rule` VALUES (367, 'g', 'admin', '测试管理员', 'default', '', '', '', '', '');
INSERT INTO `casbin_rule` VALUES (366, 'g', 'admin', '超级管理员', 'default', '', '', '', '', '');
INSERT INTO `casbin_rule` VALUES (278, 'g', 'guest', '游客', 'default', '', '', '', '', '');
INSERT INTO `casbin_rule` VALUES (392626, 'g', 'pictest', '测试管理员', 'default', '', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392627, 'g', 'pictest', '游客', 'default', '', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392637, 'g', 'pintest2', '测试管理员', 'default', '', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392636, 'g', 'pintest2', '超级管理员', 'default', '', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (277, 'g', 'test', '测试管理员', 'default', '', '', '', '', '');
INSERT INTO `casbin_rule` VALUES (392633, 'g', 'zhouqi12', '测试管理员', 'default', '', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (357, 'p', '测试管理员', 'default', '/admin.v1.Admin/GetAdministratorInfo', 'GET', '', '', '', '');
INSERT INTO `casbin_rule` VALUES (355, 'p', '测试管理员', 'default', '/admin.v1.Admin/GetRoleMenuBtn', 'GET', '', '', '', '');
INSERT INTO `casbin_rule` VALUES (359, 'p', '测试管理员', 'default', '/admin.v1.Admin/GetRoleMenuTree', 'GET', '', '', '', '');
INSERT INTO `casbin_rule` VALUES (356, 'p', '测试管理员', 'default', '/admin.v1.Admin/Login', 'POST', '', '', '', '');
INSERT INTO `casbin_rule` VALUES (358, 'p', '测试管理员', 'default', '/admin.v1.Admin/LoginOut', 'POST', '', '', '', '');
INSERT INTO `casbin_rule` VALUES (392623, 'p', '游客', 'default', '/admin.v1.Admin/CreateAdministrator', 'POST', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392625, 'p', '游客', 'default', '/admin.v1.Admin/GetAdministrator', 'GET', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392618, 'p', '游客', 'default', '/admin.v1.Admin/GetAdministratorInfo', 'GET', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392624, 'p', '游客', 'default', '/admin.v1.Admin/GetAdministratorList', 'GET', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392622, 'p', '游客', 'default', '/admin.v1.Admin/GetOssStsToken', 'GET', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392617, 'p', '游客', 'default', '/admin.v1.Admin/GetRoleMenu', 'GET', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392621, 'p', '游客', 'default', '/admin.v1.Admin/GetRoleMenuBtn', 'GET', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392620, 'p', '游客', 'default', '/admin.v1.Admin/GetRoleMenuTree', 'GET', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392616, 'p', '游客', 'default', '/admin.v1.Admin/Login', 'POST', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392619, 'p', '游客', 'default', '/admin.v1.Admin/LoginOut', 'POST', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392652, 'p', '超级管理员', 'default', '/admin.v1.Admin/approveAdministrator', 'PATCH', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392645, 'p', '超级管理员', 'default', '/admin.v1.Admin/CreateAdministrator', 'POST', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392671, 'p', '超级管理员', 'default', '/admin.v1.Admin/CreateApi', 'POST', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392677, 'p', '超级管理员', 'default', '/admin.v1.Admin/CreateGptMessage', 'POST', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392678, 'p', '超级管理员', 'default', '/admin.v1.Admin/CreateGptMessage', 'POST', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392653, 'p', '超级管理员', 'default', '/admin.v1.Admin/CreateMenu', 'POST', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392658, 'p', '超级管理员', 'default', '/admin.v1.Admin/CreateRole', 'POST', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392649, 'p', '超级管理员', 'default', '/admin.v1.Admin/DeleteAdministrator', 'DELETE', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392674, 'p', '超级管理员', 'default', '/admin.v1.Admin/DeleteApi', 'DELETE', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392656, 'p', '超级管理员', 'default', '/admin.v1.Admin/DeleteMenu', 'DELETE', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392660, 'p', '超级管理员', 'default', '/admin.v1.Admin/DeleteRole', 'DELETE', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392667, 'p', '超级管理员', 'default', '/admin.v1.Admin/DeleteRoleForUser', 'DELETE', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392669, 'p', '超级管理员', 'default', '/admin.v1.Admin/DeleteRolesForUser', 'DELETE', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392651, 'p', '超级管理员', 'default', '/admin.v1.Admin/forbidAdministrator', 'PATCH', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392648, 'p', '超级管理员', 'default', '/admin.v1.Admin/GetAdministrator', 'GET', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392640, 'p', '超级管理员', 'default', '/admin.v1.Admin/GetAdministratorInfo', 'GET', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392647, 'p', '超级管理员', 'default', '/admin.v1.Admin/GetAdministratorList', 'GET', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392675, 'p', '超级管理员', 'default', '/admin.v1.Admin/GetApiAll', 'GET', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392673, 'p', '超级管理员', 'default', '/admin.v1.Admin/GetApiList', 'GET', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392676, 'p', '超级管理员', 'default', '/admin.v1.Admin/GetApiLogList', 'GET', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392657, 'p', '超级管理员', 'default', '/admin.v1.Admin/GetMenuAll', 'GET', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392655, 'p', '超级管理员', 'default', '/admin.v1.Admin/GetMenuTree', 'GET', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392644, 'p', '超级管理员', 'default', '/admin.v1.Admin/GetOssStsToken', 'GET', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392662, 'p', '超级管理员', 'default', '/admin.v1.Admin/GetPolicies', 'GET', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392661, 'p', '超级管理员', 'default', '/admin.v1.Admin/GetRoleAll', 'GET', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392639, 'p', '超级管理员', 'default', '/admin.v1.Admin/GetRoleMenu', 'GET', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392643, 'p', '超级管理员', 'default', '/admin.v1.Admin/GetRoleMenuBtn', 'GET', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392642, 'p', '超级管理员', 'default', '/admin.v1.Admin/GetRoleMenuTree', 'GET', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392668, 'p', '超级管理员', 'default', '/admin.v1.Admin/GetRolesForUser', 'GET', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392666, 'p', '超级管理员', 'default', '/admin.v1.Admin/GetUsersForRole', 'GET', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392638, 'p', '超级管理员', 'default', '/admin.v1.Admin/Login', 'POST', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392641, 'p', '超级管理员', 'default', '/admin.v1.Admin/LoginOut', 'POST', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392650, 'p', '超级管理员', 'default', '/admin.v1.Admin/RecoverAdministrator', 'PATCH', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392663, 'p', '超级管理员', 'default', '/admin.v1.Admin/SetRoleMenu', 'POST', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392665, 'p', '超级管理员', 'default', '/admin.v1.Admin/SetRoleMenuBtn', 'POST', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392670, 'p', '超级管理员', 'default', '/admin.v1.Admin/SetRolesForUser', 'POST', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392646, 'p', '超级管理员', 'default', '/admin.v1.Admin/UpdateAdministrator', 'PUT', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392672, 'p', '超级管理员', 'default', '/admin.v1.Admin/UpdateApi', 'PUT', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392654, 'p', '超级管理员', 'default', '/admin.v1.Admin/UpdateMenu', 'PUT', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392664, 'p', '超级管理员', 'default', '/admin.v1.Admin/UpdatePolicies', 'POST', '', '', NULL, NULL);
INSERT INTO `casbin_rule` VALUES (392659, 'p', '超级管理员', 'default', '/admin.v1.Admin/UpdateRole', 'PUT', '', '', NULL, NULL);

-- ----------------------------
-- Table structure for menu_btns
-- ----------------------------
DROP TABLE IF EXISTS `menu_btns`;
CREATE TABLE `menu_btns`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `domain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所在域',
  `menu_id` bigint(0) NULL DEFAULT NULL COMMENT '菜单id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '按钮名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '描述',
  `identifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '英文标识',
  `created_at` datetime(3) NOT NULL COMMENT '创建时间',
  `updated_at` datetime(3) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_menus_menu_btns`(`menu_id`) USING BTREE,
  CONSTRAINT `fk_menus_menu_btns` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu_btns
-- ----------------------------
INSERT INTO `menu_btns` VALUES (20, 'default', 2, '新增', '新增管理员', 'createAdministrator', '2022-12-06 14:12:38.442', '2022-12-06 14:12:38.442');
INSERT INTO `menu_btns` VALUES (21, 'default', 2, '编辑', '编辑管理员', 'updateAdministrator', '2022-12-06 14:12:38.444', '2022-12-06 14:12:38.444');
INSERT INTO `menu_btns` VALUES (22, 'default', 2, '禁用/解禁', '禁用/解禁管理员', 'deleteRecoverAdministrator', '2022-12-06 14:12:38.446', '2022-12-06 14:12:38.446');
INSERT INTO `menu_btns` VALUES (23, 'default', 2, '删除/恢复', '删除/恢复管理员', 'forbidAApproveAdministrator', '2022-12-06 14:12:38.448', '2022-12-06 14:12:38.448');
INSERT INTO `menu_btns` VALUES (24, 'default', 3, '新增', '新增菜单', 'createMenu', '2022-12-06 14:18:02.694', '2022-12-06 14:18:02.694');
INSERT INTO `menu_btns` VALUES (25, 'default', 3, '编辑', '编辑菜单', 'updateMenu', '2022-12-06 14:18:02.695', '2022-12-06 14:18:02.695');
INSERT INTO `menu_btns` VALUES (26, 'default', 3, '删除', '删除菜单', 'deleteMenu', '2022-12-06 14:18:02.697', '2022-12-06 14:18:02.697');
INSERT INTO `menu_btns` VALUES (27, 'default', 4, '新增', '新增角色', 'createRole', '2022-12-07 18:23:24.319', '2022-12-07 18:23:24.319');
INSERT INTO `menu_btns` VALUES (28, 'default', 4, '编辑', '编辑角色', 'updateRole', '2022-12-07 18:23:24.321', '2022-12-07 18:23:24.321');
INSERT INTO `menu_btns` VALUES (29, 'default', 4, '删除', '删除角色', 'deleteRole', '2022-12-07 18:23:24.322', '2022-12-07 18:23:24.322');
INSERT INTO `menu_btns` VALUES (30, 'default', 4, '设置权限', '设置角色权限', 'setRolePermission', '2022-12-07 18:23:24.324', '2022-12-07 18:23:24.324');
INSERT INTO `menu_btns` VALUES (31, 'default', 4, '设置菜单权限', '设置角色菜单权限', 'setRoleMenuPermission', '2022-12-07 18:23:24.325', '2022-12-07 18:23:24.325');
INSERT INTO `menu_btns` VALUES (32, 'default', 4, '设置API权限', '设置角色API权限', 'setRoleAPIPermission', '2022-12-07 18:23:24.327', '2022-12-07 18:23:24.327');
INSERT INTO `menu_btns` VALUES (33, 'default', 4, '设置按钮权限', '设置角色按钮权限', 'setRoleMenuButtonPermission', '2022-12-07 18:23:24.328', '2022-12-07 18:23:24.328');
INSERT INTO `menu_btns` VALUES (34, 'default', 4, '查看成员', '查看角色所有成员', 'getRoleMembers', '2022-12-07 18:23:24.330', '2022-12-07 18:23:24.330');
INSERT INTO `menu_btns` VALUES (35, 'default', 4, '移除角色成员', '移除角色成员', 'removeRoleMember', '2022-12-07 18:23:24.331', '2022-12-07 18:23:24.331');
INSERT INTO `menu_btns` VALUES (36, 'default', 5, '删除', '删除API', 'deleteAPI', '2022-12-06 14:23:26.972', '2022-12-06 14:23:26.972');
INSERT INTO `menu_btns` VALUES (37, 'default', 5, '新增', '新增API', 'createAPI', '2022-12-06 14:23:26.970', '2022-12-06 14:23:26.970');
INSERT INTO `menu_btns` VALUES (38, 'default', 5, '编辑', '编辑API', 'updateAPI', '2022-12-06 14:23:26.971', '2022-12-06 14:23:26.971');
INSERT INTO `menu_btns` VALUES (39, 'default', 36, '有权限', '有权限按钮', 'hasPermissionButton', '2022-12-07 11:44:35.456', '2022-12-07 11:44:35.456');
INSERT INTO `menu_btns` VALUES (40, 'default', 36, '无权限', '无权限按钮', 'noPermissionButton', '2022-12-07 11:44:35.456', '2022-12-07 11:44:35.456');
INSERT INTO `menu_btns` VALUES (43, 'default', 39, '创建12', '描述1', '', '2023-05-22 09:44:51.420', '2023-05-22 09:44:51.420');

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `domain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所在域',
  `parent_id` bigint(0) NULL DEFAULT NULL COMMENT '父级id',
  `parent_ids` tinyint(0) NULL DEFAULT NULL COMMENT '父级id字符串 英文逗号分割',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '前端路径',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '菜单名',
  `hidden` tinyint(1) NOT NULL COMMENT '是否隐藏 0否1是',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '前端文件路径',
  `sort` bigint(0) NULL DEFAULT NULL COMMENT '排序',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '页面名称',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '菜单图标',
  `redirect` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '直接跳转',
  `created_at` datetime(3) NOT NULL COMMENT '创建时间',
  `updated_at` datetime(3) NOT NULL COMMENT '更新时间',
  `deleted_at` datetime(3) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES (1, 'default', 0, 0, '/system', 'system', 0, '#', 2, '系统管理', 'el-icon-s-tools', '', '2022-11-15 14:56:16.000', '2022-11-15 14:56:18.000', NULL);
INSERT INTO `menus` VALUES (2, 'default', 1, 1, '/system/adminstrator', 'administrator', 0, '/system/administrator/index', 1, '管理员管理', 'el-icon-user-solid', '', '2022-11-15 14:58:41.000', '2022-12-06 14:12:38.439', NULL);
INSERT INTO `menus` VALUES (3, 'default', 1, 1, '/system/auth/menu', 'menu', 0, '/system/auth/menu/index', 2, '菜单管理', 'el-icon-notebook-2', '', '2022-12-01 15:48:57.000', '2022-12-06 14:18:02.691', NULL);
INSERT INTO `menus` VALUES (4, 'default', 1, 1, '/system/auth/role', 'role', 0, '/system/auth/role/index', 3, '角色管理', 'el-icon-user', '', '2022-11-24 15:33:30.000', '2022-12-07 18:23:24.315', NULL);
INSERT INTO `menus` VALUES (5, 'default', 1, 1, '/system/auth/api', 'api', 0, '/system/auth/api/index', 4, 'API管理', 'el-icon-setting', '', '2022-11-23 14:42:04.000', '2022-12-06 14:23:26.966', NULL);
INSERT INTO `menus` VALUES (35, 'default', 0, 0, '/example', 'example', 0, '#', 999, '测试菜单', 'el-icon-s-flag', '', '2022-12-07 10:36:58.676', '2022-12-07 11:43:33.458', NULL);
INSERT INTO `menus` VALUES (36, 'default', 35, 35, '/example/permission', 'permission_test', 0, '/example/index', 1, '按钮权限测试', 'el-icon-s-tools', '', '2022-12-07 11:44:35.452', '2022-12-07 11:44:35.452', NULL);
INSERT INTO `menus` VALUES (39, 'default', 0, 0, '/dashboard', 'dashborard', 0, 'view/system/index.vue', 1, '首页', 'system', '', '2023-05-22 09:44:51.417', '2023-05-22 09:44:51.417', NULL);
INSERT INTO `menus` VALUES (45, 'default', 1, 1, '/system/auth/log', 'log', 0, '/system/auth/log/index', 5, '日志列表', 'el-icon-document', '', '2023-06-18 15:34:27.832', '2023-06-18 15:34:27.832', NULL);
INSERT INTO `menus` VALUES (46, 'default', 0, 0, '/ai', 'AI', 0, '#', 1, 'AI管理', 'ai', '', '2023-06-18 19:03:41.097', '2023-06-18 19:03:41.097', NULL);
INSERT INTO `menus` VALUES (47, 'default', 46, 46, '/ai/chatgpt', 'chatgpt', 0, '/ai/chatgpt', 1, 'chatgpt', 'beebot', '', '2023-06-19 11:12:42.000', '2023-06-19 11:12:44.000', NULL);

-- ----------------------------
-- Table structure for role_menu
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `domain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所在域',
  `role_id` bigint(0) NULL DEFAULT NULL COMMENT '角色id',
  `menu_id` bigint(0) NULL DEFAULT NULL COMMENT '菜单id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 164 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES (81, 'default', 39, 35);
INSERT INTO `role_menu` VALUES (82, 'default', 39, 36);
INSERT INTO `role_menu` VALUES (83, 'default', 2, 9);
INSERT INTO `role_menu` VALUES (84, 'default', 2, 10);
INSERT INTO `role_menu` VALUES (85, 'default', 2, 13);
INSERT INTO `role_menu` VALUES (122, 'default', 3, 35);
INSERT INTO `role_menu` VALUES (123, 'default', 3, 36);
INSERT INTO `role_menu` VALUES (124, 'default', 3, 1);
INSERT INTO `role_menu` VALUES (125, 'default', 3, 2);
INSERT INTO `role_menu` VALUES (153, 'default', 1, 39);
INSERT INTO `role_menu` VALUES (154, 'default', 1, 46);
INSERT INTO `role_menu` VALUES (155, 'default', 1, 47);
INSERT INTO `role_menu` VALUES (156, 'default', 1, 1);
INSERT INTO `role_menu` VALUES (157, 'default', 1, 2);
INSERT INTO `role_menu` VALUES (158, 'default', 1, 3);
INSERT INTO `role_menu` VALUES (159, 'default', 1, 4);
INSERT INTO `role_menu` VALUES (160, 'default', 1, 5);
INSERT INTO `role_menu` VALUES (161, 'default', 1, 45);
INSERT INTO `role_menu` VALUES (162, 'default', 1, 35);
INSERT INTO `role_menu` VALUES (163, 'default', 1, 36);

-- ----------------------------
-- Table structure for role_menu_btn
-- ----------------------------
DROP TABLE IF EXISTS `role_menu_btn`;
CREATE TABLE `role_menu_btn`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `domain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所在域',
  `role_id` bigint(0) NULL DEFAULT NULL COMMENT '角色id',
  `menu_id` bigint(0) NULL DEFAULT NULL COMMENT '菜单id',
  `btn_id` bigint(0) NULL DEFAULT NULL COMMENT '按钮id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色菜单按钮表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_menu_btn
-- ----------------------------
INSERT INTO `role_menu_btn` VALUES (2, 'default', 1, 2, 20);
INSERT INTO `role_menu_btn` VALUES (3, 'default', 1, 2, 21);
INSERT INTO `role_menu_btn` VALUES (4, 'default', 1, 2, 22);
INSERT INTO `role_menu_btn` VALUES (5, 'default', 1, 2, 23);
INSERT INTO `role_menu_btn` VALUES (6, 'default', 1, 3, 24);
INSERT INTO `role_menu_btn` VALUES (7, 'default', 1, 3, 25);
INSERT INTO `role_menu_btn` VALUES (8, 'default', 1, 3, 26);
INSERT INTO `role_menu_btn` VALUES (9, 'default', 1, 4, 27);
INSERT INTO `role_menu_btn` VALUES (10, 'default', 1, 4, 28);
INSERT INTO `role_menu_btn` VALUES (11, 'default', 1, 4, 29);
INSERT INTO `role_menu_btn` VALUES (12, 'default', 1, 4, 30);
INSERT INTO `role_menu_btn` VALUES (13, 'default', 1, 4, 31);
INSERT INTO `role_menu_btn` VALUES (14, 'default', 1, 4, 32);
INSERT INTO `role_menu_btn` VALUES (15, 'default', 1, 4, 33);
INSERT INTO `role_menu_btn` VALUES (21, 'default', 1, 36, 39);
INSERT INTO `role_menu_btn` VALUES (22, 'default', 1, 36, 40);
INSERT INTO `role_menu_btn` VALUES (23, 'default', 39, 36, 39);
INSERT INTO `role_menu_btn` VALUES (26, 'default', 1, 5, 36);
INSERT INTO `role_menu_btn` VALUES (27, 'default', 1, 5, 37);
INSERT INTO `role_menu_btn` VALUES (28, 'default', 1, 5, 38);
INSERT INTO `role_menu_btn` VALUES (29, 'default', 3, 5, 36);
INSERT INTO `role_menu_btn` VALUES (30, 'default', 3, 5, 37);
INSERT INTO `role_menu_btn` VALUES (31, 'default', 3, 5, 38);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `domain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所在域',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `created_at` datetime(3) NOT NULL COMMENT '创建时间',
  `updated_at` datetime(3) NOT NULL COMMENT '更新时间',
  `deleted_at` datetime(3) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'default', '超级管理员', '2022-09-07 01:12:43.000', '2022-11-25 14:48:48.000', NULL);
INSERT INTO `roles` VALUES (2, 'default', '测试管理员', '2022-12-06 11:57:30.000', '2022-12-06 14:24:40.000', NULL);
INSERT INTO `roles` VALUES (3, 'default', '游客', '2022-12-07 11:25:42.000', '2022-12-07 11:25:42.000', NULL);

SET FOREIGN_KEY_CHECKS = 1;
