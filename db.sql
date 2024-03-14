/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - tushushangcheng
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tushushangcheng` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `tushushangcheng`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,1,'收货人1','17703786901','地址1',2,'2022-03-12 16:30:28','2022-03-12 16:52:47','2022-03-12 16:30:28'),(2,2,'收货人2','17703786902','地址2',1,'2022-03-12 16:30:28','2022-03-12 16:30:28','2022-03-12 16:30:28'),(3,1,'收货人3','17703786903','地址3',1,'2022-03-12 16:30:28','2022-03-12 16:52:42','2022-03-12 16:30:28'),(4,2,'收货人4','17703786904','地址4',1,'2022-03-12 16:30:28','2022-03-12 16:30:28','2022-03-12 16:30:28'),(5,3,'收货人5','17703786905','地址5',1,'2022-03-12 16:30:28','2022-03-12 16:30:28','2022-03-12 16:30:28');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `tushu_id` int(11) DEFAULT NULL COMMENT '图书',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/tushushangcheng/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/tushushangcheng/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/tushushangcheng/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-03-12 16:29:02'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-03-12 16:29:02'),(3,'huiyuandengji_types','会员等级类型',1,'青铜会员',NULL,'0.98','2022-03-12 16:29:02'),(4,'huiyuandengji_types','会员等级类型',2,'白银会员',NULL,'0.96','2022-03-12 16:29:02'),(5,'huiyuandengji_types','会员等级类型',3,'黄金会员',NULL,'0.94','2022-03-12 16:29:02'),(6,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-03-12 16:29:03'),(7,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-03-12 16:29:03'),(8,'tushu_types','图书类型',1,'图书类型1',NULL,NULL,'2022-03-12 16:29:03'),(9,'tushu_types','图书类型',2,'图书类型2',NULL,NULL,'2022-03-12 16:29:03'),(10,'tushu_types','图书类型',3,'图书类型3',NULL,NULL,'2022-03-12 16:29:03'),(11,'tushu_types','图书类型',4,'图书类型4',NULL,NULL,'2022-03-12 16:29:03'),(12,'tushu_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-03-12 16:29:03'),(13,'tushu_order_types','订单类型',1,'已评价',NULL,NULL,'2022-03-12 16:29:03'),(14,'tushu_order_types','订单类型',2,'退款',NULL,NULL,'2022-03-12 16:29:03'),(15,'tushu_order_types','订单类型',3,'已支付',NULL,NULL,'2022-03-12 16:29:03'),(16,'tushu_order_types','订单类型',4,'已发货',NULL,NULL,'2022-03-12 16:29:03'),(17,'tushu_order_types','订单类型',5,'已收货',NULL,NULL,'2022-03-12 16:29:03'),(18,'tushu_order_payment_types','订单支付类型',1,'现金',NULL,NULL,'2022-03-12 16:29:03'),(19,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2022-03-12 16:29:03'),(20,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2022-03-12 16:29:03'),(21,'tushu_types','图书类型',5,' 图书类型5',NULL,'','2022-03-12 16:54:05');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','sbjwhuziyjqoq4cm7ntoyw2tmpro30sj','2022-03-12 16:32:04','2022-03-12 18:08:38'),(2,1,'a1','yonghu','用户','an700eef7fhl2net3amuwyuftnbd6h9o','2022-03-12 16:43:17','2022-03-12 17:56:22');

/*Table structure for table `tushu` */

DROP TABLE IF EXISTS `tushu`;

CREATE TABLE `tushu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `tushu_name` varchar(200) DEFAULT NULL COMMENT '图书名称  Search111 ',
  `tushu_photo` varchar(200) DEFAULT NULL COMMENT '图书照片',
  `tushu_types` int(11) DEFAULT NULL COMMENT '图书类型 Search111',
  `tushu_kucun_number` int(11) DEFAULT NULL COMMENT '图书库存',
  `tushu_price` int(11) DEFAULT NULL COMMENT '购买获得积分 ',
  `tushu_old_money` decimal(10,2) DEFAULT NULL COMMENT '图书原价 ',
  `tushu_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `tushu_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `tushu_content` text COMMENT '图书简介 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `tushu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='图书';

/*Data for the table `tushu` */

insert  into `tushu`(`id`,`tushu_name`,`tushu_photo`,`tushu_types`,`tushu_kucun_number`,`tushu_price`,`tushu_old_money`,`tushu_new_money`,`tushu_clicknum`,`tushu_content`,`shangxia_types`,`tushu_delete`,`create_time`) values (1,'图书名称1','http://localhost:8080/tushushangcheng/upload/tushu1.jpg',1,101,182,'724.25','35.94',105,'图书简介1',1,1,'2022-03-12 16:30:28'),(2,'图书名称2','http://localhost:8080/tushushangcheng/upload/tushu2.jpg',4,101,306,'682.60','175.31',51,'图书简介2',1,1,'2022-03-12 16:30:28'),(3,'图书名称3','http://localhost:8080/tushushangcheng/upload/tushu3.jpg',1,100,199,'612.97','159.73',79,'图书简介3',1,1,'2022-03-12 16:30:28'),(4,'图书名称4','http://localhost:8080/tushushangcheng/upload/tushu4.jpg',2,102,178,'617.08','466.02',260,'图书简介4',1,1,'2022-03-12 16:30:28'),(5,'图书名称5','http://localhost:8080/tushushangcheng/upload/tushu5.jpg',2,107,336,'803.38','480.31',476,'图书简介5',1,1,'2022-03-12 16:30:28');

