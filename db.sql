/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - liulangdongwujiuzhug
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`liulangdongwujiuzhug` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `liulangdongwujiuzhug`;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,3,'收货人1','17703786901','地址1',1,'2022-04-30 19:54:56','2022-04-30 19:54:56','2022-04-30 19:54:56'),(2,2,'收货人2','17703786902','地址2',1,'2022-04-30 19:54:56','2022-04-30 19:54:56','2022-04-30 19:54:56'),(3,3,'收货人3','17703786903','地址3',1,'2022-04-30 19:54:56','2022-04-30 19:54:56','2022-04-30 19:54:56'),(4,3,'收货人4','17703786904','地址4',1,'2022-04-30 19:54:56','2022-04-30 19:54:56','2022-04-30 19:54:56'),(5,3,'收货人5','17703786905','地址5',1,'2022-04-30 19:54:56','2022-04-30 19:54:56','2022-04-30 19:54:56'),(6,1,'张三','17785599641','地址123',2,'2022-04-30 21:25:23','2022-04-30 21:25:23','2022-04-30 21:25:23');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `chongwu` */

DROP TABLE IF EXISTS `chongwu`;

CREATE TABLE `chongwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwu_name` varchar(200) DEFAULT NULL COMMENT '标题  Search111',
  `chongwu_types` int(11) DEFAULT NULL COMMENT '动物类型 Search111',
  `status_types` int(11) DEFAULT NULL COMMENT '数据类型 Search111',
  `chongwu_photo` varchar(200) DEFAULT NULL COMMENT '动物图片',
  `chongwu_money` decimal(10,2) DEFAULT NULL COMMENT '已获捐数值',
  `jieshu_types` int(11) DEFAULT NULL COMMENT '认领状态',
  `chongwu_content` text COMMENT '动物详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='动物领养/捐赠';

/*Data for the table `chongwu` */

insert  into `chongwu`(`id`,`chongwu_name`,`chongwu_types`,`status_types`,`chongwu_photo`,`chongwu_money`,`jieshu_types`,`chongwu_content`,`create_time`) values (1,'标题1',3,1,'http://localhost:8080/liulangdongwujiuzhug/upload/chongwu1.jpg','626.39',1,'动物详情1','2022-04-30 19:54:56'),(2,'标题2',2,2,'http://localhost:8080/liulangdongwujiuzhug/upload/chongwu2.jpg','685.06',2,'动物详情2','2022-04-30 19:54:56'),(3,'标题3',1,1,'http://localhost:8080/liulangdongwujiuzhug/upload/chongwu3.jpg','763.17',2,'动物详情3','2022-04-30 19:54:56'),(4,'标题4',1,1,'http://localhost:8080/liulangdongwujiuzhug/upload/chongwu4.jpg','159.27',2,'动物详情4','2022-04-30 19:54:56'),(5,'标题5',1,2,'http://localhost:8080/liulangdongwujiuzhug/upload/chongwu5.jpg','1393.41',2,'动物详情5','2022-04-30 19:54:56');

/*Table structure for table `chongwu_collection` */

DROP TABLE IF EXISTS `chongwu_collection`;

CREATE TABLE `chongwu_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwu_id` int(11) DEFAULT NULL COMMENT '动物',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `chongwu_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='动物收藏';

/*Data for the table `chongwu_collection` */

insert  into `chongwu_collection`(`id`,`chongwu_id`,`yonghu_id`,`chongwu_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2022-04-30 19:54:56','2022-04-30 19:54:56'),(2,2,1,1,'2022-04-30 19:54:56','2022-04-30 19:54:56'),(3,3,2,1,'2022-04-30 19:54:56','2022-04-30 19:54:56'),(4,4,1,1,'2022-04-30 19:54:56','2022-04-30 19:54:56'),(5,5,2,1,'2022-04-30 19:54:56','2022-04-30 19:54:56');

/*Table structure for table `chongwu_liuyan` */

DROP TABLE IF EXISTS `chongwu_liuyan`;

CREATE TABLE `chongwu_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwu_id` int(11) DEFAULT NULL COMMENT '动物',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `chongwu_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='动物留言';

/*Data for the table `chongwu_liuyan` */

insert  into `chongwu_liuyan`(`id`,`chongwu_id`,`yonghu_id`,`chongwu_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'留言内容1','2022-04-30 19:54:56','回复信息1','2022-04-30 19:54:56','2022-04-30 19:54:56'),(2,2,1,'留言内容2','2022-04-30 19:54:56','回复信息2','2022-04-30 19:54:56','2022-04-30 19:54:56'),(3,3,3,'留言内容3','2022-04-30 19:54:56','回复信息3','2022-04-30 19:54:56','2022-04-30 19:54:56'),(4,4,1,'留言内容4','2022-04-30 19:54:56','回复信息4','2022-04-30 19:54:56','2022-04-30 19:54:56'),(5,5,2,'留言内容5','2022-04-30 19:54:56','回复信息5','2022-04-30 19:54:56','2022-04-30 19:54:56'),(9,3,1,'宠物状态为可认领的才能认领','2022-04-30 21:23:29','管理在后台可以回复','2022-04-30 21:30:01','2022-04-30 21:23:29');

