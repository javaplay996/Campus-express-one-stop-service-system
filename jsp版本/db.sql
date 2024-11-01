/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - kuaidizhan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`kuaidizhan` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `kuaidizhan`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/fd-ssmj/upload/1613705295135.jpg'),(2,'picture2','http://localhost:8080/fd-ssmj/upload/1613705301525.jpg'),(3,'picture3','http://localhost:8080/fd-ssmj/upload/1613799912302.JPG'),(4,'picture4','http://localhost:8080/fd-ssmj/upload/1613705325348.jpg'),(5,'picture5','http://localhost:8080/fd-ssmj/upload/1613705332544.jpg'),(6,'homepage','http://localhost:8080/fd-ssmj/upload/1613705342094.jpg');

/*Table structure for table `daiqu` */

DROP TABLE IF EXISTS `daiqu`;

CREATE TABLE `daiqu` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dqname` varchar(200) DEFAULT NULL COMMENT '快递名称 Search111',
  `zhandian_id` tinyint(4) DEFAULT NULL COMMENT '站点',
  `yonghu_id` tinyint(4) DEFAULT NULL COMMENT '用户',
  `kddx_types` tinyint(4) DEFAULT NULL COMMENT '快递大小 Search111',
  `dqphone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `takecode` varchar(200) DEFAULT NULL COMMENT '取件码',
  `kdzt_types` tinyint(4) DEFAULT NULL COMMENT '快递状态',
  `pickup_time` datetime DEFAULT NULL COMMENT '取件时间 Search111',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='待取件表';

/*Data for the table `daiqu` */

insert  into `daiqu`(`id`,`dqname`,`zhandian_id`,`yonghu_id`,`kddx_types`,`dqphone`,`takecode`,`kdzt_types`,`pickup_time`) values (6,'快递1',4,3,1,'17787788787','d4334b',2,'2021-03-12 16:15:21'),(7,'快递2',3,3,2,'17787788787','6e185e',2,'2021-03-12 16:17:59'),(11,'快递3',2,2,1,'222222222','b76997',1,NULL);

/*Table structure for table `daiquren` */

DROP TABLE IF EXISTS `daiquren`;

CREATE TABLE `daiquren` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户名称 Search111',
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '密码',
  `sex_types` tinyint(4) DEFAULT NULL COMMENT '性别 Search111',
  `img_photo` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '头像',
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '联系电话',
  `role` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '身份',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;

/*Data for the table `daiquren` */

insert  into `daiquren`(`id`,`name`,`username`,`password`,`sex_types`,`img_photo`,`phone`,`role`) values (100,'张三','111','111',1,'http://localhost:8080/kuaidizhan/file/download?fileName=1615534764456.jpg','11111','代取人'),(101,'李四','222','222',2,'http://localhost:8080/kuaidizhan/file/download?fileName=1615534757452.jpg','22222','代取人');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-03-15 11:41:54'),(2,'sex_types','性别',2,'女',NULL,'2021-03-15 11:41:54'),(3,'kddx_types','快递大小',1,'小件',NULL,'2021-03-15 11:41:54'),(4,'kddx_types','快递大小',2,'中件',NULL,'2021-03-15 11:41:54'),(5,'kddx_types','快递大小',3,'大件',NULL,'2021-03-15 11:41:54'),(6,'kdzt_types','快递状态',1,'待取',NULL,'2021-03-15 11:41:54'),(7,'kdzt_types','快递状态',2,'已取',NULL,'2021-03-15 11:41:54'),(8,'kdzt_types','快递状态',3,'已发布订单',NULL,'2021-03-15 11:41:54'),(9,'jdzt_types','快递状态',1,'未接',NULL,'2021-03-15 11:41:54'),(10,'jdzt_types','快递状态',2,'已接',NULL,'2021-03-15 11:41:54'),(11,'kdlx_types','快递类型',1,'取件',NULL,'2021-03-15 11:41:54'),(12,'kdlx_types','快递类型',2,'寄件',NULL,'2021-03-15 11:41:54'),(13,'ddzt_types','订单状态',1,'正在路上',NULL,'2021-03-15 11:41:54'),(14,'ddzt_types','订单状态',2,'已完成',NULL,'2021-03-15 11:41:54');

/*Table structure for table `jiedan` */

DROP TABLE IF EXISTS `jiedan`;

