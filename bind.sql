/*
 Navicat Premium Data Transfer

 Source Server         : contract
 Source Server Type    : MySQL
 Source Server Version : 50741 (5.7.41-log)
 Source Host           : localhost:3306
 Source Schema         : test1

 Target Server Type    : MySQL
 Target Server Version : 50741 (5.7.41-log)
 File Encoding         : 65001

 Date: 20/06/2024 00:22:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bind
-- ----------------------------
DROP TABLE IF EXISTS `bind`;
CREATE TABLE `bind`  (
  `bindid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `bikeid` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `start_location_x` double NOT NULL,
  `start_location_y` double NOT NULL,
  `track` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`bindid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bind
-- ----------------------------
INSERT INTO `bind` VALUES (1, 1, 101, '2024-06-19 08:00:00', 34.0522, -118.2437, 'Start at 34.0522, -118.2437');
INSERT INTO `bind` VALUES (2, 2, 102, '2024-06-19 09:30:00', 40.7128, -74.006, 'Start at 40.7128, -74.0060');
INSERT INTO `bind` VALUES (3, 3, 3, '2024-06-19 07:15:00', 37.7749, -122.4194, 'Start at 37.7749, -122.4194');

SET FOREIGN_KEY_CHECKS = 1;
