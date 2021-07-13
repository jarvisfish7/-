/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.150.1-MYSQL
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : secondshop

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 08/05/2021 23:11:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for collect_table
-- ----------------------------
DROP TABLE IF EXISTS `collect_table`;
CREATE TABLE `collect_table`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `good_id` int(0) NULL DEFAULT NULL,
  `good_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collect_table
-- ----------------------------
INSERT INTO `collect_table` VALUES (1, 4, '电脑', 5);
INSERT INTO `collect_table` VALUES (2, 6, '上衣', 5);
INSERT INTO `collect_table` VALUES (5, 6, '上衣', 6);
INSERT INTO `collect_table` VALUES (6, 4, '电脑', 6);
INSERT INTO `collect_table` VALUES (7, 6, '上衣', 7);
INSERT INTO `collect_table` VALUES (8, 33, '英语口语入门', 6);
INSERT INTO `collect_table` VALUES (9, 39, '名侦探柯南彩色漫画', 11);
INSERT INTO `collect_table` VALUES (10, 56, '积分商品(旺旺旺仔牛奶一箱包邮整箱)', 14);

-- ----------------------------
-- Table structure for first_type_table
-- ----------------------------
DROP TABLE IF EXISTS `first_type_table`;
CREATE TABLE `first_type_table`  (
  `id` int(0) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of first_type_table
-- ----------------------------
INSERT INTO `first_type_table` VALUES (1001, '电子产品');
INSERT INTO `first_type_table` VALUES (1002, '衣物');
INSERT INTO `first_type_table` VALUES (1003, '运动');
INSERT INTO `first_type_table` VALUES (1004, '图书');
INSERT INTO `first_type_table` VALUES (1005, '积分兑换');
INSERT INTO `first_type_table` VALUES (1006, '宠物');
INSERT INTO `first_type_table` VALUES (1007, '乐器');
INSERT INTO `first_type_table` VALUES (1008, '玩具');
INSERT INTO `first_type_table` VALUES (1009, '饮料');

-- ----------------------------
-- Table structure for good_table
-- ----------------------------
DROP TABLE IF EXISTS `good_table`;
CREATE TABLE `good_table`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photo_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `first_type_id` int(0) NULL DEFAULT NULL,
  `second_type_id` int(0) NULL DEFAULT NULL,
  `describe` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `upload_date` datetime(0) NULL DEFAULT NULL,
  `prise` float NULL DEFAULT NULL,
  `status_id` int(0) NULL DEFAULT NULL,
  `user_id` int(0) NULL DEFAULT NULL,
  `update` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of good_table
-- ----------------------------
INSERT INTO `good_table` VALUES (2, '手机', '/statics/image/goods/test/2.jpg', 1001, 1001001, '手机', '2021-04-21 11:19:33', 1000, 1, 1, '2019-12-14 11:10:27');
INSERT INTO `good_table` VALUES (3, '电脑', '/statics/image/goods/test/3.jpg', 1001, 1001002, '电脑', '2021-04-21 11:19:33', 1000, 0, 1, '2019-12-14 11:17:36');
INSERT INTO `good_table` VALUES (4, '电脑', '/statics/image/goods/test/4.jpg', 1001, 1001002, '电脑', '2021-04-21 11:19:33', 1000, 0, 1, '2019-12-24 12:11:43');
INSERT INTO `good_table` VALUES (5, '上衣', '/statics/image/goods/test/5.jpg', 1002, 1002001, '上衣', '2021-04-21 11:19:33', 1000, 0, 1, '2019-12-15 23:56:11');
INSERT INTO `good_table` VALUES (6, '上衣', '/statics/image/goods/test/6.jpg', 1002, 1002001, '上衣', '2021-04-21 11:19:33', 1000, 0, 1, '2019-12-24 12:12:07');
INSERT INTO `good_table` VALUES (7, '篮球', '/statics/image/goods/2/7/7QUev93ngdU.jpeg', 1001, 1001001, '', '2021-04-21 11:19:33', 0, 0, 2, '2019-12-06 22:35:43');
INSERT INTO `good_table` VALUES (8, '', '/statics/image/goods/default/nophoto.png', 1001, 1001001, '', '2021-04-21 11:19:33', 0, 0, 4, '2019-12-15 18:32:00');
INSERT INTO `good_table` VALUES (9, '红米', '/statics/image/goods/4/9/9FD5i5Igg9A.jpeg', 1001, 1001001, '', '2021-04-21 11:19:33', 1000, 0, 4, '2019-12-14 11:15:09');
INSERT INTO `good_table` VALUES (12, '红米', '/statics/image/goods/7/12/12unWX3qGpvg.jpeg', 1001, 1001001, '新机没用两天', '2021-04-21 11:19:33', 10, 0, 7, '2019-12-18 21:05:31');
INSERT INTO `good_table` VALUES (14, '办公电脑', '/statics/image/goods/7/14/14QEuEfOES5q.png', 1001, 1001002, '本人近期要换新电脑，因此对陪伴本人两年的台式电脑有意者可以联系本人进行交换。', '2021-04-21 11:19:33', 1000, 1, 7, '2019-12-27 14:02:50');
INSERT INTO `good_table` VALUES (15, 'vivj手机', '/statics/image/goods/7/15/15gCMCqHcv4D.png', 1001, 1001001, '本人近期换了新手机，此手机八成新。', '2021-04-21 11:19:33', 500, 1, 7, '2019-12-27 14:07:18');
INSERT INTO `good_table` VALUES (16, '联想笔记本电脑', '/statics/image/goods/7/16/16KLn2sdN6pv.png', 1001, 1001002, '配置有点偏低，不过打游戏不卡，有意者可以联系本人。', '2021-04-21 11:19:33', 1000, 1, 7, '2021-05-06 22:02:31');
INSERT INTO `good_table` VALUES (17, '超薄平板', '/statics/image/goods/7/17/17BSpHSoJVrd.png', 1001, 1001003, '手感一流，配置也不错。有意可联系。', '2021-04-21 11:19:33', 1000, 1, 7, '2019-12-27 14:11:51');
INSERT INTO `good_table` VALUES (18, '低音炮小音箱', '/statics/image/goods/7/18/18i9ctyOx38Y.png', 1001, 1001004, '声音响亮，操场必备。', '2021-04-21 11:19:33', 100, 1, 7, '2019-12-27 14:13:24');
INSERT INTO `good_table` VALUES (19, '内存条配件', '/statics/image/goods/7/19/19xLaSNQYcwf.png', 1001, 1001005, '金士顿三代DDR3 8G，有了它不必担心电脑内存。', '2021-04-21 11:19:33', 200, 1, 7, '2019-12-27 14:17:25');
INSERT INTO `good_table` VALUES (20, '液晶显示器', '/statics/image/goods/7/20/20Z6Auhqbph3.png', 1001, 1001006, '液晶显示器', '2021-04-21 11:19:33', 500, 1, 7, '2019-12-27 14:18:48');
INSERT INTO `good_table` VALUES (21, '男上衣', '/statics/image/goods/7/21/21j8V18yxMi9.png', 1002, 1002001, '只穿过一次。', '2021-04-21 11:19:33', 50, 1, 7, '2019-12-27 14:20:18');
INSERT INTO `good_table` VALUES (22, '女上衣', '/statics/image/goods/7/22/22IpyJxoG1dq.png', 1002, 1002001, '只穿过一次，免费赠送，先联系先得。', '2021-04-21 11:19:33', 10, 1, 7, '2019-12-27 14:21:45');
INSERT INTO `good_table` VALUES (23, '男裤子', '/statics/image/goods/7/23/23BRaeGfWoZj.png', 1002, 1002002, '很担心', '2021-04-21 11:19:33', 10, 1, 7, '2019-12-27 14:23:08');
INSERT INTO `good_table` VALUES (24, '渔夫帽', '/statics/image/goods/7/24/245OlA8oJRhx.png', 1002, 1002003, '渔夫帽', '2021-04-21 11:19:33', 30, 1, 7, '2019-12-27 14:25:20');
INSERT INTO `good_table` VALUES (25, '鸭舌帽', '/statics/image/goods/7/25/25JpDAyzPLsd.png', 1002, 1002003, '', '2021-04-21 11:19:33', 48, 1, 7, '2019-12-27 14:26:42');
INSERT INTO `good_table` VALUES (26, '保暖棉鞋', '/statics/image/goods/7/26/26cH3my4nT9l.png', 1002, 1002004, '冬天保暖', '2021-04-21 11:19:33', 180, 1, 7, '2019-12-27 14:28:04');
INSERT INTO `good_table` VALUES (27, '篮球', '/statics/image/goods/7/27/27YVezdS3bcD.png', 1003, 1003001, '可以用其他运动器材交换。', '2021-04-21 11:19:33', 10, 0, 7, '2020-04-11 12:43:40');
INSERT INTO `good_table` VALUES (28, '足球', '/statics/image/goods/7/28/28KLJm4DPrh4.png', 1003, 1003001, '有点破旧。', '2021-04-21 11:19:33', 50, 1, 7, '2020-09-05 20:47:22');
INSERT INTO `good_table` VALUES (29, '滑板', '/statics/image/goods/7/29/296pPr3Ea6Vw.png', 1003, 1003002, '八成新', '2021-04-21 11:19:33', 50, 0, 7, '2020-02-05 13:03:25');
INSERT INTO `good_table` VALUES (30, '死飞自行车', '/statics/image/goods/7/30/30t7rGtJgVwq.png', 1003, 1003003, '二手死飞', '2021-04-21 11:19:33', 380, 0, 7, '2020-02-04 23:40:12');
INSERT INTO `good_table` VALUES (31, '瑜伽伸展环运动器材', '/statics/image/goods/7/31/31EB8N3Crf6h.png', 1003, 1003004, '可以用来练瑜伽', '2021-04-21 11:19:33', 80, 0, 7, '2020-02-05 18:43:18');
INSERT INTO `good_table` VALUES (32, '读者期刊', '/statics/image/goods/7/32/324oiaEjHx6f.png', 1004, 1004001, '春季合集', '2021-04-21 11:19:33', 30, 1, 7, '2020-09-05 20:52:25');
INSERT INTO `good_table` VALUES (33, '英语口语入门', '/statics/image/goods/7/33/33IBd31x4iHV.png', 1004, 1004002, '', '2021-04-21 11:19:33', 40, 1, 7, '2020-09-05 20:50:13');
INSERT INTO `good_table` VALUES (34, '英语语法大全集', '/statics/image/goods/7/34/34Zc8fKGM7vZ.png', 1004, 1004002, '英语语法合集', '2021-04-21 11:19:33', 10, 0, 7, '2020-02-05 19:52:43');
INSERT INTO `good_table` VALUES (35, '计算机一级一本通', '/statics/image/goods/7/35/35sNyDXuOh17.png', 1004, 1004003, '全国计算机等级考试一级一本通', '2021-04-21 11:19:33', 50, 1, 7, '2020-02-05 21:46:35');
INSERT INTO `good_table` VALUES (36, '三体小说', '/statics/image/goods/7/36/36I3HiAsLXVI.png', 1004, 1004005, '科幻', '2021-04-21 11:19:33', 40, 0, 7, '2020-02-05 17:42:30');
INSERT INTO `good_table` VALUES (37, '中国异闻录小说', '/statics/image/goods/7/37/37haLFDrlCWl.png', 1004, 1004005, '', '2021-04-21 11:19:33', 30, 0, 7, '2020-02-04 19:44:57');
INSERT INTO `good_table` VALUES (38, '罗小黑战记漫画', '/statics/image/goods/7/38/38vbwBonRJyO.png', 1004, 1004006, '', '2021-04-21 11:19:33', 50, 0, 7, '2020-03-31 20:00:01');
INSERT INTO `good_table` VALUES (39, '名侦探柯南彩色漫画', '/statics/image/goods/7/39/391yZf9U2utk.png', 1004, 1004006, '彩色，一套', '2021-04-21 11:19:33', 100, 0, 7, '2020-03-31 16:01:13');
INSERT INTO `good_table` VALUES (40, '足球', '/statics/image/goods/7/40/37haLFDrlCW1.png', 1003, 1003001, '去年买的足球，平时不怎么玩，99成新', '2021-04-22 18:06:50', 50, 1, 12, '2020-02-05 18:39:24');
INSERT INTO `good_table` VALUES (47, 'Peble高级鼠标', '/statics/image/goods/14/47/47KhxLCo1ZYW.png', 1001, 1001005, '非常好用', '2021-04-14 20:48:44', 998, 1, 14, '2021-05-08 11:01:37');
INSERT INTO `good_table` VALUES (48, '猫咪玩具自嗨球', '/statics/image/goods/14/48/483YM4MGOpNz.png', 1006, 1006001, '猫咪玩具自嗨球类解闷神器激光铃铛球宠物猫猫智能自动逗猫球电动', '2021-04-19 22:39:39', 49, 0, 14, '2021-05-08 22:33:31');
INSERT INTO `good_table` VALUES (49, '猫咪啃咬球', '/statics/image/goods/14/49/49QdhHAQMZhW.png', 1006, 1006001, 'diy啃咬套装球类玩具猫用品小猫自动猫咪彩色毛绒球小猫咪脖圈', '2021-04-19 22:41:46', 11.8, 1, 14, '2021-05-03 15:47:40');
INSERT INTO `good_table` VALUES (51, 'NIKE AIR JORDAN 1 AJ1', '/statics/image/goods/14/51/51qNH1XOIhrJ.png', 1003, 1003004, 'NIKE AIR JORDAN 1 AJ1中帮男鞋复刻运动鞋休闲篮球鞋 554724-300', '2021-04-19 22:53:53', 699, 1, 14, '2021-05-03 15:47:18');
INSERT INTO `good_table` VALUES (53, '自用钢琴98新', '/statics/image/goods/14/53/537EU6Xnmziw.png', 1007, 1007001, ' 莫森(mosen)MS-125C立式钢琴 88键升级款家用专业演奏真钢琴1-10级 125CM 烈阳系列，自己用的，没用多久', '2021-04-28 23:43:40', 17000, 1, 14, '2021-05-03 15:46:58');
INSERT INTO `good_table` VALUES (54, '乐高摩托车全新未拆封', '/statics/image/goods/14/54/54t6PzzGOdqI.png', 1008, 1008001, '乐高摩托车，全新未拆封，快买，实现你儿时的梦想！！', '2021-04-29 00:38:59', 299, 1, 14, '2021-05-06 23:14:55');
INSERT INTO `good_table` VALUES (55, '积分商品(可口可乐mini迷你罐饮料汽水整箱零度无糖)', '/statics/image/goods/cf7beca1-8102-41e6-b565-647e4c8d6654.png', 1005, 1005001, '可口可乐mini迷你罐饮料汽水200mL*48罐整箱零度无糖可乐芬达雪碧，很好喝，很得劲', '2021-05-06 22:11:53', 500, 1, 1, '2021-05-06 22:11:53');
INSERT INTO `good_table` VALUES (56, '积分商品(旺旺旺仔牛奶一箱包邮整箱)', '/statics/image/goods/1ea64640-360c-4708-befe-1eb5cfc20244.png', 1005, 1005001, '旺旺旺仔牛奶很好喝，喝了可以快高长大', '2021-05-06 22:16:48', 500, 1, 1, '2021-05-06 22:16:48');
INSERT INTO `good_table` VALUES (57, '好喝的旺仔牛奶', '/statics/image/goods/14/57/57qzSLy4jVnk.png', 1009, 1009001, '没喝完，还有20盒，便宜出了！', '2021-05-08 10:33:10', 500, 1, 14, '2021-05-08 10:50:44');

-- ----------------------------
-- Table structure for image_table
-- ----------------------------
DROP TABLE IF EXISTS `image_table`;
CREATE TABLE `image_table`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `good_id` int(0) NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of image_table
-- ----------------------------
INSERT INTO `image_table` VALUES (1, 7, '73FkJgsgZXt.jpeg', '/statics/image/goods/2/7/73FkJgsgZXt.jpeg');
INSERT INTO `image_table` VALUES (2, 7, '7FlL45FjNyU.jpeg', '/statics/image/goods/2/7/7FlL45FjNyU.jpeg');
INSERT INTO `image_table` VALUES (3, 9, '9SikAVQAuNj.jpeg', '/statics/image/goods/4/9/9SikAVQAuNj.jpeg');
INSERT INTO `image_table` VALUES (4, 9, '9Fj2fboctLd.jpeg', '/statics/image/goods/4/9/9Fj2fboctLd.jpeg');
INSERT INTO `image_table` VALUES (5, 10, '10qmZP4Vpwpi.png', '/statics/image/goods/6/10/10qmZP4Vpwpi.png');
INSERT INTO `image_table` VALUES (6, 11, '11cml6CqsyLd.png', '/statics/image/goods/6/11/11cml6CqsyLd.png');
INSERT INTO `image_table` VALUES (11, 50, '506P364O4655.png', '/statics/image/goods/14/50/506P364O4655.png');
INSERT INTO `image_table` VALUES (12, 50, '50vDIDuQrjM9.png', '/statics/image/goods/14/50/50vDIDuQrjM9.png');
INSERT INTO `image_table` VALUES (13, 50, '508Yrk75ZiiQ.png', '/statics/image/goods/14/50/508Yrk75ZiiQ.png');
INSERT INTO `image_table` VALUES (20, 51, '51dgn84Vcw19.png', '/statics/image/goods/14/51/51dgn84Vcw19.png');
INSERT INTO `image_table` VALUES (21, 51, '51HXxviwc3ji.png', '/statics/image/goods/14/51/51HXxviwc3ji.png');
INSERT INTO `image_table` VALUES (22, 49, '49yOtEWBPxhp.png', '/statics/image/goods/14/49/49yOtEWBPxhp.png');
INSERT INTO `image_table` VALUES (23, 48, '48FnHILOiCuA.png', '/statics/image/goods/14/48/48FnHILOiCuA.png');

-- ----------------------------
-- Table structure for order_table
-- ----------------------------
DROP TABLE IF EXISTS `order_table`;
CREATE TABLE `order_table`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `good_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `seller` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `seller_id` int(0) NULL DEFAULT NULL,
  `customer` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `customer_id` int(0) NULL DEFAULT NULL,
  `good_id` int(0) NULL DEFAULT NULL,
  `money` int(0) NULL DEFAULT NULL,
  `submit_date` datetime(0) NULL DEFAULT NULL,
  `end_date` datetime(0) NULL DEFAULT NULL,
  `status_id` int(0) NULL DEFAULT NULL,
  `order_type` int(0) NULL DEFAULT NULL,
  `creditend_date` datetime(0) NULL DEFAULT NULL,
  `score` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_table
