/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : crawler

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 04/06/2021 15:26:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sl_sina_detail
-- ----------------------------
DROP TABLE IF EXISTS `sl_sina_detail`;
CREATE TABLE `sl_sina_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `html_str` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '整体div内容',
  `mid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '文章id',
  `uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '本人uid',
  `to_uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '文章作者uid',
  `is_like` tinyint(1) NULL DEFAULT 0 COMMENT '是否关注',
  `is_repost` tinyint(1) NULL DEFAULT 0 COMMENT '是否转发',
  `luck_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 808 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sl_sina_follow
-- ----------------------------
DROP TABLE IF EXISTS `sl_sina_follow`;
CREATE TABLE `sl_sina_follow`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '对方个人主页',
  `is_modify` tinyint(4) NULL DEFAULT 0 COMMENT '是否关注',
  `to_uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '对方uid',
  `mid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '来源的文章mid',
  `uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `nick` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 863 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
DROP TABLE IF EXISTS `sl_sina_config`;
CREATE TABLE 
    sl_sina_config 
    ( 
        id          bigint UNSIGNED NOT NULL AUTO_INCREMENT, 
        value       VARCHAR(200), 
        name        VARCHAR(50), 
        create_time DATETIME DEFAULT CURRENT_TIMESTAMP, 
        update_time DATETIME DEFAULT CURRENT_TIMESTAMP ON 
UPDATE 
    CURRENT_TIMESTAMP, 
    PRIMARY KEY (id) 
    ) 
    ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 DEFAULT COLLATE=utf8mb4_unicode_ci;
INSERT INTO sl_sina_config (value, name) VALUES ('_2A25MXrPODeRhGeRK6FcZ8S3Jzz6IHXVvLaIGrDV8PUNbmtB-LVPbkW9NU20U9CwH7NhIcdy3_2gj5_3PUePlURgO', 'SUB');
INSERT INTO sl_sina_config (value, name) VALUES ('https://weibo.com/p/100808557b69009a8ef6588f9124fe9c30d36c/super_index', 'LUCKING');
INSERT INTO sl_sina_config (value, name) VALUES ('https://m.weibo.cn/api/container/getIndex?jumpfrom=weibocom&containerid=100808557b69009a8ef6588f9124fe9c30d36c_-_sort_time', 'LUCKING_TIME');
INSERT INTO sl_sina_config (value, name) VALUES ('https://m.weibo.cn/api/container/getIndex?containerid=100103type%3D1%26q%3D@%E5%BE%AE%E5%8D%9A%E6%8A%BD%E5%A5%96%E5%B9%B3%E5%8F%B0&page_type=searchall', 'LUCKING_SEARCH');
INSERT INTO sl_sina_config (value, name) VALUES ('https://m.weibo.cn/api/container/getIndex?containerid=100103type%3D1%26q%3D%25E8%25BD%25AC%25E5%258F%2591%25E6%258A%25BD%25E5%25A5%2596&page_type=searchall', 'LUCKING_SEARCH_ZHUANFA');
INSERT INTO sl_sina_config (value, name) VALUES ('https://m.weibo.cn/api/container/getIndex?containerid=100103type%3D1%26q%3D%E6%8A%BD%E5%A5%96%E8%AF%A6%E6%83%85&page_type=searchall', 'LUCKING_SEARCH_XIANGQING');
INSERT INTO sl_sina_config (value, name) VALUES ('https://lottery.media.weibo.com/lottery/h5/history/list?mid=', 'LUCKING_STATUS');
INSERT INTO sl_sina_config (value, name) VALUES ('https://m.weibo.cn/p/100808557b69009a8ef6588f9124fe9c30d36c/super_index?jumpfrom=weibocom', 'REFERER');
INSERT INTO sl_sina_config (value, name) VALUES ('100808557b69009a8ef6588f9124fe9c30d36c', 'PDETAIL');
INSERT INTO sl_sina_config (value, name) VALUES ('100808557b69009a8ef6588f9124fe9c30d36c', 'LOCATION');
INSERT INTO sl_sina_config (value, name) VALUES ('2435813542', 'UID');
INSERT INTO sl_sina_config (value, name) VALUES ('https://weibo.com/aj/v6/comment/add', 'COMMENT_URL');
INSERT INTO sl_sina_config (value, name) VALUES ('https://weibo.com/aj/f/followed', 'FOLLOW_URL');
INSERT INTO sl_sina_config (value, name) VALUES ('https://weibo.com/aj/v6/like/add', 'LIKE_URL');
INSERT INTO sl_sina_config (value, name) VALUES ('page_100505_home', 'PAGE_ID');
INSERT INTO sl_sina_config (value, name) VALUES ('https://weibo.com/aj/v6/mblog/forward', 'ZHUANFA_URL');
INSERT INTO sl_sina_config (value, name) VALUES ('page_100606_home', 'PAGES_ID');
    
