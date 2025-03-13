-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmjy54g
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
) ENGINE=InnoDB AUTO_INCREMENT=1613995935048 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-02-22 11:58:23',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-02-22 11:58:23',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-02-22 11:58:23',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-02-22 11:58:23',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-02-22 11:58:23',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-02-22 11:58:23',6,'宇宙银河系月球1号','月某','13823888886','是'),(1613995464469,'2021-02-22 12:04:23',11,'广东省梅州市梅县区石扇镇帽山顶下','张三','13800000000','是'),(1613995935047,'2021-02-22 12:12:14',1613995882828,'广东省梅州市梅江区西郊街道中高峰村道','赵六','13800000000','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caixifenlei`
--

DROP TABLE IF EXISTS `caixifenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caixifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caixi` varchar(200) DEFAULT NULL COMMENT '菜系',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613995676064 DEFAULT CHARSET=utf8 COMMENT='菜系分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caixifenlei`
--

LOCK TABLES `caixifenlei` WRITE;
/*!40000 ALTER TABLE `caixifenlei` DISABLE KEYS */;
INSERT INTO `caixifenlei` VALUES (1613995335496,'2021-02-22 12:02:14','鲁菜'),(1613995341024,'2021-02-22 12:02:20','粤菜'),(1613995346239,'2021-02-22 12:02:25','凉菜'),(1613995676063,'2021-02-22 12:07:56','川菜');
/*!40000 ALTER TABLE `caixifenlei` ENABLE KEYS */;
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
  `tablename` varchar(200) DEFAULT 'shitangcaidan' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613996011376 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1613995505522,'2021-02-22 12:05:05','shitangcaidan',11,1613995422897,'山东大虾','http://localhost:8080/jspmjy54g/upload/1613995391549.jpeg',1,56,0);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmjy54g/upload/1613995706078.png'),(2,'picture2','http://localhost:8080/jspmjy54g/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmjy54g/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshitangcaidan`
--

DROP TABLE IF EXISTS `discussshitangcaidan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshitangcaidan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613996006233 DEFAULT CHARSET=utf8 COMMENT='食堂菜单评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshitangcaidan`
--