-- ----------------------------
INSERT INTO `order_table` VALUES (1, '手机', 'admin', 1, '文', 3, 1, 1000, '2021-05-03 22:39:14', '2021-05-04 11:39:21', 3, NULL, NULL, NULL);
INSERT INTO `order_table` VALUES (3, '红米', 'wen', 4, '文', 3, 9, 1000, '2021-05-03 22:39:14', NULL, 2, NULL, NULL, NULL);
INSERT INTO `order_table` VALUES (4, '电脑', 'admin', 1, 'wen', 4, 3, 1000, '2021-05-03 22:39:14', NULL, 2, NULL, NULL, NULL);
INSERT INTO `order_table` VALUES (5, '上衣', 'admin', 1, '文天', 5, 5, 1000, '2021-05-03 22:39:14', NULL, 2, NULL, NULL, NULL);
INSERT INTO `order_table` VALUES (6, '电脑', 'admin', 1, '王强', 7, 4, 1000, '2021-05-03 22:39:14', '2021-05-04 11:39:21', 3, NULL, NULL, NULL);
INSERT INTO `order_table` VALUES (7, '上衣', 'admin', 1, '王强', 7, 6, 1000, '2021-05-03 22:39:14', '2021-05-04 11:39:21', 3, NULL, NULL, NULL);
INSERT INTO `order_table` VALUES (8, '罗小黑战记漫画', '王强', 7, '照', 6, 38, 50, '2021-05-03 22:39:14', NULL, 2, NULL, NULL, NULL);
INSERT INTO `order_table` VALUES (9, '名侦探柯南彩色漫画', '王强', 7, '王丽', 11, 39, 100, '2021-05-03 22:39:14', '2021-05-04 11:39:21', 3, NULL, NULL, NULL);
INSERT INTO `order_table` VALUES (10, '中国异闻录小说', '王强', 7, '韩梅梅', 12, 37, 30, '2021-05-03 22:39:14', '2021-05-04 11:39:21', 3, NULL, NULL, NULL);
INSERT INTO `order_table` VALUES (11, '计算机一级一本通', '王强', 7, '韩梅梅', 12, 35, 50, '2021-05-03 22:39:14', NULL, 2, 0, NULL, NULL);
INSERT INTO `order_table` VALUES (14, '滑板', '王强', 7, '韩梅梅', 12, 29, 50, '2021-05-03 22:39:14', NULL, 2, 0, '2021-05-05 13:03:25', NULL);
INSERT INTO `order_table` VALUES (15, '足球', '王强', 7, '韩梅梅', 12, 28, 50, '2021-05-03 22:39:14', '2021-05-04 11:39:21', 3, 3, '2021-05-05 13:03:25', 0);
INSERT INTO `order_table` VALUES (16, '计算机一级一本通', '王强', 7, '韩梅梅', 12, 35, 50, '2021-05-03 22:39:14', '2021-05-04 11:39:21', 3, 1, '2021-05-05 13:03:25', 0);
INSERT INTO `order_table` VALUES (17, '罗小黑战记漫画', '王强', 7, '韩梅梅', 12, 38, 31, '2021-05-03 22:39:14', '2021-05-04 11:39:21', 3, 6, '2021-05-05 13:03:25', 0);
INSERT INTO `order_table` VALUES (18, '读者期刊', '王强', 7, '韩梅梅', 12, 32, 33, '2021-05-03 22:39:14', '2021-05-04 11:39:21', 3, 1, '2021-05-05 13:03:25', 0);
INSERT INTO `order_table` VALUES (19, '英语口语入门', '王强', 7, '韩梅梅', 12, 33, 44, '2021-05-03 22:39:14', '2021-05-04 11:39:21', 3, 1, '2021-05-05 13:03:25', 1);
INSERT INTO `order_table` VALUES (20, '三体小说', '王强', 7, '韩梅梅', 12, 36, 44, '2021-05-03 22:39:14', '2021-05-04 11:39:21', 4, 1, '2021-05-05 13:03:25', 0);
INSERT INTO `order_table` VALUES (23, '瑜伽伸展环运动器材', '王强', 7, '李磊', 13, 31, 104, '2021-05-03 22:39:14', '2021-05-04 11:39:21', 4, 3, '2021-05-05 13:03:25', 0);
INSERT INTO `order_table` VALUES (25, '英语语法大全集', '王强', 7, '李磊', 13, 34, 11, '2021-05-03 22:39:14', '2021-05-04 11:39:21', 4, 1, '2021-05-05 13:03:25', 0);
INSERT INTO `order_table` VALUES (26, '名侦探柯南彩色漫画', '王强', 7, '韩梅梅', 12, 39, 130, '2021-05-03 22:39:14', '2021-05-04 11:39:21', 3, 3, '2021-05-05 13:03:25', 5);
INSERT INTO `order_table` VALUES (27, '名侦探柯南彩色漫画', '王强', 7, '韩梅梅', 12, 39, 100, '2021-05-03 22:39:14', '2021-05-04 11:39:21', 3, 0, NULL, NULL);
INSERT INTO `order_table` VALUES (28, '积分商品(1)', 'admin', 1, '韩梅梅', 12, 41, 1, '2021-05-03 22:39:14', '2021-05-04 11:39:21', 3, 0, NULL, NULL);
INSERT INTO `order_table` VALUES (29, '2', 'admin', 1, '韩梅梅', 12, 42, 2, '2021-05-03 22:39:14', '2021-05-04 11:39:21', 3, 0, NULL, NULL);
INSERT INTO `order_table` VALUES (30, '积分商品(2)', 'admin', 1, '韩梅梅', 12, 42, 2, '2021-05-03 22:39:14', '2021-05-04 11:39:21', 3, 0, NULL, NULL);
INSERT INTO `order_table` VALUES (31, '积分商品(2)', 'admin', 1, '韩梅梅', 12, 42, 2, '2021-05-03 22:39:14', '2021-05-04 11:39:21', 3, 0, NULL, NULL);
INSERT INTO `order_table` VALUES (32, '积分商品(2)', 'admin', 1, '韩梅梅', 12, 42, 20, '2021-05-03 22:39:14', NULL, 2, 0, NULL, NULL);
INSERT INTO `order_table` VALUES (33, '罗小黑战记漫画', '王强', 7, '韩梅梅', 12, 38, 50, '2021-05-03 22:39:14', '2021-05-04 11:39:21', 3, 0, NULL, NULL);
INSERT INTO `order_table` VALUES (34, '篮球', '王强', 7, '韩梅梅', 12, 27, 10, '2021-05-03 22:39:14', '2021-05-04 11:39:21', 3, 0, NULL, NULL);
INSERT INTO `order_table` VALUES (36, 'Peble高级鼠标', '林佳', 14, '买方测试', 15, 47, 998, '2021-05-03 22:39:14', '2021-05-04 11:39:21', 3, 0, NULL, NULL);
INSERT INTO `order_table` VALUES (41, '猫咪玩具自嗨球', '林佳', 14, '韩梅梅', 12, 48, 49, '2021-05-08 22:33:31', NULL, 2, 0, NULL, NULL);

