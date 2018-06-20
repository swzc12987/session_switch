/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : official_site

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 18/05/2018 18:28:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for os_campus
-- ----------------------------
DROP TABLE IF EXISTS `os_campus`;
CREATE TABLE `os_campus`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(3) NULL DEFAULT NULL,
  `create_user` bigint(20) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_user` bigint(20) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of os_campus
-- ----------------------------
INSERT INTO `os_campus` VALUES (1, '测试：校区01-地址', '测试：校区01-邮件', '测试：校区01-名称', '110', '123', 1, NULL, '2018-05-18 14:39:12', NULL, NULL);
INSERT INTO `os_campus` VALUES (2, '测试：校区02-地址', '测试：校区02-邮箱', '测试：校区02-名称', '测试：校区02-手机', '测试：校区02-qq', 1, NULL, '2018-05-18 15:12:47', NULL, NULL);

-- ----------------------------
-- Table structure for os_company_info
-- ----------------------------
DROP TABLE IF EXISTS `os_company_info`;
CREATE TABLE `os_company_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `wx_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company_profile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `create_user` bigint(20) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `update_user` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for os_content
-- ----------------------------
DROP TABLE IF EXISTS `os_content`;
CREATE TABLE `os_content`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `index` int(11) NULL DEFAULT NULL,
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `create_user` bigint(20) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `update_user` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of os_content
-- ----------------------------
INSERT INTO `os_content` VALUES (1, 'https://img-blog.csdn.net/20170710225230330?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvc2F5dGltZQ==/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/SouthEast', '测试：轮播图-01-内容', '测试：轮播图-01-描述', 0, '测试：轮播图-01-图片', 1, '测试：轮播图-01-标题', 1, '2018-05-17 17:46:05', 140, NULL, NULL);
INSERT INTO `os_content` VALUES (2, 'https://img-blog.csdn.net/20170710225230330?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvc2F5dGltZQ==/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/SouthEast', '测试：轮播图-02-内容', '测试：轮播图-02-描述', 1, '测试：轮播图-02-图片', 1, '测试：轮播图-02-标题', 1, '2018-05-17 17:48:47', 140, NULL, NULL);
INSERT INTO `os_content` VALUES (3, 'https://www.baidu.com', '测试：优秀成绩-01-内容', '测试：优秀成绩-01-描述', 0, NULL, 1, 'string', 2, '2018-05-18 10:58:51', NULL, NULL, NULL);
INSERT INTO `os_content` VALUES (4, 'https://www.baidu.com', '测试：优秀成绩-02-内容', '测试：优秀成绩-02-描述', 0, NULL, 1, 'string', 2, '2018-05-18 10:59:27', NULL, NULL, NULL);
INSERT INTO `os_content` VALUES (5, 'https://www.baidu.com', '测试：家长寄语-02-内容', '测试：优秀寄语-02-描述', 0, NULL, 1, 'string', 3, '2018-05-18 10:59:50', NULL, NULL, NULL);
INSERT INTO `os_content` VALUES (6, 'https://www.baidu.com', '测试：家长寄语-01-内容', '测试：优秀寄语-01-描述', 0, NULL, 1, 'string', 3, '2018-05-18 10:59:59', NULL, '2018-05-18 11:00:19', NULL);
INSERT INTO `os_content` VALUES (7, '测试排序：20', '测试排序：20', '测试排序：20', NULL, '测试排序：20', 0, '测试排序：20', 1, '2018-05-18 16:38:43', NULL, NULL, NULL);
INSERT INTO `os_content` VALUES (9, '测试排序：21', '测试排序：21', '测试排序：21', 5, '测试排序：21', 1, '测试排序：21', 1, '2018-05-18 16:41:50', NULL, '2018-05-18 17:04:03', NULL);
INSERT INTO `os_content` VALUES (13, NULL, '测试排序：23', NULL, 2, NULL, 1, NULL, 1, '2018-05-18 16:49:33', NULL, NULL, NULL);
INSERT INTO `os_content` VALUES (14, NULL, '测试排序：24', NULL, 3, NULL, 1, NULL, 1, '2018-05-18 16:51:16', NULL, NULL, NULL);
INSERT INTO `os_content` VALUES (15, NULL, '测试排序：25', NULL, 4, NULL, 1, NULL, 1, '2018-05-18 16:59:02', NULL, NULL, NULL);
INSERT INTO `os_content` VALUES (16, NULL, '<p>111111111111111111111111</p>', NULL, NULL, NULL, 1, '11111111', 2, '2018-05-18 17:28:28', NULL, NULL, NULL);
INSERT INTO `os_content` VALUES (17, NULL, '<p>2222222222222222</p>', NULL, NULL, NULL, 1, '2222', 2, '2018-05-18 17:30:44', NULL, NULL, NULL);
INSERT INTO `os_content` VALUES (18, NULL, '<p>333333333333333</p>', NULL, NULL, NULL, 1, '33333', 2, '2018-05-18 17:34:35', NULL, NULL, NULL);
INSERT INTO `os_content` VALUES (19, NULL, '<p>444444444444444444444444</p>', NULL, NULL, NULL, 0, '444444', 2, '2018-05-18 17:36:43', NULL, '2018-05-18 18:01:18', NULL);
INSERT INTO `os_content` VALUES (20, NULL, '<p>555555555555</p>', NULL, NULL, NULL, 0, '5555', 2, '2018-05-18 17:37:12', NULL, '2018-05-18 18:00:09', NULL);

-- ----------------------------
-- Table structure for os_enroll
-- ----------------------------
DROP TABLE IF EXISTS `os_enroll`;
CREATE TABLE `os_enroll`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `campus_id` bigint(20) NULL DEFAULT NULL,
  `grade` int(11) NULL DEFAULT NULL,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `create_user` bigint(20) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `update_user` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKbdp8uf8jjswhrvoekllbjbbf0`(`campus_id`) USING BTREE,
  CONSTRAINT `FKbdp8uf8jjswhrvoekllbjbbf0` FOREIGN KEY (`campus_id`) REFERENCES `os_campus` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of os_enroll
