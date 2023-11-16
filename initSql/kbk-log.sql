/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 80032
 Source Host           : localhost:3306
 Source Schema         : kbk-log

 Target Server Type    : MySQL
 Target Server Version : 80032
 File Encoding         : 65001

 Date: 24/06/2023 20:21:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `domain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '域',
  `trace_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'trace id',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '请求http/tpc',
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户Id',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色',
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '请求方式',
  `operation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'kratos操作',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '请求path',
  `request` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '请求参数',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '返回code',
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '返回reason',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'IP',
  `latency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '响应时长',
  `created_at` datetime(3) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES (4, '管理员管理-新增', 'default', '', '/admin.v1.Admin/CreateAdministrator', '1', 'admin', '超级管理员', 'POST', '/admin.v1.Admin/CreateAdministrator', '/admin/v1/administrator', '{\"id\":0,\"status\":true,\"username\":\"pictest\",\"password\":\"123456\",\"mobile\":\"18158445331\",\"nickname\":\"123456\",\"avatar\":\"https://kratos-base-kit.oss-cn-shanghai.aliyuncs.com/user/bfd2d596.jpg\",\"role\":[\"测试管理员\",\"游客\"]}', '0', '', '', '0.1137248s', '2023-06-18 14:47:43.996');
INSERT INTO `log` VALUES (5, '管理员管理-新增', 'default', '', '/admin.v1.Admin/CreateAdministrator', '1', 'admin', '超级管理员', 'POST', '/admin.v1.Admin/CreateAdministrator', '/admin/v1/administrator', '{\"id\":0,\"status\":true,\"username\":\"zhouqi12\",\"password\":\"123456\",\"mobile\":\"18158445331\",\"nickname\":\"2121\",\"avatar\":\"https://kratos-base-kit.oss-cn-shanghai.aliyuncs.com/user/a2d9acb3.jpg\",\"role\":[\"游客\"]}', '0', '', '', '0.0372166s', '2023-06-18 14:50:09.119');
INSERT INTO `log` VALUES (6, '菜单管理-新增', 'default', '', '/admin.v1.Admin/CreateMenu', '1', 'admin', '超级管理员', 'POST', '/admin.v1.Admin/CreateMenu', '/admin/v1/authorization/menu', '{\"id\":\"undefined\",\"path\":\"/system/auth/log\",\"name\":\"log\",\"hidden\":false,\"component\":\"/system/auth/log/index\",\"sort\":\"5\",\"title\":\"日志列表\",\"icon\":\"el-icon-document\",\"parentIds\":\"1\",\"menuBtns\":[],\"parentId\":\"1\"}', '0', '', '', '0.0205059s', '2023-06-18 15:34:27.846');
INSERT INTO `log` VALUES (7, '角色管理-设置角色菜单', 'default', '', '/admin.v1.Admin/SetRoleMenu', '1', 'admin', '超级管理员', 'POST', '/admin.v1.Admin/SetRoleMenu', '/admin/v1/authorization/roleMenu', '{\"role_id\":\"1\",\"menu_ids\":[\"35\",\"36\",\"39\",\"1\",\"2\",\"3\",\"4\",\"5\",\"45\"]}', '0', '', '', '0.0132996s', '2023-06-18 15:34:46.468');
INSERT INTO `log` VALUES (8, '菜单管理-新增', 'default', '', '/admin.v1.Admin/CreateMenu', '1', 'admin', '超级管理员', 'POST', '/admin.v1.Admin/CreateMenu', '/admin/v1/authorization/menu', '{\"id\":\"undefined\",\"path\":\"/system/ai\",\"name\":\"AI测试\",\"hidden\":false,\"component\":\"/ai/index\",\"sort\":\"1\",\"title\":\"AI\",\"icon\":\"el-icon-chat-dot-round\",\"parentIds\":\"0\",\"menuBtns\":[],\"parentId\":0}', '0', '', '', '0.0826915s', '2023-06-18 19:03:41.184');
INSERT INTO `log` VALUES (9, '角色管理-设置角色菜单', 'default', '', '/admin.v1.Admin/SetRoleMenu', '1', 'admin', '超级管理员', 'POST', '/admin.v1.Admin/SetRoleMenu', '/admin/v1/authorization/roleMenu', '{\"role_id\":\"1\",\"menu_ids\":[\"39\",\"46\",\"1\",\"2\",\"3\",\"4\",\"5\",\"45\",\"35\",\"36\"]}', '0', '', '', '0.0230022s', '2023-06-18 19:07:07.941');
INSERT INTO `log` VALUES (10, '管理员管理-禁用', 'default', '', '/admin.v1.Admin/forbidAdministrator', '1', 'admin', '超级管理员', 'PATCH', '/admin.v1.Admin/forbidAdministrator', '/admin/v1/administrator/forbid', '{\"id\":\"1\"}', '500', 'SYSTEM_ERROR', '', '0s', '2023-06-18 21:34:47.715');
INSERT INTO `log` VALUES (11, '管理员管理-禁用', 'default', '', '/admin.v1.Admin/forbidAdministrator', '1', 'admin', '超级管理员', 'PATCH', '/admin.v1.Admin/forbidAdministrator', '/admin/v1/administrator/forbid', '{\"id\":\"25\"}', '0', '', '', '0.0083919s', '2023-06-18 21:34:59.870');
INSERT INTO `log` VALUES (12, '管理员管理-解禁', 'default', '', '/admin.v1.Admin/approveAdministrator', '1', 'admin', '超级管理员', 'PATCH', '/admin.v1.Admin/approveAdministrator', '/admin/v1/administrator/approve', '{\"id\":\"25\"}', '0', '', '', '0.0115394s', '2023-06-18 21:35:56.392');
INSERT INTO `log` VALUES (13, '管理员管理-删除', 'default', '', '/admin.v1.Admin/DeleteAdministrator', '1', 'admin', '超级管理员', 'DELETE', '/admin.v1.Admin/DeleteAdministrator', '/admin/v1/administrator', '', '0', '', '', '0.011519s', '2023-06-18 21:35:58.163');
INSERT INTO `log` VALUES (14, '管理员管理-恢复', 'default', '', '/admin.v1.Admin/RecoverAdministrator', '1', 'admin', '超级管理员', 'PATCH', '/admin.v1.Admin/RecoverAdministrator', '/admin/v1/administrator', '{\"id\":\"25\"}', '0', '', '', '0.0067527s', '2023-06-18 21:36:00.478');
INSERT INTO `log` VALUES (15, '管理员管理-删除', 'default', '', '/admin.v1.Admin/DeleteAdministrator', '1', 'admin', '超级管理员', 'DELETE', '/admin.v1.Admin/DeleteAdministrator', '/admin/v1/administrator', '', '0', '', '', '0.0079076s', '2023-06-18 22:03:03.276');
INSERT INTO `log` VALUES (16, '管理员管理-恢复', 'default', '', '/admin.v1.Admin/RecoverAdministrator', '1', 'admin', '超级管理员', 'PATCH', '/admin.v1.Admin/RecoverAdministrator', '/admin/v1/administrator', '{\"id\":\"25\"}', '0', '', '', '0.0090781s', '2023-06-18 22:03:04.062');
INSERT INTO `log` VALUES (17, '管理员管理-编辑', 'default', '', '/admin.v1.Admin/UpdateAdministrator', '1', 'admin', '超级管理员', 'PUT', '/admin.v1.Admin/UpdateAdministrator', '/admin/v1/administrator', '{\"id\":\"26\",\"username\":\"zhouqi12\",\"mobile\":\"18158445331\",\"nickname\":\"2121\",\"avatar\":\"https://kratos-base-kit.oss-cn-shanghai.aliyuncs.com/user/a2d9acb3.jpg\",\"status\":true,\"role\":[\"测试管理员\",\"游客\"],\"lastLoginTime\":\"\",\"lastLoginIp\":\"\",\"createdAt\":\"2023-06-18 14:50:09\",\"updatedAt\":\"2023-06-18 14:50:09\",\"deletedAt\":\"\",\"password\":\"123456\"}', '0', '', '', '0.0338313s', '2023-06-18 22:04:09.441');
INSERT INTO `log` VALUES (18, '管理员管理-编辑', 'default', '', '/admin.v1.Admin/UpdateAdministrator', '1', 'admin', '超级管理员', 'PUT', '/admin.v1.Admin/UpdateAdministrator', '/admin/v1/administrator', '{\"id\":\"26\",\"username\":\"zhouqi12\",\"mobile\":\"18158445331\",\"nickname\":\"2121\",\"avatar\":\"https://kratos-base-kit.oss-cn-shanghai.aliyuncs.com/user/a2d9acb3.jpg\",\"status\":true,\"role\":[\"测试管理员\",\"游客\"],\"lastLoginTime\":\"\",\"lastLoginIp\":\"\",\"createdAt\":\"2023-06-18 14:50:09\",\"updatedAt\":\"2023-06-18 14:50:09\",\"deletedAt\":\"\",\"password\":\"123456\"}', '0', '', '', '0.0295097s', '2023-06-18 22:06:24.841');
INSERT INTO `log` VALUES (19, '管理员管理-编辑', 'default', '', '/admin.v1.Admin/UpdateAdministrator', '1', 'admin', '超级管理员', 'PUT', '/admin.v1.Admin/UpdateAdministrator', '/admin/v1/administrator', '{\"id\":\"26\",\"username\":\"zhouqi12\",\"mobile\":\"18158445331\",\"nickname\":\"2121\",\"avatar\":\"https://kratos-base-kit.oss-cn-shanghai.aliyuncs.com/user/a2d9acb3.jpg\",\"status\":true,\"role\":[\"测试管理员\"],\"lastLoginTime\":\"\",\"lastLoginIp\":\"\",\"createdAt\":\"2023-06-18 14:50:09\",\"updatedAt\":\"2023-06-18 14:50:09\",\"deletedAt\":\"\",\"password\":\"123456\"}', '0', '', '', '0.0223331s', '2023-06-18 22:06:37.035');
INSERT INTO `log` VALUES (20, '管理员管理-新增', 'default', '', '/admin.v1.Admin/CreateAdministrator', '1', 'admin', '超级管理员', 'POST', '/admin.v1.Admin/CreateAdministrator', '/admin/v1/administrator', '{\"id\":0,\"status\":true,\"username\":\"pintest2\",\"password\":\"123456\",\"mobile\":\"18158445331\",\"nickname\":\"23156\",\"avatar\":\"https://kratos-base-kit.oss-cn-shanghai.aliyuncs.com/user/52674df6.jpg\",\"role\":[\"超级管理员\",\"测试管理员\"]}', '0', '', '', '0.0315817s', '2023-06-18 22:11:34.874');
INSERT INTO `log` VALUES (21, '管理员管理-编辑', 'default', '', '/admin.v1.Admin/UpdateAdministrator', '1', 'admin', '超级管理员', 'PUT', '/admin.v1.Admin/UpdateAdministrator', '/admin/v1/administrator', '{\"id\":\"27\",\"username\":\"pintest2\",\"mobile\":\"18158445331\",\"nickname\":\"23156\",\"avatar\":\"https://kratos-base-kit.oss-cn-shanghai.aliyuncs.com/user/52674df6.jpg\",\"status\":true,\"role\":[\"超级管理员\",\"测试管理员\"],\"lastLoginTime\":\"\",\"lastLoginIp\":\"\",\"createdAt\":\"2023-06-18 22:11:34\",\"updatedAt\":\"2023-06-18 22:11:34\",\"deletedAt\":\"\",\"password\":\"456789\"}', '0', '', '', '0.0268337s', '2023-06-18 22:11:45.579');
INSERT INTO `log` VALUES (22, '角色管理-设置角色菜单', 'default', '', '/admin.v1.Admin/SetRoleMenu', '1', 'admin', '超级管理员', 'POST', '/admin.v1.Admin/SetRoleMenu', '/admin/v1/authorization/roleMenu', '{\"role_id\":\"1\",\"menu_ids\":[\"39\",\"46\",\"47\",\"1\",\"2\",\"3\",\"4\",\"5\",\"45\",\"35\",\"36\"]}', '0', '', '', '0.0323867s', '2023-06-19 11:32:22.929');
INSERT INTO `log` VALUES (23, '角色管理-设置角色API', 'default', '', '/admin.v1.Admin/UpdatePolicies', '1', 'admin', '超级管理员', 'POST', '/admin.v1.Admin/UpdatePolicies', '/admin/v1/authorization/updatePolicies', '{\"role\":\"超级管理员\",\"policyRules\":[{\"path\":\"/admin.v1.Admin/Login\",\"method\":\"POST\"},{\"path\":\"/admin.v1.Admin/GetRoleMenu\",\"method\":\"GET\"},{\"path\":\"/admin.v1.Admin/GetAdministratorInfo\",\"method\":\"GET\"},{\"path\":\"/admin.v1.Admin/LoginOut\",\"method\":\"POST\"},{\"path\":\"/admin.v1.Admin/GetRoleMenuTree\",\"method\":\"GET\"},{\"path\":\"/admin.v1.Admin/GetRoleMenuBtn\",\"method\":\"GET\"},{\"path\":\"/admin.v1.Admin/GetOssStsToken\",\"method\":\"GET\"},{\"path\":\"/admin.v1.Admin/CreateAdministrator\",\"method\":\"POST\"},{\"path\":\"/admin.v1.Admin/UpdateAdministrator\",\"method\":\"PUT\"},{\"path\":\"/admin.v1.Admin/GetAdministratorList\",\"method\":\"GET\"},{\"path\":\"/admin.v1.Admin/GetAdministrator\",\"method\":\"GET\"},{\"path\":\"/admin.v1.Admin/DeleteAdministrator\",\"method\":\"DELETE\"},{\"path\":\"/admin.v1.Admin/RecoverAdministrator\",\"method\":\"PATCH\"},{\"path\":\"/admin.v1.Admin/forbidAdministrator\",\"method\":\"PATCH\"},{\"path\":\"/admin.v1.Admin/approveAdministrator\",\"method\":\"PATCH\"},{\"path\":\"/admin.v1.Admin/CreateMenu\",\"method\":\"POST\"},{\"path\":\"/admin.v1.Admin/UpdateMenu\",\"method\":\"PUT\"},{\"path\":\"/admin.v1.Admin/GetMenuTree\",\"method\":\"GET\"},{\"path\":\"/admin.v1.Admin/DeleteMenu\",\"method\":\"DELETE\"},{\"path\":\"/admin.v1.Admin/GetMenuAll\",\"method\":\"GET\"},{\"path\":\"/admin.v1.Admin/CreateRole\",\"method\":\"POST\"},{\"path\":\"/admin.v1.Admin/UpdateRole\",\"method\":\"PUT\"},{\"path\":\"/admin.v1.Admin/DeleteRole\",\"method\":\"DELETE\"},{\"path\":\"/admin.v1.Admin/GetRoleAll\",\"method\":\"GET\"},{\"path\":\"/admin.v1.Admin/GetPolicies\",\"method\":\"GET\"},{\"path\":\"/admin.v1.Admin/SetRoleMenu\",\"method\":\"POST\"},{\"path\":\"/admin.v1.Admin/UpdatePolicies\",\"method\":\"POST\"},{\"path\":\"/admin.v1.Admin/SetRoleMenuBtn\",\"method\":\"POST\"},{\"path\":\"/admin.v1.Admin/GetUsersForRole\",\"method\":\"GET\"},{\"path\":\"/admin.v1.Admin/DeleteRoleForUser\",\"method\":\"DELETE\"},{\"path\":\"/admin.v1.Admin/GetRolesForUser\",\"method\":\"GET\"},{\"path\":\"/admin.v1.Admin/DeleteRolesForUser\",\"method\":\"DELETE\"},{\"path\":\"/admin.v1.Admin/SetRolesForUser\",\"method\":\"POST\"},{\"path\":\"/admin.v1.Admin/CreateApi\",\"method\":\"POST\"},{\"path\":\"/admin.v1.Admin/UpdateApi\",\"method\":\"PUT\"},{\"path\":\"/admin.v1.Admin/GetApiList\",\"method\":\"GET\"},{\"path\":\"/admin.v1.Admin/DeleteApi\",\"method\":\"DELETE\"},{\"path\":\"/admin.v1.Admin/GetApiAll\",\"method\":\"GET\"},{\"path\":\"/admin.v1.Admin/GetApiLogList\",\"method\":\"GET\"},{\"path\":\"/admin.v1.Admin/CreateGptMessage\",\"method\":\"POST\"},{\"path\":\"/admin.v1.Admin/CreateGptMessage\",\"method\":\"POST\"}]}', '0', '', '', '0.0641024s', '2023-06-20 16:33:40.588');
INSERT INTO `log` VALUES (24, 'AI分组-发送chatgpt训练内容', 'default', '', '/admin.v1.Admin/CreateGptMessage', '1', 'admin', '超级管理员', 'POST', '/admin.v1.Admin/CreateGptMessage', '/admin/v1/ai/chatgpt/message', '{\r\n     \"model\": \"gpt-3.5-turbo\",\r\n     \"messages\": [{\"role\": \"user\", \"content\": \"中国的首都在哪里!\"}]\r\n   }', '501', '', '', '0.0092395s', '2023-06-20 16:41:44.102');
INSERT INTO `log` VALUES (25, 'AI分组-发送chatgpt训练内容', 'default', '', '/admin.v1.Admin/CreateGptMessage', '1', 'admin', '超级管理员', 'POST', '/admin.v1.Admin/CreateGptMessage', '/admin/v1/ai/chatgpt/message', '{\r\n     \"model\": \"gpt-3.5-turbo\",\r\n     \"messages\": [{\"role\": \"user\", \"content\": \"中国的首都在哪里!\"}]\r\n   }', '504', '', '', '2.0123464s', '2023-06-20 16:42:47.414');
INSERT INTO `log` VALUES (26, 'AI分组-发送chatgpt训练内容', 'default', '', '/admin.v1.Admin/CreateGptMessage', '1', 'admin', '超级管理员', 'POST', '/admin.v1.Admin/CreateGptMessage', '/admin/v1/ai/chatgpt/message', '{\r\n     \"model\": \"gpt-3.5-turbo\",\r\n     \"messages\": [{\"role\": \"user\", \"content\": \"中国的首都在哪里!\"}]\r\n   }', '0', '', '', '1.8142358s', '2023-06-20 16:43:20.901');
INSERT INTO `log` VALUES (27, 'AI分组-发送chatgpt训练内容', 'default', '', '/admin.v1.Admin/CreateGptMessage', '1', 'admin', '超级管理员', 'POST', '/admin.v1.Admin/CreateGptMessage', '/admin/v1/ai/chatgpt/message', '{\r\n     \"model\": \"gpt-3.5-turbo\",\r\n     \"messages\": [{\"role\": \"user\", \"content\": \"请介绍一下golang与java的区别!\"}]\r\n   }', '504', '', '', '2.0090897s', '2023-06-20 16:43:48.648');
INSERT INTO `log` VALUES (28, 'AI分组-发送chatgpt训练内容', 'default', '', '/admin.v1.Admin/CreateGptMessage', '1', 'admin', '超级管理员', 'POST', '/admin.v1.Admin/CreateGptMessage', '/admin/v1/ai/chatgpt/message', '{\r\n     \"model\": \"gpt-3.5-turbo\",\r\n     \"messages\": [{\"role\": \"user\", \"content\": \"请介绍一下golang与java的区别!\"}]\r\n   }', '504', '', '', '2.0062659s', '2023-06-20 16:52:06.193');
INSERT INTO `log` VALUES (29, 'AI分组-发送chatgpt训练内容', 'default', '', '/admin.v1.Admin/CreateGptMessage', '1', 'admin', '超级管理员', 'POST', '/admin.v1.Admin/CreateGptMessage', '/admin/v1/ai/chatgpt/message', '{\r\n     \"model\": \"gpt-3.5-turbo\",\r\n     \"messages\": [{\"role\": \"user\", \"content\": \"请介绍一下golang与java的区别!\"}]\r\n   }', '504', '', '', '2.0036879s', '2023-06-20 16:52:40.825');
INSERT INTO `log` VALUES (30, 'AI分组-发送chatgpt训练内容', 'default', '', '/admin.v1.Admin/CreateGptMessage', '1', 'admin', '超级管理员', 'POST', '/admin.v1.Admin/CreateGptMessage', '/admin/v1/ai/chatgpt/message', '{\r\n     \"model\": \"gpt-3.5-turbo\",\r\n     \"messages\": [{\"role\": \"user\", \"content\": \"你好\"}]\r\n   }', '504', '', '', '2.0063641s', '2023-06-21 11:05:11.689');
INSERT INTO `log` VALUES (31, 'AI分组-发送chatgpt训练内容', 'default', '', '/admin.v1.Admin/CreateGptMessage', '1', 'admin', '超级管理员', 'POST', '/admin.v1.Admin/CreateGptMessage', '/admin/v1/ai/chatgpt/message', '{\r\n     \"model\": \"gpt-3.5-turbo\",\r\n     \"messages\": [{\"role\": \"user\", \"content\": \"你好\"}]\r\n   }', '504', '', '', '2.0121089s', '2023-06-21 11:06:15.869');
INSERT INTO `log` VALUES (32, 'AI分组-发送chatgpt训练内容', 'default', '', '/admin.v1.Admin/CreateGptMessage', '1', 'admin', '超级管理员', 'POST', '/admin.v1.Admin/CreateGptMessage', '/admin/v1/ai/chatgpt/message', '{\r\n     \"model\": \"gpt-3.5-turbo\",\r\n     \"messages\": [{\"role\": \"user\", \"content\": \"你好\"}]\r\n   }', '504', '', '', '2.012842s', '2023-06-21 11:19:05.921');
INSERT INTO `log` VALUES (33, 'AI分组-发送chatgpt训练内容', 'default', '', '/admin.v1.Admin/CreateGptMessage', '1', 'admin', '超级管理员', 'POST', '/admin.v1.Admin/CreateGptMessage', '/admin/v1/ai/chatgpt/message', '{\r\n     \"model\": \"gpt-3.5-turbo\",\r\n     \"messages\": [{\"role\": \"user\", \"content\": \"你好\"}]\r\n   }', '0', '', '', '2.3759595s', '2023-06-21 11:30:01.435');

SET FOREIGN_KEY_CHECKS = 1;