CREATE TABLE `jiedan` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `odd` varchar(200) DEFAULT NULL COMMENT '单号',
  `daiqukuaidimc` varchar(200) DEFAULT NULL COMMENT '快递名称',
  `jdyonghu_id` tinyint(4) DEFAULT NULL COMMENT '发布人',
  `initiate_time` timestamp NULL DEFAULT NULL COMMENT '发布时间 Search111',
  `addresseename` varchar(200) DEFAULT NULL COMMENT '收件人名称',
  `jdphone` varchar(200) DEFAULT NULL COMMENT '电话',
  `jdaddressee` varchar(200) DEFAULT NULL COMMENT '地址',
  `jdtakecode` varchar(200) DEFAULT NULL COMMENT '(取/寄)件码',
  `jdzt_types` tinyint(4) DEFAULT NULL COMMENT '快递状态 Search111',
  `kdlx_types` tinyint(4) DEFAULT NULL COMMENT '快递类型 Search111',
  `dx` tinyint(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='快递接单表';

/*Data for the table `jiedan` */

insert  into `jiedan`(`id`,`odd`,`daiqukuaidimc`,`jdyonghu_id`,`initiate_time`,`addresseename`,`jdphone`,`jdaddressee`,`jdtakecode`,`jdzt_types`,`kdlx_types`,`dx`) values (10,'1615536950464','快递2',3,'2021-03-12 16:15:50','小王','17787788787','住宿楼栋：603 ，寝室号：603','6e185e',2,1,NULL),(11,'1615537130423','快递3',3,'2021-03-12 16:18:50','小站','222222222','住宿楼栋：321 ，寝室号：321','d070ea',2,2,1);

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` int(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (5,1,'admin','users','管理员','jdbgo9w6arggzqdo3nrrcljj6q08joaq','2021-03-04 11:02:31','2021-03-12 18:07:43'),(6,100,'111','yonghu','代取人','1jdqizh1vsl6kemi3u19w37m284xgens','2021-03-12 11:03:12','2021-03-12 17:13:26'),(7,1,'111','yonghu','用户','l5eqdbtjj882smoz7d82w7d7g76cu4jc','2021-03-12 11:44:02','2021-03-12 18:09:21'),(8,2,'222','yonghu','用户','1kovxdqfjxyg9ebqf8393mq3dotv5kcd','2021-03-12 14:55:11','2021-03-12 18:09:31'),(9,101,'222','yonghu','代取人','7kslcc46et47qrge50u7oo1ev6brmaic','2021-03-12 15:59:47','2021-03-12 17:13:32'),(10,3,'333','yonghu','用户','j3ggt0jgqd8h8bdohporm11dv37ta5n0','2021-03-12 16:13:53','2021-03-12 17:14:26');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) NOT NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-03-01 00:00:00');

/*Table structure for table `yijiedan` */

DROP TABLE IF EXISTS `yijiedan`;

CREATE TABLE `yijiedan` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `odd` varchar(200) DEFAULT NULL COMMENT '单号',
  `yonghu_id` tinyint(4) DEFAULT NULL COMMENT '发布人',
  `fbphone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `daiquren_id` tinyint(4) DEFAULT NULL COMMENT '接单人',
  `jdphone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `initiate_time` timestamp NULL DEFAULT NULL COMMENT '接单时间 Search111',
  `ddzt_types` tinyint(4) DEFAULT NULL COMMENT '订单状态 Search111',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='已接单表';

/*Data for the table `yijiedan` */

insert  into `yijiedan`(`id`,`odd`,`yonghu_id`,`fbphone`,`daiquren_id`,`jdphone`,`initiate_time`,`ddzt_types`) values (7,'1615536950464',3,'17787788787',100,'11111','2021-03-12 16:16:41',2),(8,'1615537130423',3,'222222222',100,'11111','2021-03-12 16:19:00',2);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `studentnumber` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '学号',
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户名称 Search111',
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '密码',
  `sex_types` tinyint(4) DEFAULT NULL COMMENT '性别 Search111',
  `img_photo` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '头像',
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '联系电话',
  `zhuSuLou` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '住宿楼栋',
  `dormitory` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '寝室号',
  `role` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '身份',
  `yanzheng` int(255) DEFAULT '0' COMMENT '验证',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`studentnumber`,`name`,`username`,`password`,`sex_types`,`img_photo`,`phone`,`zhuSuLou`,`dormitory`,`role`,`yanzheng`) values (1,'学号1','小札','111','111',1,'http://localhost:8080/kuaidizhan/file/download?fileName=1615469084435.jpg','111111111','123','321','用户',1),(2,'学号2','小站','222','222',2,'http://localhost:8080/kuaidizhan/file/download?fileName=1615469074773.jpg','222222222','123','321','用户',1),(3,'学号3','小王','333','333',2,'http://localhost:8080/kuaidizhan/file/download?fileName=1615536666445.jpg','17787788787','1栋6楼','603','用户',1),(5,'123','123','123','123',NULL,NULL,NULL,NULL,NULL,'用户',0),(6,'123','123','123','123',NULL,NULL,NULL,NULL,NULL,'用户',0);

/*Table structure for table `zhandian` */

DROP TABLE IF EXISTS `zhandian`;

CREATE TABLE `zhandian` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zdname` varchar(200) DEFAULT NULL COMMENT '站点名称 Search111',
  `address` varchar(200) DEFAULT NULL COMMENT '站点地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='快递站点';

/*Data for the table `zhandian` */

insert  into `zhandian`(`id`,`zdname`,`address`) values (1,'站点3','站点地址3'),(2,'站点2','站点地址2'),(3,'站点1','站点地址1'),(4,'站点4','站点地址4');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
