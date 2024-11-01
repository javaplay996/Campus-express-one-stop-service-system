/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmf48d5
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmf48d5` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmf48d5`;

/*Table structure for table `bingshineirong` */

DROP TABLE IF EXISTS `bingshineirong`;

CREATE TABLE `bingshineirong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhusu` longtext NOT NULL COMMENT '主诉',
  `xianbingshi` longtext COMMENT '现病史',
  `jiwangbingshi` longtext COMMENT '既往病史',
  `guominshi` longtext COMMENT '过敏史',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='病史内容';

/*Data for the table `bingshineirong` */

insert  into `bingshineirong`(`id`,`addtime`,`zhusu`,`xianbingshi`,`jiwangbingshi`,`guominshi`) values (21,'2021-03-12 21:27:20','主诉1','现病史1','既往病史1','过敏史1'),(22,'2021-03-12 21:27:20','主诉2','现病史2','既往病史2','过敏史2'),(23,'2021-03-12 21:27:20','主诉3','现病史3','既往病史3','过敏史3'),(24,'2021-03-12 21:27:20','主诉4','现病史4','既往病史4','过敏史4'),(25,'2021-03-12 21:27:20','主诉5','现病史5','既往病史5','过敏史5'),(26,'2021-03-12 21:27:20','主诉6','现病史6','既往病史6','过敏史6');

/*Table structure for table `caiwuguanli` */

DROP TABLE IF EXISTS `caiwuguanli`;

CREATE TABLE `caiwuguanli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggongzuoliang` varchar(200) DEFAULT NULL COMMENT '医生工作量',
  `keshigongzuoliang` varchar(200) DEFAULT NULL COMMENT '科室工作量',
  `rijiefeiyong` varchar(200) DEFAULT NULL COMMENT '日结费用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='财务管理';

/*Data for the table `caiwuguanli` */

insert  into `caiwuguanli`(`id`,`addtime`,`yishenggongzuoliang`,`keshigongzuoliang`,`rijiefeiyong`) values (71,'2021-03-12 21:27:20','医生工作量1','科室工作量1','日结费用1'),(72,'2021-03-12 21:27:20','医生工作量2','科室工作量2','日结费用2'),(73,'2021-03-12 21:27:20','医生工作量3','科室工作量3','日结费用3'),(74,'2021-03-12 21:27:20','医生工作量4','科室工作量4','日结费用4'),(75,'2021-03-12 21:27:20','医生工作量5','科室工作量5','日结费用5'),(76,'2021-03-12 21:27:20','医生工作量6','科室工作量6','日结费用6');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmf48d5/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmf48d5/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmf48d5/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `defaultuser` */

DROP TABLE IF EXISTS `defaultuser`;

CREATE TABLE `defaultuser` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(200) DEFAULT NULL COMMENT '性别',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `picture` varchar(200) DEFAULT NULL COMMENT '照片',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='注册用户';

/*Data for the table `defaultuser` */

insert  into `defaultuser`(`id`,`addtime`,`username`,`mima`,`name`,`sex`,`age`,`phone`,`picture`,`email`) values (91,'2021-03-12 21:27:20','用户名1','123456','姓名1','男',1,'020-89819991','http://localhost:8080/ssmf48d5/upload/defaultuser_picture1.jpg','773890001@qq.com'),(92,'2021-03-12 21:27:20','用户名2','123456','姓名2','男',2,'020-89819992','http://localhost:8080/ssmf48d5/upload/defaultuser_picture2.jpg','773890002@qq.com'),(93,'2021-03-12 21:27:20','用户名3','123456','姓名3','男',3,'020-89819993','http://localhost:8080/ssmf48d5/upload/defaultuser_picture3.jpg','773890003@qq.com'),(94,'2021-03-12 21:27:20','用户名4','123456','姓名4','男',4,'020-89819994','http://localhost:8080/ssmf48d5/upload/defaultuser_picture4.jpg','773890004@qq.com'),(95,'2021-03-12 21:27:20','用户名5','123456','姓名5','男',5,'020-89819995','http://localhost:8080/ssmf48d5/upload/defaultuser_picture5.jpg','773890005@qq.com'),(96,'2021-03-12 21:27:20','用户名6','123456','姓名6','男',6,'020-89819996','http://localhost:8080/ssmf48d5/upload/defaultuser_picture6.jpg','773890006@qq.com');

/*Table structure for table `guahaoshoufei` */

