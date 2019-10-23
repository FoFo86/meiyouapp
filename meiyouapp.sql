/*
Navicat MySQL Data Transfer

Source Server         : meiyouapp
Source Server Version : 50720
Source Host           : rm-bp1msl568beq541b6ro.mysql.rds.aliyuncs.com:3306
Source Database       : meiyouapp

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2019-09-20 17:28:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `publish_id` int(11) NOT NULL DEFAULT '0' COMMENT '发布者id',
  `imgs_url` varchar(2000) NOT NULL DEFAULT '' COMMENT '动态图',
  `content` varchar(500) DEFAULT '' COMMENT '动态内容',
  `read_num` int(11) NOT NULL DEFAULT '0' COMMENT '阅读量',
  `like_num` int(11) NOT NULL DEFAULT '0' COMMENT '点赞量',
  `commont_num` int(11) NOT NULL DEFAULT '0' COMMENT 'bool_close',
  `bool_close` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否屏蔽(默认值0)',
  `file_type` int(11) NOT NULL DEFAULT '1' COMMENT '1图片2视频',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='动态表';

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES ('1', '2019-09-20 09:36:45', '2019-09-20 09:36:45', '4', '[\"http://192.168.5.47:80/upload/activity/img/2019/09/12/e89511f8-62f5-4e98-a453-dfc13c58342d.jpg\"]', '石林已醉', '7', '1', '10', '0', '1');
INSERT INTO `activity` VALUES ('2', '2019-09-19 20:30:07', '2019-09-19 20:30:08', '1', '[\"http://192.168.5.47:80/upload/activity/video/2019/09/12/3a5c3135-d0dd-4f47-af73-21107554cc15.mp4\"]', '', '2', '0', '0', '0', '2');
INSERT INTO `activity` VALUES ('3', '2019-09-12 18:25:43', '2019-09-12 18:25:44', '4', '[\"http://114.55.242.196:80/upload/activity/img/2019/09/12/ed341cc1-df7c-4f37-b0ea-39ebc1e30342.jpg\"]', '哈哈哈', '2', '0', '0', '0', '1');
INSERT INTO `activity` VALUES ('4', '2019-09-20 09:49:37', '2019-09-20 09:49:38', '4', '[\"http://114.55.242.196:80/upload/activity/img/2019/09/12/3eca06c1-5972-4061-9fe0-95f3ac85897d.jpg\",\"http://114.55.242.196:80/upload/activity/img/2019/09/12/1c6480ce-3336-4745-8f3b-58a44740c178.jpg\",\"http://114.55.242.196:80/upload/activity/img/2019/09/12/5563b0a0-353a-421c-9c7a-f8b3aba68bd3.jpg\",\"http://114.55.242.196:80/upload/activity/img/2019/09/12/bf1adb87-7532-458a-ba9c-8ce3753f6e5a.jpg\"]', '测试', '6', '0', '2', '0', '1');
INSERT INTO `activity` VALUES ('5', '2019-09-20 16:57:03', '2019-09-20 16:57:03', '3', '[\"http://114.55.242.196:80/upload/activity/video/2019/09/12/c45b2e15-dfd0-428d-a4bb-1b6571ef7748.mp4\"]', '', '9', '0', '0', '0', '2');
INSERT INTO `activity` VALUES ('6', '2019-09-18 11:52:05', '2019-09-18 11:49:54', '7', '[\"http://114.55.242.196:80/upload/activity/video/2019/09/12/e68e7c40-b2e9-4eed-8352-49a159f0f4a4.mp4\"]', '', '4', '0', '1', '0', '2');
INSERT INTO `activity` VALUES ('7', '2019-09-20 16:57:20', '2019-09-20 16:57:20', '7', '[\"http://114.55.242.196:80/upload/activity/video/2019/09/12/6e2e6a59-6c20-462e-849e-499342feede7.mp4\"]', '', '27', '0', '4', '0', '2');
INSERT INTO `activity` VALUES ('8', '2019-09-16 20:57:30', '2019-09-16 20:57:30', '6', '[\"http://114.55.242.196:80/upload/activity/video/2019/09/14/51445497-ef64-42da-9f0d-eea5b313d20f.mp4\"]', '', '1', '2', '0', '0', '2');
INSERT INTO `activity` VALUES ('9', '2019-09-14 14:42:13', '2019-09-14 14:42:13', '6', '[\"http://114.55.242.196:80/upload/activity/img/2019/09/14/90fa7583-2638-4e94-9f68-51c1ed9b05fc.jpg\",\"http://114.55.242.196:80/upload/activity/img/2019/09/14/46b86828-2175-4cdc-bd8d-3fa326de5e9d.jpg\",\"http://114.55.242.196:80/upload/activity/img/2019/09/14/15707ef6-7f47-4c1d-9b89-77ca7fa247c7.jpg\",\"http://114.55.242.196:80/upload/activity/img/2019/09/14/a1a17530-467c-4d95-999d-60b4b3b8db2e.jpg\"]', '', '0', '0', '0', '0', '1');
INSERT INTO `activity` VALUES ('10', '2019-09-14 14:47:45', '2019-09-14 14:47:45', '6', '[\"http://114.55.242.196:80/upload/activity/img/2019/09/14/df57420b-52c4-4fe0-9d7f-6f2593db9ae4.jpg\",\"http://114.55.242.196:80/upload/activity/img/2019/09/14/c5706f04-e881-42fc-96ff-60e3ad5d8336.jpg\",\"http://114.55.242.196:80/upload/activity/img/2019/09/14/a9005219-c6ec-4811-ab29-f1bb30651a76.jpeg\",\"http://114.55.242.196:80/upload/activity/img/2019/09/14/888e86ee-764d-4b05-bd00-245fa413defb.jpg\"]', '', '0', '0', '0', '0', '1');
INSERT INTO `activity` VALUES ('11', '2019-09-14 14:49:15', '2019-09-14 14:49:15', '6', '[\"http://114.55.242.196:80/upload/activity/img/2019/09/14/94b7ec2d-7430-4bd4-9f97-8e319e194ea9.jpg\",\"http://114.55.242.196:80/upload/activity/img/2019/09/14/a33d7292-aef3-4a35-8521-7beb7bd8d1fc.jpg\"]', '', '0', '0', '0', '0', '1');
INSERT INTO `activity` VALUES ('12', '2019-09-14 14:51:58', '2019-09-14 14:51:58', '6', '[\"http://114.55.242.196:80/upload/activity/img/2019/09/14/b8a5035a-e5d8-4e63-98d6-a8633e0c4f74.png\",\"http://114.55.242.196:80/upload/activity/img/2019/09/14/810f3f7c-0ecc-46e4-b0d8-7830004bca2b.png\"]', '', '0', '0', '0', '0', '1');
INSERT INTO `activity` VALUES ('13', '2019-09-14 14:56:41', '2019-09-14 14:56:41', '6', '[\"http://114.55.242.196:80/upload/activity/img/2019/09/14/7562b125-0663-45f2-beb9-1aef6732cd7a.png\",\"http://114.55.242.196:80/upload/activity/img/2019/09/14/f25a53f1-5ce3-4015-a689-e50563dce777.png\"]', '', '0', '0', '0', '0', '1');
INSERT INTO `activity` VALUES ('14', '2019-09-14 15:32:44', '2019-09-14 15:32:44', '6', '[\"http://114.55.242.196:80/upload/activity/img/2019/09/14/e76dabe7-ffbb-48a2-848f-52c1c29b7956.png\",\"http://114.55.242.196:80/upload/activity/img/2019/09/14/d7662378-ea8a-4e8e-b1a8-6eec0f2efbf9.png\"]', '', '0', '1', '0', '0', '1');
INSERT INTO `activity` VALUES ('15', '2019-09-16 17:11:40', '2019-09-16 17:11:40', '6', '[\"http://114.55.242.196:80/upload/activity/img/2019/09/14/5099bd8d-9962-41fe-b91d-41fd6b721a62.jpeg\",\"http://114.55.242.196:80/upload/activity/img/2019/09/14/c8fb895b-3f58-4179-9403-5555c621cb3e.jpg\",\"http://114.55.242.196:80/upload/activity/img/2019/09/14/6186b01e-83a5-4ddb-b329-75000f8f5e24.jpeg\",\"http://114.55.242.196:80/upload/activity/img/2019/09/14/9a83c59e-a504-4e9e-8a58-6537b4c2eef3.jpg\",\"http://114.55.242.196:80/upload/activity/img/2019/09/14/9f0a750a-db8e-4fa5-aca1-7a014fc5d1f0.jpeg\",\"http://114.55.242.196:80/upload/activity/img/2019/09/14/37d9dff0-4d39-4d8d-9dea-5acfd5a4eb13.jpg\",\"http://114.55.242.196:80/upload/activity/img/2019/09/14/51f102b8-eb24-453b-9321-186c2729fb5a.jpg\",\"http://114.55.242.196:80/upload/activity/img/2019/09/14/55c6425b-8f9f-4ecf-9a1a-1505a839710a.jpg\",\"http://114.55.242.196:80/upload/activity/img/2019/09/14/70f6d6be-8ab6-4c4c-b97c-68b26342cd1e.jpg\"]', '拿下', '0', '1', '1', '0', '1');
INSERT INTO `activity` VALUES ('22', '2019-09-16 17:11:32', '2019-09-16 17:11:32', '6', '[\"http://114.55.242.196:80/upload/activity/img/2019/09/14/6c9df19a-57a4-4689-a0bd-075d034cdcb2.png\"]', '', '0', '1', '0', '0', '1');
INSERT INTO `activity` VALUES ('23', '2019-09-20 09:33:47', '2019-09-20 09:33:47', '6', '[\"http://114.55.242.196:80/upload/activity/video/2019/09/14/6c688f29-2cec-4acd-950c-d32dc0b90be8.mp4\"]', '', '4', '1', '2', '0', '2');
INSERT INTO `activity` VALUES ('25', '2019-09-20 10:33:26', '2019-09-20 10:33:27', '5', '[\"http://114.55.242.196:80/upload/activity/video/2019/09/19/1a3bff2d-620d-47db-a56d-3728b54b4c98.mp4\"]', '妈的卡死了', '3', '1', '0', '0', '2');
INSERT INTO `activity` VALUES ('27', '2019-09-20 15:48:04', '2019-09-20 15:48:04', '1', '[\"http://114.55.242.196:80/upload/activity/img/2019/09/20/f2c338cc-878e-4fcc-b325-848d5f27fc7d.jpg\",\"http://114.55.242.196:80/upload/activity/img/2019/09/20/2f7a60ba-4907-4bf6-9750-982a68b75c59.jpg\",\"http://114.55.242.196:80/upload/activity/img/2019/09/20/7e59c255-7c4f-4411-932a-4eff6ce1d086.jpg\",\"http://114.55.242.196:80/upload/activity/img/2019/09/20/82cfdfd3-457a-415a-aba4-0891ebb3e0f5.jpg\",\"http://114.55.242.196:80/upload/activity/img/2019/09/20/feef1249-1e02-436c-b2be-de65cdd19269.jpg\",\"http://114.55.242.196:80/upload/activity/img/2019/09/20/11d6089f-fabd-441f-8696-e98c906e30f3.jpg\",\"http://114.55.242.196:80/upload/activity/img/2019/09/20/6b20d1f1-ea9c-410c-8414-4eb2a2d37460.jpg\",\"http://114.55.242.196:80/upload/activity/img/2019/09/20/fe81b8fb-eff9-4bed-9f81-ffdfd02140a1.jpg\",\"http://114.55.242.196:80/upload/activity/img/2019/09/20/48d88c31-7833-49dd-bfe0-ea99048b8d4e.jpg\"]', '', '5', '1', '1', '0', '1');

-- ----------------------------
-- Table structure for activity_like
-- ----------------------------
DROP TABLE IF EXISTS `activity_like`;
CREATE TABLE `activity_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '动态id',
  `like_id` int(11) NOT NULL DEFAULT '0' COMMENT '点赞人id',
  `bool_see` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否被查看(默认值0)',
  `bool_close` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COMMENT='动态点赞';

-- ----------------------------
-- Records of activity_like
-- ----------------------------
INSERT INTO `activity_like` VALUES ('9', '2019-09-12 18:26:59', '2019-09-12 18:27:00', '1', '1', '1', '0');
INSERT INTO `activity_like` VALUES ('13', '2019-09-16 11:15:05', '2019-09-16 11:15:06', '8', '6', '1', '1');
INSERT INTO `activity_like` VALUES ('19', '2019-09-16 11:15:04', '2019-09-16 11:15:04', '14', '6', '1', '1');
INSERT INTO `activity_like` VALUES ('47', '2019-09-19 16:40:26', '2019-09-19 16:40:27', '24', '1', '1', '0');
INSERT INTO `activity_like` VALUES ('67', '2019-09-19 16:40:26', '2019-09-19 16:40:27', '24', '6', '1', '0');
INSERT INTO `activity_like` VALUES ('68', '2019-09-18 16:06:56', '2019-09-18 16:04:45', '23', '6', '1', '0');
INSERT INTO `activity_like` VALUES ('70', '2019-09-18 16:06:56', '2019-09-18 16:04:46', '22', '6', '1', '0');
INSERT INTO `activity_like` VALUES ('71', '2019-09-18 16:06:57', '2019-09-18 16:04:46', '15', '6', '1', '0');
INSERT INTO `activity_like` VALUES ('72', '2019-09-18 16:06:57', '2019-09-18 16:04:46', '8', '1', '1', '0');
INSERT INTO `activity_like` VALUES ('73', '2019-09-20 11:21:59', '2019-09-20 11:21:59', '27', '6', '1', '0');
INSERT INTO `activity_like` VALUES ('74', '2019-09-20 14:08:19', '2019-09-20 14:08:19', '25', '6', '1', '0');

-- ----------------------------
-- Table structure for activity_read
-- ----------------------------
DROP TABLE IF EXISTS `activity_read`;
CREATE TABLE `activity_read` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL,
  `reader_id` int(11) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity_read
-- ----------------------------
INSERT INTO `activity_read` VALUES ('1', '1', '1', '2019-09-12 17:39:09', '2019-09-12 17:39:09');
INSERT INTO `activity_read` VALUES ('2', '1', '1', '2019-09-12 17:40:15', '2019-09-12 17:40:15');
INSERT INTO `activity_read` VALUES ('3', '1', '1', '2019-09-12 17:40:23', '2019-09-12 17:40:23');
INSERT INTO `activity_read` VALUES ('4', '1', '1', '2019-09-12 17:45:05', '2019-09-12 17:45:05');
INSERT INTO `activity_read` VALUES ('5', '3', '7', '2019-09-12 18:22:29', '2019-09-12 18:22:29');
INSERT INTO `activity_read` VALUES ('6', '5', '7', '2019-09-12 18:22:34', '2019-09-12 18:22:34');
INSERT INTO `activity_read` VALUES ('7', '5', '4', '2019-09-12 18:25:04', '2019-09-12 18:25:04');
INSERT INTO `activity_read` VALUES ('8', '3', '7', '2019-09-12 18:25:44', '2019-09-12 18:25:44');
INSERT INTO `activity_read` VALUES ('9', '5', '7', '2019-09-12 18:25:51', '2019-09-12 18:25:51');
INSERT INTO `activity_read` VALUES ('10', '7', '6', '2019-09-14 09:53:22', '2019-09-14 09:53:22');
INSERT INTO `activity_read` VALUES ('11', '7', '6', '2019-09-14 09:56:03', '2019-09-14 09:56:03');
INSERT INTO `activity_read` VALUES ('12', '7', '6', '2019-09-14 09:56:08', '2019-09-14 09:56:08');
INSERT INTO `activity_read` VALUES ('13', '7', '6', '2019-09-14 09:56:14', '2019-09-14 09:56:14');
INSERT INTO `activity_read` VALUES ('14', '7', '6', '2019-09-14 09:56:19', '2019-09-14 09:56:19');
INSERT INTO `activity_read` VALUES ('15', '7', '6', '2019-09-14 09:56:21', '2019-09-14 09:56:21');
INSERT INTO `activity_read` VALUES ('16', '7', '6', '2019-09-14 09:56:24', '2019-09-14 09:56:24');
INSERT INTO `activity_read` VALUES ('17', '7', '6', '2019-09-14 09:56:29', '2019-09-14 09:56:29');
INSERT INTO `activity_read` VALUES ('18', '7', '6', '2019-09-14 09:56:37', '2019-09-14 09:56:37');
INSERT INTO `activity_read` VALUES ('19', '7', '6', '2019-09-14 09:56:39', '2019-09-14 09:56:39');
INSERT INTO `activity_read` VALUES ('20', '7', '6', '2019-09-14 09:56:45', '2019-09-14 09:56:45');
INSERT INTO `activity_read` VALUES ('21', '7', '6', '2019-09-14 09:56:49', '2019-09-14 09:56:49');
INSERT INTO `activity_read` VALUES ('22', '7', '6', '2019-09-14 10:02:15', '2019-09-14 10:02:15');
INSERT INTO `activity_read` VALUES ('23', '7', '6', '2019-09-14 10:02:22', '2019-09-14 10:02:22');
INSERT INTO `activity_read` VALUES ('24', '7', '6', '2019-09-14 10:02:25', '2019-09-14 10:02:25');
INSERT INTO `activity_read` VALUES ('25', '7', '6', '2019-09-14 10:02:42', '2019-09-14 10:02:42');
INSERT INTO `activity_read` VALUES ('26', '7', '6', '2019-09-14 10:13:24', '2019-09-14 10:13:24');
INSERT INTO `activity_read` VALUES ('27', '7', '6', '2019-09-14 10:14:38', '2019-09-14 10:14:38');
INSERT INTO `activity_read` VALUES ('28', '7', '6', '2019-09-14 11:45:09', '2019-09-14 11:45:09');
INSERT INTO `activity_read` VALUES ('29', '7', '6', '2019-09-14 11:45:55', '2019-09-14 11:45:55');
INSERT INTO `activity_read` VALUES ('30', '1', '5', '2019-09-15 15:26:45', '2019-09-15 15:26:45');
INSERT INTO `activity_read` VALUES ('31', '24', '1', '2019-09-16 13:43:28', '2019-09-16 13:43:28');
INSERT INTO `activity_read` VALUES ('32', '24', '1', '2019-09-16 13:43:32', '2019-09-16 13:43:32');
INSERT INTO `activity_read` VALUES ('33', '24', '1', '2019-09-16 13:43:35', '2019-09-16 13:43:35');
INSERT INTO `activity_read` VALUES ('34', '24', '1', '2019-09-16 13:43:47', '2019-09-16 13:43:47');
INSERT INTO `activity_read` VALUES ('35', '7', '5', '2019-09-16 14:44:55', '2019-09-16 14:44:55');
INSERT INTO `activity_read` VALUES ('36', '24', '1', '2019-09-16 14:48:33', '2019-09-16 14:48:33');
INSERT INTO `activity_read` VALUES ('37', '24', '1', '2019-09-16 14:48:43', '2019-09-16 14:48:43');
INSERT INTO `activity_read` VALUES ('38', '23', '1', '2019-09-16 14:49:23', '2019-09-16 14:49:23');
INSERT INTO `activity_read` VALUES ('39', '8', '1', '2019-09-16 15:48:55', '2019-09-16 15:48:55');
INSERT INTO `activity_read` VALUES ('40', '24', '6', '2019-09-16 17:11:14', '2019-09-16 17:11:14');
INSERT INTO `activity_read` VALUES ('41', '24', '1', '2019-09-16 17:36:35', '2019-09-16 17:36:35');
INSERT INTO `activity_read` VALUES ('42', '1', '1', '2019-09-16 19:17:38', '2019-09-16 19:17:38');
INSERT INTO `activity_read` VALUES ('43', '4', '5', '2019-09-18 11:13:55', '2019-09-18 11:13:55');
INSERT INTO `activity_read` VALUES ('44', '6', '5', '2019-09-18 11:21:14', '2019-09-18 11:21:14');
INSERT INTO `activity_read` VALUES ('45', '23', '5', '2019-09-18 11:22:44', '2019-09-18 11:22:44');
INSERT INTO `activity_read` VALUES ('46', '6', '5', '2019-09-18 11:31:09', '2019-09-18 11:31:09');
INSERT INTO `activity_read` VALUES ('47', '6', '5', '2019-09-18 11:32:33', '2019-09-18 11:32:33');
INSERT INTO `activity_read` VALUES ('48', '4', '5', '2019-09-18 11:35:41', '2019-09-18 11:35:41');
INSERT INTO `activity_read` VALUES ('49', '6', '5', '2019-09-18 11:49:54', '2019-09-18 11:49:54');
INSERT INTO `activity_read` VALUES ('50', '24', '1', '2019-09-18 14:10:27', '2019-09-18 14:10:27');
INSERT INTO `activity_read` VALUES ('51', '2', '5', '2019-09-18 15:10:01', '2019-09-18 15:10:01');
INSERT INTO `activity_read` VALUES ('52', '24', '6', '2019-09-18 18:21:41', '2019-09-18 18:21:41');
INSERT INTO `activity_read` VALUES ('53', '24', '6', '2019-09-18 18:21:45', '2019-09-18 18:21:45');
INSERT INTO `activity_read` VALUES ('54', '7', '6', '2019-09-18 18:22:18', '2019-09-18 18:22:18');
INSERT INTO `activity_read` VALUES ('55', '7', '5', '2019-09-19 10:45:18', '2019-09-19 10:45:18');
INSERT INTO `activity_read` VALUES ('56', '2', '5', '2019-09-19 20:30:08', '2019-09-19 20:30:08');
INSERT INTO `activity_read` VALUES ('57', '24', '4', '2019-09-20 09:24:08', '2019-09-20 09:24:08');
INSERT INTO `activity_read` VALUES ('58', '23', '5', '2019-09-20 09:28:36', '2019-09-20 09:28:36');
INSERT INTO `activity_read` VALUES ('59', '25', '1', '2019-09-20 09:28:59', '2019-09-20 09:28:59');
INSERT INTO `activity_read` VALUES ('60', '7', '4', '2019-09-20 09:32:15', '2019-09-20 09:32:15');
INSERT INTO `activity_read` VALUES ('61', '7', '4', '2019-09-20 09:32:28', '2019-09-20 09:32:28');
INSERT INTO `activity_read` VALUES ('62', '23', '5', '2019-09-20 09:33:47', '2019-09-20 09:33:47');
INSERT INTO `activity_read` VALUES ('63', '1', '5', '2019-09-20 09:36:45', '2019-09-20 09:36:45');
INSERT INTO `activity_read` VALUES ('64', '4', '5', '2019-09-20 09:37:06', '2019-09-20 09:37:06');
INSERT INTO `activity_read` VALUES ('65', '4', '5', '2019-09-20 09:37:16', '2019-09-20 09:37:16');
INSERT INTO `activity_read` VALUES ('66', '4', '5', '2019-09-20 09:37:23', '2019-09-20 09:37:23');
INSERT INTO `activity_read` VALUES ('67', '4', '5', '2019-09-20 09:49:38', '2019-09-20 09:49:38');
INSERT INTO `activity_read` VALUES ('68', '27', '4', '2019-09-20 10:20:33', '2019-09-20 10:20:33');
INSERT INTO `activity_read` VALUES ('69', '25', '6', '2019-09-20 10:33:16', '2019-09-20 10:33:16');
INSERT INTO `activity_read` VALUES ('70', '25', '6', '2019-09-20 10:33:27', '2019-09-20 10:33:27');
INSERT INTO `activity_read` VALUES ('71', '7', '6', '2019-09-20 10:33:32', '2019-09-20 10:33:32');
INSERT INTO `activity_read` VALUES ('72', '27', '6', '2019-09-20 10:33:37', '2019-09-20 10:33:37');
INSERT INTO `activity_read` VALUES ('73', '27', '6', '2019-09-20 10:33:41', '2019-09-20 10:33:41');
INSERT INTO `activity_read` VALUES ('74', '5', '5', '2019-09-20 11:49:39', '2019-09-20 11:49:39');
INSERT INTO `activity_read` VALUES ('75', '5', '5', '2019-09-20 11:49:42', '2019-09-20 11:49:42');
INSERT INTO `activity_read` VALUES ('76', '27', '5', '2019-09-20 14:45:10', '2019-09-20 14:45:10');
INSERT INTO `activity_read` VALUES ('77', '27', '5', '2019-09-20 15:47:54', '2019-09-20 15:47:54');
INSERT INTO `activity_read` VALUES ('78', '5', '4', '2019-09-20 16:56:37', '2019-09-20 16:56:37');
INSERT INTO `activity_read` VALUES ('79', '5', '4', '2019-09-20 16:56:39', '2019-09-20 16:56:39');
INSERT INTO `activity_read` VALUES ('80', '5', '4', '2019-09-20 16:56:50', '2019-09-20 16:56:50');
INSERT INTO `activity_read` VALUES ('81', '5', '4', '2019-09-20 16:57:03', '2019-09-20 16:57:03');
INSERT INTO `activity_read` VALUES ('82', '7', '4', '2019-09-20 16:57:20', '2019-09-20 16:57:20');

-- ----------------------------
-- Table structure for activity_report
-- ----------------------------
DROP TABLE IF EXISTS `activity_report`;
CREATE TABLE `activity_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(25) NOT NULL DEFAULT '0',
  `reporter_id` int(11) NOT NULL DEFAULT '0',
  `activity_id` int(11) NOT NULL DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `update_teim` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity_report
-- ----------------------------
INSERT INTO `activity_report` VALUES ('1', '[色情]', '11', '1', '2019-09-16 09:31:37', '2019-09-16 09:31:37');

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_account` varchar(255) NOT NULL DEFAULT '' COMMENT '账号',
  `admin_password` varchar(255) NOT NULL DEFAULT '' COMMENT '密码',
  `role` int(11) NOT NULL COMMENT '角色',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '123456', '1', '2019-08-27 08:57:21', '2019-08-27 08:57:23');

-- ----------------------------
-- Table structure for appointment
-- ----------------------------
DROP TABLE IF EXISTS `appointment`;
CREATE TABLE `appointment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publisher_id` int(11) NOT NULL DEFAULT '0' COMMENT '发布者',
  `appoint_address` varchar(255) NOT NULL DEFAULT '' COMMENT '约会地点',
  `appoint_time` varchar(255) NOT NULL DEFAULT '' COMMENT '约会时间',
  `appoint_context` varchar(1000) NOT NULL DEFAULT '' COMMENT '约会留言',
  `need_number` int(11) NOT NULL DEFAULT '0' COMMENT '需要人数',
  `pay_type` int(11) NOT NULL DEFAULT '0' COMMENT '支付类型',
  `appoint_imgs` varchar(2000) NOT NULL DEFAULT '' COMMENT '约会图片',
  `reward` int(11) NOT NULL DEFAULT '0' COMMENT '悬赏金',
  `state` int(11) NOT NULL DEFAULT '0' COMMENT '状态（0是未发布状态，1是发布完成状态，2是有人报名等待选中状态，3是选中人员等待赴约状态，4是报名者确定赴约，5是发布者确定报名者已到达，订单完成，6是取消赴约状态，7是删除记录，8重新发布）',
  `confirm_id` int(11) NOT NULL DEFAULT '0' COMMENT '确认人选',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='约会表';

-- ----------------------------
-- Records of appointment
-- ----------------------------
INSERT INTO `appointment` VALUES ('1', '1', '红树林', '2019.9.12\n16:21', '约会', '1', '0', '[\"http://192.168.5.47:80/upload/appointment/2019/09/12/ce523d07-99fd-4bf7-ae83-986a39b36b4b.jpg\",\"http://192.168.5.47:80/upload/appointment/2019/09/12/b1f5c807-2caa-4b45-bb5c-befa82e30d36.jpg\",\"http://192.168.5.47:80/upload/appointment/2019/09/12/fcc81b9b-f25b-4daa-87f8-a0dac1cc7575.jpg\",\"http://192.168.5.47:80/upload/appointment/2019/09/12/bce0a25b-d5c4-404d-877a-ebe89f7097c7.jpg\"]', '10', '7', '5', '2019-09-12 16:19:24', '2019-09-12 16:24:41');
INSERT INTO `appointment` VALUES ('2', '1', '香港', '2019.9.12\n16:39', '购物', '1', '1', '[\"http://192.168.5.47:80/upload/appointment/2019/09/12/19da2226-9da2-416f-b9c9-cff788314007.jpg\",\"http://192.168.5.47:80/upload/appointment/2019/09/12/f9445484-d782-463d-9f2f-3e0d506221c4.jpg\",\"http://192.168.5.47:80/upload/appointment/2019/09/12/ebe157f6-0326-4ba2-b31f-690a0a1cb773.jpg\"]', '10', '1', '0', '2019-09-12 16:37:51', '2019-09-12 16:41:37');
INSERT INTO `appointment` VALUES ('3', '1', '神农架', '2019.9.12\n16.41', '看野人', '1', '1', '[\"http://192.168.5.47:80/upload/appointment/2019/09/12/affa9b46-55fa-4498-92e6-f4721e1ed178.jpg\",\"http://192.168.5.47:80/upload/appointment/2019/09/12/a3fb2461-ac52-43f4-99e1-57d5cf85ffdb.jpg\"]', '10', '1', '0', '2019-09-12 16:39:45', '2019-09-12 16:39:45');
INSERT INTO `appointment` VALUES ('4', '1', '华山', '2019.9.12\n16:42', '华山论剑', '1', '0', '[\"http://192.168.5.47:80/upload/appointment/2019/09/12/33cb8e2a-bb75-4393-a233-aa51b7abc3a0.jpg\",\"http://192.168.5.47:80/upload/appointment/2019/09/12/b1330dca-7350-4b9a-8d76-e478db2e4d7e.jpg\",\"http://192.168.5.47:80/upload/appointment/2019/09/12/ef5d1cc4-0e44-4adb-ab59-ae8a0ded71d4.jpg\",\"http://192.168.5.47:80/upload/appointment/2019/09/12/aebf883e-9a98-4b05-b64c-775b4150d075.jpg\",\"http://192.168.5.47:80/upload/appointment/2019/09/12/f3593299-398b-4d99-933d-cca63283e55d.jpg\"]', '10', '2', '0', '2019-09-12 16:40:49', '2019-09-12 16:41:54');
INSERT INTO `appointment` VALUES ('5', '1', '11', '11', '11', '1', '0', '[\"http://114.55.242.196:80/upload/appointment/2019/09/12/037b6893-83cf-413d-9d11-2aa97d6482d0.jpg\"]', '20', '1', '0', '2019-09-13 00:21:40', '2019-09-13 00:21:40');
INSERT INTO `appointment` VALUES ('6', '6', '10.1', '给给给给给给给给给给给给', '给给给给给给给给给给给给', '1', '0', '[\"http://114.55.242.196:80/upload/appointment/2019/09/14/833a61c2-118d-4b6e-ae01-9a48f3c7f5e9.jpg\",\"http://114.55.242.196:80/upload/appointment/2019/09/14/8575f6c1-e72f-4bd0-80a2-11c288a1eaf1.jpeg\"]', '1', '1', '0', '2019-09-14 11:15:36', '2019-09-14 11:15:36');
INSERT INTO `appointment` VALUES ('7', '6', '北京', '国庆', '看阅兵', '1', '1', '[\"http://114.55.242.196:80/upload/appointment/2019/09/14/3c3b1165-038b-471e-a95e-56a45d3f50ae.jpg\",\"http://114.55.242.196:80/upload/appointment/2019/09/14/4ee57d73-1b51-4234-937d-6194a38331c0.jpg\"]', '1', '1', '0', '2019-09-14 11:16:48', '2019-09-14 11:16:48');
INSERT INTO `appointment` VALUES ('8', '6', '日本', '国庆节', '赏花', '1', '0', '[\"http://114.55.242.196:80/upload/appointment/2019/09/14/d6076ac6-4560-42ff-a4ed-cba118a13ab1.jpg\"]', '2', '1', '0', '2019-09-14 11:23:20', '2019-09-14 11:23:20');
INSERT INTO `appointment` VALUES ('9', '6', '坂田', '国庆', '冲', '1', '0', '[\"http://114.55.242.196:80/upload/appointment/2019/09/14/a02456c9-3886-427c-ac2c-e2c1adda9d3f.jpg\",\"http://114.55.242.196:80/upload/appointment/2019/09/14/b7768bd6-a9a2-4e45-af55-e422cef17020.jpg\",\"http://114.55.242.196:80/upload/appointment/2019/09/14/6187f81b-d7e9-4386-bc69-7c4d98b17037.jpg\",\"http://114.55.242.196:80/upload/appointment/2019/09/14/976cf1ae-2f8b-4192-9808-c71e8802b8f5.jpg\"]', '1', '1', '0', '2019-09-14 11:36:11', '2019-09-14 11:36:11');
INSERT INTO `appointment` VALUES ('10', '6', '北京', '国庆节', '吃烤鸭', '1', '0', '[\"http://114.55.242.196:80/upload/appointment/2019/09/14/81450e62-53ca-433c-a565-a2beeca1b9e4.jpg\"]', '1', '1', '0', '2019-09-14 11:45:42', '2019-09-14 11:45:42');

-- ----------------------------
-- Table structure for appoint_ask
-- ----------------------------
DROP TABLE IF EXISTS `appoint_ask`;
CREATE TABLE `appoint_ask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appoint_id` int(11) NOT NULL DEFAULT '0' COMMENT '约会id',
  `asker_id` int(11) NOT NULL DEFAULT '0' COMMENT '申请人',
  `ask_state` int(11) NOT NULL DEFAULT '0' COMMENT '申请状态（0是未报名，1是报名成功，2是被选中，3是没有被选中，4是取消报名，5是取消赴约，6确定赴约，7订单完成，8对方重新发布，9删除记录）',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='约会报名表';

-- ----------------------------
-- Records of appoint_ask
-- ----------------------------
INSERT INTO `appoint_ask` VALUES ('1', '1', '5', '9', '2019-09-12 16:19:52', '2019-09-12 16:20:37');
INSERT INTO `appoint_ask` VALUES ('2', '1', '4', '9', '2019-09-12 16:20:04', '2019-09-12 16:21:47');
INSERT INTO `appoint_ask` VALUES ('3', '1', '5', '9', '2019-09-12 16:21:06', '2019-09-12 16:22:20');
INSERT INTO `appoint_ask` VALUES ('4', '1', '5', '9', '2019-09-12 16:22:42', '2019-09-12 16:23:02');
INSERT INTO `appoint_ask` VALUES ('5', '1', '5', '9', '2019-09-12 16:23:34', '2019-09-12 16:24:03');
INSERT INTO `appoint_ask` VALUES ('6', '1', '5', '9', '2019-09-12 16:24:27', '2019-09-12 16:24:38');
INSERT INTO `appoint_ask` VALUES ('7', '2', '5', '4', '2019-09-12 16:38:36', '2019-09-12 16:38:47');
INSERT INTO `appoint_ask` VALUES ('8', '2', '5', '5', '2019-09-12 16:38:56', '2019-09-12 16:41:37');
INSERT INTO `appoint_ask` VALUES ('9', '4', '5', '1', '2019-09-12 16:41:54', '2019-09-12 16:41:54');

-- ----------------------------
-- Table structure for authorization
-- ----------------------------
DROP TABLE IF EXISTS `authorization`;
CREATE TABLE `authorization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `identity_type` int(11) NOT NULL COMMENT '登录类型',
  `identifier` varchar(500) NOT NULL DEFAULT '' COMMENT '身份唯一标识',
  `credential` varchar(500) NOT NULL DEFAULT '' COMMENT '授权凭证',
  `bool_verified` tinyint(1) NOT NULL COMMENT '是否验证',
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='授权表';

-- ----------------------------
-- Records of authorization
-- ----------------------------
INSERT INTO `authorization` VALUES ('1', '1', '4', 'DB40E308A02A4838A14ED8931F571805', 'B459B8577D65239EBD0509AFD37BEEA3', '1', '2019-09-06 09:40:19', '2019-09-06 09:40:19');
INSERT INTO `authorization` VALUES ('2', '2', '4', '1BCF0D0C8E00C36DD678EA9F5E741BC8', '3A4CD4D543B03494489B5A216B57EA77', '0', '2019-09-06 09:40:21', '2019-09-06 09:40:21');
INSERT INTO `authorization` VALUES ('3', '3', '3', 'oJNyD5_7iavEejrG_dRvDd6fH_S0', '25_gSXB2Y-e3NOQRULUx7YtvLam_jMqXZD_mzaRYxRR0Qe7x7AGPTlR8bJsPjKJX4jcykbKKxaKWdOS70SBSBOLMELvXiOYeJumrJcGsj18cF8', '1', '2019-09-06 09:40:31', '2019-09-06 09:40:31');
INSERT INTO `authorization` VALUES ('4', '1', '1', '13829798285', '12345678', '1', '2019-09-06 09:40:37', '2019-09-06 09:40:37');
INSERT INTO `authorization` VALUES ('5', '3', '1', '17346608321', '123456', '1', '2019-09-06 10:40:04', '2019-09-06 10:40:05');
INSERT INTO `authorization` VALUES ('6', '4', '1', '13537080025', '123456', '1', '2019-09-06 09:55:08', '2019-09-06 09:55:08');
INSERT INTO `authorization` VALUES ('7', '5', '1', '15356367306', '12345678', '1', '2019-09-06 10:04:29', '2019-09-06 10:04:29');
INSERT INTO `authorization` VALUES ('8', '6', '1', '18774520398', '12345678', '1', '2019-09-06 10:11:15', '2019-09-06 10:11:15');
INSERT INTO `authorization` VALUES ('9', '7', '4', 'AC8F7AC0BB4344B1B675B45F497527D7', 'FFD474723EDEEE1BBBD9ABBA3B0CAAAB', '1', '2019-09-06 11:52:14', '2019-09-06 11:52:14');
INSERT INTO `authorization` VALUES ('10', '7', '1', '13267120263', 'wgc666666', '1', '2019-09-06 11:57:53', '2019-09-06 11:57:53');
INSERT INTO `authorization` VALUES ('11', '8', '4', 'D03107532B6072D51017F8144AA6B68A', 'DCE36BE17657FCEAC82021C7068B19DE', '1', '2019-09-06 12:02:57', '2019-09-06 12:02:57');
INSERT INTO `authorization` VALUES ('12', '8', '1', '13728654873', 'wgc666666', '1', '2019-09-06 12:05:09', '2019-09-06 12:05:09');
INSERT INTO `authorization` VALUES ('13', '9', '4', 'F3E449A9ED083B150FB0E004449D54B7', '993D3ED8B7CE8DE77C6597EDA7067B05', '1', '2019-09-06 13:40:31', '2019-09-06 13:40:31');
INSERT INTO `authorization` VALUES ('14', '9', '1', '18928476817', '850402asdf.', '1', '2019-09-06 13:41:46', '2019-09-06 14:46:31');
INSERT INTO `authorization` VALUES ('15', '10', '4', 'DD48F796A3B4897B1090C86A51B85C3F', 'E6CCE80FE208812921BB268F69595CB8', '0', '2019-09-06 14:33:08', '2019-09-06 14:33:08');
INSERT INTO `authorization` VALUES ('16', '11', '4', '33A9EAAEFDAA258B59B64C4FFC45634C', '80E814297F305C0D16EDC93B99CC4F0F', '1', '2019-09-06 14:47:27', '2019-09-06 14:47:27');
INSERT INTO `authorization` VALUES ('17', '11', '1', '18797870799', '336699', '1', '2019-09-06 14:48:22', '2019-09-06 14:48:22');
INSERT INTO `authorization` VALUES ('18', '12', '4', '1F71FC1A71ABFD7D8D5AA7F2527ADD01', '8A7947FA053C4A39BB0984B9B0E353F5', '0', '2019-09-07 10:40:56', '2019-09-07 10:40:56');
INSERT INTO `authorization` VALUES ('19', '13', '3', 'oJNyD57p8AMm_ncAXpJbDhu2IGsk', '25_e8_ZXSRB10q-zzFwyDIqbNEv5DSTMgPA5B-7LRuaIlzBshNSJ_28x1AJ9p4myQbXhU6Y-p6Z2M9gM5kgCxWSDmvm0tJxhzQ115Tk_no8qrA', '0', '2019-09-07 10:46:02', '2019-09-07 10:46:02');
INSERT INTO `authorization` VALUES ('20', '14', '4', '26DBE83DA1E234B89DEA6D82A863A337', 'AB5FB49D580CED30FD8A957696D13CCD', '0', '2019-09-07 11:58:07', '2019-09-07 11:58:07');
INSERT INTO `authorization` VALUES ('21', '15', '4', 'BED76061BA4D5235275DE8AF2BF374BC', 'DCCB2D5DEA85E8718F12AEB81C387FB4', '0', '2019-09-09 20:28:01', '2019-09-09 20:28:01');
INSERT INTO `authorization` VALUES ('22', '16', '4', '933D74531A3095C739E4C03D1ACF4EC4', 'E5AFBD7487BC555EA91DED2F8FE23646', '0', '2019-09-12 18:16:38', '2019-09-12 18:16:38');
INSERT INTO `authorization` VALUES ('23', '17', '4', '675FCFA3496150EF91737F6FF2A25081', '444EBEAC5993A7D2960EA52DABACB6BA', '0', '2019-09-16 13:46:03', '2019-09-16 13:46:03');
INSERT INTO `authorization` VALUES ('24', '18', '2', '2088102417731240', 'kuaijieB4bce6ea3f7064bd9bd69b79c5f08bX24', '0', '2019-09-18 20:07:34', '2019-09-18 20:07:34');

-- ----------------------------
-- Table structure for cash
-- ----------------------------
DROP TABLE IF EXISTS `cash`;
CREATE TABLE `cash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cash_id` int(11) NOT NULL DEFAULT '0' COMMENT '提现人id',
  `cash_money` int(11) NOT NULL DEFAULT '0' COMMENT '提现金额',
  `cash_type` int(11) NOT NULL DEFAULT '0' COMMENT '提现方式',
  `state` int(11) NOT NULL DEFAULT '0' COMMENT '0 未审核 1 审核通过',
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `cash_number` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='提现记录表';

-- ----------------------------
-- Records of cash
-- ----------------------------
INSERT INTO `cash` VALUES ('1', '3', '1', '1', '1', '2019-09-20 16:07:33', '2019-09-20 16:07:33', '5snglrowhen');
INSERT INTO `cash` VALUES ('2', '3', '1', '1', '1', '2019-09-20 16:11:39', '2019-09-20 16:11:39', 'qlecjoj8sh9');
INSERT INTO `cash` VALUES ('3', '3', '1', '1', '1', '2019-09-20 16:15:44', '2019-09-20 16:15:44', 'nw3k3ntz084');
INSERT INTO `cash` VALUES ('4', '3', '10', '1', '1', '2019-09-20 16:16:02', '2019-09-20 16:16:02', 'jx65t8ojt7t');
INSERT INTO `cash` VALUES ('5', '3', '10', '1', '1', '2019-09-20 16:16:05', '2019-09-20 16:16:05', 'h88l4d77to0');
INSERT INTO `cash` VALUES ('6', '3', '1', '1', '1', '2019-09-20 16:24:58', '2019-09-20 16:24:58', 't0hwv2yadi8');
INSERT INTO `cash` VALUES ('7', '3', '2', '1', '1', '2019-09-20 17:08:23', '2019-09-20 17:08:23', 'cppii40pa7j');
INSERT INTO `cash` VALUES ('8', '3', '1', '1', '1', '2019-09-20 17:16:32', '2019-09-20 17:16:32', 'a0tfih8v58l');
INSERT INTO `cash` VALUES ('9', '3', '2', '1', '1', '2019-09-20 17:27:32', '2019-09-20 17:27:32', 'jwfz0kgbejl');
INSERT INTO `cash` VALUES ('10', '3', '3', '1', '1', '2019-09-20 17:28:00', '2019-09-20 17:28:00', 'nmxo7w33hz7');

-- ----------------------------
-- Table structure for club
-- ----------------------------
DROP TABLE IF EXISTS `club`;
CREATE TABLE `club` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `publish_id` int(11) NOT NULL DEFAULT '0' COMMENT '发布者id',
  `imgs_url` varchar(2000) NOT NULL DEFAULT '' COMMENT '图片地址',
  `project_name` varchar(255) NOT NULL DEFAULT '' COMMENT '项目名称',
  `project_desc` varchar(500) NOT NULL DEFAULT '' COMMENT '项目描述',
  `project_address` varchar(255) NOT NULL DEFAULT '' COMMENT '项目地址',
  `project_price` int(11) NOT NULL DEFAULT '0' COMMENT '项目价格',
  `market_price` int(11) NOT NULL DEFAULT '0' COMMENT '门市价格',
  `out_time` datetime DEFAULT NULL COMMENT '到期时间',
  `state` int(11) DEFAULT '0' COMMENT '0-未激活 1-已激活 2-已失效 3-已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='推拿会所';

-- ----------------------------
-- Records of club
-- ----------------------------
INSERT INTO `club` VALUES ('12', '2019-09-12 16:06:30', '2019-09-12 16:06:30', '6', '[\"http://192.168.5.47:80/upload/club/2019/09/12/a4283ccf-8ef9-41db-a62b-c72647dd6b8c.jpg\",\"http://192.168.5.47:80/upload/club/2019/09/12/cb93db48-45cc-43b1-ae22-c86996f1e1fe.jpg\",\"http://192.168.5.47:80/upload/club/2019/09/12/b424f903-15ad-4cc5-8f71-18a5277684da.jpg\"]', '金玉良缘', '爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽爽', '东莞', '1', '2', '2019-09-13 16:06:30', '0');
INSERT INTO `club` VALUES ('13', '2019-09-12 16:45:16', '2019-09-12 16:45:16', '1', '[\"http://192.168.5.47:80/upload/club/2019/09/12/ca174c76-beec-44c1-83f8-f3985bebfd56.downloading\",\"http://192.168.5.47:80/upload/club/2019/09/12/f70dafc1-7caf-4ce8-a710-94a55ec23851.jpg\",\"http://192.168.5.47:80/upload/club/2019/09/12/a90d5802-70a1-467a-a5b4-5dae8a3d1fe8.jpg\"]', '金玉沐足', '推拿', '五和地铁站', '10', '20', '2019-10-12 16:45:17', '1');
INSERT INTO `club` VALUES ('14', '2019-09-12 16:52:28', '2019-09-12 16:53:42', '1', '[\"http://192.168.5.47:80/upload/club/2019/09/12/e80fcda2-16f0-43c2-8025-b489f7c0b663.jpg\"]', '钟帅沐足', '沐足', '坂田', '10', '10', '2019-09-13 16:52:28', '5');
INSERT INTO `club` VALUES ('15', '2019-09-14 11:11:03', '2019-09-14 11:11:03', '6', '[\"http://114.55.242.196:80/upload/club/2019/09/14/8722044d-7a7e-4e4d-9dc1-a87537a371c9.jpg\"]', '涛仔会所', '啦啦啦啦啦啦啦啦啦啦啦啦', '哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈', '1', '2', '2019-09-15 11:11:03', '0');
INSERT INTO `club` VALUES ('16', '2019-09-14 11:25:38', '2019-09-14 11:25:38', '6', '[\"http://114.55.242.196:80/upload/club/2019/09/14/1c71816d-58d2-4ec5-b47b-5ff744cf42a4.png\"]', '至尊会所', '至尊搬的享受', '万国城', '1', '2', '2019-09-15 11:25:38', '0');
INSERT INTO `club` VALUES ('17', '2019-09-16 10:43:03', '2019-09-16 10:43:03', '6', '[\"http://localhost:80/upload/club/2019/09/16/6d679521-1508-4e38-81ea-4c2af92919b8.jpg\"]', 'postman', 'postman测试', '万国城', '15', '20', '2019-09-17 10:43:03', '0');
INSERT INTO `club` VALUES ('18', '2019-09-16 10:44:18', '2019-09-16 10:44:18', '6', '[\"http://localhost:80/upload/club/2019/09/16/6c71c274-3d8d-4561-930c-868406e0935e.jpg\"]', 'postman222', 'postman测试222', '万国城222', '33', '66', '2019-09-17 10:44:18', '0');
INSERT INTO `club` VALUES ('19', '2019-09-16 10:46:26', '2019-09-16 10:46:26', '6', '[\"http://localhost:80/upload/club/2019/09/16/05cef57b-264f-4d75-ba9a-b4597e0cbd3e.jpg\",\"http://localhost:80/upload/club/2019/09/16/c83c06ca-6c2c-43d5-a83b-9fb9bdb48cbc.jpg\"]', 'postman多图测试', 'postman多图测试', '万国城多图测试', '33', '66', '2019-09-17 10:46:26', '0');
INSERT INTO `club` VALUES ('20', '2019-09-16 11:20:16', '2019-09-16 11:20:16', '6', '[\"http://localhost:80/upload/club/2019/09/16/9a76578d-111a-4c7d-a69b-1b7d9dc7de4e.jpg\",\"http://localhost:80/upload/club/2019/09/16/7adb6f59-9149-46d0-913c-c9ff8d14437a.jpg\"]', 'postman多图测试', 'postman多图测试', '万国城多图测试', '33', '66', '2019-09-17 11:20:16', '0');
INSERT INTO `club` VALUES ('21', '2019-09-20 15:11:33', '2019-09-20 15:11:33', '6', '[\"http://localhost:80/upload/club/2019/09/20/46236cb0-1294-4317-aa26-7a744b932b23.jpg\",\"http://localhost:80/upload/club/2019/09/20/d12974e0-2ff9-483e-b1b7-8de56838905d.jpg\"]', '测试字符类型', '测试字符类型', '测试字符类型', '20', '30', '2019-09-21 15:11:33', '0');

-- ----------------------------
-- Table structure for club_buy
-- ----------------------------
DROP TABLE IF EXISTS `club_buy`;
CREATE TABLE `club_buy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `club_id` int(11) NOT NULL DEFAULT '0' COMMENT '会所id',
  `buyer_id` int(11) NOT NULL DEFAULT '0' COMMENT '购买者id',
  `state` int(11) NOT NULL DEFAULT '0' COMMENT '0-已购买 1-已完成 2-取消购买 3-已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='会所购买表';

-- ----------------------------
-- Records of club_buy
-- ----------------------------
INSERT INTO `club_buy` VALUES ('1', '2019-09-12 16:46:20', '2019-09-12 16:51:03', '13', '5', '5');
INSERT INTO `club_buy` VALUES ('2', '2019-09-12 16:47:57', '2019-09-12 16:51:22', '13', '5', '5');
INSERT INTO `club_buy` VALUES ('3', '2019-09-12 16:48:48', '2019-09-12 16:48:48', '13', '5', '0');

-- ----------------------------
-- Table structure for club_star
-- ----------------------------
DROP TABLE IF EXISTS `club_star`;
CREATE TABLE `club_star` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `club_id` int(11) NOT NULL DEFAULT '0' COMMENT '会所id',
  `evaluation_id` int(11) NOT NULL DEFAULT '0' COMMENT '评价人',
  `star` int(11) NOT NULL DEFAULT '0' COMMENT '星星数',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='推拿评价表';

-- ----------------------------
-- Records of club_star
-- ----------------------------
INSERT INTO `club_star` VALUES ('1', '13', '5', '5', '2019-09-12 16:48:12', '2019-09-12 16:48:12');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `activity_id` int(11) NOT NULL DEFAULT '0' COMMENT '动态id',
  `person_id` int(11) NOT NULL DEFAULT '0' COMMENT '评论人id',
  `content` varchar(500) NOT NULL DEFAULT '' COMMENT '评论内容',
  `bool_see` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否被查看(默认值0)',
  `bool_close` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否屏蔽(默认值0)',
  `like_num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '2019-09-12 17:41:18', '2019-09-12 17:39:14', '1', '4', '4556', '1', '1', '2');
INSERT INTO `comment` VALUES ('2', '2019-09-12 17:42:23', '2019-09-12 17:40:19', '1', '4', '第几个空话', '1', '1', '1');
INSERT INTO `comment` VALUES ('3', '2019-09-12 18:26:00', '2019-09-12 18:26:00', '1', '1', '醉了', '1', '0', '0');
INSERT INTO `comment` VALUES ('4', '2019-09-12 18:26:00', '2019-09-12 18:26:00', '1', '1', '醉了', '1', '0', '0');
INSERT INTO `comment` VALUES ('5', '2019-09-12 18:26:00', '2019-09-12 18:26:00', '1', '1', '醉了', '1', '0', '0');
INSERT INTO `comment` VALUES ('6', '2019-09-12 18:26:00', '2019-09-12 18:26:00', '1', '1', '醉了', '1', '0', '0');
INSERT INTO `comment` VALUES ('7', '2019-09-12 18:26:00', '2019-09-12 18:26:00', '1', '1', '醉了', '1', '0', '0');
INSERT INTO `comment` VALUES ('8', '2019-09-12 18:26:00', '2019-09-12 18:26:00', '1', '1', '醉了？', '1', '0', '0');
INSERT INTO `comment` VALUES ('9', '2019-09-12 18:26:00', '2019-09-12 18:26:00', '1', '1', '1', '1', '0', '0');
INSERT INTO `comment` VALUES ('10', '2019-09-12 18:26:00', '2019-09-12 18:26:00', '1', '1', '1', '1', '0', '0');
INSERT INTO `comment` VALUES ('11', '2019-09-20 11:04:13', '2019-09-20 11:04:13', '7', '6', 'hello', '1', '0', '0');
INSERT INTO `comment` VALUES ('12', '2019-09-20 11:04:13', '2019-09-20 11:04:13', '7', '6', '你好', '1', '0', '0');
INSERT INTO `comment` VALUES ('13', '2019-09-20 11:04:13', '2019-09-20 11:04:13', '7', '6', '你妹的', '1', '0', '0');
INSERT INTO `comment` VALUES ('14', '2019-09-20 11:04:13', '2019-09-20 11:04:13', '7', '6', '来玩嘛', '1', '0', '0');
INSERT INTO `comment` VALUES ('15', '2019-09-16 10:58:41', '2019-09-16 10:58:41', '23', '6', '哎哟，不错哦', '1', '0', '0');
INSERT INTO `comment` VALUES ('16', '2019-09-16 11:26:01', '2019-09-16 11:26:01', '15', '6', '杀', '1', '0', '1');
INSERT INTO `comment` VALUES ('17', '2019-09-18 11:49:24', '2019-09-18 11:47:13', '24', '1', '后悔', '1', '0', '0');
INSERT INTO `comment` VALUES ('18', '2019-09-18 11:49:25', '2019-09-18 11:47:14', '24', '1', '葫芦头', '1', '0', '0');
INSERT INTO `comment` VALUES ('19', '2019-09-16 16:12:46', '2019-09-16 16:12:47', '24', '1', '了', '1', '0', '0');
INSERT INTO `comment` VALUES ('20', '2019-09-20 10:21:31', '2019-09-20 10:21:32', '4', '5', '哦哦哦', '1', '0', '1');
INSERT INTO `comment` VALUES ('21', '2019-09-20 11:04:13', '2019-09-20 11:04:13', '6', '5', '哦哦哦', '1', '0', '0');
INSERT INTO `comment` VALUES ('22', '2019-09-18 18:23:44', '2019-09-18 18:23:44', '23', '5', '额呃呃呃', '1', '0', '0');
INSERT INTO `comment` VALUES ('23', '2019-09-19 09:31:18', '2019-09-19 09:31:18', '24', '5', '感情这事，最忌讳的便是自己感动自己', '1', '0', '0');
INSERT INTO `comment` VALUES ('24', '2019-09-19 09:31:18', '2019-09-19 09:31:18', '24', '6', '怎么了', '1', '0', '0');
INSERT INTO `comment` VALUES ('25', '2019-09-20 10:21:23', '2019-09-20 10:21:24', '4', '5', '天才小毒妃', '1', '0', '1');
INSERT INTO `comment` VALUES ('26', '2019-09-20 15:48:04', '2019-09-20 15:48:04', '27', '5', '美女，我爱你', '0', '0', '0');

-- ----------------------------
-- Table structure for comment_like
-- ----------------------------
DROP TABLE IF EXISTS `comment_like`;
CREATE TABLE `comment_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `comment_id` int(11) NOT NULL DEFAULT '0',
  `like_id` int(11) NOT NULL DEFAULT '0',
  `bool_see` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment_like
-- ----------------------------
INSERT INTO `comment_like` VALUES ('10', '2019-09-12 17:25:43', '2019-09-12 17:25:43', '1', '4', '0');
INSERT INTO `comment_like` VALUES ('11', '2019-09-12 17:39:14', '2019-09-12 17:39:14', '1', '4', '0');
INSERT INTO `comment_like` VALUES ('22', '2019-09-12 17:40:19', '2019-09-12 17:40:19', '2', '4', '0');
INSERT INTO `comment_like` VALUES ('23', '2019-09-16 11:17:38', '2019-09-16 11:17:38', '16', '6', '0');
INSERT INTO `comment_like` VALUES ('166', '2019-09-20 10:21:24', '2019-09-20 10:21:24', '25', '4', '0');
INSERT INTO `comment_like` VALUES ('170', '2019-09-20 10:21:32', '2019-09-20 10:21:32', '20', '4', '0');

-- ----------------------------
-- Table structure for recharge
-- ----------------------------
DROP TABLE IF EXISTS `recharge`;
CREATE TABLE `recharge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL DEFAULT '0' COMMENT '充值人id',
  `charge_type` int(11) NOT NULL DEFAULT '0' COMMENT '充值方式',
  `money` float NOT NULL DEFAULT '0' COMMENT '充值金额',
  `state` int(11) NOT NULL DEFAULT '0' COMMENT '0 未付款 1已付款',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `order_number` varchar(255) DEFAULT NULL COMMENT '订单号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COMMENT='充值记录表';

-- ----------------------------
-- Records of recharge
-- ----------------------------
INSERT INTO `recharge` VALUES ('1', '6', '1', '600', '0', '2019-09-16 11:35:15', '2019-09-16 11:35:15', 'aw7sozleks8');
INSERT INTO `recharge` VALUES ('2', '3', '1', '1.2', '0', '2019-09-20 16:06:08', '2019-09-20 16:06:08', 'co37lronr6z');
INSERT INTO `recharge` VALUES ('3', '3', '1', '1.2', '0', '2019-09-20 16:11:12', '2019-09-20 16:11:12', 'r2lv3fr8vwm');
INSERT INTO `recharge` VALUES ('4', '3', '1', '1.2', '0', '2019-09-20 16:11:52', '2019-09-20 16:11:52', 'skhbrrrzm10');
INSERT INTO `recharge` VALUES ('5', '3', '1', '1.2', '0', '2019-09-20 16:24:08', '2019-09-20 16:24:08', 'vsiwof11bvi');
INSERT INTO `recharge` VALUES ('6', '3', '1', '1.2', '0', '2019-09-20 16:35:48', '2019-09-20 16:35:48', 'r0pwxc29h1q');
INSERT INTO `recharge` VALUES ('7', '3', '1', '1.2', '0', '2019-09-20 17:06:22', '2019-09-20 17:06:22', 'txu5lyy8exq');
INSERT INTO `recharge` VALUES ('8', '3', '1', '1.2', '1', '2019-09-20 17:15:42', '2019-09-20 17:29:37', 'vp7jwfe4cig');
INSERT INTO `recharge` VALUES ('9', '3', '1', '1.2', '0', '2019-09-20 17:22:35', '2019-09-20 17:22:35', 'up3z7t6pprx');
INSERT INTO `recharge` VALUES ('10', '3', '1', '1.2', '1', '2019-09-20 17:26:57', '2019-09-20 17:27:03', 'jxtliknx1ft');
INSERT INTO `recharge` VALUES ('11', '3', '1', '3.6', '1', '2019-09-20 17:27:42', '2019-09-20 17:27:48', 'hyyp9o6ocmx');

-- ----------------------------
-- Table structure for red_packet
-- ----------------------------
DROP TABLE IF EXISTS `red_packet`;
CREATE TABLE `red_packet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `money` int(11) NOT NULL DEFAULT '0' COMMENT '金额',
  `sender_id` int(11) NOT NULL DEFAULT '0' COMMENT '发起人id',
  `receive_id` int(11) NOT NULL DEFAULT '0' COMMENT '接受人id',
  `state` int(11) NOT NULL DEFAULT '0' COMMENT '0-发送态 1-接收态 2-失效态',
  `content` varchar(255) NOT NULL DEFAULT '' COMMENT '红包内容',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COMMENT='红包记录表';

-- ----------------------------
-- Records of red_packet
-- ----------------------------
INSERT INTO `red_packet` VALUES ('1', '1000', '1', '4', '2', '大吉大利，恭喜发财', '2019-09-12 17:04:22', '2019-09-12 17:23:58');
INSERT INTO `red_packet` VALUES ('2', '550', '4', '1', '2', '哈哈哈哈哈', '2019-09-12 17:25:07', '2019-09-12 17:25:07');
INSERT INTO `red_packet` VALUES ('3', '1', '3', '1', '2', '大吉大利，恭喜发财', '2019-09-15 13:25:02', '2019-09-15 13:25:02');
INSERT INTO `red_packet` VALUES ('4', '1', '3', '1', '2', '大吉大利，恭喜发财', '2019-09-15 13:31:53', '2019-09-15 13:31:53');
INSERT INTO `red_packet` VALUES ('5', '1', '3', '1', '2', '大吉大利，恭喜发财', '2019-09-15 13:32:31', '2019-09-15 13:32:31');
INSERT INTO `red_packet` VALUES ('6', '1', '3', '1', '2', '大吉大利，恭喜发财', '2019-09-15 13:33:37', '2019-09-15 13:33:37');
INSERT INTO `red_packet` VALUES ('7', '1', '3', '1', '2', '大吉大利，恭喜发财', '2019-09-15 14:45:59', '2019-09-15 14:45:59');
INSERT INTO `red_packet` VALUES ('8', '1', '3', '1', '2', '大吉大利，恭喜发财', '2019-09-15 17:32:04', '2019-09-15 17:32:04');
INSERT INTO `red_packet` VALUES ('9', '1', '3', '1', '2', '大吉大利，恭喜发财', '2019-09-15 17:34:19', '2019-09-15 17:34:19');
INSERT INTO `red_packet` VALUES ('10', '1', '3', '1', '2', '大吉大利，恭喜发财', '2019-09-15 17:35:51', '2019-09-15 17:35:51');
INSERT INTO `red_packet` VALUES ('11', '1', '3', '6', '2', '大吉大利，恭喜发财', '2019-09-15 17:38:59', '2019-09-15 17:38:59');
INSERT INTO `red_packet` VALUES ('12', '1', '3', '6', '2', '大吉大利，恭喜发财', '2019-09-15 17:39:02', '2019-09-15 17:39:02');
INSERT INTO `red_packet` VALUES ('13', '1', '3', '1', '2', '大吉大利，恭喜发财', '2019-09-16 10:00:38', '2019-09-16 15:39:33');
INSERT INTO `red_packet` VALUES ('14', '1', '3', '1', '2', '大吉大利，恭喜发财', '2019-09-16 11:41:52', '2019-09-16 15:39:23');
INSERT INTO `red_packet` VALUES ('15', '1', '3', '1', '2', '大吉大利，恭喜发财', '2019-09-16 21:11:22', '2019-09-16 21:23:50');
INSERT INTO `red_packet` VALUES ('16', '1', '1', '3', '2', '啦咯啦咯啦咯啦咯啦咯', '2019-09-17 17:56:13', '2019-09-18 11:38:27');
INSERT INTO `red_packet` VALUES ('17', '1', '5', '1', '2', '大吉大利，恭喜发财', '2019-09-18 14:56:52', '2019-09-18 14:56:52');
INSERT INTO `red_packet` VALUES ('18', '1', '5', '6', '2', '大吉大利，恭喜发财', '2019-09-18 14:59:18', '2019-09-19 08:43:02');
INSERT INTO `red_packet` VALUES ('19', '10', '5', '1', '2', '大吉大利，恭喜发财', '2019-09-18 15:03:56', '2019-09-18 15:03:56');
INSERT INTO `red_packet` VALUES ('20', '10', '5', '1', '2', '你妈的', '2019-09-18 15:13:49', '2019-09-18 15:13:49');
INSERT INTO `red_packet` VALUES ('21', '1', '5', '1', '2', '你好', '2019-09-18 15:15:50', '2019-09-18 15:15:50');
INSERT INTO `red_packet` VALUES ('22', '1', '3', '6', '2', '大吉大利，恭喜发财', '2019-09-18 16:00:13', '2019-09-18 16:10:17');
INSERT INTO `red_packet` VALUES ('23', '1', '6', '3', '2', '大吉大利，恭喜发财', '2019-09-18 16:10:11', '2019-09-18 16:32:20');
INSERT INTO `red_packet` VALUES ('24', '10', '6', '3', '2', '大吉大利，恭喜发财', '2019-09-18 16:21:32', '2019-09-18 16:31:43');
INSERT INTO `red_packet` VALUES ('25', '10', '3', '6', '2', '大吉大利，恭喜发财', '2019-09-18 16:31:53', '2019-09-18 16:31:53');
INSERT INTO `red_packet` VALUES ('26', '10', '3', '6', '2', '大吉大利，恭喜发财', '2019-09-18 16:34:27', '2019-09-18 16:34:27');
INSERT INTO `red_packet` VALUES ('27', '1', '3', '6', '2', '啦咯啦咯啦咯啦咯啦咯', '2019-09-18 16:52:20', '2019-09-18 16:52:20');
INSERT INTO `red_packet` VALUES ('28', '1', '6', '3', '2', '大吉大利，恭喜发财', '2019-09-18 17:08:54', '2019-09-18 17:08:54');
INSERT INTO `red_packet` VALUES ('29', '10', '6', '5', '2', '大吉大利，恭喜发财', '2019-09-18 17:43:42', '2019-09-19 09:03:30');
INSERT INTO `red_packet` VALUES ('30', '1', '6', '5', '2', '大吉大利，恭喜发财', '2019-09-18 17:45:44', '2019-09-19 08:50:05');
INSERT INTO `red_packet` VALUES ('31', '1', '6', '5', '2', '大吉大利，恭喜发财', '2019-09-18 17:46:50', '2019-09-19 09:00:37');
INSERT INTO `red_packet` VALUES ('32', '10', '6', '5', '2', '大吉大利，恭喜发财', '2019-09-18 18:51:43', '2019-09-19 08:47:56');
INSERT INTO `red_packet` VALUES ('33', '1', '5', '6', '2', '溜了溜了', '2019-09-19 09:01:47', '2019-09-19 21:04:58');
INSERT INTO `red_packet` VALUES ('34', '255', '4', '1', '0', '大吉大利，恭喜发财', '2019-09-20 09:20:38', '2019-09-20 09:20:38');
INSERT INTO `red_packet` VALUES ('35', '1', '5', '1', '1', '快捷键', '2019-09-20 10:13:17', '2019-09-20 11:52:55');
INSERT INTO `red_packet` VALUES ('36', '111', '5', '1', '1', '大吉大利，恭喜发财', '2019-09-20 10:14:31', '2019-09-20 11:51:09');
INSERT INTO `red_packet` VALUES ('37', '1', '5', '11', '0', '1', '2019-09-20 15:44:00', '2019-09-20 15:44:00');
INSERT INTO `red_packet` VALUES ('38', '1', '5', '4', '1', '大吉大利，恭喜发财', '2019-09-20 15:49:31', '2019-09-20 15:50:36');
INSERT INTO `red_packet` VALUES ('39', '1', '5', '4', '1', '快捷键', '2019-09-20 15:49:50', '2019-09-20 15:50:33');
INSERT INTO `red_packet` VALUES ('40', '132', '5', '1', '0', '大吉大利，恭喜发财', '2019-09-20 15:52:41', '2019-09-20 15:52:41');
INSERT INTO `red_packet` VALUES ('41', '12', '5', '1', '0', '快捷键', '2019-09-20 15:59:52', '2019-09-20 15:59:52');
INSERT INTO `red_packet` VALUES ('42', '1', '5', '1', '0', '大吉大利，恭喜发财', '2019-09-20 16:01:43', '2019-09-20 16:01:43');
INSERT INTO `red_packet` VALUES ('43', '1', '5', '1', '0', '大吉大利，恭喜发财', '2019-09-20 16:01:48', '2019-09-20 16:01:48');
INSERT INTO `red_packet` VALUES ('44', '1', '5', '1', '0', '榴莲', '2019-09-20 16:01:55', '2019-09-20 16:01:55');

-- ----------------------------
-- Table structure for root_message
-- ----------------------------
DROP TABLE IF EXISTS `root_message`;
CREATE TABLE `root_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `value` varchar(255) NOT NULL DEFAULT '0' COMMENT '对应值',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COMMENT='系统动态数据表';

-- ----------------------------
-- Records of root_message
-- ----------------------------
INSERT INTO `root_message` VALUES ('1', 'sincerity_money', '10', null, '2019-09-06 11:06:45');
INSERT INTO `root_message` VALUES ('2', 'range', '100', '2019-09-04 13:23:25', '2019-09-04 13:23:25');
INSERT INTO `root_message` VALUES ('3', 'top_money', '12', '2019-08-21 21:43:48', '2019-08-21 21:43:48');
INSERT INTO `root_message` VALUES ('4', 'video_money', '2', null, '2019-09-01 09:43:54');
INSERT INTO `root_message` VALUES ('5', 'ask_money', '1', '2019-08-22 16:48:07', '2019-08-22 16:48:07');
INSERT INTO `root_message` VALUES ('6', 'publish_money', '10', '2019-09-03 19:08:18', '2019-09-03 19:08:18');
INSERT INTO `root_message` VALUES ('7', 'share_money', '10', null, '2019-09-03 14:07:03');
INSERT INTO `root_message` VALUES ('9', '黄朝阳', '666', '2019-08-24 06:18:02', '2019-08-24 06:18:02');
INSERT INTO `root_message` VALUES ('10', '一天', '12', '2019-09-03 21:11:00', '2019-09-03 21:12:55');
INSERT INTO `root_message` VALUES ('11', '一周', '84', null, '2019-09-01 09:44:17');
INSERT INTO `root_message` VALUES ('12', '一月', '360', null, '2019-09-01 09:44:26');
INSERT INTO `root_message` VALUES ('13', '一季', '1080', null, '2019-09-03 09:09:10');
INSERT INTO `root_message` VALUES ('14', '一年', '4380', null, '2019-09-01 09:44:46');
INSERT INTO `root_message` VALUES ('15', 'cash', '0', null, '2019-09-06 11:54:33');
INSERT INTO `root_message` VALUES ('16', 'video_rate', '0.2', '2019-08-30 14:14:20', '2019-08-30 14:14:20');
INSERT INTO `root_message` VALUES ('17', 'charge_ratio', '0.2', '2019-08-30 19:52:44', '2019-08-30 19:52:50');

-- ----------------------------
-- Table structure for share
-- ----------------------------
DROP TABLE IF EXISTS `share`;
CREATE TABLE `share` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `people_id` int(11) NOT NULL DEFAULT '0' COMMENT '分享人id',
  `by_people_id` int(11) NOT NULL DEFAULT '0' COMMENT '被分享人id',
  `share_money` int(11) NOT NULL DEFAULT '0' COMMENT '分享金币',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分享表';

-- ----------------------------
-- Records of share
-- ----------------------------

-- ----------------------------
-- Table structure for shop
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `publish_id` int(11) NOT NULL DEFAULT '0' COMMENT '发布者id',
  `service_area` varchar(255) NOT NULL DEFAULT '' COMMENT '服务区域',
  `travel_time` varchar(255) NOT NULL DEFAULT '' COMMENT '约会时间',
  `charge` int(11) NOT NULL DEFAULT '0' COMMENT '每小时收费',
  `out_time` datetime DEFAULT NULL COMMENT '到期时间',
  `imgs_url` varchar(5000) NOT NULL DEFAULT '' COMMENT '图片地址',
  `state` int(11) DEFAULT '0' COMMENT '0-未激活 1-已激活 2-已失效 3-已删除',
  `bool_close` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-开启 1-关闭 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='景点商家';

-- ----------------------------
-- Records of shop
-- ----------------------------
INSERT INTO `shop` VALUES ('1', '2019-09-12 16:19:12', '2019-09-12 16:19:12', '6', '涛仔宠物店', '阿猫阿狗一大堆挑得你眼花', '1', '2019-09-13 16:19:12', '[\"http://192.168.5.47:80/upload/shop/2019/09/12/9c513b66-289d-4a33-8c10-657950d192aa.jpg\",\"http://192.168.5.47:80/upload/shop/2019/09/12/ac8843a3-a6dc-4600-8004-2df0278ba007.jpg\",\"http://192.168.5.47:80/upload/shop/2019/09/12/43669a4c-7388-4218-b8dd-b7fc219df1be.jpg\",\"http://192.168.5.47:80/upload/shop/2019/09/12/897b48c5-7d95-4a15-9920-fb2a17f6275c.jpg\",\"http://192.168.5.47:80/upload/shop/2019/09/12/9030ca07-abb9-4af5-b2d8-0334e4dacdc1.jpg\",\"http://192.168.5.47:80/upload/shop/2019/09/12/cdc14a30-ee94-40c0-b145-ac6d438e1961.jpg\",\"http://192.168.5.47:80/upload/shop/2019/09/12/1be44f0a-278e-4004-ad3a-74b09cb88b8e.jpg\",\"http://192.168.5.47:80/upload/shop/2019/09/12/381b521f-37af-4960-9966-a788c3e8639d.jpg\",\"http://192.168.5.47:80/upload/shop/2019/09/12/79d00d9e-5bbd-4b3b-9f34-e85b2869a7d5.jpg\"]', '0', '0');
INSERT INTO `shop` VALUES ('2', '2019-09-12 16:46:00', '2019-09-12 16:46:00', '1', '迪士尼', '导游', '10', '2019-10-12 16:46:00', '[\"http://192.168.5.47:80/upload/shop/2019/09/12/05d27ae8-bd18-4a7c-8e4b-065cd207f445.jpg\",\"http://192.168.5.47:80/upload/shop/2019/09/12/3874184d-73e8-4a0f-9c6e-705cf0f3f4ad.jpg\",\"http://192.168.5.47:80/upload/shop/2019/09/12/12d476b6-057a-4bc3-951a-2fb971382e16.jpg\",\"http://192.168.5.47:80/upload/shop/2019/09/12/3928344c-407b-4926-82f0-ed22b5aace80.jpg\",\"http://192.168.5.47:80/upload/shop/2019/09/12/dddfb493-8274-46b2-945e-c2d61a95fc6c.jpg\",\"http://192.168.5.47:80/upload/shop/2019/09/12/67c900a0-9731-4d81-8740-1cfebcbe0936.jpg\"]', '1', '0');
INSERT INTO `shop` VALUES ('3', '2019-09-14 11:08:12', '2019-09-14 11:08:12', '6', '万国城', '哈哈哈哈哈哈哈哈哈哈', '1', '2019-09-15 11:08:12', '[\"http://114.55.242.196:80/upload/shop/2019/09/14/b20e2c65-b352-44e6-9768-96c32ee01cac.jpg\",\"http://114.55.242.196:80/upload/shop/2019/09/14/f5a5724d-5b1b-4d81-a61f-fa0369ab22ed.jpg\"]', '0', '0');
INSERT INTO `shop` VALUES ('4', '2019-09-14 11:09:20', '2019-09-14 11:09:20', '6', '龙岗', '嘎嘎嘎嘎嘎嘎嘎嘎嘎嘎', '1', '2019-09-15 11:09:20', '[\"http://114.55.242.196:80/upload/shop/2019/09/14/3d4b3859-a63d-441b-815a-c5f630d61ef0.jpeg\",\"http://114.55.242.196:80/upload/shop/2019/09/14/5cfdc7ff-dc8f-470e-9a88-d21e0df0eb55.jpg\"]', '0', '0');
INSERT INTO `shop` VALUES ('5', '2019-09-14 11:27:18', '2019-09-14 11:27:18', '6', '？', '？', '1', '2019-09-15 11:27:18', '[\"http://114.55.242.196:80/upload/shop/2019/09/14/9d765c03-ade9-4d57-89a7-ae2644ab90f2.jpg\"]', '0', '0');

-- ----------------------------
-- Table structure for shop_buy
-- ----------------------------
DROP TABLE IF EXISTS `shop_buy`;
CREATE TABLE `shop_buy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `guide_id` int(11) NOT NULL DEFAULT '0' COMMENT '景点商家id(shop_id)',
  `buyer_id` int(11) NOT NULL DEFAULT '0' COMMENT '购买者id',
  `state` int(11) NOT NULL DEFAULT '0' COMMENT '0-已购买 1-已完成 2-取消购买 3-已删除',
  `time` int(11) NOT NULL DEFAULT '0' COMMENT '聘用时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='景点商家购买表';

-- ----------------------------
-- Records of shop_buy
-- ----------------------------
INSERT INTO `shop_buy` VALUES ('1', '2019-09-12 16:52:12', '2019-09-12 16:54:45', '2', '5', '4', '1');
INSERT INTO `shop_buy` VALUES ('2', '2019-09-12 16:53:52', '2019-09-12 16:55:27', '2', '5', '5', '1');
INSERT INTO `shop_buy` VALUES ('3', '2019-09-12 16:54:16', '2019-09-12 16:54:16', '2', '5', '0', '1');

-- ----------------------------
-- Table structure for shop_star
-- ----------------------------
DROP TABLE IF EXISTS `shop_star`;
CREATE TABLE `shop_star` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guide_id` int(11) NOT NULL DEFAULT '0',
  `evaluation_id` int(11) NOT NULL DEFAULT '0' COMMENT '评价人id',
  `start` int(11) NOT NULL DEFAULT '0' COMMENT '星星数',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_star
-- ----------------------------
INSERT INTO `shop_star` VALUES ('1', '2', '5', '5', '2019-09-12 16:54:02', '2019-09-12 16:54:02');

-- ----------------------------
-- Table structure for tour
-- ----------------------------
DROP TABLE IF EXISTS `tour`;
CREATE TABLE `tour` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `publish_id` int(11) NOT NULL DEFAULT '0' COMMENT '发布者id',
  `start_address` varchar(255) NOT NULL DEFAULT '' COMMENT '出发地',
  `end_address` varchar(255) NOT NULL DEFAULT '' COMMENT '目的地',
  `go_time` varchar(255) NOT NULL DEFAULT '' COMMENT '赴约时间',
  `go_message` varchar(255) NOT NULL DEFAULT '' COMMENT '出游留言',
  `need_num` int(11) NOT NULL DEFAULT '0' COMMENT '需要人数',
  `reward` int(11) NOT NULL DEFAULT '0' COMMENT '悬赏金',
  `pay_type` int(11) NOT NULL DEFAULT '0' COMMENT '支付方式',
  `confirm_id` int(11) NOT NULL DEFAULT '0' COMMENT '确认人选id',
  `state` int(11) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='旅游表';

-- ----------------------------
-- Records of tour
-- ----------------------------
INSERT INTO `tour` VALUES ('1', '2019-09-12 16:23:52', '2019-09-12 16:23:52', '6', '哈哈哈哈哈', '哈哈哈哈哈', '中秋', '一起哈啤', '1', '1', '0', '0', '1');
INSERT INTO `tour` VALUES ('2', '2019-09-12 16:26:18', '2019-09-12 16:36:21', '1', '欢乐谷', '世界之窗', '2019.9.12\n16:27', '出来一起玩', '1', '10', '0', '5', '5');
INSERT INTO `tour` VALUES ('3', '2019-09-12 16:38:48', '2019-09-12 16:38:48', '1', '香港', '澳门', '2019.9.12\n16:40', '赌博加购物', '1', '10', '1', '0', '1');
INSERT INTO `tour` VALUES ('4', '2019-09-14 11:14:09', '2019-09-14 11:14:09', '6', '深圳', '广州', '国庆', '给给给给给给给给给给给', '1', '1', '0', '0', '1');
INSERT INTO `tour` VALUES ('5', '2019-09-14 11:34:00', '2019-09-14 11:34:00', '6', '深圳', '美国', '国庆节', '为国争光', '1', '1', '1', '0', '1');
INSERT INTO `tour` VALUES ('6', '2019-09-14 11:35:11', '2019-09-14 11:35:11', '6', '深圳', '日本', '国庆节', '杀', '1', '1', '0', '0', '1');

-- ----------------------------
-- Table structure for tour_ask
-- ----------------------------
DROP TABLE IF EXISTS `tour_ask`;
CREATE TABLE `tour_ask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `appoint_id` int(11) NOT NULL DEFAULT '0' COMMENT '旅游id',
  `asker_id` int(11) NOT NULL DEFAULT '0' COMMENT '报名者id',
  `ask_state0` int(11) NOT NULL DEFAULT '0' COMMENT '报名状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='旅游报名';

-- ----------------------------
-- Records of tour_ask
-- ----------------------------
INSERT INTO `tour_ask` VALUES ('1', '2019-09-12 16:28:12', '2019-09-12 16:32:31', '2', '4', '9');
INSERT INTO `tour_ask` VALUES ('2', '2019-09-12 16:28:37', '2019-09-12 16:33:48', '2', '5', '9');
INSERT INTO `tour_ask` VALUES ('3', '2019-09-12 16:33:07', '2019-09-12 16:33:12', '2', '4', '9');
INSERT INTO `tour_ask` VALUES ('4', '2019-09-12 16:34:20', '2019-09-12 16:34:47', '2', '5', '5');
INSERT INTO `tour_ask` VALUES ('5', '2019-09-12 16:35:16', '2019-09-12 16:35:46', '2', '5', '8');
INSERT INTO `tour_ask` VALUES ('6', '2019-09-12 16:36:03', '2019-09-12 16:36:17', '2', '5', '7');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) NOT NULL DEFAULT '' COMMENT '账号',
  `nickname` varchar(255) NOT NULL DEFAULT '' COMMENT '昵称',
  `header` varchar(2000) NOT NULL DEFAULT '' COMMENT '头像',
  `sex` tinyint(1) NOT NULL DEFAULT '0' COMMENT '性别',
  `birthday` varchar(255) NOT NULL DEFAULT '' COMMENT '年龄',
  `signature` varchar(500) NOT NULL DEFAULT '' COMMENT '个性签名',
  `bg_picture` varchar(500) NOT NULL DEFAULT '' COMMENT '背景',
  `pay_word` varchar(255) DEFAULT '' COMMENT '支付密码',
  `money` float NOT NULL DEFAULT '0' COMMENT '美金',
  `bind_alipay` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否绑定支付宝',
  `alipay_account` varchar(255) DEFAULT '' COMMENT '支付宝账号',
  `alipay_name` varchar(255) DEFAULT '' COMMENT '支付宝名字',
  `share_code` varchar(255) NOT NULL DEFAULT '' COMMENT '邀请码',
  `bool_close` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否关闭',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '98879789', 'FoFo', 'http://114.55.242.196:80/upload/headers/2019/09/20/882bc0c7-9be3-4e78-a44c-b5c8c22c3842.jpg', '0', '18', '喝最烈的酒，熬最晚的夜', 'http://114.55.242.196:80/upload/bg-picture/2019/09/14/830429ef-9a64-4c9b-985c-a78281083705.jpg', '123456', '51085', '0', null, null, 'eotm3d', '0', '2019-09-06 09:40:19', '2019-09-20 09:42:04');
INSERT INTO `user` VALUES ('2', '39440848', '△清幽竹林△', 'http://thirdqq.qlogo.cn/g?b=oidb&k=iawYj8Pr1ibfibkQRbTgoe4Og&s=40&t=1563000613', '0', '22', '该用户很懒，什么都没有', 'http://www.meiyou8.cn/meiyou/uimg/imgs/default.jpg', null, '50000', '0', null, null, 'eoqke3', '0', '2019-09-06 09:40:21', '2019-09-06 09:45:14');
INSERT INTO `user` VALUES ('3', '51503004', '祖儿无敌', 'http://114.55.242.196:80/upload/headers/2019/09/20/002cb4b3-e939-4233-8585-0568e6a7c34d.jpg', '0', '22', '该用户很懒，什么都没有', 'http://114.55.242.196:80/upload/bg-picture/2019/09/06/f0593c7e-f3d6-42e6-bdd8-4899ef61b0bc.jpg', '123456', '49986', '1', '17346608321', '邓石林', 'eopa4m', '0', '2019-09-06 09:40:31', '2019-09-20 16:35:28');
INSERT INTO `user` VALUES ('4', '39727272', '林志玲', 'http://114.55.242.196:80/upload/headers/2019/09/06/18240274-6da1-454e-85cb-27f5b85d0019.jpg', '1', '25', '爱美游，爱生活，爱自己', 'http://www.meiyou8.cn/meiyou/uimg/imgs/default.jpg', '123456', '50747', '1', '13537080025', '黄朝阳', 'wofnqe', '0', '2019-09-06 09:55:08', '2019-09-12 16:33:12');
INSERT INTO `user` VALUES ('5', '23806912', '可恶', 'http://114.55.242.196:80/upload/headers/2019/09/20/41b6c120-f10e-4603-a090-be3333abce89.jpg', '0', '22', '无忧无虑', 'http://localhost:80/upload/bg-picture/2019/09/20/abbdcdd6-36b5-43a2-9b87-6ad45ccd0f68.jpg', '666666', '49760', '0', null, null, 'wo9bdt', '0', '2019-09-06 10:04:29', '2019-09-20 14:44:48');
INSERT INTO `user` VALUES ('6', '89359772', '涛涛', 'http://localhost:80/upload/headers/2019/09/20/0576489a-9c3a-4036-8d3f-8a3a14b82238.jpg', '0', '23', '得不到的就更加爱', 'http://114.55.242.196:80/upload/bg-picture/2019/09/06/e38a87de-7f47-494f-b678-f27554a47208.jpg', '123456', '49674', '1', '10086', 'TT', 'woghpk', '1', '2019-09-06 10:11:15', '2019-09-20 15:11:33');
INSERT INTO `user` VALUES ('7', '82092134', '深圳-专业定制APP开发', 'http://thirdqq.qlogo.cn/g?b=oidb&k=9NofvNAbKWwv1NxCpVVvEA&s=40&t=1567653395', '0', '22', '该用户很懒，什么都没有', 'http://www.meiyou8.cn/meiyou/uimg/imgs/default.jpg', '123456', '50000', '0', null, null, 'eofrti', '0', '2019-09-06 11:52:14', '2019-09-12 16:20:11');
INSERT INTO `user` VALUES ('8', '82328996', '艺之都网站App开发', 'http://thirdqq.qlogo.cn/g?b=oidb&k=hmQN04G5R3v9t67VzBc6jA&s=40&t=1556432094', '1', '22', '该用户很懒，什么都没有', 'http://www.meiyou8.cn/meiyou/uimg/imgs/default.jpg', null, '50000', '0', null, null, 'eohg9t', '0', '2019-09-06 12:02:57', '2019-09-12 16:20:12');
INSERT INTO `user` VALUES ('9', '82210983', '善良的人', 'http://114.55.242.196:80/upload/headers/2019/09/06/1a55d839-4ccd-41b1-adbe-56e449fe2e52.jpg', '0', '22', '以后叫你', 'http://www.meiyou8.cn/meiyou/uimg/imgs/default.jpg', '082557', '50000', '0', null, null, 'eoaltw', '0', '2019-09-06 13:40:31', '2019-09-12 16:20:14');
INSERT INTO `user` VALUES ('10', '92884924', 'A后瑞MM姣姣', 'http://thirdqq.qlogo.cn/g?b=oidb&k=hn9MoUPfhjIQcdN9ZGpUYQ&s=40&t=1556321708', '1', '22', '该用户很懒，什么都没有', 'http://www.meiyou8.cn/meiyou/uimg/imgs/default.jpg', null, '50000', '0', null, null, 'eorty5', '0', '2019-09-06 14:33:08', '2019-09-12 16:20:15');
INSERT INTO `user` VALUES ('11', '00404435', '553040821', 'http://thirdqq.qlogo.cn/g?b=oidb&k=xAkaFuxYyPKQWp9uZDv3GA&s=40&t=1555882839', '0', '22', '该用户很懒，什么都没有', 'http://www.meiyou8.cn/meiyou/uimg/imgs/default.jpg', null, '50000', '0', null, null, 'eox4b4', '0', '2019-09-06 14:47:27', '2019-09-12 16:20:17');
INSERT INTO `user` VALUES ('12', '66972305', '自行车', 'http://thirdqq.qlogo.cn/g?b=oidb&k=VNsPiaHe7E1NTnoR4FAXhKw&s=40&t=1563352075', '0', '22', '该用户很懒，什么都没有', 'http://www.meiyou8.cn/meiyou/uimg/imgs/default.jpg', null, '50000', '0', null, null, 'eosuvr', '0', '2019-09-07 10:40:56', '2019-09-12 16:20:19');
INSERT INTO `user` VALUES ('13', '39776233', 'Mr.Z', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKKicXeoJ2dJ3Qq2UdfjlJ5u88qv1OibYhF3TibicWiaFTCzhu9ic6jViapTBuNY9lmpOz7HMcCzgNGsCm5A/132', '0', '22', '该用户很懒，什么都没有', 'http://www.meiyou8.cn/meiyou/uimg/imgs/default.jpg', null, '50000', '0', null, null, 'eor6sr', '0', '2019-09-07 10:46:02', '2019-09-12 16:20:20');
INSERT INTO `user` VALUES ('14', '73488888', '【艺之都】品牌营销策划', 'http://thirdqq.qlogo.cn/g?b=oidb&k=hBS5QoCK1sdtnloedGPD2Q&s=40&t=1557126259', '0', '22', '该用户很懒，什么都没有', 'http://www.meiyou8.cn/meiyou/uimg/imgs/default.jpg', null, '50000', '0', null, null, 'eomzle', '0', '2019-09-07 11:58:07', '2019-09-12 16:20:22');
INSERT INTO `user` VALUES ('15', '56407503', '你若成风', 'http://thirdqq.qlogo.cn/g?b=oidb&k=VXuIdNZaOQrBk6IYF1bMhA&s=40&t=1557187919', '1', '22', '该用户很懒，什么都没有', 'http://www.meiyou8.cn/meiyou/uimg/imgs/default.jpg', null, '50000', '0', null, null, 'eo8f3k', '0', '2019-09-09 20:28:01', '2019-09-12 16:20:24');
INSERT INTO `user` VALUES ('16', '41630536', '从前慢', 'http://thirdqq.qlogo.cn/g?b=oidb&k=CLhoAZndmUCwATE3KicCiaLg&s=40&t=1563275781', '0', '22', '该用户很懒，什么都没有', 'http://www.meiyou8.cn/meiyou/uimg/imgs/default.jpg', null, '0', '0', null, null, 'eo2llx', '0', '2019-09-12 18:16:38', '2019-09-12 18:16:38');
INSERT INTO `user` VALUES ('17', '03114619', 'Java代写', 'http://thirdqq.qlogo.cn/g?b=oidb&k=BgsWyDicDRiarNLnED6PNLfg&s=40&t=1561084969', '0', '22', '该用户很懒，什么都没有', 'http://www.meiyou8.cn/meiyou/uimg/imgs/default.jpg', null, '0', '0', null, null, 'eowd86', '0', '2019-09-16 13:46:03', '2019-09-16 13:46:03');
INSERT INTO `user` VALUES ('18', '54834772', '鸿鹄之志', 'https://tfs.alipayobjects.com/images/partner/T1e6xpXdlfXXXXXXXX', '1', '22', '该用户很懒，什么都没有', 'http://www.meiyou8.cn/meiyou/uimg/imgs/default.jpg', null, '0', '0', null, null, 'eodqi7', '0', '2019-09-18 20:07:34', '2019-09-18 20:07:34');

-- ----------------------------
-- Table structure for user_report
-- ----------------------------
DROP TABLE IF EXISTS `user_report`;
CREATE TABLE `user_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `reporter_id` int(11) NOT NULL DEFAULT '0',
  `reported_person_id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_report
-- ----------------------------
INSERT INTO `user_report` VALUES ('1', '2019-09-12 18:21:33', '2019-09-12 18:21:33', '11', '6', '[辱骂]', '');

-- ----------------------------
-- Table structure for video_chat
-- ----------------------------
DROP TABLE IF EXISTS `video_chat`;
CREATE TABLE `video_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_account` varchar(255) DEFAULT NULL COMMENT '呼叫方',
  `receiver_account` varchar(255) DEFAULT NULL COMMENT '接通方',
  `state` int(11) DEFAULT NULL COMMENT '0 创建态 1 通话态',
  `money` double DEFAULT NULL,
  `channel_Id` varchar(255) DEFAULT NULL COMMENT '房间号',
  `greate_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video_chat
-- ----------------------------

-- ----------------------------
-- Procedure structure for outTime
-- ----------------------------
DROP PROCEDURE IF EXISTS `outTime`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `outTime`()
BEGIN
       update club set status=3 where to_days(now())-TO_DAYS(out_time)>=1;

    END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `updateClubState1`;
DELIMITER ;;
CREATE TRIGGER `updateClubState1` AFTER INSERT ON `club_buy` FOR EACH ROW begin
       update club set state=1 where  id= new.club_id;
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `updateClubState0`;
DELIMITER ;;
CREATE TRIGGER `updateClubState0` AFTER UPDATE ON `club_buy` FOR EACH ROW begin
       update club set state=0 
       where
                  (select count(*) from club_buy where club_id = new.club_id)<1 
       and 
                  id = new.club_id;
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `updateShopState1`;
DELIMITER ;;
CREATE TRIGGER `updateShopState1` AFTER INSERT ON `shop_buy` FOR EACH ROW begin
       update shop set state=1 where  id= new.guide_id;
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `updateShopState0`;
DELIMITER ;;
CREATE TRIGGER `updateShopState0` AFTER UPDATE ON `shop_buy` FOR EACH ROW begin
       update shop set state=0 
       where
                  (select count(*) from shop_buy where guide_id = new.guide_id)<1 
       and 
                  id = new.guide_id ;
end
;;
DELIMITER ;
