/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50528
Source Host           : 127.0.0.1:3306
Source Database       : web

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2017-09-04 15:14:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for abc_menu
-- ----------------------------
DROP TABLE IF EXISTS `abc_menu`;
CREATE TABLE `abc_menu` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) DEFAULT '' COMMENT '类名',
  `category_id` smallint(5) DEFAULT NULL,
  `pid` smallint(5) unsigned DEFAULT NULL COMMENT '父ID',
  `path` varchar(100) DEFAULT '' COMMENT '分类路径',
  `status` tinyint(2) DEFAULT '1' COMMENT '1正常  -1禁用',
  `sort` smallint(5) unsigned DEFAULT '0' COMMENT '排序',
  `url` varchar(50) DEFAULT NULL COMMENT '控制器/方法 ',
  `icon` varchar(32) DEFAULT '' COMMENT '图标',
  `is_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of abc_menu
-- ----------------------------
INSERT INTO `abc_menu` VALUES ('1', '控制台', '0', '0', '0', '1', '0', 'home/index/index', 'icon-dashboard', '1');
INSERT INTO `abc_menu` VALUES ('2', '文字排版', '0', '0', '0', '1', '0', 'home/index/typography', 'icon-text-width', '0');
INSERT INTO `abc_menu` VALUES ('3', 'UI组件', '0', '0', '0,2', '1', '0', '', 'icon-desktop', '0');
INSERT INTO `abc_menu` VALUES ('4', '表格', '0', '0', '0,2', '1', '0', 'Products/mobile', 'icon-list', '0');
INSERT INTO `abc_menu` VALUES ('5', '表单', '0', '0', '0,2', '1', '0', 'Products/soumu', 'icon-edit', '0');
INSERT INTO `abc_menu` VALUES ('6', '插件', '0', '0', '0', '1', '0', 'Case/cases', 'icon-list-alt', '0');
INSERT INTO `abc_menu` VALUES ('7', '日历', '0', '0', '0', '1', '0', 'Message/index', 'icon-calendar', '0');
INSERT INTO `abc_menu` VALUES ('8', '相册', '0', '0', '0,1', '1', '0', 'About/recruit', 'icon-picture', '0');
INSERT INTO `abc_menu` VALUES ('9', '更多页面', '0', '0', '0,1', '1', '0', 'About/index', 'icon-tag', '0');
INSERT INTO `abc_menu` VALUES ('10', '其他页面', '0', '0', '0,1', '1', '0', 'About/partners', 'icon-file-alt', '0');
INSERT INTO `abc_menu` VALUES ('11', '组件', '0', '3', '0', '1', '0', 'home/index/elements', 'icon-double-angle-right', '0');
INSERT INTO `abc_menu` VALUES ('12', '按钮&图表', '0', '3', '0,12', '1', '0', 'home/index/buttons', 'icon-double-angle-right', '0');
INSERT INTO `abc_menu` VALUES ('13', '树菜单', '0', '3', '0,12', '1', '0', 'home/index/treeview', 'icon-double-angle-right', '0');
INSERT INTO `abc_menu` VALUES ('14', 'JQuery UI', '0', '3', '0,12', '1', '0', 'home/index/jquery-ui', 'icon-double-angle-right', '0');
INSERT INTO `abc_menu` VALUES ('15', '可拖拽列表', '0', '3', '', '1', '0', 'home/index/nestable-list', 'icon-double-angle-right', '0');
INSERT INTO `abc_menu` VALUES ('16', '三级菜单', null, '3', '', '1', '0', null, 'icon-double-angle-right', '0');
INSERT INTO `abc_menu` VALUES ('17', '第一级', null, '16', '', '1', '0', null, 'icon-leaf', '0');
INSERT INTO `abc_menu` VALUES ('18', '第四级', null, '16', '', '1', '0', null, 'icon-pencil', '0');
INSERT INTO `abc_menu` VALUES ('19', '简单&动态', null, '4', '', '1', '0', null, 'icon-double-angle-right', '0');
INSERT INTO `abc_menu` VALUES ('20', 'jqGrid plugin', null, '4', '', '1', '0', null, 'icon-double-angle-right', '0');
INSERT INTO `abc_menu` VALUES ('21', '表单组件', null, '5', '', '1', '0', null, 'icon-double-angle-right', '0');
INSERT INTO `abc_menu` VALUES ('22', '向导提示&验证', null, '5', '', '1', '0', null, 'icon-double-angle-right', '0');
INSERT INTO `abc_menu` VALUES ('23', '编辑器', null, '5', '', '1', '0', null, 'icon-double-angle-right', '0');
INSERT INTO `abc_menu` VALUES ('24', '文件上传', null, '5', '', '1', '0', null, 'icon-double-angle-right', '0');
INSERT INTO `abc_menu` VALUES ('25', '用户信息', null, '9', '', '1', '0', null, 'icon-double-angle-right', '0');
INSERT INTO `abc_menu` VALUES ('26', '收件箱', null, '9', '', '1', '0', null, 'icon-double-angle-right', '0');
INSERT INTO `abc_menu` VALUES ('27', '售价单', null, '9', '', '1', '0', null, 'icon-double-angle-right', '0');
INSERT INTO `abc_menu` VALUES ('28', '购物车', null, '9', '', '1', '0', null, 'icon-double-angle-right', '0');
INSERT INTO `abc_menu` VALUES ('29', '时间轴', null, '9', '', '1', '0', null, 'icon-double-angle-right', '0');
INSERT INTO `abc_menu` VALUES ('30', '登录&注册', null, '9', '', '1', '0', null, 'icon-double-angle-right', '0');
INSERT INTO `abc_menu` VALUES ('31', '帮助', null, '10', '', '1', '0', null, 'icon-double-angle-right', '0');
INSERT INTO `abc_menu` VALUES ('32', '404错误页面', null, '10', '', '1', '0', null, 'icon-double-angle-right', '0');
INSERT INTO `abc_menu` VALUES ('33', '500错误页面', null, '10', '', '1', '0', null, 'icon-double-angle-right', '0');
INSERT INTO `abc_menu` VALUES ('34', '网格', null, '10', '', '1', '0', null, 'icon-double-angle-right', '0');
INSERT INTO `abc_menu` VALUES ('35', '空白页', null, '10', '', '1', '0', null, 'icon-double-angle-right', '0');
INSERT INTO `abc_menu` VALUES ('36', '添加商品', null, '18', '', '1', '0', null, '', '0');
INSERT INTO `abc_menu` VALUES ('37', '查看商品', null, '18', '', '1', '0', null, '', '0');