-- ----------------------------
-- Table structure for reply_table
-- ----------------------------
DROP TABLE IF EXISTS `reply_table`;
CREATE TABLE `reply_table`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `review_id` int(0) NULL DEFAULT NULL,
  `from_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `from_user_id` int(0) NULL DEFAULT NULL,
  `to_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `to_user_id` int(0) NULL DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `upload_date` datetime(0) NULL DEFAULT NULL,
  `status` int(0) NULL DEFAULT NULL COMMENT '消息状态表；0：表示未读；1：表示已读。',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reply_table
-- ----------------------------
INSERT INTO `reply_table` VALUES (1, 3, '文', 3, '文', 3, '大大', '2021-05-01 13:14:42', 1);
INSERT INTO `reply_table` VALUES (2, 2, '文', 3, 'wen', 4, '无人访问2', '2021-05-01 13:14:42', 1);
INSERT INTO `reply_table` VALUES (3, 4, '王强', 7, '王强', 7, '还行', '2021-05-01 13:14:42', 0);

-- ----------------------------
-- Table structure for review_table
-- ----------------------------
DROP TABLE IF EXISTS `review_table`;
CREATE TABLE `review_table`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `good_id` int(0) NULL DEFAULT NULL,
  `from_user_id` int(0) NULL DEFAULT NULL,
  `from_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `to_user_id` int(0) NULL DEFAULT NULL,
  `to_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `upload_date` datetime(0) NULL DEFAULT NULL,
  `status` int(0) NULL DEFAULT NULL COMMENT '消息状态；0：表示未读；1：表示已读。',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of review_table
