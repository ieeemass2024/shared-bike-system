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

 Date: 20/06/2024 00:22:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bike
-- ----------------------------
DROP TABLE IF EXISTS `bike`;
CREATE TABLE `bike`  (
  `bikeid` int(11) NOT NULL AUTO_INCREMENT,
  `prod_time` date NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `location_x` double NULL DEFAULT NULL,
  `location_y` double NULL DEFAULT NULL,
  PRIMARY KEY (`bikeid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bike
-- ----------------------------
INSERT INTO `bike` VALUES (1, '2024-01-01', 'available', 37.7749, -122.4194);
INSERT INTO `bike` VALUES (2, '2024-01-02', 'in_use', 34.0522, -118.2437);
INSERT INTO `bike` VALUES (3, '2024-01-03', 'maintenance', 40.7128, -74.006);

SET FOREIGN_KEY_CHECKS = 1;