/*Table structure for table `tushu_collection` */

DROP TABLE IF EXISTS `tushu_collection`;

CREATE TABLE `tushu_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tushu_id` int(11) DEFAULT NULL COMMENT '图书',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `tushu_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='图书收藏';

/*Data for the table `tushu_collection` */

insert  into `tushu_collection`(`id`,`tushu_id`,`yonghu_id`,`tushu_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2022-03-12 16:30:28','2022-03-12 16:30:28'),(2,2,3,1,'2022-03-12 16:30:28','2022-03-12 16:30:28'),(3,3,3,1,'2022-03-12 16:30:28','2022-03-12 16:30:28'),(4,4,3,1,'2022-03-12 16:30:28','2022-03-12 16:30:28'),(5,5,3,1,'2022-03-12 16:30:28','2022-03-12 16:30:28'),(6,4,1,1,'2022-03-12 16:50:35','2022-03-12 16:50:35'),(7,5,1,1,'2022-03-12 16:52:35','2022-03-12 16:52:35');

/*Table structure for table `tushu_commentback` */

DROP TABLE IF EXISTS `tushu_commentback`;

CREATE TABLE `tushu_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tushu_id` int(11) DEFAULT NULL COMMENT '图书',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `tushu_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='图书评价';

/*Data for the table `tushu_commentback` */

insert  into `tushu_commentback`(`id`,`tushu_id`,`yonghu_id`,`tushu_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'评价内容1','2022-03-12 16:30:28','回复信息1','2022-03-12 16:30:28','2022-03-12 16:30:28'),(2,2,1,'评价内容2','2022-03-12 16:30:28','回复信息2','2022-03-12 16:30:28','2022-03-12 16:30:28'),(3,3,3,'评价内容3','2022-03-12 16:30:28','回复信息3','2022-03-12 16:30:28','2022-03-12 16:30:28'),(4,4,1,'评价内容4','2022-03-12 16:30:28','回复信息4','2022-03-12 16:30:28','2022-03-12 16:30:28'),(5,5,1,'评价内容5','2022-03-12 16:30:28','回复信息5','2022-03-12 16:30:28','2022-03-12 16:30:28'),(6,4,1,'好得很','2022-03-12 16:56:44',NULL,NULL,'2022-03-12 16:56:44');

/*Table structure for table `tushu_order` */

DROP TABLE IF EXISTS `tushu_order`;

CREATE TABLE `tushu_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tushu_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `address_id` int(11) DEFAULT NULL COMMENT '收获地址 ',
  `tushu_id` int(11) DEFAULT NULL COMMENT '图书',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `tushu_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `tushu_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `tushu_order_courier_number` varchar(200) DEFAULT NULL COMMENT '订单快递单号',
  `tushu_order_types` int(11) DEFAULT NULL COMMENT '订单类型',
  `tushu_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='图书订单';

/*Data for the table `tushu_order` */

insert  into `tushu_order`(`id`,`tushu_order_uuid_number`,`address_id`,`tushu_id`,`yonghu_id`,`buy_number`,`tushu_order_true_price`,`tushu_order_courier_name`,`tushu_order_courier_number`,`tushu_order_types`,`tushu_order_payment_types`,`insert_time`,`create_time`) values (1,'1647075085960',3,2,1,1,'171.80',NULL,NULL,2,1,'2022-03-12 16:51:26','2022-03-12 16:51:26'),(2,'1647075111994',1,2,1,1,'171.80',NULL,NULL,3,1,'2022-03-12 16:51:52','2022-03-12 16:51:52'),(3,'1647075111994',1,3,1,3,'469.61',NULL,NULL,3,1,'2022-03-12 16:51:52','2022-03-12 16:51:52'),(4,'1647075111994',1,4,1,2,'913.40','顺丰快递','sf5674561',1,1,'2022-03-12 16:51:52','2022-03-12 16:51:52');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2022-05-02 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_sum_jifen` decimal(10,2) DEFAULT NULL COMMENT '总积分',
  `yonghu_new_jifen` decimal(10,2) DEFAULT NULL COMMENT '现积分',
  `huiyuandengji_types` int(11) DEFAULT NULL COMMENT '会员等级',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`yonghu_sum_jifen`,`yonghu_new_jifen`,`huiyuandengji_types`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/tushushangcheng/upload/yonghu1.jpg',2,'1@qq.com','10277.51','1766.42','1690.55',1,'2022-03-12 16:30:28'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/tushushangcheng/upload/yonghu2.jpg',2,'2@qq.com','192.94','919.53','187.07',1,'2022-03-12 16:30:28'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/tushushangcheng/upload/yonghu3.jpg',2,'3@qq.com','600.24','835.99','428.92',1,'2022-03-12 16:30:28');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
