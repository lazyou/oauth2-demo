/*
Navicat MySQL Data Transfer

Source Server         : homestead
Source Server Version : 50725
Source Host           : localhost:33060
Source Database       : oauth2-demo

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-05-17 17:46:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens` (
  `access_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`access_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO `oauth_access_tokens` VALUES ('541788516091a23be3d4a4fc1e049038bb6f8664', 'testclient', null, '2019-05-17 17:21:17', null);
INSERT INTO `oauth_access_tokens` VALUES ('babd0bc6d66563d3ed895865bad305b993c06a5b', 'testclient', null, '2019-05-17 17:21:21', null);
INSERT INTO `oauth_access_tokens` VALUES ('c8cf22c77b2df21e13e4aa703920d79ae6f67d1a', 'testclient', null, '2019-05-17 17:21:11', null);
INSERT INTO `oauth_access_tokens` VALUES ('e28c30b3048d28582b4f3ae26bc59f28f647ee45', 'testclient', null, '2019-05-17 17:20:02', null);

-- ----------------------------
-- Table structure for oauth_authorization_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_authorization_codes`;
CREATE TABLE `oauth_authorization_codes` (
  `authorization_code` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `redirect_uri` varchar(2000) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`authorization_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_authorization_codes
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients` (
  `client_id` varchar(80) NOT NULL,
  `client_secret` varchar(80) NOT NULL,
  `redirect_uri` varchar(2000) NOT NULL,
  `grant_types` varchar(80) DEFAULT NULL,
  `scope` varchar(100) DEFAULT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES ('testclient', 'testpass', 'http://www.oauth2-client.test/index.php', null, null, null);

-- ----------------------------
-- Table structure for oauth_jwt
-- ----------------------------
DROP TABLE IF EXISTS `oauth_jwt`;
CREATE TABLE `oauth_jwt` (
  `client_id` varchar(80) NOT NULL,
  `subject` varchar(80) DEFAULT NULL,
  `public_key` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_jwt
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens` (
  `refresh_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`refresh_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------
INSERT INTO `oauth_refresh_tokens` VALUES ('3580d91c18c1eed57f2a12f47358d0638cece6f2', 'testclient', null, '2019-05-31 16:21:21', null);
INSERT INTO `oauth_refresh_tokens` VALUES ('44f81e4eb1b7f681d84cee2aec4cc708fa770594', 'testclient', null, '2019-05-31 16:21:11', null);
INSERT INTO `oauth_refresh_tokens` VALUES ('828737eb506614b0492e41bc903263764a271799', 'testclient', null, '2019-05-31 16:20:02', null);
INSERT INTO `oauth_refresh_tokens` VALUES ('881df901e230d0a1418ecdb4765f374056297b37', 'testclient', null, '2019-05-31 16:21:17', null);

-- ----------------------------
-- Table structure for oauth_scopes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_scopes`;
CREATE TABLE `oauth_scopes` (
  `scope` text,
  `is_default` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_scopes
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_users
-- ----------------------------
DROP TABLE IF EXISTS `oauth_users`;
CREATE TABLE `oauth_users` (
  `username` varchar(255) NOT NULL,
  `password` varchar(2000) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_users
-- ----------------------------
INSERT INTO `oauth_users` VALUES ('shanhuhai', '123123', null, null, 'http://www.dahouduan.com/wp-content/uploads/2017/11/avatar.jpg');
