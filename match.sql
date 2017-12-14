﻿# Host: localhost  (Version: 5.5.53)
# Date: 2017-10-12 17:42:57
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "m_admin"
#

DROP TABLE IF EXISTS `m_admin`;
CREATE TABLE `m_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(20) DEFAULT NULL COMMENT '登录名',
  `password` char(36) DEFAULT NULL COMMENT 'MD5密码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

#
# Data for table "m_admin"
#

/*!40000 ALTER TABLE `m_admin` DISABLE KEYS */;
INSERT INTO `m_admin` VALUES (1,'admin306','04415c2920b90b35e097f3ba78c4438d');
/*!40000 ALTER TABLE `m_admin` ENABLE KEYS */;

#
# Structure for table "m_order"
#

DROP TABLE IF EXISTS `m_order`;
CREATE TABLE `m_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `parking_id` int(11) DEFAULT NULL COMMENT '车位id',
  `order_number` varchar(255) DEFAULT NULL COMMENT '订单编号',
  `time_start` int(1) DEFAULT NULL COMMENT '开始时间',
  `end_time` int(11) DEFAULT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='订单';

#
# Data for table "m_order"
#

/*!40000 ALTER TABLE `m_order` DISABLE KEYS */;
INSERT INTO `m_order` VALUES (1,7,2,'61651',1503908480,1506304307),(2,7,2,'752782',1504504603,1506304307),(3,7,3,'72872',1501988114,1506304307),(4,7,6,'2878',1503908480,1506304307),(5,7,5,'82782782',1501602650,NULL),(6,7,1,'782827',1503908480,1506304326),(7,7,1,'201710121507740775183837',1506304326,1507740775),(8,7,1,'201710121507740905537190',1507740902,1507740905),(9,7,1,'201710121507741205860948',1507741005,1507741205),(10,7,1,'201710121507741222679795',1507741216,1507741222),(11,7,1,'201710121507741264667995',1507741260,1507741264),(12,7,1,'201710121507787817398139',1507787813,1507787817),(13,7,2,'201710121507789547894802',1507787875,1507789547),(14,7,2,'201710121507789790121500',1507789611,1507789790),(15,7,2,'201710121507789804309027',1507789792,1507789804),(16,7,2,'201710121507789999153727',1507789806,1507789999),(17,7,3,'201710121507790121700141',1507790007,1507790121),(18,7,3,'201710121507790195752359',1507790192,1507790195),(19,7,3,'201710121507790287911485',1507790197,1507790287),(20,7,3,'201710121507790348228705',1507790289,1507790348),(21,7,2,'201710121507793360451415',1507793269,1507793360);
/*!40000 ALTER TABLE `m_order` ENABLE KEYS */;

#
# Structure for table "m_parking_lot"
#

DROP TABLE IF EXISTS `m_parking_lot`;
CREATE TABLE `m_parking_lot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `longitude` varchar(50) DEFAULT NULL COMMENT '经度',
  `address` varchar(500) DEFAULT NULL COMMENT '名称',
  `latitude` varchar(50) DEFAULT NULL COMMENT '纬度',
  `delete_time` int(11) DEFAULT NULL COMMENT '软删除',
  `state` int(11) NOT NULL DEFAULT '1' COMMENT '状态，1=闲置，0=在用',
  `num` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '车位编号',
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '车位正在使用人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index` (`id`,`num`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='车位管理表';

#
# Data for table "m_parking_lot"
#

/*!40000 ALTER TABLE `m_parking_lot` DISABLE KEYS */;
INSERT INTO `m_parking_lot` VALUES (1,'108.237171','车位1号','22.579873',NULL,1,1,NULL),(2,'108.237213','车位2号','22.579263',NULL,1,2,NULL),(3,'108.238029','车位3号','22.579372',NULL,1,3,NULL),(4,'108.237653','车位4号','22.579932',NULL,1,4,NULL),(5,'108.236092','车位5号','22.580447',NULL,1,5,NULL),(6,'108.235540','车位6号','22.579704',NULL,1,6,NULL);
/*!40000 ALTER TABLE `m_parking_lot` ENABLE KEYS */;

#
# Structure for table "m_user"
#

DROP TABLE IF EXISTS `m_user`;
CREATE TABLE `m_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `top` varchar(255) DEFAULT NULL COMMENT '头像',
  `nickname` varchar(20) DEFAULT NULL COMMENT '昵称',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `number` varchar(20) DEFAULT NULL COMMENT '车牌号',
  `openid` char(36) DEFAULT NULL COMMENT '用户唯一标识',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='用户';

#
# Data for table "m_user"
#

/*!40000 ALTER TABLE `m_user` DISABLE KEYS */;
INSERT INTO `m_user` VALUES (1,'http://www.keaidian.com/uploads/allimg/170921/5-1F921231642C2.jpg','花开宿语。','123456789','165156','51616'),(2,'http://www.keaidian.com/uploads/allimg/170921/5-1F92123161B08.jpg','空灵り','4534583','43783','483487378'),(3,'http://www.keaidian.com/uploads/allimg/170922/5-1F922224959310.jpg','陌゛雨涵','616516','61651616','5145615616'),(4,'http://www.keaidian.com/uploads/allimg/170922/5-1F922225022241.jpg','一知半解つ','3156305','2116','6156056'),(5,'http://www.keaidian.com/uploads/allimg/170917/5-1F91H31534918.jpg','重拾搁浅的梦','4834','438483','4387837'),(6,'http://www.keaidian.com/uploads/allimg/170917/5-1F91H31556112.jpg','活出别致的高傲','73278373','7837837','783783278'),(7,'https://wx.qlogo.cn/mmopen/vi_32/kXpV5eSyHLFE3vw5cXuhYcF8hzIsjXtf9LHWcl2WRoXq9TprfEtUpT38wO44dtiasAUjXibyK7Xef2pOyTtNxHcw/0','信磊','18269015598','桂A11001','o5dTt0MCMooemqJhjE1SP4QKwsRM');
/*!40000 ALTER TABLE `m_user` ENABLE KEYS */;