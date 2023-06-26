/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 80032
 Source Host           : localhost:3306
 Source Schema         : kbk-administrator

 Target Server Type    : MySQL
 Target Server Version : 80032
 File Encoding         : 65001

 Date: 24/06/2023 20:20:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for administrators
-- ----------------------------
DROP TABLE IF EXISTS `administrators`;
CREATE TABLE `administrators`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `created_at` datetime(3) NOT NULL COMMENT '创建时间',
  `updated_at` datetime(3) NOT NULL COMMENT '更新时间',
  `deleted_at` datetime(3) NULL DEFAULT NULL COMMENT '删除时间',
  `status` tinyint(1) NOT NULL COMMENT '状态0冻结1正常',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `salt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码盐',
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '手机号',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '昵称',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色',
  `last_login_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '上次登录时间',
  `last_login_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '上次登录ip',
  `domain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '域',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of administrators
-- ----------------------------
INSERT INTO `administrators` VALUES (1, '2022-08-17 16:15:17.000', '2023-05-30 11:54:23.113', NULL, 1, 'admin', 'a69f862825eca20d21a1a8a2c1efcd2b', '0ac0b692450bd96889e3d71b4618ab58', '18158445333', '卡牌', 'https://kratos-base-project.oss-cn-hangzhou.aliyuncs.com/3441660123117_.pic.jpg', '超级管理员', '2023-06-24 13:57:09', '127.0.0.1:61331', 'default');
INSERT INTO `administrators` VALUES (2, '2022-12-07 11:28:48.000', '2022-12-07 11:28:48.000', NULL, 1, 'test', '8ab138656a71b1e001aa12cc7298f901', 'cb1461e3e59ec7a2237bf5f5fa105ab5', '18158445332', '测试', 'https://kratos-base-project.oss-cn-hangzhou.aliyuncs.com/3441660123117_.pic.jpg', '测试管理员', '2022-12-07 17:05:50', '127.0.0.1:59530', 'default');
INSERT INTO `administrators` VALUES (3, '2022-12-07 11:29:26.000', '2022-12-07 11:29:26.000', NULL, 1, 'guest', 'a5ac55c657800544fa68377d4bb64505', 'dabba3032e7d0c51c48e7ca794e589b8', '18158445333', '游客', 'https://kratos-base-project.oss-cn-hangzhou.aliyuncs.com/3441660123117_.pic.jpg', '游客', '2022-12-07 17:06:15', '127.0.0.1:59572', 'default');
INSERT INTO `administrators` VALUES (25, '2023-06-18 14:47:43.868', '2023-06-18 14:47:43.868', NULL, 1, 'pictest', 'dc6f8f8df934c448f36af91ce5a8b539', '19d96269d4270aa6194d68f8317897de', '18158445331', '123456', 'https://kratos-base-kit.oss-cn-shanghai.aliyuncs.com/user/bfd2d596.jpg', '测试管理员', '', '', 'default');
INSERT INTO `administrators` VALUES (26, '2023-06-18 14:50:09.084', '2023-06-18 22:06:37.017', NULL, 1, 'zhouqi12', 'fa6a3096f1b1491b83e77337b1ce2986', 'c9628b5bdc58408373e0e8ec2b7e35d4', '18158445331', '2121', 'https://kratos-base-kit.oss-cn-shanghai.aliyuncs.com/user/a2d9acb3.jpg', '游客', '', '', 'default');
INSERT INTO `administrators` VALUES (27, '2023-06-18 22:11:34.849', '2023-06-18 22:11:45.557', NULL, 1, 'pintest2', '1b8a26052305f720ebedce0dae25891b', 'f011b5aab1d7a542e05f806cc750c018', '18158445331', '23156', 'https://kratos-base-kit.oss-cn-shanghai.aliyuncs.com/user/52674df6.jpg', '超级管理员', '', '', 'default');

SET FOREIGN_KEY_CHECKS = 1;