/*Table structure for table `chongwushenhe` */

DROP TABLE IF EXISTS `chongwushenhe`;

CREATE TABLE `chongwushenhe` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwu_id` int(11) DEFAULT NULL COMMENT '动物领养',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '领养用户',
  `chongwushenhe_text` text COMMENT '认领凭据',
  `chongwushenhe_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态',
  `chongwushenhe_yesno_text` text COMMENT '申请结果',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='动物领养审核';

/*Data for the table `chongwushenhe` */

insert  into `chongwushenhe`(`id`,`chongwu_id`,`yonghu_id`,`chongwushenhe_text`,`chongwushenhe_yesno_types`,`chongwushenhe_yesno_text`,`create_time`) values (1,1,2,'认领凭据1',1,NULL,'2022-04-30 19:54:56'),(2,2,3,'认领凭据2',1,NULL,'2022-04-30 19:54:56'),(3,3,2,'认领凭据3',1,NULL,'2022-04-30 19:54:56'),(4,4,2,'认领凭据4',1,NULL,'2022-04-30 19:54:56'),(5,5,3,'认领凭据5',1,NULL,'2022-04-30 19:54:56'),(6,4,1,'凭证111',2,'同意','2022-04-30 21:15:49'),(7,3,1,'认领的凭证',2,'通过后就将申请认领的动物信息改为已认领，后续的操作可以看详情页面的联系方式去线下沟通','2022-04-30 21:23:42');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/liulangdongwujiuzhug/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/liulangdongwujiuzhug/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/liulangdongwujiuzhug/upload/config3.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (20,'chongwu_types','动物类型',1,'动物类型1',NULL,NULL,'2022-04-30 17:33:41'),(21,'chongwu_types','动物类型',2,'动物类型2',NULL,NULL,'2022-04-30 17:33:41'),(22,'chongwu_types','动物类型',3,'动物类型3',NULL,NULL,'2022-04-30 17:33:41'),(23,'jieshu_types','认领状态',1,'可认领',NULL,NULL,'2022-04-30 17:33:41'),(24,'jieshu_types','认领状态',2,'已认领',NULL,NULL,'2022-04-30 17:33:41'),(25,'chongwushenhe_yesno_types','审核状态',1,'审核中',NULL,NULL,'2022-04-30 17:33:41'),(26,'chongwushenhe_yesno_types','审核状态',2,'同意',NULL,NULL,'2022-04-30 17:33:41'),(27,'chongwushenhe_yesno_types','审核状态',3,'拒绝',NULL,NULL,'2022-04-30 17:33:41'),(28,'sex_types','性别类型',1,'男',NULL,NULL,'2022-04-30 17:33:41'),(29,'sex_types','性别类型',2,'女',NULL,NULL,'2022-04-30 17:33:41'),(30,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-04-30 17:33:41'),(31,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-04-30 17:33:41'),(32,'chongwu_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-04-30 17:33:41'),(33,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-04-30 17:33:42'),(34,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-04-30 17:33:42'),(35,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-04-30 17:33:42'),(36,'status_types','数据类型',1,'宠物领养',NULL,NULL,'2022-04-30 17:33:42'),(37,'status_types','数据类型',2,'宠物捐赠',NULL,NULL,'2022-04-30 17:33:42'),(38,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-04-30 19:54:39'),(39,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-04-30 19:54:39'),(40,'shangpin_types','商品类型',1,'商品类型1',NULL,NULL,'2022-04-30 19:54:39'),(41,'shangpin_types','商品类型',2,'商品类型2',NULL,NULL,'2022-04-30 19:54:39'),(42,'shangpin_types','商品类型',3,'商品类型3',NULL,NULL,'2022-04-30 19:54:39'),(43,'shangpin_order_types','订单类型',1,'已支付',NULL,NULL,'2022-04-30 19:54:40'),(44,'shangpin_order_types','订单类型',2,'退款',NULL,NULL,'2022-04-30 19:54:40'),(45,'shangpin_order_types','订单类型',3,'已发货',NULL,NULL,'2022-04-30 19:54:40'),(46,'shangpin_order_types','订单类型',4,'已收货',NULL,NULL,'2022-04-30 19:54:40'),(47,'shangpin_order_types','订单类型',5,'已评价',NULL,NULL,'2022-04-30 19:54:40'),(48,'shangpin_order_payment_types','订单支付类型',1,'现金',NULL,NULL,'2022-04-30 19:54:40'),(49,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2022-04-30 19:54:40'),(50,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2022-04-30 19:54:40'),(51,'jieshu_types','认领状态',3,'未找到',NULL,NULL,'2022-04-30 17:33:41'),(52,'jieshu_types','认领状态',4,'已找到',NULL,NULL,'2022-04-30 17:33:41');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `ziyuanzhe_id` int(11) DEFAULT NULL COMMENT '自愿者',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`ziyuanzhe_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,1,NULL,'发布内容1',NULL,1,'2022-04-30 19:54:56','2022-04-30 19:54:56','2022-04-30 19:54:56'),(2,'帖子标题2',3,2,NULL,'发布内容2',NULL,1,'2022-04-30 19:54:56','2022-04-30 19:54:56','2022-04-30 19:54:56'),(3,'帖子标题3',1,3,NULL,'发布内容3',NULL,1,'2022-04-30 19:54:56','2022-04-30 19:54:56','2022-04-30 19:54:56'),(4,'帖子标题4',1,4,NULL,'发布内容4',NULL,1,'2022-04-30 19:54:56','2022-04-30 19:54:56','2022-04-30 19:54:56'),(5,'帖子标题5',1,5,NULL,'发布内容5',NULL,1,'2022-04-30 19:54:56','2022-04-30 19:54:56','2022-04-30 19:54:56'),(9,NULL,1,NULL,NULL,'登录后才能查看数据详情页面和评论、留言、收藏等操作',5,2,'2022-04-30 21:20:31',NULL,'2022-04-30 21:20:31'),(10,NULL,NULL,NULL,1,'管理评论21',5,2,'2022-04-30 21:31:23',NULL,'2022-04-30 21:31:23');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',1,'http://localhost:8080/liulangdongwujiuzhug/upload/news1.jpg','2022-04-30 19:54:56','公告详情1','2022-04-30 19:54:56'),(2,'公告标题2',3,'http://localhost:8080/liulangdongwujiuzhug/upload/news2.jpg','2022-04-30 19:54:56','公告详情2','2022-04-30 19:54:56'),(3,'公告标题3',3,'http://localhost:8080/liulangdongwujiuzhug/upload/news3.jpg','2022-04-30 19:54:56','公告详情3','2022-04-30 19:54:56'),(4,'公告标题4',3,'http://localhost:8080/liulangdongwujiuzhug/upload/news4.jpg','2022-04-30 19:54:56','公告详情4','2022-04-30 19:54:56'),(5,'公告标题5',3,'http://localhost:8080/liulangdongwujiuzhug/upload/news5.jpg','2022-04-30 19:54:56','公告详情5','2022-04-30 19:54:56');