-- ----------------------------
INSERT INTO `os_enroll` VALUES (1, 1, 1, '测试：课程体验-消息-01', '测试：课程体验-名称-01', '110', 1, 1, '2018-05-18 13:47:58', NULL, NULL, NULL);
INSERT INTO `os_enroll` VALUES (2, 1, 2, '测试：课程体验-消息-02', '测试：课程体验-名称-02', '110', 1, 1, '2018-05-18 13:48:40', NULL, NULL, NULL);
INSERT INTO `os_enroll` VALUES (3, 1, 3, '测试：课程体验-消息-03', '测试：课程体验-名称-03', '110', 1, 1, '2018-05-18 13:48:59', NULL, NULL, NULL);
INSERT INTO `os_enroll` VALUES (4, 1, NULL, NULL, '测试：体验10-名称', NULL, 1, NULL, '2018-05-18 14:46:44', NULL, NULL, NULL);
INSERT INTO `os_enroll` VALUES (5, 1, 4, '测试-体验课-04', '测试-体验课-04', '测试-体验课-04', 1, 1, '2018-05-18 15:02:12', NULL, NULL, NULL);
INSERT INTO `os_enroll` VALUES (6, 1, 4, '测试-体验课-04', '测试-体验课-04', '测试-体验课-04', 1, 1, '2018-05-18 15:09:10', NULL, NULL, NULL);
INSERT INTO `os_enroll` VALUES (7, 1, 4, '测试-体验课-06', '测试-体验课-06', '测试-体验课-06', 1, 1, '2018-05-18 15:11:10', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for os_friendly_link
-- ----------------------------
DROP TABLE IF EXISTS `os_friendly_link`;
CREATE TABLE `os_friendly_link`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(3) NULL DEFAULT NULL,
  `create_user` bigint(20) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_user` bigint(20) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of os_friendly_link
-- ----------------------------
INSERT INTO `os_friendly_link` VALUES (1, '测试：友情链接01-名字', '测试：友情链接01-网址', '测试：友情链接01-图片', 1, NULL, '2018-05-18 16:08:36', NULL, '2018-05-18 16:09:25');
INSERT INTO `os_friendly_link` VALUES (2, '测试：友情链接02-名字', '测试：友情链接02-网址', '测试：友情链接02-图片', 1, NULL, '2018-05-18 16:09:07', NULL, NULL);
INSERT INTO `os_friendly_link` VALUES (3, '测试：友情链接01-名字', '测试：友情链接01-网址', '测试：友情链接01-图片', 0, NULL, '2018-05-18 16:09:07', NULL, '2018-05-18 16:10:39');

-- ----------------------------
-- Table structure for os_news
-- ----------------------------
DROP TABLE IF EXISTS `os_news`;
CREATE TABLE `os_news`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `news_category_id` bigint(20) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` int(11) NULL DEFAULT 0,
  `type` int(3) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `create_user` bigint(20) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `update_user` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKkt3j5645fosbh0uusxr5vw72a`(`news_category_id`) USING BTREE,
  CONSTRAINT `FKkt3j5645fosbh0uusxr5vw72a` FOREIGN KEY (`news_category_id`) REFERENCES `os_news_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of os_news
-- ----------------------------
INSERT INTO `os_news` VALUES (1, NULL, '测试-新闻-内容01', '测试-新闻-描述01', '测试-新闻-标题01', 20, 1, 1, '2018-05-18 11:42:32', NULL, NULL, NULL);
INSERT INTO `os_news` VALUES (2, NULL, '测试-新闻-内容02', '测试-新闻-描述02', '测试-新闻-标题02', 0, 2, 1, '2018-05-18 11:43:34', NULL, '2018-05-18 11:43:58', NULL);
INSERT INTO `os_news` VALUES (3, NULL, '测试-新闻-内容03', '测试-新闻-描述03', '测试-新闻-标题03', 0, 2, 1, '2018-05-18 11:43:34', NULL, '2018-05-18 11:43:58', NULL);
INSERT INTO `os_news` VALUES (4, NULL, '测试-新闻-内容04', '测试-新闻-描述04', '测试-新闻-标题04', 0, 3, 0, '2018-05-18 11:44:23', NULL, '2018-05-18 12:02:27', NULL);
INSERT INTO `os_news` VALUES (5, NULL, '测试-新闻-内容05', '测试-新闻-描述05', '测试-新闻-标题05', 0, 3, 1, '2018-05-18 11:44:23', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for os_news_category
-- ----------------------------
DROP TABLE IF EXISTS `os_news_category`;
CREATE TABLE `os_news_category`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `create_user` bigint(20) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `update_user` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for os_user
-- ----------------------------
DROP TABLE IF EXISTS `os_user`;
CREATE TABLE `os_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` int(11) NULL DEFAULT NULL,
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_login_failure_time` datetime(0) NULL DEFAULT NULL,
  `last_login_time` datetime(0) NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `create_user` bigint(20) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_user` bigint(20) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