LOCK TABLES `discussshitangcaidan` WRITE;
/*!40000 ALTER TABLE `discussshitangcaidan` DISABLE KEYS */;
INSERT INTO `discussshitangcaidan` VALUES (121,'2021-02-22 11:58:23',1,1,'评论内容1','回复内容1'),(122,'2021-02-22 11:58:23',2,2,'评论内容2','回复内容2'),(123,'2021-02-22 11:58:23',3,3,'评论内容3','回复内容3'),(124,'2021-02-22 11:58:23',4,4,'评论内容4','回复内容4'),(125,'2021-02-22 11:58:23',5,5,'评论内容5','回复内容5'),(126,'2021-02-22 11:58:23',6,6,'评论内容6','回复内容6'),(1613996006232,'2021-02-22 12:13:25',1613995422897,1613995882828,'测试 ',NULL);
/*!40000 ALTER TABLE `discussshitangcaidan` ENABLE KEYS */;
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
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613996027189 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (111,'2021-02-22 11:58:23',1,'用户名1','留言内容1','测试'),(112,'2021-02-22 11:58:23',2,'用户名2','留言内容2','回复内容2'),(113,'2021-02-22 11:58:23',3,'用户名3','留言内容3','回复内容3'),(114,'2021-02-22 11:58:23',4,'用户名4','留言内容4','回复内容4'),(115,'2021-02-22 11:58:23',5,'用户名5','留言内容5','回复内容5'),(116,'2021-02-22 11:58:23',6,'用户名6','留言内容6','回复内容6'),(1613996027188,'2021-02-22 12:13:46',1613995882828,'003','测试',NULL);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1613995753439 DEFAULT CHARSET=utf8 COMMENT='美食资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2021-02-22 11:58:23','标题1','简介1','http://localhost:8080/jspmjy54g/upload/news_picture1.jpg','内容1'),(102,'2021-02-22 11:58:23','标题2','简介2','http://localhost:8080/jspmjy54g/upload/news_picture2.jpg','内容2'),(103,'2021-02-22 11:58:23','标题3','简介3','http://localhost:8080/jspmjy54g/upload/news_picture3.jpg','内容3'),(104,'2021-02-22 11:58:23','标题4','简介4','http://localhost:8080/jspmjy54g/upload/news_picture4.jpg','内容4'),(105,'2021-02-22 11:58:23','标题5','简介5','http://localhost:8080/jspmjy54g/upload/news_picture5.jpg','内容5'),(106,'2021-02-22 11:58:23','标题6','简介6','http://localhost:8080/jspmjy54g/upload/news_picture6.jpg','内容6'),(1613995753438,'2021-02-22 12:09:12','食堂资讯','食堂资讯测试','http://localhost:8080/jspmjy54g/upload/1613995734477.jpg','编辑器可传文字/图片<img src=\"http://localhost:8080/jspmjy54g/upload/1613995750436.jpeg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspmjy54g/upload/1613995750436.jpeg\">\r\n');
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
  `tablename` varchar(200) DEFAULT 'shitangcaidan' COMMENT '商品表名',
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
) ENGINE=InnoDB AUTO_INCREMENT=1613996019516 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1613995489095,'2021-02-22 12:04:49','20212222044897954993','shitangcaidan',11,1613995422897,'山东大虾','http://localhost:8080/jspmjy54g/upload/1613995391549.jpeg',1,56,56,56,56,1,'已发货','1'),(1613995518581,'2021-02-22 12:05:17','20212222051781649388','shitangcaidan',11,1613995422897,'山东大虾','http://localhost:8080/jspmjy54g/upload/1613995391549.jpeg',1,56,56,112,112,1,'已支付','1,2'),(1613995549544,'2021-02-22 12:05:49','20212222054929715719','shitangcaidan',11,1613995422897,'山东大虾','http://localhost:8080/jspmjy54g/upload/1613995391549.jpeg',1,56,56,112,112,1,'已退款','1,2'),(1613995991199,'2021-02-22 12:13:10','202122220131042733603','shitangcaidan',1613995882828,1613995856237,'青岛大虾','http://localhost:8080/jspmjy54g/upload/1613995823099.jpg',1,80,80,160,160,1,'已支付','1,2'),(1613996019515,'2021-02-22 12:13:39','202122220133938320281','shitangcaidan',1613995882828,1613995422897,'山东大虾','http://localhost:8080/jspmjy54g/upload/1613995391549.jpeg',3,56,56,168,168,1,'已支付','广东省梅州市梅江区西郊街道中高峰村道');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shitang`
--

DROP TABLE IF EXISTS `shitang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shitang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shitanghao` varchar(200) NOT NULL COMMENT '食堂号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shitangming` varchar(200) NOT NULL COMMENT '食堂名',
  `guanliyuan` varchar(200) DEFAULT NULL COMMENT '管理员',
  `shitangzhaopian` varchar(200) DEFAULT NULL COMMENT '食堂照片',
  `weishengdengji` varchar(200) DEFAULT NULL COMMENT '卫生等级',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shitangdizhi` varchar(200) DEFAULT NULL COMMENT '食堂地址',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shitanghao` (`shitanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1613995790716 DEFAULT CHARSET=utf8 COMMENT='食堂';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shitang`
--

LOCK TABLES `shitang` WRITE;
/*!40000 ALTER TABLE `shitang` DISABLE KEYS */;
INSERT INTO `shitang` VALUES (21,'2021-02-22 11:58:23','001','001','A食堂','李四','http://localhost:8080/jspmjy54g/upload/shitang_shitangzhaopian1.jpg','优','13823888881','食堂地址1',100),(22,'2021-02-22 11:58:23','食堂2','123456','食堂名2','管理员2','http://localhost:8080/jspmjy54g/upload/shitang_shitangzhaopian2.jpg','优','13823888882','食堂地址2',100),(23,'2021-02-22 11:58:23','食堂3','123456','食堂名3','管理员3','http://localhost:8080/jspmjy54g/upload/shitang_shitangzhaopian3.jpg','优','13823888883','食堂地址3',100),(24,'2021-02-22 11:58:23','食堂4','123456','食堂名4','管理员4','http://localhost:8080/jspmjy54g/upload/shitang_shitangzhaopian4.jpg','优','13823888884','食堂地址4',100),(25,'2021-02-22 11:58:23','食堂5','123456','食堂名5','管理员5','http://localhost:8080/jspmjy54g/upload/shitang_shitangzhaopian5.jpg','优','13823888885','食堂地址5',100),(26,'2021-02-22 11:58:23','食堂6','123456','食堂名6','管理员6','http://localhost:8080/jspmjy54g/upload/shitang_shitangzhaopian6.jpg','优','13823888886','食堂地址6',100),(1613995790715,'2021-02-22 12:09:50','002','001','B食堂','王五','http://localhost:8080/jspmjy54g/upload/1613995782498.jpg','良','13800000000','食堂地址2',0);
/*!40000 ALTER TABLE `shitang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shitangcaidan`
--

DROP TABLE IF EXISTS `shitangcaidan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shitangcaidan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shitanghao` varchar(200) DEFAULT NULL COMMENT '食堂号',
  `shitangming` varchar(200) DEFAULT NULL COMMENT '食堂名',
  `caipin` varchar(200) DEFAULT NULL COMMENT '菜品',
  `caixi` varchar(200) DEFAULT NULL COMMENT '菜系',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `fenliang` varchar(200) DEFAULT NULL COMMENT '分量',
  `shicai` longtext COMMENT '食材',
  `shitangdizhi` varchar(200) DEFAULT NULL COMMENT '食堂地址',
  `xiangqing` longtext COMMENT '详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  `number` int(11) NOT NULL COMMENT '座位总数',
  `selected` longtext COMMENT '已选座位[用,号隔开]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613995856238 DEFAULT CHARSET=utf8 COMMENT='食堂菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shitangcaidan`
--

LOCK TABLES `shitangcaidan` WRITE;
/*!40000 ALTER TABLE `shitangcaidan` DISABLE KEYS */;
INSERT INTO `shitangcaidan` VALUES (31,'2021-02-22 11:58:23','食堂号1','食堂名1','菜品1','菜系1','http://localhost:8080/jspmjy54g/upload/shitangcaidan_tupian1.jpg','分量1','食材1','食堂地址1','详情1',1,1,'2021-02-22 19:58:23',1,99.9,20,'1,3,5,7,9'),(32,'2021-02-22 11:58:23','食堂号2','食堂名2','菜品2','菜系2','http://localhost:8080/jspmjy54g/upload/shitangcaidan_tupian2.jpg','分量2','食材2','食堂地址2','详情2',2,2,'2021-02-22 20:12:22',3,99.9,20,'1,3,5,7,9'),(33,'2021-02-22 11:58:23','食堂号3','食堂名3','菜品3','菜系3','http://localhost:8080/jspmjy54g/upload/shitangcaidan_tupian3.jpg','分量3','食材3','食堂地址3','详情3',3,3,'2021-02-22 19:58:23',3,99.9,20,'1,3,5,7,9'),(34,'2021-02-22 11:58:23','食堂号4','食堂名4','菜品4','菜系4','http://localhost:8080/jspmjy54g/upload/shitangcaidan_tupian4.jpg','分量4','食材4','食堂地址4','详情4',4,4,'2021-02-22 19:58:23',4,99.9,20,'1,3,5,7,9'),(35,'2021-02-22 11:58:23','食堂号5','食堂名5','菜品5','菜系5','http://localhost:8080/jspmjy54g/upload/shitangcaidan_tupian5.jpg','分量5','食材5','食堂地址5','详情5',5,5,'2021-02-22 19:58:23',5,99.9,20,'1,3,5,7,9'),(36,'2021-02-22 11:58:23','食堂号6','食堂名6','菜品6','菜系6','http://localhost:8080/jspmjy54g/upload/shitangcaidan_tupian6.jpg','分量6','食材6','食堂地址6','详情6',6,6,'2021-02-22 19:58:23',6,99.9,20,'1,3,5,7,9'),(1613995422897,'2021-02-22 12:03:42','001','A食堂','山东大虾','鲁菜','http://localhost:8080/jspmjy54g/upload/1613995391549.jpeg','50kg','大虾','食堂地址1','编辑器可传文字/图片<img src=\"http://localhost:8080/jspmjy54g/upload/1613995421591.jpeg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspmjy54g/upload/1613995421591.jpeg\">\r\n',1,0,'2021-02-22 20:13:39',12,56,60,',1,1,2,1,2'),(1613995856237,'2021-02-22 12:10:55','002','B食堂','青岛大虾','川菜','http://localhost:8080/jspmjy54g/upload/1613995823099.jpg','60KG','大虾','食堂地址2','编辑器可传文字/图片<img src=\"http://localhost:8080/jspmjy54g/upload/1613995852436.jpeg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspmjy54g/upload/1613995852436.jpeg\">\r\n',0,0,'2021-02-22 20:13:10',2,80,60,',1,2');
/*!40000 ALTER TABLE `shitangcaidan` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1613995982104 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1613995982103,'2021-02-22 12:13:01',1613995882828,1613995856237,'shitangcaidan','青岛大虾','http://localhost:8080/jspmjy54g/upload/1613995823099.jpg');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','tkdnungl0hzpplm0r0flzkba4pjrnxg9','2021-02-22 12:01:04','2021-02-22 13:07:30'),(2,21,'001','shitang','管理员','l4cv1rxmkh78esj59wufgwgly9tanuot','2021-02-22 12:02:41','2021-02-22 13:02:42'),(3,11,'001','yonghu','用户','wi3kcv5adgkyz3ewrdqk17efk91usiyg','2021-02-22 12:03:55','2021-02-22 13:03:56'),(4,1613995790715,'002','shitang','管理员','epaow0p7vdzmy2km0kzgit8s5ka4u46p','2021-02-22 12:10:01','2021-02-22 13:14:35'),(5,1613995882828,'003','yonghu','用户','w9r7xf6kjcucom873dnfbgdccknkhg18','2021-02-22 12:11:29','2021-02-22 13:11:30');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-02-22 11:58:23');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaoxiliuyan`
--

DROP TABLE IF EXISTS `xiaoxiliuyan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaoxiliuyan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jiaose` varchar(200) DEFAULT NULL COMMENT '角色',
  `shitanghao` varchar(200) DEFAULT NULL COMMENT '食堂号',
  `shitangming` varchar(200) DEFAULT NULL COMMENT '食堂名',
  `dingdanhao` varchar(200) DEFAULT NULL COMMENT '订单号',
  `peisongfen` varchar(200) DEFAULT NULL COMMENT '配送分',
  `baozhuangfen` varchar(200) DEFAULT NULL COMMENT '包装分',
  `caipinfen` varchar(200) DEFAULT NULL COMMENT '菜品分',
  `shijian` datetime DEFAULT NULL COMMENT '时间',
  `jianyi` longtext COMMENT '建议',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613996065925 DEFAULT CHARSET=utf8 COMMENT='消息留言';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaoxiliuyan`
--

LOCK TABLES `xiaoxiliuyan` WRITE;
/*!40000 ALTER TABLE `xiaoxiliuyan` DISABLE KEYS */;
INSERT INTO `xiaoxiliuyan` VALUES (51,'2021-02-22 11:58:23','账号1','姓名1','角色1','食堂号1','食堂名1','订单号1','1分','1分','1分','2021-02-22 19:58:23','建议1','是',''),(52,'2021-02-22 11:58:23','账号2','姓名2','角色2','食堂号2','食堂名2','订单号2','1分','1分','1分','2021-02-22 19:58:23','建议2','是',''),(53,'2021-02-22 11:58:23','账号3','姓名3','角色3','食堂号3','食堂名3','订单号3','1分','1分','1分','2021-02-22 19:58:23','建议3','是',''),(54,'2021-02-22 11:58:23','账号4','姓名4','角色4','食堂号4','食堂名4','订单号4','1分','1分','1分','2021-02-22 19:58:23','建议4','是',''),(55,'2021-02-22 11:58:23','账号5','姓名5','角色5','食堂号5','食堂名5','订单号5','1分','1分','1分','2021-02-22 19:58:23','建议5','是',''),(56,'2021-02-22 11:58:23','账号6','姓名6','角色6','食堂号6','食堂名6','订单号6','1分','1分','1分','2021-02-22 19:58:23','建议6','是',''),(1613995598337,'2021-02-22 12:06:37','001','张三','教师','001','A食堂','20212222044897954993','4分','5分','1分','2021-02-22 20:06:22','测试\r\n','否',NULL),(1613996065924,'2021-02-22 12:14:25','003','赵六','学生','002','B食堂','202122220133938320281','4分','5分','5分','2021-02-22 20:14:11','测试\r\n','是','谢谢');
/*!40000 ALTER TABLE `xiaoxiliuyan` ENABLE KEYS */;
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
  `jiaose` varchar(200) DEFAULT NULL COMMENT '角色',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1613995882829 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-02-22 11:58:23','001','001','张三','教师','男',1,'13823888881','773890001@qq.com','http://localhost:8080/jspmjy54g/upload/yonghu_zhaopian1.jpg',9987),(12,'2021-02-22 11:58:23','用户2','123456','姓名2','学生','男',2,'13823888882','773890002@qq.com','http://localhost:8080/jspmjy54g/upload/yonghu_zhaopian2.jpg',100),(13,'2021-02-22 11:58:23','用户3','123456','姓名3','学生','男',3,'13823888883','773890003@qq.com','http://localhost:8080/jspmjy54g/upload/yonghu_zhaopian3.jpg',100),(14,'2021-02-22 11:58:23','用户4','123456','姓名4','学生','男',4,'13823888884','773890004@qq.com','http://localhost:8080/jspmjy54g/upload/yonghu_zhaopian4.jpg',100),(15,'2021-02-22 11:58:23','用户5','123456','姓名5','学生','男',5,'13823888885','773890005@qq.com','http://localhost:8080/jspmjy54g/upload/yonghu_zhaopian5.jpg',100),(16,'2021-02-22 11:58:23','用户6','123456','姓名6','学生','男',6,'13823888886','773890006@qq.com','http://localhost:8080/jspmjy54g/upload/yonghu_zhaopian6.jpg',100),(1613995882828,'2021-02-22 12:11:22','003','001','赵六','学生','男',23,'13800000000','123@qq.com','http://localhost:8080/jspmjy54g/upload/1613995911046.jpg',9751);
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

-- Dump completed on 2021-02-22 21:06:07