DROP TABLE IF EXISTS `guahaoshoufei`;

CREATE TABLE `guahaoshoufei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xianchangguahao` varchar(200) DEFAULT NULL COMMENT '现场挂号',
  `rijie` varchar(200) DEFAULT NULL COMMENT '日结',
  `tuihao` varchar(200) DEFAULT NULL COMMENT '退号',
  `shoufei` varchar(200) DEFAULT NULL COMMENT '收费',
  `tuifei` varchar(200) DEFAULT NULL COMMENT '退费',
  `huanzhefeiyongmingxi` varchar(200) NOT NULL COMMENT '患者费用明细',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='挂号收费';

/*Data for the table `guahaoshoufei` */

insert  into `guahaoshoufei`(`id`,`addtime`,`zhanghao`,`mima`,`xianchangguahao`,`rijie`,`tuihao`,`shoufei`,`tuifei`,`huanzhefeiyongmingxi`) values (61,'2021-03-12 21:27:20','账号1','密码1','现场挂号1','日结1','退号1','收费1','退费1','患者费用明细1'),(62,'2021-03-12 21:27:20','账号2','密码2','现场挂号2','日结2','退号2','收费2','退费2','患者费用明细2'),(63,'2021-03-12 21:27:20','账号3','密码3','现场挂号3','日结3','退号3','收费3','退费3','患者费用明细3'),(64,'2021-03-12 21:27:20','账号4','密码4','现场挂号4','日结4','退号4','收费4','退费4','患者费用明细4'),(65,'2021-03-12 21:27:20','账号5','密码5','现场挂号5','日结5','退号5','收费5','退费5','患者费用明细5'),(66,'2021-03-12 21:27:20','账号6','密码6','现场挂号6','日结6','退号6','收费6','退费6','患者费用明细6');

/*Table structure for table `jianchajijieguo` */

DROP TABLE IF EXISTS `jianchajijieguo`;

CREATE TABLE `jianchajijieguo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tigejiancha` varchar(200) NOT NULL COMMENT '体格检查',
  `fuzhujiancha` varchar(200) DEFAULT NULL COMMENT '辅助检查',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='检查及结果';

/*Data for the table `jianchajijieguo` */

insert  into `jianchajijieguo`(`id`,`addtime`,`tigejiancha`,`fuzhujiancha`) values (31,'2021-03-12 21:27:20','体格检查1','辅助检查1'),(32,'2021-03-12 21:27:20','体格检查2','辅助检查2'),(33,'2021-03-12 21:27:20','体格检查3','辅助检查3'),(34,'2021-03-12 21:27:20','体格检查4','辅助检查4'),(35,'2021-03-12 21:27:20','体格检查5','辅助检查5'),(36,'2021-03-12 21:27:20','体格检查6','辅助检查6');

/*Table structure for table `jianyihezhuyishixiang` */

DROP TABLE IF EXISTS `jianyihezhuyishixiang`;

CREATE TABLE `jianyihezhuyishixiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jianchajianyi` varchar(200) NOT NULL COMMENT '检查建议',
  `zhuyishixiang` varchar(200) NOT NULL COMMENT '注意事项',
  `chuliyijian` varchar(200) DEFAULT NULL COMMENT '处理意见',
  `zhenduanjieguo` varchar(200) DEFAULT NULL COMMENT '诊断结果',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='建议和注意事项';

/*Data for the table `jianyihezhuyishixiang` */

