/*
Navicat MySQL Data Transfer

Source Server         : wyh
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : duodian

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-05-15 19:12:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for classify_list
-- ----------------------------
DROP TABLE IF EXISTS `classify_list`;
CREATE TABLE `classify_list` (
  `categoryId` varchar(200) NOT NULL,
  `categoryName` varchar(200) NOT NULL,
  `categoryType` int(10) NOT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classify_list
-- ----------------------------
INSERT INTO `classify_list` VALUES ('11340', '蔬菜水果', '1');
INSERT INTO `classify_list` VALUES ('11327', '肉蛋水产', '1');
INSERT INTO `classify_list` VALUES ('10249', '粮油副食', '1');
INSERT INTO `classify_list` VALUES ('11350', '熟食速食', '1');
INSERT INTO `classify_list` VALUES ('11196', '牛奶冰品', '1');
INSERT INTO `classify_list` VALUES ('10250', '酒水饮品', '1');
INSERT INTO `classify_list` VALUES ('11216', '休闲小食', '1');
INSERT INTO `classify_list` VALUES ('10991', '冲调固饮', '1');
INSERT INTO `classify_list` VALUES ('10252', '母婴天地', '1');
INSERT INTO `classify_list` VALUES ('10992', '进口专区', '1');
INSERT INTO `classify_list` VALUES ('10993', '美妆个护', '1');
INSERT INTO `classify_list` VALUES ('10254', '纸品家清', '1');
INSERT INTO `classify_list` VALUES ('10567', '家居日用', '1');

-- ----------------------------
-- Table structure for global_classify_list
-- ----------------------------
DROP TABLE IF EXISTS `global_classify_list`;
CREATE TABLE `global_classify_list` (
  `categoryId` varchar(100) NOT NULL,
  `categoryName` varchar(100) NOT NULL,
  `categoryType` int(10) NOT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of global_classify_list
-- ----------------------------
INSERT INTO `global_classify_list` VALUES ('10794_1', '时令水果', '2');
INSERT INTO `global_classify_list` VALUES ('10795_1', '安心肉禽蛋', '2');
INSERT INTO `global_classify_list` VALUES ('10796_1', '冰鲜水产', '2');
INSERT INTO `global_classify_list` VALUES ('10797_1', '绿色蔬菜', '2');
INSERT INTO `global_classify_list` VALUES ('10798_1', '牛奶冰品', '2');
INSERT INTO `global_classify_list` VALUES ('17423_1', '主食熟食', '2');
INSERT INTO `global_classify_list` VALUES ('10800_1', '粮油速食', '2');
INSERT INTO `global_classify_list` VALUES ('10886_1', '休闲食品', '2');
INSERT INTO `global_classify_list` VALUES ('11163_1', '酒水饮料', '2');
INSERT INTO `global_classify_list` VALUES ('10803_1', '母婴用品', '2');
INSERT INTO `global_classify_list` VALUES ('10968_1', '个人洗护', '2');
INSERT INTO `global_classify_list` VALUES ('17426_1', '家庭清洁', '2');
INSERT INTO `global_classify_list` VALUES ('10806_1', '日用百货', '2');

-- ----------------------------
-- Table structure for life
-- ----------------------------
DROP TABLE IF EXISTS `life`;
CREATE TABLE `life` (
  `brandId` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `promotionPrice` float(100,0) NOT NULL,
  `promotionDisplayLable` varchar(100) DEFAULT NULL,
  `dataType` int(10) NOT NULL,
  `imageUrl` varchar(200) NOT NULL,
  `storeId` int(100) NOT NULL,
  `sort` int(10) NOT NULL,
  PRIMARY KEY (`brandId`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of life
-- ----------------------------
INSERT INTO `life` VALUES ('1', '泰国金枕榴莲【精】 约3kg', '12800', '会员价', '3', 'https://img.dmallcdn.com/20190422/72b50d3b-3e22-425e-9ce7-de5b6e8f1640_360x360H', '206', '1');
INSERT INTO `life` VALUES ('2', '妃子笑荔枝 约500g', '998', '会员价', '3', 'https://img.dmallcdn.com/20190430/23c52096-1dd6-4c80-be26-19df478ead26_360x360H', '206', '2');
INSERT INTO `life` VALUES ('3', '蓝莓【精】 约125g', '990', null, '3', 'https://img.dmallcdn.com/20181025/e37849b0-4d70-4583-9fbc-ac583637564d_360x360H', '206', '3');
INSERT INTO `life` VALUES ('4', '西红柿 约1.1kg 实惠装', '998', null, '3', 'https://img.dmallcdn.com/20180911/ff22f682-f30f-4935-aec0-57b52d853e79_360x360H', '206', '1');
INSERT INTO `life` VALUES ('5', '六鳌沙地红心蜜薯【精】 约1kg', '990', null, '3', 'https://img.dmallcdn.com/20181011/e0a0b2cd-72be-4f7d-9c8d-b64db62c1048_360x360H', '206', '2');
INSERT INTO `life` VALUES ('6', '四季豆 约500g/份', '480', '会员价', '3', 'https://img.dmallcdn.com/20180611/a4d602b0-26b1-42bc-b1d5-25fbb031e973_360x360H', '206', '3');
INSERT INTO `life` VALUES ('7', '缤纷田园鲜鸡蛋 30枚 新老包装随机', '2090', null, '3', 'https://img.dmallcdn.com/20170727/a27d485b-8382-4638-935f-58a247390eb1_360x360H', '206', '1');
INSERT INTO `life` VALUES ('8', '山楂卷 约500g 口味随机', '499', null, '3', 'https://img.dmallcdn.com/20181102/1d7aa2a1-62e4-4b49-b807-5953dc9918ea_360x360H', '206', '2');
INSERT INTO `life` VALUES ('9', '七星一号长粒香米 约500g', '390', null, '3', 'https://img.dmallcdn.com/20181129/ba5be7c5-7580-4201-89db-c692ec6f6a0b_360x360H', '206', '3');
INSERT INTO `life` VALUES ('10', '牛肉块 约1.2kg/份', '6800', null, '3', 'https://img.dmallcdn.com/20181107/067422bb-5331-45fc-9ad3-bf3e9c36a3c9_360x360H', '206', '1');
INSERT INTO `life` VALUES ('11', '鸡大腿 约500g', '1290', null, '3', 'https://img.dmallcdn.com/20190423/b4960d63-d8ff-47c8-9267-844fc51c853a_360x360H', '206', '2');
INSERT INTO `life` VALUES ('12', '优质前尖 约500g', '1390', null, '3', 'https://img.dmallcdn.com/20180404/ecbe28cc-f55c-4713-a6a5-301261d66b94_360x360H', '206', '3');
INSERT INTO `life` VALUES ('13', '厄瓜多尔虾（大） 约500g', '4490', null, '3', 'https://img.dmallcdn.com/20190510/7b1ff348-efc1-4072-a922-829074824abc_360x360H', '206', '1');
INSERT INTO `life` VALUES ('14', '巴沙鱼片 约1.2kg', '2850', null, '3', 'https://img.dmallcdn.com/20181107/fe80ee02-d8bb-46ae-9b31-98db731b026b_360x360H', '206', '2');
INSERT INTO `life` VALUES ('15', '带鱼B级2条 约600g', '1199', null, '3', 'https://img.dmallcdn.com/20170815/8b9ec626-76c5-4e11-ba98-cb605c7535a8_360x360H', '206', '3');
INSERT INTO `life` VALUES ('16', '蒙牛纯甄酸牛奶 200g', '550', '44元12件', '3', 'https://img.dmallcdn.com/20181018/5d4be408-090d-4023-9a21-8ebfdf096a28_360x360H', '206', '1');
INSERT INTO `life` VALUES ('17', '认养一头牛纯牛奶 250ml*12', '4990', '优惠券', '3', 'https://img.dmallcdn.com/20190404/7e47aa23-1676-4d93-95fb-5362496da5fd_360x360H', '206', '2');
INSERT INTO `life` VALUES ('18', '认养一头牛法国益生菌发酵酸奶 200g*12', '4690', '优惠券', '3', 'https://img.dmallcdn.com/20190328/3fbb8c30-6374-46e7-8c5e-3301ed01f3c0_360x360H', '206', '3');
INSERT INTO `life` VALUES ('19', '蒙牛纯牛奶利乐包 250ml 新老包装随机', '199', null, '3', 'https://img.dmallcdn.com/20180913/09c0fc0b-0816-435e-885a-d9881dc9098d_360x360H', '206', '1');
INSERT INTO `life` VALUES ('20', '三元酸牛奶 原味 100g*10', '790', null, '3', 'https://img.dmallcdn.com/20170517/9845cba4-ad42-4647-a517-6f44d96154f4_360x360H', '206', '2');
INSERT INTO `life` VALUES ('21', '伊利畅轻发酵乳 黄桃燕麦味 250g', '500', null, '3', 'https://img.dmallcdn.com/20180913/46049d48-51e6-41c5-9760-c20eadaee39a_360x360H', '206', '3');
INSERT INTO `life` VALUES ('22', '思念板栗肉粽 312g', '869', '5.5折', '3', 'https://img.dmallcdn.com/20180521/33ee7a6b-09e5-4919-a88b-7aee409a5253_360x360H', '206', '1');
INSERT INTO `life` VALUES ('23', '思念豆沙粽 312g', '869', '5.5折', '3', 'https://img.dmallcdn.com/20180521/44746318-e609-46a5-8345-bb0dfb2e95ba_360x360H', '206', '2');
INSERT INTO `life` VALUES ('24', '思念猪肉粽 312g', '869', '5.5折', '3', 'https://img.dmallcdn.com/20180521/7ab942e0-7a8f-4a0c-8bbb-5cb0a25eccc0_360x360H', '206', '3');

-- ----------------------------
-- Table structure for local_banner
-- ----------------------------
DROP TABLE IF EXISTS `local_banner`;
CREATE TABLE `local_banner` (
  `brandId` int(10) NOT NULL AUTO_INCREMENT,
  `dataType` int(10) NOT NULL,
  `imageUrl` varchar(200) NOT NULL,
  `resource` varchar(200) NOT NULL,
  `sort` int(10) NOT NULL,
  PRIMARY KEY (`brandId`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of local_banner
-- ----------------------------
INSERT INTO `local_banner` VALUES ('1', '5', 'https://img.dmallcdn.com/mIndex/201905/67a4eb9f-bc75-4f8d-ae13-156792e431ef_750H', 'https://a.dmall.com/act/Kqv6AGSnWXf.html?erpStoreId=206&dmfrom=wx&from=wx&shareKey=1557798308269', '1');
INSERT INTO `local_banner` VALUES ('2', '5', 'https://img.dmallcdn.com/mIndex/201905/da8cd5dd-4f63-4e8f-b69d-0a80918282ce_750H', 'https://a.dmall.com/act/CIOMf3kvmRctWVF.html?erpStoreId=206&dmfrom=wx&from=wx&shareKey=1557798308269', '2');
INSERT INTO `local_banner` VALUES ('3', '5', 'https://img.dmallcdn.com/mIndex/201905/64aad18c-b34b-4f70-951b-c87b3d93f906_750H', 'https://a.dmall.com/act/zI42gUb6awtHuAk.html?erpStoreId=206&dmfrom=wx&from=wx&shareKey=1557798308269', '3');
INSERT INTO `local_banner` VALUES ('4', '5', 'https://img.dmallcdn.com/mIndex/201905/ae7a8479-094e-40a6-b0bd-ffafc0cd949e_750H', 'http://t.dmall.com/3Z5dfc?erpStoreId=206&dmfrom=wx&from=wx&shareKey=1557798308269', '4');
INSERT INTO `local_banner` VALUES ('5', '5', 'https://img.dmallcdn.com/mIndex/201905/fe42e914-bca6-4bdd-8ce4-e0ada6c66db2_750H', 'http://t.dmall.com/bpmXPJ?erpStoreId=206&dmfrom=wx&from=wx&shareKey=1557798308269', '5');
INSERT INTO `local_banner` VALUES ('6', '5', 'https://img.dmallcdn.com/mIndex/201905/843c3667-01b9-4ba3-8d6d-e5107698bdac_750H', 'http://t.dmall.com/Jfgevv?erpStoreId=206&dmfrom=wx&from=wx&shareKey=1557798308269', '6');
INSERT INTO `local_banner` VALUES ('7', '5', 'https://img.dmallcdn.com/mIndex/201905/67292c5c-c969-478a-b332-3d0ea8a5805e_750H', 'https://t.dmall.com/hyBUp4?erpStoreId=206&dmfrom=wx&from=wx&shareKey=1557798308269', '7');
INSERT INTO `local_banner` VALUES ('8', '5', 'https://img.dmallcdn.com/mIndex/201905/15c32269-047b-4a01-92ef-b93cd6255f0b_750H', 'http://t.dmall.com/WO59cK?erpStoreId=206&dmfrom=wx&from=wx&shareKey=1557798308269', '8');
INSERT INTO `local_banner` VALUES ('9', '5', 'https://img.dmallcdn.com/mIndex/201905/84a343a6-19a0-4634-9820-82de27bcdeb8_750H', 'http://t.dmall.com/vdAV7j?erpStoreId=206&dmfrom=wx&from=wx&shareKey=1557798308269', '9');

-- ----------------------------
-- Table structure for local_menu
-- ----------------------------
DROP TABLE IF EXISTS `local_menu`;
CREATE TABLE `local_menu` (
  `brandId` int(10) NOT NULL AUTO_INCREMENT,
  `dataType` int(10) NOT NULL,
  `remark` varchar(100) NOT NULL,
  `imageUrl` varchar(200) NOT NULL,
  `resource` varchar(200) NOT NULL,
  `sort` int(10) NOT NULL,
  PRIMARY KEY (`brandId`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of local_menu
-- ----------------------------
INSERT INTO `local_menu` VALUES ('1', '5', '蔬菜每日鲜', 'https://img.dmallcdn.com/mIndex/201904/60dcfa6a-3648-437c-be77-53cdc899af1c_240x240H', 'https://a.dmall.com/act/ZwWzIfLmklueE.html?erpStoreId=206&dmfrom=wx&from=wx&shareKey=1557798308269', '1');
INSERT INTO `local_menu` VALUES ('2', '5', '肉蛋禽', 'https://img.dmallcdn.com/mIndex/201905/c780ed6f-c4e8-470f-8216-f72390c76886_240x240H', 'https://a.dmall.com/act/FwuQjIiCPDTU.html?erpStoreId=206&dmfrom=wx&from=wx&shareKey=1557798308269', '2');
INSERT INTO `local_menu` VALUES ('3', '5', '母婴天地', 'https://img.dmallcdn.com/mIndex/201904/b7b5b02f-84b3-4189-8618-9a09979a56e4_240x240H', 'https://a.dmall.com/act/rw8Ut4JMFW.html?erpStoreId=206&dmfrom=wx&from=wx&shareKey=1557798308269', '3');
INSERT INTO `local_menu` VALUES ('4', '5', '进店必买', 'https://img.dmallcdn.com/mIndex/201905/26f99a6b-4abb-4526-a1bf-38f2ef0505dd_240x240H', 'https://a.dmall.com/act/BOmu5nqkCRsKahx.html?erpStoreId=206&dmfrom=wx&from=wx&shareKey=1557798308269', '4');
INSERT INTO `local_menu` VALUES ('5', '5', '美通卡', 'https://img.dmallcdn.com/mIndex/201904/ec9373bc-2242-468b-9835-f6c6b958fe12_240x240H', 'https://t.dmall.com/m2xqi3?erpStoreId=206&dmfrom=wx&from=wx&shareKey=1557798308269', '5');
INSERT INTO `local_menu` VALUES ('6', '5', '早晚市', 'https://img.dmallcdn.com/mIndex/201905/982fa1df-cf73-43a3-a590-00490ab68318_240x240H', 'https://a.dmall.com/act/iDTYc5W83onqxPsF.html?erpStoreId=206&dmfrom=wx&from=wx&shareKey=1557798308269', '1');
INSERT INTO `local_menu` VALUES ('7', '5', '品牌汇', 'https://img.dmallcdn.com/mIndex/201904/e6de820d-b26a-4f98-b07f-c22bad17e8d5_240x240H', 'https://a.dmall.com/act/WUz1ARwYIMfq.html?erpStoreId=206&dmfrom=wx&from=wx&shareKey=1557798308269', '2');
INSERT INTO `local_menu` VALUES ('8', '5', '领劵中心', 'https://img.dmallcdn.com/mIndex/201904/a4818e9b-743c-4fa7-8a6f-f080a61f8012_240x240H', 'https://a.dmall.com/act/QJwRMXETcVvg.html?erpStoreId=206&dmfrom=wx&from=wx&shareKey=1557798308269', '3');
INSERT INTO `local_menu` VALUES ('9', '5', '支付优惠', 'https://img.dmallcdn.com/mIndex/201904/6170f3f2-4b13-4f8e-88d4-1a361480c7a0_240x240H', 'https://a.dmall.com/act/OQTdHa63rfqsYowE.html?erpStoreId=206&dmfrom=wx&from=wx&shareKey=1557798308269', '4');
INSERT INTO `local_menu` VALUES ('10', '5', '直采品牌', 'https://img.dmallcdn.com/mIndex/201904/4148db29-c38b-422e-bf00-ce2c3f2963dd_240x240H', 'https://a.dmall.com/act/BjgioaC5etRJv.html?erpStoreId=206&dmfrom=wx&from=wx&shareKey=1557798308269', '5');

-- ----------------------------
-- Table structure for local_seckill
-- ----------------------------
DROP TABLE IF EXISTS `local_seckill`;
CREATE TABLE `local_seckill` (
  `brandId` int(10) NOT NULL AUTO_INCREMENT,
  `dataType` int(10) NOT NULL,
  `imageUrl` varchar(200) NOT NULL,
  `resource` varchar(200) NOT NULL,
  `sort` int(10) NOT NULL,
  PRIMARY KEY (`brandId`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of local_seckill
-- ----------------------------
INSERT INTO `local_seckill` VALUES ('1', '5', 'https://img.dmallcdn.com/mIndex/201904/b654a585-477d-4338-868f-392123fbd6c4_750H', 'https://a.dmall.com/act/Y5OT1iXuQH8A.html?erpStoreId=206&dmfrom=wx&from=wx&shareKey=1557798308269', '1');

-- ----------------------------
-- Table structure for theme_park
-- ----------------------------
DROP TABLE IF EXISTS `theme_park`;
CREATE TABLE `theme_park` (
  `brandId` int(10) NOT NULL AUTO_INCREMENT,
  `dataType` int(10) NOT NULL,
  `imageUrl` varchar(200) NOT NULL,
  `resource` varchar(200) NOT NULL,
  `sort` int(10) NOT NULL,
  PRIMARY KEY (`brandId`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of theme_park
-- ----------------------------
INSERT INTO `theme_park` VALUES ('1', '5', 'https://img.dmallcdn.com/mIndex/201905/41b50c53-a406-491c-8352-896745664bf0_360x360H', 'https://a.dmall.com/act/1hmjxtYdrDGCK.html?erpStoreId=206&dmfrom=wx&from=wx&shareKey=1557798308269', '1');
INSERT INTO `theme_park` VALUES ('2', '5', 'https://img.dmallcdn.com/mIndex/201905/01dbfa3a-befe-4ba5-90cc-9121d8c7f7a7_360x360H', 'https://a.dmall.com/act/CDW5wOJy3pmPKVd.html?erpStoreId=206&dmfrom=wx&from=wx&shareKey=1557798308269', '2');
INSERT INTO `theme_park` VALUES ('3', '5', 'https://img.dmallcdn.com/mIndex/201905/a5af56ca-863e-4255-b375-9f190a535c46_360x360H', 'https://a.dmall.com/act/nojqA5kgBE.html?erpStoreId=206&dmfrom=wx&from=wx&shareKey=1557798308269', '3');
INSERT INTO `theme_park` VALUES ('4', '5', 'https://img.dmallcdn.com/mIndex/201905/beb0e91b-9bfd-44a4-bf38-b3eb81ac3b5a_360x360H', 'https://a.dmall.com/act/gAU3TMBJIe.html?erpStoreId=206&dmfrom=wx&from=wx&shareKey=1557798308269', '1');
INSERT INTO `theme_park` VALUES ('5', '5', 'https://img.dmallcdn.com/mIndex/201905/f04bb2c6-13b9-44fa-8238-a6c292039ef4_360x360H', 'https://a.dmall.com/act/j6UPD7yl8a1vpR.html?erpStoreId=206&dmfrom=wx&from=wx&shareKey=1557798308269', '2');
INSERT INTO `theme_park` VALUES ('6', '5', 'https://img.dmallcdn.com/mIndex/201905/51d52b27-aafa-4309-9ea9-2a871d25d95f_360x360H', 'https://a.dmall.com/act/etiBbT8cQC.html?erpStoreId=206&dmfrom=wx&from=wx&shareKey=1557798308269', '3');
INSERT INTO `theme_park` VALUES ('7', '5', 'https://img.dmallcdn.com/mIndex/201905/ba85b292-80f4-46b1-90ea-3b5e6ce5dcd9_360x360H', 'https://a.dmall.com/act/FWcE0YSLrlas.html?erpStoreId=206&dmfrom=wx&from=wx&shareKey=1557798308269', '1');
INSERT INTO `theme_park` VALUES ('8', '5', 'https://img.dmallcdn.com/mIndex/201905/fc47593f-932d-47a4-9a23-991425e9d9fd_360x360H', 'https://a.dmall.com/act/kpw0HZbWRsyDKn3a.html?erpStoreId=206&dmfrom=wx&from=wx&shareKey=1557798308269', '2');
INSERT INTO `theme_park` VALUES ('9', '5', 'https://img.dmallcdn.com/mIndex/201905/911b378e-c339-45fc-aa4f-8021c193182a_360x360H', 'https://a.dmall.com/act/6z1nbKY7si2TOrjM.html?erpStoreId=206&dmfrom=wx&from=wx&shareKey=1557798308269', '3');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `phone` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '温延会', '13641092352');
INSERT INTO `user` VALUES ('2', '麻国帅', '15132082397');