/*Table structure for table `shangpin` */

DROP TABLE IF EXISTS `shangpin`;

CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号  Search111 ',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `shangpin_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `shangpin_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `shangpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/积分 ',
  `shangpin_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `shangpin_content` text COMMENT '商品介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `shangpin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `shangpin` */

insert  into `shangpin`(`id`,`shangpin_uuid_number`,`shangpin_name`,`shangpin_photo`,`shangpin_types`,`shangpin_kucun_number`,`shangpin_old_money`,`shangpin_new_money`,`shangpin_clicknum`,`shangpin_content`,`shangxia_types`,`shangpin_delete`,`create_time`) values (1,'165131969644128','商品名称1','http://localhost:8080/liulangdongwujiuzhug/upload/shangpin1.jpg',3,100,'712.27','40.01',471,'商品介绍1',1,1,'2022-04-30 19:54:56'),(2,'165131969644257','商品名称2','http://localhost:8080/liulangdongwujiuzhug/upload/shangpin2.jpg',3,102,'528.71','275.13',157,'商品介绍2',1,1,'2022-04-30 19:54:56'),(3,'165131969644226','商品名称3','http://localhost:8080/liulangdongwujiuzhug/upload/shangpin3.jpg',1,102,'835.32','313.65',367,'商品介绍3',1,1,'2022-04-30 19:54:56'),(4,'165131969644222','商品名称4','http://localhost:8080/liulangdongwujiuzhug/upload/shangpin4.jpg',2,104,'862.21','330.85',251,'商品介绍4',1,1,'2022-04-30 19:54:56'),(5,'165131969644248','商品名称5','http://localhost:8080/liulangdongwujiuzhug/upload/shangpin5.jpg',3,105,'733.31','34.61',84,'商品介绍5',1,1,'2022-04-30 19:54:56');

/*Table structure for table `shangpin_commentback` */

DROP TABLE IF EXISTS `shangpin_commentback`;

