/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50616
Source Host           : localhost:3306
Source Database       : lanyuan

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2014-11-18 09:10:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for aaa
-- ----------------------------
DROP TABLE IF EXISTS `aaa`;
CREATE TABLE `aaa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(20) NOT NULL,
  `wa` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aaa
-- ----------------------------
INSERT INTO `aaa` VALUES ('1', '3', '200');

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `accountName` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `accountType` varchar(20) DEFAULT NULL,
  `description` varchar(20) DEFAULT NULL,
  `state` varchar(3) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletestatus` int(1) DEFAULT '0' COMMENT '逻辑删除状态0:存在1:删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', 'root', 'Y6nw6nu5gFB5a2SehUgYRQ==', '0', '根账号', '1', '2014-11-12 09:44:36', '0');
INSERT INTO `account` VALUES ('33', '00', 'root', null, '00', '1', '2014-10-27 18:23:25', '0');
INSERT INTO `account` VALUES ('34', 'test', '4QrcOUm6Wau+VuBX8g+IPg==', null, 'test', '1', '2014-04-16 11:42:41', '0');

-- ----------------------------
-- Table structure for acc_role
-- ----------------------------
DROP TABLE IF EXISTS `acc_role`;
CREATE TABLE `acc_role` (
  `acc_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`acc_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acc_role
-- ----------------------------
INSERT INTO `acc_role` VALUES ('1', '2');
INSERT INTO `acc_role` VALUES ('1', '3');
INSERT INTO `acc_role` VALUES ('1', '4');
INSERT INTO `acc_role` VALUES ('33', '3');
INSERT INTO `acc_role` VALUES ('34', '2');
INSERT INTO `acc_role` VALUES ('34', '3');
INSERT INTO `acc_role` VALUES ('35', '2');
INSERT INTO `acc_role` VALUES ('37', '1');
INSERT INTO `acc_role` VALUES ('37', '2');
INSERT INTO `acc_role` VALUES ('37', '3');
INSERT INTO `acc_role` VALUES ('40', '3');

-- ----------------------------
-- Table structure for dic
-- ----------------------------
DROP TABLE IF EXISTS `dic`;
CREATE TABLE `dic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dicTypeId` int(11) DEFAULT NULL,
  `dicKey` varchar(20) DEFAULT NULL,
  `dicName` varchar(40) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dic
-- ----------------------------
INSERT INTO `dic` VALUES ('1', '1', 'res_directory', '目录', '目录');
INSERT INTO `dic` VALUES ('2', '1', 'res_menu', '菜单', '菜单');
INSERT INTO `dic` VALUES ('3', '1', 'res_btn', '按扭', '按扭');

-- ----------------------------
-- Table structure for dic_type
-- ----------------------------
DROP TABLE IF EXISTS `dic_type`;
CREATE TABLE `dic_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dicTypeKey` varchar(20) DEFAULT NULL,
  `dicTypeName` varchar(40) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dic_type
-- ----------------------------
INSERT INTO `dic_type` VALUES ('1', 'res_type', '菜单类型', '菜单类型是目录,菜单,按扭,');
INSERT INTO `dic_type` VALUES ('2', '2', '2', '2');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `module` varchar(30) DEFAULT NULL,
  `action` varchar(30) DEFAULT NULL,
  `actionTime` varchar(30) DEFAULT NULL,
  `userIP` varchar(30) DEFAULT NULL,
  `operTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2796 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ly_role
-- ----------------------------
DROP TABLE IF EXISTS `ly_role`;
CREATE TABLE `ly_role` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `enable` int(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `roleKey` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_role
-- ----------------------------
INSERT INTO `ly_role` VALUES ('2', '1', '管理员', 'admin', '管理系统权限');
INSERT INTO `ly_role` VALUES ('3', '1', '普通角色', 'simple', '普通角色');
INSERT INTO `ly_role` VALUES ('4', '1', '根账号', 'root', '拥有所有权限1');

-- ----------------------------
-- Table structure for resources
-- ----------------------------
DROP TABLE IF EXISTS `resources`;
CREATE TABLE `resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `resKey` varchar(50) DEFAULT NULL,
  `type` varchar(40) DEFAULT NULL,
  `resUrl` varchar(200) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resources
-- ----------------------------
INSERT INTO `resources` VALUES ('1', '系统基础管理', '0', 'system', '0', 'system', '0', '系统基础管理');
INSERT INTO `resources` VALUES ('2', '账号管理', '1', 'account', '1', '/background/account/list.html', '1', '账号管理');
INSERT INTO `resources` VALUES ('3', '角色管理', '1', 'role', '1', '/background/role/list.html', '5', '角色管理');
INSERT INTO `resources` VALUES ('4', '菜单管理', '1', 'resources', '1', '/background/resources/list.html', '10', '菜单查询');
INSERT INTO `resources` VALUES ('5', '新增账号', '2', 'account_add', '2', '/background/account/addUI.html', '2', '新增账号');
INSERT INTO `resources` VALUES ('6', '修改账号', '2', 'account_edit', '2', '/background/account/editUI.html', '3', '修改账号');
INSERT INTO `resources` VALUES ('7', '删除账号', '2', 'account_delete', '2', '/background/account/deleteById.html', '4', '删除账号');
INSERT INTO `resources` VALUES ('8', '新增角色', '3', 'role_add', '2', '/background/role/addUI.html', '6', '部门/科组的新增');
INSERT INTO `resources` VALUES ('9', '修改角色', '3', 'role_edit', '2', '/background/role/editUI.html', '7', '部门/科组的修改');
INSERT INTO `resources` VALUES ('10', '删除角色', '3', 'role_delete', '2', '/background/role/delete.html', '8', '部门/科组的删除');
INSERT INTO `resources` VALUES ('11', '角色授权', '3', 'role_perss', '2', '/background/menu/permissions.html', '9', '菜单授权');
INSERT INTO `resources` VALUES ('12', '数据字典管理', '0', 'dic_manager', '0', 'dic_manager', '22', '数据字典管理');
INSERT INTO `resources` VALUES ('13', '字典类型', '12', 'dic_type', '1', '/background/dicType/list.html', '26', '字典类型');
INSERT INTO `resources` VALUES ('14', '字典维护', '12', 'dic', '1', '/background/dic/list.html', '23', '字典维护');
INSERT INTO `resources` VALUES ('16', '修改字典', '14', 'dic_edit', '2', '/background/dic/editUI.html', '24', '修改字典');
INSERT INTO `resources` VALUES ('17', '删除字典', '14', 'dic_delete', '2', '/background/dic/delete.html', '25', '删除字典');
INSERT INTO `resources` VALUES ('18', '新增字典类型', '13', 'dicType_add', '2', '/background/dicType/addUI.html', '27', '新增字典类型');
INSERT INTO `resources` VALUES ('19', '修改字典类型', '13', 'dicType_edit', '2', '/background/dicType/editUI.html', '28', '修改字典类型');
INSERT INTO `resources` VALUES ('20', '删除字典类型', '13', 'dicType_delete', '2', '/background/dicType/delete.html', '29', '删除字典类型');
INSERT INTO `resources` VALUES ('31', '服务器配置管理', '0', 'server', '0', 'server', '14', '服务器配置管理');
INSERT INTO `resources` VALUES ('32', '预警设置', '31', 'ser_warn', '1', '/background/serverInfo/forecast.html', '15', '预警设置');
INSERT INTO `resources` VALUES ('33', '状态列表', '31', 'ser_list', '1', '/background/serverInfo/list.html', '16', '状态列表');
INSERT INTO `resources` VALUES ('34', '服务器状态', '31', 'ser_statu', '1', '/background/serverInfo/show.html', '17', '服务器状态');
INSERT INTO `resources` VALUES ('35', '登陆信息管理', '0', 'login', '0', 'login', '18', '登陆信息管理');
INSERT INTO `resources` VALUES ('36', '用户登录记录', '35', 'log_list', '1', '/background/userLoginList/query.html', '19', '用户登录记录');
INSERT INTO `resources` VALUES ('37', '操作日志管理', '0', 'log', '0', 'log', '20', '操作日志管理');
INSERT INTO `resources` VALUES ('38', '日志查询', '37', 'log', '1', '/background/log/list.html', '21', '日志查询');
INSERT INTO `resources` VALUES ('39', '新增菜单资源', '4', 'resources_add', '2', '/background/resources/addUI.html', '11', '新增菜单资源');
INSERT INTO `resources` VALUES ('40', '修改菜单资源', '4', 'resources_edit', '2', '/background/resources/editUI.html', '12', '修改菜单资源');
INSERT INTO `resources` VALUES ('41', '删除菜单资源', '4', 'resources_delete', '2', '/background/resources/delete.html', '13', '删除菜单资源');

-- ----------------------------
-- Table structure for res_roles
-- ----------------------------
DROP TABLE IF EXISTS `res_roles`;
CREATE TABLE `res_roles` (
  `role_id` int(11) NOT NULL,
  `resc_id` int(11) NOT NULL,
  PRIMARY KEY (`resc_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of res_roles
-- ----------------------------
INSERT INTO `res_roles` VALUES ('4', '1');
INSERT INTO `res_roles` VALUES ('4', '2');
INSERT INTO `res_roles` VALUES ('4', '3');
INSERT INTO `res_roles` VALUES ('4', '4');
INSERT INTO `res_roles` VALUES ('4', '5');
INSERT INTO `res_roles` VALUES ('4', '6');
INSERT INTO `res_roles` VALUES ('4', '7');
INSERT INTO `res_roles` VALUES ('4', '8');
INSERT INTO `res_roles` VALUES ('4', '9');
INSERT INTO `res_roles` VALUES ('4', '10');
INSERT INTO `res_roles` VALUES ('4', '11');
INSERT INTO `res_roles` VALUES ('4', '12');
INSERT INTO `res_roles` VALUES ('4', '13');
INSERT INTO `res_roles` VALUES ('4', '14');
INSERT INTO `res_roles` VALUES ('4', '16');
INSERT INTO `res_roles` VALUES ('4', '17');
INSERT INTO `res_roles` VALUES ('4', '18');
INSERT INTO `res_roles` VALUES ('4', '19');
INSERT INTO `res_roles` VALUES ('4', '20');
INSERT INTO `res_roles` VALUES ('4', '31');
INSERT INTO `res_roles` VALUES ('4', '32');
INSERT INTO `res_roles` VALUES ('4', '33');
INSERT INTO `res_roles` VALUES ('4', '34');
INSERT INTO `res_roles` VALUES ('4', '35');
INSERT INTO `res_roles` VALUES ('4', '36');
INSERT INTO `res_roles` VALUES ('4', '37');
INSERT INTO `res_roles` VALUES ('4', '38');
INSERT INTO `res_roles` VALUES ('4', '39');
INSERT INTO `res_roles` VALUES ('4', '40');
INSERT INTO `res_roles` VALUES ('4', '41');

-- ----------------------------
-- Table structure for server_info
-- ----------------------------
DROP TABLE IF EXISTS `server_info`;
CREATE TABLE `server_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cpuUsage` varchar(255) DEFAULT NULL,
  `setCpuUsage` varchar(255) DEFAULT NULL,
  `jvmUsage` varchar(255) DEFAULT NULL,
  `setJvmUsage` varchar(255) DEFAULT NULL,
  `ramUsage` varchar(255) DEFAULT NULL,
  `setRamUsage` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `operTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `mark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of server_info
-- ----------------------------
INSERT INTO `server_info` VALUES ('10', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `server_info` VALUES ('11', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `server_info` VALUES ('12', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `server_info` VALUES ('13', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `server_info` VALUES ('14', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `server_info` VALUES ('15', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `server_info` VALUES ('16', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `server_info` VALUES ('17', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `server_info` VALUES ('18', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `server_info` VALUES ('19', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `server_info` VALUES ('21', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `server_info` VALUES ('31', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `server_info` VALUES ('41', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `server_info` VALUES ('51', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');

-- ----------------------------
-- Table structure for userloginlist
-- ----------------------------
DROP TABLE IF EXISTS `userloginlist`;
CREATE TABLE `userloginlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `userName` varchar(20) DEFAULT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `loginIP` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_userloginlist` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8;
