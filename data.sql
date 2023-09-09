create database `report_manager_db`;

USE `report_manager_db`;


SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_dept
-- ----------------------------
DROP TABLE IF EXISTS `tb_dept`;
CREATE TABLE `tb_dept` (
  `id` bigint(20) DEFAULT NULL COMMENT 'Department number',
  `dept_name` varchar(100) DEFAULT NULL COMMENT 'Department number'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_dept
-- ----------------------------
INSERT INTO `tb_dept` VALUES ('5', 'Asset Management Department');
INSERT INTO `tb_dept` VALUES ('6', 'Quality Supervision Department');
INSERT INTO `tb_dept` VALUES ('7', 'Marketing Department');
INSERT INTO `tb_dept` VALUES ('1', 'Sales Department');
INSERT INTO `tb_dept` VALUES ('2', 'Personnel');
INSERT INTO `tb_dept` VALUES ('3', 'Finance Department');
INSERT INTO `tb_dept` VALUES ('4', 'Technical Department');

-- ----------------------------
-- Table structure for tb_province
-- ----------------------------
DROP TABLE IF EXISTS `tb_province`;
CREATE TABLE `tb_province` (
  `id` bigint(50) NOT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT 'The name of the province or municipality or special administrative region',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_province
-- ----------------------------
INSERT INTO `tb_province` VALUES ('1', 'Beijing');
INSERT INTO `tb_province` VALUES ('2', 'Tianjin City');
INSERT INTO `tb_province` VALUES ('3', 'Shanghai');
INSERT INTO `tb_province` VALUES ('4', 'Chongqing City');
INSERT INTO `tb_province` VALUES ('5', 'Hebei Province');
INSERT INTO `tb_province` VALUES ('6', 'Shanxi Province');
INSERT INTO `tb_province` VALUES ('7', 'Liaoning Province');
INSERT INTO `tb_province` VALUES ('8', 'Jilin Province');
INSERT INTO `tb_province` VALUES ('9', 'Heilongjiang Province');
INSERT INTO `tb_province` VALUES ('10', 'Jiangsu Province');
INSERT INTO `tb_province` VALUES ('11', 'Zhejiang Province');
INSERT INTO `tb_province` VALUES ('12', 'Anhui Province');
INSERT INTO `tb_province` VALUES ('13', 'Fujian Province');
INSERT INTO `tb_province` VALUES ('14', 'Jiangxi Province');
INSERT INTO `tb_province` VALUES ('15', 'Shandong Province');
INSERT INTO `tb_province` VALUES ('16', 'Henan Province');
INSERT INTO `tb_province` VALUES ('17', 'Hubei Province');
INSERT INTO `tb_province` VALUES ('18', 'Hunan Province');
INSERT INTO `tb_province` VALUES ('19', 'Guangdong Province');
INSERT INTO `tb_province` VALUES ('20', 'Hainan');
INSERT INTO `tb_province` VALUES ('21', 'Sichuan Province');
INSERT INTO `tb_province` VALUES ('22', 'Guizhou Province');
INSERT INTO `tb_province` VALUES ('23', 'Yunnan Province');
INSERT INTO `tb_province` VALUES ('24', 'Shaanxi Province');
INSERT INTO `tb_province` VALUES ('25', 'Gansu Province');
INSERT INTO `tb_province` VALUES ('26', 'Qinghai Province');
INSERT INTO `tb_province` VALUES ('27', 'Taiwan');
INSERT INTO `tb_province` VALUES ('28', 'Inner Mongolia Autonomous Region');
INSERT INTO `tb_province` VALUES ('29', 'Guangxi Zhuang Autonomous Region');
INSERT INTO `tb_province` VALUES ('30', 'Tibet Autonomous Region');
INSERT INTO `tb_province` VALUES ('31', 'Ningxia Hui Autonomous Region');
INSERT INTO `tb_province` VALUES ('32', 'Xinjiang Uygur Autonomous Region');
INSERT INTO `tb_province` VALUES ('33', 'Hong Kong S.A.R');
INSERT INTO `tb_province` VALUES ('34', 'Macau S.A.R');


-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'User ID',
  `user_name` varchar(100) DEFAULT NULL COMMENT 'name',
  `phone` varchar(15) DEFAULT NULL COMMENT 'Mobile phone number',
  `province` varchar(50) DEFAULT NULL COMMENT 'province',
  `city` varchar(50) DEFAULT NULL COMMENT 'city',
  `salary` int(10) DEFAULT NULL,
  `hire_date` datetime DEFAULT NULL COMMENT 'Date of entry',
  `dept_id` bigint(20) DEFAULT NULL COMMENT 'Department number',
  `birthday` datetime DEFAULT NULL COMMENT 'Date of birth',
  `photo` varchar(200) DEFAULT NULL COMMENT 'Photo path',
  `address` varchar(300) DEFAULT NULL COMMENT 'Current address',
  PRIMARY KEY (`id`),
  KEY `fk_dept` (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', '大一', '13800000001', 'Beijing', 'Beijing', '11000', '2001-01-01 21:18:29', '1', '1981-03-02 00:00:00', '\\static\\user_photos\\1.jpg', '北京市西城区宣武大街1号院');
INSERT INTO `tb_user` VALUES ('2', '不二', '13800000002', 'Hebei Province', 'Shijiazhuang City', '12000', '2002-01-02 21:18:29', '2', '1982-03-02 00:00:00', '\\static\\user_photos\\2.jpg', '北京市西城区宣武大街2号院');
INSERT INTO `tb_user` VALUES ('3', '张三', '13800000003', 'Hebei Province', 'Shijiazhuang City', '13000', '2003-03-03 21:18:29', '3', '1983-03-02 00:00:00', '\\static\\user_photos\\3.jpg', '北京市西城区宣武大街3号院');
INSERT INTO `tb_user` VALUES ('4', '李四', '13800000004', 'Hebei Province', 'Shijiazhuang City', '14000', '2004-02-04 21:18:29', '4', '1984-03-02 00:00:00', '\\static\\user_photos\\4.jpg', '北京市西城区宣武大街4号院');
INSERT INTO `tb_user` VALUES ('5', '王五', '13800000005', 'Hebei Province', 'Tangshan city', '15000', '2005-03-05 21:18:29', '5', '1985-03-02 00:00:00', '\\static\\user_photos\\5.jpg', '北京市西城区宣武大街5号院');
INSERT INTO `tb_user` VALUES ('6', '赵六', '13800000006', 'Hebei Province', 'Chengde City', '16000', '2006-04-06 21:18:29', '6', '1986-03-02 00:00:00', '\\static\\user_photos\\6.jpg', '北京市西城区宣武大街6号院');
INSERT INTO `tb_user` VALUES ('7', '沈七', '13800000007', 'Hebei Province', 'Qinhuangdao City', '17000', '2007-06-07 21:18:29', '7', '1987-03-02 00:00:00', '\\static\\user_photos\\7.jpg', '北京市西城区宣武大街7号院');
INSERT INTO `tb_user` VALUES ('8', '酒八', '13800000008', 'Hebei Province', 'Qinhuangdao City', '18000', '2008-07-08 21:18:29', '6', '1988-03-02 00:00:00', '\\static\\user_photos\\8.jpg', '北京市西城区宣武大街8号院');
INSERT INTO `tb_user` VALUES ('9', '第九', '13800000009', 'Shandong Province', 'Dezhou City', '19000', '2009-03-09 21:18:29', '1', '1989-03-02 00:00:00', '\\static\\user_photos\\9.jpg', '北京市西城区宣武大街9号院');
INSERT INTO `tb_user` VALUES ('10', '石十', '13800000010', 'Shandong Province', 'Qingdao City', '20000', '2010-07-10 21:18:29', '4', '1990-03-02 00:00:00', '\\static\\user_photos\\10.jpg', '北京市西城区宣武大街10号院');
INSERT INTO `tb_user` VALUES ('11', '肖十一', '13800000011', 'Shandong Province', 'Qingdao City', '21000', '2011-12-11 21:18:29', '4', '1991-03-02 00:00:00', '\\static\\user_photos\\11.jpg', '北京市西城区宣武大街11号院');
INSERT INTO `tb_user` VALUES ('12', '星十二', '13800000012', 'Shandong Province', 'Qingdao City', '22000', '2012-05-12 21:18:29', '4', '1992-03-02 00:00:00', '\\static\\user_photos\\12.jpg', '北京市西城区宣武大街12号院');
INSERT INTO `tb_user` VALUES ('13', '钗十三', '13800000013', 'Shandong Province', 'Jinan city', '23000', '2013-06-13 21:18:29', '3', '1993-03-02 00:00:00', '\\static\\user_photos\\13.jpg', '北京市西城区宣武大街13号院');
INSERT INTO `tb_user` VALUES ('14', '贾十四', '13800000014', 'Shandong Province', 'Weihai', '24000', '2014-06-14 21:18:29', '2', '1994-03-02 00:00:00', '\\static\\user_photos\\14.jpg', '北京市西城区宣武大街14号院');
INSERT INTO `tb_user` VALUES ('15', '甄世武', '13800000015', 'Shandong Province', 'Jinan city', '25000', '2015-06-15 21:18:29', '4', '1995-03-02 00:00:00', '\\static\\user_photos\\15.jpg', '北京市西城区宣武大街15号院');


-- ----------------------------
-- Table structure for tb_month
-- ----------------------------
DROP TABLE IF EXISTS `tb_month`;
CREATE TABLE `tb_month` (
  `name` varchar(2) DEFAULT NULL COMMENT 'month'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_month
-- ----------------------------
INSERT INTO `tb_month` VALUES ('01');
INSERT INTO `tb_month` VALUES ('02');
INSERT INTO `tb_month` VALUES ('03');
INSERT INTO `tb_month` VALUES ('04');
INSERT INTO `tb_month` VALUES ('05');
INSERT INTO `tb_month` VALUES ('06');
INSERT INTO `tb_month` VALUES ('07');
INSERT INTO `tb_month` VALUES ('08');
INSERT INTO `tb_month` VALUES ('09');
INSERT INTO `tb_month` VALUES ('10');
INSERT INTO `tb_month` VALUES ('11');
INSERT INTO `tb_month` VALUES ('12');