/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : burgers_db

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 10/18/2018 21:13:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for burgers
-- ----------------------------
DROP TABLE IF EXISTS `burgers`;
CREATE TABLE `burgers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `burger_name` varchar(100) NOT NULL,
  `devoured` tinyint(1) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
