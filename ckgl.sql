/*
Navicat MariaDB Data Transfer

Source Server         : ck
Source Server Version : 100131
Source Host           : localhost:3306
Source Database       : ckgl

Target Server Type    : MariaDB
Target Server Version : 100131
File Encoding         : 65001

Date: 2018-04-21 23:27:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for kc_action_log
-- ----------------------------
DROP TABLE IF EXISTS `kc_action_log`;
CREATE TABLE `kc_action_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '执行会员id',
  `username` char(30) NOT NULL DEFAULT '' COMMENT '用户名',
  `ip` char(30) NOT NULL DEFAULT '' COMMENT '执行行为者ip',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '行为名称',
  `describe` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '执行的URL',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '执行行为的时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1322 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='行为日志表';

-- ----------------------------
-- Records of kc_action_log
-- ----------------------------
INSERT INTO `kc_action_log` VALUES ('1263', '1', 'admin', '0.0.0.0', '登录', '登录操作，username：admin', '/admin.php/login/loginhandle.html', '1', '1524310312', '1524310312');
INSERT INTO `kc_action_log` VALUES ('1264', '1', 'admin', '0.0.0.0', '新增', '新增权限组，name：教师', '/admin.php/auth/groupadd.html', '1', '1524310388', '1524310388');
INSERT INTO `kc_action_log` VALUES ('1265', '1', 'admin', '0.0.0.0', '新增', '新增权限组，name：同学', '/admin.php/auth/groupadd.html', '1', '1524310403', '1524310403');
INSERT INTO `kc_action_log` VALUES ('1266', '1', 'admin', '0.0.0.0', '授权', '设置权限组权限，id：17', '/admin.php/auth/menuauth.html', '1', '1524310598', '1524310598');
INSERT INTO `kc_action_log` VALUES ('1267', '1', 'admin', '0.0.0.0', '新增', '新增会员，username：zhanglaoshi', '/admin.php/member/memberadd.html', '1', '1524310712', '1524310712');
INSERT INTO `kc_action_log` VALUES ('1268', '1', 'admin', '0.0.0.0', '授权', '会员授权，id：966', '/admin.php/member/memberauth.html', '1', '1524310719', '1524310719');
INSERT INTO `kc_action_log` VALUES ('1269', '966', 'zhanglaoshi', '0.0.0.0', '登录', '登录操作，username：zhanglaoshi', '/admin.php/login/loginhandle.html', '1', '1524310751', '1524310751');
INSERT INTO `kc_action_log` VALUES ('1270', '1', 'admin', '0.0.0.0', '登录', '登录操作，username：admin', '/admin.php/login/loginhandle.html', '1', '1524310766', '1524310766');
INSERT INTO `kc_action_log` VALUES ('1271', '1', 'admin', '0.0.0.0', '授权', '设置权限组权限，id：17', '/admin.php/auth/menuauth.html', '1', '1524310811', '1524310811');
INSERT INTO `kc_action_log` VALUES ('1272', '966', 'zhanglaoshi', '0.0.0.0', '登录', '登录操作，username：zhanglaoshi', '/admin.php/login/loginhandle.html', '1', '1524310823', '1524310823');
INSERT INTO `kc_action_log` VALUES ('1273', '1', 'admin', '0.0.0.0', '登录', '登录操作，username：admin', '/admin.php/login/loginhandle.html', '1', '1524310835', '1524310835');
INSERT INTO `kc_action_log` VALUES ('1274', '1', 'admin', '0.0.0.0', '授权', '设置权限组权限，id：17', '/admin.php/auth/menuauth.html', '1', '1524310893', '1524310893');
INSERT INTO `kc_action_log` VALUES ('1275', '966', 'zhanglaoshi', '0.0.0.0', '登录', '登录操作，username：zhanglaoshi', '/admin.php/login/loginhandle.html', '1', '1524310908', '1524310908');
INSERT INTO `kc_action_log` VALUES ('1276', '1', 'admin', '0.0.0.0', '登录', '登录操作，username：admin', '/admin.php/login/loginhandle.html', '1', '1524310957', '1524310957');
INSERT INTO `kc_action_log` VALUES ('1277', '1', 'admin', '0.0.0.0', '删除', '删除权限组，where：id=17', '/admin.php/auth/groupdel/id/17.html', '1', '1524310985', '1524310985');
INSERT INTO `kc_action_log` VALUES ('1278', '1', 'admin', '0.0.0.0', '新增', '新增权限组，name：老师', '/admin.php/auth/groupadd.html', '1', '1524311009', '1524311009');
INSERT INTO `kc_action_log` VALUES ('1279', '1', 'admin', '0.0.0.0', '授权', '会员授权，id：966', '/admin.php/member/memberauth.html', '1', '1524311017', '1524311017');
INSERT INTO `kc_action_log` VALUES ('1280', '966', 'zhanglaoshi', '0.0.0.0', '登录', '登录操作，username：zhanglaoshi', '/admin.php/login/loginhandle.html', '1', '1524311033', '1524311033');
INSERT INTO `kc_action_log` VALUES ('1281', '1', 'admin', '0.0.0.0', '登录', '登录操作，username：admin', '/admin.php/login/loginhandle.html', '1', '1524311053', '1524311053');
INSERT INTO `kc_action_log` VALUES ('1282', '1', 'admin', '0.0.0.0', '授权', '设置权限组权限，id：19', '/admin.php/auth/menuauth.html', '1', '1524311070', '1524311070');
INSERT INTO `kc_action_log` VALUES ('1283', '966', 'zhanglaoshi', '0.0.0.0', '登录', '登录操作，username：zhanglaoshi', '/admin.php/login/loginhandle.html', '1', '1524311087', '1524311087');
INSERT INTO `kc_action_log` VALUES ('1284', '1', 'admin', '0.0.0.0', '登录', '登录操作，username：admin', '/admin.php/login/loginhandle.html', '1', '1524311104', '1524311104');
INSERT INTO `kc_action_log` VALUES ('1285', '1', 'admin', '0.0.0.0', '授权', '设置权限组权限，id：19', '/admin.php/auth/menuauth.html', '1', '1524311122', '1524311122');
INSERT INTO `kc_action_log` VALUES ('1286', '966', 'zhanglaoshi', '0.0.0.0', '登录', '登录操作，username：zhanglaoshi', '/admin.php/login/loginhandle.html', '1', '1524311136', '1524311136');
INSERT INTO `kc_action_log` VALUES ('1287', '966', 'zhanglaoshi', '0.0.0.0', '编辑', '文章分类编辑，name：公共必修课', '/admin.php/article/articlecategoryedit.html', '1', '1524311622', '1524311622');
INSERT INTO `kc_action_log` VALUES ('1288', '966', 'zhanglaoshi', '0.0.0.0', '编辑', '文章分类编辑，name：学科基础课', '/admin.php/article/articlecategoryedit.html', '1', '1524311635', '1524311635');
INSERT INTO `kc_action_log` VALUES ('1289', '966', 'zhanglaoshi', '0.0.0.0', '新增', '文章分类新增，name：专业主干课', '/admin.php/article/articlecategoryadd.html', '1', '1524311649', '1524311649');
INSERT INTO `kc_action_log` VALUES ('1290', '966', 'zhanglaoshi', '0.0.0.0', '新增', '文章分类新增，name：职业方向接口课', '/admin.php/article/articlecategoryadd.html', '1', '1524311674', '1524311674');
INSERT INTO `kc_action_log` VALUES ('1291', '966', 'zhanglaoshi', '0.0.0.0', '编辑', '文章分类编辑，name：专业主干课', '/admin.php/article/articlecategoryedit.html', '1', '1524311795', '1524311795');
INSERT INTO `kc_action_log` VALUES ('1292', '966', 'zhanglaoshi', '0.0.0.0', '编辑', '文章分类编辑，name：职业方向接口课', '/admin.php/article/articlecategoryedit.html', '1', '1524311804', '1524311804');
INSERT INTO `kc_action_log` VALUES ('1293', '966', 'zhanglaoshi', '0.0.0.0', '编辑', '文章分类编辑，name：公共必修课', '/admin.php/article/articlecategoryedit.html', '1', '1524311824', '1524311824');
INSERT INTO `kc_action_log` VALUES ('1294', '966', 'zhanglaoshi', '0.0.0.0', '编辑', '文章分类编辑，name：学科基础课', '/admin.php/article/articlecategoryedit.html', '1', '1524311849', '1524311849');
INSERT INTO `kc_action_log` VALUES ('1295', '966', 'zhanglaoshi', '0.0.0.0', '新增', '文章新增，name：大学体育1', '/admin.php/article/articleadd.html', '1', '1524319145', '1524319145');
INSERT INTO `kc_action_log` VALUES ('1296', '966', 'zhanglaoshi', '0.0.0.0', '新增', '文章新增，name：大学体育', '/admin.php/article/articleadd.html', '1', '1524319731', '1524319731');
INSERT INTO `kc_action_log` VALUES ('1297', '966', 'zhanglaoshi', '0.0.0.0', '删除', '文章删除，where：id=33', '/admin.php/article/articledel/id/33.html', '1', '1524320178', '1524320178');
INSERT INTO `kc_action_log` VALUES ('1298', '966', 'zhanglaoshi', '0.0.0.0', '删除', '文章删除，where：id=40', '/admin.php/article/articledel/id/40.html', '1', '1524320181', '1524320181');
INSERT INTO `kc_action_log` VALUES ('1299', '966', 'zhanglaoshi', '0.0.0.0', '删除', '文章删除，where：id=39', '/admin.php/article/articledel/id/39.html', '1', '1524320184', '1524320184');
INSERT INTO `kc_action_log` VALUES ('1300', '966', 'zhanglaoshi', '0.0.0.0', '删除', '文章删除，where：id=38', '/admin.php/article/articledel/id/38.html', '1', '1524320186', '1524320186');
INSERT INTO `kc_action_log` VALUES ('1301', '966', 'zhanglaoshi', '0.0.0.0', '删除', '文章删除，where：id=37', '/admin.php/article/articledel/id/37.html', '1', '1524320189', '1524320189');
INSERT INTO `kc_action_log` VALUES ('1302', '966', 'zhanglaoshi', '0.0.0.0', '删除', '文章删除，where：id=36', '/admin.php/article/articledel/id/36.html', '1', '1524320191', '1524320191');
INSERT INTO `kc_action_log` VALUES ('1303', '966', 'zhanglaoshi', '0.0.0.0', '删除', '文章删除，where：id=35', '/admin.php/article/articledel/id/35.html', '1', '1524320193', '1524320193');
INSERT INTO `kc_action_log` VALUES ('1304', '966', 'zhanglaoshi', '0.0.0.0', '删除', '文章删除，where：id=34', '/admin.php/article/articledel/id/34.html', '1', '1524320196', '1524320196');
INSERT INTO `kc_action_log` VALUES ('1305', '966', 'zhanglaoshi', '0.0.0.0', '删除', '文章删除，where：id=32', '/admin.php/article/articledel/id/32.html', '1', '1524320202', '1524320202');
INSERT INTO `kc_action_log` VALUES ('1306', '966', 'zhanglaoshi', '0.0.0.0', '删除', '文章删除，where：id=31', '/admin.php/article/articledel/id/31.html', '1', '1524320207', '1524320207');
INSERT INTO `kc_action_log` VALUES ('1307', '966', 'zhanglaoshi', '0.0.0.0', '删除', '文章删除，where：id=29', '/admin.php/article/articledel/id/29.html', '1', '1524320211', '1524320211');
INSERT INTO `kc_action_log` VALUES ('1308', '966', 'zhanglaoshi', '0.0.0.0', '删除', '文章删除，where：id=23', '/admin.php/article/articledel/id/23.html', '1', '1524320216', '1524320216');
INSERT INTO `kc_action_log` VALUES ('1309', '966', 'zhanglaoshi', '0.0.0.0', '删除', '文章删除，where：id=24', '/admin.php/article/articledel/id/24.html', '1', '1524320261', '1524320261');
INSERT INTO `kc_action_log` VALUES ('1310', '966', 'zhanglaoshi', '0.0.0.0', '删除', '文章删除，where：id=25', '/admin.php/article/articledel/id/25.html', '1', '1524320264', '1524320264');
INSERT INTO `kc_action_log` VALUES ('1311', '966', 'zhanglaoshi', '0.0.0.0', '删除', '文章删除，where：id=26', '/admin.php/article/articledel/id/26.html', '1', '1524320277', '1524320277');
INSERT INTO `kc_action_log` VALUES ('1312', '966', 'zhanglaoshi', '0.0.0.0', '删除', '文章删除，where：id=27', '/admin.php/article/articledel/id/27.html', '1', '1524320280', '1524320280');
INSERT INTO `kc_action_log` VALUES ('1313', '966', 'zhanglaoshi', '0.0.0.0', '编辑', '文章编辑，name：大学体育', '/admin.php/article/articleedit.html', '1', '1524320286', '1524320286');
INSERT INTO `kc_action_log` VALUES ('1314', '966', 'zhanglaoshi', '0.0.0.0', '编辑', '文章编辑，name：大学体育2', '/admin.php/article/articleedit.html', '1', '1524320351', '1524320351');
INSERT INTO `kc_action_log` VALUES ('1315', '966', 'zhanglaoshi', '0.0.0.0', '删除', '文章删除，where：id=28', '/admin.php/article/articledel/id/28.html', '1', '1524320356', '1524320356');
INSERT INTO `kc_action_log` VALUES ('1316', '966', 'zhanglaoshi', '0.0.0.0', '删除', '文章删除，where：id=30', '/admin.php/article/articledel/id/30.html', '1', '1524320358', '1524320358');
INSERT INTO `kc_action_log` VALUES ('1317', '966', 'zhanglaoshi', '0.0.0.0', '编辑', '文章编辑，name：大学体育2', '/admin.php/article/articleedit.html', '1', '1524321361', '1524321361');
INSERT INTO `kc_action_log` VALUES ('1318', '966', 'zhanglaoshi', '0.0.0.0', '编辑', '文章编辑，name：大学体育2', '/admin.php/article/articleedit.html', '1', '1524321370', '1524321370');
INSERT INTO `kc_action_log` VALUES ('1319', '966', 'zhanglaoshi', '0.0.0.0', '编辑', '文章编辑，name：大学体育2', '/admin.php/article/articleedit.html', '1', '1524321411', '1524321411');
INSERT INTO `kc_action_log` VALUES ('1320', '966', 'zhanglaoshi', '0.0.0.0', '编辑', '文章编辑，name：大学体育2', '/admin.php/article/articleedit.html', '1', '1524324080', '1524324080');
INSERT INTO `kc_action_log` VALUES ('1321', '1', 'admin', '0.0.0.0', '登录', '登录操作，username：admin', '/admin.php/login/loginhandle.html', '1', '1524324385', '1524324385');

-- ----------------------------
-- Table structure for kc_addon
-- ----------------------------
DROP TABLE IF EXISTS `kc_addon`;
CREATE TABLE `kc_addon` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(40) NOT NULL DEFAULT '' COMMENT '插件名或标识',
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '中文名称',
  `describe` varchar(255) NOT NULL DEFAULT '' COMMENT '插件描述',
  `config` text NOT NULL COMMENT '配置',
  `author` varchar(40) NOT NULL DEFAULT '' COMMENT '作者',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '版本号',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='插件表';

-- ----------------------------
-- Records of kc_addon
-- ----------------------------
INSERT INTO `kc_addon` VALUES ('3', 'File', '文件上传', '文件上传插件', '', 'Jack', '1.0', '1', '0', '0');
INSERT INTO `kc_addon` VALUES ('4', 'Icon', '图标选择', '图标选择插件', '', 'Bigotry', '1.0', '1', '0', '0');
INSERT INTO `kc_addon` VALUES ('5', 'Editor', '文本编辑器', '富文本编辑器', '', 'Bigotry', '1.0', '1', '0', '0');

-- ----------------------------
-- Table structure for kc_api
-- ----------------------------
DROP TABLE IF EXISTS `kc_api`;
CREATE TABLE `kc_api` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(150) NOT NULL DEFAULT '' COMMENT '接口名称',
  `group_id` int(6) unsigned NOT NULL DEFAULT '0' COMMENT '接口分组',
  `request_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '请求类型 0:POST  1:GET',
  `api_url` char(50) NOT NULL DEFAULT '' COMMENT '请求路径',
  `describe` varchar(255) NOT NULL DEFAULT '' COMMENT '接口描述',
  `describe_text` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '接口富文本描述',
  `is_request_data` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要请求数据',
  `request_data` text NOT NULL COMMENT '请求数据',
  `response_data` text NOT NULL COMMENT '响应数据',
  `is_response_data` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要响应数据',
  `is_user_token` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要用户token',
  `is_response_sign` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否返回数据签名',
  `is_request_sign` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否验证请求数据签名',
  `response_examples` text NOT NULL COMMENT '响应栗子',
  `developer` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '研发者',
  `api_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '接口状态（0:待研发，1:研发中，2:测试中，3:已完成）',
  `is_page` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为分页接口 0：否  1：是',
  `sort` tinyint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '数据状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=192 DEFAULT CHARSET=utf8 COMMENT='API表';

-- ----------------------------
-- Records of kc_api
-- ----------------------------
INSERT INTO `kc_api` VALUES ('186', '登录或注册', '34', '0', 'common/login', '系统登录注册接口，若用户名存在则验证密码正确性，若用户名不存在则注册新用户，返回 user_token 用于操作需验证身份的接口', '', '1', '[{\"field_name\":\"username\",\"data_type\":\"0\",\"is_require\":\"1\",\"field_describe\":\"\\u7528\\u6237\\u540d\"},{\"field_name\":\"password\",\"data_type\":\"0\",\"is_require\":\"1\",\"field_describe\":\"\\u5bc6\\u7801\"}]', '[{\"field_name\":\"data\",\"data_type\":\"2\",\"field_describe\":\"\\u4f1a\\u5458\\u6570\\u636e\\u53causer_token\"}]', '1', '0', '1', '0', '{\r\n    &quot;code&quot;: 0,\r\n    &quot;msg&quot;: &quot;操作成功&quot;,\r\n    &quot;data&quot;: {\r\n        &quot;member_id&quot;: 51,\r\n        &quot;nickname&quot;: &quot;sadasdas&quot;,\r\n        &quot;username&quot;: &quot;sadasdas&quot;,\r\n        &quot;create_time&quot;: &quot;2017-09-09 13:40:17&quot;,\r\n        &quot;user_token&quot;: &quot;eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJPbmVCYXNlIEpXVCIsImlhdCI6MTUwNDkzNTYxNywiZXhwIjoxNTA0OTM2NjE3LCJhdWQiOiJPbmVCYXNlIiwic3ViIjoiT25lQmFzZSIsImRhdGEiOnsibWVtYmVyX2lkIjo1MSwibmlja25hbWUiOiJzYWRhc2RhcyIsInVzZXJuYW1lIjoic2FkYXNkYXMiLCJjcmVhdGVfdGltZSI6IjIwMTctMDktMDkgMTM6NDA6MTcifX0.6PEShODuifNsa-x1TumLoEaR2TCXpUEYgjpD3Mz3GRM&quot;\r\n    }\r\n}', '0', '1', '0', '0', '1', '1504501410', '1504949075');
INSERT INTO `kc_api` VALUES ('187', '文章分类列表', '44', '0', 'article/categorylist', '文章分类列表接口', '', '0', '', '[{\"field_name\":\"id\",\"data_type\":\"0\",\"field_describe\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\"},{\"field_name\":\"name\",\"data_type\":\"0\",\"field_describe\":\"\\u6587\\u7ae0\\u5206\\u7c7b\\u540d\\u79f0\"}]', '1', '0', '0', '0', '{\r\n    &quot;code&quot;: 0,\r\n    &quot;msg&quot;: &quot;操作成功&quot;,\r\n    &quot;data&quot;: [\r\n        {\r\n            &quot;id&quot;: 2,\r\n            &quot;name&quot;: &quot;测试文章分类2&quot;\r\n        },\r\n        {\r\n            &quot;id&quot;: 1,\r\n            &quot;name&quot;: &quot;测试文章分类1&quot;\r\n        }\r\n    ]\r\n}', '0', '0', '0', '2', '1', '1504765581', '1507366297');
INSERT INTO `kc_api` VALUES ('188', '文章列表', '44', '0', 'article/articlelist', '文章列表接口', '', '1', '[{\"field_name\":\"category_id\",\"data_type\":\"0\",\"is_require\":\"0\",\"field_describe\":\"\\u82e5\\u4e0d\\u4f20\\u9012\\u6b64\\u53c2\\u6570\\u5219\\u4e3a\\u6240\\u6709\\u5206\\u7c7b\"}]', '', '0', '0', '0', '0', '{\r\n    &quot;code&quot;: 0,\r\n    &quot;msg&quot;: &quot;操作成功&quot;,\r\n    &quot;data&quot;: {\r\n        &quot;total&quot;: 9,\r\n        &quot;per_page&quot;: &quot;10&quot;,\r\n        &quot;current_page&quot;: 1,\r\n        &quot;last_page&quot;: 1,\r\n        &quot;data&quot;: [\r\n            {\r\n                &quot;id&quot;: 16,\r\n                &quot;name&quot;: &quot;11111111&quot;,\r\n                &quot;category_id&quot;: 2,\r\n                &quot;describe&quot;: &quot;22222222&quot;,\r\n                &quot;create_time&quot;: &quot;2017-08-07 13:58:37&quot;\r\n            },\r\n            {\r\n                &quot;id&quot;: 15,\r\n                &quot;name&quot;: &quot;tttttt&quot;,\r\n                &quot;category_id&quot;: 1,\r\n                &quot;describe&quot;: &quot;sddd&quot;,\r\n                &quot;create_time&quot;: &quot;2017-08-07 13:24:46&quot;\r\n            }\r\n        ]\r\n    }\r\n}', '0', '0', '1', '1', '1', '1504779780', '1507366268');
INSERT INTO `kc_api` VALUES ('189', '首页接口', '45', '0', 'combination/index', '首页聚合接口', '', '1', '[{\"field_name\":\"category_id\",\"data_type\":\"0\",\"is_require\":\"0\",\"field_describe\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\"}]', '[{\"field_name\":\"article_category_list\",\"data_type\":\"2\",\"field_describe\":\"\\u6587\\u7ae0\\u5206\\u7c7b\\u6570\\u636e\"},{\"field_name\":\"article_list\",\"data_type\":\"2\",\"field_describe\":\"\\u6587\\u7ae0\\u6570\\u636e\"}]', '1', '0', '1', '0', '{\r\n    &quot;code&quot;: 0,\r\n    &quot;msg&quot;: &quot;操作成功&quot;,\r\n    &quot;data&quot;: {\r\n        &quot;article_category_list&quot;: [\r\n            {\r\n                &quot;id&quot;: 2,\r\n                &quot;name&quot;: &quot;测试文章分类2&quot;\r\n            },\r\n            {\r\n                &quot;id&quot;: 1,\r\n                &quot;name&quot;: &quot;测试文章分类1&quot;\r\n            }\r\n        ],\r\n        &quot;article_list&quot;: {\r\n            &quot;total&quot;: 8,\r\n            &quot;per_page&quot;: &quot;2&quot;,\r\n            &quot;current_page&quot;: &quot;1&quot;,\r\n            &quot;last_page&quot;: 4,\r\n            &quot;data&quot;: [\r\n                {\r\n                    &quot;id&quot;: 15,\r\n                    &quot;name&quot;: &quot;tttttt&quot;,\r\n                    &quot;category_id&quot;: 1,\r\n                    &quot;describe&quot;: &quot;sddd&quot;,\r\n                    &quot;create_time&quot;: &quot;2017-08-07 13:24:46&quot;\r\n                },\r\n                {\r\n                    &quot;id&quot;: 14,\r\n                    &quot;name&quot;: &quot;1111111111111111111&quot;,\r\n                    &quot;category_id&quot;: 1,\r\n                    &quot;describe&quot;: &quot;123123&quot;,\r\n                    &quot;create_time&quot;: &quot;2017-08-04 15:37:20&quot;\r\n                }\r\n            ]\r\n        }\r\n    }\r\n}', '0', '0', '1', '0', '1', '1504785072', '1504948716');
INSERT INTO `kc_api` VALUES ('190', '详情页接口', '45', '0', 'combination/details', '详情页接口', '', '1', '[{\"field_name\":\"article_id\",\"data_type\":\"0\",\"is_require\":\"1\",\"field_describe\":\"\\u6587\\u7ae0ID\"}]', '[{\"field_name\":\"article_category_list\",\"data_type\":\"2\",\"field_describe\":\"\\u6587\\u7ae0\\u5206\\u7c7b\\u6570\\u636e\"},{\"field_name\":\"article_details\",\"data_type\":\"2\",\"field_describe\":\"\\u6587\\u7ae0\\u8be6\\u60c5\\u6570\\u636e\"}]', '1', '0', '0', '0', '{\r\n    &quot;code&quot;: 0,\r\n    &quot;msg&quot;: &quot;操作成功&quot;,\r\n    &quot;data&quot;: {\r\n        &quot;article_category_list&quot;: [\r\n            {\r\n                &quot;id&quot;: 2,\r\n                &quot;name&quot;: &quot;测试文章分类2&quot;\r\n            },\r\n            {\r\n                &quot;id&quot;: 1,\r\n                &quot;name&quot;: &quot;测试文章分类1&quot;\r\n            }\r\n        ],\r\n        &quot;article_details&quot;: {\r\n            &quot;id&quot;: 1,\r\n            &quot;name&quot;: &quot;213&quot;,\r\n            &quot;category_id&quot;: 1,\r\n            &quot;describe&quot;: &quot;test001&quot;,\r\n            &quot;content&quot;: &quot;第三方发送到&quot;&quot;&quot;,\r\n            &quot;create_time&quot;: &quot;2014-07-22 11:56:53&quot;\r\n        }\r\n    }\r\n}', '0', '0', '0', '0', '1', '1504922092', '1504923179');
INSERT INTO `kc_api` VALUES ('191', '修改密码', '34', '0', 'common/changepassword', '修改密码接口', '', '1', '[{\"field_name\":\"old_password\",\"data_type\":\"0\",\"is_require\":\"1\",\"field_describe\":\"\\u65e7\\u5bc6\\u7801\"},{\"field_name\":\"new_password\",\"data_type\":\"0\",\"is_require\":\"1\",\"field_describe\":\"\\u65b0\\u5bc6\\u7801\"}]', '', '0', '1', '0', '0', '{\r\n    &quot;code&quot;: 0,\r\n    &quot;msg&quot;: &quot;操作成功&quot;,\r\n    &quot;exe_time&quot;: &quot;0.037002&quot;\r\n}', '0', '0', '0', '0', '1', '1504941496', '1512981460');

-- ----------------------------
-- Table structure for kc_api_group
-- ----------------------------
DROP TABLE IF EXISTS `kc_api_group`;
CREATE TABLE `kc_api_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(120) NOT NULL DEFAULT '' COMMENT 'aip分组名称',
  `sort` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COMMENT='api分组表';

-- ----------------------------
-- Records of kc_api_group
-- ----------------------------
INSERT INTO `kc_api_group` VALUES ('34', '基础接口', '0', '1504501195', '0', '1');
INSERT INTO `kc_api_group` VALUES ('44', '文章接口', '1', '1504765319', '1504765319', '1');
INSERT INTO `kc_api_group` VALUES ('45', '聚合接口', '0', '1504784149', '1504784149', '1');

-- ----------------------------
-- Table structure for kc_article
-- ----------------------------
DROP TABLE IF EXISTS `kc_article`;
CREATE TABLE `kc_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `name` char(40) NOT NULL DEFAULT '' COMMENT '课程名称',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '课程分类',
  `describe` varchar(255) NOT NULL DEFAULT '' COMMENT '课程简单描述',
  `content` text NOT NULL COMMENT '课程详情',
  `cover_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '封面图片id',
  `file_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件id',
  `img_ids` varchar(200) NOT NULL DEFAULT '',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '数据状态',
  `professorperiod` int(255) DEFAULT NULL COMMENT '教授学时',
  `totalcredits` int(11) DEFAULT NULL COMMENT '总学分',
  `dopperiod` int(11) DEFAULT NULL COMMENT '实践学时',
  `plan` int(11) DEFAULT NULL COMMENT '学期安排 1-8学期',
  `testway` int(11) DEFAULT NULL COMMENT '考试方式1考试2考察',
  `code` int(11) DEFAULT NULL COMMENT '课程编号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_code` (`code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文章表';

-- ----------------------------
-- Records of kc_article
-- ----------------------------
INSERT INTO `kc_article` VALUES ('41', '966', '大学体育1', '7', '大学体育 主要内容为足球', '大学体育', '0', '0', '', '1524319145', '1524319145', '1', '4', '1', '28', '1', null, '1302000102');
INSERT INTO `kc_article` VALUES ('43', '966', '大学体育2', '7', '大学体育', '大学体育 主修足球', '194', '0', '195', '1524319731', '1524324080', '1', '28', '1', '4', '2', '2', '1302000103');

-- ----------------------------
-- Table structure for kc_article_category
-- ----------------------------
DROP TABLE IF EXISTS `kc_article_category`;
CREATE TABLE `kc_article_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '分类名称',
  `describe` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '数据状态',
  `icon` char(20) NOT NULL DEFAULT '' COMMENT '分类图标',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='分类表';

-- ----------------------------
-- Records of kc_article_category
-- ----------------------------
INSERT INTO `kc_article_category` VALUES ('7', '公共必修课', '公共必修课', '1509620712', '1524311824', '1', 'fa-user-plus');
INSERT INTO `kc_article_category` VALUES ('8', '学科基础课', '学科基础课', '1509792822', '1524311849', '1', 'fa-flask');
INSERT INTO `kc_article_category` VALUES ('9', '专业主干课', '专业主干课', '1524311649', '1524311795', '1', 'fa-calendar-check-o');
INSERT INTO `kc_article_category` VALUES ('10', '职业方向接口课', '职业方向接口课', '1524311674', '1524311804', '1', 'fa-leanpub');

-- ----------------------------
-- Table structure for kc_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `kc_auth_group`;
CREATE TABLE `kc_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组id,自增主键',
  `module` varchar(20) NOT NULL DEFAULT '' COMMENT '用户组所属模块',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '用户组名称',
  `describe` varchar(80) NOT NULL DEFAULT '' COMMENT '描述信息',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户组状态：为1正常，为0禁用,-1为删除',
  `rules` varchar(1000) NOT NULL DEFAULT '' COMMENT '用户组拥有的规则id，多个规则 , 隔开',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='权限组表';

-- ----------------------------
-- Records of kc_auth_group
-- ----------------------------
INSERT INTO `kc_auth_group` VALUES ('17', '', '教师', '用于发布课程', '-1', '1,68,144,145,150,153,146,147,154,148,149', '1', '1524310985', '1524310388');
INSERT INTO `kc_auth_group` VALUES ('18', '', '同学', '用于查看课程', '1', '', '1', '1524310403', '1524310403');
INSERT INTO `kc_auth_group` VALUES ('19', '', '老师', '用于发布课程', '1', '1,144,145,150,153,146,147,154,148,149', '1', '1524311122', '1524311009');

-- ----------------------------
-- Table structure for kc_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `kc_auth_group_access`;
CREATE TABLE `kc_auth_group_access` (
  `member_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户组id',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户组授权表';

-- ----------------------------
-- Records of kc_auth_group_access
-- ----------------------------
INSERT INTO `kc_auth_group_access` VALUES ('966', '19', '1524311017', '1524311017', '1');

-- ----------------------------
-- Table structure for kc_blogroll
-- ----------------------------
DROP TABLE IF EXISTS `kc_blogroll`;
CREATE TABLE `kc_blogroll` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL DEFAULT '' COMMENT '链接名称',
  `img_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '链接图片封面',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `describe` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '数据状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='友情链接表';

-- ----------------------------
-- Records of kc_blogroll
-- ----------------------------

-- ----------------------------
-- Table structure for kc_config
-- ----------------------------
DROP TABLE IF EXISTS `kc_config`;
CREATE TABLE `kc_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '配置名称',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '配置类型',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '配置标题',
  `group` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '配置分组',
  `extra` varchar(255) NOT NULL DEFAULT '' COMMENT '配置选项',
  `describe` varchar(255) NOT NULL DEFAULT '' COMMENT '配置说明',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `value` text NOT NULL COMMENT '配置值',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_name` (`name`),
  KEY `type` (`type`),
  KEY `group` (`group`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='配置表';

-- ----------------------------
-- Records of kc_config
-- ----------------------------
INSERT INTO `kc_config` VALUES ('1', 'seo_title', '1', '网站标题', '1', '', '网站标题前台显示标题，优先级低于SEO模块', '1378898976', '1512555314', '1', 'OneBase免费开源架构', '3');
INSERT INTO `kc_config` VALUES ('2', 'seo_description', '2', '网站描述', '1', '', '网站搜索引擎描述，优先级低于SEO模块', '1378898976', '1512555314', '1', 'OneBase|ThinkPHP5', '100');
INSERT INTO `kc_config` VALUES ('3', 'seo_keywords', '2', '网站关键字', '1', '', '网站搜索引擎关键字，优先级低于SEO模块', '1378898976', '1512555314', '1', 'OneBase|ThinkPHP5', '99');
INSERT INTO `kc_config` VALUES ('9', 'config_type_list', '3', '配置类型列表', '3', '', '主要用于数据解析和页面表单的生成', '1378898976', '1512982406', '1', '0:数字\r\n1:字符\r\n2:文本\r\n3:数组\r\n4:枚举\r\n5:图片\r\n6:文件\r\n7:富文本\r\n8:单选\r\n9:多选\r\n10:日期\r\n11:时间\r\n12:颜色', '100');
INSERT INTO `kc_config` VALUES ('20', 'config_group_list', '3', '配置分组', '3', '', '配置分组', '1379228036', '1512982406', '1', '1:基础\r\n2:数据\r\n3:系统\r\n4:API', '100');
INSERT INTO `kc_config` VALUES ('25', 'list_rows', '0', '每页数据记录数', '2', '', '数据每页显示记录数', '1379503896', '1507197630', '1', '10', '10');
INSERT INTO `kc_config` VALUES ('29', 'data_backup_part_size', '0', '数据库备份卷大小', '2', '', '该值用于限制压缩后的分卷最大长度。单位：B', '1381482488', '1507197630', '1', '52428800', '7');
INSERT INTO `kc_config` VALUES ('30', 'data_backup_compress', '4', '数据库备份文件是否启用压缩', '2', '0:不压缩\r\n1:启用压缩', '压缩备份文件需要PHP环境支持gzopen,gzwrite函数', '1381713345', '1507197630', '1', '1', '9');
INSERT INTO `kc_config` VALUES ('31', 'data_backup_compress_level', '4', '数据库备份文件压缩级别', '2', '1:普通\r\n4:一般\r\n9:最高', '数据库备份文件的压缩级别，该配置在开启压缩时生效', '1381713408', '1507197630', '1', '9', '10');
INSERT INTO `kc_config` VALUES ('33', 'allow_url', '3', '不受权限验证的url', '3', '', '', '1386644047', '1512982406', '1', '0:file/pictureupload\r\n1:addon/execute', '100');
INSERT INTO `kc_config` VALUES ('43', 'empty_list_describe', '1', '数据列表为空时的描述信息', '2', '', '', '1492278127', '1507197630', '1', 'aOh! 暂时还没有数据~', '0');
INSERT INTO `kc_config` VALUES ('44', 'trash_config', '3', '回收站配置', '3', '', 'key为模型名称，值为显示列。', '1492312698', '1512982406', '1', 'Config:name\r\nAuthGroup:name\r\nMember:nickname\r\nMenu:name\r\nArticle:name\r\nArticleCategory:name\r\nAddon:name\r\nPicture:name\r\nFile:name\r\nActionLog:describe\r\nApi:name\r\nApiGroup:name\r\nBlogroll:name\r\nExeLog:exe_url\r\nSeo:name', '0');
INSERT INTO `kc_config` VALUES ('49', 'static_domain', '1', '静态资源域名', '1', '', '若静态资源为本地资源则此项为空，若为外部资源则为存放静态资源的域名', '1502430387', '1512555314', '1', '', '0');
INSERT INTO `kc_config` VALUES ('52', 'team_developer', '3', '研发团队人员', '4', '', '', '1504236453', '1510894595', '1', '0:Bigotry\r\n1:扫地僧', '0');
INSERT INTO `kc_config` VALUES ('53', 'api_status_option', '3', 'API接口状态', '4', '', '', '1504242433', '1510894595', '1', '0:待研发\r\n1:研发中\r\n2:测试中\r\n3:已完成', '0');
INSERT INTO `kc_config` VALUES ('54', 'api_data_type_option', '3', 'API数据类型', '4', '', '', '1504328208', '1510894595', '1', '0:字符\r\n1:文本\r\n2:数组\r\n3:文件', '0');
INSERT INTO `kc_config` VALUES ('55', 'frontend_theme', '1', '前端主题', '1', '', '', '1504762360', '1512555314', '1', 'default', '0');
INSERT INTO `kc_config` VALUES ('56', 'api_domain', '1', 'API部署域名', '4', '', '', '1504779094', '1510894595', '1', 'https://demo.onebase.org', '0');
INSERT INTO `kc_config` VALUES ('57', 'api_key', '1', 'API加密KEY', '4', '', '泄露后API将存在安全隐患', '1505302112', '1510894595', '1', 'l2V|gfZp{8`;jzR~6Y1_', '0');
INSERT INTO `kc_config` VALUES ('58', 'loading_icon', '4', '页面Loading图标设置', '1', '1:图标1\r\n2:图标2\r\n3:图标3\r\n4:图标4\r\n5:图标5\r\n6:图标6\r\n7:图标7', '页面Loading图标支持7种图标切换', '1505377202', '1512983062', '1', '7', '80');
INSERT INTO `kc_config` VALUES ('59', 'sys_file_field', '3', '文件字段配置', '3', '', 'key为模型名，值为文件列名。', '1505799386', '1512982406', '1', '0_article:file_id', '0');
INSERT INTO `kc_config` VALUES ('60', 'sys_picture_field', '3', '图片字段配置', '3', '', 'key为模型名，值为图片列名。', '1506315422', '1512982406', '1', '0_article:cover_id\r\n1_article:img_ids', '0');
INSERT INTO `kc_config` VALUES ('61', 'jwt_key', '1', 'JWT加密KEY', '4', '', '', '1506748805', '1510894595', '1', 'l2V|DSFXXXgfZp{8`;FjzR~6Y1_', '0');
INSERT INTO `kc_config` VALUES ('64', 'is_write_exe_log', '4', '是否写入执行记录', '3', '0:否\r\n1:是', '', '1510544340', '1512982406', '1', '0', '101');
INSERT INTO `kc_config` VALUES ('65', 'admin_allow_ip', '3', '超级管理员登录IP', '3', '', '后台超级管理员登录IP限制，其他角色不受限。', '1510995580', '1512982406', '1', '0:27.22.112.250', '0');
INSERT INTO `kc_config` VALUES ('66', 'pjax_mode', '8', 'PJAX模式', '3', '0:否\r\n1:是', '若为PJAX模式则浏览器不会刷新，若为常规模式则为AJAX+刷新', '1512370397', '1512982406', '1', '1', '120');

-- ----------------------------
-- Table structure for kc_driver
-- ----------------------------
DROP TABLE IF EXISTS `kc_driver`;
CREATE TABLE `kc_driver` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `service_name` varchar(40) NOT NULL DEFAULT '' COMMENT '服务标识',
  `driver_name` varchar(20) NOT NULL DEFAULT '' COMMENT '驱动标识',
  `config` text NOT NULL COMMENT '配置',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='插件表';

-- ----------------------------
-- Records of kc_driver
-- ----------------------------

-- ----------------------------
-- Table structure for kc_exe_log
-- ----------------------------
DROP TABLE IF EXISTS `kc_exe_log`;
CREATE TABLE `kc_exe_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键自增',
  `ip` char(50) NOT NULL DEFAULT '' COMMENT 'IP地址',
  `exe_url` varchar(2000) NOT NULL DEFAULT '' COMMENT '执行URL',
  `exe_time` float(10,6) unsigned NOT NULL DEFAULT '0.000000' COMMENT '执行时间 单位 秒',
  `exe_memory` char(20) NOT NULL DEFAULT '' COMMENT '内存占用KB',
  `exe_os` char(30) NOT NULL DEFAULT '' COMMENT '操作系统',
  `source_url` varchar(2000) NOT NULL DEFAULT '' COMMENT '来源URL',
  `session_id` char(32) NOT NULL DEFAULT '' COMMENT 'session_id',
  `browser` char(30) NOT NULL DEFAULT '' COMMENT '浏览器',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `login_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '执行者ID',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '类型  0 ： 应用范围 ， 1：API 范围 ',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17222 DEFAULT CHARSET=utf8 COMMENT='执行记录表';

-- ----------------------------
-- Records of kc_exe_log
-- ----------------------------

-- ----------------------------
-- Table structure for kc_file
-- ----------------------------
DROP TABLE IF EXISTS `kc_file`;
CREATE TABLE `kc_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文件ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '原始文件名',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '保存名称',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '远程地址',
  `sha1` char(40) NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文件表';

-- ----------------------------
-- Records of kc_file
-- ----------------------------

-- ----------------------------
-- Table structure for kc_hook
-- ----------------------------
DROP TABLE IF EXISTS `kc_hook`;
CREATE TABLE `kc_hook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(40) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `describe` varchar(255) NOT NULL COMMENT '描述',
  `addon_list` varchar(255) NOT NULL DEFAULT '' COMMENT '钩子挂载的插件 ''，''分割',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='钩子表';

-- ----------------------------
-- Records of kc_hook
-- ----------------------------
INSERT INTO `kc_hook` VALUES ('36', 'File', '文件上传钩子', 'File', '1', '0', '0');
INSERT INTO `kc_hook` VALUES ('37', 'Icon', '图标选择钩子', 'Icon', '1', '0', '0');
INSERT INTO `kc_hook` VALUES ('38', 'ArticleEditor', '富文本编辑器', 'Editor', '1', '0', '0');

-- ----------------------------
-- Table structure for kc_member
-- ----------------------------
DROP TABLE IF EXISTS `kc_member`;
CREATE TABLE `kc_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `nickname` char(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `username` char(16) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '密码',
  `email` char(32) NOT NULL DEFAULT '' COMMENT '用户邮箱',
  `mobile` char(15) NOT NULL DEFAULT '' COMMENT '用户手机',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户状态',
  `leader_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '上级会员ID',
  `is_share_member` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否共享会员',
  `is_inside` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为后台使用者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=967 DEFAULT CHARSET=utf8 COMMENT='会员表';

-- ----------------------------
-- Records of kc_member
-- ----------------------------
INSERT INTO `kc_member` VALUES ('1', 'admin', 'admin', '74835f955972f8cb7a2a74081820114c', '1091092700@qq.com', '18555550710', '1524324385', '1524310041', '1', '0', '0', '1');
INSERT INTO `kc_member` VALUES ('966', 'zhanglaoshi', 'zhanglaoshi', '41a75394a8206d5e1fec4e403d2c8c2d', '12313@qq.com', '', '1524311135', '1524310712', '1', '1', '0', '1');

-- ----------------------------
-- Table structure for kc_menu
-- ----------------------------
DROP TABLE IF EXISTS `kc_menu`;
CREATE TABLE `kc_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文档ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `module` char(20) NOT NULL DEFAULT '' COMMENT '模块',
  `url` char(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `is_hide` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  `icon` char(30) NOT NULL DEFAULT '' COMMENT '图标',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of kc_menu
-- ----------------------------
INSERT INTO `kc_menu` VALUES ('1', '系统首页', '0', '6', 'admin', 'index/index', '0', 'fa-home', '1', '1512371955', '0');
INSERT INTO `kc_menu` VALUES ('16', '会员管理', '0', '3', 'admin', 'member/index', '0', 'fa-users', '1', '1501928389', '0');
INSERT INTO `kc_menu` VALUES ('17', '会员列表', '16', '1', 'admin', 'member/memberlist', '0', 'fa-list', '1', '1495272875', '0');
INSERT INTO `kc_menu` VALUES ('18', '会员添加', '16', '0', 'admin', 'member/memberadd', '0', 'fa-user-plus', '1', '1491837324', '0');
INSERT INTO `kc_menu` VALUES ('27', '权限管理', '16', '0', 'admin', 'auth/grouplist', '0', 'fa-key', '1', '1492000451', '0');
INSERT INTO `kc_menu` VALUES ('32', '权限组编辑', '27', '0', 'admin', 'auth/groupedit', '1', '', '1', '1492002620', '0');
INSERT INTO `kc_menu` VALUES ('34', '授权', '27', '0', 'admin', 'auth_manager/group', '1', '', '1', '0', '0');
INSERT INTO `kc_menu` VALUES ('35', '菜单授权', '27', '0', 'admin', 'auth/menuauth', '1', '', '1', '1492095653', '0');
INSERT INTO `kc_menu` VALUES ('36', '会员授权', '27', '0', 'admin', 'auth_manager/memberaccess', '1', '', '1', '0', '0');
INSERT INTO `kc_menu` VALUES ('68', '系统管理', '0', '4', 'admin', 'config/group', '0', 'fa-wrench', '1', '1501928397', '0');
INSERT INTO `kc_menu` VALUES ('69', '系统设置', '68', '1', 'admin', 'config/setting', '0', 'fa-cogs', '1', '1491748512', '0');
INSERT INTO `kc_menu` VALUES ('70', '配置管理', '68', '4', 'admin', 'config/index', '0', 'fa-cog', '1', '1491668183', '0');
INSERT INTO `kc_menu` VALUES ('71', '配置编辑', '70', '0', 'admin', 'config/configedit', '1', '', '1', '1491674180', '0');
INSERT INTO `kc_menu` VALUES ('72', '配置删除', '70', '0', 'admin', 'config/configDel', '1', '', '1', '1491674201', '0');
INSERT INTO `kc_menu` VALUES ('73', '配置添加', '70', '0', 'admin', 'config/configadd', '0', 'fa-plus', '1', '1491666947', '0');
INSERT INTO `kc_menu` VALUES ('75', '菜单管理', '68', '5', 'admin', 'menu/index', '0', 'fa-th-large', '1', '1491318724', '0');
INSERT INTO `kc_menu` VALUES ('98', '菜单编辑', '75', '0', 'admin', 'menu/menuedit', '1', '', '1', '1512459021', '0');
INSERT INTO `kc_menu` VALUES ('108', '修改密码', '17', '0', 'admin', 'user/update_password', '1', '', '1', '0', '0');
INSERT INTO `kc_menu` VALUES ('109', '修改昵称', '17', '0', 'admin', 'user/update_nickname', '1', '', '1', '1491578211', '0');
INSERT INTO `kc_menu` VALUES ('124', '菜单列表', '75', '0', 'admin', 'menu/menulist', '0', 'fa-list', '1', '1491318271', '0');
INSERT INTO `kc_menu` VALUES ('125', '菜单添加', '75', '0', 'admin', 'menu/menuadd', '0', 'fa-plus', '1', '1491318307', '0');
INSERT INTO `kc_menu` VALUES ('126', '配置列表', '70', '0', 'admin', 'config/configlist', '0', 'fa-list', '1', '1491666890', '1491666890');
INSERT INTO `kc_menu` VALUES ('127', '菜单删除', '75', '0', 'admin', 'menu/menuDel', '1', '', '1', '1491674128', '1491674128');
INSERT INTO `kc_menu` VALUES ('128', '权限组添加', '27', '0', 'admin', 'auth/groupadd', '1', '', '1', '1492002635', '1492002635');
INSERT INTO `kc_menu` VALUES ('134', '授权', '17', '0', 'admin', 'member/memberauth', '1', '', '1', '1492238568', '1492101426');
INSERT INTO `kc_menu` VALUES ('135', '回收站', '68', '0', 'admin', 'trash/trashlist', '0', ' fa-recycle', '1', '1492320214', '1492311462');
INSERT INTO `kc_menu` VALUES ('136', '回收站数据', '135', '0', 'admin', 'trash/trashdatalist', '1', 'fa-database', '1', '1492319477', '1492319392');
INSERT INTO `kc_menu` VALUES ('140', '服务管理', '68', '0', 'admin', 'service/servicelist', '0', 'fa-server', '1', '1492359063', '1492352972');
INSERT INTO `kc_menu` VALUES ('141', '插件管理', '68', '0', 'admin', 'addon/index', '0', 'fa-puzzle-piece', '1', '1492428072', '1492427605');
INSERT INTO `kc_menu` VALUES ('142', '钩子列表', '141', '0', 'admin', 'addon/hooklist', '0', 'fa-anchor', '1', '1492427665', '1492427665');
INSERT INTO `kc_menu` VALUES ('143', '插件列表', '141', '0', 'admin', 'addon/addonlist', '0', 'fa-list', '1', '1492428116', '1492427838');
INSERT INTO `kc_menu` VALUES ('144', '课程管理', '0', '0', 'admin', 'article/index', '0', 'fa-edit', '1', '1501928404', '1492480187');
INSERT INTO `kc_menu` VALUES ('145', '课程列表', '144', '0', 'admin', 'article/articlelist', '0', 'fa-list', '1', '1492480245', '1492480245');
INSERT INTO `kc_menu` VALUES ('146', '课程分类', '144', '0', 'admin', 'article/articlecategorylist', '0', 'fa-list', '1', '1492480359', '1492480342');
INSERT INTO `kc_menu` VALUES ('147', '课程分类编辑', '146', '0', 'admin', 'article/articlecategoryedit', '1', '', '1', '1492485294', '1492485294');
INSERT INTO `kc_menu` VALUES ('148', '分类添加', '144', '0', 'admin', 'article/articlecategoryadd', '0', 'fa-plus', '1', '1492486590', '1492486576');
INSERT INTO `kc_menu` VALUES ('149', '课程添加', '144', '0', 'admin', 'article/articleadd', '0', 'fa-plus', '1', '1492518453', '1492518453');
INSERT INTO `kc_menu` VALUES ('150', '课程编辑', '145', '0', 'admin', 'article/articleedit', '1', '', '1', '1492879589', '1492879589');
INSERT INTO `kc_menu` VALUES ('151', '插件安装', '143', '0', 'admin', 'addon/addoninstall', '1', '', '1', '1492879763', '1492879763');
INSERT INTO `kc_menu` VALUES ('152', '插件卸载', '143', '0', 'admin', 'addon/addonuninstall', '1', '', '1', '1492879789', '1492879789');
INSERT INTO `kc_menu` VALUES ('153', '文章删除', '145', '0', 'admin', 'article/articledel', '1', '', '1', '1492879960', '1492879960');
INSERT INTO `kc_menu` VALUES ('154', '文章分类删除', '146', '0', 'admin', 'article/articlecategorydel', '1', '', '1', '1492879995', '1492879995');
INSERT INTO `kc_menu` VALUES ('156', '驱动安装', '140', '0', 'admin', 'service/driverinstall', '1', '', '1', '1502267009', '1502267009');
INSERT INTO `kc_menu` VALUES ('157', '接口管理', '0', '0', 'admin', 'api/index', '0', 'fa fa-book', '1', '1504000462', '1504000434');
INSERT INTO `kc_menu` VALUES ('158', '分组管理', '157', '0', 'admin', 'api/apigrouplist', '0', 'fa fa-fw fa-th-list', '1', '1504000977', '1504000723');
INSERT INTO `kc_menu` VALUES ('159', '分组添加', '157', '0', 'admin', 'api/apigroupadd', '0', 'fa fa-fw fa-plus', '1', '1504004646', '1504004646');
INSERT INTO `kc_menu` VALUES ('160', '分组编辑', '157', '0', 'admin', 'api/apigroupedit', '1', '', '1', '1504004710', '1504004710');
INSERT INTO `kc_menu` VALUES ('161', '分组删除', '157', '0', 'admin', 'api/apigroupdel', '1', '', '1', '1504004732', '1504004732');
INSERT INTO `kc_menu` VALUES ('162', '接口列表', '157', '0', 'admin', 'api/apilist', '0', 'fa fa-fw fa-th-list', '1', '1504172326', '1504172326');
INSERT INTO `kc_menu` VALUES ('163', '接口添加', '157', '0', 'admin', 'api/apiadd', '0', 'fa fa-fw fa-plus', '1', '1504172352', '1504172352');
INSERT INTO `kc_menu` VALUES ('164', '接口编辑', '157', '0', 'admin', 'api/apiedit', '1', '', '1', '1504172414', '1504172414');
INSERT INTO `kc_menu` VALUES ('165', '接口删除', '157', '0', 'admin', 'api/apidel', '1', '', '1', '1504172435', '1504172435');
INSERT INTO `kc_menu` VALUES ('166', '优化维护', '0', '0', 'admin', 'maintain/index', '0', 'fa-legal', '1', '1509364516', '1505387256');
INSERT INTO `kc_menu` VALUES ('167', 'SEO管理', '166', '0', 'admin', 'seo/seolist', '0', 'fa-list', '1', '1506309608', '1505387303');
INSERT INTO `kc_menu` VALUES ('168', '数据库', '166', '0', 'admin', 'maintain/database', '0', 'fa-database', '1', '1505539670', '1505539394');
INSERT INTO `kc_menu` VALUES ('169', '数据备份', '168', '0', 'admin', 'database/databackup', '0', 'fa-download', '1', '1506309900', '1505539428');
INSERT INTO `kc_menu` VALUES ('170', '数据还原', '168', '0', 'admin', 'database/datarestore', '0', 'fa-exchange', '1', '1506309911', '1505539492');
INSERT INTO `kc_menu` VALUES ('171', '文件清理', '166', '0', 'admin', 'fileclean/cleanlist', '0', 'fa-file', '1', '1506310152', '1505788517');
INSERT INTO `kc_menu` VALUES ('174', '行为日志', '166', '0', 'admin', 'log/loglist', '0', 'fa-street-view', '1', '1507201516', '1507200836');
INSERT INTO `kc_menu` VALUES ('176', '执行记录', '166', '0', 'admin', 'exelog/index', '0', 'fa-list-alt', '1', '1509433351', '1509433351');
INSERT INTO `kc_menu` VALUES ('177', '全局范围', '176', '0', 'admin', 'exelog/applist', '0', 'fa-tags', '1', '1509433570', '1509433570');
INSERT INTO `kc_menu` VALUES ('178', '接口范围', '176', '0', 'admin', 'exelog/apilist', '0', 'fa-tag', '1', '1509433591', '1509433591');
INSERT INTO `kc_menu` VALUES ('198', '统计分析', '0', '0', 'admin', 'statistic/index', '0', 'fa-connectdevelop', '1', '1512638014', '1512638014');
INSERT INTO `kc_menu` VALUES ('199', '权限等级', '198', '0', 'admin', 'statistic/membertree', '0', 'fa-users', '1', '1512638868', '1512638868');
INSERT INTO `kc_menu` VALUES ('200', '浏览器统计', '198', '0', 'admin', 'statistic/performerfacility', '0', 'fa-edge', '1', '1512727672', '1512727672');
INSERT INTO `kc_menu` VALUES ('201', '执行速度', '198', '0', 'admin', 'statistic/exespeed', '0', 'fa-fighter-jet', '1', '1512787226', '1512787226');
INSERT INTO `kc_menu` VALUES ('202', '会员增长', '198', '0', 'admin', 'statistic/membergrowth', '0', 'fa-line-chart', '1', '1512801997', '1512801997');

-- ----------------------------
-- Table structure for kc_picture
-- ----------------------------
DROP TABLE IF EXISTS `kc_picture`;
CREATE TABLE `kc_picture` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id自增',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '图片名称',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '路径',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '图片链接',
  `sha1` char(40) NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='图片表';

-- ----------------------------
-- Records of kc_picture
-- ----------------------------
INSERT INTO `kc_picture` VALUES ('194', '8348e780988f13b951fe1bc9747b512d.jpg', '20180421/8348e780988f13b951fe1bc9747b512d.jpg', '', 'cdb569ecaf2d91a7ca691489a5ec1cbb645c2f3d', '1524324033', '0', '1');
INSERT INTO `kc_picture` VALUES ('195', '4df56ad5069cdf163d4f21adab314a45.jpg', '20180421/4df56ad5069cdf163d4f21adab314a45.jpg', '', 'da09505c0ff90483e6765b2211c48a16f801cccd', '1524324072', '0', '1');

-- ----------------------------
-- Table structure for kc_seo
-- ----------------------------
DROP TABLE IF EXISTS `kc_seo`;
CREATE TABLE `kc_seo` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键自增',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `url` varchar(40) NOT NULL DEFAULT '' COMMENT '模块',
  `seo_title` text NOT NULL COMMENT '标题',
  `seo_keywords` text NOT NULL COMMENT '关键字',
  `seo_description` text NOT NULL COMMENT '描述',
  `usable_val` varchar(255) NOT NULL DEFAULT '' COMMENT '可用变量',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='seo表';

-- ----------------------------
-- Records of kc_seo
-- ----------------------------
INSERT INTO `kc_seo` VALUES ('40', '首页SEO信息', 'index/index/index', 'OneBase 开发架构{$category_name}{$article_title}', 'OneBase,PHP,{$category_name},{$article_title}', '一款基于ThinkPHP5研发的开源免费基础架构，基于OneBase可以快速的研发各类Web应用。{$article_describe}', '{$category_name}，{$article_title}，{$article_describe}', '0', '1', '1505445912', '1505470293');
INSERT INTO `kc_seo` VALUES ('41', 'OneBase-系统登录', 'index/index/login', 'OneBase', 'OneBase', 'OneBase', '', '0', '1', '1505538002', '1505538026');
