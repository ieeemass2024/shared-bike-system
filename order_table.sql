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

 Date: 20/06/2024 00:22:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for order_table
-- ----------------------------
DROP TABLE IF EXISTS `order_table`;
CREATE TABLE `order_table`  (
  `orderid` int(11) NOT NULL AUTO_INCREMENT,
  `bikeid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `start_location_x` double NULL DEFAULT NULL,
  `start_location_y` double NULL DEFAULT NULL,
  `end_time` datetime NULL DEFAULT NULL,
  `end_location_x` double NULL DEFAULT NULL,
  `end_location_y` double NULL DEFAULT NULL,
  `track` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`orderid`) USING BTREE,
  INDEX `bikeid`(`bikeid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_table
-- ----------------------------
INSERT INTO `order_table` VALUES (1, 1, 1001, '2024-06-19 08:00:00', 37.7749, -122.4194, '2024-06-19 09:00:00', 37.775, -122.418, 'Track Data');
INSERT INTO `order_table` VALUES (2, 2, 1002, '2024-06-19 10:00:00', 34.0522, -118.2437, '2024-06-19 11:30:00', 34.052, -118.244, 'Track Data');
INSERT INTO `order_table` VALUES (3, 3, 1003, '2024-06-19 12:00:00', 40.7128, -74.006, NULL, NULL, NULL, 'Track Data');

SET FOREIGN_KEY_CHECKS = 1;