-- ----------------------------
INSERT INTO `review_table` VALUES (1, 2, 4, 'wen', 1, NULL, '2133', '2021-04-25 11:09:27', 0);
INSERT INTO `review_table` VALUES (2, 9, 4, 'wen', 4, NULL, '2133', '2021-04-25 11:09:27', 0);
INSERT INTO `review_table` VALUES (3, 9, 3, '文', 4, NULL, '瓦大大', '2021-04-25 11:09:27', 0);
INSERT INTO `review_table` VALUES (4, 4, 7, '王强', 1, NULL, '好用吗', '2021-04-25 11:09:27', 0);
INSERT INTO `review_table` VALUES (5, 12, 7, '王强', 7, NULL, '内存多大', '2021-04-25 11:09:27', 0);
INSERT INTO `review_table` VALUES (6, 37, 6, '照', 7, NULL, '好书', '2021-04-25 11:09:27', 0);
INSERT INTO `review_table` VALUES (7, 39, 11, '王丽', 7, NULL, '我想要', '2021-04-25 11:09:27', 0);
INSERT INTO `review_table` VALUES (8, 53, 10, '张文文', 14, NULL, '你好，我很喜欢，可以便宜点吗？', '2021-04-25 11:09:27', 1);
INSERT INTO `review_table` VALUES (9, 57, 12, '韩梅梅', 14, NULL, '你好，我很喜欢，可以便宜点吗？', '2021-05-08 10:34:06', 0);

