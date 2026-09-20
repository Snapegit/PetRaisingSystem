-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmvwq50
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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-03-16 14:41:22',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-16 14:41:22',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-16 14:41:22',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-16 14:41:22',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-16 14:41:22',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-16 14:41:22',6,'宇宙银河系月球1号','月某','13823888886','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'siliaogoumai' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chongwulingyang`
--

DROP TABLE IF EXISTS `chongwulingyang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chongwulingyang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chongwubianhao` varchar(200) DEFAULT NULL COMMENT '宠物编号',
  `chongwumingcheng` varchar(200) DEFAULT NULL COMMENT '宠物名称',
  `chongwuzhonglei` varchar(200) DEFAULT NULL COMMENT '宠物种类',
  `chongwuxingbie` varchar(200) DEFAULT NULL COMMENT '宠物性别',
  `chongwunianling` int(11) DEFAULT NULL COMMENT '宠物年龄',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `chongwuzhaopian` varchar(200) DEFAULT NULL COMMENT '宠物照片',
  `chongwuxiangqing` longtext COMMENT '宠物详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='宠物领养';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chongwulingyang`
--

LOCK TABLES `chongwulingyang` WRITE;
/*!40000 ALTER TABLE `chongwulingyang` DISABLE KEYS */;
INSERT INTO `chongwulingyang` VALUES (21,'2021-03-16 14:41:22','宠物编号1','宠物名称1','宠物种类1','雌',1,'账号1','姓名1','http://localhost:8080/ssmvwq50/upload/chongwulingyang_chongwuzhaopian1.jpg','宠物详情1'),(22,'2021-03-16 14:41:22','宠物编号2','宠物名称2','宠物种类2','雌',2,'账号2','姓名2','http://localhost:8080/ssmvwq50/upload/chongwulingyang_chongwuzhaopian2.jpg','宠物详情2'),(23,'2021-03-16 14:41:22','宠物编号3','宠物名称3','宠物种类3','雌',3,'账号3','姓名3','http://localhost:8080/ssmvwq50/upload/chongwulingyang_chongwuzhaopian3.jpg','宠物详情3'),(24,'2021-03-16 14:41:22','宠物编号4','宠物名称4','宠物种类4','雌',4,'账号4','姓名4','http://localhost:8080/ssmvwq50/upload/chongwulingyang_chongwuzhaopian4.jpg','宠物详情4'),(25,'2021-03-16 14:41:22','宠物编号5','宠物名称5','宠物种类5','雌',5,'账号5','姓名5','http://localhost:8080/ssmvwq50/upload/chongwulingyang_chongwuzhaopian5.jpg','宠物详情5'),(26,'2021-03-16 14:41:22','宠物编号6','宠物名称6','宠物种类6','雌',6,'账号6','姓名6','http://localhost:8080/ssmvwq50/upload/chongwulingyang_chongwuzhaopian6.jpg','宠物详情6');
/*!40000 ALTER TABLE `chongwulingyang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chongwuzhonglei`
--

DROP TABLE IF EXISTS `chongwuzhonglei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chongwuzhonglei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhonglei` varchar(200) DEFAULT NULL COMMENT '种类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='宠物种类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chongwuzhonglei`
--

LOCK TABLES `chongwuzhonglei` WRITE;
/*!40000 ALTER TABLE `chongwuzhonglei` DISABLE KEYS */;
INSERT INTO `chongwuzhonglei` VALUES (31,'2021-03-16 14:41:22','种类1'),(32,'2021-03-16 14:41:22','种类2'),(33,'2021-03-16 14:41:22','种类3'),(34,'2021-03-16 14:41:22','种类4'),(35,'2021-03-16 14:41:22','种类5'),(36,'2021-03-16 14:41:22','种类6');
/*!40000 ALTER TABLE `chongwuzhonglei` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmvwq50/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmvwq50/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmvwq50/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusschongwulingyang`
--

DROP TABLE IF EXISTS `discusschongwulingyang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusschongwulingyang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='宠物领养评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusschongwulingyang`
--

LOCK TABLES `discusschongwulingyang` WRITE;
/*!40000 ALTER TABLE `discusschongwulingyang` DISABLE KEYS */;
INSERT INTO `discusschongwulingyang` VALUES (141,'2021-03-16 14:41:22',1,1,'用户名1','评论内容1','回复内容1'),(142,'2021-03-16 14:41:22',2,2,'用户名2','评论内容2','回复内容2'),(143,'2021-03-16 14:41:22',3,3,'用户名3','评论内容3','回复内容3'),(144,'2021-03-16 14:41:22',4,4,'用户名4','评论内容4','回复内容4'),(145,'2021-03-16 14:41:22',5,5,'用户名5','评论内容5','回复内容5'),(146,'2021-03-16 14:41:22',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusschongwulingyang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusssiliaogoumai`
--

DROP TABLE IF EXISTS `discusssiliaogoumai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusssiliaogoumai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='饲料购买评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusssiliaogoumai`
--

LOCK TABLES `discusssiliaogoumai` WRITE;
/*!40000 ALTER TABLE `discusssiliaogoumai` DISABLE KEYS */;
INSERT INTO `discusssiliaogoumai` VALUES (151,'2021-03-16 14:41:22',1,1,'用户名1','评论内容1','回复内容1'),(152,'2021-03-16 14:41:22',2,2,'用户名2','评论内容2','回复内容2'),(153,'2021-03-16 14:41:22',3,3,'用户名3','评论内容3','回复内容3'),(154,'2021-03-16 14:41:22',4,4,'用户名4','评论内容4','回复内容4'),(155,'2021-03-16 14:41:22',5,5,'用户名5','评论内容5','回复内容5'),(156,'2021-03-16 14:41:22',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusssiliaogoumai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='宠物论坛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (81,'2021-03-16 14:41:22','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(82,'2021-03-16 14:41:22','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(83,'2021-03-16 14:41:22','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(84,'2021-03-16 14:41:22','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(85,'2021-03-16 14:41:22','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(86,'2021-03-16 14:41:22','帖子标题6','帖子内容6',6,6,'用户名6','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lingyangxiangqing`
--

DROP TABLE IF EXISTS `lingyangxiangqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lingyangxiangqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chongwubianhao` varchar(200) DEFAULT NULL COMMENT '宠物编号',
  `chongwumingcheng` varchar(200) DEFAULT NULL COMMENT '宠物名称',
  `chongwuzhonglei` varchar(200) DEFAULT NULL COMMENT '宠物种类',
  `chongwunianling` varchar(200) DEFAULT NULL COMMENT '宠物年龄',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `lingyangshijian` datetime DEFAULT NULL COMMENT '领养时间',
  `lingyangdidian` varchar(200) DEFAULT NULL COMMENT '领养地点',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='领养详情';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lingyangxiangqing`
--

LOCK TABLES `lingyangxiangqing` WRITE;
/*!40000 ALTER TABLE `lingyangxiangqing` DISABLE KEYS */;
INSERT INTO `lingyangxiangqing` VALUES (41,'2021-03-16 14:41:22','宠物编号1','宠物名称1','宠物种类1','宠物年龄1','账号1','姓名1','2021-03-16 22:41:22','领养地点1','是',''),(42,'2021-03-16 14:41:22','宠物编号2','宠物名称2','宠物种类2','宠物年龄2','账号2','姓名2','2021-03-16 22:41:22','领养地点2','是',''),(43,'2021-03-16 14:41:22','宠物编号3','宠物名称3','宠物种类3','宠物年龄3','账号3','姓名3','2021-03-16 22:41:22','领养地点3','是',''),(44,'2021-03-16 14:41:22','宠物编号4','宠物名称4','宠物种类4','宠物年龄4','账号4','姓名4','2021-03-16 22:41:22','领养地点4','是',''),(45,'2021-03-16 14:41:22','宠物编号5','宠物名称5','宠物种类5','宠物年龄5','账号5','姓名5','2021-03-16 22:41:22','领养地点5','是',''),(46,'2021-03-16 14:41:22','宠物编号6','宠物名称6','宠物种类6','宠物年龄6','账号6','姓名6','2021-03-16 22:41:22','领养地点6','是','');
/*!40000 ALTER TABLE `lingyangxiangqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='宠物资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (131,'2021-03-16 14:41:22','标题1','简介1','http://localhost:8080/ssmvwq50/upload/news_picture1.jpg','内容1'),(132,'2021-03-16 14:41:22','标题2','简介2','http://localhost:8080/ssmvwq50/upload/news_picture2.jpg','内容2'),(133,'2021-03-16 14:41:22','标题3','简介3','http://localhost:8080/ssmvwq50/upload/news_picture3.jpg','内容3'),(134,'2021-03-16 14:41:22','标题4','简介4','http://localhost:8080/ssmvwq50/upload/news_picture4.jpg','内容4'),(135,'2021-03-16 14:41:22','标题5','简介5','http://localhost:8080/ssmvwq50/upload/news_picture5.jpg','内容5'),(136,'2021-03-16 14:41:22','标题6','简介6','http://localhost:8080/ssmvwq50/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'siliaogoumai' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qingkuangfankui`
--

DROP TABLE IF EXISTS `qingkuangfankui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qingkuangfankui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chongwubianhao` varchar(200) DEFAULT NULL COMMENT '宠物编号',
  `chongwumingcheng` varchar(200) DEFAULT NULL COMMENT '宠物名称',
  `chongwuzhonglei` varchar(200) DEFAULT NULL COMMENT '宠物种类',
  `chongwunianling` varchar(200) DEFAULT NULL COMMENT '宠物年龄',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `lingyangshijian` varchar(200) DEFAULT NULL COMMENT '领养时间',
  `lingyangshizhang` varchar(200) DEFAULT NULL COMMENT '领养时长',
  `jinkuangzhaopian` varchar(200) DEFAULT NULL COMMENT '近况照片',
  `jinkuangfankui` longtext COMMENT '近况反馈',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='情况反馈';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qingkuangfankui`
--

LOCK TABLES `qingkuangfankui` WRITE;
/*!40000 ALTER TABLE `qingkuangfankui` DISABLE KEYS */;
INSERT INTO `qingkuangfankui` VALUES (71,'2021-03-16 14:41:22','宠物编号1','宠物名称1','宠物种类1','宠物年龄1','账号1','姓名1','领养时间1','十天','http://localhost:8080/ssmvwq50/upload/qingkuangfankui_jinkuangzhaopian1.jpg','近况反馈1','是',''),(72,'2021-03-16 14:41:22','宠物编号2','宠物名称2','宠物种类2','宠物年龄2','账号2','姓名2','领养时间2','十天','http://localhost:8080/ssmvwq50/upload/qingkuangfankui_jinkuangzhaopian2.jpg','近况反馈2','是',''),(73,'2021-03-16 14:41:22','宠物编号3','宠物名称3','宠物种类3','宠物年龄3','账号3','姓名3','领养时间3','十天','http://localhost:8080/ssmvwq50/upload/qingkuangfankui_jinkuangzhaopian3.jpg','近况反馈3','是',''),(74,'2021-03-16 14:41:22','宠物编号4','宠物名称4','宠物种类4','宠物年龄4','账号4','姓名4','领养时间4','十天','http://localhost:8080/ssmvwq50/upload/qingkuangfankui_jinkuangzhaopian4.jpg','近况反馈4','是',''),(75,'2021-03-16 14:41:22','宠物编号5','宠物名称5','宠物种类5','宠物年龄5','账号5','姓名5','领养时间5','十天','http://localhost:8080/ssmvwq50/upload/qingkuangfankui_jinkuangzhaopian5.jpg','近况反馈5','是',''),(76,'2021-03-16 14:41:22','宠物编号6','宠物名称6','宠物种类6','宠物年龄6','账号6','姓名6','领养时间6','十天','http://localhost:8080/ssmvwq50/upload/qingkuangfankui_jinkuangzhaopian6.jpg','近况反馈6','是','');
/*!40000 ALTER TABLE `qingkuangfankui` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siliaogoumai`
--

DROP TABLE IF EXISTS `siliaogoumai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `siliaogoumai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `siliaomingcheng` varchar(200) DEFAULT NULL COMMENT '饲料名称',
  `shiyongchongwu` varchar(200) DEFAULT NULL COMMENT '适用宠物',
  `siliaozhonglei` varchar(200) DEFAULT NULL COMMENT '饲料种类',
  `siliaopeiliao` varchar(200) DEFAULT NULL COMMENT '饲料配料',
  `chuchanggongsi` varchar(200) DEFAULT NULL COMMENT '出厂公司',
  `siliaotupian` varchar(200) DEFAULT NULL COMMENT '饲料图片',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='饲料购买';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siliaogoumai`
--

LOCK TABLES `siliaogoumai` WRITE;
/*!40000 ALTER TABLE `siliaogoumai` DISABLE KEYS */;
INSERT INTO `siliaogoumai` VALUES (51,'2021-03-16 14:41:22','饲料名称1','适用宠物1','饲料种类1','饲料配料1','出厂公司1','http://localhost:8080/ssmvwq50/upload/siliaogoumai_siliaotupian1.jpg',1,1,'2021-03-16 22:41:22',1,99.9),(52,'2021-03-16 14:41:22','饲料名称2','适用宠物2','饲料种类2','饲料配料2','出厂公司2','http://localhost:8080/ssmvwq50/upload/siliaogoumai_siliaotupian2.jpg',2,2,'2021-03-16 22:41:22',2,99.9),(53,'2021-03-16 14:41:22','饲料名称3','适用宠物3','饲料种类3','饲料配料3','出厂公司3','http://localhost:8080/ssmvwq50/upload/siliaogoumai_siliaotupian3.jpg',3,3,'2021-03-16 22:41:22',3,99.9),(54,'2021-03-16 14:41:22','饲料名称4','适用宠物4','饲料种类4','饲料配料4','出厂公司4','http://localhost:8080/ssmvwq50/upload/siliaogoumai_siliaotupian4.jpg',4,4,'2021-03-16 22:41:22',4,99.9),(55,'2021-03-16 14:41:22','饲料名称5','适用宠物5','饲料种类5','饲料配料5','出厂公司5','http://localhost:8080/ssmvwq50/upload/siliaogoumai_siliaotupian5.jpg',5,5,'2021-03-16 22:41:22',5,99.9),(56,'2021-03-16 14:41:22','饲料名称6','适用宠物6','饲料种类6','饲料配料6','出厂公司6','http://localhost:8080/ssmvwq50/upload/siliaogoumai_siliaotupian6.jpg',6,6,'2021-03-16 22:41:22',6,99.9);
/*!40000 ALTER TABLE `siliaogoumai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siliaozhonglei`
--

DROP TABLE IF EXISTS `siliaozhonglei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `siliaozhonglei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhonglei` varchar(200) DEFAULT NULL COMMENT '种类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='饲料种类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siliaozhonglei`
--

LOCK TABLES `siliaozhonglei` WRITE;
/*!40000 ALTER TABLE `siliaozhonglei` DISABLE KEYS */;
INSERT INTO `siliaozhonglei` VALUES (61,'2021-03-16 14:41:22','种类1'),(62,'2021-03-16 14:41:22','种类2'),(63,'2021-03-16 14:41:22','种类3'),(64,'2021-03-16 14:41:22','种类4'),(65,'2021-03-16 14:41:22','种类5'),(66,'2021-03-16 14:41:22','种类6');
/*!40000 ALTER TABLE `siliaozhonglei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
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
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-16 14:41:22');
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
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-16 14:41:22','用户1','123456','姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssmvwq50/upload/yonghu_zhaopian1.jpg',100),(12,'2021-03-16 14:41:22','用户2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssmvwq50/upload/yonghu_zhaopian2.jpg',100),(13,'2021-03-16 14:41:22','用户3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssmvwq50/upload/yonghu_zhaopian3.jpg',100),(14,'2021-03-16 14:41:22','用户4','123456','姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssmvwq50/upload/yonghu_zhaopian4.jpg',100),(15,'2021-03-16 14:41:22','用户5','123456','姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssmvwq50/upload/yonghu_zhaopian5.jpg',100),(16,'2021-03-16 14:41:22','用户6','123456','姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssmvwq50/upload/yonghu_zhaopian6.jpg',100);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-19 11:44:29
