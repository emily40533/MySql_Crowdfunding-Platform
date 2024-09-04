CREATE DATABASE  IF NOT EXISTS `db_109409004` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_109409004`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: db_109409004
-- ------------------------------------------------------
-- Server version	8.4.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_following`
--

DROP TABLE IF EXISTS `tbl_following`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_following` (
  `following_id` int NOT NULL AUTO_INCREMENT,
  `member_id` int NOT NULL,
  `proposal_id` int NOT NULL,
  PRIMARY KEY (`following_id`),
  KEY `member_id` (`member_id`),
  KEY `proposal_id` (`proposal_id`),
  CONSTRAINT `tbl_following_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `tbl_member` (`member_id`),
  CONSTRAINT `tbl_following_ibfk_2` FOREIGN KEY (`proposal_id`) REFERENCES `tbl_proposal` (`proposal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_following`
--

LOCK TABLES `tbl_following` WRITE;
/*!40000 ALTER TABLE `tbl_following` DISABLE KEYS */;
INSERT INTO `tbl_following` VALUES (1,1,2),(2,1,3),(3,1,4),(4,2,7),(5,3,1),(6,3,9),(7,3,5),(8,3,4),(9,4,1),(10,5,2),(11,5,3),(12,5,9),(13,7,1),(14,7,5),(15,7,7),(16,7,6),(17,8,7),(18,9,9),(19,10,1);
/*!40000 ALTER TABLE `tbl_following` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_member`
--

DROP TABLE IF EXISTS `tbl_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_member` (
  `member_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `address` varchar(255) NOT NULL,
  `cellphone_number` varchar(64) NOT NULL,
  `salt` char(64) NOT NULL,
  PRIMARY KEY (`member_id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_member`
--

LOCK TABLES `tbl_member` WRITE;
/*!40000 ALTER TABLE `tbl_member` DISABLE KEYS */;
INSERT INTO `tbl_member` VALUES (1,'李小明','in.consequat@yahoo.com','366 苗栗縣銅鑼鄉民權中路319號','0921003614','0oplfZ16tyLX'),(2,'王小新','adipiscing.enim.mi@outlook.com','600 嘉義市東區世賢八路24號','0988008346','7gB%z9Svg8EW'),(3,'張小紅','nullam.velit@yahoo.com','325 桃園市龍潭區淮子埔七路29號','0922830125','JJQF0j%tkx3i'),(4,'陳小玉','sed.auctor@hotmail.com','540 南投縣南投市三和六路1499號','0958351743','Rv$uGmL&C!%g'),(5,'林小青','sagittis.nullam@google.com','508 彰化縣和美鎮潭北路1500號','0912587773','XcZg6Be^cU2y'),(6,'黃小剛','nec.leo.morbi@protonmail.com','711 臺南市歸仁區崙頂二街1111號','0960105109','aZjy*GvZt@s*'),(7,'廖小白','sociosqu.ad@yahoo.com','411 臺中市太平區北田南路14號','0961749001','j8tI5!wG88PM'),(8,'吳小蘭','proin.non@protonmail.com','801 高雄市前金區自立九路18號','0928735721','n7UDOe0uspZk'),(9,'劉小波','arcu.vel.quam@hotmail.com','201 基隆市信義區義四路222號','0968169143','wlmM33nAD@SR'),(10,'柯小智','dui.quis.accumsan@google.com','622 嘉義縣大林鎮早知到街31號','0970691667','&@^ODhk0MH&l');
/*!40000 ALTER TABLE `tbl_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_membercredential`
--

DROP TABLE IF EXISTS `tbl_membercredential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_membercredential` (
  `credential_id` int NOT NULL AUTO_INCREMENT,
  `hashed_user_id` int NOT NULL,
  `hashed_password` varchar(200) NOT NULL,
  PRIMARY KEY (`credential_id`),
  KEY `hashed_user_id` (`hashed_user_id`),
  CONSTRAINT `tbl_membercredential_ibfk_1` FOREIGN KEY (`hashed_user_id`) REFERENCES `tbl_member` (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_membercredential`
--

LOCK TABLES `tbl_membercredential` WRITE;
/*!40000 ALTER TABLE `tbl_membercredential` DISABLE KEYS */;
INSERT INTO `tbl_membercredential` VALUES (1,1,'9d5ec65935ab2991386a2df50db27491'),(2,2,'37d3f919a7230c12a33ad33bb6a62940'),(3,3,'d2898e8f01641dc2f1c7ae967f589764'),(4,4,'6072444ce37a3e5e18db29c07d9bff2f'),(5,5,'58e537835456d27b4861bf1d0848c341'),(6,6,'bad812356d04169c5231aca6dbf2e895'),(7,7,'ce94f4cd7665791f28eb1b0339e1a146'),(8,8,'79f1c375a8045aae0647826d07cc6f77'),(9,9,'8a6b92d74b7c32075652a700e57a2bc7'),(10,10,'302b047e1bd5db87510915390368a5ac');
/*!40000 ALTER TABLE `tbl_membercredential` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_proposal`
--

DROP TABLE IF EXISTS `tbl_proposal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_proposal` (
  `proposal_id` int NOT NULL AUTO_INCREMENT,
  `proposer_id` int NOT NULL,
  `proposal_content` text,
  `category` varchar(255) NOT NULL,
  `amount_raised` int NOT NULL DEFAULT '0',
  `goal` int NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `view_num` int NOT NULL DEFAULT '0',
  `start_date` date NOT NULL,
  `due_date` date DEFAULT NULL,
  `proposal_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`proposal_id`),
  CONSTRAINT `proposer_user_id` FOREIGN KEY (`proposal_id`) REFERENCES `tbl_member` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_proposal`
--

LOCK TABLES `tbl_proposal` WRITE;
/*!40000 ALTER TABLE `tbl_proposal` DISABLE KEYS */;
INSERT INTO `tbl_proposal` VALUES (1,1,'在這場特別的百年紀念活動中，我們將透過星宇樂團和彩色西瓜樂團的精彩表演，帶您穿越時光，重溫過去的音樂經典。這將是一場難忘的音樂之旅，讓我們一起共同回憶、感受、並創造新的回憶！','音樂',9600,100000,3,43,'2024-01-16','2024-02-16','The All 100周年紀念【回憶重溫】音樂再現，穿越時光之牆！獨家合作：星宇樂團x陳藝、彩色西瓜樂團。'),(2,2,'EZPACK 隨身斜背包是您出門的最佳選擇！不僅設計時尚，而且充滿台灣風情。多功能口袋設計，讓您可以輕鬆攜帶所需物品，無論是日常生活還是旅行，都能夠輕鬆自在！','時尚',4500,5000,2,1150,'2024-04-30','2024-05-30','【台灣風情】EZPACK 隨身斜背包，多功能口袋設計，讓你輕鬆出門！'),(3,2,'我們堅定地支持性別平等，並致力於打破性別界限。這款「共融」紙藝便籤夾不僅實用，更是一種對性別平等的呼籲和支持。讓我們攜手共同建立一個更加公平、平等的社會！','藝術',2250,30000,2,8,'2024-04-17','2024-05-17','持續支持性別平等！「共融」紙藝便籤夾，讓你與性別平等同行！'),(4,2,'芒果鳳梨，這種全新的台灣特色水果，結合了芒果的香甜和鳳梨的清爽，帶給您絕佳的口感體驗！讓我們一起享受這份令人驚艷的美味！','飲食',4300,2000,2,236,'2024-03-21','2024-05-21','【令人驚艷】台灣新鳳梨品種：芒果鳳梨，帶給你獨特的口感體驗！'),(5,4,'Formosa Beats 是您成為鋼鼓樂手的最佳選擇！我們提供專業的鋼鼓教學和表演，讓您在音樂的世界中展現自己的才華，一起享受鋼鼓音樂的熱潮！','音樂',14400,35000,2,251,'2024-05-01','2024-06-01','鋼鼓音樂熱潮！加入Formosa Beats，成為鋼鼓樂手！'),(6,6,'ZLight MINi補光折疊穩定器，是您自拍時的最佳助手！絕妙的設計和高品質的補光效果，讓您在自拍時輕鬆展現最佳狀態，捕捉每一個美好時刻！','攝影',10500,10000,3,5893,'2024-01-06','2024-03-06','【絕妙設計】ZLight MINi補光折疊穩定器，自拍必備良伴！'),(7,6,'讓我們一起來享受日系可愛風格的電動麻將組帶來的樂趣吧！這款電動麻將組不僅外觀可愛，而且操作簡單。','遊戲',10000,300000,2,31,'2024-05-03','2024-06-03','日系可愛風格電動麻將組'),(8,8,'您是否喜歡親手製作木工作品？現在有了DIY木工四合一工具，您可以輕鬆應對各種木工創意！無論是裁切、鑽床、砂光還是車輪，都能在這一款工具上輕松實現！讓我們一起享受手作樂趣，創造出屬於自己的精美木工作品！','教育',0,100000,1,0,'2024-07-04','2024-08-04','一機搞定木工創意！DIY木工四合一工具，享受手作樂趣！'),(9,8,'每個人心中都有著一份對未來的好奇與渴望，而奇幻狗狗塔羅牌將為您打開神秘的命運之門！透過這套獨特的塔羅牌，您將能夠解讀未來的種種謎團，探索自己的命運之路。讓我們一起勇敢地面對未來，探索命運的奧秘！','藝術',19000,20000,2,57,'2024-04-18','2024-06-18','探索神秘命運！奇幻狗狗塔羅牌，解讀未來之謎！'),(10,9,'每天使用的化妝品是否也讓您感到困擾？現在有了weye美妝專業烘乾機，讓您的化妝品保持乾爽清潔，徹底拒絕刷菌上臉的煩惱！這款烘乾機擁有UV紫外線滅菌功能，能夠有效殺滅化妝品中的細菌，讓您的皮膚更加健康，化妝效果更加持久！','科技',0,30000,4,3148,'2024-02-26','2024-04-26','weye美妝專業烘乾機，讓你的化妝品保持乾爽清潔！，拒絕刷菌上臉！'),(11,10,'您是否渴望擁有一款時尚又實用的斜背包？SWAGPACK 斜背包將會是您的最佳選擇！時尚設計，展現個人風格，無論是日常穿搭還是旅行出行，都能夠襯托出您獨特的品味和風格！讓我們一起成為街頭的時尚潮流！','時尚',450,8000,4,124,'2024-04-10','2024-05-10','【潮流精品】SWAGPACK 斜背包，時尚設計，展現個人風格！'),(12,10,'UM slim 秒收輕便雨傘不僅是一件抗風雨的實用工具，更是一種生活方式的象徵。它的獨特之處在於它的極輕極薄設計，成為世界上重量最輕的折傘之一。這款雨傘採用先進的材料和工藝，使其重量極輕，方便攜帶，無論是放在包包裡、手提袋還是口袋中，都絲毫不會增添負擔。其獨特的秒收設計讓您在下雨時迅速打開，隨時為您提供防雨保護，同時收起來也同樣輕鬆迅速。UM slim 雨傘的便攜性和實用性將讓您在雨天的城市生活中輕鬆自在，無懼風雨。','時尚',8400,10000,4,825,'2024-02-01','2024-04-01','【世界上重量最輕折傘 】UM slim 秒收輕便雨傘，讓你無負擔');
/*!40000 ALTER TABLE `tbl_proposal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_proposal_option`
--

DROP TABLE IF EXISTS `tbl_proposal_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_proposal_option` (
  `proposal_option_id` int NOT NULL AUTO_INCREMENT,
  `proposal_id` int NOT NULL,
  `proposal_option_name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`proposal_option_id`),
  KEY `tbl_proposal_option_ibfk_1` (`proposal_id`),
  CONSTRAINT `tbl_proposal_option_ibfk_1` FOREIGN KEY (`proposal_id`) REFERENCES `tbl_proposal` (`proposal_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_proposal_option`
--

LOCK TABLES `tbl_proposal_option` WRITE;
/*!40000 ALTER TABLE `tbl_proposal_option` DISABLE KEYS */;
INSERT INTO `tbl_proposal_option` VALUES (1,1,'The All 100周年紀念【回憶重溫】',2400.00),(2,2,'斜背包 - A款式',350.00),(3,2,'斜背包 - B款式',550.00),(4,3,'紙藝便籤夾 - A套組',250.00),(5,3,'紙藝便籤夾 - B套組',350.00),(6,3,'紙藝便籤夾 - C套組',450.00),(7,4,'芒果鳳梨 - 5入',500.00),(8,4,'芒果鳳梨 - 10入',900.00),(9,5,'鋼鼓學院 - A課程',3600.00),(10,5,'鋼鼓學院 - B課程',4800.00),(11,5,'鋼鼓學院 - C課程',6000.00),(12,6,'ZLight MINi補光折疊穩定器 - A套組',3000.00),(13,6,'ZLight MINi補光折疊穩定器 - B套組',3500.00),(14,7,'日系可愛風格電動麻將組',10000.00),(15,8,'DIY木工四合一工具',2000.00),(16,9,'奇幻狗狗塔羅牌 - 柴犬套組',1000.00),(17,9,'奇幻狗狗塔羅牌 - 哈士奇套組',1000.00),(18,9,'奇幻狗狗塔羅牌 - 拉布拉多套組',1000.00),(19,9,'單純想贊助',1000.00),(20,10,'美妝工具烘乾機',800.00),(21,11,'斜背包 - A款式',450.00),(22,11,'斜背包 - B款式',550.00),(23,12,'輕便雨傘 - A款式',1200.00),(24,12,'輕便雨傘 - B款式',1200.00),(25,12,'輕便雨傘 - C款式',1200.00);
/*!40000 ALTER TABLE `tbl_proposal_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_record`
--

DROP TABLE IF EXISTS `tbl_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_record` (
  `record_id` int NOT NULL AUTO_INCREMENT,
  `sponsor_id` int NOT NULL,
  `proposal_option_id` int NOT NULL,
  `rating` int DEFAULT NULL,
  `review` varchar(255) DEFAULT NULL,
  `response` varchar(255) DEFAULT NULL,
  `proposal_id` int DEFAULT NULL,
  PRIMARY KEY (`record_id`),
  KEY `sponsor_id` (`sponsor_id`),
  KEY `proposal_option_id` (`proposal_option_id`),
  CONSTRAINT `tbl_record_ibfk_1` FOREIGN KEY (`sponsor_id`) REFERENCES `tbl_member` (`member_id`),
  CONSTRAINT `tbl_record_ibfk_2` FOREIGN KEY (`proposal_option_id`) REFERENCES `tbl_proposal_option` (`proposal_option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_record`
--

LOCK TABLES `tbl_record` WRITE;
/*!40000 ALTER TABLE `tbl_record` DISABLE KEYS */;
INSERT INTO `tbl_record` VALUES (1,1,23,3,'物流速度太慢了，等了很久才收到貨，產品品質也一般。','非常抱歉給您帶來不便，我們會加強物流管理，並對產品質量進行檢查，感謝您的反饋。',12),(2,1,13,4,'這款產品的CP值很高，值得推薦。','非常感謝您的推薦，我們會繼續努力，提供更多高CP值的產品！',6),(3,1,6,NULL,NULL,NULL,3),(4,3,14,3,'使用過程中發現了一些小問題，希望能改進。','感謝您的反饋，請您聯繫我們的客服，我們會盡快解決您的問題並進行改進。',7),(5,3,17,4,'價錢合理，品質優良，使用體驗也很好，是個不錯的選擇。',NULL,9),(6,3,2,3,'產品一般，與預期有差距。',NULL,2),(7,5,1,3,'包裝有點簡陋，產品本身還可以，但感覺CP值不高。','感謝您的反饋，我們會改進包裝並進一步提升產品CP值，希望下次能讓您更滿意。',1),(8,4,8,NULL,NULL,NULL,4),(9,7,9,3,'使用感受不錯','感謝您的肯定，我們會繼續努力，為您提供更好的使用體驗。',5),(10,7,7,NULL,NULL,NULL,4),(11,7,3,2,'產品有損壞，雖然客服處理了，但感覺購物體驗不好。',NULL,2),(12,8,24,NULL,'品質不錯',NULL,12),(13,8,13,NULL,NULL,NULL,6),(14,8,2,3,'包裝破損，收到時有些失望，產品倒是正常。','抱歉讓您失望了，我們會改進包裝，確保未來的物流過程中不再出現這樣的問題。',2),(15,10,19,5,'這款產品真的很不錯','非常感謝您的肯定，我們會繼續努力，提供更多優質產品！',9),(16,10,19,5,'這款產品品質很好，做工精細，使用起來非常方便。非常推薦！','非常感謝您的推薦，我們很高興您喜歡這款產品，期待您再次光臨。',9),(17,10,1,3,'用了一段時間後出現問題，感覺產品質量有待提高。','非常抱歉讓您遇到這個問題，請聯繫客服，我們會提供解決方案並改進產品質量。',1),(18,10,16,2,'產品描述與實物有些出入，感覺有點被誤導了，不是很滿意。','對不起給您帶來困擾，我們會重新審視產品描述，確保與實物一致，感謝您的反饋。',9),(19,10,17,5,'非常實用，設計也很美觀，完全滿足我的需求。',NULL,9),(20,10,18,3,'使用時感覺不太順手，設計有待改進。','感謝您的反饋，我們會仔細研究改進設計，讓使用體驗更加順暢。',9);
/*!40000 ALTER TABLE `tbl_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sponsorrecord`
--

DROP TABLE IF EXISTS `tbl_sponsorrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_sponsorrecord` (
  `record_id` int NOT NULL AUTO_INCREMENT,
  `member_id` int NOT NULL,
  `proposal_option_id` int NOT NULL,
  `one_unit_price` decimal(10,2) NOT NULL,
  `purchase_volume` int NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `proposal_id` int DEFAULT NULL,
  PRIMARY KEY (`record_id`),
  KEY `tbl_sponsorrecord_ibfk_1` (`member_id`),
  KEY `tbl_sponsorrecord_ibfk_2_idx` (`proposal_option_id`),
  CONSTRAINT `tbl_sponsorrecord_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `tbl_member` (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sponsorrecord`
--

LOCK TABLES `tbl_sponsorrecord` WRITE;
/*!40000 ALTER TABLE `tbl_sponsorrecord` DISABLE KEYS */;
INSERT INTO `tbl_sponsorrecord` VALUES (1,1,23,1200.00,3,3600.00,12),(2,1,13,3500.00,2,7000.00,6),(3,1,6,450.00,5,2250.00,3),(4,3,14,10000.00,1,10000.00,7),(5,3,17,1000.00,4,4000.00,9),(6,3,2,450.00,1,450.00,2),(7,5,1,2400.00,3,7200.00,1),(8,4,8,900.00,2,1800.00,4),(9,7,9,3600.00,4,14400.00,5),(10,7,7,500.00,5,2500.00,4),(11,7,3,550.00,5,2750.00,2),(12,8,24,1200.00,4,4800.00,12),(13,8,13,3500.00,1,3500.00,6),(14,8,2,350.00,5,1750.00,2),(15,10,19,1000.00,1,1000.00,9),(16,10,19,1000.00,2,2000.00,9),(17,10,1,2400.00,1,2400.00,1),(18,10,16,1000.00,5,5000.00,9),(19,10,17,1000.00,4,4000.00,9),(20,10,18,1000.00,3,3000.00,9);
/*!40000 ALTER TABLE `tbl_sponsorrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_109409004'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_CreateProposalOption` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_CreateProposalOption`(
    IN in_proposal_id INT,
    IN in_proposal_option_name VARCHAR(255),
    IN in_price DECIMAL(13,4),
    OUT affected_row_num INT
)
BEGIN
    DECLARE temp INT DEFAULT 0;

    IF EXISTS (SELECT proposal_id FROM tbl_proposal WHERE proposal_id = in_proposal_id) 
    THEN
        INSERT INTO tbl_proposal_option (proposal_id, proposal_option_name, price)
        VALUES (in_proposal_id, in_proposal_option_name, in_price);
        
        SELECT ROW_COUNT() INTO temp;
        
        IF temp > 0 THEN
            SELECT proposal_id, proposal_option_name, price
            FROM tbl_proposal_option
            WHERE proposal_id = in_proposal_id;
        END IF;
    END IF;
	SELECT temp INTO affected_row_num;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_CreateSponsorRecord` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_CreateSponsorRecord`(
    IN in_sponsor_record_id INT,
    IN in_sponsor_id INT,
    IN in_proposal_option_id INT,
    IN in_purchase_volume INT,
    OUT affected_row_num INT
)
BEGIN
    DECLARE temp INT DEFAULT 0;
    
    INSERT INTO `tbl_sponsorrecord` (record_id, member_id, proposal_option_id, purchase_volume, one_unit_price, total_price)
    SELECT 
        in_sponsor_record_id, 
        in_sponsor_id, 
        in_proposal_option_id, 
        in_purchase_volume,
        proposal_option.price AS one_unit_price,
        proposal_option.price * in_purchase_volume AS total_price
    FROM 
        `tbl_proposal_option` proposal_option
    WHERE 
        proposal_option.proposal_option_id = in_proposal_option_id;
    
   SELECT ROW_COUNT() INTO temp;

    SET affected_row_num = temp;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetFollowedProposalsByMember` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_GetFollowedProposalsByMember`(
    IN in_member_id INT
)
BEGIN
    -- Select followed proposals with status 2
    SELECT 
        f.member_id, 
        pp.proposal_id,
        pp.proposal_title AS proposal_title,
        pp.amount_raised AS amount_raised,
        pp.goal AS goal
    FROM
        tbl_following f
    JOIN
        tbl_proposal pp ON pp.proposal_id = f.proposal_id
    WHERE
        f.member_id = in_member_id
        AND pp.status = 2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetOngoingProposalOptionbyRating` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_GetOngoingProposalOptionbyRating`(
    IN in_rating INT
)
BEGIN
    SELECT 
        p.proposal_id,
        p.proposal_title,
        po.proposal_option_name,
        ROUND(AVG(r.rating), 2) AS rating_avg
    FROM
        tbl_record r
    JOIN
        tbl_proposal_option po ON r.proposal_option_id = po.proposal_option_id
    JOIN
        tbl_proposal p ON po.proposal_id = p.proposal_id
    WHERE
        r.rating IS NOT NULL
    GROUP BY 
        p.proposal_id, p.proposal_title, po.proposal_option_name
    HAVING 
        rating_avg >= in_rating
    ORDER BY 
        rating_avg DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetProposalByCompletionRate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_GetProposalByCompletionRate`(
    IN ratio FLOAT
)
BEGIN
    SELECT 
        proposal_id,
        proposal_title,
        amount_raised,
        goal,
        ROUND(amount_raised / goal, 2) AS ratio
    FROM
        tbl_proposal
    WHERE
        (amount_raised / goal) >= ratio
    ORDER BY
        ratio DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetRecommendedProposals` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_GetRecommendedProposals`(
    IN member_id INT
)
BEGIN
    CREATE TEMPORARY TABLE IF NOT EXISTS TempRecommendedProposals AS (
        SELECT 
            pp.proposal_id, 
            pp.proposal_title, 
            pp.status, 
            pp.view_num
        FROM 
            tbl_proposal pp
        JOIN 
            tbl_sponsorrecord sr ON pp.proposal_id = sr.proposal_id
        JOIN 
            tbl_proposal_option po ON sr.proposal_option_id = po.proposal_option_id
        WHERE 
            sr.member_id IN (
                SELECT DISTINCT sr2.member_id
                FROM tbl_sponsorrecord sr2
                WHERE sr2.proposal_option_id IN (
                    SELECT proposal_option_id
                    FROM tbl_sponsorrecord
                    WHERE member_id = member_id
                )
                AND sr2.member_id != member_id
            )
            AND pp.status = 2
            AND pp.proposer_id != member_id
    );

    IF EXISTS (SELECT 1 FROM TempRecommendedProposals) THEN
        SELECT 
            proposal_id, 
            proposal_title, 
            status, 
            view_num
        FROM 
            TempRecommendedProposals
        ORDER BY 
            view_num DESC
        LIMIT 5;
    ELSE
        SELECT 
            proposal_id, 
            proposal_title, 
            status, 
            view_num
        FROM 
            tbl_proposal
        WHERE 
            status = 2
        ORDER BY 
            view_num DESC
        LIMIT 5;
    END IF;
    DROP TEMPORARY TABLE IF EXISTS TempRecommendedProposals;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetUnrepliedReviews` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_GetUnrepliedReviews`(
    IN proposer_member_id INT
)
BEGIN
    SELECT 
        p.proposer_id AS member_id,
        p.proposal_id,
        p.proposal_title,
        r.record_id,
        r.review,
        r.response
    FROM
        tbl_record r
    JOIN
        tbl_proposal p ON p.proposal_id = r.proposal_id
    WHERE
        p.proposer_id = proposer_member_id
        AND r.response IS NULL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Login`(
	IN in_email VARCHAR(64),
    IN in_hashed_password VARCHAR(200),
    OUT status_code INT
)
BEGIN
    IF NOT EXISTS (SELECT email FROM tbl_member WHERE email = in_email)
    THEN
		SET status_code = 3;
	ELSEIF EXISTS (SELECT email, hashed_password FROM tbl_member 
    JOIN tbl_membercredential mc ON member_id = mc.credential_id
    WHERE email = in_email AND hashed_password = in_hashed_password)
    THEN
		SET status_code = 1;
	ELSEIF EXISTS (SELECT email, hashed_password FROM tbl_member 
    JOIN tbl_membercredential mc ON member_id = mc.credential_id
    WHERE email = in_email AND hashed_password != in_hashed_password)
    THEN
        SET status_code = 2;
	ELSE
		SET status_code = 3;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_RegisterMember` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_RegisterMember`(
	IN in_name VARCHAR(64),
    IN in_email VARCHAR(64),
    IN in_address VARCHAR(255),
    IN in_cellphone_number VARCHAR(64),
    IN in_salt CHAR(64),
    IN in_hashed_password CHAR(64), 
    OUT status_code int
)
BEGIN

    IF EXISTS (SELECT email FROM tbl_member WHERE email = in_email)
    THEN
    SET status_code =2;
    
    ELSE INSERT INTO tbl_member(name, cellphone_number, email, salt, address)
        VALUES (in_name, in_cellphone_number, in_email, in_salt, in_address);
        
        INSERT INTO tbl_membercredential(hashed_user_id, hashed_password)
        SELECT member_id, in_hashed_password
		FROM tbl_member
        WHERE email = in_email;
        
		SELECT m.member_id, m.name, m.email, mc.hashed_password as password,
				m.salt, m.cellphone_number, m.address
		FROM
			tbl_member m
		JOIN
			tbl_membercredential mc ON m.member_id = mc.hashed_user_id
		WHERE m.email = in_email;
		SET status_code = 1;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_UpdateProposalStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpdateProposalStatus`(
	IN in_proposal_id INT,
    IN in_status INT,
    OUT affected_row_num int
)
BEGIN
	DECLARE temp INT DEFAULT 0;

    IF in_status BETWEEN 1 AND 4 THEN
        IF (SELECT status FROM tbl_proposal WHERE proposal_id = in_proposal_id) = 1 AND in_status = 2 THEN
            UPDATE tbl_proposal
            SET status = in_status
            WHERE proposal_id = in_proposal_id;
        ELSEIF (SELECT status FROM tbl_proposal WHERE proposal_id = in_proposal_id) IN (1, 3) AND in_status = 4 THEN
            UPDATE tbl_proposal
            SET status = in_status
            WHERE proposal_id = in_proposal_id;
        ELSEIF (SELECT status FROM tbl_proposal WHERE proposal_id = in_proposal_id) = 2 AND in_status = 3 THEN
            UPDATE tbl_proposal
            SET status = in_status
            WHERE proposal_id = in_proposal_id;
        END IF;

        SELECT ROW_COUNT() INTO temp;

        IF temp > 0 THEN
            SELECT proposal_id, status
            FROM tbl_proposal
            WHERE proposal_id = in_proposal_id;
        END IF;
    END IF;
    SELECT temp INTO affected_row_num;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_UpdatePwd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpdatePwd`(
	IN in_member_id INT,
    IN in_hashed_password CHAR(64), 
    IN in_new_pwd CHAR(64),
	IN in_salt CHAR(64),
    OUT status_code INT
)
BEGIN
    IF NOT EXISTS (SELECT member_id FROM tbl_member WHERE member_id = in_member_id)
    THEN
		SET status_code = 3;
	ELSE
		IF EXISTS (SELECT * FROM tbl_member
			JOIN tbl_membercredential ON hashed_user_id = member_id
			WHERE member_id = in_member_id
            AND (hashed_password = in_hashed_password))
		THEN 
			UPDATE tbl_member
			SET salt = in_salt
			WHERE member_id = in_member_id;
            
			UPDATE tbl_membercredential
			SET hashed_password = in_new_pwd
			WHERE hashed_user_id = in_member_id;
			
            SET status_code = 1;
		ELSE
			SET status_code = 2;
	END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-11 22:42:14
