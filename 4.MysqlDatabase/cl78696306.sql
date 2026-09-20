-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl78696306
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `cl78696306`
--

/*!40000 DROP DATABASE IF EXISTS `cl78696306`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl78696306` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl78696306`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/1715053638675.webp');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggao`
--

DROP TABLE IF EXISTS `gonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `gonggaobiaoti` varchar(200) DEFAULT NULL COMMENT '公告标题',
  `gonggaotupian` longtext COMMENT '公告图片',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1715053696481 DEFAULT CHARSET=utf8 COMMENT='公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggao`
--

LOCK TABLES `gonggao` WRITE;
/*!40000 ALTER TABLE `gonggao` DISABLE KEYS */;
INSERT INTO `gonggao` VALUES (61,'2024-05-07 03:33:42','公告内容1','公告标题1','file/gonggaoGonggaotupian1.jpg,file/gonggaoGonggaotupian2.jpg,file/gonggaoGonggaotupian3.jpg','2024-05-07'),(62,'2024-05-07 03:33:42','公告内容2','公告标题2','file/gonggaoGonggaotupian2.jpg,file/gonggaoGonggaotupian3.jpg,file/gonggaoGonggaotupian4.jpg','2024-05-07'),(63,'2024-05-07 03:33:42','公告内容3','公告标题3','file/gonggaoGonggaotupian3.jpg,file/gonggaoGonggaotupian4.jpg,file/gonggaoGonggaotupian5.jpg','2024-05-07'),(64,'2024-05-07 03:33:42','公告内容4','公告标题4','file/gonggaoGonggaotupian4.jpg,file/gonggaoGonggaotupian5.jpg,file/gonggaoGonggaotupian6.jpg','2024-05-07'),(65,'2024-05-07 03:33:42','公告内容5','公告标题5','file/gonggaoGonggaotupian5.jpg,file/gonggaoGonggaotupian6.jpg,file/gonggaoGonggaotupian7.jpg','2024-05-07'),(66,'2024-05-07 03:33:42','公告内容6','公告标题6','file/gonggaoGonggaotupian6.jpg,file/gonggaoGonggaotupian7.jpg,file/gonggaoGonggaotupian8.jpg','2024-05-07'),(1715053696480,'2024-05-07 03:48:16','<p>111111111111111111111111111111111111111</p><p>1111111111111111111111111111111111111</p><p>11111111111111111111111111111111111111</p><p>11111111111111111111111111111111111111</p>','11111111111','file/1715053685008.webp','2024-05-07');
/*!40000 ALTER TABLE `gonggao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-05-07 03:33:42','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"回复\"],\"menu\":\"留言板\",\"menuJump\":\"列表\",\"tableName\":\"messages\"}],\"fontClass\":\"icon-common28\",\"menu\":\"留言板管理\",\"unicode\":\"&#xee2d;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-keyboard\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"预约自习室\",\"menuJump\":\"列表\",\"tableName\":\"yuyuezixishi\"}],\"fontClass\":\"icon-common3\",\"menu\":\"预约自习室管理\",\"unicode\":\"&#xeda5;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"公告\",\"menuJump\":\"列表\",\"tableName\":\"gonggao\"}],\"fontClass\":\"icon-common1\",\"menu\":\"公告管理\",\"unicode\":\"&#xeda3;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-copy\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"自习室信息\",\"menuJump\":\"列表\",\"tableName\":\"zixishixinxi\"}],\"fontClass\":\"icon-common22\",\"menu\":\"自习室信息管理\",\"unicode\":\"&#xee04;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"用户\",\"menuJump\":\"列表\",\"tableName\":\"yonghu\"}],\"fontClass\":\"icon-common8\",\"menu\":\"用户管理\",\"unicode\":\"&#xedb6;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vipcard\",\"buttons\":[\"查看\",\"修改\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"}],\"fontClass\":\"icon-common10\",\"menu\":\"轮播图管理\",\"unicode\":\"&#xedd1;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"查看\",\"预约座位\",\"立即预约\"],\"menu\":\"自习室信息\",\"menuJump\":\"列表\",\"tableName\":\"zixishixinxi\"}],\"menu\":\"座位信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"查看\",\"新增\"],\"menu\":\"留言板\",\"menuJump\":\"列表\",\"tableName\":\"messages\"}],\"menu\":\"留言板管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"查看\"],\"menu\":\"公告\",\"menuJump\":\"列表\",\"tableName\":\"gonggao\"}],\"menu\":\"公告管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-keyboard\",\"buttons\":[\"查看\"],\"menu\":\"预约自习室\",\"menuJump\":\"列表\",\"tableName\":\"yuyuezixishi\"}],\"fontClass\":\"icon-common3\",\"menu\":\"预约自习室管理\",\"unicode\":\"&#xeda5;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"查看\",\"预约座位\",\"立即预约\"],\"menu\":\"自习室信息\",\"menuJump\":\"列表\",\"tableName\":\"zixishixinxi\"}],\"menu\":\"座位信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"查看\",\"新增\"],\"menu\":\"留言板\",\"menuJump\":\"列表\",\"tableName\":\"messages\"}],\"menu\":\"留言板管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"查看\"],\"menu\":\"公告\",\"menuJump\":\"列表\",\"tableName\":\"gonggao\"}],\"menu\":\"公告管理\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"用户\",\"tableName\":\"yonghu\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext COMMENT '头像',
  `content` longtext NOT NULL COMMENT '留言内容',
  `cpicture` longtext COMMENT '留言图片',
  `reply` longtext COMMENT '回复内容',
  `rpicture` longtext COMMENT '回复图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1715053757820 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (51,'2024-05-07 03:33:42',1,'用户名1','file/messagesAvatarurl1.jpg','留言内容1','file/messagesCpicture1.jpg','回复内容1','file/messagesRpicture1.jpg'),(52,'2024-05-07 03:33:42',2,'用户名2','file/messagesAvatarurl2.jpg','留言内容2','file/messagesCpicture2.jpg','回复内容2','file/messagesRpicture2.jpg'),(53,'2024-05-07 03:33:42',3,'用户名3','file/messagesAvatarurl3.jpg','留言内容3','file/messagesCpicture3.jpg','回复内容3','file/messagesRpicture3.jpg'),(54,'2024-05-07 03:33:42',4,'用户名4','file/messagesAvatarurl4.jpg','留言内容4','file/messagesCpicture4.jpg','回复内容4','file/messagesRpicture4.jpg'),(55,'2024-05-07 03:33:42',5,'用户名5','file/messagesAvatarurl5.jpg','留言内容5','file/messagesCpicture5.jpg','回复内容5','file/messagesRpicture5.jpg'),(56,'2024-05-07 03:33:42',6,'用户名6','file/messagesAvatarurl6.jpg','留言内容6','file/messagesCpicture6.jpg','回复内容6','file/messagesRpicture6.jpg'),(1715053757819,'2024-05-07 03:49:17',1715053717562,'111','file/1715053716959.webp','<p>1111111111111</p>',NULL,'<p>2222222222222</p>',NULL);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','o6q4id3xl7kf2fsn7djlfmcea59u2r6s','2024-05-07 03:47:06','2024-05-07 04:47:06'),(2,1715053717562,'111','yonghu','用户','bdku6enpjhgem5m3xh0mt7g9fc3f2rkt','2024-05-07 03:48:42','2024-05-07 04:48:43');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-05-07 03:33:42','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` longtext COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1715053717563 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (31,'2024-05-07 03:33:42','账号1','123456','19819881111','学号1','姓名1','file/yonghuTouxiang1.jpg'),(32,'2024-05-07 03:33:42','账号2','123456','19819881112','学号2','姓名2','file/yonghuTouxiang2.jpg'),(33,'2024-05-07 03:33:42','账号3','123456','19819881113','学号3','姓名3','file/yonghuTouxiang3.jpg'),(34,'2024-05-07 03:33:42','账号4','123456','19819881114','学号4','姓名4','file/yonghuTouxiang4.jpg'),(35,'2024-05-07 03:33:42','账号5','123456','19819881115','学号5','姓名5','file/yonghuTouxiang5.jpg'),(36,'2024-05-07 03:33:42','账号6','123456','19819881116','学号6','姓名6','file/yonghuTouxiang6.jpg'),(1715053717562,'2024-05-07 03:48:37','111','111','18888888888','2356895623','111','file/1715053716959.webp');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuyuezixishi`
--

DROP TABLE IF EXISTS `yuyuezixishi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuyuezixishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zixishimingcheng` varchar(200) DEFAULT NULL COMMENT '自习室名称',
  `zixishihao` varchar(200) DEFAULT NULL COMMENT '自习室号',
  `zixishileixing` varchar(200) DEFAULT NULL COMMENT '自习室类型',
  `zixishitupian` longtext COMMENT '自习室图片',
  `zixishizuowei` int(11) DEFAULT NULL COMMENT '自习室座位',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shijian` datetime DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1715053735988 DEFAULT CHARSET=utf8 COMMENT='预约自习室';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuyuezixishi`
--

LOCK TABLES `yuyuezixishi` WRITE;
/*!40000 ALTER TABLE `yuyuezixishi` DISABLE KEYS */;
INSERT INTO `yuyuezixishi` VALUES (71,'2024-05-07 03:33:42','自习室名称1','自习室号1','自习室类型1','file/yuyuezixishiZixishitupian1.jpg,file/yuyuezixishiZixishitupian2.jpg,file/yuyuezixishiZixishitupian3.jpg',1,'账号1','手机1','2024-05-07 11:33:42'),(72,'2024-05-07 03:33:42','自习室名称2','自习室号2','自习室类型2','file/yuyuezixishiZixishitupian2.jpg,file/yuyuezixishiZixishitupian3.jpg,file/yuyuezixishiZixishitupian4.jpg',2,'账号2','手机2','2024-05-07 11:33:42'),(73,'2024-05-07 03:33:42','自习室名称3','自习室号3','自习室类型3','file/yuyuezixishiZixishitupian3.jpg,file/yuyuezixishiZixishitupian4.jpg,file/yuyuezixishiZixishitupian5.jpg',3,'账号3','手机3','2024-05-07 11:33:42'),(74,'2024-05-07 03:33:42','自习室名称4','自习室号4','自习室类型4','file/yuyuezixishiZixishitupian4.jpg,file/yuyuezixishiZixishitupian5.jpg,file/yuyuezixishiZixishitupian6.jpg',4,'账号4','手机4','2024-05-07 11:33:42'),(75,'2024-05-07 03:33:42','自习室名称5','自习室号5','自习室类型5','file/yuyuezixishiZixishitupian5.jpg,file/yuyuezixishiZixishitupian6.jpg,file/yuyuezixishiZixishitupian7.jpg',5,'账号5','手机5','2024-05-07 11:33:42'),(76,'2024-05-07 03:33:42','自习室名称6','自习室号6','自习室类型6','file/yuyuezixishiZixishitupian6.jpg,file/yuyuezixishiZixishitupian7.jpg,file/yuyuezixishiZixishitupian8.jpg',6,'账号6','手机6','2024-05-07 11:33:42'),(1715053735987,'2024-05-07 03:48:55','111111','311','考研自习室','file/1715053661810.webp',1,'111','18888888888','2024-05-07 11:48:50');
/*!40000 ALTER TABLE `yuyuezixishi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zixishixinxi`
--

DROP TABLE IF EXISTS `zixishixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zixishixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zixishimingcheng` varchar(200) DEFAULT NULL COMMENT '自习室名称',
  `zixishihao` varchar(200) DEFAULT NULL COMMENT '自习室号',
  `zixishileixing` varchar(200) DEFAULT NULL COMMENT '自习室类型',
  `zixishitupian` longtext COMMENT '自习室图片',
  `zixishijieshao` longtext COMMENT '自习室介绍',
  `zixishizuowei` int(11) DEFAULT NULL COMMENT '自习室座位',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1715053674228 DEFAULT CHARSET=utf8 COMMENT='自习室信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zixishixinxi`
--

LOCK TABLES `zixishixinxi` WRITE;
/*!40000 ALTER TABLE `zixishixinxi` DISABLE KEYS */;
INSERT INTO `zixishixinxi` VALUES (41,'2024-05-07 03:33:42','自习室名称1','自习室号1','考研自习室','file/zixishixinxiZixishitupian1.jpg,file/zixishixinxiZixishitupian2.jpg,file/zixishixinxiZixishitupian3.jpg','自习室介绍1',1),(42,'2024-05-07 03:33:42','自习室名称2','自习室号2','考研自习室','file/zixishixinxiZixishitupian2.jpg,file/zixishixinxiZixishitupian3.jpg,file/zixishixinxiZixishitupian4.jpg','自习室介绍2',2),(43,'2024-05-07 03:33:42','自习室名称3','自习室号3','考研自习室','file/zixishixinxiZixishitupian3.jpg,file/zixishixinxiZixishitupian4.jpg,file/zixishixinxiZixishitupian5.jpg','自习室介绍3',3),(44,'2024-05-07 03:33:42','自习室名称4','自习室号4','考研自习室','file/zixishixinxiZixishitupian4.jpg,file/zixishixinxiZixishitupian5.jpg,file/zixishixinxiZixishitupian6.jpg','自习室介绍4',4),(45,'2024-05-07 03:33:42','自习室名称5','自习室号5','考研自习室','file/zixishixinxiZixishitupian5.jpg,file/zixishixinxiZixishitupian6.jpg,file/zixishixinxiZixishitupian7.jpg','自习室介绍5',5),(46,'2024-05-07 03:33:42','自习室名称6','自习室号6','考研自习室','file/zixishixinxiZixishitupian6.jpg,file/zixishixinxiZixishitupian7.jpg,file/zixishixinxiZixishitupian8.jpg','自习室介绍6',6),(1715053674227,'2024-05-07 03:47:53','111111','311','考研自习室','file/1715053661810.webp','<p>11111111111111</p><p>1111111111111</p><p>111111111111111</p><p>111111111111</p><p>11111111111</p>',9);
/*!40000 ALTER TABLE `zixishixinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-07 17:41:51
