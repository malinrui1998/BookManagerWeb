/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : book_manager

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2022-02-23 00:27:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `nikename` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '马琳睿', '123456');
INSERT INTO `admin` VALUES ('2', 'admin2', '任敏', 'admin');

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('4', '西游记', '《西游记》是中国古代第一部浪漫主义章回体长篇神魔小说。现存明刊百回本《西游记》均无作者署名，清代学者吴玉搢等首先提出《西游记》作者是明代吴承恩。 [1]  全书主要描写了孙悟空出世及大闹天宫后，遇见了唐僧、猪八戒、沙僧和白龙马，西行取经，一路上历经艰险、妖怪魔法高强，经历了九九八十一难，终于到达西天见到如来佛祖，最终五圣成真的故事。该小说以“唐僧取经”这一历史事件为蓝本，通过作者的艺术加工，深刻地描绘了明代社会现实。', '59.9');
INSERT INTO `book` VALUES ('6', '三国演义', '《三国演义》（全名为《三国志通俗演义》，又称《三国志演义》）是元末明初小说家罗贯中根据陈寿《三国志》和裴松之注解以及民间三国故事传说经过艺术加工创作而成的长篇章回体历史演义小说，与《西游记》《水浒传》《红楼梦》并称为中国古典四大名著。该作品成书后有嘉靖壬午本等多个版本传于世，到了明末清初，毛宗岗对《三国演义》整顿回目、修正文辞、改换诗文，该版本也成为诸多版本中水平最高、流传最广的版本。', '59.9');
INSERT INTO `book` VALUES ('7', '水浒传 ', '全书通过描写梁山好汉反抗欺压、水泊梁山壮大和受宋朝招安，以及受招安后为宋朝征战，最终消亡的宏大故事，艺术地反映了中国历史上宋江起义从发生、发展直至失败的全过程，深刻揭示了起义的社会根源，满腔热情地歌颂了起义英雄的反抗斗争和他们的社会理想，也具体揭示了起义失败的内在历史原因。', '59.9');
INSERT INTO `book` VALUES ('8', '红楼梦', '《红楼梦》，中国古代章回体长篇小说，中国古典四大名著之一，通行本共120回，一般认为前80回是清代作家曹雪芹所著，后40回作者为无名氏，整理者为程伟元、高鹗。小说以贾、史、王、薛四大家族的兴衰为背景，以富贵公子贾宝玉为视角，以贾宝玉与林黛玉、薛宝钗的爱情婚姻悲剧为主线，描绘了一批举止见识出于须眉之上的闺阁佳人的人生百态，展现了真正的人性美和悲剧美，可以说是一部从各个角度展现女性美以及中国古代社会世态百相的史诗性著作。', '59.9');
INSERT INTO `book` VALUES ('9', 'Java设计基础', '《Java程序设计基础（第5版）》是由陈国君主编，2015年由清华大学出版社出版的普通高等教育\"十一五\"国家级规划教材、中国高等学校信息管理与信息系统专业规划教材。该教材既可作为高等院校计算机及其相关专业的教学用书，也可作为各学校程序设计公共选修课的教材，同时也可用作职业教育的培训用书和Java初学者的入门教材或为具有一定Java编程经验的开发人员学习使用。 [1] ', '59.9');
INSERT INTO `book` VALUES ('10', 'Python程序设计', '全书共两篇17章，第一篇介绍Python数据类型、控制结构、正则表达式、类与函数设计、文件操作、异常处理与程序调试等内容。第二篇通过大量案例介绍Python在GUI编程、图形图像编程、音乐编程与语音识别、科学计算可视化、网络编程、逆向工程与软件分析、大数据处理、Windows系统编程等方面的应用。 ', '59.9');
INSERT INTO `book` VALUES ('11', '计算机网络', '计算机网络是指将地理位置不同的具有独立功能的多台计算机及其外部设备，通过通信线路连接起来，在网络操作系统，网络管理软件及网络通信协议的管理和协调下，实现资源共享和信息传递的计算机系统。 [1] ', '');

-- ----------------------------
-- Table structure for borrow
-- ----------------------------
DROP TABLE IF EXISTS `borrow`;
CREATE TABLE `borrow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL,
  `bid` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of borrow
-- ----------------------------
INSERT INTO `borrow` VALUES ('1', '1', '三国演义', '2022-02-22 23:10:35');
INSERT INTO `borrow` VALUES ('2', '1', '4', '2022-02-22 23:44:16');
INSERT INTO `borrow` VALUES ('3', '1', '6', '2022-02-22 23:44:21');
INSERT INTO `borrow` VALUES ('4', '1', '7', '2022-02-22 23:44:24');
INSERT INTO `borrow` VALUES ('5', '1', '8', '2022-02-22 23:44:26');
INSERT INTO `borrow` VALUES ('6', '6', '9', '2022-02-23 00:24:44');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '马琳睿', '男', '19');
INSERT INTO `student` VALUES ('2', '任敏', '女', '19');
INSERT INTO `student` VALUES ('3', '魏一鹏', '男', '19');
INSERT INTO `student` VALUES ('4', '于浩然', '男', '19');
INSERT INTO `student` VALUES ('5', '杨国栋', '男', '19');
INSERT INTO `student` VALUES ('6', '朱志远', '男', '19');