insert  into `jianyihezhuyishixiang`(`id`,`addtime`,`jianchajianyi`,`zhuyishixiang`,`chuliyijian`,`zhenduanjieguo`) values (51,'2021-03-12 21:27:20','检查建议1','注意事项1','处理意见1','诊断结果1'),(52,'2021-03-12 21:27:20','检查建议2','注意事项2','处理意见2','诊断结果2'),(53,'2021-03-12 21:27:20','检查建议3','注意事项3','处理意见3','诊断结果3'),(54,'2021-03-12 21:27:20','检查建议4','注意事项4','处理意见4','诊断结果4'),(55,'2021-03-12 21:27:20','检查建议5','注意事项5','处理意见5','诊断结果5'),(56,'2021-03-12 21:27:20','检查建议6','注意事项6','处理意见6','诊断结果6');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615555757641 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (111,'2021-03-12 21:27:20',1,'用户名1','留言内容1','回复内容1'),(112,'2021-03-12 21:27:20',2,'用户名2','留言内容2','回复内容2'),(113,'2021-03-12 21:27:20',3,'用户名3','留言内容3','回复内容3'),(114,'2021-03-12 21:27:20',4,'用户名4','留言内容4','回复内容4'),(115,'2021-03-12 21:27:20',5,'用户名5','留言内容5','回复内容5'),(116,'2021-03-12 21:27:20',6,'用户名6','留言内容6','回复内容6'),(1615555757640,'2021-03-12 21:29:17',1615555722526,'123','我还有多长时间',NULL);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='网站资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (101,'2021-03-12 21:27:20','标题1','简介1','http://localhost:8080/ssmf48d5/upload/news_picture1.jpg','内容1'),(102,'2021-03-12 21:27:20','标题2','简介2','http://localhost:8080/ssmf48d5/upload/news_picture2.jpg','内容2'),(103,'2021-03-12 21:27:20','标题3','简介3','http://localhost:8080/ssmf48d5/upload/news_picture3.jpg','内容3'),(104,'2021-03-12 21:27:20','标题4','简介4','http://localhost:8080/ssmf48d5/upload/news_picture4.jpg','内容4'),(105,'2021-03-12 21:27:20','标题5','简介5','http://localhost:8080/ssmf48d5/upload/news_picture5.jpg','内容5'),(106,'2021-03-12 21:27:20','标题6','简介6','http://localhost:8080/ssmf48d5/upload/news_picture6.jpg','内容6');

/*Table structure for table `pingguzhenduan` */

DROP TABLE IF EXISTS `pingguzhenduan`;

CREATE TABLE `pingguzhenduan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiyizhenduan` varchar(200) NOT NULL COMMENT '西医诊断',
  `zhongyizhenduan` varchar(200) NOT NULL COMMENT '中医诊断',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='评估诊断';

/*Data for the table `pingguzhenduan` */

insert  into `pingguzhenduan`(`id`,`addtime`,`xiyizhenduan`,`zhongyizhenduan`) values (41,'2021-03-12 21:27:20','西医诊断1','中医诊断1'),(42,'2021-03-12 21:27:20','西医诊断2','中医诊断2'),(43,'2021-03-12 21:27:20','西医诊断3','中医诊断3'),(44,'2021-03-12 21:27:20','西医诊断4','中医诊断4'),(45,'2021-03-12 21:27:20','西医诊断5','中医诊断5'),(46,'2021-03-12 21:27:20','西医诊断6','中医诊断6');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1615555722526,'123','yonghu','用户','xhz53kzvhjp92ne8mza7ofd14s035onm','2021-03-12 21:28:49','2021-03-12 22:28:50');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-12 21:27:20');

/*Table structure for table `yaofangguanli` */

DROP TABLE IF EXISTS `yaofangguanli`;

CREATE TABLE `yaofangguanli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fayao` varchar(200) DEFAULT NULL COMMENT '发药',
  `tuiyao` varchar(200) DEFAULT NULL COMMENT '退药',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='药房管理';

/*Data for the table `yaofangguanli` */

insert  into `yaofangguanli`(`id`,`addtime`,`fayao`,`tuiyao`) values (81,'2021-03-12 21:27:20','发药1','退药1'),(82,'2021-03-12 21:27:20','发药2','退药2'),(83,'2021-03-12 21:27:20','发药3','退药3'),(84,'2021-03-12 21:27:20','发药4','退药4'),(85,'2021-03-12 21:27:20','发药5','退药5'),(86,'2021-03-12 21:27:20','发药6','退药6');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615555722527 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingbie`,`xingming`,`keshi`,`zhicheng`,`nianling`) values (11,'2021-03-12 21:27:20','用户1','123456','男','姓名1','科室1','职称1','年龄1'),(12,'2021-03-12 21:27:20','用户2','123456','男','姓名2','科室2','职称2','年龄2'),(13,'2021-03-12 21:27:20','用户3','123456','男','姓名3','科室3','职称3','年龄3'),(14,'2021-03-12 21:27:20','用户4','123456','男','姓名4','科室4','职称4','年龄4'),(15,'2021-03-12 21:27:20','用户5','123456','男','姓名5','科室5','职称5','年龄5'),(16,'2021-03-12 21:27:20','用户6','123456','男','姓名6','科室6','职称6','年龄6'),(1615555722526,'2021-03-12 21:28:42','123','123',NULL,'lisi','骨科','老提哦','99');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
