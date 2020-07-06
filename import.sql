/*
Navicat MySQL Data Transfer

Source Server         : php8.run_3306
Source Server Version : 50730
Source Host           : php8.run:3306
Source Database       : yeepay_php8_run

Target Server Type    : MYSQL
Target Server Version : 50730
File Encoding         : 65001

Date: 2020-07-06 15:49:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for system_admin
-- ----------------------------
DROP TABLE IF EXISTS `system_admin`;
CREATE TABLE `system_admin` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `auth_ids` varchar(255) DEFAULT NULL COMMENT '角色权限ID',
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` char(40) NOT NULL DEFAULT '' COMMENT '用户登录密码',
  `remark` varchar(255) DEFAULT '' COMMENT '备注说明',
  `login_num` bigint(20) unsigned DEFAULT '0' COMMENT '登录次数',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用,)',
  `login_time` int(11) DEFAULT NULL COMMENT '最近登录时间',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(11) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='后台_系统用户表';

-- ----------------------------
-- Records of system_admin
-- ----------------------------
INSERT INTO `system_admin` VALUES ('1', '', 'super', 'ed696eb5bba1f7460585cc6975e6cf9bf24903dd', 'super', '32', '0', '1', '1594020914', '1593616131', '1594020914', null);
INSERT INTO `system_admin` VALUES ('2', '2', 'admin', 'ed696eb5bba1f7460585cc6975e6cf9bf24903dd', 'admin', '17', '0', '1', '1594017658', '1593616131', '1594017658', null);
INSERT INTO `system_admin` VALUES ('3', '2', '13111111111', 'ed696eb5bba1f7460585cc6975e6cf9bf24903dd', '13111111111', '2', '0', '1', null, '1593674426', '1594018030', '1594018030');
INSERT INTO `system_admin` VALUES ('4', '2', '13222222222', 'ed696eb5bba1f7460585cc6975e6cf9bf24903dd', '13222222222', '0', '0', '1', null, '1593674444', '1594018035', '1594018035');

-- ----------------------------
-- Table structure for system_auth
-- ----------------------------
DROP TABLE IF EXISTS `system_auth`;
CREATE TABLE `system_auth` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL COMMENT '权限名称',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态(1:禁用,2:启用)',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(11) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='后台_系统权限表';

-- ----------------------------
-- Records of system_auth
-- ----------------------------
INSERT INTO `system_auth` VALUES ('1', '超级管理员', '0', '1', '拥有全部权限', '1593777631', '1593777884', '1593777884');
INSERT INTO `system_auth` VALUES ('2', '普通管理员', '1', '1', '拥有超级管理员super指定的权限', '1588921753', '1593849098', null);

-- ----------------------------
-- Table structure for system_auth_node
-- ----------------------------
DROP TABLE IF EXISTS `system_auth_node`;
CREATE TABLE `system_auth_node` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `auth_id` bigint(20) unsigned DEFAULT NULL COMMENT '角色ID',
  `node_id` bigint(20) DEFAULT NULL COMMENT '节点ID',
  PRIMARY KEY (`id`),
  KEY `index_system_auth_auth` (`auth_id`) USING BTREE,
  KEY `index_system_auth_node` (`node_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2528 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='后台_角色与节点关系表';

-- ----------------------------
-- Records of system_auth_node
-- ----------------------------
INSERT INTO `system_auth_node` VALUES ('2470', '2', '1');
INSERT INTO `system_auth_node` VALUES ('2471', '2', '2');
INSERT INTO `system_auth_node` VALUES ('2472', '2', '3');
INSERT INTO `system_auth_node` VALUES ('2473', '2', '4');
INSERT INTO `system_auth_node` VALUES ('2474', '2', '5');
INSERT INTO `system_auth_node` VALUES ('2475', '2', '6');
INSERT INTO `system_auth_node` VALUES ('2476', '2', '7');
INSERT INTO `system_auth_node` VALUES ('2477', '2', '8');
INSERT INTO `system_auth_node` VALUES ('2478', '2', '9');
INSERT INTO `system_auth_node` VALUES ('2479', '2', '10');
INSERT INTO `system_auth_node` VALUES ('2480', '2', '11');
INSERT INTO `system_auth_node` VALUES ('2481', '2', '12');
INSERT INTO `system_auth_node` VALUES ('2482', '2', '13');
INSERT INTO `system_auth_node` VALUES ('2483', '2', '14');
INSERT INTO `system_auth_node` VALUES ('2484', '2', '15');
INSERT INTO `system_auth_node` VALUES ('2485', '2', '16');
INSERT INTO `system_auth_node` VALUES ('2486', '2', '17');
INSERT INTO `system_auth_node` VALUES ('2487', '2', '18');
INSERT INTO `system_auth_node` VALUES ('2488', '2', '19');
INSERT INTO `system_auth_node` VALUES ('2489', '2', '20');
INSERT INTO `system_auth_node` VALUES ('2490', '2', '21');
INSERT INTO `system_auth_node` VALUES ('2491', '2', '22');
INSERT INTO `system_auth_node` VALUES ('2492', '2', '23');
INSERT INTO `system_auth_node` VALUES ('2493', '2', '24');
INSERT INTO `system_auth_node` VALUES ('2494', '2', '25');
INSERT INTO `system_auth_node` VALUES ('2495', '2', '26');
INSERT INTO `system_auth_node` VALUES ('2496', '2', '27');
INSERT INTO `system_auth_node` VALUES ('2497', '2', '28');
INSERT INTO `system_auth_node` VALUES ('2498', '2', '29');
INSERT INTO `system_auth_node` VALUES ('2499', '2', '30');
INSERT INTO `system_auth_node` VALUES ('2500', '2', '31');
INSERT INTO `system_auth_node` VALUES ('2501', '2', '32');
INSERT INTO `system_auth_node` VALUES ('2502', '2', '33');
INSERT INTO `system_auth_node` VALUES ('2503', '2', '34');
INSERT INTO `system_auth_node` VALUES ('2504', '2', '35');
INSERT INTO `system_auth_node` VALUES ('2505', '2', '36');
INSERT INTO `system_auth_node` VALUES ('2506', '2', '37');
INSERT INTO `system_auth_node` VALUES ('2507', '2', '38');
INSERT INTO `system_auth_node` VALUES ('2508', '2', '39');
INSERT INTO `system_auth_node` VALUES ('2509', '2', '40');
INSERT INTO `system_auth_node` VALUES ('2510', '2', '41');
INSERT INTO `system_auth_node` VALUES ('2511', '2', '42');
INSERT INTO `system_auth_node` VALUES ('2512', '2', '43');
INSERT INTO `system_auth_node` VALUES ('2513', '2', '44');
INSERT INTO `system_auth_node` VALUES ('2514', '2', '60');
INSERT INTO `system_auth_node` VALUES ('2515', '2', '61');
INSERT INTO `system_auth_node` VALUES ('2516', '2', '62');
INSERT INTO `system_auth_node` VALUES ('2517', '2', '63');
INSERT INTO `system_auth_node` VALUES ('2518', '2', '64');
INSERT INTO `system_auth_node` VALUES ('2519', '2', '65');
INSERT INTO `system_auth_node` VALUES ('2520', '2', '66');
INSERT INTO `system_auth_node` VALUES ('2521', '2', '185');
INSERT INTO `system_auth_node` VALUES ('2522', '2', '186');
INSERT INTO `system_auth_node` VALUES ('2523', '2', '187');
INSERT INTO `system_auth_node` VALUES ('2524', '2', '188');
INSERT INTO `system_auth_node` VALUES ('2525', '2', '189');
INSERT INTO `system_auth_node` VALUES ('2526', '2', '190');
INSERT INTO `system_auth_node` VALUES ('2527', '2', '191');

-- ----------------------------
-- Table structure for system_config
-- ----------------------------
DROP TABLE IF EXISTS `system_config`;
CREATE TABLE `system_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '变量名',
  `group` varchar(30) NOT NULL DEFAULT '' COMMENT '分组',
  `value` text COMMENT '变量值',
  `remark` varchar(100) DEFAULT '' COMMENT '备注信息',
  `sort` int(10) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `group` (`group`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='后台_系统配置表';

-- ----------------------------
-- Records of system_config
-- ----------------------------
INSERT INTO `system_config` VALUES ('41', 'alisms_access_key_id', 'sms', '填你的', '阿里大于公钥', '0', null, null);
INSERT INTO `system_config` VALUES ('42', 'alisms_access_key_secret', 'sms', '填你的', '阿里大鱼私钥', '0', null, null);
INSERT INTO `system_config` VALUES ('55', 'upload_type', 'upload', 'local', '当前上传方式 （local,alioss,qnoss,txoss）', '0', null, null);
INSERT INTO `system_config` VALUES ('56', 'upload_allow_ext', 'upload', 'doc,gif,ico,icon,jpg,mp3,mp4,p12,pem,png,rar,jpeg', '允许上传的文件类型', '0', null, null);
INSERT INTO `system_config` VALUES ('57', 'upload_allow_size', 'upload', '1024000', '允许上传的大小', '0', null, null);
INSERT INTO `system_config` VALUES ('58', 'upload_allow_mime', 'upload', 'image/gif,image/jpeg,video/x-msvideo,text/plain,image/png', '允许上传的文件mime', '0', null, null);
INSERT INTO `system_config` VALUES ('59', 'upload_allow_type', 'upload', 'local,alioss,qnoss,txcos', '可用的上传文件方式', '0', null, null);
INSERT INTO `system_config` VALUES ('60', 'alioss_access_key_id', 'upload', '填你的', '阿里云oss公钥', '0', null, null);
INSERT INTO `system_config` VALUES ('61', 'alioss_access_key_secret', 'upload', '填你的', '阿里云oss私钥', '0', null, null);
INSERT INTO `system_config` VALUES ('62', 'alioss_endpoint', 'upload', '填你的', '阿里云oss数据中心', '0', null, null);
INSERT INTO `system_config` VALUES ('63', 'alioss_bucket', 'upload', '填你的', '阿里云oss空间名称', '0', null, null);
INSERT INTO `system_config` VALUES ('64', 'alioss_domain', 'upload', '填你的', '阿里云oss访问域名', '0', null, null);
INSERT INTO `system_config` VALUES ('65', 'logo_title', 'site', '后台管理系统', 'LOGO标题', '0', null, null);
INSERT INTO `system_config` VALUES ('66', 'logo_image', 'site', 'http://yeepay.php8.run/upload/20200706/fdcf1e2c06c4b18e522cd16ec8ce11ef.png', 'logo图片', '0', null, null);
INSERT INTO `system_config` VALUES ('68', 'site_name', 'site', '后台管理系统', '站点名称', '0', null, null);
INSERT INTO `system_config` VALUES ('69', 'site_ico', 'site', 'http://yeepay.php8.run/upload/20200706/b3e56029db2b4d67e569f4e1659eecae.ico', '浏览器图标', '0', null, null);
INSERT INTO `system_config` VALUES ('70', 'site_copyright', 'site', '©版权所有 2014-2020 易宝支付有限公司', '版权信息', '0', null, null);
INSERT INTO `system_config` VALUES ('71', 'site_beian', 'site', '京公网安备11010502007599号', '备案信息', '0', null, null);
INSERT INTO `system_config` VALUES ('72', 'site_version', 'site', '2.0.0', '版本信息', '0', null, null);
INSERT INTO `system_config` VALUES ('75', 'sms_type', 'sms', 'alisms', '短信类型', '0', null, null);
INSERT INTO `system_config` VALUES ('76', 'miniapp_appid', 'wechat', '填你的', '小程序公钥', '0', null, null);
INSERT INTO `system_config` VALUES ('77', 'miniapp_appsecret', 'wechat', '填你的', '小程序私钥', '0', null, null);
INSERT INTO `system_config` VALUES ('78', 'web_appid', 'wechat', '填你的', '公众号公钥', '0', null, null);
INSERT INTO `system_config` VALUES ('79', 'web_appsecret', 'wechat', '填你的', '公众号私钥', '0', null, null);
INSERT INTO `system_config` VALUES ('80', 'txcos_secret_id', 'upload', '填你的', '腾讯云cos密钥', '0', null, null);
INSERT INTO `system_config` VALUES ('81', 'txcos_secret_key', 'upload', '填你的', '腾讯云cos私钥', '0', null, null);
INSERT INTO `system_config` VALUES ('82', 'txcos_region', 'upload', '填你的', '存储桶地域', '0', null, null);
INSERT INTO `system_config` VALUES ('83', 'tecos_bucket', 'upload', '填你的', '存储桶名称', '0', null, null);
INSERT INTO `system_config` VALUES ('84', 'qnoss_access_key', 'upload', '填你的', '访问密钥', '0', null, null);
INSERT INTO `system_config` VALUES ('85', 'qnoss_secret_key', 'upload', '填你的', '安全密钥', '0', null, null);
INSERT INTO `system_config` VALUES ('86', 'qnoss_bucket', 'upload', '填你的', '存储空间', '0', null, null);
INSERT INTO `system_config` VALUES ('87', 'qnoss_domain', 'upload', '填你的', '访问域名', '0', null, null);

-- ----------------------------
-- Table structure for system_log_202007
-- ----------------------------
DROP TABLE IF EXISTS `system_log_202007`;
CREATE TABLE `system_log_202007` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) unsigned DEFAULT '0' COMMENT '管理员ID',
  `url` varchar(1500) NOT NULL DEFAULT '' COMMENT '操作页面',
  `method` varchar(50) NOT NULL COMMENT '请求方法',
  `title` varchar(100) DEFAULT '' COMMENT '日志标题',
  `content` text NOT NULL COMMENT '内容',
  `ip` varchar(50) NOT NULL DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) DEFAULT '' COMMENT 'User-Agent',
  `create_time` int(10) DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1114 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='后台_操作日志表 - 202007';

-- ----------------------------
-- Records of system_log_202007
-- ----------------------------
INSERT INTO `system_log_202007` VALUES ('1105', '1', '/admin/system.node/refreshNode?force=0', 'post', '', '{\"force\":\"0\"}', '58.17.250.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4148.0 Safari/537.36', '1594019071');
INSERT INTO `system_log_202007` VALUES ('1106', '1', '/admin/system.node/modify', 'post', '', '{\"id\":\"35\",\"field\":\"is_auth\",\"value\":\"0\"}', '58.17.250.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4148.0 Safari/537.36', '1594019091');
INSERT INTO `system_log_202007` VALUES ('1107', '1', '/admin/system.node/modify', 'post', '', '{\"id\":\"34\",\"field\":\"is_auth\",\"value\":\"0\"}', '58.17.250.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4148.0 Safari/537.36', '1594019096');
INSERT INTO `system_log_202007` VALUES ('1108', '1', '/admin/system.node/modify', 'post', '', '{\"id\":\"33\",\"field\":\"is_auth\",\"value\":\"0\"}', '58.17.250.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4148.0 Safari/537.36', '1594019101');
INSERT INTO `system_log_202007` VALUES ('1109', '1', '/admin/system.node/modify', 'post', '', '{\"id\":\"36\",\"field\":\"is_auth\",\"value\":\"0\"}', '58.17.250.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4148.0 Safari/537.36', '1594019106');
INSERT INTO `system_log_202007` VALUES ('1110', null, '/', 'post', '', '{\"username\":\"super\",\"password\":\"123456\",\"captcha\":\"2193\",\"keep_login\":\"1\"}', '123.145.81.253', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', '1594019218');
INSERT INTO `system_log_202007` VALUES ('1111', '1', '/admin/system.menu/edit?id=282', 'post', '', '{\"id\":\"282\",\"pid\":\"253\",\"title\":\"菜单管理\",\"href\":\"system.menu\\/index\",\"icon\":\"fa fa-cubes\",\"target\":\"_self\",\"sort\":\"0\",\"remark\":\"\"}', '58.17.250.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4148.0 Safari/537.36', '1594019655');
INSERT INTO `system_log_202007` VALUES ('1112', '1', '/admin/system.menu/add?id=228', 'post', '', '{\"id\":\"228\",\"pid\":\"228\",\"title\":\"银行卡管理\",\"href\":\"\",\"icon\":\"fa fa-credit-card\",\"target\":\"_self\",\"sort\":\"0\",\"remark\":\"\"}', '58.17.250.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4148.0 Safari/537.36', '1594020098');
INSERT INTO `system_log_202007` VALUES ('1113', null, '/', 'post', '', '{\"username\":\"super\",\"password\":\"123456\",\"captcha\":\"5544\",\"keep_login\":\"1\"}', '223.104.25.241', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/7.0.14(0x17000e23) NetType/4G Language/zh_CN', '1594020914');

-- ----------------------------
-- Table structure for system_menu
-- ----------------------------
DROP TABLE IF EXISTS `system_menu`;
CREATE TABLE `system_menu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '名称',
  `icon` varchar(100) NOT NULL DEFAULT '' COMMENT '菜单图标',
  `href` varchar(100) NOT NULL DEFAULT '' COMMENT '链接',
  `params` varchar(500) DEFAULT '' COMMENT '链接参数',
  `target` varchar(20) NOT NULL DEFAULT '_self' COMMENT '链接打开方式',
  `sort` int(11) DEFAULT '0' COMMENT '菜单排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `remark` varchar(255) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(11) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `href` (`href`)
) ENGINE=InnoDB AUTO_INCREMENT=284 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='后台_系统菜单表';

-- ----------------------------
-- Records of system_menu
-- ----------------------------
INSERT INTO `system_menu` VALUES ('227', '99999999', '后台首页', 'fa fa-home', 'index/welcome', '', '_self', '0', '1', null, null, '1573120497', null);
INSERT INTO `system_menu` VALUES ('228', '0', '后台管理', 'fa fa-cog', '', '', '_self', '0', '1', '', null, '1593620873', null);
INSERT INTO `system_menu` VALUES ('234', '228', '菜单管理', 'fa fa-tree', 'system.menu/index', '', '_self', '10', '1', '', null, '1593620605', '1593620605');
INSERT INTO `system_menu` VALUES ('244', '228', '账号管理', 'fa fa-user', 'system.admin/index', '', '_self', '12', '1', '', '1573185011', '1593621255', '1593621255');
INSERT INTO `system_menu` VALUES ('245', '228', '角色管理', 'fa fa-bitbucket-square', 'system.auth/index', '', '_self', '11', '1', '', '1573435877', '1593620424', '1593620424');
INSERT INTO `system_menu` VALUES ('246', '228', '节点管理', 'fa fa-list', 'system.node/index', '', '_self', '9', '1', '', '1573435919', '1593620434', '1593620434');
INSERT INTO `system_menu` VALUES ('247', '228', '配置管理', 'fa fa-asterisk', 'system.config/index', '', '_self', '8', '1', '', '1573457448', '1593620659', '1593620659');
INSERT INTO `system_menu` VALUES ('248', '228', '上传管理', 'fa fa-arrow-up', 'system.uploadfile/index', '', '_self', '0', '1', '', '1573542953', '1593620720', '1593620720');
INSERT INTO `system_menu` VALUES ('249', '0', '商城管理', 'fa fa-list', '', '', '_self', '0', '1', '', '1589439884', '1593620840', '1593620840');
INSERT INTO `system_menu` VALUES ('250', '249', '商品分类', 'fa fa-calendar-check-o', 'mall.cate/index', '', '_self', '0', '1', '', '1589439910', '1589439966', null);
INSERT INTO `system_menu` VALUES ('251', '249', '商品管理', 'fa fa-list', 'mall.goods/index', '', '_self', '0', '1', '', '1589439931', '1589439942', null);
INSERT INTO `system_menu` VALUES ('252', '228', '快捷入口', 'fa fa-list', 'system.quick/index', '', '_self', '0', '1', '', '1589623683', '1593620780', '1593620780');
INSERT INTO `system_menu` VALUES ('253', '228', '权限管理', 'fa fa-balance-scale', '', '', '_self', '0', '1', '', '1593620306', '1593620306', null);
INSERT INTO `system_menu` VALUES ('254', '253', '角色管理', 'fa fa-bitbucket', 'system.auth/index', '', '_self', '3', '1', '', '1593620383', '1593621313', null);
INSERT INTO `system_menu` VALUES ('255', '253', '节点管理', 'fa fa-list', 'system.node/index', '', '_self', '1', '1', '', '1593620407', '1593621318', null);
INSERT INTO `system_menu` VALUES ('256', '228', '系统管理', 'fa fa-cogs', '', '', '_self', '0', '1', '', '1593620497', '1593620497', null);
INSERT INTO `system_menu` VALUES ('257', '256', '菜单管理', 'fa fa-bars', 'system.menu/index', '', '_self', '0', '1', '', '1593620592', '1594018930', '1594018930');
INSERT INTO `system_menu` VALUES ('258', '256', '系统配置', 'fa fa-cog', 'system.config/index', '', '_self', '0', '1', '', '1593620652', '1593620652', null);
INSERT INTO `system_menu` VALUES ('259', '256', '上传管理', 'fa fa-arrow-circle-up', 'system.uploadfile/index', '', '_self', '0', '1', '', '1593620713', '1593620713', null);
INSERT INTO `system_menu` VALUES ('260', '256', '快捷入口', 'fa fa-automobile', 'system.quick/index', '', '_self', '0', '1', '', '1593620774', '1593620774', null);
INSERT INTO `system_menu` VALUES ('261', '253', '账号管理', 'fa fa-users', 'system.admin/index', '', '_self', '2', '1', '', '1593621244', '1593621291', null);
INSERT INTO `system_menu` VALUES ('262', '228', '用户管理', 'fa fa-group', '', '', '_self', '0', '1', '', '1593673543', '1594017832', '1594017832');
INSERT INTO `system_menu` VALUES ('263', '262', '用户列表', 'fa fa-align-center', 'user.baseinfo/index', '', '_self', '0', '1', '', '1593678490', '1593783393', null);
INSERT INTO `system_menu` VALUES ('264', '262', '用户授权', 'fa fa-chain-broken', 'user.authorize/index', '', '_self', '0', '1', '', '1593783935', '1593783935', null);
INSERT INTO `system_menu` VALUES ('265', '262', '用户额外信息', 'fa fa-chain', 'user.extrainfo/index', '', '_self', '0', '1', '', '1593789272', '1593789272', null);
INSERT INTO `system_menu` VALUES ('266', '262', '用户定位', 'fa fa-location-arrow', 'user.locationinfo/index', '', '_self', '0', '1', '', '1593858296', '1593858296', null);
INSERT INTO `system_menu` VALUES ('267', '262', '用户认证信息', 'fa fa-address-book-o', 'user.renewalvip/index', '', '_self', '0', '1', '', '1593872430', '1593872430', null);
INSERT INTO `system_menu` VALUES ('268', '262', '用户注册日志', 'fa fa-calendar-o', 'user.register_log/index', '', '_self', '0', '1', '', '1593873456', '1593873456', null);
INSERT INTO `system_menu` VALUES ('269', '262', '用户登录日志', 'fa fa-edge', 'user.login_log/index', '', '_self', '0', '1', '', '1593874236', '1593874236', null);
INSERT INTO `system_menu` VALUES ('270', '228', '简历管理', 'fa fa-object-ungroup', '', '', '_self', '0', '1', '', '1593912156', '1594017841', '1594017841');
INSERT INTO `system_menu` VALUES ('271', '270', '教育经历', 'fa fa-adjust', 'rs.educationalexp/index', '', '_self', '0', '1', '', '1593913311', '1593913311', null);
INSERT INTO `system_menu` VALUES ('272', '270', '项目经历', 'fa fa-dropbox', 'rs.projectexp/index', '', '_self', '0', '1', '', '1593915939', '1593915939', null);
INSERT INTO `system_menu` VALUES ('273', '270', '资格证书', 'fa fa-lightbulb-o', 'rs.qualification/index', '', '_self', '0', '1', '', '1593918051', '1593918051', null);
INSERT INTO `system_menu` VALUES ('274', '228', '其他管理', 'fa fa-folder-open', '', '', '_self', '0', '1', '', '1593922557', '1594017849', '1594017849');
INSERT INTO `system_menu` VALUES ('275', '274', '资格证书库', 'fa fa-copy', 'e.qualificationcer/index', '', '_self', '0', '1', '', '1593922681', '1593924118', null);
INSERT INTO `system_menu` VALUES ('276', '274', '行业信息库', 'fa fa-modx', 'e.industry/index', '', '_self', '0', '1', '', '1593946717', '1593946717', null);
INSERT INTO `system_menu` VALUES ('277', '274', '职位类型库', 'fa fa-star-half-empty', 'e.jobtype/index', '', '_self', '0', '1', '', '1593947408', '1593947408', null);
INSERT INTO `system_menu` VALUES ('278', '274', '职位关键词标签库', 'fa fa-tags', 'e.jobtypetag/index', '', '_self', '0', '1', '', '1593949031', '1593949031', null);
INSERT INTO `system_menu` VALUES ('279', '274', '招聘地理位置配置', 'fa fa-location-arrow', 'e.regioninfo/index', '', '_self', '0', '1', '', '1593950185', '1593950185', null);
INSERT INTO `system_menu` VALUES ('280', '274', '学校信息库', 'fa fa-home', 'e.schoolthesaurus/index', '', '_self', '0', '1', '', '1593950921', '1593950921', null);
INSERT INTO `system_menu` VALUES ('281', '256', '操作日志', 'fa fa-calendar-check-o', 'system.log/index', '', '_self', '0', '1', '', '1593958219', '1593958219', null);
INSERT INTO `system_menu` VALUES ('282', '253', '菜单管理', 'fa fa-cubes', 'system.menu/index', '', '_self', '0', '1', '', '1594018923', '1594019655', null);
INSERT INTO `system_menu` VALUES ('283', '228', '银行卡管理', 'fa fa-credit-card', '', '', '_self', '0', '1', '', '1594020098', '1594020098', null);

-- ----------------------------
-- Table structure for system_node
-- ----------------------------
DROP TABLE IF EXISTS `system_node`;
CREATE TABLE `system_node` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `node` varchar(100) DEFAULT NULL COMMENT '节点代码',
  `title` varchar(500) DEFAULT NULL COMMENT '节点标题',
  `type` tinyint(1) DEFAULT '3' COMMENT '节点类型（1：控制器，2：节点）',
  `is_auth` tinyint(1) unsigned DEFAULT '1' COMMENT '是否启动RBAC权限控制',
  `create_time` int(10) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(10) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `node` (`node`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='后台_系统节点表';

-- ----------------------------
-- Records of system_node
-- ----------------------------
INSERT INTO `system_node` VALUES ('1', 'system.admin', '管理员管理', '1', '1', '1589580432', '1593859543');
INSERT INTO `system_node` VALUES ('2', 'system.admin/index', '列表', '2', '1', '1589580432', '1589580432');
INSERT INTO `system_node` VALUES ('3', 'system.admin/add', '添加', '2', '1', '1589580432', '1589580432');
INSERT INTO `system_node` VALUES ('4', 'system.admin/edit', '编辑', '2', '1', '1589580432', '1589580432');
INSERT INTO `system_node` VALUES ('5', 'system.admin/password', '编辑', '2', '1', '1589580432', '1593859788');
INSERT INTO `system_node` VALUES ('6', 'system.admin/delete', '删除', '2', '1', '1589580432', '1593859789');
INSERT INTO `system_node` VALUES ('7', 'system.admin/modify', '属性修改', '2', '1', '1589580432', '1593859791');
INSERT INTO `system_node` VALUES ('8', 'system.admin/export', '导出', '2', '1', '1589580432', '1593859792');
INSERT INTO `system_node` VALUES ('9', 'system.auth', '角色权限管理', '1', '1', '1589580432', '1589580432');
INSERT INTO `system_node` VALUES ('10', 'system.auth/authorize', '授权', '2', '1', '1589580432', '1589580432');
INSERT INTO `system_node` VALUES ('11', 'system.auth/saveAuthorize', '授权保存', '2', '1', '1589580432', '1589580432');
INSERT INTO `system_node` VALUES ('12', 'system.auth/index', '列表', '2', '1', '1589580432', '1589580432');
INSERT INTO `system_node` VALUES ('13', 'system.auth/add', '添加', '2', '1', '1589580432', '1589580432');
INSERT INTO `system_node` VALUES ('14', 'system.auth/edit', '编辑', '2', '1', '1589580432', '1589580432');
INSERT INTO `system_node` VALUES ('15', 'system.auth/delete', '删除', '2', '1', '1589580432', '1589580432');
INSERT INTO `system_node` VALUES ('16', 'system.auth/export', '导出', '2', '1', '1589580432', '1589580432');
INSERT INTO `system_node` VALUES ('17', 'system.auth/modify', '属性修改', '2', '1', '1589580432', '1589580432');
INSERT INTO `system_node` VALUES ('18', 'system.config', '系统配置管理', '1', '1', '1589580432', '1589580432');
INSERT INTO `system_node` VALUES ('19', 'system.config/index', '列表', '2', '1', '1589580432', '1589580432');
INSERT INTO `system_node` VALUES ('20', 'system.config/save', '保存', '2', '1', '1589580432', '1589580432');
INSERT INTO `system_node` VALUES ('21', 'system.menu', '菜单管理', '1', '1', '1589580432', '1589580432');
INSERT INTO `system_node` VALUES ('22', 'system.menu/index', '列表', '2', '1', '1589580432', '1589580432');
INSERT INTO `system_node` VALUES ('23', 'system.menu/add', '添加', '2', '1', '1589580432', '1589580432');
INSERT INTO `system_node` VALUES ('24', 'system.menu/edit', '编辑', '2', '1', '1589580432', '1589580432');
INSERT INTO `system_node` VALUES ('25', 'system.menu/delete', '删除', '2', '1', '1589580432', '1589580432');
INSERT INTO `system_node` VALUES ('26', 'system.menu/modify', '属性修改', '2', '1', '1589580432', '1589580432');
INSERT INTO `system_node` VALUES ('27', 'system.menu/getMenuTips', '添加菜单提示', '2', '1', '1589580432', '1589580432');
INSERT INTO `system_node` VALUES ('28', 'system.menu/export', '导出', '2', '1', '1589580432', '1589580432');
INSERT INTO `system_node` VALUES ('29', 'system.node', '系统节点管理', '1', '1', '1589580432', '1589580432');
INSERT INTO `system_node` VALUES ('30', 'system.node/index', '列表', '2', '1', '1589580432', '1589580432');
INSERT INTO `system_node` VALUES ('31', 'system.node/refreshNode', '系统节点更新', '2', '1', '1589580432', '1589580432');
INSERT INTO `system_node` VALUES ('32', 'system.node/clearNode', '清除失效节点', '2', '1', '1589580432', '1589580432');
INSERT INTO `system_node` VALUES ('33', 'system.node/add', '添加', '2', '0', '1589580432', '1594019101');
INSERT INTO `system_node` VALUES ('34', 'system.node/edit', '编辑', '2', '0', '1589580432', '1594019096');
INSERT INTO `system_node` VALUES ('35', 'system.node/delete', '删除', '2', '0', '1589580432', '1594019091');
INSERT INTO `system_node` VALUES ('36', 'system.node/export', '导出', '2', '0', '1589580432', '1594019106');
INSERT INTO `system_node` VALUES ('37', 'system.node/modify', '属性修改', '2', '1', '1589580432', '1593860547');
INSERT INTO `system_node` VALUES ('38', 'system.uploadfile', '上传文件管理', '1', '1', '1589580432', '1589580432');
INSERT INTO `system_node` VALUES ('39', 'system.uploadfile/index', '列表', '2', '1', '1589580432', '1589580432');
INSERT INTO `system_node` VALUES ('40', 'system.uploadfile/add', '添加', '2', '1', '1589580432', '1589580432');
INSERT INTO `system_node` VALUES ('41', 'system.uploadfile/edit', '编辑', '2', '1', '1589580432', '1589580432');
INSERT INTO `system_node` VALUES ('42', 'system.uploadfile/delete', '删除', '2', '1', '1589580432', '1589580432');
INSERT INTO `system_node` VALUES ('43', 'system.uploadfile/export', '导出', '2', '1', '1589580432', '1589580432');
INSERT INTO `system_node` VALUES ('44', 'system.uploadfile/modify', '属性修改', '2', '1', '1589580432', '1589580432');
INSERT INTO `system_node` VALUES ('60', 'system.quick', '快捷入口管理', '1', '1', '1589623188', '1589623188');
INSERT INTO `system_node` VALUES ('61', 'system.quick/index', '列表', '2', '1', '1589623188', '1589623188');
INSERT INTO `system_node` VALUES ('62', 'system.quick/add', '添加', '2', '1', '1589623188', '1589623188');
INSERT INTO `system_node` VALUES ('63', 'system.quick/edit', '编辑', '2', '1', '1589623188', '1589623188');
INSERT INTO `system_node` VALUES ('64', 'system.quick/delete', '删除', '2', '1', '1589623188', '1589623188');
INSERT INTO `system_node` VALUES ('65', 'system.quick/export', '导出', '2', '1', '1589623188', '1589623188');
INSERT INTO `system_node` VALUES ('66', 'system.quick/modify', '属性修改', '2', '1', '1589623188', '1589623188');
INSERT INTO `system_node` VALUES ('185', 'system.log', 'system_log', '1', '1', '1593958146', '1593958146');
INSERT INTO `system_node` VALUES ('186', 'system.log/index', '列表', '2', '1', '1593958146', '1593958146');
INSERT INTO `system_node` VALUES ('187', 'system.log/add', '添加', '2', '1', '1593958146', '1593958256');
INSERT INTO `system_node` VALUES ('188', 'system.log/edit', '编辑', '2', '1', '1593958146', '1593958252');
INSERT INTO `system_node` VALUES ('189', 'system.log/delete', '删除', '2', '1', '1593958146', '1593958237');
INSERT INTO `system_node` VALUES ('190', 'system.log/export', '导出', '2', '1', '1593958146', '1593958146');
INSERT INTO `system_node` VALUES ('191', 'system.log/modify', '属性修改', '2', '1', '1593958146', '1593958233');

-- ----------------------------
-- Table structure for system_quick
-- ----------------------------
DROP TABLE IF EXISTS `system_quick`;
CREATE TABLE `system_quick` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL COMMENT '快捷入口名称',
  `icon` varchar(100) DEFAULT NULL COMMENT '图标',
  `href` varchar(255) DEFAULT NULL COMMENT '快捷链接',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态(1:禁用,2:启用)',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(11) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='后台_系统快捷入口表';

-- ----------------------------
-- Records of system_quick
-- ----------------------------
INSERT INTO `system_quick` VALUES ('1', '管理员管理', 'fa fa-user', 'system.admin/index', '0', '1', '', '1589624097', '1589624792', null);
INSERT INTO `system_quick` VALUES ('2', '角色管理', 'fa fa-bitbucket-square', 'system.auth/index', '0', '1', '', '1589624772', '1589624781', null);
INSERT INTO `system_quick` VALUES ('3', '菜单管理', 'fa fa-tree', 'system.menu/index', '0', '1', null, '1589624097', '1589624792', null);
INSERT INTO `system_quick` VALUES ('6', '节点管理', 'fa fa-list', 'system.node/index', '0', '1', null, '1589624772', '1589624781', null);
INSERT INTO `system_quick` VALUES ('7', '配置管理', 'fa fa-asterisk', 'system.config/index', '0', '1', null, '1589624097', '1589624792', null);
INSERT INTO `system_quick` VALUES ('8', '上传管理', 'fa fa-arrow-up', 'system.uploadfile/index', '0', '1', null, '1589624772', '1589624781', null);
INSERT INTO `system_quick` VALUES ('10', '商品分类', 'fa fa-calendar-check-o', 'mall.cate/index', '0', '1', null, '1589624097', '1593673965', '1593673965');
INSERT INTO `system_quick` VALUES ('11', '商品管理', 'fa fa-list', 'mall.goods/index', '0', '1', null, '1589624772', '1593673961', '1593673961');

-- ----------------------------
-- Table structure for system_uploadfile
-- ----------------------------
DROP TABLE IF EXISTS `system_uploadfile`;
CREATE TABLE `system_uploadfile` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `upload_type` varchar(20) NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `original_name` varchar(255) DEFAULT NULL COMMENT '文件原名',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '物理路径',
  `image_width` varchar(30) NOT NULL DEFAULT '' COMMENT '宽度',
  `image_height` varchar(30) NOT NULL DEFAULT '' COMMENT '高度',
  `image_type` varchar(30) NOT NULL DEFAULT '' COMMENT '图片类型',
  `image_frames` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '图片帧数',
  `mime_type` varchar(100) NOT NULL DEFAULT '' COMMENT 'mime类型',
  `file_size` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `file_ext` varchar(100) DEFAULT NULL,
  `sha1` varchar(40) NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  `create_time` int(10) DEFAULT NULL COMMENT '创建日期',
  `update_time` int(10) DEFAULT NULL COMMENT '更新时间',
  `upload_time` int(10) DEFAULT NULL COMMENT '上传时间',
  PRIMARY KEY (`id`),
  KEY `upload_type` (`upload_type`),
  KEY `original_name` (`original_name`)
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='后台_上传文件表';

-- ----------------------------
-- Records of system_uploadfile
-- ----------------------------
INSERT INTO `system_uploadfile` VALUES ('319', 'local', 'logo.png', 'http://yeepay.php8.run/upload/20200706/fdcf1e2c06c4b18e522cd16ec8ce11ef.png', '', '', '', '0', 'image/png', '0', 'png', '', '1594018642', null, null);
INSERT INTO `system_uploadfile` VALUES ('320', 'local', 'favicon (1).ico', 'http://yeepay.php8.run/upload/20200706/b3e56029db2b4d67e569f4e1659eecae.ico', '', '', '', '0', 'image/x-icon', '0', 'ico', '', '1594018834', null, null);
