/*
Navicat MySQL Data Transfer

Source Server         : 192.168.88.128
Source Server Version : 50647
Source Host           : 192.168.88.128:3306
Source Database       : ry-vue

Target Server Type    : MYSQL
Target Server Version : 50647
File Encoding         : 65001

Date: 2020-08-23 23:37:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('1', 'sys_job', '定时任务调度表', 'SysJob', 'crud', 'com.ruoyi.project.system', 'system', 'job', '定时任务调度', 'ruoyi', null, 'admin', '2020-03-01 16:38:06', '', null, null);
INSERT INTO `gen_table` VALUES ('3', 't_resource_list', '资源信息表', 'ResourceList', 'crud', 'com.ruoyi.project.taowd', 'taowd', 'list', '资源信息', 'taoweidong', '{}', 'admin', '2020-08-23 12:35:40', '', '2020-08-23 22:43:04', '资源信息列表');

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES ('1', '1', 'job_id', '任务ID', 'bigint(20)', 'Long', 'jobId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2020-03-01 16:38:06', '', null);
INSERT INTO `gen_table_column` VALUES ('2', '1', 'job_name', '任务名称', 'varchar(64)', 'String', 'jobName', '1', '0', null, '1', null, null, null, 'LIKE', 'input', '', '2', 'admin', '2020-03-01 16:38:06', '', null);
INSERT INTO `gen_table_column` VALUES ('3', '1', 'job_group', '任务组名', 'varchar(64)', 'String', 'jobGroup', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '3', 'admin', '2020-03-01 16:38:06', '', null);
INSERT INTO `gen_table_column` VALUES ('4', '1', 'invoke_target', '调用目标字符串', 'varchar(500)', 'String', 'invokeTarget', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', '4', 'admin', '2020-03-01 16:38:06', '', null);
INSERT INTO `gen_table_column` VALUES ('5', '1', 'cron_expression', 'cron执行表达式', 'varchar(255)', 'String', 'cronExpression', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2020-03-01 16:38:06', '', null);
INSERT INTO `gen_table_column` VALUES ('6', '1', 'misfire_policy', '计划执行错误策略（1立即执行 2执行一次 3放弃执行）', 'varchar(20)', 'String', 'misfirePolicy', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2020-03-01 16:38:06', '', null);
INSERT INTO `gen_table_column` VALUES ('7', '1', 'concurrent', '是否并发执行（0允许 1禁止）', 'char(1)', 'String', 'concurrent', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', 'admin', '2020-03-01 16:38:06', '', null);
INSERT INTO `gen_table_column` VALUES ('8', '1', 'status', '状态（0正常 1暂停）', 'char(1)', 'String', 'status', '0', '0', null, '1', '1', '1', '1', 'EQ', 'radio', '', '8', 'admin', '2020-03-01 16:38:06', '', null);
INSERT INTO `gen_table_column` VALUES ('9', '1', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '9', 'admin', '2020-03-01 16:38:06', '', null);
INSERT INTO `gen_table_column` VALUES ('10', '1', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '10', 'admin', '2020-03-01 16:38:06', '', null);
INSERT INTO `gen_table_column` VALUES ('11', '1', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '11', 'admin', '2020-03-01 16:38:06', '', null);
INSERT INTO `gen_table_column` VALUES ('12', '1', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '12', 'admin', '2020-03-01 16:38:06', '', null);
INSERT INTO `gen_table_column` VALUES ('13', '1', 'remark', '备注信息', 'varchar(500)', 'String', 'remark', '0', '0', null, '1', '1', '1', null, 'EQ', 'textarea', '', '13', 'admin', '2020-03-01 16:38:06', '', null);
INSERT INTO `gen_table_column` VALUES ('21', '3', 'id', '唯一标志', 'int(11)', 'Long', 'id', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2020-08-23 12:35:40', '', '2020-08-23 22:43:04');
INSERT INTO `gen_table_column` VALUES ('22', '3', 'ip', '环境IP', 'varchar(255)', 'String', 'ip', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2020-08-23 12:35:40', '', '2020-08-23 22:43:04');
INSERT INTO `gen_table_column` VALUES ('23', '3', 'type', '环境分类', 'varchar(255)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'env_type', '3', 'admin', '2020-08-23 12:35:40', '', '2020-08-23 22:43:04');
INSERT INTO `gen_table_column` VALUES ('24', '3', 'status', '状态', 'varchar(255)', 'String', 'status', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'env_status', '4', 'admin', '2020-08-23 12:35:40', '', '2020-08-23 22:43:04');
INSERT INTO `gen_table_column` VALUES ('25', '3', 'creater', '创建人', 'varchar(255)', 'String', 'creater', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2020-08-23 12:35:40', '', '2020-08-23 22:43:04');
INSERT INTO `gen_table_column` VALUES ('26', '3', 'createTime', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', '1', '1', null, 'EQ', 'datetime', '', '6', 'admin', '2020-08-23 12:35:40', '', '2020-08-23 22:43:04');
INSERT INTO `gen_table_column` VALUES ('27', '3', 'updateTime', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', '1', null, 'EQ', 'datetime', '', '7', 'admin', '2020-08-23 12:35:40', '', '2020-08-23 22:43:04');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '深色主题theme-dark，浅色主题theme-light');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '若依科技', '0', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('101', '100', '0,100', '深圳总公司', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('102', '100', '0,100', '长沙分公司', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('103', '101', '0,100,101', '研发部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('104', '101', '0,100,101', '市场部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('105', '101', '0,100,101', '测试部门', '3', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('106', '101', '0,100,101', '财务部门', '4', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('107', '101', '0,100,101', '运维部门', '5', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('108', '102', '0,100,102', '市场部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('109', '102', '0,100,102', '财务部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES ('19', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES ('20', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES ('21', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES ('22', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES ('23', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES ('24', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES ('25', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES ('26', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES ('27', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('28', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('29', '0', '通讯', '通讯', 'env_type', null, null, 'N', '0', 'admin', '2020-08-23 22:33:38', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('30', '1', '传输', '传输', 'env_type', null, null, 'N', '0', 'admin', '2020-08-23 22:33:47', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('31', '0', '正常', '正常', 'env_status', null, null, 'N', '0', 'admin', '2020-08-23 22:35:05', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('32', '1', '借用', '借用', 'env_status', null, null, 'N', '0', 'admin', '2020-08-23 22:35:16', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('33', '2', '停用', '停用', 'env_status', null, null, 'N', '0', 'admin', '2020-08-23 22:35:26', '', null, null);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表');
INSERT INTO `sys_dict_type` VALUES ('11', '环境类型', 'env_type', '0', 'admin', '2020-08-23 22:33:03', 'admin', '2020-08-23 22:33:15', '环境类型');
INSERT INTO `sys_dict_type` VALUES ('12', '环境状态', 'env_status', '0', 'admin', '2020-08-23 22:34:49', '', null, null);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES ('2', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES ('3', '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('100', 'admin', '127.0.0.1', '内网IP', 'Firefox 7', 'Windows 10', '1', '验证码错误', '2020-02-12 15:56:20');
INSERT INTO `sys_logininfor` VALUES ('101', 'admin', '127.0.0.1', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-02-12 15:56:27');
INSERT INTO `sys_logininfor` VALUES ('102', 'admin', '127.0.0.1', '内网IP', 'Firefox 7', 'Windows 10', '0', '退出成功', '2020-02-12 16:12:43');
INSERT INTO `sys_logininfor` VALUES ('103', 'test', '127.0.0.1', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-02-12 16:12:55');
INSERT INTO `sys_logininfor` VALUES ('104', 'admin', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-03-01 16:11:14');
INSERT INTO `sys_logininfor` VALUES ('105', 'admin', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '1', '验证码错误', '2020-03-01 16:13:33');
INSERT INTO `sys_logininfor` VALUES ('106', 'admin', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-03-01 16:13:44');
INSERT INTO `sys_logininfor` VALUES ('107', 'admin', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-08-22 23:20:15');
INSERT INTO `sys_logininfor` VALUES ('108', 'admin', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '退出成功', '2020-08-22 23:24:29');
INSERT INTO `sys_logininfor` VALUES ('109', 'admin', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-08-22 23:28:57');
INSERT INTO `sys_logininfor` VALUES ('110', null, '127.0.0.1', '内网IP', 'Firefox 7', 'Windows 10', '1', '验证码已失效', '2020-08-23 00:05:31');
INSERT INTO `sys_logininfor` VALUES ('111', 'admin', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-08-23 12:13:50');
INSERT INTO `sys_logininfor` VALUES ('112', 'admin', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-08-23 12:34:51');
INSERT INTO `sys_logininfor` VALUES ('113', 'admin', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-08-23 12:48:57');
INSERT INTO `sys_logininfor` VALUES ('114', 'admin', '127.0.0.1', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-08-23 13:00:04');
INSERT INTO `sys_logininfor` VALUES ('115', 'admin', '192.168.1.103', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-08-23 13:05:03');
INSERT INTO `sys_logininfor` VALUES ('116', 'admin', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-08-23 13:32:09');
INSERT INTO `sys_logininfor` VALUES ('117', 'admin', '127.0.0.1', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-08-23 13:32:29');
INSERT INTO `sys_logininfor` VALUES ('118', 'admin', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-08-23 14:19:58');
INSERT INTO `sys_logininfor` VALUES ('119', 'admin', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-08-23 14:26:05');
INSERT INTO `sys_logininfor` VALUES ('120', 'admin', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-08-23 14:27:16');
INSERT INTO `sys_logininfor` VALUES ('121', 'admin', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '1', '验证码错误', '2020-08-23 22:07:50');
INSERT INTO `sys_logininfor` VALUES ('122', 'admin', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-08-23 22:07:57');
INSERT INTO `sys_logininfor` VALUES ('123', 'admin', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-08-23 22:10:21');
INSERT INTO `sys_logininfor` VALUES ('124', 'admin', '192.168.1.103', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-08-23 22:11:38');
INSERT INTO `sys_logininfor` VALUES ('125', 'admin', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-08-23 22:15:22');
INSERT INTO `sys_logininfor` VALUES ('126', 'admin', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '退出成功', '2020-08-23 22:47:22');
INSERT INTO `sys_logininfor` VALUES ('127', 'test', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-08-23 22:47:32');
INSERT INTO `sys_logininfor` VALUES ('128', 'test', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '退出成功', '2020-08-23 22:48:27');
INSERT INTO `sys_logininfor` VALUES ('129', 'admin', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-08-23 22:48:35');
INSERT INTO `sys_logininfor` VALUES ('130', 'admin', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '退出成功', '2020-08-23 22:50:11');
INSERT INTO `sys_logininfor` VALUES ('131', 'admin', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-08-23 22:50:23');
INSERT INTO `sys_logininfor` VALUES ('132', 'admin', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '退出成功', '2020-08-23 22:50:30');
INSERT INTO `sys_logininfor` VALUES ('133', 'test', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-08-23 22:50:40');
INSERT INTO `sys_logininfor` VALUES ('134', 'test', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '退出成功', '2020-08-23 22:57:23');
INSERT INTO `sys_logininfor` VALUES ('135', 'admin', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-08-23 22:57:32');
INSERT INTO `sys_logininfor` VALUES ('136', 'admin', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '退出成功', '2020-08-23 22:58:06');
INSERT INTO `sys_logininfor` VALUES ('137', 'test', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-08-23 22:58:22');
INSERT INTO `sys_logininfor` VALUES ('138', 'test', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '退出成功', '2020-08-23 23:00:59');
INSERT INTO `sys_logininfor` VALUES ('139', 'admin', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-08-23 23:01:08');
INSERT INTO `sys_logininfor` VALUES ('140', 'admin', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '退出成功', '2020-08-23 23:02:07');
INSERT INTO `sys_logininfor` VALUES ('141', 'test', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-08-23 23:02:25');
INSERT INTO `sys_logininfor` VALUES ('142', 'test', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '退出成功', '2020-08-23 23:03:17');
INSERT INTO `sys_logininfor` VALUES ('143', 'test', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-08-23 23:03:25');
INSERT INTO `sys_logininfor` VALUES ('144', 'test', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '退出成功', '2020-08-23 23:03:30');
INSERT INTO `sys_logininfor` VALUES ('145', 'admin', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-08-23 23:03:41');
INSERT INTO `sys_logininfor` VALUES ('146', 'admin', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '退出成功', '2020-08-23 23:07:00');
INSERT INTO `sys_logininfor` VALUES ('147', 'test', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-08-23 23:07:06');
INSERT INTO `sys_logininfor` VALUES ('148', 'test', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '退出成功', '2020-08-23 23:09:36');
INSERT INTO `sys_logininfor` VALUES ('149', 'admin', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-08-23 23:09:48');
INSERT INTO `sys_logininfor` VALUES ('150', 'admin', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '退出成功', '2020-08-23 23:10:21');
INSERT INTO `sys_logininfor` VALUES ('151', 'test', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '1', '验证码错误', '2020-08-23 23:10:28');
INSERT INTO `sys_logininfor` VALUES ('152', 'test', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-08-23 23:10:35');
INSERT INTO `sys_logininfor` VALUES ('153', 'test', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '退出成功', '2020-08-23 23:11:06');
INSERT INTO `sys_logininfor` VALUES ('154', 'admin', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-08-23 23:11:17');
INSERT INTO `sys_logininfor` VALUES ('155', 'admin', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '退出成功', '2020-08-23 23:24:46');
INSERT INTO `sys_logininfor` VALUES ('156', 'test', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-08-23 23:25:04');
INSERT INTO `sys_logininfor` VALUES ('157', 'test', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '退出成功', '2020-08-23 23:27:42');
INSERT INTO `sys_logininfor` VALUES ('158', 'test', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-08-23 23:27:48');
INSERT INTO `sys_logininfor` VALUES ('159', 'test', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '退出成功', '2020-08-23 23:27:57');
INSERT INTO `sys_logininfor` VALUES ('160', 'admin', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-08-23 23:28:18');
INSERT INTO `sys_logininfor` VALUES ('161', 'admin', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '退出成功', '2020-08-23 23:29:06');
INSERT INTO `sys_logininfor` VALUES ('162', 'test', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-08-23 23:29:11');
INSERT INTO `sys_logininfor` VALUES ('163', 'test', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '退出成功', '2020-08-23 23:29:32');
INSERT INTO `sys_logininfor` VALUES ('164', 'test', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '1', '验证码错误', '2020-08-23 23:30:56');
INSERT INTO `sys_logininfor` VALUES ('165', 'test', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '1', '验证码错误', '2020-08-23 23:31:03');
INSERT INTO `sys_logininfor` VALUES ('166', 'test', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '1', '验证码错误', '2020-08-23 23:31:13');
INSERT INTO `sys_logininfor` VALUES ('167', 'test', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-08-23 23:31:19');
INSERT INTO `sys_logininfor` VALUES ('168', 'test', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '退出成功', '2020-08-23 23:33:38');
INSERT INTO `sys_logininfor` VALUES ('169', 'admin', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '1', '用户不存在/密码错误', '2020-08-23 23:33:48');
INSERT INTO `sys_logininfor` VALUES ('170', 'admin', '192.168.1.103', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-08-23 23:33:59');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `is_frame` int(1) DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1066 DEFAULT CHARSET=utf8mb4 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '1', 'system', null, '1', 'M', '0', '', 'system', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '2', 'monitor', null, '1', 'M', '0', '', 'monitor', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '3', 'tool', null, '1', 'M', '0', '', 'tool', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统工具目录');
INSERT INTO `sys_menu` VALUES ('4', 'GitHub', '0', '4', 'http://www.taoweidong.com/', null, '0', 'M', '1', '', 'guide', 'admin', '2018-03-16 11:33:00', 'admin', '2020-08-23 12:46:37', '若依官网地址');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', 'user', 'system/user/index', '1', 'C', '0', 'system:user:list', 'user', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', 'role', 'system/role/index', '1', 'C', '0', 'system:role:list', 'peoples', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '4', 'menu', 'system/menu/index', '1', 'C', '0', 'system:menu:list', 'tree-table', 'admin', '2018-03-16 11:33:00', 'admin', '2020-03-01 16:59:28', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', '3', 'dept', 'system/dept/index', '1', 'C', '0', 'system:dept:list', 'tree', 'admin', '2018-03-16 11:33:00', 'admin', '2020-03-01 16:59:19', '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', 'post', 'system/post/index', '1', 'C', '0', 'system:post:list', 'post', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', 'dict', 'system/dict/index', '1', 'C', '0', 'system:dict:list', 'dict', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', 'config', 'system/config/index', '1', 'C', '0', 'system:config:list', 'edit', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', 'notice', 'system/notice/index', '1', 'C', '0', 'system:notice:list', 'message', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', 'log', 'system/log/index', '1', 'M', '0', '', 'log', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '1', 'online', 'monitor/online/index', '1', 'C', '0', 'monitor:online:list', 'online', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('110', '定时任务', '2', '2', 'job', 'monitor/job/index', '1', 'C', '0', 'monitor:job:list', 'job', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '定时任务菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', 'druid', 'monitor/druid/index', '1', 'C', '0', 'monitor:druid:list', 'druid', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '4', 'server', 'monitor/server/index', '1', 'C', '0', 'monitor:server:list', 'server', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '表单构建', '3', '1', 'build', 'tool/build/index', '1', 'C', '0', 'tool:build:list', 'build', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('114', '代码生成', '3', '2', 'gen', 'tool/gen/index', '1', 'C', '0', 'tool:gen:list', 'code', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('115', '系统接口', '3', '3', 'swagger', 'tool/swagger/index', '1', 'C', '0', 'tool:swagger:list', 'swagger', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', 'operlog', 'monitor/operlog/index', '1', 'C', '0', 'monitor:operlog:list', 'form', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', 'logininfor', 'monitor/logininfor/index', '1', 'C', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1001', '用户查询', '100', '1', '', '', '1', 'F', '0', 'system:user:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1002', '用户新增', '100', '2', '', '', '1', 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1003', '用户修改', '100', '3', '', '', '1', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1004', '用户删除', '100', '4', '', '', '1', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导出', '100', '5', '', '', '1', 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1006', '用户导入', '100', '6', '', '', '1', 'F', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1007', '重置密码', '100', '7', '', '', '1', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1008', '角色查询', '101', '1', '', '', '1', 'F', '0', 'system:role:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1009', '角色新增', '101', '2', '', '', '1', 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1010', '角色修改', '101', '3', '', '', '1', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1011', '角色删除', '101', '4', '', '', '1', 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1012', '角色导出', '101', '5', '', '', '1', 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单查询', '102', '1', '', '', '1', 'F', '0', 'system:menu:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单新增', '102', '2', '', '', '1', 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单修改', '102', '3', '', '', '1', 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1016', '菜单删除', '102', '4', '', '', '1', 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1017', '部门查询', '103', '1', '', '', '1', 'F', '0', 'system:dept:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1018', '部门新增', '103', '2', '', '', '1', 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1019', '部门修改', '103', '3', '', '', '1', 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1020', '部门删除', '103', '4', '', '', '1', 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位查询', '104', '1', '', '', '1', 'F', '0', 'system:post:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位新增', '104', '2', '', '', '1', 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位修改', '104', '3', '', '', '1', 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位删除', '104', '4', '', '', '1', 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1025', '岗位导出', '104', '5', '', '', '1', 'F', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1026', '字典查询', '105', '1', '#', '', '1', 'F', '0', 'system:dict:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1027', '字典新增', '105', '2', '#', '', '1', 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1028', '字典修改', '105', '3', '#', '', '1', 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1029', '字典删除', '105', '4', '#', '', '1', 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1030', '字典导出', '105', '5', '#', '', '1', 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1031', '参数查询', '106', '1', '#', '', '1', 'F', '0', 'system:config:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1032', '参数新增', '106', '2', '#', '', '1', 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1033', '参数修改', '106', '3', '#', '', '1', 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1034', '参数删除', '106', '4', '#', '', '1', 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1035', '参数导出', '106', '5', '#', '', '1', 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1036', '公告查询', '107', '1', '#', '', '1', 'F', '0', 'system:notice:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1037', '公告新增', '107', '2', '#', '', '1', 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1038', '公告修改', '107', '3', '#', '', '1', 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1039', '公告删除', '107', '4', '#', '', '1', 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1040', '操作查询', '500', '1', '#', '', '1', 'F', '0', 'monitor:operlog:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1041', '操作删除', '500', '2', '#', '', '1', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1042', '日志导出', '500', '4', '#', '', '1', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1043', '登录查询', '501', '1', '#', '', '1', 'F', '0', 'monitor:logininfor:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1044', '登录删除', '501', '2', '#', '', '1', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1045', '日志导出', '501', '3', '#', '', '1', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1046', '在线查询', '109', '1', '#', '', '1', 'F', '0', 'monitor:online:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1047', '批量强退', '109', '2', '#', '', '1', 'F', '0', 'monitor:online:batchLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1048', '单条强退', '109', '3', '#', '', '1', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1049', '任务查询', '110', '1', '#', '', '1', 'F', '0', 'monitor:job:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1050', '任务新增', '110', '2', '#', '', '1', 'F', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1051', '任务修改', '110', '3', '#', '', '1', 'F', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1052', '任务删除', '110', '4', '#', '', '1', 'F', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1053', '状态修改', '110', '5', '#', '', '1', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1054', '任务导出', '110', '7', '#', '', '1', 'F', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1055', '生成查询', '114', '1', '#', '', '1', 'F', '0', 'tool:gen:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1056', '生成修改', '114', '2', '#', '', '1', 'F', '0', 'tool:gen:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1057', '生成删除', '114', '3', '#', '', '1', 'F', '0', 'tool:gen:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1058', '导入代码', '114', '2', '#', '', '1', 'F', '0', 'tool:gen:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1059', '预览代码', '114', '4', '#', '', '1', 'F', '0', 'tool:gen:preview', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1060', '生成代码', '114', '5', '#', '', '1', 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1061', '资源管理', '0', '3', 'taowd', null, '1', 'M', '0', '', 'international', 'admin', '2020-08-23 12:41:47', 'admin', '2020-08-23 22:25:38', '');
INSERT INTO `sys_menu` VALUES ('1062', '环境管理', '1061', '0', 'list', 'taowd/list', '1', 'C', '0', 'taowd:list:list', 'eye-open', 'admin', '2020-08-23 12:42:37', 'admin', '2020-08-23 22:58:02', '');
INSERT INTO `sys_menu` VALUES ('1063', '新增环境', '1062', '0', '', null, '1', 'F', '0', 'taowd:list:add', '#', 'admin', '2020-08-23 23:06:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1064', '状态修改', '1062', '1', '', null, '1', 'F', '0', 'taowd:list:edit', '#', 'admin', '2020-08-23 23:24:30', '', null, '');
INSERT INTO `sys_menu` VALUES ('1065', '环境查询', '1062', '2', '', null, '1', 'F', '0', 'taowd:list:query', '#', 'admin', '2020-08-23 23:28:50', '', null, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_notice` VALUES ('2', '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('100', '角色管理', '5', 'com.ruoyi.project.system.controller.SysRoleController.export()', 'GET', '1', 'admin', null, '/system/role/export', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"be055a5c-f16e-4a83-a8c3-47734e7ece61_角色数据.xlsx\",\"code\":200}', '0', null, '2020-02-12 16:08:11');
INSERT INTO `sys_oper_log` VALUES ('101', '用户管理', '1', 'com.ruoyi.project.system.controller.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"15769229466\",\"admin\":false,\"remark\":\"测试用户\",\"password\":\"$2a$10$9DIkxd333Ej1zlDsVKlXTuG03cV1apBxR.WJ0Sowf19d7WsNkPXNC\",\"postIds\":[4],\"nickName\":\"测试\",\"sex\":\"0\",\"deptId\":103,\"params\":{},\"userName\":\"test\",\"userId\":100,\"createBy\":\"admin\",\"roleIds\":[2],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-02-12 16:12:30');
INSERT INTO `sys_oper_log` VALUES ('102', '在线用户', '3', 'com.ruoyi.project.monitor.controller.SysUserOnlineController.forceLogout()', 'DELETE', '1', null, null, '/monitor/online/5cd0aed0-a0d6-4c57-9df8-2a799036d35c', '192.168.1.103', '内网IP', '{tokenId=5cd0aed0-a0d6-4c57-9df8-2a799036d35c}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-03-01 16:13:20');
INSERT INTO `sys_oper_log` VALUES ('103', '用户管理', '2', 'com.ruoyi.project.system.controller.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '192.168.1.103', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1521171180000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@qq.com\",\"nickName\":\"若依\",\"sex\":\"1\",\"deptId\":106,\"avatar\":\"\",\"dept\":{\"deptName\":\"测试部门\",\"leader\":\"若依\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"ry\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1521171180000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-03-01 16:15:46');
INSERT INTO `sys_oper_log` VALUES ('104', '用户头像', '2', 'com.ruoyi.project.system.controller.SysProfileController.avatar()', 'POST', '1', 'admin', null, '/system/user/profile/avatar', '192.168.1.103', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2020/03/01/e18b953ca4119aa7b999d5e97a4d7983.jpeg\",\"code\":200}', '0', null, '2020-03-01 16:29:41');
INSERT INTO `sys_oper_log` VALUES ('105', '个人信息', '2', 'com.ruoyi.project.system.controller.SysProfileController.updateProfile()', 'PUT', '1', 'admin', null, '/system/user/profile', '192.168.1.103', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"status\":\"0\"}],\"phonenumber\":\"15769661234\",\"admin\":true,\"loginDate\":1521171180000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2\",\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"Taowd\",\"sex\":\"1\",\"deptId\":103,\"avatar\":\"/profile/avatar/2020/03/01/e18b953ca4119aa7b999d5e97a4d7983.jpeg\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1521171180000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-03-01 16:32:47');
INSERT INTO `sys_oper_log` VALUES ('106', '个人信息', '2', 'com.ruoyi.project.system.controller.SysProfileController.updateProfile()', 'PUT', '1', 'admin', null, '/system/user/profile', '192.168.1.103', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"status\":\"0\"}],\"phonenumber\":\"15769661234\",\"admin\":true,\"loginDate\":1521171180000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2\",\"loginIp\":\"127.0.0.1\",\"email\":\"taowd@outlook.com\",\"nickName\":\"Taowd\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"/profile/avatar/2020/03/01/e18b953ca4119aa7b999d5e97a4d7983.jpeg\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1521171180000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-03-01 16:32:58');
INSERT INTO `sys_oper_log` VALUES ('107', '用户管理', '2', 'com.ruoyi.project.system.controller.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '192.168.1.103', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"status\":\"0\"}],\"phonenumber\":\"15769661234\",\"admin\":true,\"loginDate\":1521171180000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"taowd@outlook.com\",\"nickName\":\"Taowd\",\"sex\":\"0\",\"deptId\":101,\"avatar\":\"/profile/avatar/2020/03/01/e18b953ca4119aa7b999d5e97a4d7983.jpeg\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1521171180000,\"status\":\"0\"}', 'null', '1', '不允许操作超级管理员用户', '2020-03-01 16:33:23');
INSERT INTO `sys_oper_log` VALUES ('108', '用户管理', '2', 'com.ruoyi.project.system.controller.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '192.168.1.103', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"status\":\"0\"}],\"phonenumber\":\"15769661234\",\"admin\":true,\"loginDate\":1521171180000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"taowd@outlook.com\",\"nickName\":\"Taowd\",\"sex\":\"0\",\"deptId\":101,\"avatar\":\"/profile/avatar/2020/03/01/e18b953ca4119aa7b999d5e97a4d7983.jpeg\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1521171180000,\"status\":\"0\"}', 'null', '1', '不允许操作超级管理员用户', '2020-03-01 16:33:29');
INSERT INTO `sys_oper_log` VALUES ('109', '用户管理', '2', 'com.ruoyi.project.system.controller.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '192.168.1.103', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"status\":\"0\"}],\"phonenumber\":\"15769661234\",\"admin\":true,\"loginDate\":1521171180000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"taowd@outlook.com\",\"nickName\":\"Taowd\",\"sex\":\"0\",\"deptId\":101,\"avatar\":\"/profile/avatar/2020/03/01/e18b953ca4119aa7b999d5e97a4d7983.jpeg\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1521171180000,\"status\":\"0\"}', 'null', '1', '不允许操作超级管理员用户', '2020-03-01 16:33:32');
INSERT INTO `sys_oper_log` VALUES ('110', '用户管理', '2', 'com.ruoyi.project.system.controller.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '192.168.1.103', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"status\":\"0\"}],\"phonenumber\":\"15769661234\",\"admin\":true,\"loginDate\":1521171180000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"taowd@outlook.com\",\"nickName\":\"Taowd\",\"sex\":\"0\",\"deptId\":101,\"avatar\":\"/profile/avatar/2020/03/01/e18b953ca4119aa7b999d5e97a4d7983.jpeg\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1521171180000,\"status\":\"0\"}', 'null', '1', '不允许操作超级管理员用户', '2020-03-01 16:33:33');
INSERT INTO `sys_oper_log` VALUES ('111', '用户管理', '2', 'com.ruoyi.project.system.controller.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '192.168.1.103', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"status\":\"0\"}],\"phonenumber\":\"15769661234\",\"admin\":true,\"loginDate\":1521171180000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"taowd@outlook.com\",\"nickName\":\"Taowd\",\"sex\":\"0\",\"deptId\":101,\"avatar\":\"/profile/avatar/2020/03/01/e18b953ca4119aa7b999d5e97a4d7983.jpeg\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1521171180000,\"status\":\"0\"}', 'null', '1', '不允许操作超级管理员用户', '2020-03-01 16:33:33');
INSERT INTO `sys_oper_log` VALUES ('112', '用户管理', '2', 'com.ruoyi.project.system.controller.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '192.168.1.103', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"status\":\"0\"}],\"phonenumber\":\"15769661234\",\"admin\":true,\"loginDate\":1521171180000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"taowd@outlook.com\",\"nickName\":\"Taowd\",\"sex\":\"0\",\"deptId\":101,\"avatar\":\"/profile/avatar/2020/03/01/e18b953ca4119aa7b999d5e97a4d7983.jpeg\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1521171180000,\"status\":\"0\"}', 'null', '1', '不允许操作超级管理员用户', '2020-03-01 16:33:34');
INSERT INTO `sys_oper_log` VALUES ('113', '菜单管理', '2', 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '192.168.1.103', '内网IP', '{\"visible\":\"1\",\"icon\":\"guide\",\"orderNum\":\"4\",\"menuName\":\"若依官网\",\"params\":{},\"parentId\":0,\"path\":\"http://ruoyi.vip\",\"children\":[],\"createTime\":1521171180000,\"updateBy\":\"admin\",\"isFrame\":\"0\",\"menuId\":4,\"menuType\":\"M\",\"perms\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-03-01 16:35:17');
INSERT INTO `sys_oper_log` VALUES ('114', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '192.168.1.103', '内网IP', 'sys_job', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-03-01 16:38:06');
INSERT INTO `sys_oper_log` VALUES ('115', '菜单管理', '2', 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '192.168.1.103', '内网IP', '{\"visible\":\"0\",\"icon\":\"tree\",\"orderNum\":\"3\",\"menuName\":\"部门管理\",\"params\":{},\"parentId\":1,\"path\":\"dept\",\"component\":\"system/dept/index\",\"children\":[],\"createTime\":1521171180000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":103,\"menuType\":\"C\",\"perms\":\"system:dept:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-03-01 16:59:19');
INSERT INTO `sys_oper_log` VALUES ('116', '菜单管理', '2', 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '192.168.1.103', '内网IP', '{\"visible\":\"0\",\"icon\":\"tree-table\",\"orderNum\":\"4\",\"menuName\":\"菜单管理\",\"params\":{},\"parentId\":1,\"path\":\"menu\",\"component\":\"system/menu/index\",\"children\":[],\"createTime\":1521171180000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":102,\"menuType\":\"C\",\"perms\":\"system:menu:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-03-01 16:59:28');
INSERT INTO `sys_oper_log` VALUES ('117', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '192.168.1.103', '内网IP', 't_resource_list', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 12:26:52');
INSERT INTO `sys_oper_log` VALUES ('118', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '192.168.1.103', '内网IP', '{}', 'null', '0', null, '2020-08-23 12:27:45');
INSERT INTO `sys_oper_log` VALUES ('119', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '192.168.1.103', '内网IP', '{}', 'null', '0', null, '2020-08-23 12:35:04');
INSERT INTO `sys_oper_log` VALUES ('120', '代码生成', '3', 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/2', '192.168.1.103', '内网IP', '{tableIds=2}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 12:35:31');
INSERT INTO `sys_oper_log` VALUES ('121', '代码生成', '6', 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '192.168.1.103', '内网IP', 't_resource_list', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 12:35:40');
INSERT INTO `sys_oper_log` VALUES ('122', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '192.168.1.103', '内网IP', '{\"functionAuthor\":\"taoweidong\",\"columns\":[{\"usableColumn\":false,\"columnId\":21,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1598157340000,\"tableId\":3,\"pk\":true,\"columnName\":\"id\"},{\"usableColumn\":false,\"columnId\":22,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"ip\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"环境IP\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1598157340000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"ip\"},{\"usableColumn\":false,\"columnId\":23,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"type\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"环境分类(传输/通讯)\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1598157340000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"type\"},{\"usableColumn\":false,\"columnId\":24,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"status\",\"htmlType\":\"radio\",\"edit\":true,\"query\":true,\"columnComment\":\"状态(正常/借用/停用)\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1598157340000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"status\"},{\"usableColumn\":false,\"columnId\":25,\"isIncrement\":', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 12:36:11');
INSERT INTO `sys_oper_log` VALUES ('123', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '192.168.1.103', '内网IP', '{\"functionAuthor\":\"taoweidong\",\"columns\":[{\"usableColumn\":false,\"columnId\":21,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"updateTime\":1598157371000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1598157340000,\"tableId\":3,\"pk\":true,\"columnName\":\"id\"},{\"usableColumn\":false,\"columnId\":22,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"ip\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"环境IP\",\"isQuery\":\"1\",\"updateTime\":1598157371000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1598157340000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"ip\"},{\"usableColumn\":false,\"columnId\":23,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"type\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"环境分类(传输/通讯)\",\"isQuery\":\"1\",\"updateTime\":1598157371000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1598157340000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"type\"},{\"usableColumn\":false,\"columnId\":24,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"status\",\"htmlType\":\"radio\",\"edit\":true,\"query\":true,\"columnComment\":\"状态(正常/借用/停用)\",\"isQuery\":\"1\",\"updateTime\":1598157371000,\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1598157340000,\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 12:36:57');
INSERT INTO `sys_oper_log` VALUES ('124', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '192.168.1.103', '内网IP', '{}', 'null', '0', null, '2020-08-23 12:37:11');
INSERT INTO `sys_oper_log` VALUES ('125', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '192.168.1.103', '内网IP', '{\"functionAuthor\":\"taoweidong\",\"columns\":[{\"usableColumn\":false,\"columnId\":21,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"updateTime\":1598157417000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1598157340000,\"tableId\":3,\"pk\":true,\"columnName\":\"id\"},{\"usableColumn\":false,\"columnId\":22,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"ip\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"环境IP\",\"isQuery\":\"1\",\"updateTime\":1598157417000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1598157340000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"ip\"},{\"usableColumn\":false,\"columnId\":23,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"type\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"环境分类(传输/通讯)\",\"isQuery\":\"1\",\"updateTime\":1598157417000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1598157340000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"type\"},{\"usableColumn\":false,\"columnId\":24,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"status\",\"htmlType\":\"radio\",\"edit\":true,\"query\":true,\"columnComment\":\"状态(正常/借用/停用)\",\"isQuery\":\"1\",\"updateTime\":1598157417000,\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1598157340000,\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 12:37:35');
INSERT INTO `sys_oper_log` VALUES ('126', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '192.168.1.103', '内网IP', '{\"functionAuthor\":\"taoweidong\",\"columns\":[{\"usableColumn\":false,\"columnId\":21,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"唯一标志\",\"updateTime\":1598157455000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1598157340000,\"tableId\":3,\"pk\":true,\"columnName\":\"id\"},{\"usableColumn\":false,\"columnId\":22,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"ip\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"环境IP\",\"isQuery\":\"1\",\"updateTime\":1598157455000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1598157340000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"ip\"},{\"usableColumn\":false,\"columnId\":23,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"type\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"环境分类(传输/通讯)\",\"isQuery\":\"1\",\"updateTime\":1598157455000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1598157340000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"type\"},{\"usableColumn\":false,\"columnId\":24,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"status\",\"htmlType\":\"radio\",\"edit\":true,\"query\":true,\"columnComment\":\"状态(正常/借用/停用)\",\"isQuery\":\"1\",\"updateTime\":1598157455000,\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"crea', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 12:37:50');
INSERT INTO `sys_oper_log` VALUES ('127', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '192.168.1.103', '内网IP', '{\"functionAuthor\":\"taoweidong\",\"columns\":[{\"usableColumn\":false,\"columnId\":21,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"唯一标志\",\"updateTime\":1598157470000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1598157340000,\"tableId\":3,\"pk\":true,\"columnName\":\"id\"},{\"usableColumn\":false,\"columnId\":22,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"ip\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"环境IP\",\"isQuery\":\"1\",\"updateTime\":1598157470000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1598157340000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"ip\"},{\"usableColumn\":false,\"columnId\":23,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"type\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"环境分类(传输/通讯)\",\"isQuery\":\"1\",\"updateTime\":1598157470000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1598157340000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"type\"},{\"usableColumn\":false,\"columnId\":24,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"status\",\"htmlType\":\"radio\",\"edit\":true,\"query\":true,\"columnComment\":\"状态(正常/借用/停用)\",\"isQuery\":\"1\",\"updateTime\":1598157470000,\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"crea', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 12:38:31');
INSERT INTO `sys_oper_log` VALUES ('128', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '192.168.1.103', '内网IP', '{}', 'null', '0', null, '2020-08-23 12:38:35');
INSERT INTO `sys_oper_log` VALUES ('129', '菜单管理', '1', 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '192.168.1.103', '内网IP', '{\"visible\":\"0\",\"icon\":\"international\",\"orderNum\":\"0\",\"menuName\":\"资源管理\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 12:41:47');
INSERT INTO `sys_oper_log` VALUES ('130', '菜单管理', '2', 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '192.168.1.103', '内网IP', '{\"visible\":\"0\",\"icon\":\"international\",\"orderNum\":\"3\",\"menuName\":\"资源管理\",\"params\":{},\"parentId\":0,\"path\":\"\",\"children\":[],\"createTime\":1598157707000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1061,\"menuType\":\"M\",\"perms\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 12:41:59');
INSERT INTO `sys_oper_log` VALUES ('131', '菜单管理', '1', 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '192.168.1.103', '内网IP', '{\"visible\":\"0\",\"icon\":\"eye-open\",\"orderNum\":\"0\",\"menuName\":\"环境管理\",\"params\":{},\"parentId\":1061,\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 12:42:37');
INSERT INTO `sys_oper_log` VALUES ('132', '菜单管理', '2', 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '192.168.1.103', '内网IP', '{\"visible\":\"1\",\"icon\":\"guide\",\"orderNum\":\"4\",\"menuName\":\"GitHub\",\"params\":{},\"parentId\":0,\"path\":\"http://www.taoweidong.com/\",\"children\":[],\"createTime\":1521171180000,\"updateBy\":\"admin\",\"isFrame\":\"0\",\"menuId\":4,\"menuType\":\"M\",\"perms\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 12:46:37');
INSERT INTO `sys_oper_log` VALUES ('133', '菜单管理', '2', 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '192.168.1.103', '内网IP', '{\"visible\":\"0\",\"icon\":\"eye-open\",\"orderNum\":\"0\",\"menuName\":\"环境管理\",\"params\":{},\"parentId\":1061,\"path\":\"resource\",\"children\":[],\"createTime\":1598157757000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1062,\"menuType\":\"M\",\"perms\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 22:21:01');
INSERT INTO `sys_oper_log` VALUES ('134', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '192.168.1.103', '内网IP', '{}', 'null', '0', null, '2020-08-23 22:23:26');
INSERT INTO `sys_oper_log` VALUES ('135', '菜单管理', '2', 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '192.168.1.103', '内网IP', '{\"visible\":\"0\",\"icon\":\"international\",\"orderNum\":\"3\",\"menuName\":\"资源管理\",\"params\":{},\"parentId\":0,\"path\":\"taowd\",\"children\":[],\"createTime\":1598157707000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1061,\"menuType\":\"M\",\"perms\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 22:25:38');
INSERT INTO `sys_oper_log` VALUES ('136', '菜单管理', '2', 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '192.168.1.103', '内网IP', '{\"visible\":\"0\",\"icon\":\"eye-open\",\"orderNum\":\"0\",\"menuName\":\"环境管理\",\"params\":{},\"parentId\":1061,\"path\":\"list\",\"children\":[],\"createTime\":1598157757000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1062,\"menuType\":\"M\",\"perms\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 22:26:41');
INSERT INTO `sys_oper_log` VALUES ('137', '菜单管理', '2', 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '192.168.1.103', '内网IP', '{\"visible\":\"0\",\"icon\":\"eye-open\",\"orderNum\":\"0\",\"menuName\":\"环境管理\",\"params\":{},\"parentId\":1061,\"path\":\"list\",\"component\":\"taowd/list\",\"children\":[],\"createTime\":1598157757000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1062,\"menuType\":\"C\",\"perms\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 22:31:37');
INSERT INTO `sys_oper_log` VALUES ('138', '字典类型', '1', 'com.ruoyi.project.system.controller.SysDictTypeController.add()', 'POST', '1', 'admin', null, '/system/dict/type', '192.168.1.103', '内网IP', '{\"remark\":\"环境类型\",\"params\":{},\"dictType\":\"env_type\",\"createBy\":\"admin\",\"dictName\":\"环境类型\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 22:33:03');
INSERT INTO `sys_oper_log` VALUES ('139', '字典类型', '2', 'com.ruoyi.project.system.controller.SysDictTypeController.edit()', 'PUT', '1', 'admin', null, '/system/dict/type', '192.168.1.103', '内网IP', '{\"remark\":\"环境类型\",\"dictId\":11,\"params\":{},\"dictType\":\"env_type\",\"createBy\":\"admin\",\"createTime\":1598193183000,\"updateBy\":\"admin\",\"dictName\":\"环境类型\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 22:33:15');
INSERT INTO `sys_oper_log` VALUES ('140', '字典数据', '1', 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '192.168.1.103', '内网IP', '{\"dictValue\":\"通讯\",\"dictSort\":0,\"params\":{},\"dictType\":\"env_type\",\"dictLabel\":\"通讯\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 22:33:38');
INSERT INTO `sys_oper_log` VALUES ('141', '字典数据', '1', 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '192.168.1.103', '内网IP', '{\"dictValue\":\"传输\",\"dictSort\":1,\"params\":{},\"dictType\":\"env_type\",\"dictLabel\":\"传输\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 22:33:47');
INSERT INTO `sys_oper_log` VALUES ('142', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '192.168.1.103', '内网IP', '{\"functionAuthor\":\"taoweidong\",\"columns\":[{\"usableColumn\":false,\"columnId\":21,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"唯一标志\",\"updateTime\":1598157511000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1598157340000,\"tableId\":3,\"pk\":true,\"columnName\":\"id\"},{\"usableColumn\":false,\"columnId\":22,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"ip\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"环境IP\",\"isQuery\":\"1\",\"updateTime\":1598157511000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1598157340000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"ip\"},{\"usableColumn\":false,\"columnId\":23,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"env_type\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"type\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"环境分类\",\"isQuery\":\"1\",\"updateTime\":1598157511000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1598157340000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"type\"},{\"usableColumn\":false,\"columnId\":24,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"status\",\"htmlType\":\"radio\",\"edit\":true,\"query\":true,\"columnComment\":\"状态\",\"isQuery\":\"1\",\"updateTime\":1598157511000,\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 22:34:21');
INSERT INTO `sys_oper_log` VALUES ('143', '字典类型', '1', 'com.ruoyi.project.system.controller.SysDictTypeController.add()', 'POST', '1', 'admin', null, '/system/dict/type', '192.168.1.103', '内网IP', '{\"params\":{},\"dictType\":\"env_status\",\"createBy\":\"admin\",\"dictName\":\"环境状态\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 22:34:49');
INSERT INTO `sys_oper_log` VALUES ('144', '字典数据', '1', 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '192.168.1.103', '内网IP', '{\"dictValue\":\"正常\",\"dictSort\":0,\"params\":{},\"dictType\":\"env_status\",\"dictLabel\":\"正常\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 22:35:05');
INSERT INTO `sys_oper_log` VALUES ('145', '字典数据', '1', 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '192.168.1.103', '内网IP', '{\"dictValue\":\"借用\",\"dictSort\":1,\"params\":{},\"dictType\":\"env_status\",\"dictLabel\":\"借用\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 22:35:16');
INSERT INTO `sys_oper_log` VALUES ('146', '字典数据', '1', 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '192.168.1.103', '内网IP', '{\"dictValue\":\"停用\",\"dictSort\":2,\"params\":{},\"dictType\":\"env_status\",\"dictLabel\":\"停用\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 22:35:26');
INSERT INTO `sys_oper_log` VALUES ('147', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '192.168.1.103', '内网IP', '{\"functionAuthor\":\"taoweidong\",\"columns\":[{\"usableColumn\":false,\"columnId\":21,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"唯一标志\",\"updateTime\":1598193261000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1598157340000,\"tableId\":3,\"pk\":true,\"columnName\":\"id\"},{\"usableColumn\":false,\"columnId\":22,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"ip\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"环境IP\",\"isQuery\":\"1\",\"updateTime\":1598193261000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1598157340000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"ip\"},{\"usableColumn\":false,\"columnId\":23,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"env_type\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"type\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"环境分类\",\"isQuery\":\"1\",\"updateTime\":1598193261000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1598157340000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"type\"},{\"usableColumn\":false,\"columnId\":24,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"env_status\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"status\",\"htmlType\":\"radio\",\"edit\":true,\"query\":true,\"columnComment\":\"状态\",\"isQuery\":\"1\",\"updateTime\":1598193261000,\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"cre', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 22:35:40');
INSERT INTO `sys_oper_log` VALUES ('148', '代码生成', '8', 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '192.168.1.103', '内网IP', '{}', 'null', '0', null, '2020-08-23 22:35:44');
INSERT INTO `sys_oper_log` VALUES ('149', '资源信息', '1', 'com.ruoyi.project.taowd.controller.ResourceListController.add()', 'POST', '1', 'admin', null, '/taowd/list', '192.168.1.103', '内网IP', '{\"ip\":\"9.88.40.205\",\"params\":{},\"type\":\"通讯\",\"createTime\":1598193439025,\"creater\":\"taowd\",\"status\":\"借用\"}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.project.taowd.mapper.ResourceListMapper.insertResourceList-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_resource_list          ( ip,             type,             status,             creater,             createTime )           values ( ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2020-08-23 22:37:20');
INSERT INTO `sys_oper_log` VALUES ('150', '资源信息', '1', 'com.ruoyi.project.taowd.controller.ResourceListController.add()', 'POST', '1', 'admin', null, '/taowd/list', '192.168.1.103', '内网IP', '{\"ip\":\"7.88.20.205\",\"params\":{},\"type\":\"通讯\",\"createTime\":1598193531201,\"creater\":\"taowd\",\"status\":\"正常\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 22:38:53');
INSERT INTO `sys_oper_log` VALUES ('151', '资源信息', '5', 'com.ruoyi.project.taowd.controller.ResourceListController.export()', 'GET', '1', 'admin', null, '/taowd/list/export', '192.168.1.103', '内网IP', '{}', '{\"msg\":\"be57ff4a-b8d1-4fb8-9e0b-5714de694fa0_list.xlsx\",\"code\":200}', '0', null, '2020-08-23 22:40:56');
INSERT INTO `sys_oper_log` VALUES ('152', '代码生成', '2', 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '192.168.1.103', '内网IP', '{\"functionAuthor\":\"taoweidong\",\"columns\":[{\"usableColumn\":false,\"columnId\":21,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"唯一标志\",\"updateTime\":1598193340000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1598157340000,\"tableId\":3,\"pk\":true,\"columnName\":\"id\"},{\"usableColumn\":false,\"columnId\":22,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"ip\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"环境IP\",\"isQuery\":\"1\",\"updateTime\":1598193340000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1598157340000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"ip\"},{\"usableColumn\":false,\"columnId\":23,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"env_type\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"type\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"环境分类\",\"isQuery\":\"1\",\"updateTime\":1598193340000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1598157340000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"type\"},{\"usableColumn\":false,\"columnId\":24,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"env_status\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"status\",\"htmlType\":\"radio\",\"edit\":true,\"query\":true,\"columnComment\":\"状态\",\"isQuery\":\"1\",\"updateTime\":1598193340000,\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 22:43:04');
INSERT INTO `sys_oper_log` VALUES ('153', '角色管理', '2', 'com.ruoyi.project.system.controller.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '192.168.1.103', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"createTime\":1521171180000,\"updateBy\":\"admin\",\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"menuIds\":[1061,1062,4],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 22:46:26');
INSERT INTO `sys_oper_log` VALUES ('154', '用户管理', '2', 'com.ruoyi.project.system.controller.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '192.168.1.103', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"15769229466\",\"admin\":false,\"remark\":\"测试用户\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[4],\"loginIp\":\"\",\"email\":\"456456@outlook.com\",\"nickName\":\"测试\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"test\",\"userId\":100,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1581495150000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 22:46:59');
INSERT INTO `sys_oper_log` VALUES ('155', '用户管理', '2', 'com.ruoyi.project.system.controller.SysUserController.resetPwd()', 'PUT', '1', 'admin', null, '/system/user/resetPwd', '192.168.1.103', '内网IP', '{\"admin\":false,\"password\":\"$2a$10$.WlvM8hvxR.yvh1nwVNXjOVw1JsffgNRik4Osg6dAfM5fSxuZksN6\",\"updateBy\":\"admin\",\"params\":{},\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 22:47:17');
INSERT INTO `sys_oper_log` VALUES ('156', '用户管理', '2', 'com.ruoyi.project.system.controller.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '192.168.1.103', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"15769229466\",\"admin\":false,\"remark\":\"测试用户\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[4],\"loginIp\":\"\",\"email\":\"456456@outlook.com\",\"nickName\":\"测试\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"test\",\"userId\":100,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1581495150000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 22:49:03');
INSERT INTO `sys_oper_log` VALUES ('157', '菜单管理', '2', 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '192.168.1.103', '内网IP', '{\"visible\":\"0\",\"icon\":\"eye-open\",\"orderNum\":\"0\",\"menuName\":\"环境管理\",\"params\":{},\"parentId\":1061,\"path\":\"list\",\"component\":\"taowd/list\",\"children\":[],\"createTime\":1598157757000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1062,\"menuType\":\"C\",\"perms\":\"taowd:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 22:49:54');
INSERT INTO `sys_oper_log` VALUES ('158', '菜单管理', '2', 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '192.168.1.103', '内网IP', '{\"visible\":\"0\",\"icon\":\"eye-open\",\"orderNum\":\"0\",\"menuName\":\"环境管理\",\"params\":{},\"parentId\":1061,\"path\":\"list\",\"component\":\"taowd/list\",\"children\":[],\"createTime\":1598157757000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1062,\"menuType\":\"C\",\"perms\":\"taowd:list:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 22:58:02');
INSERT INTO `sys_oper_log` VALUES ('159', '个人信息', '2', 'com.ruoyi.project.system.controller.SysProfileController.updatePwd()', 'PUT', '1', 'admin', null, '/system/user/profile/updatePwd', '192.168.1.103', '内网IP', 'admin 123456', '{\"msg\":\"修改密码失败，旧密码错误\",\"code\":500}', '0', null, '2020-08-23 23:01:36');
INSERT INTO `sys_oper_log` VALUES ('160', '个人信息', '2', 'com.ruoyi.project.system.controller.SysProfileController.updatePwd()', 'PUT', '1', 'admin', null, '/system/user/profile/updatePwd', '192.168.1.103', '内网IP', '123456 123456', '{\"msg\":\"修改密码失败，旧密码错误\",\"code\":500}', '0', null, '2020-08-23 23:01:40');
INSERT INTO `sys_oper_log` VALUES ('161', '菜单管理', '1', 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '192.168.1.103', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"0\",\"menuName\":\"新增环境\",\"params\":{},\"parentId\":1062,\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"taowd:list:add\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 23:06:39');
INSERT INTO `sys_oper_log` VALUES ('162', '角色管理', '2', 'com.ruoyi.project.system.controller.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '192.168.1.103', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"createTime\":1521171180000,\"updateBy\":\"admin\",\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"menuIds\":[1061,1062,1063,4],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 23:10:15');
INSERT INTO `sys_oper_log` VALUES ('163', '资源信息', '2', 'com.ruoyi.project.taowd.controller.ResourceListController.edit()', 'PUT', '1', 'admin', null, '/taowd/list', '192.168.1.103', '内网IP', '{\"ip\":\"7.88.20.205\",\"updateTime\":1598195841267,\"params\":{},\"type\":\"通讯\",\"createTime\":1598193531000,\"creater\":\"taowd00\",\"id\":1,\"status\":\"正常\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 23:17:23');
INSERT INTO `sys_oper_log` VALUES ('164', '资源信息', '5', 'com.ruoyi.project.taowd.controller.ResourceListController.export()', 'GET', '1', 'admin', null, '/taowd/list/export', '192.168.1.103', '内网IP', '{}', '{\"msg\":\"3f4f2521-931a-4dcc-a5b8-4777c7b6213f_list.xlsx\",\"code\":200}', '0', null, '2020-08-23 23:18:56');
INSERT INTO `sys_oper_log` VALUES ('165', '菜单管理', '1', 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '192.168.1.103', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"1\",\"menuName\":\"状态修改\",\"params\":{},\"parentId\":1062,\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"taowd:list:edit\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 23:24:30');
INSERT INTO `sys_oper_log` VALUES ('166', '角色管理', '2', 'com.ruoyi.project.system.controller.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '192.168.1.103', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"createTime\":1521171180000,\"updateBy\":\"admin\",\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"menuIds\":[1061,1062,1063,1064,4],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 23:24:41');
INSERT INTO `sys_oper_log` VALUES ('167', '菜单管理', '1', 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '192.168.1.103', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"2\",\"menuName\":\"环境查询\",\"params\":{},\"parentId\":1062,\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"taowd:list:query\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 23:28:51');
INSERT INTO `sys_oper_log` VALUES ('168', '角色管理', '2', 'com.ruoyi.project.system.controller.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '192.168.1.103', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"createTime\":1521171180000,\"updateBy\":\"admin\",\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"menuIds\":[1061,1062,1063,1064,1065,4],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 23:29:00');
INSERT INTO `sys_oper_log` VALUES ('169', '资源信息', '2', 'com.ruoyi.project.taowd.controller.ResourceListController.edit()', 'PUT', '1', 'admin', null, '/taowd/list', '192.168.1.103', '内网IP', '{\"ip\":\"7.88.20.205\",\"updateTime\":1598197002542,\"params\":{},\"type\":\"通讯\",\"createTime\":1598193531000,\"creater\":\"taowd00\",\"id\":1,\"status\":\"借用\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-08-23 23:36:44');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'ceo', '董事长', '1', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES ('2', 'se', '项目经理', '2', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES ('3', 'hr', '人力资源', '3', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES ('4', 'user', '普通员工', '4', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '管理员', 'admin', '1', '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_role` VALUES ('2', '普通角色', 'common', '2', '2', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-08-23 23:29:00', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('2', '100');
INSERT INTO `sys_role_dept` VALUES ('2', '101');
INSERT INTO `sys_role_dept` VALUES ('2', '105');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2', '4');
INSERT INTO `sys_role_menu` VALUES ('2', '1061');
INSERT INTO `sys_role_menu` VALUES ('2', '1062');
INSERT INTO `sys_role_menu` VALUES ('2', '1063');
INSERT INTO `sys_role_menu` VALUES ('2', '1064');
INSERT INTO `sys_role_menu` VALUES ('2', '1065');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '103', 'admin', 'Taowd', '00', 'taowd@outlook.com', '15769661234', '0', '/profile/avatar/2020/03/01/e18b953ca4119aa7b999d5e97a4d7983.jpeg', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 'ry', '2020-03-01 16:32:57', '管理员');
INSERT INTO `sys_user` VALUES ('2', '106', 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 'admin', '2020-03-01 16:15:46', '测试员');
INSERT INTO `sys_user` VALUES ('100', '103', 'test', '测试', '00', '456456@outlook.com', '15769229466', '0', '', '$2a$10$.WlvM8hvxR.yvh1nwVNXjOVw1JsffgNRik4Osg6dAfM5fSxuZksN6', '0', '0', '', null, 'admin', '2020-02-12 16:12:30', 'admin', '2020-08-23 22:49:03', '测试用户');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');
INSERT INTO `sys_user_post` VALUES ('2', '2');
INSERT INTO `sys_user_post` VALUES ('100', '4');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');
INSERT INTO `sys_user_role` VALUES ('100', '2');

-- ----------------------------
-- Table structure for t_resource_list
-- ----------------------------
DROP TABLE IF EXISTS `t_resource_list`;
CREATE TABLE `t_resource_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) DEFAULT NULL COMMENT '环境IP',
  `type` varchar(255) DEFAULT NULL COMMENT '环境分类(传输/通讯)',
  `status` varchar(255) DEFAULT NULL COMMENT '状态(正常/借用/停用)',
  `creater` varchar(255) DEFAULT NULL COMMENT '创建人',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='资源信息表';

-- ----------------------------
-- Records of t_resource_list
-- ----------------------------
INSERT INTO `t_resource_list` VALUES ('1', '7.88.20.205', '通讯', '借用', 'taowd00', '2020-08-23 22:38:51', '2020-08-23 23:36:43');
