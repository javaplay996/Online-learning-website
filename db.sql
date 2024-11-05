/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm3n87r
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm3n87r` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm3n87r`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm3n87r/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm3n87r/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm3n87r/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discusskecheng` */

DROP TABLE IF EXISTS `discusskecheng`;

CREATE TABLE `discusskecheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='课程评论表';

/*Data for the table `discusskecheng` */

insert  into `discusskecheng`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (111,'2021-04-17 15:02:01',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-04-17 15:02:01',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-04-17 15:02:01',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-04-17 15:02:01',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-04-17 15:02:01',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-04-17 15:02:01',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discusskechengshipin` */

DROP TABLE IF EXISTS `discusskechengshipin`;

CREATE TABLE `discusskechengshipin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='课程视频评论表';

/*Data for the table `discusskechengshipin` */

insert  into `discusskechengshipin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-04-17 15:02:01',1,1,'用户名1','评论内容1','回复内容1'),(122,'2021-04-17 15:02:01',2,2,'用户名2','评论内容2','回复内容2'),(123,'2021-04-17 15:02:01',3,3,'用户名3','评论内容3','回复内容3'),(124,'2021-04-17 15:02:01',4,4,'用户名4','评论内容4','回复内容4'),(125,'2021-04-17 15:02:01',5,5,'用户名5','评论内容5','回复内容5'),(126,'2021-04-17 15:02:01',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discusskechengziliao` */

DROP TABLE IF EXISTS `discusskechengziliao`;

CREATE TABLE `discusskechengziliao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='课程资料评论表';

/*Data for the table `discusskechengziliao` */

insert  into `discusskechengziliao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (131,'2021-04-17 15:02:01',1,1,'用户名1','评论内容1','回复内容1'),(132,'2021-04-17 15:02:01',2,2,'用户名2','评论内容2','回复内容2'),(133,'2021-04-17 15:02:01',3,3,'用户名3','评论内容3','回复内容3'),(134,'2021-04-17 15:02:01',4,4,'用户名4','评论内容4','回复内容4'),(135,'2021-04-17 15:02:01',5,5,'用户名5','评论内容5','回复内容5'),(136,'2021-04-17 15:02:01',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `exampaper` */

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618643153878 DEFAULT CHARSET=utf8 COMMENT='试卷表';

/*Data for the table `exampaper` */

insert  into `exampaper`(`id`,`addtime`,`name`,`time`,`status`) values (1618643153877,'2021-04-17 15:05:53','测试',120,1);

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '所属试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618643170218 DEFAULT CHARSET=utf8 COMMENT='试题表';

/*Data for the table `examquestion` */

insert  into `examquestion`(`id`,`addtime`,`paperid`,`papername`,`questionname`,`options`,`score`,`answer`,`analysis`,`type`,`sequence`) values (1618643170217,'2021-04-17 15:06:09',1618643153877,'测试','测试','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',3,'A','测试',2,1);

/*Table structure for table `examrecord` */

DROP TABLE IF EXISTS `examrecord`;

CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618643215910 DEFAULT CHARSET=utf8 COMMENT='考试记录表';

/*Data for the table `examrecord` */

insert  into `examrecord`(`id`,`addtime`,`userid`,`username`,`paperid`,`papername`,`questionid`,`questionname`,`options`,`score`,`answer`,`analysis`,`myscore`,`myanswer`) values (1618643196216,'2021-04-17 15:06:35',11,NULL,1618643153877,'测试',1618643170217,'测试','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',3,'A','测试',3,'A'),(1618643215909,'2021-04-17 15:06:55',12,NULL,1618643153877,'测试',1618643170217,'测试','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',3,'A','测试',0,'B');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) NOT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`xingbie`,`xueyuan`,`zhiwei`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (21,'2021-04-17 15:02:01','教师1','123456','姓名1','男','学院1','职位1','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssm3n87r/upload/jiaoshi_zhaopian1.jpg'),(22,'2021-04-17 15:02:01','教师2','123456','姓名2','男','学院2','职位2','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssm3n87r/upload/jiaoshi_zhaopian2.jpg'),(23,'2021-04-17 15:02:01','教师3','123456','姓名3','男','学院3','职位3','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssm3n87r/upload/jiaoshi_zhaopian3.jpg'),(24,'2021-04-17 15:02:01','教师4','123456','姓名4','男','学院4','职位4','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssm3n87r/upload/jiaoshi_zhaopian4.jpg'),(25,'2021-04-17 15:02:01','教师5','123456','姓名5','男','学院5','职位5','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssm3n87r/upload/jiaoshi_zhaopian5.jpg'),(26,'2021-04-17 15:02:01','教师6','123456','姓名6','男','学院6','职位6','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssm3n87r/upload/jiaoshi_zhaopian6.jpg');

/*Table structure for table `kecheng` */

DROP TABLE IF EXISTS `kecheng`;

CREATE TABLE `kecheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `xuekemingcheng` varchar(200) DEFAULT NULL COMMENT '学科名称',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `chuangjianshijian` datetime DEFAULT NULL COMMENT '创建时间',
  `kechengjieshao` longtext COMMENT '课程介绍',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengbianhao` (`kechengbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='课程';

/*Data for the table `kecheng` */

insert  into `kecheng`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`xuekemingcheng`,`gonghao`,`xingming`,`fengmian`,`chuangjianshijian`,`kechengjieshao`,`thumbsupnum`,`crazilynum`) values (41,'2021-04-17 15:02:01','课程编号1','课程名称1','学科名称1','工号1','姓名1','http://localhost:8080/ssm3n87r/upload/kecheng_fengmian1.jpg','2021-04-17 15:02:01','课程介绍1',1,1),(42,'2021-04-17 15:02:01','课程编号2','课程名称2','学科名称2','工号2','姓名2','http://localhost:8080/ssm3n87r/upload/kecheng_fengmian2.jpg','2021-04-17 15:02:01','课程介绍2',2,2),(43,'2021-04-17 15:02:01','课程编号3','课程名称3','学科名称3','工号3','姓名3','http://localhost:8080/ssm3n87r/upload/kecheng_fengmian3.jpg','2021-04-17 15:02:01','课程介绍3',3,3),(44,'2021-04-17 15:02:01','课程编号4','课程名称4','学科名称4','工号4','姓名4','http://localhost:8080/ssm3n87r/upload/kecheng_fengmian4.jpg','2021-04-17 15:02:01','课程介绍4',4,4),(45,'2021-04-17 15:02:01','课程编号5','课程名称5','学科名称5','工号5','姓名5','http://localhost:8080/ssm3n87r/upload/kecheng_fengmian5.jpg','2021-04-17 15:02:01','课程介绍5',5,5),(46,'2021-04-17 15:02:01','课程编号6','课程名称6','学科名称6','工号6','姓名6','http://localhost:8080/ssm3n87r/upload/kecheng_fengmian6.jpg','2021-04-17 15:02:01','课程介绍6',6,6);

/*Table structure for table `kechengshipin` */

DROP TABLE IF EXISTS `kechengshipin`;

CREATE TABLE `kechengshipin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shipinbianhao` varchar(200) DEFAULT NULL COMMENT '视频编号',
  `shipinmingcheng` varchar(200) DEFAULT NULL COMMENT '视频名称',
  `xuekemingcheng` varchar(200) DEFAULT NULL COMMENT '学科名称',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `shipinjieshao` longtext COMMENT '视频介绍',
  `shangchuanshijian` datetime DEFAULT NULL COMMENT '上传时间',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shipinbianhao` (`shipinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='课程视频';

/*Data for the table `kechengshipin` */

insert  into `kechengshipin`(`id`,`addtime`,`shipinbianhao`,`shipinmingcheng`,`xuekemingcheng`,`kechengmingcheng`,`gonghao`,`xingming`,`shipin`,`fengmian`,`shipinjieshao`,`shangchuanshijian`,`thumbsupnum`,`crazilynum`,`clicktime`) values (51,'2021-04-17 15:02:01','视频编号1','视频名称1','学科名称1','课程名称1','工号1','姓名1','','http://localhost:8080/ssm3n87r/upload/kechengshipin_fengmian1.jpg','视频介绍1','2021-04-17 15:02:01',1,1,'2021-04-17 15:02:01'),(52,'2021-04-17 15:02:01','视频编号2','视频名称2','学科名称2','课程名称2','工号2','姓名2','','http://localhost:8080/ssm3n87r/upload/kechengshipin_fengmian2.jpg','视频介绍2','2021-04-17 15:02:01',2,2,'2021-04-17 15:02:01'),(53,'2021-04-17 15:02:01','视频编号3','视频名称3','学科名称3','课程名称3','工号3','姓名3','','http://localhost:8080/ssm3n87r/upload/kechengshipin_fengmian3.jpg','视频介绍3','2021-04-17 15:02:01',3,3,'2021-04-17 15:02:01'),(54,'2021-04-17 15:02:01','视频编号4','视频名称4','学科名称4','课程名称4','工号4','姓名4','','http://localhost:8080/ssm3n87r/upload/kechengshipin_fengmian4.jpg','视频介绍4','2021-04-17 15:02:01',4,4,'2021-04-17 15:02:01'),(55,'2021-04-17 15:02:01','视频编号5','视频名称5','学科名称5','课程名称5','工号5','姓名5','','http://localhost:8080/ssm3n87r/upload/kechengshipin_fengmian5.jpg','视频介绍5','2021-04-17 15:02:01',5,5,'2021-04-17 15:02:01'),(56,'2021-04-17 15:02:01','视频编号6','视频名称6','学科名称6','课程名称6','工号6','姓名6','','http://localhost:8080/ssm3n87r/upload/kechengshipin_fengmian6.jpg','视频介绍6','2021-04-17 15:02:01',6,6,'2021-04-17 15:02:01');

/*Table structure for table `kechengziliao` */

DROP TABLE IF EXISTS `kechengziliao`;

CREATE TABLE `kechengziliao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ziliaobianhao` varchar(200) DEFAULT NULL COMMENT '资料编号',
  `ziliaomingcheng` varchar(200) DEFAULT NULL COMMENT '资料名称',
  `xueke` varchar(200) DEFAULT NULL COMMENT '学科',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `wenjian` varchar(200) DEFAULT NULL COMMENT '文件',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `wenjianshuoming` longtext COMMENT '文件说明',
  `shangchuanshijian` datetime DEFAULT NULL COMMENT '上传时间',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ziliaobianhao` (`ziliaobianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='课程资料';

/*Data for the table `kechengziliao` */

insert  into `kechengziliao`(`id`,`addtime`,`ziliaobianhao`,`ziliaomingcheng`,`xueke`,`kechengmingcheng`,`gonghao`,`xingming`,`wenjian`,`fengmian`,`wenjianshuoming`,`shangchuanshijian`,`thumbsupnum`,`crazilynum`) values (61,'2021-04-17 15:02:01','资料编号1','资料名称1','学科1','课程名称1','工号1','姓名1','','http://localhost:8080/ssm3n87r/upload/kechengziliao_fengmian1.jpg','文件说明1','2021-04-17 15:02:01',1,1),(62,'2021-04-17 15:02:01','资料编号2','资料名称2','学科2','课程名称2','工号2','姓名2','','http://localhost:8080/ssm3n87r/upload/kechengziliao_fengmian2.jpg','文件说明2','2021-04-17 15:02:01',2,2),(63,'2021-04-17 15:02:01','资料编号3','资料名称3','学科3','课程名称3','工号3','姓名3','','http://localhost:8080/ssm3n87r/upload/kechengziliao_fengmian3.jpg','文件说明3','2021-04-17 15:02:01',3,3),(64,'2021-04-17 15:02:01','资料编号4','资料名称4','学科4','课程名称4','工号4','姓名4','','http://localhost:8080/ssm3n87r/upload/kechengziliao_fengmian4.jpg','文件说明4','2021-04-17 15:02:01',4,4),(65,'2021-04-17 15:02:01','资料编号5','资料名称5','学科5','课程名称5','工号5','姓名5','','http://localhost:8080/ssm3n87r/upload/kechengziliao_fengmian5.jpg','文件说明5','2021-04-17 15:02:01',5,5),(66,'2021-04-17 15:02:01','资料编号6','资料名称6','学科6','课程名称6','工号6','姓名6','','http://localhost:8080/ssm3n87r/upload/kechengziliao_fengmian6.jpg','文件说明6','2021-04-17 15:02:01',6,6);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','80vd8fsyhealoihu2rt7wnrt94466yhn','2021-04-17 15:03:59','2021-04-17 16:03:59'),(2,21,'教师1','jiaoshi','管理员','yxboe1f5c430cpk63n57jdib7jozilx7','2021-04-17 15:05:42','2021-04-17 16:07:09'),(3,11,'学生1','xuesheng','学生','mpr88roe2rqkpl19tbvpjxn3sppy0m69','2021-04-17 15:06:28','2021-04-17 16:06:28'),(4,12,'学生2','xuesheng','学生','i4iinuk3cw0zptn5hrll4n59dy090r3e','2021-04-17 15:06:50','2021-04-17 16:06:50');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-17 15:02:01');

/*Table structure for table `xuekexinxi` */

DROP TABLE IF EXISTS `xuekexinxi`;

CREATE TABLE `xuekexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuekebianhao` varchar(200) DEFAULT NULL COMMENT '学科编号',
  `xuekemingcheng` varchar(200) DEFAULT NULL COMMENT '学科名称',
  `chuangjianshijian` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuekebianhao` (`xuekebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='学科信息';

/*Data for the table `xuekexinxi` */

insert  into `xuekexinxi`(`id`,`addtime`,`xuekebianhao`,`xuekemingcheng`,`chuangjianshijian`) values (31,'2021-04-17 15:02:01','学科编号1','学科名称1','2021-04-17 15:02:01'),(32,'2021-04-17 15:02:01','学科编号2','学科名称2','2021-04-17 15:02:01'),(33,'2021-04-17 15:02:01','学科编号3','学科名称3','2021-04-17 15:02:01'),(34,'2021-04-17 15:02:01','学科编号4','学科名称4','2021-04-17 15:02:01'),(35,'2021-04-17 15:02:01','学科编号5','学科名称5','2021-04-17 15:02:01'),(36,'2021-04-17 15:02:01','学科编号6','学科名称6','2021-04-17 15:02:01');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) NOT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`banji`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (11,'2021-04-17 15:02:01','学生1','123456','姓名1','男','班级1','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssm3n87r/upload/xuesheng_zhaopian1.jpg'),(12,'2021-04-17 15:02:01','学生2','123456','姓名2','男','班级2','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssm3n87r/upload/xuesheng_zhaopian2.jpg'),(13,'2021-04-17 15:02:01','学生3','123456','姓名3','男','班级3','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssm3n87r/upload/xuesheng_zhaopian3.jpg'),(14,'2021-04-17 15:02:01','学生4','123456','姓名4','男','班级4','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssm3n87r/upload/xuesheng_zhaopian4.jpg'),(15,'2021-04-17 15:02:01','学生5','123456','姓名5','男','班级5','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssm3n87r/upload/xuesheng_zhaopian5.jpg'),(16,'2021-04-17 15:02:01','学生6','123456','姓名6','男','班级6','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssm3n87r/upload/xuesheng_zhaopian6.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