CREATE TABLE `shangpin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `shangpin_commentback` */

insert  into `shangpin_commentback`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'评价内容1','2022-04-30 19:54:56','回复信息1','2022-04-30 19:54:56','2022-04-30 19:54:56'),(2,2,3,'评价内容2','2022-04-30 19:54:56','回复信息2','2022-04-30 19:54:56','2022-04-30 19:54:56'),(3,3,3,'评价内容3','2022-04-30 19:54:56','回复信息3','2022-04-30 19:54:56','2022-04-30 19:54:56'),(4,4,2,'评价内容4','2022-04-30 19:54:56','回复信息4','2022-04-30 19:54:56','2022-04-30 19:54:56'),(5,5,1,'评价内容5','2022-04-30 19:54:56','回复信息5','2022-04-30 19:54:56','2022-04-30 19:54:56'),(6,1,1,'管理后台可以回复用户的评论112','2022-04-30 21:32:56',NULL,NULL,'2022-04-30 21:32:56');

/*Table structure for table `shangpin_order` */

DROP TABLE IF EXISTS `shangpin_order`;

CREATE TABLE `shangpin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `shangpin_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `shangpin_order_courier_number` varchar(200) DEFAULT NULL COMMENT '订单快递单号',
  `shangpin_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `shangpin_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `shangpin_order` */

insert  into `shangpin_order`(`id`,`shangpin_order_uuid_number`,`address_id`,`shangpin_id`,`yonghu_id`,`buy_number`,`shangpin_order_true_price`,`shangpin_order_courier_name`,`shangpin_order_courier_number`,`shangpin_order_types`,`shangpin_order_payment_types`,`insert_time`,`create_time`) values (1,'1651325147878',6,3,1,1,'313.65',NULL,NULL,1,1,'2022-04-30 21:25:48','2022-04-30 21:25:48'),(2,'1651325147878',6,1,1,1,'40.01','京东','JD:112312512512312312',5,1,'2022-04-30 21:25:48','2022-04-30 21:25:48');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (4,1,'admin','users','管理员','ftaawzya1ehx7rj5qld630qsshkyoo79','2022-04-30 20:09:45','2022-04-30 22:35:25'),(5,1,'a1','yonghu','用户','11dlsk6w4w60lt41vgx4vqpu1koh9wwh','2022-04-30 20:22:37','2022-04-30 22:32:01');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `xunchongxinxi` */

DROP TABLE IF EXISTS `xunchongxinxi`;

CREATE TABLE `xunchongxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xunchongxinxi_name` varchar(200) DEFAULT NULL COMMENT '标题  Search111',
  `chongwu_types` int(11) DEFAULT NULL COMMENT '宠物类型 Search111',
  `xunchongxinxi_photo` varchar(200) DEFAULT NULL COMMENT '宠物图片',
  `xunchongxinxi_money` decimal(10,2) DEFAULT NULL COMMENT '已获捐数值',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jieshu_types` int(11) DEFAULT NULL COMMENT '寻宠状态',
  `xunchongxinxi_content` text COMMENT '宠物详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='寻宠请求';

/*Data for the table `xunchongxinxi` */

insert  into `xunchongxinxi`(`id`,`xunchongxinxi_name`,`chongwu_types`,`xunchongxinxi_photo`,`xunchongxinxi_money`,`yonghu_id`,`jieshu_types`,`xunchongxinxi_content`,`create_time`) values (1,'标题1',2,'http://localhost:8080/liulangdongwujiuzhug/upload/chongwu1.jpg','411.95',1,4,'宠物详情1','2022-04-30 19:54:56'),(2,'标题2',1,'http://localhost:8080/liulangdongwujiuzhug/upload/chongwu2.jpg','469.87',2,3,'宠物详情2','2022-04-30 19:54:56'),(3,'标题3',1,'http://localhost:8080/liulangdongwujiuzhug/upload/chongwu3.jpg','59.69',1,4,'宠物详情3','2022-04-30 19:54:56'),(4,'标题4',3,'http://localhost:8080/liulangdongwujiuzhug/upload/chongwu4.jpg','666.76',3,3,'宠物详情4','2022-04-30 19:54:56'),(5,'标题5',1,'http://localhost:8080/liulangdongwujiuzhug/upload/chongwu5.jpg','504.09',3,3,'宠物详情5','2022-04-30 19:54:56');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_email`,`sex_types`,`new_money`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/liulangdongwujiuzhug/upload/yonghu1.jpg','17703786901','1@qq.com',2,'8646.34',1,'2022-04-30 19:54:56'),(2,'a2','123456','用户姓名2','http://localhost:8080/liulangdongwujiuzhug/upload/yonghu2.jpg','17703786902','2@qq.com',1,'46.07',1,'2022-04-30 19:54:56'),(3,'a3','123456','用户姓名3','http://localhost:8080/liulangdongwujiuzhug/upload/yonghu3.jpg','17703786903','3@qq.com',2,'347.20',1,'2022-04-30 19:54:56');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
