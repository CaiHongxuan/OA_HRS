/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : neusoft_pms

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2015-09-17 14:29:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '部门编号',
  `dept_name` varchar(20) NOT NULL COMMENT '部门名称',
  `type` enum('公司','部门') NOT NULL DEFAULT '公司' COMMENT '部门类型',
  `tel` varchar(20) NOT NULL COMMENT '电话',
  `fax` varchar(20) DEFAULT NULL COMMENT '传真',
  `head_dept_id` int(11) DEFAULT NULL COMMENT '上级部门',
  `setup_date` date NOT NULL COMMENT '成立时间',
  `describe` varchar(50) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`dept_id`),
  KEY `FK_Reference_15` (`head_dept_id`),
  CONSTRAINT `FK_Reference_15` FOREIGN KEY (`head_dept_id`) REFERENCES `dept` (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='部门管理表';

-- ----------------------------
-- Records of dept
-- ----------------------------

-- ----------------------------
-- Table structure for emp
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '员工编号',
  `name` varchar(20) NOT NULL COMMENT '员工姓名',
  `sex` enum('男','女') NOT NULL DEFAULT '男' COMMENT '性别',
  `birthday` date NOT NULL COMMENT '生日',
  `id_no` varchar(20) NOT NULL COMMENT '身份证号',
  `dept_id` varchar(20) NOT NULL COMMENT '所在部门编号',
  `post_id` varchar(20) NOT NULL COMMENT '所在岗位编号',
  `in_date` date NOT NULL COMMENT '入职时间',
  `start_date` date NOT NULL COMMENT '参加工作日期',
  `status` enum('正式员工','临时员工') NOT NULL DEFAULT '正式员工' COMMENT '用工形式',
  `originate` enum('校园招聘','社会招聘','其它') NOT NULL DEFAULT '校园招聘' COMMENT '人员来源',
  `political_status` enum('党员','预备党员','团员','其他') DEFAULT NULL COMMENT '政治面貌',
  `nations` enum('汉','蒙古族','满族','朝鲜族','赫哲族','达斡尔族','鄂温克族','鄂伦春族','回族','东乡族','土族','撒拉族','保安族','裕固族','维吾尔族','哈萨克族','柯尔克孜族','锡伯族','塔吉克族','乌孜别克族','俄罗斯族','塔塔尔族','藏族','门巴族','珞巴族','羌族','彝族','白族','哈尼族','傣族','傈僳族','佤族','拉祜族','纳西族','景颇族','布朗族','阿昌族','普米族','怒族','德昂族','独龙族','基诺族','苗族','布依族','侗族','水族','仡佬族','壮族','瑶族','仫佬族','毛南族','京族','土家族','黎族','畲族','高山族') DEFAULT NULL COMMENT '民族',
  `native_place` varchar(50) DEFAULT NULL COMMENT '籍贯',
  `tel` varchar(20) DEFAULT NULL COMMENT '电话',
  `email` varchar(30) DEFAULT NULL COMMENT '电子邮件',
  `height` float DEFAULT NULL COMMENT '身高',
  `blood_type` enum('A型','B型','AB型','O型','其他血型') DEFAULT NULL COMMENT '血型',
  `marriage` enum('未婚','已婚','丧偶','离婚','其他') DEFAULT NULL COMMENT '婚姻状况',
  `homeplace` varchar(50) DEFAULT NULL COMMENT '出生地',
  `account_place` varchar(50) DEFAULT NULL COMMENT '户口所在地',
  `top_degree` enum('高中及以下','大专','本科','研究生') DEFAULT NULL COMMENT '最高学历',
  `top_academic` enum('无学位','学士','双学士','硕士','博士','博士后') DEFAULT NULL COMMENT '最高学位',
  `gra_school` varchar(50) DEFAULT NULL COMMENT '毕业院校',
  `major` varchar(15) DEFAULT NULL COMMENT '所学专业',
  `gra_date` date DEFAULT NULL COMMENT '毕业日期',
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Ա����';

-- ----------------------------
-- Records of emp
-- ----------------------------
INSERT INTO `emp` VALUES ('1', '张三', '男', '2015-09-14', '445822183412285497', '策划部', '经理', '2015-09-15', '2015-09-15', '正式员工', '校园招聘', '党员', '汉', '广东陆丰', '15627284119', '1758677739@qq.com', '1.8', 'A型', '未婚', '广东陆丰', '广东陆丰', '研究生', '博士后', '佛大', '计算机', '2015-09-15');

-- ----------------------------
-- Table structure for emp_left
-- ----------------------------
DROP TABLE IF EXISTS `emp_left`;
CREATE TABLE `emp_left` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) NOT NULL COMMENT '员工编号',
  `name` varchar(20) NOT NULL COMMENT '员工姓名',
  `left_date` date NOT NULL COMMENT '离职日期',
  `left_type` enum('主动辞职','辞退','退休','开除','试用期未通过') NOT NULL DEFAULT '主动辞职' COMMENT '离职类型',
  `left_to` varchar(50) DEFAULT NULL COMMENT '离职去向',
  `remarks` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `FK_Reference_11` (`emp_id`),
  CONSTRAINT `FK_Reference_11` FOREIGN KEY (`emp_id`) REFERENCES `emp` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp_left
-- ----------------------------

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '岗位编号',
  `name` varchar(20) NOT NULL COMMENT '岗位名称',
  `type` enum('管理','技术','营销','市场') NOT NULL DEFAULT '管理' COMMENT '岗位类型',
  `quota` int(11) DEFAULT NULL COMMENT '岗位编制',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='��λ����';

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('1', '', '管理', null);