-- ----------------------------
-- Table structure for role_table
-- ----------------------------
DROP TABLE IF EXISTS `role_table`;
CREATE TABLE `role_table`  (
  `id` int(0) NOT NULL,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_table
-- ----------------------------
INSERT INTO `role_table` VALUES (101, 'admin', '管理员');
INSERT INTO `role_table` VALUES (102, 'user', '用户');

-- ----------------------------
-- Table structure for second_type_table
-- ----------------------------
DROP TABLE IF EXISTS `second_type_table`;
CREATE TABLE `second_type_table`  (
  `id` int(0) NOT NULL,
  `first_type_id` int(0) NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of second_type_table
-- ----------------------------
INSERT INTO `second_type_table` VALUES (1001001, 1001, '手机');
INSERT INTO `second_type_table` VALUES (1001002, 1001, '电脑');
INSERT INTO `second_type_table` VALUES (1001003, 1001, '平板');
INSERT INTO `second_type_table` VALUES (1001004, 1001, '音箱');
INSERT INTO `second_type_table` VALUES (1001005, 1001, '配件');
INSERT INTO `second_type_table` VALUES (1001006, 1001, '显示器');
INSERT INTO `second_type_table` VALUES (1002001, 1002, '上衣');
INSERT INTO `second_type_table` VALUES (1002002, 1002, '裤子');
INSERT INTO `second_type_table` VALUES (1002003, 1002, '帽子');
INSERT INTO `second_type_table` VALUES (1002004, 1002, '鞋子');
INSERT INTO `second_type_table` VALUES (1003001, 1003, '球类');
INSERT INTO `second_type_table` VALUES (1003002, 1003, '滑板');
INSERT INTO `second_type_table` VALUES (1003003, 1003, '自行车');
INSERT INTO `second_type_table` VALUES (1003004, 1003, '其他器材');
INSERT INTO `second_type_table` VALUES (1003005, 1003, '服饰运动鞋');
INSERT INTO `second_type_table` VALUES (1004001, 1004, '期刊');
INSERT INTO `second_type_table` VALUES (1004002, 1004, '英语');
INSERT INTO `second_type_table` VALUES (1004003, 1004, '计算机');
INSERT INTO `second_type_table` VALUES (1004005, 1004, '小说');
INSERT INTO `second_type_table` VALUES (1004006, 1004, '漫画');
INSERT INTO `second_type_table` VALUES (1005001, 1005, '积分礼品');
INSERT INTO `second_type_table` VALUES (1006001, 1006, '宠物玩具');
INSERT INTO `second_type_table` VALUES (1006002, 1006, '宠物零食');
INSERT INTO `second_type_table` VALUES (1007001, 1007, '钢琴');
INSERT INTO `second_type_table` VALUES (1007002, 1007, '吉他');
INSERT INTO `second_type_table` VALUES (1008001, 1008, '乐高');
INSERT INTO `second_type_table` VALUES (1009001, 1009, '牛奶');

-- ----------------------------
-- Table structure for status_table
-- ----------------------------
DROP TABLE IF EXISTS `status_table`;
CREATE TABLE `status_table`  (
  `id` int(0) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of status_table
-- ----------------------------

-- ----------------------------
-- Table structure for user_table
-- ----------------------------
DROP TABLE IF EXISTS `user_table`;
CREATE TABLE `user_table`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photo_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role_id` int(0) NULL DEFAULT NULL,
  `gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `register_date` datetime(0) NULL DEFAULT NULL,
  `status_id` int(0) NULL DEFAULT NULL,
  `creditgrade` int(0) NULL DEFAULT NULL,
  `count` int(11) UNSIGNED ZEROFILL NULL DEFAULT NULL,
  `grade` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_table
-- ----------------------------
INSERT INTO `user_table` VALUES (1, 'admin', NULL, 'admin@qq.com', 'admin', '101', NULL, 101, '', '2021-04-20 11:23:14', 4, 5, 00000000000, 0);
INSERT INTO `user_table` VALUES (3, '赵东', '13610123100', '372789844@qq.com', '6bf2ef748b4d6bd5a2cc2146d184097d', '101', '/statics/image/photos/3/3CgccYvAQPO.jpeg', 102, '男', '2021-04-20 11:23:14', 4, 5, 00000000000, 0);
INSERT INTO `user_table` VALUES (4, '温恺', '15913510263', '372789855@qq.com', '0a97c6fc3c2380133d92fd6a28eeae1f', 'gC2DG', '/statics/image/photos/default/default.png', 102, '男', '2021-04-20 11:23:14', 5, 5, 00000000000, 0);
INSERT INTO `user_table` VALUES (5, '文天', '13659709649', '372789866@qq.com', 'bef8ae6b1dd65a843ba9381e15646a00', 'qtceP', '/statics/image/photos/default/default.png', 101, '男', '2021-04-20 11:23:14', 4, 5, 00000000000, 0);
INSERT INTO `user_table` VALUES (6, '范中', '13610123111', '372789877@qq.com', 'b7223bbae33321492811de89a735a7bd', '1HU9M', '/statics/image/photos/6/6YlaoH552S6.jpeg', 102, '男', '2021-04-20 11:23:14', 4, 5, 00000000000, 0);
INSERT INTO `user_table` VALUES (7, '王强', '15015567206', 'wangqiang@qq.com', '887f98dd9318fbbc81999feb1d1f72bb', 'gLFTX', '/statics/image/photos/7/7pJoWDu7UmK.jpeg', 102, '男', '2021-04-20 11:23:14', 4, 7, 00000000000, 0);
INSERT INTO `user_table` VALUES (8, '李大卫', '13610123188', '372789893@qq.com', 'f2d9b2896404012ba19e8c8d8834e5c8', 'eSK7L', '/statics/image/photos/default/default.png', 102, '男', '2021-04-20 11:23:14', 4, 5, 00000000000, 0);
INSERT INTO `user_table` VALUES (9, '刘雯', '13610123199', '372789593@qq.com', '51a5c99fcf25851df47076a2d4c4e52c', 'aqMXF', '/statics/image/photos/default/default.png', 102, '男', '2021-04-20 11:23:14', 4, 5, 00000000000, 0);
INSERT INTO `user_table` VALUES (10, '张文文', '13610123101', 'test@qq.com', 'e1cd947074241ca7b5049f888e253c7f', 'CHpdn', '/statics/image/photos/default/default.png', 102, '女', '2021-04-20 11:23:14', 4, 5, 00000000000, 0);
INSERT INTO `user_table` VALUES (11, '王丽', '15513672174', '1451215897@qq.com', '30938ae6837e779c5bdad7115d8defca', 'SV9XG', '/statics/image/photos/default/default1.jpg', 102, '女', '2021-04-20 11:23:14', 4, 5, 00000000200, 0);
INSERT INTO `user_table` VALUES (12, '韩梅梅', '15513672164', '123@qq.com', '887f98dd9318fbbc81999feb1d1f72bb', 'gLFTX', '/statics/image/photos/12/12KveIRIZHHC.jpeg', 102, '女', '2021-04-20 11:23:14', 4, 5, 00000004306, 58);
INSERT INTO `user_table` VALUES (13, '李磊', '15835716852', '52412123@qq.com', 'db9c3123e50b8b8d8bc854960d136f03', 'fXzOw', '/statics/image/photos/default/default.png', 102, '男', '2021-04-20 11:23:14', 4, 5, 00000000085, 0);
INSERT INTO `user_table` VALUES (14, '林佳', '15820178757', '1666053505@qq.com', '2b4ad15502f05fbda0472ae3eb6acd96', 'WQvz8', '/statics/image/photos/14/14XHyn5ITRlB.jpeg', 102, '男', '2021-04-20 11:23:14', 4, 6, 00000001246, 0);
INSERT INTO `user_table` VALUES (15, '买方测试', '13714131611', 'Buytest@qq.com', '533f97252b091b779c711547c7716242', 'DigSv', '/statics/image/photos/default/default.png', 102, '男', '2021-04-20 11:23:14', 4, 5, 00000009002, 10);

SET FOREIGN_KEY_CHECKS = 1;
